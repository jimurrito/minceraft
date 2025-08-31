# How to download JDK 21 `.deb` files.

# x86_64

```bash
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
```


# aarch64 (ARM64)

```bash
wget https://download.oracle.com/java/21/latest/jdk-21_linux-aarch64_bin.rpm
```


## Convert from RPM to DEB (rpm_to_deb.bash)

> Must be done on an ARM64 machine

```bash
bash rpm_to_deb.bash jdk-21_linux-aarch64_bin.rpm
```


## Convert from RPM to DEB

> Must be done on an ARM64 machine

```bash
sudo apt install alien
sudo alien -vd jdk-21_linux-aarch64_bin.rpm
```

