## tm_isdst

This is a small binary which simply prints `true` or `false` according to whether *right now* is Daylight Savings Time in the machine's current timezone.

### Why use this instead of XYZ?

You shouldn't, it's just a learning experiment for me and a tool that I needed, to be honest. You can easily figure out if it's DST using a number of utilities such as `date`, `gdate`, the standard C library, etc., but I like Swift and wanted to see how difficult it'd be to build a cross-platform, statically-linked, single-executable binary.

### Usage

By default, invoking the binary will print `true` if your machine's current timezone is in Daylight Savings Time, otherwise it will print `false`. The exit codes will match the result as well, meaning `true` exits with 0, and `false` exits with 1.

```fish
tm_isdst # "false"
echo $status # "1"
```

| Is DST? | Exit Code | Default Output | With `--quiet` |
| ------- | --------- | -------------- | -------------- |
| Yes | 0 | `true` | _(no output)_ |
| No | 1 | `false` | _(no output)_ |

You can pass `--quiet` to omit the text and just use the exit codes. For example, using Fish shell:
```fish
if tm_isdst --quiet
    echo "It's Daylight Savings Time"
else
    echo "It isn't Daylight Savings Time"
end
```

### Support matrix

| Arch | OS | Supported |
| ---- | -- | --------- |
| arm64 | macOS | ✅ |
| x86_64 | macOS | ✅ |
| arm64 | Linux | ✅ |
| x86_64 | Linux | ✅ |
| arm64 | Windows | ❌ |
| x86_64 | Windows | ❌ |

I'd like to add Windows support, but at the moment it's not entirely clear to me how to compile a Swift project for Windows.

### Installing

TODO

### Building

TODO
