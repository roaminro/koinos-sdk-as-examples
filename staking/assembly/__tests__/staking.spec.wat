(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_f64_=>_i32 (func (param i32 i32 i32 i32 f64) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 1036) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00D\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00_\00_\00t\00e\00s\00t\00s\00_\00_\00/\00s\00t\00a\00k\00i\00n\00g\00.\00s\00p\00e\00c\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1132) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1196) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1244) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 1308) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1376) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1408) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1436) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1500) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1552) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1580) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1644) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1676) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1708) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1740) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 1788) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 1852) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1884) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00S\00t\00a\00k\00i\00n\00g\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 1948) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00p\00r\00o\00t\00o\00/\00s\00t\00a\00k\00i\00n\00g\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2028) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00S\00t\00a\00t\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2092) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00D\00\00\001\009\00J\00n\00t\00S\00m\008\00p\00S\00N\00E\00T\00T\009\00a\00H\00T\00w\00A\00U\00H\00C\005\00R\00M\00o\00a\00S\00m\00g\00Z\00P\00J\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2188) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00t\00\00\001\002\003\004\005\006\007\008\009\00A\00B\00C\00D\00E\00F\00G\00H\00J\00K\00L\00M\00N\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2332) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2364) "\1c\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\03\04\05\06\07\08\ff\ff\ff\ff\ff\ff\ff\t\n\0b\0c\0d\0e\0f\10\ff\11\12\13\14\15\ff\16\17\18\19\1a\1b\1c\1d\1e\1f \ff\ff\ff\ff\ff\ff!\"#$%&\'()*+\ff,-./0123456789\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2652) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 2716) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2780) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00N\00o\00n\00-\00z\00e\00r\00o\00 \00c\00a\00r\00r\00y\00")
 (data (i32.const 2828) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00D\00\00\00~\00l\00i\00b\00/\00@\00k\00o\00i\00n\00o\00s\00/\00s\00d\00k\00-\00a\00s\00/\00u\00t\00i\00l\00/\00b\00a\00s\00e\005\008\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2924) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00N\00o\00n\00-\00b\00a\00s\00e\005\008\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00\00\00\00\00")
 (data (i32.const 2988) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00D\00\00\001\00F\00P\00i\00w\00D\00d\00V\00G\00h\00W\00b\004\00i\00A\00v\00v\00d\00A\00L\00V\00X\00Y\008\008\00r\00g\00v\00k\00A\00A\005\00m\00T\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3084) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00D\00\00\001\00D\00Q\00z\00u\00C\00c\00T\00K\00a\00c\00b\00s\009\00G\00G\00S\00c\00R\00T\00U\001\00H\00c\008\00B\00s\00y\00A\00R\00T\00P\00q\00G\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3180) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00s\00t\00a\00k\00i\00n\00g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3228) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00r\00e\00s\00e\00t\00\00\00")
 (data (i32.const 3260) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3292) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00J\00\00\00A\00n\00 \00i\00n\00v\00a\00l\00i\00d\00 \00k\00e\00y\00 \00w\00a\00s\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00p\00u\00t\00B\00y\00t\00e\00s\00\00\00")
 (data (i32.const 3388) "\1c\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3420) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 3468) "\1c\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3500) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00c\00o\00n\00t\00r\00a\00c\00t\00_\00i\00d\00\00\00\00\00\00\00")
 (data (i32.const 3548) "\1c\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3580) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00s\00h\00o\00u\00l\00d\00 \00s\00t\00a\00k\00e\00 \00t\00o\00k\00e\00n\00s\00\00\00\00\00\00\00")
 (data (i32.const 3644) "\1c\00\00\00\00\00\00\00\00\00\00\00\19\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3676) "\1c\00\00\00\00\00\00\00\00\00\00\00\1b\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3708) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3772) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00D\00\00\00~\00l\00i\00b\00/\00@\00k\00o\00i\00n\00o\00s\00/\00s\00d\00k\00-\00a\00s\00/\00s\00y\00s\00t\00e\00m\00C\00a\00l\00l\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3868) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3900) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4028) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00c\00a\00l\00l\00_\00c\00o\00n\00t\00r\00a\00c\00t\00_\00r\00e\00s\00u\00l\00t\00s\00\00\00")
 (data (i32.const 4092) "\1c\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4124) "\1c\00\00\00\00\00\00\00\00\00\00\00%\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4156) "\1c\00\00\00\00\00\00\00\00\00\00\00\'\00\00\00\08\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4188) "\1c\00\00\00\00\00\00\00\00\00\00\00(\00\00\00\08\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4220) "\1c\00\00\00\00\00\00\00\00\00\00\00*\00\00\00\08\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4252) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\00T\00o\00k\00e\00n\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00f\00r\00o\00m\00 \00\'\00a\00c\00c\00o\00u\00n\00t\00\'\00 \00f\00a\00i\00l\00e\00d\00\00\00\00\00")
 (data (i32.const 4348) "\1c\00\00\00\00\00\00\00\00\00\00\00,\00\00\00\08\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4380) "\1c\00\00\00\00\00\00\00\00\00\00\00-\00\00\00\08\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4412) "\1c\00\00\00\00\00\00\00\00\00\00\00/\00\00\00\08\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4444) "\1c\00\00\00\00\00\00\00\00\00\00\002\00\00\00\08\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4476) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00c\00o\00u\00l\00d\00 \00n\00o\00t\00 \00a\00d\00d\00 \00")
 (data (i32.const 4524) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00 \00t\00o\00 \00\00\00\00\00")
 (data (i32.const 4556) ",\00\00\00\00\00\00\00\00\00\00\004\00\00\00\14\00\00\00\90\11\00\00\00\00\00\00\c0\11\00\00\00\00\00\00P\07\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4604) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4732) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 4796) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4828) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 5228) "\1c\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6284) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 6380) "\1c\00\00\00\00\00\00\00\00\00\00\005\00\00\00\08\00\00\00\0f\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6412) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00s\00t\00a\00k\00i\00n\00g\00.\00s\00t\00a\00k\00e\00\00\00")
 (data (i32.const 6460) "\1c\00\00\00\00\00\00\00\00\00\00\008\00\00\00\08\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6492) "\1c\00\00\00\00\00\00\00\00\00\00\00:\00\00\00\08\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6524) "\9c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00~\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00E\00x\00p\00e\00c\00t\00a\00t\00i\00o\00n\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6684) "\bc\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\a4\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00t\00o\00I\00n\00c\00l\00u\00d\00e\00C\00o\00m\00p\00a\00r\00i\00s\00o\00n\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6876) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00t\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00A\00c\00t\00u\00a\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7020) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00x\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00E\00x\00p\00e\00c\00t\00e\00d\00.\00t\00s\00\00\00\00\00")
 (data (i32.const 7164) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00t\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7308) "\cc\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\ae\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00t\00o\00I\00n\00c\00l\00u\00d\00e\00E\00q\00u\00a\00l\00C\00o\00m\00p\00a\00r\00i\00s\00o\00n\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7516) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00v\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00R\00e\00f\00l\00e\00c\00t\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 7660) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00\00\00\00\00")
 (data (i32.const 7692) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00u\006\004\00\00\00\00\00\00\00")
 (data (i32.const 7724) "\1c\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\08\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7756) "\1c\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\08\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7788) "\1c\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\08\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7820) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00n\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00l\00o\00g\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7964) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00p\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00a\00l\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 8108) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\00M\00i\00s\00s\00i\00n\00g\00 \00f\00o\00r\00k\00(\00)\00 \00b\00e\00f\00o\00r\00e\00 \00l\00d\00e\00l\00i\00m\00(\00)\00 \00c\00a\00l\00l\00.\00\00\00\00\00")
 (data (i32.const 8204) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00S\00i\00z\00e\00r\00.\00t\00s\00\00\00\00\00")
 (data (i32.const 8300) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 8348) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00R\00e\00a\00d\00e\00r\00.\00t\00s\00\00\00")
 (data (i32.const 8444) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00w\00i\00r\00e\00 \00t\00y\00p\00e\00 \00\00\00\00\00\00\00\00\00")
 (data (i32.const 8512) "?\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\02\01\00\00\00\00\00\00\02\t\00\00\00\00\00\00A\00\00\00\02\00\00\00\00\00\00\00\n\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\02\00\00\00B\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\04A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\10\t\02\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00")
 (import "__asCovers" "coverDeclare" (func $~lib/index/__coverDeclare (param i32 i32 i32 i32 i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (import "rtrace" "onvisit" (func $~lib/rt/rtrace/onvisit (param i32) (result i32)))
 (import "rtrace" "oninit" (func $~lib/rt/rtrace/oninit (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "__asCovers" "cover" (func $~lib/index/__cover (param i32)))
 (import "env" "invoke_system_call" (func $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall (param i32 i32 i32 i32 i32 i32) (result i32)))
 (import "__aspect" "beforeEach" (func $node_modules/@as-pect/assembly/assembly/internal/Test/beforeEach (param i32)))
 (import "__aspect" "createReflectedNumber" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedNumber (param i32 i32 i32 i32 f64) (result i32)))
 (import "__aspect" "attachStackTraceToReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue (param i32)))
 (import "__aspect" "reportActualReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue (param i32)))
 (import "__aspect" "reportExpectedReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue (param i32 i32)))
 (import "__aspect" "clearActual" (func $node_modules/@as-pect/assembly/assembly/internal/Actual/clearActual))
 (import "__aspect" "clearExpected" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/clearExpected))
 (import "__aspect" "createReflectedLong" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedLong (param i32 i32 i32 i32 i32 i32) (result i32)))
 (import "__aspect" "reportTestTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/it (param i32 i32)))
 (import "__aspect" "reportGroupTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/describe (param i32 i32)))
 (import "rtrace" "onstore" (func $~onstore (param i32 i32 i32 i32) (result i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/as-proto/Protobuf/WRITER (mut i32) (i32.const 0))
 (global $~lib/as-proto/Protobuf/READER (mut i32) (i32.const 0))
 (global $~lib/@koinos/sdk-as/util/mockVM/MockVM.METADATA_SPACE (mut i32) (i32.const 0))
 (global $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE (mut i32) (i32.const 0))
 (global $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER (mut i32) (i32.const 0))
 (global $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES (mut i32) (i32.const 0))
 (global $~lib/@koinos/sdk-as/util/base58/Base58.BASE_MAP (mut i32) (i32.const 0))
 (global $assembly/Staking/TOKEN_CONTRACT_ID (mut i32) (i32.const 0))
 (global $assembly/__tests__/staking.spec/TOKEN_CONTRACT_ID (mut i32) (i32.const 0))
 (global $assembly/__tests__/staking.spec/MOCK_ACCT1 (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 25404))
 (global $~started (mut i32) (i32.const 0))
 (table $0 21 funcref)
 (elem $0 (i32.const 1) $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments.encode $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.put_object_arguments.encode $start:assembly/__tests__/staking.spec~anonymous|0~anonymous|0 $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_arguments.encode $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result.decode $~lib/@koinos/proto-as/koinos/chain/value/value.list_type.encode $~lib/@koinos/proto-as/koinos/contracts/token/token/token.transfer_arguments.encode $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.call_arguments.encode $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data.decode $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.call_result.decode $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data.encode $assembly/proto/staking/staking.balance_object.decode $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_object_arguments.encode $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_object_result.decode $assembly/proto/staking/staking.balance_object.encode $assembly/proto/staking/staking.stake_event.encode $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.event_arguments.encode $start:assembly/__tests__/staking.spec~anonymous|0~anonymous|1 $start:assembly/__tests__/staking.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
 (export "__ignoreLogs" (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "_start" (func $~start))
 (export "__call" (func $export:node_modules/@as-pect/assembly/assembly/internal/call/__call))
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 0
     i32.const 1
     i32.const 0
     call $~onstore
     local.get $4
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $4
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.set $5
      local.get $4
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $4
      local.get $1
      i32.const 0
      i32.const 2
      i32.const 0
      call $~onstore
      local.get $5
      local.get $4
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $4
      i32.const 56320
      i32.lt_u
      local.get $3
      local.get $0
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      local.get $4
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $5
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $4
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $5
        i32.const 1023
        i32.and
        i32.or
        local.tee $5
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.set $6
        local.get $5
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.set $4
        local.get $5
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.set $7
        local.get $5
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.set $5
        local.get $1
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        local.get $6
        local.get $5
        i32.const 24
        i32.shl
        local.get $7
        i32.const 16
        i32.shl
        i32.or
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $4
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.set $5
      local.get $4
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $6
      local.get $4
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $4
      local.get $1
      i32.const 0
      i32.const 2
      i32.const 0
      call $~onstore
      local.get $5
      local.get $6
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $4
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  local.get $2
  i32.sub
 )
 (func $~lib/wasi/index/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 12
  i32.store
  i32.const 12
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 9071471065260641
  i64.store
  local.get $0
  if (result i32)
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   i32.const 3
   global.set $~argumentsLength
   local.get $0
   local.get $4
   i32.const 19
   call $~lib/string/String.UTF8.encodeUnsafe
   i32.const 19
   i32.add
  else
   i32.const 19
  end
  local.tee $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 544106784
  i32.store
  local.get $0
  i32.const 4
  i32.add
  local.set $0
  local.get $1
  if
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   i32.const 3
   global.set $~argumentsLength
   local.get $1
   local.get $4
   local.get $0
   call $~lib/string/String.UTF8.encodeUnsafe
   local.get $0
   i32.add
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~onstore
  i32.const 40
  i32.store8
  local.get $2
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $2
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $2
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $2
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $2
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $2
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-loop|0
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $2
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $2
   i32.const 10
   i32.div_u
   local.tee $2
   br_if $do-loop|0
  end
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~onstore
  i32.const 58
  i32.store8
  local.get $3
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $3
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $3
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $3
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $3
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-loop|1
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $3
   i32.const 10
   i32.div_u
   local.tee $3
   br_if $do-loop|1
  end
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i32.const 0
  i32.const 2
  i32.const 0
  call $~onstore
  i32.const 2601
  i32.store16
  i32.const 0
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.const 10
  i32.sub
  i32.store offset=4
  i32.const 2
  i32.const 0
  i32.const 1
  i32.const 8
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  drop
  i32.const 255
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $0
  i32.store offset=8
  local.get $0
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/__tests__/staking.spec/TOKEN_CONTRACT_ID
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/__tests__/staking.spec/MOCK_ACCT1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 1456
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1760
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 8320
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3920
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1264
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1152
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 5248
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6304
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $assembly/Staking/TOKEN_CONTRACT_ID
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 1872
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2208
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/@koinos/sdk-as/util/base58/Base58.BASE_MAP
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/@koinos/sdk-as/util/mockVM/MockVM.METADATA_SPACE
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/as-proto/Protobuf/WRITER
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/as-proto/Protobuf/READER
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1328
     i32.const 159
     i32.const 16
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  i32.or
  local.set $1
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $1
  i32.or
  local.set $1
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $2
  i32.or
  local.set $2
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $2
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  i32.const 8
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/itcms/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1328
    i32.const 147
    i32.const 30
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    i32.const 0
    local.get $0
    i32.const 25404
    i32.lt_u
    local.get $0
    i32.load offset=8
    select
    i32.eqz
    if
     i32.const 0
     i32.const 1328
     i32.const 127
     i32.const 18
     call $~lib/wasi/index/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1328
    i32.const 131
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   i32.const 8
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:next
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   i32.const 8512
   i32.load
   local.get $2
   i32.lt_u
   if
    i32.const 1456
    i32.const 1520
    i32.const 22
    i32.const 28
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $2
   i32.const 3
   i32.shl
   i32.const 8516
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $2
  select
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1600
   i32.const 268
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1600
   i32.const 270
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1600
   i32.const 284
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   i32.const 8
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   i32.const 4
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $4
   i32.store offset=4
  end
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.const 96
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    i32.const 4
    i32.const 4
    i32.const 1
    call $~onstore
    local.get $2
    i32.store offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     local.set $1
     local.get $0
     i32.const 0
     i32.const 4
     i32.const 1
     call $~onstore
     local.get $1
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1600
   i32.const 201
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1600
   i32.const 203
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.set $3
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1600
    i32.const 221
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.set $3
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $3
   i32.store
  end
  local.get $2
  i32.const 2
  i32.or
  local.set $2
  local.get $4
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $2
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1600
   i32.const 233
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1600
   i32.const 234
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1600
   i32.const 251
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   i32.const 4
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $1
   i32.store offset=4
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.const 96
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store offset=96
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  local.set $1
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  local.set $1
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1600
   i32.const 377
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $4
  if
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1600
    i32.const 384
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $4
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $4
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1600
    i32.const 397
    i32.const 5
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  local.set $3
  local.get $1
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $3
  i32.store
  local.get $1
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.const 4
  i32.const 1
  call $~onstore
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  i32.const 2
  i32.store
  local.get $0
  i32.const 1568
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  i32.const 25404
  call $~lib/rt/rtrace/oninit
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 25408
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  i32.const 0
  i32.store
  i32.const 25408
  i32.const 1568
  i32.const 4
  i32.const 1
  call $~onstore
  i32.const 0
  i32.store offset=1568
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 25408
    i32.add
    i32.const 4
    i32.const 4
    i32.const 1
    call $~onstore
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $1
      local.get $0
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 25408
      i32.add
      i32.const 96
      i32.const 4
      i32.const 1
      call $~onstore
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 25408
  i32.const 26980
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 25408
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     global.get $~lib/rt/itcms/toSpace
     local.get $0
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 25404
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1328
     i32.const 228
     i32.const 20
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $0
    i32.const 25404
    i32.lt_u
    if
     local.get $0
     i32.const 4
     i32.const 4
     i32.const 1
     call $~onstore
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 8
     i32.const 4
     i32.const 1
     call $~onstore
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 25404
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1600
       i32.const 559
       i32.const 3
       call $~lib/wasi/index/abort
       unreachable
      end
      local.get $2
      call $~lib/rt/rtrace/onfree
      local.get $2
      i32.load
      i32.const 1
      i32.or
      local.set $0
      local.get $2
      i32.const 0
      i32.const 4
      i32.const 1
      call $~onstore
      local.get $0
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   i32.const 4
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   local.set $0
   global.get $~lib/rt/itcms/toSpace
   i32.const 8
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1600
   i32.const 330
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1600
     i32.const 343
     i32.const 18
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1264
   i32.const 1600
   i32.const 458
   i32.const 29
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $3
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $3
   i32.add
   local.get $3
   local.get $3
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1600
    i32.const 496
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 1600
   i32.const 498
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1600
   i32.const 357
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $4
   i32.const 2
   i32.and
   local.get $3
   i32.or
   local.set $4
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $4
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   local.set $2
   local.get $3
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   i32.const 0
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $2
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $4
   i32.const -2
   i32.and
   local.set $0
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   i32.load
   i32.const -3
   i32.and
   local.set $2
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $2
   i32.store
  end
  local.get $1
  call $~lib/rt/rtrace/onalloc
  local.get $1
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   local.get $1
   i32.add
   local.set $2
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8
   local.get $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $1
   i32.add
   local.set $2
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 16
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 20
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 24
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i32.const 0
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=8
     local.get $0
     i32.const 16
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=16
     local.get $0
     i32.const 24
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1264
   i32.const 1328
   i32.const 260
   i32.const 31
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 12
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store offset=12
  local.get $2
  i32.const 16
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $0
  i32.store offset=16
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $3
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.load offset=4
     i32.store
     local.get $0
     i32.const 8
     i32.add
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.load offset=8
     i32.store
     local.get $0
     i32.const 12
     i32.add
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.load offset=12
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.load offset=4
    i32.store
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    i32.const 0
    i32.const 2
    i32.const 0
    call $~onstore
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $4
      local.get $0
      i32.const 1
      i32.add
      local.set $3
      local.get $0
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $1
      i32.const 1
      i32.add
      local.set $5
      local.get $1
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $5
      i32.const 1
      i32.add
      local.set $3
      local.get $5
      i32.load8_u
      i32.store8
      local.get $1
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $3
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $1
        i32.load offset=1
        local.set $3
        local.get $0
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        local.get $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $1
        i32.load offset=5
        local.set $4
        local.get $0
        i32.const 4
        i32.add
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        local.get $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $1
        i32.load offset=9
        local.set $3
        local.get $0
        i32.const 8
        i32.add
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        local.get $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $1
        i32.load offset=13
        local.set $4
        local.get $0
        i32.const 12
        i32.add
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        local.get $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $4
     local.get $0
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     i32.const 0
     i32.const 1
     i32.const 0
     call $~onstore
     local.get $1
     i32.const 1
     i32.add
     local.set $5
     local.get $1
     i32.load8_u
     i32.store8
     local.get $3
     i32.const 1
     i32.add
     local.set $0
     local.get $3
     i32.const 0
     i32.const 1
     i32.const 0
     call $~onstore
     local.get $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $1
       i32.load offset=2
       local.set $3
       local.get $0
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $1
       i32.load offset=6
       local.set $4
       local.get $0
       i32.const 4
       i32.add
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $1
       i32.load offset=10
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $1
       i32.load offset=14
       local.set $4
       local.get $0
       i32.const 12
       i32.add
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $4
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $3
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $1
      i32.load offset=3
      local.set $3
      local.get $0
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $1
      i32.load offset=7
      local.set $4
      local.get $0
      i32.const 4
      i32.add
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $1
      i32.load offset=11
      local.set $3
      local.get $0
      i32.const 8
      i32.add
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $1
      i32.load offset=15
      local.set $4
      local.get $0
      i32.const 12
      i32.add
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   i32.const 1
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $1
   i32.const 1
   i32.add
   local.set $4
   local.get $1
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 1
   i32.add
   local.set $0
   local.get $3
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.load8_u
   i32.store8
   local.get $4
   i32.const 1
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   i32.const 1
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $1
   i32.const 1
   i32.add
   local.set $4
   local.get $1
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 1
   i32.add
   local.set $0
   local.get $3
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.load8_u
   i32.store8
   local.get $4
   i32.const 1
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   i32.const 1
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $1
   i32.const 1
   i32.add
   local.set $4
   local.get $1
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 1
   i32.add
   local.set $0
   local.get $3
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.const 1
   i32.add
   local.set $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.load8_u
   i32.store8
   local.get $4
   i32.const 1
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   i32.const 1
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $1
   i32.const 1
   i32.add
   local.set $4
   local.get $1
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 1
   i32.add
   local.set $0
   local.get $3
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $4
   i32.load8_u
   i32.store8
   local.get $4
   i32.const 1
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $2
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $1
       local.tee $2
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $0
       i32.const 0
       i32.const 8
       i32.const 0
       call $~onstore
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $2
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $1
      local.tee $2
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       i32.const 0
       i32.const 8
       i32.const 0
       call $~onstore
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     if
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      local.get $0
      i32.add
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $start:~lib/as-proto/index
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    memory.size
    i32.const 16
    i32.shl
    i32.const 25404
    i32.sub
    i32.const 1
    i32.shr_u
    global.set $~lib/rt/itcms/threshold
    i32.const 1376
    call $~lib/rt/itcms/initLazy
    global.set $~lib/rt/itcms/pinSpace
    i32.const 1408
    call $~lib/rt/itcms/initLazy
    global.set $~lib/rt/itcms/toSpace
    i32.const 1552
    call $~lib/rt/itcms/initLazy
    global.set $~lib/rt/itcms/fromSpace
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 16
    i32.const 3
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=4
    local.get $0
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=8
    local.get $0
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    call $~lib/as-proto/Writer/Writer#constructor
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 16
    i32.const 5
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $1
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $1
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=8
    local.get $1
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    call $~lib/as-proto/Writer/Writer#constructor
    local.tee $1
    i32.store
    local.get $1
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    i32.const 0
    i32.const 2
    i32.const 6
    i32.const 1664
    call $~lib/rt/__newArray
    local.set $2
    local.get $1
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=4
    local.get $2
    if
     local.get $1
     local.get $2
     call $byn-split-outlined-A$~lib/rt/itcms/__link_0
    end
    i32.const 0
    i32.const 2
    i32.const 7
    i32.const 1696
    call $~lib/rt/__newArray
    local.set $2
    local.get $1
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=8
    local.get $2
    if
     local.get $1
     local.get $2
     call $byn-split-outlined-A$~lib/rt/itcms/__link_0
    end
    i32.const 0
    i32.const 2
    i32.const 7
    i32.const 1728
    call $~lib/rt/__newArray
    local.set $2
    local.get $1
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=12
    local.get $2
    if
     local.get $1
     local.get $2
     call $byn-split-outlined-A$~lib/rt/itcms/__link_0
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $0
    i32.load
    i32.load
    call $~lib/typedarray/Uint8Array#constructor
    local.set $1
    local.get $0
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=8
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $0
    i32.load offset=8
    i32.load offset=4
    local.set $1
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=4
    local.get $0
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/as-proto/Protobuf/WRITER
    i32.const 0
    call $~lib/typedarray/Uint8Array#constructor
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 12
    i32.const 9
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    local.get $0
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 8
     i32.const 10
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
    end
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    i32.load offset=4
    local.set $2
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store
    local.get $1
    i32.load offset=4
    local.get $1
    i32.load offset=8
    i32.add
    local.set $2
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=4
    local.get $0
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=8
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/as-proto/Protobuf/READER
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $0
     i32.const 4
     i32.sub
     local.tee $0
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u
     local.tee $5
     local.get $1
     i32.load16_u
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1456
   i32.const 2736
   i32.const 166
   i32.const 45
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.get $0
  i32.add
  local.set $4
  local.get $1
  i32.const 0
  i32.ne
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load16_u
     local.tee $3
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $3
      i32.eqz
      local.get $1
      i32.and
      br_if $while-break|0
      local.get $2
      i32.const 1
      i32.add
     else
      local.get $3
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
      else
       local.get $3
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $4
       local.get $0
       i32.const 2
       i32.add
       i32.gt_u
       i32.and
       if
        local.get $0
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
       local.get $2
       i32.const 3
       i32.add
      end
     end
     local.set $2
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  local.get $1
  i32.ge_u
  if
   local.get $3
   i32.const 16
   i32.const 4
   i32.const 1
   call $~onstore
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data.encode (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  if
   local.get $1
   i32.const 10
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   call $~lib/as-proto/Writer/Writer#string@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $0
   i32.load
   if
    local.get $1
    i32.const 8
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i32.load
    call $~lib/as-proto/Writer/Writer#int32@virtual
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   if
    local.get $1
    i32.const 18
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    call $~lib/as-proto/Writer/Writer#fork@virtual
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.load
    local.tee $2
    i32.store
    local.get $2
    if
     local.get $1
     i32.const 10
     call $~lib/as-proto/Writer/Writer#uint32@virtual
     local.get $1
     local.get $2
     call $~lib/as-proto/Writer/Writer#bytes@virtual
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=4
    local.get $0
    if
     local.get $1
     i32.const 18
     call $~lib/as-proto/Writer/Writer#uint32@virtual
     local.get $1
     call $~lib/as-proto/Writer/Writer#fork@virtual
     local.get $0
     local.get $1
     call $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data.encode
     local.get $1
     call $~lib/as-proto/Writer/Writer#ldelim@virtual
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/as-proto/Writer/Writer#ldelim@virtual
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1760
    i32.const 3440
    i32.const 19
    i32.const 48
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.set $1
   local.get $0
   i32.load
   local.tee $4
   local.get $2
   if
    local.get $3
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $1
   call $~lib/rt/itcms/__renew
   local.tee $2
   local.get $4
   i32.ne
   if
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/@koinos/proto-as/koinos/chain/chain/chain.object_space.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  i32.load8_u
  if
   local.get $1
   i32.const 8
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   i32.load8_u
   call $~lib/as-proto/Writer/Writer#bool@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $1
   i32.const 18
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  local.get $0
  i32.load offset=8
  if
   local.get $1
   i32.const 24
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   i32.load offset=8
   call $~lib/as-proto/Writer/Writer#uint32@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.put_object_arguments.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $1
   i32.const 10
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   call $~lib/as-proto/Writer/Writer#fork@virtual
   local.get $2
   local.get $1
   call $~lib/@koinos/proto-as/koinos/chain/chain/chain.object_space.encode
   local.get $1
   call $~lib/as-proto/Writer/Writer#ldelim@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $2
  if
   local.get $1
   i32.const 18
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.store offset=8
  local.get $0
  if
   local.get $1
   i32.const 26
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint32Array#__get (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.eqz
  if
   i32.const 1456
   i32.const 2736
   i32.const 871
   i32.const 64
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_arguments.encode (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>#__uset (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
 )
 (func $~lib/@koinos/proto-as/koinos/chain/value/value.value_type.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $2
   if
    local.get $1
    i32.const 10
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    call $~lib/as-proto/Writer/Writer#fork@virtual
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.load
    local.tee $4
    i32.store
    local.get $4
    if
     local.get $1
     i32.const 10
     call $~lib/as-proto/Writer/Writer#uint32@virtual
     local.get $1
     local.get $4
     call $~lib/as-proto/Writer/Writer#string@virtual
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.load offset=4
    local.tee $2
    i32.store offset=4
    local.get $2
    if
     local.get $1
     i32.const 18
     call $~lib/as-proto/Writer/Writer#uint32@virtual
     local.get $1
     local.get $2
     call $~lib/as-proto/Writer/Writer#bytes@virtual
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/as-proto/Writer/Writer#ldelim@virtual
   end
   local.get $0
   i32.load offset=4
   if
    local.get $1
    i32.const 16
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i32.load offset=4
    call $~lib/as-proto/Writer/Writer#int32@virtual
   end
   local.get $0
   i64.load offset=8
   i64.const 0
   i64.ne
   if
    local.get $1
    i32.const 24
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i64.load offset=8
    call $~lib/as-proto/Writer/Writer#int64@virtual
   end
   local.get $0
   i32.load offset=16
   if
    local.get $1
    i32.const 32
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i32.load offset=16
    call $~lib/as-proto/Writer/Writer#uint32@virtual
   end
   local.get $0
   i64.load offset=24
   i64.const 0
   i64.ne
   if
    local.get $1
    i32.const 40
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i64.load offset=24
    call $~lib/as-proto/Writer/Writer#int64@virtual
   end
   local.get $0
   i32.load offset=32
   if
    local.get $1
    i32.const 48
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $0
    i32.load offset=32
    local.set $2
    block $__inlined_func$~lib/as-proto/Writer/Writer#sint32@virtual
     block $default
      block $case1
       local.get $1
       i32.const 8
       i32.sub
       i32.load
       local.tee $4
       i32.const 3
       i32.ne
       if
        local.get $4
        i32.const 5
        i32.eq
        br_if $case1
        br $default
       end
       local.get $2
       i32.const 1
       i32.shl
       local.get $2
       i32.const 31
       i32.shr_s
       i32.xor
       local.set $2
       loop $while-continue|0
        local.get $2
        i32.const 127
        i32.gt_u
        if
         local.get $1
         i32.load offset=4
         local.tee $4
         i32.const 1
         i32.add
         local.set $5
         local.get $1
         i32.const 4
         i32.const 4
         i32.const 0
         call $~onstore
         local.get $5
         i32.store offset=4
         local.get $4
         i32.const 0
         i32.const 1
         i32.const 0
         call $~onstore
         local.get $2
         i32.const 127
         i32.and
         i32.const 128
         i32.or
         i32.store8
         local.get $2
         i32.const 7
         i32.shr_u
         local.set $2
         br $while-continue|0
        end
       end
       local.get $1
       i32.load offset=4
       local.tee $4
       i32.const 1
       i32.add
       local.set $5
       local.get $1
       i32.const 4
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $5
       i32.store offset=4
       local.get $4
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $2
       i32.store8
       br $__inlined_func$~lib/as-proto/Writer/Writer#sint32@virtual
      end
      local.get $2
      i32.const 1
      i32.shl
      local.get $2
      i32.const 31
      i32.shr_s
      i32.xor
      local.tee $2
      i32.const 128
      i32.lt_u
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.const 16384
       i32.lt_u
       if (result i32)
        i32.const 2
       else
        i32.const 3
        i32.const 4
        i32.const 5
        local.get $2
        i32.const 268435456
        i32.lt_u
        select
        local.get $2
        i32.const 2097152
        i32.lt_u
        select
       end
      end
      local.get $1
      i32.load
      i32.add
      local.set $2
      local.get $1
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $2
      i32.store
      br $__inlined_func$~lib/as-proto/Writer/Writer#sint32@virtual
     end
     unreachable
    end
   end
   local.get $0
   i64.load offset=40
   i64.const 0
   i64.ne
   if
    local.get $1
    i32.const 56
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $0
    i64.load offset=40
    local.set $3
    block $__inlined_func$~lib/as-proto/Writer/Writer#sint64@virtual
     block $default0
      block $case11
       local.get $1
       i32.const 8
       i32.sub
       i32.load
       local.tee $2
       i32.const 3
       i32.ne
       if
        local.get $2
        i32.const 5
        i32.eq
        br_if $case11
        br $default0
       end
       local.get $3
       i64.const 1
       i64.shl
       local.get $3
       i64.const 63
       i64.shr_s
       i64.xor
       local.set $3
       loop $while-continue|02
        local.get $3
        i64.const 127
        i64.gt_u
        if
         local.get $1
         i32.load offset=4
         local.tee $2
         i32.const 1
         i32.add
         local.set $4
         local.get $1
         i32.const 4
         i32.const 4
         i32.const 0
         call $~onstore
         local.get $4
         i32.store offset=4
         local.get $2
         i32.const 0
         i32.const 1
         i32.const 0
         call $~onstore
         local.get $3
         i64.const 127
         i64.and
         i64.const 128
         i64.or
         i64.store8
         local.get $3
         i64.const 7
         i64.shr_u
         local.set $3
         br $while-continue|02
        end
       end
       local.get $1
       i32.load offset=4
       local.tee $2
       i32.const 1
       i32.add
       local.set $4
       local.get $1
       i32.const 4
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $4
       i32.store offset=4
       local.get $2
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $3
       i64.store8
       br $__inlined_func$~lib/as-proto/Writer/Writer#sint64@virtual
      end
      local.get $3
      i64.const 1
      i64.shl
      local.get $3
      i64.const 63
      i64.shr_s
      i64.xor
      local.tee $3
      i64.const 128
      i64.lt_u
      if (result i32)
       i32.const 1
      else
       local.get $3
       i64.const 16384
       i64.lt_u
       if (result i32)
        i32.const 2
       else
        local.get $3
        i64.const 2097152
        i64.lt_u
        if (result i32)
         i32.const 3
        else
         local.get $3
         i64.const 268435456
         i64.lt_u
         if (result i32)
          i32.const 4
         else
          local.get $3
          i64.const 34359738368
          i64.lt_u
          if (result i32)
           i32.const 5
          else
           local.get $3
           i64.const 4398046511104
           i64.lt_u
           if (result i32)
            i32.const 6
           else
            local.get $3
            i64.const 562949953421312
            i64.lt_u
            if (result i32)
             i32.const 7
            else
             i32.const 8
             i32.const 9
             i32.const 10
             local.get $3
             i64.const -9223372036854775808
             i64.lt_u
             select
             local.get $3
             i64.const 72057594037927936
             i64.lt_u
             select
            end
           end
          end
         end
        end
       end
      end
      local.get $1
      i32.load
      i32.add
      local.set $2
      local.get $1
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $2
      i32.store
      br $__inlined_func$~lib/as-proto/Writer/Writer#sint64@virtual
     end
     unreachable
    end
   end
   local.get $0
   i32.load offset=48
   if
    local.get $1
    i32.const 69
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i32.load offset=48
    call $~lib/as-proto/Writer/Writer#fixed32@virtual
   end
   local.get $0
   i64.load offset=56
   i64.const 0
   i64.ne
   if
    local.get $1
    i32.const 73
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i64.load offset=56
    call $~lib/as-proto/Writer/Writer#fixed64@virtual
   end
   local.get $0
   i32.load offset=64
   if
    local.get $1
    i32.const 85
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i32.load offset=64
    call $~lib/as-proto/Writer/Writer#fixed32@virtual
   end
   local.get $0
   i64.load offset=72
   i64.const 0
   i64.ne
   if
    local.get $1
    i32.const 89
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i64.load offset=72
    call $~lib/as-proto/Writer/Writer#fixed64@virtual
   end
   local.get $0
   i32.load8_u offset=80
   if
    local.get $1
    i32.const 96
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    i32.load8_u offset=80
    call $~lib/as-proto/Writer/Writer#bool@virtual
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.load offset=84
   local.tee $2
   i32.store offset=4
   local.get $2
   if
    local.get $1
    i32.const 106
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $2
    call $~lib/as-proto/Writer/Writer#string@virtual
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.load offset=88
   local.tee $0
   i32.store offset=8
   local.get $0
   if
    local.get $1
    i32.const 114
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    local.get $0
    call $~lib/as-proto/Writer/Writer#bytes@virtual
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/proto-as/koinos/contracts/token/token/token.transfer_arguments.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $1
   i32.const 10
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $2
  if
   local.get $1
   i32.const 18
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  local.get $0
  i64.load offset=8
  i64.const 0
  i64.ne
  if
   local.get $1
   i32.const 24
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   i64.load offset=8
   call $~lib/as-proto/Writer/Writer#int64@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.call_arguments.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $1
   i32.const 10
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  local.get $0
  i32.load offset=4
  if
   local.get $1
   i32.const 16
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   i32.load offset=4
   call $~lib/as-proto/Writer/Writer#uint32@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   local.get $1
   i32.const 26
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/proto/staking/staking.balance_object#constructor (result i32)
  (local $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $0
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  i32.const 1024626059
  call $~lib/index/__cover
  i32.const -44335585
  call $~lib/index/__cover
  local.get $0
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  local.get $0
 )
 (func $assembly/proto/staking/staking.balance_object.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  i32.const -1683757621
  call $~lib/index/__cover
  i32.const -1287296323
  call $~lib/index/__cover
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 1208381633
   call $~lib/index/__cover
   local.get $0
   i32.load offset=4
  else
   i32.const 784435434
   call $~lib/index/__cover
   local.get $1
   local.get $0
   i32.load
   i32.add
  end
  local.set $2
  call $assembly/proto/staking/staking.balance_object#constructor
  local.set $1
  loop $while-continue|0
   local.get $2
   local.get $0
   i32.load
   i32.gt_u
   if
    i32.const 1656971738
    call $~lib/index/__cover
    block $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 9
     i32.eq
     if
      local.get $0
      call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
      local.set $4
      br $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
     end
     unreachable
    end
    block $break|1
     local.get $4
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      i32.const 1366319231
      call $~lib/index/__cover
      block $__inlined_func$~lib/as-proto/Reader/Reader#uint64@virtual
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 9
       i32.eq
       if
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#varint64
        local.set $3
        br $__inlined_func$~lib/as-proto/Reader/Reader#uint64@virtual
       end
       unreachable
      end
      local.get $1
      i32.const 0
      i32.const 8
      i32.const 0
      call $~onstore
      local.get $3
      i64.store
      br $break|1
     end
     i32.const 1141544776
     call $~lib/index/__cover
     local.get $0
     local.get $4
     i32.const 7
     i32.and
     call $~lib/as-proto/Reader/Reader#skipType@virtual
    end
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_object_arguments.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $1
   i32.const 10
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   call $~lib/as-proto/Writer/Writer#fork@virtual
   local.get $2
   local.get $1
   call $~lib/@koinos/proto-as/koinos/chain/chain/chain.object_space.encode
   local.get $1
   call $~lib/as-proto/Writer/Writer#ldelim@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   local.get $1
   i32.const 18
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 4828
    i32.add
    i64.load32_u
    local.set $3
    local.get $5
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 4828
    i32.add
    i64.load32_u
    local.set $4
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    local.get $4
    i64.const 32
    i64.shl
    local.get $3
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.rem_u
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
   i32.const 2
   i32.shl
   i32.const 4828
   i32.add
   i32.load
   local.set $5
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $5
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $1
   i32.const 2
   i32.shl
   i32.const 4828
   i32.add
   i32.load
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
  else
   local.get $1
   i32.const 48
   i32.add
   local.set $1
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 0
   i32.const 2
   i32.const 0
   call $~onstore
   local.get $1
   i32.store16
  end
 )
 (func $~lib/number/U64#toString (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/utoa64
   local.get $0
   i64.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4816
    local.set $1
    br $__inlined_func$~lib/util/number/utoa64
   end
   local.get $0
   i64.const 4294967295
   i64.le_u
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.wrap_i64
    local.tee $2
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $2
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $2
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $2
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $2
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $2
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.tee $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $1
    local.get $2
    local.get $3
    call $~lib/util/number/utoa32_dec_lut
   else
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i64.const 1000000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 1000000000000
     i64.lt_u
     if (result i32)
      local.get $0
      i64.const 100000000000
      i64.ge_u
      i32.const 10
      i32.add
      local.get $0
      i64.const 10000000000
      i64.ge_u
      i32.add
     else
      local.get $0
      i64.const 100000000000000
      i64.ge_u
      i32.const 13
      i32.add
      local.get $0
      i64.const 10000000000000
      i64.ge_u
      i32.add
     end
    else
     local.get $0
     i64.const 100000000000000000
     i64.lt_u
     if (result i32)
      local.get $0
      i64.const 10000000000000000
      i64.ge_u
      i32.const 16
      i32.add
     else
      local.get $0
      i64.const -8446744073709551616
      i64.ge_u
      i32.const 18
      i32.add
      local.get $0
      i64.const 1000000000000000000
      i64.ge_u
      i32.add
     end
    end
    local.tee $2
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    loop $while-continue|0
     local.get $0
     i64.const 100000000
     i64.ge_u
     if
      local.get $0
      local.get $0
      i64.const 100000000
      i64.div_u
      local.tee $0
      i64.const 100000000
      i64.mul
      i64.sub
      i32.wrap_i64
      local.tee $3
      i32.const 10000
      i32.rem_u
      local.tee $4
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 4828
      i32.add
      i64.load32_u
      local.set $5
      local.get $4
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 4828
      i32.add
      i64.load32_u
      local.set $6
      local.get $2
      i32.const 4
      i32.sub
      local.tee $2
      i32.const 1
      i32.shl
      local.get $1
      i32.add
      i32.const 0
      i32.const 8
      i32.const 0
      call $~onstore
      local.get $6
      i64.const 32
      i64.shl
      local.get $5
      i64.or
      i64.store
      local.get $3
      i32.const 10000
      i32.div_u
      local.tee $3
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 4828
      i32.add
      i64.load32_u
      local.set $5
      local.get $3
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 4828
      i32.add
      i64.load32_u
      local.set $6
      local.get $2
      i32.const 4
      i32.sub
      local.tee $2
      i32.const 1
      i32.shl
      local.get $1
      i32.add
      i32.const 0
      i32.const 8
      i32.const 0
      call $~onstore
      local.get $6
      i64.const 32
      i64.shl
      local.get $5
      i64.or
      i64.store
      br $while-continue|0
     end
    end
    local.get $1
    local.get $0
    i32.wrap_i64
    local.get $2
    call $~lib/util/number/utoa32_dec_lut
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $1
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 2
  i32.shl
  i32.const 4576
  i32.add
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store
  local.get $1
  if
   i32.const 4576
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
 )
 (func $assembly/proto/staking/staking.balance_object.encode (param $0 i32) (param $1 i32)
  i32.const -452756377
  call $~lib/index/__cover
  i32.const -18500517
  call $~lib/index/__cover
  local.get $0
  i64.load
  i64.const 0
  i64.ne
  if
   i32.const 92311128
   call $~lib/index/__cover
   local.get $1
   i32.const 8
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   i64.load
   call $~lib/as-proto/Writer/Writer#int64@virtual
  end
 )
 (func $assembly/proto/staking/staking.stake_event.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  i32.const 1681190213
  call $~lib/index/__cover
  i32.const -1193530698
  call $~lib/index/__cover
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  if
   i32.const 1575939327
   call $~lib/index/__cover
   local.get $1
   i32.const 10
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  local.get $0
  i64.load offset=8
  i64.const 0
  i64.ne
  if
   i32.const 528890555
   call $~lib/index/__cover
   local.get $1
   i32.const 16
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $0
   i64.load offset=8
   call $~lib/as-proto/Writer/Writer#int64@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/assert/assert (param $0 i32)
  i32.const -1176030550
  call $~lib/index/__cover
  i32.const -1627255337
  call $~lib/index/__cover
  local.get $0
  i32.eqz
  if
   i32.const -1774701052
   call $~lib/index/__cover
   i32.const 1872
   i32.const 7184
   i32.const 2
   i32.const 19
   call $~lib/wasi/index/abort
   unreachable
  end
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs (param $0 i32)
  i32.const 1354937306
  call $~lib/index/__cover
  i32.const 855870159
  call $~lib/index/__cover
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1456
   i32.const 3440
   i32.const 114
   i32.const 42
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store
  local.get $0
  i32.const 12
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $3
  i32.store offset=12
 )
 (func $~lib/as-proto/internal/FixedReader/FixedReader#varint32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.tee $1
  i32.const 1
  i32.add
  local.set $2
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $2
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    i32.load8_u
    local.tee $2
    i32.const 127
    i32.and
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    local.tee $2
    i32.const 127
    i32.and
    i32.const 7
    i32.shl
    local.get $1
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    local.tee $2
    i32.const 127
    i32.and
    i32.const 14
    i32.shl
    local.get $1
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    local.tee $2
    i32.const 127
    i32.and
    i32.const 21
    i32.shl
    local.get $1
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    local.tee $2
    i32.const 15
    i32.and
    i32.const 28
    i32.shl
    local.get $1
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    return
   end
   i32.const 1456
   i32.const 8368
   i32.const 210
   i32.const 5
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/as-proto/internal/FixedReader/FixedReader#skip (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $folding-inner0
   local.get $1
   if
    local.get $1
    local.get $0
    i32.load
    i32.add
    local.set $1
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
   else
    loop $while-continue|0
     local.get $0
     i32.load
     local.tee $1
     i32.const 1
     i32.add
     local.set $2
     local.get $0
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $2
     i32.store
     local.get $0
     i32.load
     local.get $0
     i32.load offset=4
     i32.gt_u
     br_if $folding-inner0
     local.get $1
     i32.load8_u
     i32.const 128
     i32.and
     br_if $while-continue|0
    end
   end
   return
  end
  i32.const 1456
  i32.const 8368
  i32.const 210
  i32.const 5
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/internal/FixedReader/FixedReader#varint64 (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  local.get $0
  i32.load
  local.tee $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $3
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 7
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 14
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 21
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 28
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 35
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 42
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 49
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    local.tee $4
    i64.const 127
    i64.and
    i64.const 56
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $4
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i64.load8_u
    i64.const 1
    i64.and
    i64.const 63
    i64.shl
    local.get $1
    i64.or
    return
   end
   i32.const 1456
   i32.const 8368
   i32.const 210
   i32.const 5
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/as-proto/Writer/Writer#uint32@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $2
    i32.const 3
    i32.ne
    if
     local.get $2
     i32.const 5
     i32.eq
     br_if $case1
     br $default
    end
    loop $while-continue|0
     local.get $1
     i32.const 127
     i32.gt_u
     if
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 1
      i32.add
      local.set $3
      local.get $0
      i32.const 4
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store offset=4
      local.get $2
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $1
      i32.const 127
      i32.and
      i32.const 128
      i32.or
      i32.store8
      local.get $1
      i32.const 7
      i32.shr_u
      local.set $1
      br $while-continue|0
     end
    end
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    local.get $2
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    local.get $1
    i32.store8
    return
   end
   local.get $0
   i32.load
   local.set $2
   local.get $1
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     i32.const 3
     i32.const 4
     i32.const 5
     local.get $1
     i32.const 268435456
     i32.lt_u
     select
     local.get $1
     i32.const 2097152
     i32.lt_u
     select
    end
   end
   local.get $2
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   return
  end
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#int32@virtual (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $3
    i32.const 3
    i32.ne
    if
     local.get $3
     i32.const 5
     i32.eq
     br_if $case1
     br $default
    end
    local.get $1
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i64.extend_i32_s
     local.set $2
     loop $while-continue|0
      local.get $2
      i64.const 127
      i64.gt_u
      if
       local.get $0
       i32.load offset=4
       local.tee $1
       i32.const 1
       i32.add
       local.set $3
       local.get $0
       i32.const 4
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $3
       i32.store offset=4
       local.get $1
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $2
       i64.const 127
       i64.and
       i64.const 128
       i64.or
       i64.store8
       local.get $2
       i64.const 7
       i64.shr_u
       local.set $2
       br $while-continue|0
      end
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $3
     i32.store offset=4
     local.get $1
     i32.const 0
     i32.const 1
     i32.const 0
     call $~onstore
     local.get $2
     i64.store8
    else
     loop $while-continue|1
      local.get $1
      i32.const 127
      i32.gt_u
      if
       local.get $0
       i32.load offset=4
       local.tee $3
       i32.const 1
       i32.add
       local.set $4
       local.get $0
       i32.const 4
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $4
       i32.store offset=4
       local.get $3
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $1
       i32.const 127
       i32.and
       i32.const 128
       i32.or
       i32.store8
       local.get $1
       i32.const 7
       i32.shr_u
       local.set $1
       br $while-continue|1
      end
     end
     local.get $0
     i32.load offset=4
     local.tee $3
     i32.const 1
     i32.add
     local.set $4
     local.get $0
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $4
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.const 1
     i32.const 0
     call $~onstore
     local.get $1
     i32.store8
    end
    return
   end
   local.get $1
   i32.const 0
   i32.lt_s
   if
    local.get $0
    i32.load
    i32.const 10
    i32.add
    local.set $1
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
   else
    local.get $0
    i32.load
    local.set $3
    local.get $1
    i32.const 128
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 16384
     i32.lt_u
     if (result i32)
      i32.const 2
     else
      i32.const 3
      i32.const 4
      i32.const 5
      local.get $1
      i32.const 268435456
      i32.lt_u
      select
      local.get $1
      i32.const 2097152
      i32.lt_u
      select
     end
    end
    local.get $3
    i32.add
    local.set $1
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
   end
   return
  end
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#fork@virtual (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 5
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9020
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     local.get $0
     i32.load offset=12
     local.set $1
     local.get $0
     i32.load
     i32.load offset=8
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $2
     i32.store
     local.get $2
     i32.load offset=12
     local.get $1
     i32.le_s
     if (result i32)
      i32.const 0
     else
      local.get $0
      i32.load
      i32.load offset=8
      local.set $1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $1
      i32.store
      local.get $0
      i32.load offset=12
      local.tee $2
      i32.const 1
      i32.add
      local.set $3
      local.get $0
      i32.const 12
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store offset=12
      local.get $1
      local.get $2
      call $~lib/array/Array<i32>#__get
     end
     local.set $1
     loop $while-continue|0
      local.get $1
      i32.const 127
      i32.gt_u
      if
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 1
       i32.add
       local.set $3
       local.get $0
       i32.const 4
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $3
       i32.store offset=4
       local.get $2
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $1
       i32.const 127
       i32.and
       i32.const 128
       i32.or
       i32.store8
       local.get $1
       i32.const 7
       i32.shr_u
       local.set $1
       br $while-continue|0
      end
     end
     local.get $0
     i32.load offset=4
     local.tee $2
     i32.const 1
     i32.add
     local.set $3
     local.get $0
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $3
     i32.store offset=4
     local.get $2
     i32.const 0
     i32.const 1
     i32.const 0
     call $~onstore
     local.get $1
     i32.store8
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    local.get $0
    i32.load offset=4
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $1
    local.get $0
    i32.load
    call $~lib/array/Array<u32>#push
    local.get $0
    i32.load offset=12
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $0
    i32.load offset=8
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $2
    i32.load offset=12
    call $~lib/array/Array<u32>#push
    local.get $0
    i32.load offset=8
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store
    local.get $0
    i32.const 0
    call $~lib/array/Array<u32>#push
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#bytes@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $2
    i32.const 3
    i32.ne
    if
     local.get $2
     i32.const 5
     i32.eq
     br_if $case1
     br $default
    end
    local.get $1
    i32.load offset=8
    local.set $2
    loop $while-continue|0
     local.get $2
     i32.const 127
     i32.gt_u
     if
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.const 1
      i32.add
      local.set $4
      local.get $0
      i32.const 4
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $4
      i32.store offset=4
      local.get $3
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $2
      i32.const 127
      i32.and
      i32.const 128
      i32.or
      i32.store8
      local.get $2
      i32.const 7
      i32.shr_u
      local.set $2
      br $while-continue|0
     end
    end
    local.get $0
    i32.load offset=4
    local.tee $3
    i32.const 1
    i32.add
    local.set $4
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store offset=4
    local.get $3
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    local.get $2
    i32.store8
    local.get $0
    i32.load offset=4
    local.get $1
    i32.load offset=4
    local.get $1
    i32.load offset=8
    call $~lib/memory/memory.copy
    local.get $0
    i32.load offset=4
    local.get $1
    i32.load offset=8
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=4
    return
   end
   local.get $0
   i32.load
   local.set $2
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $3
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     i32.const 3
     i32.const 4
     i32.const 5
     local.get $3
     i32.const 268435456
     i32.lt_u
     select
     local.get $3
     i32.const 2097152
     i32.lt_u
     select
    end
   end
   local.get $2
   i32.add
   local.set $2
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   local.get $0
   i32.load
   local.get $1
   i32.load offset=8
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   return
  end
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#string@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $2
     i32.const 3
     i32.ne
     if
      local.get $2
      i32.const 5
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9020
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     local.get $0
     local.tee $2
     i32.load offset=12
     local.set $3
     local.get $0
     i32.load
     i32.load offset=8
     local.set $4
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $4
     i32.store
     local.get $4
     i32.load offset=12
     local.get $3
     i32.le_s
     if (result i32)
      i32.const 0
     else
      local.get $2
      i32.load
      i32.load offset=8
      local.set $3
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store
      local.get $2
      i32.load offset=12
      local.set $4
      local.get $2
      i32.const 12
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $4
      i32.const 1
      i32.add
      i32.store offset=12
      local.get $3
      local.get $4
      call $~lib/array/Array<i32>#__get
     end
     local.tee $4
     local.set $3
     loop $while-continue|0
      local.get $3
      i32.const 127
      i32.gt_u
      if
       local.get $0
       i32.load offset=4
       local.set $5
       local.get $0
       i32.const 4
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $5
       i32.const 1
       i32.add
       i32.store offset=4
       local.get $5
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $3
       i32.const 127
       i32.and
       i32.const 128
       i32.or
       i32.store8
       local.get $3
       i32.const 7
       i32.shr_u
       local.set $3
       br $while-continue|0
      end
     end
     local.get $0
     i32.load offset=4
     local.set $5
     local.get $0
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $5
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $5
     i32.const 0
     i32.const 1
     i32.const 0
     call $~onstore
     local.get $3
     i32.store8
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.set $0
     local.get $2
     i32.load offset=4
     local.set $3
     i32.const 3
     global.set $~argumentsLength
     local.get $1
     local.get $0
     local.get $3
     call $~lib/string/String.UTF8.encodeUnsafe
     drop
     local.get $4
     local.get $2
     i32.load offset=4
     i32.add
     local.set $0
     local.get $2
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $1
    i32.const 0
    call $~lib/string/String.UTF8.byteLength
    local.set $1
    local.get $0
    i32.load offset=8
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store
    local.get $2
    local.get $1
    call $~lib/array/Array<u32>#push
    local.get $1
    i32.const 128
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 16384
     i32.lt_u
     if (result i32)
      i32.const 2
     else
      i32.const 3
      i32.const 4
      i32.const 5
      local.get $1
      i32.const 268435456
      i32.lt_u
      select
      local.get $1
      i32.const 2097152
      i32.lt_u
      select
     end
    end
    local.get $0
    i32.load
    i32.add
    local.set $2
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
    local.set $1
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#ldelim@virtual (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 5
      i32.eq
      br_if $case1
      br $default
     end
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    if
     i32.const 25424
     i32.const 25472
     i32.const 1
     i32.const 1
     call $~lib/wasi/index/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $1
    i32.load offset=12
    if (result i32)
     local.get $0
     i32.load offset=12
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.store
     local.get $1
     i32.load offset=12
    else
     i32.const 0
    end
    i32.eqz
    if
     i32.const 8128
     i32.const 8224
     i32.const 126
     i32.const 5
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store
    local.get $2
    i32.load offset=12
    local.tee $1
    i32.const 0
    i32.le_s
    br_if $folding-inner0
    local.get $2
    i32.load offset=4
    local.get $1
    i32.const 1
    i32.sub
    local.tee $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store offset=12
    local.get $0
    i32.load offset=12
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store
    local.get $4
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    br_if $folding-inner0
    local.get $4
    i32.load offset=4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $2
    local.get $4
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $5
    i32.store offset=12
    i32.sub
    local.set $1
    local.get $0
    i32.load offset=8
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store
    local.get $3
    i32.load offset=12
    local.get $2
    i32.le_u
    if
     local.get $2
     i32.const 0
     i32.lt_s
     if
      i32.const 1456
      i32.const 3440
      i32.const 130
      i32.const 22
      call $~lib/wasi/index/abort
      unreachable
     end
     local.get $3
     local.get $2
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     call $~lib/array/ensureCapacity
     local.get $3
     i32.const 12
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $4
     i32.store offset=12
    end
    local.get $3
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $1
    i32.const 128
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 16384
     i32.lt_u
     if (result i32)
      i32.const 2
     else
      i32.const 3
      i32.const 4
      i32.const 5
      local.get $1
      i32.const 268435456
      i32.lt_u
      select
      local.get $1
      i32.const 2097152
      i32.lt_u
      select
     end
    end
    local.get $0
    i32.load
    i32.add
    local.set $1
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 8320
  i32.const 3440
  i32.const 291
  i32.const 18
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#bool@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $2
    i32.const 3
    i32.ne
    if
     local.get $2
     i32.const 5
     i32.eq
     br_if $case1
     br $default
    end
    local.get $1
    i32.eqz
    i32.eqz
    local.set $1
    local.get $0
    i32.load offset=4
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    local.get $1
    i32.store8
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=4
    return
   end
   local.get $0
   i32.load
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   return
  end
  unreachable
 )
 (func $~lib/as-proto/Reader/Reader#skipType@virtual (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 9
  i32.eq
  if
   local.get $0
   local.get $1
   call $~lib/as-proto/internal/FixedReader/FixedReader#skipType
   return
  end
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#int64@virtual (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $2
    i32.const 3
    i32.ne
    if
     local.get $2
     i32.const 5
     i32.eq
     br_if $case1
     br $default
    end
    loop $while-continue|0
     local.get $1
     i64.const 127
     i64.gt_u
     if
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 1
      i32.add
      local.set $3
      local.get $0
      i32.const 4
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store offset=4
      local.get $2
      i32.const 0
      i32.const 1
      i32.const 0
      call $~onstore
      local.get $1
      i64.const 127
      i64.and
      i64.const 128
      i64.or
      i64.store8
      local.get $1
      i64.const 7
      i64.shr_u
      local.set $1
      br $while-continue|0
     end
    end
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    local.set $3
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    local.get $2
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    local.get $1
    i64.store8
    return
   end
   local.get $0
   i32.load
   local.set $2
   local.get $1
   i64.const 128
   i64.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $1
    i64.const 16384
    i64.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $1
     i64.const 2097152
     i64.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $1
      i64.const 268435456
      i64.lt_u
      if (result i32)
       i32.const 4
      else
       local.get $1
       i64.const 34359738368
       i64.lt_u
       if (result i32)
        i32.const 5
       else
        local.get $1
        i64.const 4398046511104
        i64.lt_u
        if (result i32)
         i32.const 6
        else
         local.get $1
         i64.const 562949953421312
         i64.lt_u
         if (result i32)
          i32.const 7
         else
          i32.const 8
          i32.const 9
          i32.const 10
          local.get $1
          i64.const -9223372036854775808
          i64.lt_u
          select
          local.get $1
          i64.const 72057594037927936
          i64.lt_u
          select
         end
        end
       end
      end
     end
    end
   end
   local.get $2
   i32.add
   local.set $2
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   return
  end
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#fixed32@virtual (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $2
    i32.const 3
    i32.ne
    if
     local.get $2
     i32.const 5
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    i32.load offset=4
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=4
    return
   end
   local.get $0
   i32.load
   i32.const 4
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   return
  end
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#fixed64@virtual (param $0 i32) (param $1 i64)
  (local $2 i32)
  block $default
   block $case1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.tee $2
    i32.const 3
    i32.ne
    if
     local.get $2
     i32.const 5
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    i32.load offset=4
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    local.get $1
    i64.store
    local.get $0
    i32.load offset=4
    i32.const 8
    i32.add
    local.set $2
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=4
    return
   end
   local.get $0
   i32.load
   i32.const 8
   i32.add
   local.set $2
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   return
  end
  unreachable
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner4
   block $folding-inner0
    block $folding-inner12
     block $folding-inner5
      block $folding-inner3
       block $folding-inner2
        block $folding-inner1
         block $invalid
          block $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u64>
           block $~lib/map/Map<usize,i32>
            block $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>
             block $~lib/staticarray/StaticArray<~lib/string/String>
              block $~lib/@koinos/sdk-as/util/safeMath/SafeMath.SafeInteger<u64>
               block $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.database_object
                block $~lib/@koinos/proto-as/koinos/chain/value/value.value_type
                 block $~lib/staticarray/StaticArray<u8>
                  block $~lib/as-proto/Reader/Reader
                   block $~lib/as-proto/internal/FixedSizer/FixedSizer
                    block $~lib/as-proto/Writer/Writer
                     block $~lib/string/String
                      block $~lib/arraybuffer/ArrayBuffer
                       local.get $0
                       i32.const 8
                       i32.sub
                       i32.load
                       br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner4 $folding-inner5 $~lib/as-proto/Writer/Writer $~lib/as-proto/internal/FixedSizer/FixedSizer $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner12 $~lib/as-proto/Reader/Reader $folding-inner0 $folding-inner4 $folding-inner4 $~lib/staticarray/StaticArray<u8> $folding-inner0 $folding-inner1 $folding-inner4 $folding-inner0 $folding-inner2 $folding-inner0 $folding-inner0 $folding-inner2 $folding-inner1 $folding-inner4 $folding-inner0 $folding-inner4 $folding-inner0 $folding-inner3 $folding-inner4 $~lib/@koinos/proto-as/koinos/chain/value/value.value_type $folding-inner1 $folding-inner3 $folding-inner0 $folding-inner4 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner5 $folding-inner0 $folding-inner0 $folding-inner4 $folding-inner0 $folding-inner4 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner4 $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.database_object $folding-inner0 $~lib/@koinos/sdk-as/util/safeMath/SafeMath.SafeInteger<u64> $~lib/staticarray/StaticArray<~lib/string/String> $folding-inner0 $folding-inner4 $folding-inner3 $folding-inner0 $folding-inner2 $folding-inner0 $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool> $~lib/map/Map<usize,i32> $folding-inner4 $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u64> $invalid
                      end
                      return
                     end
                     return
                    end
                    return
                   end
                   local.get $0
                   i32.load offset=4
                   local.tee $1
                   if
                    local.get $1
                    call $byn-split-outlined-A$~lib/rt/itcms/__visit
                   end
                   local.get $0
                   i32.load offset=8
                   local.tee $1
                   if
                    local.get $1
                    call $byn-split-outlined-A$~lib/rt/itcms/__visit
                   end
                   local.get $0
                   i32.load offset=12
                   local.tee $0
                   if
                    local.get $0
                    call $byn-split-outlined-A$~lib/rt/itcms/__visit
                   end
                   return
                  end
                  return
                 end
                 return
                end
                local.get $0
                i32.load
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=84
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=88
                local.tee $0
                if
                 local.get $0
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                return
               end
               local.get $0
               i32.load offset=4
               local.tee $1
               if
                local.get $1
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               br $folding-inner12
              end
              return
             end
             local.get $0
             i32.const 20
             i32.sub
             i32.load offset=16
             local.get $0
             i32.add
             local.set $1
             loop $while-continue|0
              local.get $0
              local.get $1
              i32.lt_u
              if
               local.get $0
               i32.load
               local.tee $2
               if
                local.get $2
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               local.get $0
               i32.const 4
               i32.add
               local.set $0
               br $while-continue|0
              end
             end
             return
            end
            return
           end
           local.get $0
           i32.load
           local.tee $1
           if
            local.get $1
            call $byn-split-outlined-A$~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=8
           local.tee $0
           if
            local.get $0
            call $byn-split-outlined-A$~lib/rt/itcms/__visit
           end
           return
          end
          return
         end
         unreachable
        end
        local.get $0
        i32.load
        local.tee $1
        if
         local.get $1
         call $byn-split-outlined-A$~lib/rt/itcms/__visit
        end
        br $folding-inner0
       end
       local.get $0
       i32.load
       local.tee $1
       if
        local.get $1
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.load offset=4
       local.tee $1
       if
        local.get $1
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       br $folding-inner12
      end
      local.get $0
      i32.load offset=4
      local.tee $1
      local.get $0
      i32.load offset=12
      i32.const 2
      i32.shl
      i32.add
      local.set $2
      loop $while-continue|015
       local.get $1
       local.get $2
       i32.lt_u
       if
        local.get $1
        i32.load
        local.tee $3
        if
         local.get $3
         call $byn-split-outlined-A$~lib/rt/itcms/__visit
        end
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|015
       end
      end
      br $folding-inner4
     end
     local.get $0
     i32.load
     local.tee $1
     if
      local.get $1
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
     br $folding-inner12
    end
    local.get $0
    i32.load offset=8
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    return
   end
   local.get $0
   i32.load offset=4
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~start
  (local $0 i32)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const -719199854
   i32.const 8
   i32.const 27
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const -2011257366
   i32.const 9
   i32.const 20
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 1919524182
   i32.const 9
   i32.const 14
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 1489987162
   i32.const 14
   i32.const 35
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const -80492826
   i32.const 14
   i32.const 29
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 2112583289
   i32.const 8
   i32.const 21
   i32.const 0
   call $~lib/index/__coverDeclare
   call $start:~lib/as-proto/index
   i32.const 1
   i32.const 0
   i32.const 0
   call $~lib/@koinos/proto-as/koinos/chain/chain/chain.object_space#constructor
   global.set $~lib/@koinos/sdk-as/util/mockVM/MockVM.METADATA_SPACE
   i32.const 1024
   global.set $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
   i32.const 1024
   call $~lib/typedarray/Uint8Array#constructor
   global.set $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 12
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/arraybuffer/ArrayBufferView#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
   call $start:assembly/Staking
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 3008
   i32.store
   i32.const 3008
   call $~lib/@koinos/sdk-as/util/base58/Base58.decode
   global.set $assembly/__tests__/staking.spec/TOKEN_CONTRACT_ID
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 3104
   i32.store
   i32.const 3104
   call $~lib/@koinos/sdk-as/util/base58/Base58.decode
   global.set $assembly/__tests__/staking.spec/MOCK_ACCT1
   call $start:node_modules/@as-pect/assembly/assembly/internal/Expectation
   call $start:node_modules/@as-pect/assembly/assembly/internal/Reflect
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 3200
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7776
   i32.store offset=4
   i32.const 3200
   i32.const 7776
   call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7840
   i32.store
   i32.const 7840
   i32.const 855870159
   i32.const 7
   i32.const 49
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7840
   i32.store
   i32.const 7840
   i32.const 1354937306
   i32.const 7
   i32.const 1
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7840
   i32.store
   i32.const 7840
   i32.const -387839943
   i32.const 13
   i32.const 40
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7840
   i32.store
   i32.const 7840
   i32.const 175360833
   i32.const 14
   i32.const 19
   i32.const 2
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7840
   i32.store
   i32.const 7840
   i32.const -1116785682
   i32.const 12
   i32.const 1
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7984
   i32.store
   i32.const 7984
   i32.const 1981661110
   i32.const 1
   i32.const 48
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7984
   i32.store
   i32.const 7984
   i32.const 63810754
   i32.const 1
   i32.const 1
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $start:assembly/proto/staking
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1217911085
  i32.const 5
  i32.const 72
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -397652173
  i32.const 7
  i32.const 41
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -709172860
  i32.const 5
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1324779434
  i32.const 13
  i32.const 70
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 2130227503
  i32.const 14
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1706281304
  i32.const 14
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 2089424044
  i32.const 17
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1798771537
  i32.const 19
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1573997082
  i32.const 22
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1586048029
  i32.const 13
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1335629614
  i32.const 35
  i32.const 52
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -535587
  i32.const 35
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1635353160
  i32.const 42
  i32.const 69
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1289503310
  i32.const 43
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1231536831
  i32.const 42
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1386192463
  i32.const 49
  i32.const 67
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1973209511
  i32.const 50
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1549263312
  i32.const 50
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 275157300
  i32.const 53
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -15495207
  i32.const 55
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -244895529
  i32.const 58
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1681938330
  i32.const 49
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1426150023
  i32.const 71
  i32.const 33
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 245845605
  i32.const 71
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1457073644
  i32.const 77
  i32.const 67
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 189499022
  i32.const 79
  i32.const 41
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -852923883
  i32.const 84
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 902409759
  i32.const 77
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -879221637
  i32.const 90
  i32.const 65
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 20079396
  i32.const 91
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -403866803
  i32.const 91
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 711736727
  i32.const 94
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 421084220
  i32.const 96
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 191683898
  i32.const 99
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 685022912
  i32.const 103
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 478463560
  i32.const 90
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1429317544
  i32.const 117
  i32.const 68
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1644277342
  i32.const 117
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1518589673
  i32.const 125
  i32.const 64
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1877854438
  i32.const 126
  i32.const 35
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -618367579
  i32.const 125
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1507581817
  i32.const 132
  i32.const 62
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1892481341
  i32.const 133
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1978539756
  i32.const 133
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1431465320
  i32.const 136
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1722117827
  i32.const 138
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1946892282
  i32.const 141
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1849368823
  i32.const 132
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -661191454
  i32.const 154
  i32.const 38
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 859014857
  i32.const 154
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -744408741
  i32.const 160
  i32.const 70
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1512497731
  i32.const 162
  i32.const 41
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1735420793
  i32.const 167
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1666069902
  i32.const 160
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1474084834
  i32.const 173
  i32.const 68
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 449355840
  i32.const 174
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 25409641
  i32.const 174
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -994885893
  i32.const 177
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1285538400
  i32.const 179
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1510312855
  i32.const 182
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1149357541
  i32.const 186
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1091632812
  i32.const 173
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -816955171
  i32.const 200
  i32.const 68
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1574556441
  i32.const 200
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1145891372
  i32.const 208
  i32.const 67
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1270117932
  i32.const 209
  i32.const 35
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -699137569
  i32.const 208
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1880280118
  i32.const 215
  i32.const 65
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1365399625
  i32.const 216
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 941453426
  i32.const 216
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -823728814
  i32.const 219
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1109755454
  i32.const 221
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1339155776
  i32.const 224
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1930138813
  i32.const 215
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -53454948
  i32.const 237
  i32.const 38
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 778244867
  i32.const 237
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -18500517
  i32.const 244
  i32.const 66
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 92311128
  i32.const 245
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -452756377
  i32.const 244
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1287296323
  i32.const 251
  i32.const 64
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1208381633
  i32.const 252
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 784435434
  i32.const 252
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1656971738
  i32.const 255
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1366319231
  i32.const 257
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1141544776
  i32.const 260
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1683757621
  i32.const 251
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -44335585
  i32.const 273
  i32.const 33
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1024626059
  i32.const 273
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1193530698
  i32.const 279
  i32.const 63
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1575939327
  i32.const 281
  i32.const 41
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 528890555
  i32.const 286
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1681190213
  i32.const 279
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -615678691
  i32.const 292
  i32.const 61
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -744748482
  i32.const 293
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1168694681
  i32.const 293
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 2093551165
  i32.const 296
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1802898658
  i32.const 298
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1721526080
  i32.const 301
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 86229180
  i32.const 305
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1257244014
  i32.const 292
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -2028111276
  i32.const 319
  i32.const 68
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1559436130
  i32.const 319
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 998060214
  i32.const 326
  i32.const 66
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -297024719
  i32.const 328
  i32.const 41
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1339447624
  i32.const 333
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1504529922
  i32.const 326
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1571286354
  i32.const 339
  i32.const 64
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1998427233
  i32.const 340
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 1574481034
  i32.const 340
  i32.const 52
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 225212986
  i32.const 343
  i32.const 32
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -65439521
  i32.const 345
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -294839843
  i32.const 348
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -1925510876
  i32.const 352
  i32.const 18
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 930092832
  i32.const 339
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const 255115964
  i32.const 366
  i32.const 68
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 1968
  i32.store
  i32.const 1968
  i32.const -2106346746
  i32.const 366
  i32.const 5
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@koinos/sdk-as/util/base58/Base58.decodeUnsafe (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 2208
  i32.store
  i32.const 2208
  i32.const 0
  call $~lib/string/String#charAt
  local.tee $3
  i32.store offset=4
  loop $while-continue|0
   local.get $0
   local.get $7
   call $~lib/string/String#charAt
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2352
   i32.store offset=8
   local.get $2
   i32.const 2352
   call $~lib/string/String.__eq
   if
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   local.get $7
   call $~lib/string/String#charAt
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   local.get $2
   local.get $3
   call $~lib/string/String.__eq
   if
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $while-continue|1
   end
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $7
  i32.sub
  i32.const 1
  i32.add
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $5
  i32.const 1
  i32.sub
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $6
  i32.store offset=12
  loop $while-continue|2
   local.get $0
   local.get $7
   call $~lib/string/String#charAt
   if
    block $while-break|2
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.get $7
     i32.le_u
     if (result i32)
      i32.const -1
     else
      local.get $7
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      i32.load16_u
     end
     local.tee $3
     i32.const 0
     i32.lt_s
     br_if $while-break|2
     global.get $~lib/@koinos/sdk-as/util/base58/Base58.BASE_MAP
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $2
     i32.store
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     local.get $3
     i32.le_u
     if
      i32.const 1456
      i32.const 2672
      i32.const 118
      i32.const 41
      call $~lib/wasi/index/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.tee $3
     i32.const 255
     i32.eq
     br_if $while-break|2
     i32.const 0
     local.set $2
     local.get $5
     i32.const 2
     i32.sub
     local.set $8
     loop $for-loop|3
      local.get $8
      i32.const -1
      i32.ne
      i32.const 0
      i32.const 1
      local.get $1
      local.get $2
      i32.gt_s
      local.get $3
      select
      select
      if
       local.get $6
       local.get $8
       call $~lib/typedarray/Uint8Array#__get
       i32.const 58
       i32.mul
       local.get $3
       i32.add
       local.tee $4
       i32.const 256
       i32.rem_s
       local.set $3
       local.get $6
       i32.load offset=8
       local.get $8
       i32.le_u
       if
        i32.const 1456
        i32.const 2736
        i32.const 177
        i32.const 45
        call $~lib/wasi/index/abort
        unreachable
       end
       local.get $8
       local.get $6
       i32.load offset=4
       i32.add
       i32.const 0
       i32.const 1
       i32.const 0
       call $~onstore
       local.get $3
       i32.store8
       local.get $4
       i32.const 256
       i32.div_s
       local.set $3
       local.get $8
       i32.const 1
       i32.sub
       local.set $8
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|3
      end
     end
     local.get $3
     if
      i32.const 2800
      i32.const 2848
      i32.const 142
      i32.const 9
      call $~lib/wasi/index/abort
      unreachable
     end
     local.get $2
     local.set $1
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $while-continue|2
    end
   end
  end
  loop $while-continue|4
   local.get $0
   local.get $7
   call $~lib/string/String#charAt
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2352
   i32.store offset=8
   local.get $1
   i32.const 2352
   call $~lib/string/String.__eq
   if
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $while-continue|4
   end
  end
  i32.const 0
  local.set $0
  loop $while-continue|5
   local.get $6
   local.get $0
   call $~lib/typedarray/Uint8Array#__get
   i32.eqz
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|5
   end
  end
  local.get $6
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2147483647
  call $~lib/typedarray/Uint8Array#slice
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:assembly/Staking
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const 212151921
   i32.const 12
   i32.const 17
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const 1778903641
   i32.const 12
   i32.const 3
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const 366707045
   i32.const 18
   i32.const 77
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const -1859499501
   i32.const 18
   i32.const 3
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const -1305275103
   i32.const 29
   i32.const 62
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const 1659644202
   i32.const 35
   i32.const 66
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const 1642175987
   i32.const 29
   i32.const 3
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const -1795131739
   i32.const 56
   i32.const 71
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const 1163732724
   i32.const 64
   i32.const 39
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const 254201683
   i32.const 70
   i32.const 66
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1904
   i32.store
   i32.const 1904
   i32.const -1394263591
   i32.const 56
   i32.const 3
   i32.const 0
   call $~lib/index/__coverDeclare
   call $start:assembly/proto/staking
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2048
   i32.store
   i32.const 2048
   i32.const 1739739481
   i32.const 10
   i32.const 39
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2048
   i32.store
   i32.const 2048
   i32.const -876641535
   i32.const 10
   i32.const 3
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2048
   i32.store
   i32.const 2048
   i32.const -1119002673
   i32.const 16
   i32.const 57
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2048
   i32.store
   i32.const 2048
   i32.const -1298843535
   i32.const 19
   i32.const 18
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2048
   i32.store
   i32.const 2048
   i32.const -220077381
   i32.const 16
   i32.const 3
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2048
   i32.store
   i32.const 2048
   i32.const 274899338
   i32.const 26
   i32.const 73
   i32.const 1
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2048
   i32.store
   i32.const 2048
   i32.const 1024687100
   i32.const 26
   i32.const 3
   i32.const 0
   call $~lib/index/__coverDeclare
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 256
   i32.const 0
   i32.const 13
   i32.const 2384
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   global.set $~lib/@koinos/sdk-as/util/base58/Base58.BASE_MAP
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 2112
   i32.store
   i32.const 2112
   call $~lib/@koinos/sdk-as/util/base58/Base58.decode
   global.set $assembly/Staking/TOKEN_CONTRACT_ID
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/as-proto/Protobuf/WRITER
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $3
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=12
   local.get $2
   i32.load offset=8
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $3
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=12
   local.get $2
   i32.load offset=12
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $2
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/Protobuf/WRITER
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store offset=4
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   local.get $2
   local.get $1
   i32.load
   call_indirect $0 (type $i32_i32_=>_none)
   global.get $~lib/as-proto/Protobuf/WRITER
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store
   local.get $2
   i32.load
   i32.load
   call $~lib/typedarray/Uint8Array#constructor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store offset=8
   local.get $3
   if
    local.get $2
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $2
   i32.load offset=8
   i32.load offset=4
   local.set $3
   local.get $2
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store offset=4
   local.get $2
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=12
   global.get $~lib/as-proto/Protobuf/WRITER
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store offset=4
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   local.get $2
   local.get $1
   i32.load
   call_indirect $0 (type $i32_i32_=>_none)
   global.get $~lib/as-proto/Protobuf/WRITER
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store
   local.get $0
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/sdk-as/systemCalls/System.exit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   call $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments#constructor
   local.tee $2
   i32.store
   local.get $2
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store
   local.get $1
   if
    local.get $0
    if (result i32)
     block $__inlined_func$~lib/@koinos/sdk-as/util/stringBytes/StringBytes.bytesToString (result i32)
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      block $folding-inner0
       global.get $~lib/memory/__stack_pointer
       i32.const 9020
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       i32.const 0
       i32.store
       local.get $1
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 0
        br $__inlined_func$~lib/@koinos/sdk-as/util/stringBytes/StringBytes.bytesToString
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 9020
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       i32.const 0
       i32.store
       local.get $1
       i32.load
       local.set $0
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $0
       i32.store
       local.get $1
       i32.load offset=4
       local.get $1
       i32.load
       i32.sub
       local.tee $3
       local.get $1
       i32.load offset=8
       i32.add
       local.set $1
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 9020
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       i32.const 0
       i32.store
       local.get $0
       i32.const 20
       i32.sub
       i32.load offset=16
       local.set $4
       local.get $3
       i32.const 0
       i32.lt_s
       if (result i32)
        local.get $3
        local.get $4
        i32.add
        local.tee $3
        i32.const 0
        local.get $3
        i32.const 0
        i32.gt_s
        select
       else
        local.get $3
        local.get $4
        local.get $3
        local.get $4
        i32.lt_s
        select
       end
       local.set $3
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $1
       i32.const 0
       i32.lt_s
       if (result i32)
        local.get $1
        local.get $4
        i32.add
        local.tee $1
        i32.const 0
        local.get $1
        i32.const 0
        i32.gt_s
        select
       else
        local.get $1
        local.get $4
        local.get $1
        local.get $4
        i32.lt_s
        select
       end
       local.get $3
       i32.sub
       local.tee $1
       i32.const 0
       local.get $1
       i32.const 0
       i32.gt_s
       select
       local.tee $1
       i32.const 0
       call $~lib/rt/itcms/__new
       local.tee $4
       i32.store
       local.get $4
       local.get $0
       local.get $3
       i32.add
       local.get $1
       call $~lib/memory/memory.copy
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $4
       i32.store
       local.get $4
       local.get $4
       i32.const 20
       i32.sub
       i32.load offset=16
       i32.const 1
       call $~lib/string/String.UTF8.decodeUnsafe
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/@koinos/sdk-as/util/stringBytes/StringBytes.bytesToString
      end
      br $folding-inner1
     end
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data#constructor
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $0
     i32.store offset=4
     i32.const 0
     local.get $0
     call $~lib/@koinos/proto-as/koinos/chain/chain/chain.result#constructor
    else
     local.get $1
     i32.const 0
     call $~lib/@koinos/proto-as/koinos/chain/chain/chain.result#constructor
    end
    local.set $0
    local.get $2
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store offset=4
    local.get $0
    if
     local.get $2
     local.get $0
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 3408
   i32.store offset=8
   local.get $2
   i32.const 3408
   call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
   local.tee $0
   i32.store offset=12
   i32.const 602
   global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
   i32.load offset=4
   global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=8
   global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
   i32.load offset=4
   call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/sdk-as/systemCalls/System.putBytes<~lib/string/String> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 3280
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 3280
  i32.store offset=4
  i32.const 3280
  i32.const 3280
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   call $~lib/@koinos/sdk-as/util/stringBytes/StringBytes.stringToBytes
   local.tee $3
   i32.store offset=8
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 3312
   i32.store offset=4
   i32.const 3312
   call $~lib/@koinos/sdk-as/util/stringBytes/StringBytes.stringToBytes
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=4
   i32.const 1
   local.get $1
   call $~lib/@koinos/sdk-as/systemCalls/System.exit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  local.get $3
  local.get $2
  call $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.put_object_arguments#constructor
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 4
  i32.const 0
  call $~onstore
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 3488
  i32.store offset=4
  local.get $0
  i32.const 3488
  call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
  local.tee $0
  i32.store offset=16
  i32.const 301
  global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
  i32.load offset=4
  global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
  i32.load offset=4
  call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
  local.set $0
  global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store offset=4
  global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $2
  i32.store offset=20
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint32Array#__get
  call $~lib/typedarray/Uint8Array#slice
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store offset=4
  local.get $0
  if
   local.get $0
   local.get $1
   call $~lib/@koinos/sdk-as/systemCalls/System.exit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:assembly/__tests__/staking.spec~anonymous|0~anonymous|0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   i32.const 1919524182
   call $~lib/index/__cover
   i32.const -2011257366
   call $~lib/index/__cover
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=8
   global.get $~lib/@koinos/sdk-as/util/mockVM/MockVM.METADATA_SPACE
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 3248
   i32.store offset=4
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=8
   local.get $0
   i32.const 3248
   local.get $1
   call $~lib/@koinos/sdk-as/systemCalls/System.putBytes<~lib/string/String>
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $assembly/__tests__/staking.spec/TOKEN_CONTRACT_ID
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/@koinos/sdk-as/util/mockVM/MockVM.METADATA_SPACE
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 3520
   i32.store offset=4
   local.get $1
   i32.const 3520
   local.get $0
   call $~lib/@koinos/sdk-as/systemCalls/System.putBytes<~lib/string/String>
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/Protobuf/Protobuf.decode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/as-proto/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $3
  i32.store
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $3
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $4
  i32.store
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  local.set $4
  local.get $3
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $4
  i32.store offset=4
  local.get $3
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.store offset=8
  local.get $0
  if
   local.get $3
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/as-proto/Protobuf/READER
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.store
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  local.get $2
  local.get $1
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/Staking/Staking#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 12
    i32.const 22
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=4
    local.get $0
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=8
    i32.const 1778903641
    call $~lib/index/__cover
    i32.const 212151921
    call $~lib/index/__cover
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=16
    global.get $~lib/rt/tlsf/ROOT
    i32.eqz
    if
     call $~lib/rt/tlsf/initialize
    end
    global.get $~lib/rt/tlsf/ROOT
    i32.const 0
    call $~lib/rt/tlsf/allocateBlock
    i32.const 4
    i32.add
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 3664
    i32.store
    local.get $1
    i32.const 3664
    call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
    local.tee $1
    i32.store offset=4
    i32.const 604
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    i32.load offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
    local.get $1
    i32.load offset=4
    local.get $1
    i32.load offset=8
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    i32.load offset=4
    call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
    local.set $1
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=8
    local.get $2
    i32.const 0
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/typedarray/Uint8Array#slice
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store
    local.get $1
    if
     local.get $1
     local.get $2
     call $~lib/@koinos/sdk-as/systemCalls/System.exit
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 3696
    i32.store
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=8
    local.get $2
    i32.const 3696
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/as-proto/Protobuf/Protobuf.decode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result>
    local.tee $1
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.load
    local.tee $1
    i32.store offset=20
    local.get $1
    i32.eqz
    if
     i32.const 3728
     i32.const 3792
     i32.const 692
     i32.const 12
     call $~lib/wasi/index/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $0
    i32.load
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 8
    i32.const 23
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $2
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $2
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=4
    i32.const -876641535
    call $~lib/index/__cover
    i32.const 1739739481
    call $~lib/index/__cover
    local.get $2
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $1
    if
     local.get $2
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    i32.const 0
    local.get $1
    i32.const 1
    call $~lib/@koinos/proto-as/koinos/chain/chain/chain.object_space#constructor
    local.set $1
    local.get $2
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=4
    local.get $1
    if
     local.get $2
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $assembly/Staking/TOKEN_CONTRACT_ID
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 4
    i32.const 24
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $2
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $2
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.store
    local.get $1
    if
     local.get $2
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.store offset=8
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/proto-as/koinos/chain/value/value.list_type.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $2
  i32.store
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $2
   i32.load offset=12
   local.get $0
   i32.gt_s
   if
    local.get $1
    i32.const 10
    call $~lib/as-proto/Writer/Writer#uint32@virtual
    local.get $1
    call $~lib/as-proto/Writer/Writer#fork@virtual
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $1
    call $~lib/@koinos/proto-as/koinos/chain/value/value.value_type.encode
    local.get $1
    call $~lib/as-proto/Writer/Writer#ldelim@virtual
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@koinos/sdk-as/util/mockVM/MockVM.setCallContractResults (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.const 2
    i32.const 32
    i32.const 3888
    call $~lib/rt/__newArray
    local.tee $1
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4
   i32.const 29
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   local.get $1
   if
    local.get $2
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   loop $for-loop|0
    local.get $0
    i32.load offset=12
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9020
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 92
     i32.const 30
     call $~lib/rt/itcms/__new
     local.tee $5
     i32.store
     local.get $5
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     local.get $5
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=4
     local.get $5
     i32.const 8
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=8
     local.get $5
     i32.const 16
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=16
     local.get $5
     i32.const 24
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=24
     local.get $5
     i32.const 32
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=32
     local.get $5
     i32.const 40
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=40
     local.get $5
     i32.const 48
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=48
     local.get $5
     i32.const 56
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=56
     local.get $5
     i32.const 64
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=64
     local.get $5
     i32.const 72
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=72
     local.get $5
     i32.const 80
     i32.const 1
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store8 offset=80
     local.get $5
     i32.const 84
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=84
     local.get $5
     i32.const 88
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=88
     local.get $5
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     local.get $5
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=4
     local.get $5
     i32.const 8
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=8
     local.get $5
     i32.const 16
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=16
     local.get $5
     i32.const 24
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=24
     local.get $5
     i32.const 32
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=32
     local.get $5
     i32.const 40
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=40
     local.get $5
     i32.const 48
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=48
     local.get $5
     i32.const 56
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=56
     local.get $5
     i32.const 64
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=64
     local.get $5
     i32.const 72
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=72
     local.get $5
     i32.const 80
     i32.const 1
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store8 offset=80
     local.get $5
     i32.const 84
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=84
     local.get $5
     i32.const 88
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store offset=88
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 3408
     i32.store offset=12
     local.get $1
     i32.const 3408
     call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
     local.set $1
     local.get $5
     i32.const 88
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.store offset=88
     local.get $1
     if
      local.get $5
      local.get $1
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $2
     i32.load
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $6
     i32.store offset=8
     local.get $6
     local.get $6
     i32.load offset=12
     local.tee $4
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     call $~lib/array/ensureCapacity
     local.get $6
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $5
     i32.store
     local.get $5
     if
      local.get $6
      local.get $5
      i32.const 1
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $6
     i32.const 12
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.store offset=12
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/@koinos/sdk-as/util/mockVM/MockVM.METADATA_SPACE
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4048
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4112
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.const 4112
   call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
   local.tee $1
   i32.store
   local.get $0
   i32.const 4048
   local.get $1
   call $~lib/@koinos/sdk-as/systemCalls/System.putBytes<~lib/string/String>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/sdk-as/systemCalls/System.call (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 12
   i32.const 38
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $2
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=4
   local.get $2
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store
   local.get $2
   local.set $3
   local.get $0
   if
    local.get $3
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $3
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 670398154
   i32.store offset=4
   local.get $3
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=8
   local.get $1
   if
    local.get $3
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4176
   i32.store offset=4
   local.get $2
   i32.const 4176
   call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
   local.tee $0
   i32.store offset=8
   i32.const 601
   global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
   i32.load offset=4
   global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=8
   global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
   i32.load offset=4
   call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.const 0
   call $~lib/@koinos/proto-as/koinos/chain/chain/chain.result#constructor
   local.tee $2
   i32.store offset=12
   local.get $1
   if
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 4208
    i32.store offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=20
    local.get $0
    i32.const 4208
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/as-proto/Protobuf/Protobuf.decode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result>
    local.set $0
    local.get $2
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store offset=4
   else
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 4240
    i32.store offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=20
    local.get $0
    i32.const 4240
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/as-proto/Protobuf/Protobuf.decode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result>
    i32.load
    local.set $0
    local.get $2
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store
   end
   local.get $0
   if
    local.get $2
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 8
   i32.const 36
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $3
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   i32.const 0
   i32.const 0
   call $~lib/@koinos/proto-as/koinos/chain/chain/chain.result#constructor
   local.set $4
   local.get $3
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $4
   i32.store offset=4
   local.get $4
   if
    local.get $3
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   local.get $3
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store
   local.get $3
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store offset=4
   local.get $2
   if
    local.get $3
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/sdk-as/systemCalls/System.getBytes<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 8
   i32.const 46
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $3
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $3
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store
   local.get $0
   if
    local.get $3
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $3
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=4
   local.get $1
   if
    local.get $3
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4432
   i32.store offset=4
   local.get $3
   i32.const 4432
   call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
   local.tee $0
   i32.store offset=8
   i32.const 303
   global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
   i32.load offset=4
   global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=8
   global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
   i32.load offset=4
   call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
   local.set $0
   global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=4
   global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store offset=12
   local.get $1
   i32.const 0
   local.get $2
   call $~lib/typedarray/Uint32Array#__get
   call $~lib/typedarray/Uint8Array#slice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=4
   local.get $0
   if
    local.get $0
    local.get $1
    call $~lib/@koinos/sdk-as/systemCalls/System.exit
   end
   global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store offset=16
   local.get $0
   call $~lib/typedarray/Uint32Array#__get
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 28
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4464
   i32.store offset=4
   global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store offset=12
   local.get $1
   i32.const 4464
   local.get $2
   call $~lib/typedarray/Uint32Array#__get
   call $~lib/as-proto/Protobuf/Protobuf.decode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result>
   local.tee $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=24
   local.get $0
   i32.eqz
   if
    i32.const 3728
    i32.const 3792
    i32.const 904
    i32.const 13
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $assembly/State/State#GetBalance (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    i32.const -220077381
    call $~lib/index/__cover
    i32.const -1119002673
    call $~lib/index/__cover
    local.get $0
    i32.load offset=4
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 4400
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    local.get $1
    call $~lib/@koinos/sdk-as/systemCalls/System.getBytes<~lib/typedarray/Uint8Array>
    local.tee $0
    i32.store
    block $__inlined_func$~lib/@koinos/sdk-as/systemCalls/System.getObject<~lib/typedarray/Uint8Array,assembly/proto/staking/staking.balance_object>
     local.get $0
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 0
      local.set $0
      br $__inlined_func$~lib/@koinos/sdk-as/systemCalls/System.getObject<~lib/typedarray/Uint8Array,assembly/proto/staking/staking.balance_object>
     end
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     i32.const 4400
     i32.const -1
     call $~lib/as-proto/Protobuf/Protobuf.decode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result>
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    local.get $0
    if
     i32.const -1298843535
     call $~lib/index/__cover
     br $folding-inner1
    end
    call $assembly/proto/staking/staking.balance_object#constructor
    local.set $0
    br $folding-inner1
   end
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@koinos/sdk-as/util/safeMath/SafeMath.add<u64> (param $0 i64) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   block $__inlined_func$~lib/@koinos/sdk-as/util/safeMath/SafeMath.tryAdd<u64> (result i32)
    local.get $0
    local.get $0
    local.get $1
    i64.add
    local.tee $3
    i64.le_u
    if
     local.get $3
     i32.const 0
     call $~lib/@koinos/sdk-as/util/safeMath/SafeMath.SafeInteger<u64>#constructor
     br $__inlined_func$~lib/@koinos/sdk-as/util/safeMath/SafeMath.tryAdd<u64>
    end
    i64.const 0
    i32.const 1
    call $~lib/@koinos/sdk-as/util/safeMath/SafeMath.SafeInteger<u64>#constructor
   end
   local.tee $2
   i32.store
   local.get $2
   i32.load8_u offset=8
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 1872
    i32.store offset=4
    i32.const 1872
    i32.const 1872
    call $~lib/string/String.__eq
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $0
     call $~lib/number/U64#toString
     local.tee $4
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     call $~lib/number/U64#toString
     local.tee $5
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 4576
     i32.store offset=16
     i32.const 1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 4576
     i32.store offset=16
     i32.const 3
     local.get $5
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 4576
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 1872
     i32.store offset=4
     i32.const 4572
     i32.load
     i32.const 2
     i32.shr_u
     call $~lib/util/string/joinStringArray
    else
     i32.const 1872
    end
    local.tee $4
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    call $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments#constructor
    local.tee $5
    i32.store
    local.get $4
    call $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data#constructor
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store offset=4
    i32.const 0
    local.get $4
    call $~lib/@koinos/proto-as/koinos/chain/chain/chain.result#constructor
    local.set $4
    local.get $5
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store offset=4
    local.get $4
    if
     local.get $5
     local.get $4
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $5
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 3408
    i32.store offset=8
    local.get $5
    i32.const 3408
    call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
    local.tee $4
    i32.store offset=12
    i32.const 602
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    i32.load offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
    local.get $4
    i32.load offset=4
    local.get $4
    i32.load offset=8
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    i32.load offset=4
    call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
    drop
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $2
   i64.load
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.event_arguments.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $1
   i32.const 10
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#string@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $2
  if
   local.get $1
   i32.const 18
   call $~lib/as-proto/Writer/Writer#uint32@virtual
   local.get $1
   local.get $2
   call $~lib/as-proto/Writer/Writer#bytes@virtual
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=8
  local.get $2
  i32.load offset=12
  if
   i32.const 0
   local.set $0
   loop $for-loop|0
    local.get $2
    i32.load offset=12
    local.get $0
    i32.gt_s
    if
     local.get $1
     i32.const 26
     call $~lib/as-proto/Writer/Writer#uint32@virtual
     local.get $2
     local.get $0
     call $~lib/array/Array<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $3
     i32.store offset=12
     local.get $1
     local.get $3
     call $~lib/as-proto/Writer/Writer#bytes@virtual
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/Staking/Staking#stake (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner2
   block $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=24
    i32.const 1642175987
    call $~lib/index/__cover
    i32.const -1305275103
    call $~lib/index/__cover
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $1
    i32.load
    local.tee $4
    i32.store
    local.get $4
    i32.eqz
    if
     i32.const 3728
     i32.const 1904
     i32.const 30
     i32.const 21
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $4
    i32.store
    local.get $1
    i64.load offset=8
    local.set $2
    global.get $~lib/rt/tlsf/ROOT
    i32.eqz
    if
     call $~lib/rt/tlsf/initialize
    end
    global.get $~lib/rt/tlsf/ROOT
    i32.const 1
    call $~lib/rt/tlsf/allocateBlock
    i32.const 4
    i32.add
    local.tee $1
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store8
    i32.const 859014857
    call $~lib/index/__cover
    i32.const -661191454
    call $~lib/index/__cover
    local.get $1
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store8
    local.get $0
    i32.load offset=8
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $5
    i32.store offset=4
    local.get $0
    i32.load
    local.set $6
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $6
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 16
    i32.const 35
    call $~lib/rt/itcms/__new
    local.tee $7
    i32.store
    local.get $7
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $7
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=4
    local.get $7
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    local.get $7
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store
    local.get $4
    if
     local.get $7
     local.get $4
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $7
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $6
    i32.store offset=4
    local.get $6
    if
     local.get $7
     local.get $6
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $7
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    local.get $2
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $5
    i32.load
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $5
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 4144
    i32.store offset=12
    local.get $7
    i32.const 4144
    call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
    local.set $6
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $6
    i32.store offset=8
    local.get $5
    local.get $6
    call $~lib/@koinos/sdk-as/systemCalls/System.call
    local.tee $3
    i32.store offset=16
    local.get $3
    i32.load
    i32.eqz
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.eqz
    if
     i32.const 1659644202
     call $~lib/index/__cover
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 4272
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9020
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 8
     i32.const 0
     call $~onstore
     i64.const 0
     i64.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9020
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 4
     i32.const 43
     call $~lib/rt/itcms/__new
     local.tee $3
     i32.store
     local.get $3
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     local.get $3
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 4272
     i32.store
     local.get $3
     i32.const 4272
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.const 4
     i32.const 0
     call $~onstore
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 4368
     i32.store offset=4
     local.get $3
     i32.const 4368
     call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
     local.tee $0
     i32.store offset=8
     i32.const 401
     global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
     i32.load offset=4
     global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
     local.get $0
     i32.load offset=4
     local.get $0
     i32.load offset=8
     global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
     i32.load offset=4
     call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
     local.set $0
     global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $3
     i32.store offset=4
     global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
     local.set $4
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $4
     i32.store offset=12
     local.get $3
     i32.const 0
     local.get $4
     call $~lib/typedarray/Uint32Array#__get
     call $~lib/typedarray/Uint8Array#slice
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $3
     i32.store offset=4
     local.get $0
     if
      local.get $0
      local.get $3
      call $~lib/@koinos/sdk-as/systemCalls/System.exit
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $folding-inner2
    end
    local.get $0
    i32.load offset=4
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $assembly/State/State#GetBalance
    local.tee $3
    i64.load
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 1872
    i32.store offset=8
    local.get $2
    call $~lib/@koinos/sdk-as/util/safeMath/SafeMath.add<u64>
    local.set $8
    local.get $3
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    local.get $8
    i64.store
    local.get $0
    i32.load offset=4
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    i32.const 1024687100
    call $~lib/index/__cover
    i32.const 274899338
    call $~lib/index/__cover
    local.get $0
    i32.load offset=4
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6400
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.const 6400
    call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    local.get $4
    local.get $3
    call $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.put_object_arguments#constructor
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 3488
    i32.store offset=4
    local.get $0
    i32.const 3488
    call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
    local.tee $0
    i32.store offset=8
    i32.const 301
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    i32.load offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load offset=8
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    i32.load offset=4
    call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
    local.set $0
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $5
    i32.store offset=12
    local.get $3
    i32.const 0
    local.get $5
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/typedarray/Uint8Array#slice
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    local.get $0
    if
     local.get $0
     local.get $3
     call $~lib/@koinos/sdk-as/systemCalls/System.exit
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 16
    i32.const 54
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $3
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    i32.const -1559436130
    call $~lib/index/__cover
    i32.const -2028111276
    call $~lib/index/__cover
    local.get $3
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store
    local.get $4
    if
     local.get $3
     local.get $4
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $3
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    local.get $2
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 1
    i32.const 2
    i32.const 55
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $5
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $5
    i32.load offset=4
    i32.store offset=20
    local.get $5
    local.get $4
    call $~lib/array/Array<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>#__uset
    local.get $5
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6432
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 28
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6480
    i32.store offset=28
    local.get $3
    i32.const 6480
    call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 12
    i32.const 57
    call $~lib/rt/itcms/__new
    local.tee $4
    i32.store
    local.get $4
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    local.get $4
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=4
    local.get $4
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store offset=8
    local.get $4
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6432
    i32.store
    local.get $4
    i32.const 6432
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
    local.get $4
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $0
    i32.store offset=4
    local.get $0
    if
     local.get $4
     local.get $0
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $4
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $5
    i32.store offset=8
    local.get $5
    if
     local.get $4
     local.get $5
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 4
    i32.const 0
    call $~onstore
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6512
    i32.store offset=4
    local.get $4
    i32.const 6512
    call $~lib/as-proto/Protobuf/Protobuf.encode<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>
    local.tee $0
    i32.store offset=8
    i32.const 402
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    i32.load offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.MAX_BUFFER_SIZE
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load offset=8
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    i32.load offset=4
    call $~lib/@koinos/sdk-as/env/index/env.invokeSystemCall
    local.set $0
    global.get $~lib/@koinos/sdk-as/systemCalls/System.SYSTEM_CALL_BUFFER
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    global.get $~lib/@koinos/sdk-as/systemCalls/System.RETURN_BYTES
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $4
    i32.store offset=12
    local.get $3
    i32.const 0
    local.get $4
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/typedarray/Uint8Array#slice
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $3
    i32.store offset=4
    local.get $0
    if
     local.get $0
     local.get $3
     call $~lib/@koinos/sdk-as/systemCalls/System.exit
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    i32.const 0
    i32.const 1
    i32.const 0
    call $~onstore
    i32.const 1
    i32.store8
    br $folding-inner2
   end
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/comparison/toIncludeComparison
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const 2134949649
    i32.const 10
    i32.const 9
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const -1624812913
    i32.const 20
    i32.const 24
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const 766161451
    i32.const 30
    i32.const 30
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const 1942657707
    i32.const 32
    i32.const 10
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const -168353486
    i32.const 33
    i32.const 29
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const -872162870
    i32.const 35
    i32.const 12
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const 237504144
    i32.const 40
    i32.const 28
    i32.const 2
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const -186442055
    i32.const 40
    i32.const 41
    i32.const 2
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const 2121113584
    i32.const 5
    i32.const 1
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const 645965701
    i32.const 44
    i32.const 60
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const 1624988645
    i32.const 57
    i32.const 40
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const -189732158
    i32.const 59
    i32.const 50
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const -475758798
    i32.const 61
    i32.const 46
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6704
    i32.store
    i32.const 6704
    i32.const -987415013
    i32.const 44
    i32.const 1
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6896
    i32.store
    i32.const 6896
    i32.const -1702914511
    i32.const 11
    i32.const 37
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6896
    i32.store
    i32.const 6896
    i32.const 463713627
    i32.const 11
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6896
    i32.store
    i32.const 6896
    i32.const 1371217993
    i32.const 17
    i32.const 24
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 6896
    i32.store
    i32.const 6896
    i32.const 1120277781
    i32.const 17
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const -1069480640
    i32.const 27
    i32.const 57
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 125956076
    i32.const 27
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 1774239526
    i32.const 33
    i32.const 47
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 933011121
    i32.const 33
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const -1214367071
    i32.const 37
    i32.const 46
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 1370720557
    i32.const 37
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const -1491728407
    i32.const 41
    i32.const 47
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 1958920884
    i32.const 41
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 1353420734
    i32.const 45
    i32.const 73
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const -1898336976
    i32.const 45
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 539981192
    i32.const 52
    i32.const 24
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7040
    i32.store
    i32.const 7040
    i32.const 1165629076
    i32.const 52
    i32.const 3
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7184
    i32.store
    i32.const 7184
    i32.const -1627255337
    i32.const 1
    i32.const 63
    i32.const 1
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7184
    i32.store
    i32.const 7184
    i32.const -1774701052
    i32.const 2
    i32.const 19
    i32.const 2
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    i32.const 7184
    i32.store
    i32.const 7184
    i32.const -1176030550
    i32.const 1
    i32.const 1
    i32.const 0
    call $~lib/index/__coverDeclare
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/comparison/toIncludeEqualComparison
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 330198384
  i32.const 11
  i32.const 9
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 1466469667
  i32.const 29
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const -1879386290
  i32.const 30
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 650419663
  i32.const 32
  i32.const 12
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 1498396677
  i32.const 37
  i32.const 40
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 1749460259
  i32.const 39
  i32.const 73
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 1223645803
  i32.const 45
  i32.const 10
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 2011969078
  i32.const 50
  i32.const 26
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const -382334549
  i32.const 53
  i32.const 51
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 2042297642
  i32.const 57
  i32.const 54
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const -1657185197
  i32.const 62
  i32.const 13
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const -1168472948
  i32.const 68
  i32.const 12
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 2028874100
  i32.const 70
  i32.const 44
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 594732595
  i32.const 89
  i32.const 28
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 170786396
  i32.const 89
  i32.const 41
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7328
  i32.store
  i32.const 7328
  i32.const 672528301
  i32.const 6
  i32.const 1
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/Expectation
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -899951797
  i32.const 22
  i32.const 26
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 2058439701
  i32.const 22
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 762646246
  i32.const 26
  i32.const 36
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1798818159
  i32.const 26
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1023973578
  i32.const 31
  i32.const 56
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1646339452
  i32.const 38
  i32.const 32
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1602757792
  i32.const 38
  i32.const 53
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1607055986
  i32.const 41
  i32.const 9
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1540049233
  i32.const 42
  i32.const 9
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1473042480
  i32.const 43
  i32.const 9
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -428752458
  i32.const 44
  i32.const 9
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 472873384
  i32.const 46
  i32.const 14
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 834748611
  i32.const 49
  i32.const 12
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1046293175
  i32.const 31
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 120666850
  i32.const 59
  i32.const 65
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 116273713
  i32.const 59
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1452205005
  i32.const 81
  i32.const 49
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 2092003909
  i32.const 87
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1728554325
  i32.const 88
  i32.const 37
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -37275052
  i32.const 91
  i32.const 13
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1947690897
  i32.const 94
  i32.const 14
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1994639895
  i32.const 98
  i32.const 12
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 464104668
  i32.const 102
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 424354413
  i32.const 99
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -237117795
  i32.const 100
  i32.const 44
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1508683274
  i32.const 102
  i32.const 37
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1319819012
  i32.const 81
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 2076271531
  i32.const 112
  i32.const 48
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1616144450
  i32.const 118
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1545933746
  i32.const 120
  i32.const 37
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 486991228
  i32.const 123
  i32.const 13
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1769696185
  i32.const 126
  i32.const 14
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1812019316
  i32.const 130
  i32.const 12
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1379496644
  i32.const 135
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 606974992
  i32.const 131
  i32.const 28
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1995393471
  i32.const 133
  i32.const 42
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 916263338
  i32.const 135
  i32.const 37
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -27536331
  i32.const 112
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1222767799
  i32.const 145
  i32.const 46
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1962269869
  i32.const 162
  i32.const 28
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1539405619
  i32.const 162
  i32.const 39
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1887555541
  i32.const 145
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1218769414
  i32.const 169
  i32.const 67
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1569885780
  i32.const 181
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -2058011599
  i32.const 194
  i32.const 26
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 519826643
  i32.const 169
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 632518212
  i32.const 211
  i32.const 74
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 2078590145
  i32.const 225
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1999288551
  i32.const 237
  i32.const 26
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1943513205
  i32.const 211
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1248521542
  i32.const 254
  i32.const 64
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1705099836
  i32.const 276
  i32.const 12
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 2106345347
  i32.const 267
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1803485016
  i32.const 276
  i32.const 33
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 808402262
  i32.const 254
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1740715271
  i32.const 293
  i32.const 71
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -790992195
  i32.const 306
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -461469564
  i32.const 317
  i32.const 26
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -764418117
  i32.const 293
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 546869928
  i32.const 334
  i32.const 47
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 355896479
  i32.const 345
  i32.const 12
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 143683586
  i32.const 338
  i32.const 34
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1346468969
  i32.const 345
  i32.const 37
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1748133453
  i32.const 334
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 347248840
  i32.const 364
  i32.const 11
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1548450554
  i32.const 360
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 870489934
  i32.const 393
  i32.const 46
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -831424870
  i32.const 393
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1610379657
  i32.const 412
  i32.const 49
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -228556590
  i32.const 412
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1495821790
  i32.const 429
  i32.const 66
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1965595423
  i32.const 433
  i32.const 40
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1380374716
  i32.const 435
  i32.const 12
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -365284244
  i32.const 429
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 1058552035
  i32.const 455
  i32.const 64
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1363667533
  i32.const 455
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1371131609
  i32.const 467
  i32.const 69
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const 99951666
  i32.const 467
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -863490306
  i32.const 478
  i32.const 60
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -693340142
  i32.const 478
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -2014114394
  i32.const 486
  i32.const 54
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 6544
  i32.store
  i32.const 6544
  i32.const -1106692936
  i32.const 485
  i32.const 1
  i32.const 0
  call $~lib/index/__coverDeclare
  call $start:node_modules/@as-pect/assembly/assembly/internal/comparison/toIncludeComparison
  call $start:node_modules/@as-pect/assembly/assembly/internal/comparison/toIncludeEqualComparison
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/Reflect
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 4694374
  i32.const 7
  i32.const 69
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 236442611
  i32.const 7
  i32.const 1
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 773040041
  i32.const 72
  i32.const 42
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1743236731
  i32.const 72
  i32.const 1
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1268988619
  i32.const 82
  i32.const 10
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -947235266
  i32.const 367
  i32.const 12
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 337501103
  i32.const 84
  i32.const 27
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -650905946
  i32.const 86
  i32.const 42
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -693272744
  i32.const 96
  i32.const 15
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1524485209
  i32.const 97
  i32.const 15
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1127161224
  i32.const 98
  i32.const 28
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 486948866
  i32.const 98
  i32.const 40
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -947459560
  i32.const 99
  i32.const 29
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1371405759
  i32.const 99
  i32.const 42
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1502572791
  i32.const 107
  i32.const 29
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 389425574
  i32.const 108
  i32.const 49
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -2058893909
  i32.const 114
  i32.const 49
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 2006673065
  i32.const 117
  i32.const 39
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1597848840
  i32.const 118
  i32.const 39
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -464870436
  i32.const 158
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 2057529129
  i32.const 130
  i32.const 41
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 351595939
  i32.const 148
  i32.const 42
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -402830822
  i32.const 178
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1324981000
  i32.const 158
  i32.const 35
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1876113407
  i32.const 207
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1720970716
  i32.const 178
  i32.const 40
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -78918652
  i32.const 202
  i32.const 42
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 44077944
  i32.const 242
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -534691875
  i32.const 207
  i32.const 40
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 963958312
  i32.const 231
  i32.const 42
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -2049600781
  i32.const 281
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -230587353
  i32.const 242
  i32.const 52
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -854934299
  i32.const 267
  i32.const 42
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1456386534
  i32.const 299
  i32.const 14
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -920944722
  i32.const 281
  i32.const 43
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1076813835
  i32.const 299
  i32.const 36
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 517897114
  i32.const 313
  i32.const 28
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 2132007204
  i32.const 313
  i32.const 40
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1783045731
  i32.const 324
  i32.const 42
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -2124174170
  i32.const 337
  i32.const 14
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1185155588
  i32.const 348
  i32.const 28
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 428954502
  i32.const 348
  i32.const 40
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -777646743
  i32.const 367
  i32.const 36
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1163911082
  i32.const 368
  i32.const 27
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1927391186
  i32.const 393
  i32.const 12
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1663525086
  i32.const 401
  i32.const 13
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -413684257
  i32.const 402
  i32.const 13
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1543283772
  i32.const 399
  i32.const 13
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -455903854
  i32.const 79
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1408236481
  i32.const 417
  i32.const 10
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -384875001
  i32.const 422
  i32.const 23
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1962003611
  i32.const 423
  i32.const 49
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -901900409
  i32.const 426
  i32.const 27
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1288782772
  i32.const 430
  i32.const 9
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -690549496
  i32.const 436
  i32.const 27
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1607245673
  i32.const 437
  i32.const 29
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 906463710
  i32.const 438
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1617509423
  i32.const 440
  i32.const 16
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -652178477
  i32.const 412
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -993196570
  i32.const 449
  i32.const 49
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1700622831
  i32.const 449
  i32.const 3
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 107512378
  i32.const 459
  i32.const 8
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1401141150
  i32.const 468
  i32.const 31
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -377779670
  i32.const 473
  i32.const 44
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -752616206
  i32.const 475
  i32.const 7
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 233730164
  i32.const 480
  i32.const 39
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1666162006
  i32.const 482
  i32.const 7
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1901966090
  i32.const 487
  i32.const 36
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 94002558
  i32.const 489
  i32.const 46
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -33110438
  i32.const 495
  i32.const 12
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 150095918
  i32.const 491
  i32.const 22
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -648916693
  i32.const 499
  i32.const 27
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 687300032
  i32.const 502
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1358805761
  i32.const 504
  i32.const 36
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -507245633
  i32.const 513
  i32.const 40
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1564176635
  i32.const 516
  i32.const 50
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1017034712
  i32.const 521
  i32.const 13
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 676032832
  i32.const 528
  i32.const 28
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1123879459
  i32.const 543
  i32.const 30
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -594324354
  i32.const 545
  i32.const 36
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 723294952
  i32.const 562
  i32.const 43
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1568244545
  i32.const 568
  i32.const 53
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1595577047
  i32.const 575
  i32.const 13
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1322393260
  i32.const 585
  i32.const 15
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -581599672
  i32.const 595
  i32.const 21
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1464595323
  i32.const 602
  i32.const 47
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 2102875297
  i32.const 614
  i32.const 33
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1624499682
  i32.const 621
  i32.const 31
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1389465537
  i32.const 624
  i32.const 41
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -816425280
  i32.const 633
  i32.const 45
  i32.const 2
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -711491221
  i32.const 651
  i32.const 25
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const -1161626561
  i32.const 659
  i32.const 10
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1521305541
  i32.const 669
  i32.const 15
  i32.const 1
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7536
  i32.store
  i32.const 7536
  i32.const 1068415319
  i32.const 454
  i32.const 1
  i32.const 0
  call $~lib/index/__coverDeclare
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:assembly/__tests__/staking.spec~anonymous|0~anonymous|1
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=24
   i32.const -80492826
   call $~lib/index/__cover
   i32.const 1489987162
   call $~lib/index/__cover
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   call $assembly/Staking/Staking#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1
   i32.const 2
   i32.const 28
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.load offset=4
   i32.store offset=12
   local.get $2
   i32.const 1
   call $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments#constructor
   call $~lib/array/Array<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/@koinos/sdk-as/util/mockVM/MockVM.setCallContractResults
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $assembly/__tests__/staking.spec/MOCK_ACCT1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 16
   i32.const 34
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   local.get $4
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $4
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   i32.const -1644277342
   call $~lib/index/__cover
   i32.const -1429317544
   call $~lib/index/__cover
   local.get $4
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store
   local.get $3
   if
    local.get $4
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $4
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 10
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=12
   local.get $0
   local.get $4
   call $assembly/Staking/Staking#stake
   i32.load8_u
   local.set $2
   i32.const -1106692936
   call $~lib/index/__cover
   i32.const -2014114394
   call $~lib/index/__cover
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 5
   i32.const 59
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $3
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $3
   i32.const 4
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8 offset=4
   i32.const 2058439701
   call $~lib/index/__cover
   i32.const -899951797
   call $~lib/index/__cover
   local.get $3
   i32.const 4
   i32.const 1
   i32.const 0
   call $~onstore
   local.get $2
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1872
   i32.store offset=20
   i32.const 1046293175
   call $~lib/index/__cover
   i32.const 1023973578
   call $~lib/index/__cover
   local.get $3
   i32.load8_u offset=4
   local.set $2
   local.get $3
   i32.load
   local.set $3
   i32.const 463713627
   call $~lib/index/__cover
   i32.const -1702914511
   call $~lib/index/__cover
   i32.const 1
   global.set $~argumentsLength
   local.get $2
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool>@varargs
   local.set $4
   i32.const 1700622831
   call $~lib/index/__cover
   i32.const -993196570
   call $~lib/index/__cover
   local.get $4
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue
   local.get $4
   call $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue
   i32.const 834748611
   call $~lib/index/__cover
   i32.const 125956076
   call $~lib/index/__cover
   i32.const -1069480640
   call $~lib/index/__cover
   i32.const 1
   global.set $~argumentsLength
   i32.const 1
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool>@varargs
   local.set $4
   i32.const 1700622831
   call $~lib/index/__cover
   i32.const -993196570
   call $~lib/index/__cover
   local.get $4
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue
   local.get $4
   local.get $3
   call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue
   local.get $2
   i32.const 0
   i32.ne
   local.get $3
   i32.xor
   call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
   i32.const 1120277781
   call $~lib/index/__cover
   i32.const 1371217993
   call $~lib/index/__cover
   call $node_modules/@as-pect/assembly/assembly/internal/Actual/clearActual
   i32.const 1165629076
   call $~lib/index/__cover
   i32.const 539981192
   call $~lib/index/__cover
   call $node_modules/@as-pect/assembly/assembly/internal/Expected/clearExpected
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $assembly/__tests__/staking.spec/MOCK_ACCT1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4
   i32.const 61
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   local.get $4
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   i32.const -535587
   call $~lib/index/__cover
   i32.const 1335629614
   call $~lib/index/__cover
   local.get $4
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $3
   i32.store
   local.get $3
   if
    local.get $4
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   i32.const -1859499501
   call $~lib/index/__cover
   i32.const 366707045
   call $~lib/index/__cover
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $4
   i32.load
   local.tee $3
   i32.store
   local.get $3
   i32.eqz
   if
    i32.const 3728
    i32.const 1904
    i32.const 19
    i32.const 21
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $3
   i32.store
   local.get $0
   i32.load offset=4
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $3
   call $assembly/State/State#GetBalance
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.tee $2
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   i32.const 245845605
   call $~lib/index/__cover
   i32.const -1426150023
   call $~lib/index/__cover
   local.get $2
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store
   i64.load
   local.set $1
   local.get $2
   i32.const 0
   i32.const 8
   i32.const 0
   call $~onstore
   local.get $1
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i64.load
   local.set $1
   i32.const -1106692936
   call $~lib/index/__cover
   i32.const -2014114394
   call $~lib/index/__cover
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 16
   i32.const 62
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   local.get $0
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   i64.const 0
   i64.store offset=8
   i32.const 2058439701
   call $~lib/index/__cover
   i32.const -899951797
   call $~lib/index/__cover
   local.get $0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~onstore
   local.get $1
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 1872
   i32.store offset=20
   i32.const 1046293175
   call $~lib/index/__cover
   i32.const 1023973578
   call $~lib/index/__cover
   local.get $0
   i64.load offset=8
   local.set $1
   local.get $0
   i32.load
   local.set $0
   i32.const 463713627
   call $~lib/index/__cover
   i32.const -1702914511
   call $~lib/index/__cover
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<u64>@varargs
   local.set $2
   i32.const 1700622831
   call $~lib/index/__cover
   i32.const -993196570
   call $~lib/index/__cover
   local.get $2
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue
   local.get $2
   call $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue
   i32.const 834748611
   call $~lib/index/__cover
   i32.const 125956076
   call $~lib/index/__cover
   i32.const -1069480640
   call $~lib/index/__cover
   i32.const 1
   global.set $~argumentsLength
   i64.const 10
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<u64>@varargs
   local.set $2
   i32.const 1700622831
   call $~lib/index/__cover
   i32.const -993196570
   call $~lib/index/__cover
   local.get $2
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue
   local.get $2
   local.get $0
   call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue
   local.get $1
   i64.const 10
   i64.eq
   local.get $0
   i32.xor
   call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
   i32.const 1120277781
   call $~lib/index/__cover
   i32.const 1371217993
   call $~lib/index/__cover
   call $node_modules/@as-pect/assembly/assembly/internal/Actual/clearActual
   i32.const 1165629076
   call $~lib/index/__cover
   i32.const 539981192
   call $~lib/index/__cover
   call $node_modules/@as-pect/assembly/assembly/internal/Expected/clearExpected
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $start:assembly/__tests__/staking.spec~anonymous|0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  i32.const 2112583289
  call $~lib/index/__cover
  i32.const -719199854
  call $~lib/index/__cover
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 3568
  i32.store
  i32.const 3568
  call $node_modules/@as-pect/assembly/assembly/internal/Test/beforeEach
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 3600
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 7744
  i32.store offset=4
  i32.const 3600
  i32.const 7744
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/internal/FixedReader/FixedReader#skipType (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 9020
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 8
    i32.const 0
    call $~onstore
    i64.const 0
    i64.store
    block $break|0
     block $case5|0
      block $case4|0
       block $case3|0
        block $case2|0
         block $case1|0
          block $case0|0
           local.get $1
           br_table $case0|0 $case1|0 $case2|0 $case3|0 $case5|0 $case4|0 $case5|0
          end
          local.get $0
          i32.const 0
          call $~lib/as-proto/internal/FixedReader/FixedReader#skip
          br $break|0
         end
         local.get $0
         i32.const 8
         call $~lib/as-proto/internal/FixedReader/FixedReader#skip
         br $break|0
        end
        local.get $0
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
        call $~lib/as-proto/internal/FixedReader/FixedReader#skip
        br $break|0
       end
       loop $while-continue|1
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
        i32.const 7
        i32.and
        local.tee $1
        i32.const 4
        i32.ne
        if
         local.get $0
         local.get $1
         call $~lib/as-proto/internal/FixedReader/FixedReader#skipType
         br $while-continue|1
        end
       end
       br $break|0
      end
      local.get $0
      i32.const 4
      call $~lib/as-proto/internal/FixedReader/FixedReader#skip
      br $break|0
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 8464
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9020
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     block $__inlined_func$~lib/util/number/itoa32
      local.get $1
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 4816
       local.set $1
       br $__inlined_func$~lib/util/number/itoa32
      end
      i32.const 0
      local.get $1
      i32.sub
      local.get $1
      local.get $1
      i32.const 31
      i32.shr_u
      local.tee $0
      select
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $2
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $2
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $2
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $2
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $2
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $2
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $2
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $2
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      local.get $0
      i32.add
      local.tee $3
      i32.const 1
      i32.shl
      i32.const 1
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store
      local.get $1
      local.get $2
      local.get $3
      call $~lib/util/number/utoa32_dec_lut
      local.get $0
      if
       local.get $1
       i32.const 0
       i32.const 2
       i32.const 0
       call $~onstore
       i32.const 45
       i32.store16
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 4
     i32.const 0
     call $~onstore
     local.get $1
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9020
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 4
     i32.const 0
     call $~onstore
     i32.const 0
     i32.store
     block $__inlined_func$~lib/string/String#concat
      i32.const 8460
      i32.load
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      local.tee $2
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      local.tee $3
      i32.add
      local.tee $0
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1872
       local.set $0
       br $__inlined_func$~lib/string/String#concat
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $0
      i32.const 1
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store
      local.get $0
      i32.const 8464
      local.get $2
      call $~lib/memory/memory.copy
      local.get $0
      local.get $2
      i32.add
      local.get $1
      local.get $3
      call $~lib/memory/memory.copy
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $0
     i32.const 8368
     i32.const 131
     i32.const 9
     call $~lib/wasi/index/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/Writer/Writer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $5
  local.get $3
  if
   local.get $5
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
  end
  local.get $5
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.const 0
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $5
  i32.store
  local.get $5
  if
   local.get $2
   local.get $5
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $2
  i32.const 4
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $5
  i32.store offset=4
  local.get $2
  i32.const 8
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $1
  i32.store offset=8
  local.get $2
  i32.const 12
  i32.const 4
  i32.const 1
  call $~onstore
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 12
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=8
  i32.const 1073741820
  local.get $2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   i32.const 1760
   i32.const 1808
   i32.const 19
   i32.const 57
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $2
  i32.store
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $2
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 12
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@koinos/proto-as/koinos/chain/chain/chain.object_space#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 12
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store8
  local.get $3
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 0
  call $~onstore
  local.get $0
  i32.store8
  local.get $3
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store offset=4
  local.get $1
  if
   local.get $3
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $3
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String#charAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $1
  i32.le_u
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1872
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 2
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 0
  i32.const 2
  i32.const 0
  call $~onstore
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  i32.load16_u
  i32.store16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.store
  local.get $3
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@koinos/sdk-as/util/base58/Base58.decode (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  call $~lib/@koinos/sdk-as/util/base58/Base58.decodeUnsafe
  local.tee $0
  i32.store
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2944
  i32.const 2848
  i32.const 92
  i32.const 5
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/sdk-as/util/stringBytes/StringBytes.stringToBytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $0
   i32.const 1
   call $~lib/string/String.UTF8.byteLength
   i32.const 1
   i32.sub
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $1
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   i32.const 2
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   local.get $0
   i32.const 0
   call $~lib/string/String.UTF8.byteLength
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $3
   call $~lib/string/String.UTF8.encodeUnsafe
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 8
  i32.const 15
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $1
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@koinos/proto-as/koinos/chain/chain/chain.result#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 8
  i32.const 16
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $2
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.store
  local.get $0
  if
   local.get $2
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $2
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store offset=4
  local.get $1
  if
   local.get $2
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 4
  i32.const 17
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.store
  local.get $0
  if
   local.get $1
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  local.get $0
  local.get $1
  i32.add
  local.tee $5
  i32.gt_u
  if
   i32.const 0
   i32.const 1216
   i32.const 769
   i32.const 7
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $5
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $6
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $5
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $7
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $6
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       i32.const 0
       i32.const 2
       i32.const 0
       call $~onstore
       local.get $7
       local.get $6
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
      else
       local.get $0
       local.get $5
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $4
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $6
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $4
        local.get $6
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $7
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $4
       else
        local.get $0
        local.get $5
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $6
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $7
        i32.const 12
        i32.shl
        i32.or
        local.get $4
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $4
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $4
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        i32.const 0
        i32.const 2
        i32.const 0
        call $~onstore
        local.get $4
        i32.store16
       else
        local.get $1
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        local.get $4
        i32.const 65536
        i32.sub
        local.tee $4
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $4
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $6
      i32.eqz
      local.get $2
      i32.and
      br_if $while-break|0
      local.get $1
      i32.const 0
      i32.const 2
      i32.const 0
      call $~onstore
      local.get $6
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $3
  local.get $1
  local.get $3
  i32.sub
  call $~lib/rt/itcms/__renew
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.put_object_arguments#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 12
  i32.const 19
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $3
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.store
  local.get $0
  if
   local.get $3
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $3
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store offset=4
  local.get $1
  if
   local.get $3
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $3
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $2
  i32.store offset=8
  local.get $2
  if
   local.get $3
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_contract_id_result.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $0
    i32.load offset=4
   else
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4
   i32.const 26
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   loop $while-continue|0
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     block $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 9
      i32.eq
      if
       local.get $0
       call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
       local.set $3
       br $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      end
      unreachable
     end
     local.get $3
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      block $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 9
       i32.eq
       if
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#bytes
        local.set $3
        br $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual
       end
       unreachable
      end
      local.get $1
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store
      local.get $3
      if
       local.get $1
       local.get $3
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/Reader/Reader#skipType@virtual
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.exit_arguments>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1456
   i32.const 3440
   i32.const 114
   i32.const 42
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 3920
   i32.const 3440
   i32.const 118
   i32.const 40
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $0
    i32.load offset=4
   else
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   call $~lib/@koinos/proto-as/koinos/chain/chain/chain.error_data#constructor
   local.tee $1
   i32.store
   loop $while-continue|0
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     block $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 9
      i32.eq
      if
       local.get $0
       call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
       local.set $3
       br $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      end
      unreachable
     end
     local.get $3
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      block $__inlined_func$~lib/as-proto/Reader/Reader#string@virtual
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 9
       i32.eq
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 9020
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 4
        i32.const 0
        call $~onstore
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#bytes
        local.tee $3
        i32.store
        local.get $3
        i32.load offset=4
        local.get $3
        i32.load offset=8
        i32.const 0
        call $~lib/string/String.UTF8.decodeUnsafe
        local.set $3
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        br $__inlined_func$~lib/as-proto/Reader/Reader#string@virtual
       end
       unreachable
      end
      local.get $1
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store
      local.get $3
      if
       local.get $1
       local.get $3
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/Reader/Reader#skipType@virtual
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.call_result.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $0
    i32.load offset=4
   else
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4
   i32.const 41
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   loop $while-continue|0
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     block $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 9
      i32.eq
      if
       local.get $0
       call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
       local.set $3
       br $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      end
      unreachable
     end
     local.get $3
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      block $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 9
       i32.eq
       if
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#bytes
        local.set $3
        br $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual
       end
       unreachable
      end
      local.get $1
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store
      local.get $3
      if
       local.get $1
       local.get $3
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/Reader/Reader#skipType@virtual
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.database_object.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $0
    i32.load offset=4
   else
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 12
   i32.const 49
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8
   local.get $1
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store8
   local.get $1
   i32.const 4
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 8
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   loop $while-continue|0
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     block $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 9
      i32.eq
      if
       local.get $0
       call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
       local.set $3
       br $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      end
      unreachable
     end
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $3
         i32.const 3
         i32.shr_u
         i32.const 1
         i32.sub
         br_table $case0|1 $case1|1 $case2|1 $case3|1
        end
        block $__inlined_func$~lib/as-proto/Reader/Reader#bool@virtual
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         i32.const 9
         i32.eq
         if
          local.get $0
          call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
          i32.const 0
          i32.ne
          local.set $3
          br $__inlined_func$~lib/as-proto/Reader/Reader#bool@virtual
         end
         unreachable
        end
        local.get $1
        i32.const 0
        i32.const 1
        i32.const 0
        call $~onstore
        local.get $3
        i32.store8
        br $while-continue|0
       end
       block $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 9
        i32.eq
        if
         local.get $0
         call $~lib/as-proto/internal/FixedReader/FixedReader#bytes
         local.set $3
         br $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual
        end
        unreachable
       end
       local.get $1
       i32.const 4
       i32.const 4
       i32.const 0
       call $~onstore
       local.get $3
       i32.store offset=4
       local.get $3
       if
        local.get $1
        local.get $3
        i32.const 0
        call $byn-split-outlined-A$~lib/rt/itcms/__link
       end
       br $while-continue|0
      end
      block $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual0
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 9
       i32.eq
       if
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#bytes
        local.set $3
        br $__inlined_func$~lib/as-proto/Reader/Reader#bytes@virtual0
       end
       unreachable
      end
      local.get $1
      i32.const 8
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store offset=8
      local.get $3
      if
       local.get $1
       local.get $3
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/Reader/Reader#skipType@virtual
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.get_object_result.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $0
    i32.load offset=4
   else
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4
   i32.const 48
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   loop $while-continue|0
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     block $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 9
      i32.eq
      if
       local.get $0
       call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
       local.set $3
       br $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual
      end
      unreachable
     end
     local.get $3
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      block $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual0
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 9
       i32.eq
       if
        local.get $0
        call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
        local.set $3
        br $__inlined_func$~lib/as-proto/Reader/Reader#uint32@virtual0
       end
       unreachable
      end
      local.get $0
      local.get $3
      call $~lib/@koinos/proto-as/koinos/chain/system_calls/system_calls.database_object.decode
      local.set $3
      local.get $1
      i32.const 0
      i32.const 4
      i32.const 0
      call $~onstore
      local.get $3
      i32.store
      local.get $3
      if
       local.get $1
       local.get $3
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/Reader/Reader#skipType@virtual
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/@koinos/sdk-as/util/safeMath/SafeMath.SafeInteger<u64>#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 9
  i32.const 51
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  local.get $2
  i32.const 8
  i32.const 1
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store8 offset=8
  local.get $2
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  local.get $0
  i64.store
  local.get $2
  i32.const 8
  i32.const 1
  i32.const 0
  call $~onstore
  local.get $1
  i32.store8 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 0
  call $~onstore
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1872
   return
  end
  local.get $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 4576
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1872
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.const 2
    i32.shl
    i32.const 4576
    i32.add
    i32.load
    local.tee $4
    i32.store offset=4
    local.get $4
    if
     local.get $4
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.get $1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $0
  i32.const 1868
  i32.load
  i32.const 1
  i32.shr_u
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $3
  local.get $4
  i32.mul
  local.get $1
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=8
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.const 4
    i32.const 0
    call $~onstore
    local.get $2
    i32.const 2
    i32.shl
    i32.const 4576
    i32.add
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $5
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $5
     local.get $5
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     local.get $5
     i32.add
     local.set $0
    end
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 1872
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     local.get $4
     i32.add
     local.set $0
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $3
  i32.const 2
  i32.shl
  i32.const 4576
  i32.add
  i32.load
  local.tee $2
  i32.store offset=4
  local.get $2
  if
   local.get $0
   i32.const 1
   i32.shl
   local.get $1
   i32.add
   local.get $2
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1760
   i32.const 1808
   i32.const 52
   i32.const 43
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<usize,i32>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 24
  i32.const 60
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  i32.const 4
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 3
  i32.store offset=4
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.const 8
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  i32.store offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  i32.const 12
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 16
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 20
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool>@varargs (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    call $~lib/map/Map<usize,i32>#constructor
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   i32.const -455903854
   call $~lib/index/__cover
   i32.const 1268988619
   call $~lib/index/__cover
   i32.const -947235266
   call $~lib/index/__cover
   i32.const -1927391186
   call $~lib/index/__cover
   i32.const 1543283772
   call $~lib/index/__cover
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7680
   i32.store
   i32.const 0
   i32.const 1
   i32.const 9
   i32.const 7680
   local.get $0
   f64.convert_i32_u
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedNumber
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<u64>@varargs (param $0 i64) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    i32.const 0
    call $~onstore
    call $~lib/map/Map<usize,i32>#constructor
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9020
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 0
   i32.store
   i32.const -455903854
   call $~lib/index/__cover
   i32.const 1268988619
   call $~lib/index/__cover
   i32.const -947235266
   call $~lib/index/__cover
   i32.const -777646743
   call $~lib/index/__cover
   i32.const 1163911082
   call $~lib/index/__cover
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 0
   call $~onstore
   i32.const 7712
   i32.store
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 7712
   local.get $0
   i64.const 4294967295
   i64.and
   i32.wrap_i64
   local.get $0
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedLong
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 25424
  i32.const 25472
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/as-proto/internal/FixedReader/FixedReader#bytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  i32.const 0
  i32.store
  local.get $0
  call $~lib/as-proto/internal/FixedReader/FixedReader#varint32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.store
  local.get $2
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  local.tee $4
  i32.add
  local.set $5
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $5
  i32.store
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.gt_u
  if
   i32.const 1456
   i32.const 8368
   i32.const 210
   i32.const 5
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $4
  local.get $1
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:node_modules/@as-pect/assembly/assembly/internal/call/__call (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9020
  i32.lt_s
  if
   i32.const 25424
   i32.const 25472
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 0
  call $~onstore
  local.get $0
  i32.store
  i32.const 63810754
  call $~lib/index/__cover
  i32.const 1981661110
  call $~lib/index/__cover
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect $0 (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/rtrace/onvisit
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 294
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link_0 (param $0 i32) (param $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 294
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $0
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $1
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $0
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
