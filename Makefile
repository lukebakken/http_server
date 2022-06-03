PROJECT = http_server
PROJECT_DESCRIPTION = Simple HTTP server for ~/ct_logs
PROJECT_VERSION = 0.1.0

LOCAL_DEPS = kernel sasl
DEPS = cowboy recon redbug relx
dep_cowboy_commit = 2.9.0
dep_redbug = git https://github.com/shiguredo/redbug.git otp-25

include erlang.mk
