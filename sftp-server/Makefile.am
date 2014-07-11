AUTOMAKE_OPTIONS = subdir-objects

bin_PROGRAMS = sftp-server

noinst_LIBRARIES = libopenbsd-compat.a

sftp_server_LDADD = libopenbsd-compat.a
sftp_server_SOURCES = \
  addrmatch.c \
  bufaux.c \
  buffer.c \
  buffer.h \
  channels.h \
  compat.c \
  compat.h \
  config.h \
  defines.h \
  entropy.h \
  includes.h \
  log.c \
  log.h \
  match.c \
  match.h \
  misc.c \
  misc.h \
  openssl/bn.h \
  packet.h \
  platform.h \
  sftp-client.h \
  sftp-common.c \
  sftp-common.h \
  sftp-server-main.c \
  sftp-server.c \
  sftp.h \
  ssh.h \
  uidswap.h \
  xmalloc.c \
  xmalloc.h

libopenbsd_compat_a_SOURCES = \
  openbsd-compat/base64.h \
  openbsd-compat/bsd-cray.h \
  openbsd-compat/bsd-cygwin_util.h \
  openbsd-compat/bsd-misc.c \
  openbsd-compat/bsd-misc.h \
  openbsd-compat/bsd-nextstep.h \
  openbsd-compat/bsd-poll.h \
  openbsd-compat/bsd-statvfs.c \
  openbsd-compat/bsd-statvfs.h \
  openbsd-compat/bsd-waitpid.h \
  openbsd-compat/fake-rfc2553.h \
  openbsd-compat/fmt_scaled.c \
  openbsd-compat/getopt.c \
  openbsd-compat/getrrsetbyname.h \
  openbsd-compat/glob.h \
  openbsd-compat/openbsd-compat.h \
  openbsd-compat/port-aix.h \
  openbsd-compat/port-irix.h \
  openbsd-compat/port-linux.h \
  openbsd-compat/port-solaris.h \
  openbsd-compat/port-tun.c \
  openbsd-compat/port-tun.h \
  openbsd-compat/port-uw.h \
  openbsd-compat/pwcache.c \
  openbsd-compat/readpassphrase.h \
  openbsd-compat/sha2.h \
  openbsd-compat/sigact.h \
  openbsd-compat/strmode.c \
  openbsd-compat/strtonum.c \
  openbsd-compat/strlcpy.c \
  openbsd-compat/strlcat.c \
  openbsd-compat/sys-queue.h \
  openbsd-compat/vis.c \
  openbsd-compat/vis.h
