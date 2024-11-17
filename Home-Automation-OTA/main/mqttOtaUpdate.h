// If arith.h is not included to any file

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_event.h"
#include "esp_log.h"
#include "esp_ota_ops.h"
#include "esp_http_client.h"
#include "esp_https_ota.h"
#include "protocol_examples_common.h"
#include "string.h"
#ifdef CONFIG_EXAMPLE_USE_CERT_BUNDLE
#include "esp_crt_bundle.h"
#endif

#include "nvs.h"
#include "nvs_flash.h"
#include "protocol_examples_common.h"
#include <sys/socket.h>

// Include guard
#ifndef MQTTOTAUPDATE_H

// Declare macro as a flag that specifies arith.h is included
#define MQTTOTAUPDATE_H

void store_firmware_version(const char *firmVersion);

void retrieve_firmware_version(char *firmVersion, size_t firmVersion_size);

esp_err_t _http_event_handler(esp_http_client_event_t *evt);

// static esp_err_t _http_client_init_cb(esp_http_client_handle_t http_client);

void simple_ota_example_task(void *pvParameter);

static void otaUpgradeFunc(void);

// static void print_sha256(const uint8_t *image_hash, const char *label);

// static void get_sha256_of_partitions(void);

// Declare all functions
// int add(int, int);
// int sub(int, int);
// float div(float, float);
// float mult(float, float);
// int mod(int, int);

#endif