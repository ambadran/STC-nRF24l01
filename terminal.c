#include "project-defs.h"

static command_t command;

// reads int only not floats and increments the char_count to the index of after the number
bool read_int(char *line, uint8_t* char_count, int16_t* int_value_ptr) {

  char *ptr = line + *char_count; // the variable that will extract the next digit from
  unsigned char c; // the variable that will hold each digit

  c = *ptr++;  // extracting the next digit!

  // catching negative values :)
  bool isnegative = false;
  if (c == '-') {
    isnegative = true;
    c = *ptr++;

  // incrementing pointer anyway if +ve sign is there
  } else if (c == '+') {
    c = *ptr++;
  }

  // Algorithm to convert char digits to int
  uint32_t intval = 0;
  uint8_t ndigit = 0;  // current digit read index
  int8_t exp = 0;  // NOT uint8_t as this must hold +ve and -ve numbers
  while (1) {

    c -= '0';
    if (c <= 9) {
      ndigit++;
      if (ndigit <= MAX_INT_DIGITS) {

        intval = (((intval << 2) + intval) << 1) + c; // intval*10 + c
                                                      //
      } else {

        exp++;  // Drop overflow digits
      }

    } else {
      // encountered a non integer character
      break;
    }
    c = *ptr++;
  }

  // Return if no digits have been read.
  if (!ndigit) { return(false); };

  long int lival;
  lival = (long int)intval;
  
  if (exp > 0) {
    do {
      lival *= 10.0;
    } while (--exp > 0);
  } 

  // Assign floating point value with correct sign.    
  if (isnegative) {
    *int_value_ptr = -lival;
  } else {
    *int_value_ptr = lival;
  }

  *char_count = ptr - line - 1; // Set char_counter to next statement
 
  return (true);
}


LINE_STATUS terminal_execute_line(char* line) {

  uint8_t char_count = 0;
  char letter;
  uint16_t int_value = 0;  // temporary int value that gets read from the terminal then assigned to another variable of any other c component

  // Resetting the command
  memset(&command, 0, sizeof(command_t));

  while (line[char_count] != 0) {

    /* [ Step 1: Capture read character and type check] */
    // Reading letter argument, aka which function to execute
    letter = line[char_count];

    // incrementing char_count for next iteration
    char_count++;

    // IMP: capital letters are command letters
    //      small letters are argument letters
    // Checking letter is a letter
    // checking if it's before A or after z or any character in between Z and a in the ascii table
    if ( letter < 'A' || letter > 'z' || (letter > 'Z' && letter < 'a')) {
      printf("\rExpected a letter!\n"); 
      return LINE_FAILED;
    }

    // small letter case is not a command, it's parameter
    if (!(letter >= 'a' && letter < 'z') && \
        (command.command_type != COMMAND_NOT_SET)) {
        printf("Can't have >1 command letter in one command!\n");
        return LINE_FAILED;
    }

    /* [ Step 2: Identify and Initiate command_t variable] */
    switch(letter) {

      case 'A':
        // testing reading int argument
        if (!read_int(line, &char_count, &int_value)) {
          printf("Bad integer Number Format\n");
          return LINE_FAILED;

        } 
        command.command_type = COMMAND_TEST_INT_READING;
        break;

      case 'N':
        command.command_type = COMMAND_GET_NRF24_REGISTERS;
        break;

      case 'T':
        command.command_type = COMMAND_GET_CURRENT_TIME;
        break;

      case 'i':
        // reading int argument for a multi-argument command
        if (!read_int(line, &char_count, &int_value)) {
          printf("Bad int Number Format\n");
          return LINE_FAILED;
        }
        command.i = int_value;
        break;

      case 'j':
        // reading int argument for a multi-argument command
        if (!read_int(line, &char_count, &int_value)) {
          printf("Bad int Number Format\n");
          return LINE_FAILED;
        }
        command.j = int_value;
        break;

      default:
        printf("Command Letter '%c' Not Implemented\n", letter);
        return LINE_FAILED;
    }
  }

  /* [ Step 3: Error checking ] */
  switch(command.command_type) {

    case COMMAND_TEST_INT_READING:
    case COMMAND_GET_CURRENT_TIME:
    case COMMAND_GET_NRF24_REGISTERS:
      break;

    default:
      // if the command_type is not set (COMMAND_NOT_SET).
      // then a correct command wasn't passed in Step2.
      // which means that the default: of Step2 should run
      // so WTF?!??!
      printf("SHOULD NEVER REACH HERE IN ERROR CHECKING.\n");
      return LINE_FAILED;
  }

  /* [ Step 4: Execute! ] */
  switch(command.command_type) {

    case COMMAND_TEST_INT_READING:
      printf("Read INT value: %d\n", int_value);
      break;

    case COMMAND_GET_NRF24_REGISTERS:
      nrf24_print_internal_register_values();
      break;

    case COMMAND_GET_CURRENT_TIME:
      report("Time: %lu\n", get_current_time());
      break;

    default:
      // if the command_type is not set (COMMAND_NOT_SET).
      // then a correct command wasn't passed in Step2.
      // which means that the default: of Step2 should run
      // so WTF?!??!
      printf("SHOULD NEVER REACH HERE.");
      return LINE_FAILED;
  }

  return LINE_PASSED;
 
}
