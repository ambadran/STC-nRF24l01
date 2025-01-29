from machine import Pin, SPI, SoftSPI
from nrf24l01 import NRF24L01
from micropython import const
import time


_RX_POLL_DELAY = const(15)
_RESPONDER_SEND_DELAY = const(10)

spi = SPI(0, sck=Pin(18), mosi=Pin(19), miso=Pin(16))
cfg = {"spi": spi, "csn": 20, "ce": 21}


# Addresses are in little-endian format. They correspond to big-endian
pipes = (b"\xe1\xf0\xf0\xf0\xf0", b"\xd2\xf0\xf0\xf0\xf0")

csn = Pin(cfg["csn"], mode=Pin.OUT, value=1)
ce = Pin(cfg["ce"], mode=Pin.OUT, value=0)
spi = cfg["spi"]

# The most important variable holding the NRF24L01 device object
nrf = NRF24L01(spi, csn, ce, payload_size=16)

nrf.open_tx_pipe(pipes[0])
nrf.open_rx_pipe(1, pipes[1])
nrf.start_listening()


