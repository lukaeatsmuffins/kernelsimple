
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	f6813103          	ld	sp,-152(sp) # 80005f68 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	13d020ef          	jal	ra,80002958 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	0b9000ef          	jal	ra,8000193c <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
    80001130:	00100793          	li	a5,1
    80001134:	00f50863          	beq	a0,a5,80001144 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001138:	00813403          	ld	s0,8(sp)
    8000113c:	01010113          	addi	sp,sp,16
    80001140:	00008067          	ret
    80001144:	000107b7          	lui	a5,0x10
    80001148:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000114c:	fef596e3          	bne	a1,a5,80001138 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001150:	00005797          	auipc	a5,0x5
    80001154:	eb078793          	addi	a5,a5,-336 # 80006000 <_ZN9Scheduler16readyThreadQueueE>
    80001158:	0007b023          	sd	zero,0(a5)
    8000115c:	0007b423          	sd	zero,8(a5)
    80001160:	fd9ff06f          	j	80001138 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001164 <_ZN9Scheduler3getEv>:
{
    80001164:	fe010113          	addi	sp,sp,-32
    80001168:	00113c23          	sd	ra,24(sp)
    8000116c:	00813823          	sd	s0,16(sp)
    80001170:	00913423          	sd	s1,8(sp)
    80001174:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001178:	00005797          	auipc	a5,0x5
    8000117c:	e8878793          	addi	a5,a5,-376 # 80006000 <_ZN9Scheduler16readyThreadQueueE>
    80001180:	0007b503          	ld	a0,0(a5)
    80001184:	04050263          	beqz	a0,800011c8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    80001188:	00853783          	ld	a5,8(a0)
    8000118c:	00005717          	auipc	a4,0x5
    80001190:	e6f73a23          	sd	a5,-396(a4) # 80006000 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001194:	02078463          	beqz	a5,800011bc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    80001198:	00053483          	ld	s1,0(a0)
        delete elem;
    8000119c:	00001097          	auipc	ra,0x1
    800011a0:	c1c080e7          	jalr	-996(ra) # 80001db8 <_ZdlPv>
}
    800011a4:	00048513          	mv	a0,s1
    800011a8:	01813083          	ld	ra,24(sp)
    800011ac:	01013403          	ld	s0,16(sp)
    800011b0:	00813483          	ld	s1,8(sp)
    800011b4:	02010113          	addi	sp,sp,32
    800011b8:	00008067          	ret
        if (!head) { tail = 0; }
    800011bc:	00005797          	auipc	a5,0x5
    800011c0:	e407b623          	sd	zero,-436(a5) # 80006008 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800011c4:	fd5ff06f          	j	80001198 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    800011c8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800011cc:	fd9ff06f          	j	800011a4 <_ZN9Scheduler3getEv+0x40>

00000000800011d0 <_ZN9Scheduler3putEP3TCB>:
{
    800011d0:	fe010113          	addi	sp,sp,-32
    800011d4:	00113c23          	sd	ra,24(sp)
    800011d8:	00813823          	sd	s0,16(sp)
    800011dc:	00913423          	sd	s1,8(sp)
    800011e0:	02010413          	addi	s0,sp,32
    800011e4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800011e8:	01000513          	li	a0,16
    800011ec:	00001097          	auipc	ra,0x1
    800011f0:	b4c080e7          	jalr	-1204(ra) # 80001d38 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800011f4:	00953023          	sd	s1,0(a0)
    800011f8:	00053423          	sd	zero,8(a0)
        if (tail)
    800011fc:	00005797          	auipc	a5,0x5
    80001200:	e0478793          	addi	a5,a5,-508 # 80006000 <_ZN9Scheduler16readyThreadQueueE>
    80001204:	0087b783          	ld	a5,8(a5)
    80001208:	02078263          	beqz	a5,8000122c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000120c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001210:	00005797          	auipc	a5,0x5
    80001214:	dea7bc23          	sd	a0,-520(a5) # 80006008 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001218:	01813083          	ld	ra,24(sp)
    8000121c:	01013403          	ld	s0,16(sp)
    80001220:	00813483          	ld	s1,8(sp)
    80001224:	02010113          	addi	sp,sp,32
    80001228:	00008067          	ret
            head = tail = elem;
    8000122c:	00005797          	auipc	a5,0x5
    80001230:	dd478793          	addi	a5,a5,-556 # 80006000 <_ZN9Scheduler16readyThreadQueueE>
    80001234:	00a7b423          	sd	a0,8(a5)
    80001238:	00a7b023          	sd	a0,0(a5)
    8000123c:	fddff06f          	j	80001218 <_ZN9Scheduler3putEP3TCB+0x48>

0000000080001240 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001240:	ff010113          	addi	sp,sp,-16
    80001244:	00113423          	sd	ra,8(sp)
    80001248:	00813023          	sd	s0,0(sp)
    8000124c:	01010413          	addi	s0,sp,16
    80001250:	000105b7          	lui	a1,0x10
    80001254:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001258:	00100513          	li	a0,1
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	ec8080e7          	jalr	-312(ra) # 80001124 <_Z41__static_initialization_and_destruction_0ii>
    80001264:	00813083          	ld	ra,8(sp)
    80001268:	00013403          	ld	s0,0(sp)
    8000126c:	01010113          	addi	sp,sp,16
    80001270:	00008067          	ret

0000000080001274 <_Z7syscall11SyscallCodemmmmmmmm>:
#include "../h/syscall_c.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    80001274:	ff010113          	addi	sp,sp,-16
    80001278:	00813423          	sd	s0,8(sp)
    8000127c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001280:	00000073          	ecall
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    80001284:	00050513          	mv	a0,a0
    return result;
}
    80001288:	00813403          	ld	s0,8(sp)
    8000128c:	01010113          	addi	sp,sp,16
    80001290:	00008067          	ret

0000000080001294 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    80001294:	fe010113          	addi	sp,sp,-32
    80001298:	00113c23          	sd	ra,24(sp)
    8000129c:	00813823          	sd	s0,16(sp)
    800012a0:	02010413          	addi	s0,sp,32
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    800012a4:	00013023          	sd	zero,0(sp)
    800012a8:	00000893          	li	a7,0
    800012ac:	00000813          	li	a6,0
    800012b0:	00000793          	li	a5,0
    800012b4:	00000713          	li	a4,0
    800012b8:	00000693          	li	a3,0
    800012bc:	00000613          	li	a2,0
    800012c0:	00050593          	mv	a1,a0
    800012c4:	00100513          	li	a0,1
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	fac080e7          	jalr	-84(ra) # 80001274 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800012d0:	01813083          	ld	ra,24(sp)
    800012d4:	01013403          	ld	s0,16(sp)
    800012d8:	02010113          	addi	sp,sp,32
    800012dc:	00008067          	ret

00000000800012e0 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    800012e0:	fe010113          	addi	sp,sp,-32
    800012e4:	00113c23          	sd	ra,24(sp)
    800012e8:	00813823          	sd	s0,16(sp)
    800012ec:	02010413          	addi	s0,sp,32
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    800012f0:	00013023          	sd	zero,0(sp)
    800012f4:	00000893          	li	a7,0
    800012f8:	00000813          	li	a6,0
    800012fc:	00000793          	li	a5,0
    80001300:	00000713          	li	a4,0
    80001304:	00000693          	li	a3,0
    80001308:	00000613          	li	a2,0
    8000130c:	00050593          	mv	a1,a0
    80001310:	00200513          	li	a0,2
    80001314:	00000097          	auipc	ra,0x0
    80001318:	f60080e7          	jalr	-160(ra) # 80001274 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000131c:	0005051b          	sext.w	a0,a0
    80001320:	01813083          	ld	ra,24(sp)
    80001324:	01013403          	ld	s0,16(sp)
    80001328:	02010113          	addi	sp,sp,32
    8000132c:	00008067          	ret

0000000080001330 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001330:	fe010113          	addi	sp,sp,-32
    80001334:	00113c23          	sd	ra,24(sp)
    80001338:	00813823          	sd	s0,16(sp)
    8000133c:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    80001340:	00013023          	sd	zero,0(sp)
    80001344:	00000893          	li	a7,0
    80001348:	00000813          	li	a6,0
    8000134c:	00000793          	li	a5,0
    80001350:	00000713          	li	a4,0
    80001354:	00000693          	li	a3,0
    80001358:	00000613          	li	a2,0
    8000135c:	00000593          	li	a1,0
    80001360:	00300513          	li	a0,3
    80001364:	00000097          	auipc	ra,0x0
    80001368:	f10080e7          	jalr	-240(ra) # 80001274 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000136c:	01813083          	ld	ra,24(sp)
    80001370:	01013403          	ld	s0,16(sp)
    80001374:	02010113          	addi	sp,sp,32
    80001378:	00008067          	ret

000000008000137c <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    8000137c:	fe010113          	addi	sp,sp,-32
    80001380:	00113c23          	sd	ra,24(sp)
    80001384:	00813823          	sd	s0,16(sp)
    80001388:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    8000138c:	00013023          	sd	zero,0(sp)
    80001390:	00000893          	li	a7,0
    80001394:	00000813          	li	a6,0
    80001398:	00000793          	li	a5,0
    8000139c:	00000713          	li	a4,0
    800013a0:	00000693          	li	a3,0
    800013a4:	00000613          	li	a2,0
    800013a8:	00000593          	li	a1,0
    800013ac:	00400513          	li	a0,4
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	ec4080e7          	jalr	-316(ra) # 80001274 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800013b8:	01813083          	ld	ra,24(sp)
    800013bc:	01013403          	ld	s0,16(sp)
    800013c0:	02010113          	addi	sp,sp,32
    800013c4:	00008067          	ret

00000000800013c8 <_ZL9fibonaccim>:
    }
}

static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    800013c8:	00100793          	li	a5,1
    800013cc:	06a7f863          	bgeu	a5,a0,8000143c <_ZL9fibonaccim+0x74>
{
    800013d0:	fe010113          	addi	sp,sp,-32
    800013d4:	00113c23          	sd	ra,24(sp)
    800013d8:	00813823          	sd	s0,16(sp)
    800013dc:	00913423          	sd	s1,8(sp)
    800013e0:	01213023          	sd	s2,0(sp)
    800013e4:	02010413          	addi	s0,sp,32
    800013e8:	00050493          	mv	s1,a0
    if (n % 10 == 0) { TCB::yield(); }
    800013ec:	00a00793          	li	a5,10
    800013f0:	02f577b3          	remu	a5,a0,a5
    800013f4:	02078e63          	beqz	a5,80001430 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800013f8:	fff48513          	addi	a0,s1,-1
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	fcc080e7          	jalr	-52(ra) # 800013c8 <_ZL9fibonaccim>
    80001404:	00050913          	mv	s2,a0
    80001408:	ffe48513          	addi	a0,s1,-2
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	fbc080e7          	jalr	-68(ra) # 800013c8 <_ZL9fibonaccim>
    80001414:	00a90533          	add	a0,s2,a0
}
    80001418:	01813083          	ld	ra,24(sp)
    8000141c:	01013403          	ld	s0,16(sp)
    80001420:	00813483          	ld	s1,8(sp)
    80001424:	00013903          	ld	s2,0(sp)
    80001428:	02010113          	addi	sp,sp,32
    8000142c:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001430:	00001097          	auipc	ra,0x1
    80001434:	d98080e7          	jalr	-616(ra) # 800021c8 <_ZN3TCB5yieldEv>
    80001438:	fc1ff06f          	j	800013f8 <_ZL9fibonaccim+0x30>
}
    8000143c:	00008067          	ret

0000000080001440 <_Z12worker_ecallv>:
void worker_ecall() {
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00113423          	sd	ra,8(sp)
    80001448:	00813023          	sd	s0,0(sp)
    8000144c:	01010413          	addi	s0,sp,16
    printString("Starting ecall worker\n");
    80001450:	00004517          	auipc	a0,0x4
    80001454:	bd050513          	addi	a0,a0,-1072 # 80005020 <CONSOLE_STATUS+0x10>
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	9e0080e7          	jalr	-1568(ra) # 80001e38 <_Z11printStringPKc>
    __asm__ volatile ("ecall");
    80001460:	00000073          	ecall
    for(int i = 0; i < 99999999; ++i)
    80001464:	00000693          	li	a3,0
    80001468:	0080006f          	j	80001470 <_Z12worker_ecallv+0x30>
    8000146c:	0016869b          	addiw	a3,a3,1
    80001470:	05f5e7b7          	lui	a5,0x5f5e
    80001474:	0fe78793          	addi	a5,a5,254 # 5f5e0fe <_entry-0x7a0a1f02>
    80001478:	00d7ce63          	blt	a5,a3,80001494 <_Z12worker_ecallv+0x54>
        for(int j = 0; j < 99999999; ++j)
    8000147c:	00000713          	li	a4,0
    80001480:	05f5e7b7          	lui	a5,0x5f5e
    80001484:	0fe78793          	addi	a5,a5,254 # 5f5e0fe <_entry-0x7a0a1f02>
    80001488:	fee7c2e3          	blt	a5,a4,8000146c <_Z12worker_ecallv+0x2c>
    8000148c:	0017071b          	addiw	a4,a4,1
    80001490:	ff1ff06f          	j	80001480 <_Z12worker_ecallv+0x40>
    printString("Finishing ecall worker\n");
    80001494:	00004517          	auipc	a0,0x4
    80001498:	ba450513          	addi	a0,a0,-1116 # 80005038 <CONSOLE_STATUS+0x28>
    8000149c:	00001097          	auipc	ra,0x1
    800014a0:	99c080e7          	jalr	-1636(ra) # 80001e38 <_Z11printStringPKc>
}
    800014a4:	00813083          	ld	ra,8(sp)
    800014a8:	00013403          	ld	s0,0(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret

00000000800014b4 <_Z11workerBodyAv>:
{
    800014b4:	fe010113          	addi	sp,sp,-32
    800014b8:	00113c23          	sd	ra,24(sp)
    800014bc:	00813823          	sd	s0,16(sp)
    800014c0:	00913423          	sd	s1,8(sp)
    800014c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800014c8:	00000493          	li	s1,0
    800014cc:	0300006f          	j	800014fc <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800014d0:	00168693          	addi	a3,a3,1
    800014d4:	000027b7          	lui	a5,0x2
    800014d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014dc:	00d7ee63          	bltu	a5,a3,800014f8 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800014e0:	00000713          	li	a4,0
    800014e4:	000077b7          	lui	a5,0x7
    800014e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014ec:	fee7e2e3          	bltu	a5,a4,800014d0 <_Z11workerBodyAv+0x1c>
    800014f0:	00170713          	addi	a4,a4,1
    800014f4:	ff1ff06f          	j	800014e4 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800014f8:	00148493          	addi	s1,s1,1
    800014fc:	00900793          	li	a5,9
    80001500:	0297ec63          	bltu	a5,s1,80001538 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001504:	00004517          	auipc	a0,0x4
    80001508:	b4c50513          	addi	a0,a0,-1204 # 80005050 <CONSOLE_STATUS+0x40>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	92c080e7          	jalr	-1748(ra) # 80001e38 <_Z11printStringPKc>
        printInteger(i);
    80001514:	00048513          	mv	a0,s1
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	a18080e7          	jalr	-1512(ra) # 80001f30 <_Z12printIntegerm>
        printString("\n");
    80001520:	00004517          	auipc	a0,0x4
    80001524:	c0850513          	addi	a0,a0,-1016 # 80005128 <CONSOLE_STATUS+0x118>
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	910080e7          	jalr	-1776(ra) # 80001e38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001530:	00000693          	li	a3,0
    80001534:	fa1ff06f          	j	800014d4 <_Z11workerBodyAv+0x20>
}
    80001538:	01813083          	ld	ra,24(sp)
    8000153c:	01013403          	ld	s0,16(sp)
    80001540:	00813483          	ld	s1,8(sp)
    80001544:	02010113          	addi	sp,sp,32
    80001548:	00008067          	ret

000000008000154c <_Z11workerBodyBv>:
{
    8000154c:	fe010113          	addi	sp,sp,-32
    80001550:	00113c23          	sd	ra,24(sp)
    80001554:	00813823          	sd	s0,16(sp)
    80001558:	00913423          	sd	s1,8(sp)
    8000155c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001560:	00000493          	li	s1,0
    80001564:	0300006f          	j	80001594 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001568:	00168693          	addi	a3,a3,1
    8000156c:	000027b7          	lui	a5,0x2
    80001570:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001574:	00d7ee63          	bltu	a5,a3,80001590 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001578:	00000713          	li	a4,0
    8000157c:	000077b7          	lui	a5,0x7
    80001580:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001584:	fee7e2e3          	bltu	a5,a4,80001568 <_Z11workerBodyBv+0x1c>
    80001588:	00170713          	addi	a4,a4,1
    8000158c:	ff1ff06f          	j	8000157c <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001590:	00148493          	addi	s1,s1,1
    80001594:	00f00793          	li	a5,15
    80001598:	0297ec63          	bltu	a5,s1,800015d0 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    8000159c:	00004517          	auipc	a0,0x4
    800015a0:	abc50513          	addi	a0,a0,-1348 # 80005058 <CONSOLE_STATUS+0x48>
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	894080e7          	jalr	-1900(ra) # 80001e38 <_Z11printStringPKc>
        printInteger(i);
    800015ac:	00048513          	mv	a0,s1
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	980080e7          	jalr	-1664(ra) # 80001f30 <_Z12printIntegerm>
        printString("\n");
    800015b8:	00004517          	auipc	a0,0x4
    800015bc:	b7050513          	addi	a0,a0,-1168 # 80005128 <CONSOLE_STATUS+0x118>
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	878080e7          	jalr	-1928(ra) # 80001e38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800015c8:	00000693          	li	a3,0
    800015cc:	fa1ff06f          	j	8000156c <_Z11workerBodyBv+0x20>
}
    800015d0:	01813083          	ld	ra,24(sp)
    800015d4:	01013403          	ld	s0,16(sp)
    800015d8:	00813483          	ld	s1,8(sp)
    800015dc:	02010113          	addi	sp,sp,32
    800015e0:	00008067          	ret

00000000800015e4 <_Z11workerBodyCv>:

void workerBodyC()
{
    800015e4:	fe010113          	addi	sp,sp,-32
    800015e8:	00113c23          	sd	ra,24(sp)
    800015ec:	00813823          	sd	s0,16(sp)
    800015f0:	00913423          	sd	s1,8(sp)
    800015f4:	01213023          	sd	s2,0(sp)
    800015f8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800015fc:	00000493          	li	s1,0
    for (; i < 3; i++)
    80001600:	00200793          	li	a5,2
    80001604:	0297ee63          	bltu	a5,s1,80001640 <_Z11workerBodyCv+0x5c>
    {
        printString("C: i=");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	a5850513          	addi	a0,a0,-1448 # 80005060 <CONSOLE_STATUS+0x50>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	828080e7          	jalr	-2008(ra) # 80001e38 <_Z11printStringPKc>
        printInteger(i);
    80001618:	00048513          	mv	a0,s1
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	914080e7          	jalr	-1772(ra) # 80001f30 <_Z12printIntegerm>
        printString("\n");
    80001624:	00004517          	auipc	a0,0x4
    80001628:	b0450513          	addi	a0,a0,-1276 # 80005128 <CONSOLE_STATUS+0x118>
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	80c080e7          	jalr	-2036(ra) # 80001e38 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001634:	0014849b          	addiw	s1,s1,1
    80001638:	0ff4f493          	andi	s1,s1,255
    8000163c:	fc5ff06f          	j	80001600 <_Z11workerBodyCv+0x1c>
    }

    printString("C: yield\n");
    80001640:	00004517          	auipc	a0,0x4
    80001644:	a2850513          	addi	a0,a0,-1496 # 80005068 <CONSOLE_STATUS+0x58>
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	7f0080e7          	jalr	2032(ra) # 80001e38 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001650:	00700313          	li	t1,7
    TCB::yield();
    80001654:	00001097          	auipc	ra,0x1
    80001658:	b74080e7          	jalr	-1164(ra) # 800021c8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000165c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	a1850513          	addi	a0,a0,-1512 # 80005078 <CONSOLE_STATUS+0x68>
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	7d0080e7          	jalr	2000(ra) # 80001e38 <_Z11printStringPKc>
    printInteger(t1);
    80001670:	00090513          	mv	a0,s2
    80001674:	00001097          	auipc	ra,0x1
    80001678:	8bc080e7          	jalr	-1860(ra) # 80001f30 <_Z12printIntegerm>
    printString("\n");
    8000167c:	00004517          	auipc	a0,0x4
    80001680:	aac50513          	addi	a0,a0,-1364 # 80005128 <CONSOLE_STATUS+0x118>
    80001684:	00000097          	auipc	ra,0x0
    80001688:	7b4080e7          	jalr	1972(ra) # 80001e38 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000168c:	00c00513          	li	a0,12
    80001690:	00000097          	auipc	ra,0x0
    80001694:	d38080e7          	jalr	-712(ra) # 800013c8 <_ZL9fibonaccim>
    80001698:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	9e450513          	addi	a0,a0,-1564 # 80005080 <CONSOLE_STATUS+0x70>
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	794080e7          	jalr	1940(ra) # 80001e38 <_Z11printStringPKc>
    printInteger(result);
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	880080e7          	jalr	-1920(ra) # 80001f30 <_Z12printIntegerm>
    printString("\n");
    800016b8:	00004517          	auipc	a0,0x4
    800016bc:	a7050513          	addi	a0,a0,-1424 # 80005128 <CONSOLE_STATUS+0x118>
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	778080e7          	jalr	1912(ra) # 80001e38 <_Z11printStringPKc>

    for (; i < 6; i++)
    800016c8:	00500793          	li	a5,5
    800016cc:	0297ee63          	bltu	a5,s1,80001708 <_Z11workerBodyCv+0x124>
    {
        printString("C: i=");
    800016d0:	00004517          	auipc	a0,0x4
    800016d4:	99050513          	addi	a0,a0,-1648 # 80005060 <CONSOLE_STATUS+0x50>
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	760080e7          	jalr	1888(ra) # 80001e38 <_Z11printStringPKc>
        printInteger(i);
    800016e0:	00048513          	mv	a0,s1
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	84c080e7          	jalr	-1972(ra) # 80001f30 <_Z12printIntegerm>
        printString("\n");
    800016ec:	00004517          	auipc	a0,0x4
    800016f0:	a3c50513          	addi	a0,a0,-1476 # 80005128 <CONSOLE_STATUS+0x118>
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	744080e7          	jalr	1860(ra) # 80001e38 <_Z11printStringPKc>
    for (; i < 6; i++)
    800016fc:	0014849b          	addiw	s1,s1,1
    80001700:	0ff4f493          	andi	s1,s1,255
    80001704:	fc5ff06f          	j	800016c8 <_Z11workerBodyCv+0xe4>
    }
//    TCB::yield();
}
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	00013903          	ld	s2,0(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret

0000000080001720 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	00913423          	sd	s1,8(sp)
    80001730:	01213023          	sd	s2,0(sp)
    80001734:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001738:	00a00493          	li	s1,10
    for (; i < 13; i++)
    8000173c:	00c00793          	li	a5,12
    80001740:	0297ee63          	bltu	a5,s1,8000177c <_Z11workerBodyDv+0x5c>
    {
        printString("D: i=");
    80001744:	00004517          	auipc	a0,0x4
    80001748:	94c50513          	addi	a0,a0,-1716 # 80005090 <CONSOLE_STATUS+0x80>
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	6ec080e7          	jalr	1772(ra) # 80001e38 <_Z11printStringPKc>
        printInteger(i);
    80001754:	00048513          	mv	a0,s1
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	7d8080e7          	jalr	2008(ra) # 80001f30 <_Z12printIntegerm>
        printString("\n");
    80001760:	00004517          	auipc	a0,0x4
    80001764:	9c850513          	addi	a0,a0,-1592 # 80005128 <CONSOLE_STATUS+0x118>
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	6d0080e7          	jalr	1744(ra) # 80001e38 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001770:	0014849b          	addiw	s1,s1,1
    80001774:	0ff4f493          	andi	s1,s1,255
    80001778:	fc5ff06f          	j	8000173c <_Z11workerBodyDv+0x1c>
    }

    printString("D: yield\n");
    8000177c:	00004517          	auipc	a0,0x4
    80001780:	91c50513          	addi	a0,a0,-1764 # 80005098 <CONSOLE_STATUS+0x88>
    80001784:	00000097          	auipc	ra,0x0
    80001788:	6b4080e7          	jalr	1716(ra) # 80001e38 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000178c:	00500313          	li	t1,5
    TCB::yield();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	a38080e7          	jalr	-1480(ra) # 800021c8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001798:	01000513          	li	a0,16
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	c2c080e7          	jalr	-980(ra) # 800013c8 <_ZL9fibonaccim>
    800017a4:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	90050513          	addi	a0,a0,-1792 # 800050a8 <CONSOLE_STATUS+0x98>
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	688080e7          	jalr	1672(ra) # 80001e38 <_Z11printStringPKc>
    printInteger(result);
    800017b8:	00090513          	mv	a0,s2
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	774080e7          	jalr	1908(ra) # 80001f30 <_Z12printIntegerm>
    printString("\n");
    800017c4:	00004517          	auipc	a0,0x4
    800017c8:	96450513          	addi	a0,a0,-1692 # 80005128 <CONSOLE_STATUS+0x118>
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	66c080e7          	jalr	1644(ra) # 80001e38 <_Z11printStringPKc>

    for (; i < 16; i++)
    800017d4:	00f00793          	li	a5,15
    800017d8:	0297ee63          	bltu	a5,s1,80001814 <_Z11workerBodyDv+0xf4>
    {
        printString("D: i=");
    800017dc:	00004517          	auipc	a0,0x4
    800017e0:	8b450513          	addi	a0,a0,-1868 # 80005090 <CONSOLE_STATUS+0x80>
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	654080e7          	jalr	1620(ra) # 80001e38 <_Z11printStringPKc>
        printInteger(i);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	740080e7          	jalr	1856(ra) # 80001f30 <_Z12printIntegerm>
        printString("\n");
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	93050513          	addi	a0,a0,-1744 # 80005128 <CONSOLE_STATUS+0x118>
    80001800:	00000097          	auipc	ra,0x0
    80001804:	638080e7          	jalr	1592(ra) # 80001e38 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001808:	0014849b          	addiw	s1,s1,1
    8000180c:	0ff4f493          	andi	s1,s1,255
    80001810:	fc5ff06f          	j	800017d4 <_Z11workerBodyDv+0xb4>
    }
//    TCB::yield();
}
    80001814:	01813083          	ld	ra,24(sp)
    80001818:	01013403          	ld	s0,16(sp)
    8000181c:	00813483          	ld	s1,8(sp)
    80001820:	00013903          	ld	s2,0(sp)
    80001824:	02010113          	addi	sp,sp,32
    80001828:	00008067          	ret

000000008000182c <_Z10workerTestv>:

void workerTest()
{
    8000182c:	fe010113          	addi	sp,sp,-32
    80001830:	00113c23          	sd	ra,24(sp)
    80001834:	00813823          	sd	s0,16(sp)
    80001838:	00913423          	sd	s1,8(sp)
    8000183c:	02010413          	addi	s0,sp,32
    printString("--------------------------------\n");
    80001840:	00004517          	auipc	a0,0x4
    80001844:	87850513          	addi	a0,a0,-1928 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	5f0080e7          	jalr	1520(ra) # 80001e38 <_Z11printStringPKc>
    printString("Starting test\n");
    80001850:	00004517          	auipc	a0,0x4
    80001854:	89050513          	addi	a0,a0,-1904 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	5e0080e7          	jalr	1504(ra) # 80001e38 <_Z11printStringPKc>
    printString("--------------------------------\n");
    80001860:	00004517          	auipc	a0,0x4
    80001864:	85850513          	addi	a0,a0,-1960 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	5d0080e7          	jalr	1488(ra) # 80001e38 <_Z11printStringPKc>

    printString("Test\n");
    80001870:	00004517          	auipc	a0,0x4
    80001874:	88050513          	addi	a0,a0,-1920 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	5c0080e7          	jalr	1472(ra) # 80001e38 <_Z11printStringPKc>
    void* ptr = mem_alloc(1024);
    80001880:	40000513          	li	a0,1024
    80001884:	00000097          	auipc	ra,0x0
    80001888:	a10080e7          	jalr	-1520(ra) # 80001294 <_Z9mem_allocm>
    8000188c:	00050493          	mv	s1,a0
    printString("ptr=");
    80001890:	00004517          	auipc	a0,0x4
    80001894:	86850513          	addi	a0,a0,-1944 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	5a0080e7          	jalr	1440(ra) # 80001e38 <_Z11printStringPKc>
    printInteger((uint64)ptr);
    800018a0:	00048513          	mv	a0,s1
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	68c080e7          	jalr	1676(ra) # 80001f30 <_Z12printIntegerm>
    printString("\n");
    800018ac:	00004517          	auipc	a0,0x4
    800018b0:	87c50513          	addi	a0,a0,-1924 # 80005128 <CONSOLE_STATUS+0x118>
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	584080e7          	jalr	1412(ra) # 80001e38 <_Z11printStringPKc>

    mem_free(ptr);
    800018bc:	00048513          	mv	a0,s1
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	a20080e7          	jalr	-1504(ra) # 800012e0 <_Z8mem_freePv>
    printString("ptr freed\n");
    800018c8:	00004517          	auipc	a0,0x4
    800018cc:	83850513          	addi	a0,a0,-1992 # 80005100 <CONSOLE_STATUS+0xf0>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	568080e7          	jalr	1384(ra) # 80001e38 <_Z11printStringPKc>

    printString("--------------------------------\n");
    800018d8:	00003517          	auipc	a0,0x3
    800018dc:	7e050513          	addi	a0,a0,2016 # 800050b8 <CONSOLE_STATUS+0xa8>
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	558080e7          	jalr	1368(ra) # 80001e38 <_Z11printStringPKc>
    printString("Test finished\n");
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	82850513          	addi	a0,a0,-2008 # 80005110 <CONSOLE_STATUS+0x100>
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	548080e7          	jalr	1352(ra) # 80001e38 <_Z11printStringPKc>
    printString("--------------------------------\n");
    800018f8:	00003517          	auipc	a0,0x3
    800018fc:	7c050513          	addi	a0,a0,1984 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001900:	00000097          	auipc	ra,0x0
    80001904:	538080e7          	jalr	1336(ra) # 80001e38 <_Z11printStringPKc>

    80001908:	01813083          	ld	ra,24(sp)
    8000190c:	01013403          	ld	s0,16(sp)
    80001910:	00813483          	ld	s1,8(sp)
    80001914:	02010113          	addi	sp,sp,32
    80001918:	00008067          	ret

000000008000191c <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00813423          	sd	s0,8(sp)
    80001924:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001928:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000192c:	10200073          	sret
}
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000193c:	f6010113          	addi	sp,sp,-160
    80001940:	08113c23          	sd	ra,152(sp)
    80001944:	08813823          	sd	s0,144(sp)
    80001948:	08913423          	sd	s1,136(sp)
    8000194c:	09213023          	sd	s2,128(sp)
    80001950:	07313c23          	sd	s3,120(sp)
    80001954:	07413823          	sd	s4,112(sp)
    80001958:	07513423          	sd	s5,104(sp)
    8000195c:	07613023          	sd	s6,96(sp)
    80001960:	05713c23          	sd	s7,88(sp)
    80001964:	05813823          	sd	s8,80(sp)
    80001968:	0a010413          	addi	s0,sp,160
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000196c:	142027f3          	csrr	a5,scause
    80001970:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80001974:	f8843703          	ld	a4,-120(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001978:	ff870693          	addi	a3,a4,-8
    8000197c:	00100793          	li	a5,1
    80001980:	04d7fa63          	bgeu	a5,a3,800019d4 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
        debug_print("--------------------------------\n");

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001984:	fff00793          	li	a5,-1
    80001988:	03f79793          	slli	a5,a5,0x3f
    8000198c:	00178793          	addi	a5,a5,1
    80001990:	32f70463          	beq	a4,a5,80001cb8 <_ZN5Riscv20handleSupervisorTrapEv+0x37c>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001994:	fff00793          	li	a5,-1
    80001998:	03f79793          	slli	a5,a5,0x3f
    8000199c:	00978793          	addi	a5,a5,9
    800019a0:	38f70663          	beq	a4,a5,80001d2c <_ZN5Riscv20handleSupervisorTrapEv+0x3f0>
    }
    else
    {
        // unexpected trap cause
    }
    800019a4:	09813083          	ld	ra,152(sp)
    800019a8:	09013403          	ld	s0,144(sp)
    800019ac:	08813483          	ld	s1,136(sp)
    800019b0:	08013903          	ld	s2,128(sp)
    800019b4:	07813983          	ld	s3,120(sp)
    800019b8:	07013a03          	ld	s4,112(sp)
    800019bc:	06813a83          	ld	s5,104(sp)
    800019c0:	06013b03          	ld	s6,96(sp)
    800019c4:	05813b83          	ld	s7,88(sp)
    800019c8:	05013c03          	ld	s8,80(sp)
    800019cc:	0a010113          	addi	sp,sp,160
    800019d0:	00008067          	ret
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800019d4:	141027f3          	csrr	a5,sepc
    800019d8:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800019dc:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800019e0:	00478793          	addi	a5,a5,4
    800019e4:	f6f43423          	sd	a5,-152(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800019e8:	100027f3          	csrr	a5,sstatus
    800019ec:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800019f0:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sstatus = r_sstatus();
    800019f4:	f6f43823          	sd	a5,-144(s0)
        __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800019f8:	00050493          	mv	s1,a0
        __asm__ volatile ("mv %0, a1" : "=r"(a1));
    800019fc:	00058913          	mv	s2,a1
        __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001a00:	00060c13          	mv	s8,a2
        __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001a04:	00068b93          	mv	s7,a3
        __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001a08:	00070b13          	mv	s6,a4
        __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001a0c:	00078a93          	mv	s5,a5
        __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001a10:	00080a13          	mv	s4,a6
        __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001a14:	00088993          	mv	s3,a7
        debug_print("--------------------------------\n");
    80001a18:	00003517          	auipc	a0,0x3
    80001a1c:	6a050513          	addi	a0,a0,1696 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	488080e7          	jalr	1160(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("SYSCALL!\n");
    80001a28:	00003517          	auipc	a0,0x3
    80001a2c:	6f850513          	addi	a0,a0,1784 # 80005120 <CONSOLE_STATUS+0x110>
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	478080e7          	jalr	1144(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a0=");
    80001a38:	00003517          	auipc	a0,0x3
    80001a3c:	6f850513          	addi	a0,a0,1784 # 80005130 <CONSOLE_STATUS+0x120>
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	468080e7          	jalr	1128(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a0);
    80001a48:	00048513          	mv	a0,s1
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	5a4080e7          	jalr	1444(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001a54:	00003517          	auipc	a0,0x3
    80001a58:	6d450513          	addi	a0,a0,1748 # 80005128 <CONSOLE_STATUS+0x118>
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	44c080e7          	jalr	1100(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a1=");
    80001a64:	00003517          	auipc	a0,0x3
    80001a68:	6d450513          	addi	a0,a0,1748 # 80005138 <CONSOLE_STATUS+0x128>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	43c080e7          	jalr	1084(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a1);
    80001a74:	00090513          	mv	a0,s2
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	578080e7          	jalr	1400(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	6a850513          	addi	a0,a0,1704 # 80005128 <CONSOLE_STATUS+0x118>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	420080e7          	jalr	1056(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a2=");
    80001a90:	00003517          	auipc	a0,0x3
    80001a94:	6b050513          	addi	a0,a0,1712 # 80005140 <CONSOLE_STATUS+0x130>
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	410080e7          	jalr	1040(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a2);
    80001aa0:	000c0513          	mv	a0,s8
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	54c080e7          	jalr	1356(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001aac:	00003517          	auipc	a0,0x3
    80001ab0:	67c50513          	addi	a0,a0,1660 # 80005128 <CONSOLE_STATUS+0x118>
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	3f4080e7          	jalr	1012(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a3=");
    80001abc:	00003517          	auipc	a0,0x3
    80001ac0:	68c50513          	addi	a0,a0,1676 # 80005148 <CONSOLE_STATUS+0x138>
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	3e4080e7          	jalr	996(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a3);
    80001acc:	000b8513          	mv	a0,s7
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	520080e7          	jalr	1312(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001ad8:	00003517          	auipc	a0,0x3
    80001adc:	65050513          	addi	a0,a0,1616 # 80005128 <CONSOLE_STATUS+0x118>
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	3c8080e7          	jalr	968(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a4=");
    80001ae8:	00003517          	auipc	a0,0x3
    80001aec:	66850513          	addi	a0,a0,1640 # 80005150 <CONSOLE_STATUS+0x140>
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	3b8080e7          	jalr	952(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a4);
    80001af8:	000b0513          	mv	a0,s6
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	4f4080e7          	jalr	1268(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001b04:	00003517          	auipc	a0,0x3
    80001b08:	62450513          	addi	a0,a0,1572 # 80005128 <CONSOLE_STATUS+0x118>
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	39c080e7          	jalr	924(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a5=");
    80001b14:	00003517          	auipc	a0,0x3
    80001b18:	64450513          	addi	a0,a0,1604 # 80005158 <CONSOLE_STATUS+0x148>
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	38c080e7          	jalr	908(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a5);
    80001b24:	000a8513          	mv	a0,s5
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	4c8080e7          	jalr	1224(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001b30:	00003517          	auipc	a0,0x3
    80001b34:	5f850513          	addi	a0,a0,1528 # 80005128 <CONSOLE_STATUS+0x118>
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	370080e7          	jalr	880(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a6=");
    80001b40:	00003517          	auipc	a0,0x3
    80001b44:	62050513          	addi	a0,a0,1568 # 80005160 <CONSOLE_STATUS+0x150>
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	360080e7          	jalr	864(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a6);
    80001b50:	000a0513          	mv	a0,s4
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	49c080e7          	jalr	1180(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001b5c:	00003517          	auipc	a0,0x3
    80001b60:	5cc50513          	addi	a0,a0,1484 # 80005128 <CONSOLE_STATUS+0x118>
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	344080e7          	jalr	836(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("a7=");
    80001b6c:	00003517          	auipc	a0,0x3
    80001b70:	5fc50513          	addi	a0,a0,1532 # 80005168 <CONSOLE_STATUS+0x158>
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	334080e7          	jalr	820(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(a7);
    80001b7c:	00098513          	mv	a0,s3
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	470080e7          	jalr	1136(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001b88:	00003517          	auipc	a0,0x3
    80001b8c:	5a050513          	addi	a0,a0,1440 # 80005128 <CONSOLE_STATUS+0x118>
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	318080e7          	jalr	792(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("--------------------------------\n");
    80001b98:	00003517          	auipc	a0,0x3
    80001b9c:	52050513          	addi	a0,a0,1312 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	308080e7          	jalr	776(ra) # 80001ea8 <_Z11debug_printPKc>
        switch (a0) {
    80001ba8:	00200793          	li	a5,2
    80001bac:	0cf48463          	beq	s1,a5,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x338>
    80001bb0:	0297f663          	bgeu	a5,s1,80001bdc <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
    80001bb4:	00300793          	li	a5,3
    80001bb8:	0ef48463          	beq	s1,a5,80001ca0 <_ZN5Riscv20handleSupervisorTrapEv+0x364>
    80001bbc:	00400793          	li	a5,4
    80001bc0:	0af49663          	bne	s1,a5,80001c6c <_ZN5Riscv20handleSupervisorTrapEv+0x330>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	6e4080e7          	jalr	1764(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	a08080e7          	jalr	-1528(ra) # 800025d4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001bd4:	00000493          	li	s1,0
                break;
    80001bd8:	03c0006f          	j	80001c14 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
        switch (a0) {
    80001bdc:	00100793          	li	a5,1
    80001be0:	02f49863          	bne	s1,a5,80001c10 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
                debug_print("MEM_ALLOC SYSCALL\n");
    80001be4:	00003517          	auipc	a0,0x3
    80001be8:	58c50513          	addi	a0,a0,1420 # 80005170 <CONSOLE_STATUS+0x160>
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	2bc080e7          	jalr	700(ra) # 80001ea8 <_Z11debug_printPKc>
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	6b4080e7          	jalr	1716(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001bfc:	00090593          	mv	a1,s2
    80001c00:	00001097          	auipc	ra,0x1
    80001c04:	80c080e7          	jalr	-2036(ra) # 8000240c <_ZN15MemoryAllocator9mem_allocEm>
    80001c08:	00050493          	mv	s1,a0
                break;
    80001c0c:	0080006f          	j	80001c14 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
        uint64 res = 0;
    80001c10:	00000493          	li	s1,0
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001c14:	00048513          	mv	a0,s1
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    80001c18:	04943823          	sd	s1,80(s0)
        debug_print("res=");
    80001c1c:	00003517          	auipc	a0,0x3
    80001c20:	58450513          	addi	a0,a0,1412 # 800051a0 <CONSOLE_STATUS+0x190>
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	284080e7          	jalr	644(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(res);
    80001c2c:	00048513          	mv	a0,s1
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	3c0080e7          	jalr	960(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80001c38:	00003517          	auipc	a0,0x3
    80001c3c:	4f050513          	addi	a0,a0,1264 # 80005128 <CONSOLE_STATUS+0x118>
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	268080e7          	jalr	616(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("--------------------------------\n");
    80001c48:	00003517          	auipc	a0,0x3
    80001c4c:	47050513          	addi	a0,a0,1136 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	258080e7          	jalr	600(ra) # 80001ea8 <_Z11debug_printPKc>
        w_sstatus(sstatus);
    80001c58:	f7043783          	ld	a5,-144(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c5c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001c60:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c64:	14179073          	csrw	sepc,a5
    80001c68:	d3dff06f          	j	800019a4 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
        uint64 res = 0;
    80001c6c:	00000493          	li	s1,0
    80001c70:	fa5ff06f          	j	80001c14 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
                debug_print("MEM_FREE SYSCALL\n");
    80001c74:	00003517          	auipc	a0,0x3
    80001c78:	51450513          	addi	a0,a0,1300 # 80005188 <CONSOLE_STATUS+0x178>
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	22c080e7          	jalr	556(ra) # 80001ea8 <_Z11debug_printPKc>
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	624080e7          	jalr	1572(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001c8c:	00090593          	mv	a1,s2
    80001c90:	00001097          	auipc	ra,0x1
    80001c94:	acc080e7          	jalr	-1332(ra) # 8000275c <_ZN15MemoryAllocator8mem_freeEPv>
    80001c98:	00050493          	mv	s1,a0
                break;
    80001c9c:	f79ff06f          	j	80001c14 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	608080e7          	jalr	1544(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	960080e7          	jalr	-1696(ra) # 80002608 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    80001cb0:	00000493          	li	s1,0
                break;
    80001cb4:	f61ff06f          	j	80001c14 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001cb8:	00200793          	li	a5,2
    80001cbc:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001cc0:	00004717          	auipc	a4,0x4
    80001cc4:	30070713          	addi	a4,a4,768 # 80005fc0 <_ZN3TCB16timeSliceCounterE>
    80001cc8:	00073783          	ld	a5,0(a4)
    80001ccc:	00178793          	addi	a5,a5,1
    80001cd0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001cd4:	00004717          	auipc	a4,0x4
    80001cd8:	2f470713          	addi	a4,a4,756 # 80005fc8 <_ZN3TCB7runningE>
    80001cdc:	00073703          	ld	a4,0(a4)

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    80001ce0:	02073703          	ld	a4,32(a4)
    80001ce4:	cce7e0e3          	bltu	a5,a4,800019a4 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ce8:	141027f3          	csrr	a5,sepc
    80001cec:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001cf0:	fa843783          	ld	a5,-88(s0)
            uint64 volatile sepc = r_sepc();
    80001cf4:	f6f43c23          	sd	a5,-136(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cf8:	100027f3          	csrr	a5,sstatus
    80001cfc:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001d00:	fa043783          	ld	a5,-96(s0)
            uint64 volatile sstatus = r_sstatus();
    80001d04:	f8f43023          	sd	a5,-128(s0)
            TCB::timeSliceCounter = 0;
    80001d08:	00004797          	auipc	a5,0x4
    80001d0c:	2a07bc23          	sd	zero,696(a5) # 80005fc0 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	52c080e7          	jalr	1324(ra) # 8000223c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001d18:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d1c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001d20:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d24:	14179073          	csrw	sepc,a5
    80001d28:	c7dff06f          	j	800019a4 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
        console_handler();
    80001d2c:	00003097          	auipc	ra,0x3
    80001d30:	d64080e7          	jalr	-668(ra) # 80004a90 <console_handler>
    80001d34:	c71ff06f          	j	800019a4 <_ZN5Riscv20handleSupervisorTrapEv+0x68>

0000000080001d38 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001d38:	fe010113          	addi	sp,sp,-32
    80001d3c:	00113c23          	sd	ra,24(sp)
    80001d40:	00813823          	sd	s0,16(sp)
    80001d44:	00913423          	sd	s1,8(sp)
    80001d48:	02010413          	addi	s0,sp,32
    80001d4c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	558080e7          	jalr	1368(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001d58:	00048593          	mv	a1,s1
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	6b0080e7          	jalr	1712(ra) # 8000240c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d64:	01813083          	ld	ra,24(sp)
    80001d68:	01013403          	ld	s0,16(sp)
    80001d6c:	00813483          	ld	s1,8(sp)
    80001d70:	02010113          	addi	sp,sp,32
    80001d74:	00008067          	ret

0000000080001d78 <_Znam>:

void *operator new[](size_t n)
{
    80001d78:	fe010113          	addi	sp,sp,-32
    80001d7c:	00113c23          	sd	ra,24(sp)
    80001d80:	00813823          	sd	s0,16(sp)
    80001d84:	00913423          	sd	s1,8(sp)
    80001d88:	02010413          	addi	s0,sp,32
    80001d8c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	518080e7          	jalr	1304(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001d98:	00048593          	mv	a1,s1
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	670080e7          	jalr	1648(ra) # 8000240c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001da4:	01813083          	ld	ra,24(sp)
    80001da8:	01013403          	ld	s0,16(sp)
    80001dac:	00813483          	ld	s1,8(sp)
    80001db0:	02010113          	addi	sp,sp,32
    80001db4:	00008067          	ret

0000000080001db8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001db8:	fe010113          	addi	sp,sp,-32
    80001dbc:	00113c23          	sd	ra,24(sp)
    80001dc0:	00813823          	sd	s0,16(sp)
    80001dc4:	00913423          	sd	s1,8(sp)
    80001dc8:	02010413          	addi	s0,sp,32
    80001dcc:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	4d8080e7          	jalr	1240(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001dd8:	00048593          	mv	a1,s1
    80001ddc:	00001097          	auipc	ra,0x1
    80001de0:	980080e7          	jalr	-1664(ra) # 8000275c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001de4:	01813083          	ld	ra,24(sp)
    80001de8:	01013403          	ld	s0,16(sp)
    80001dec:	00813483          	ld	s1,8(sp)
    80001df0:	02010113          	addi	sp,sp,32
    80001df4:	00008067          	ret

0000000080001df8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001df8:	fe010113          	addi	sp,sp,-32
    80001dfc:	00113c23          	sd	ra,24(sp)
    80001e00:	00813823          	sd	s0,16(sp)
    80001e04:	00913423          	sd	s1,8(sp)
    80001e08:	02010413          	addi	s0,sp,32
    80001e0c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	498080e7          	jalr	1176(ra) # 800022a8 <_ZN15MemoryAllocator11getInstanceEv>
    80001e18:	00048593          	mv	a1,s1
    80001e1c:	00001097          	auipc	ra,0x1
    80001e20:	940080e7          	jalr	-1728(ra) # 8000275c <_ZN15MemoryAllocator8mem_freeEPv>
    80001e24:	01813083          	ld	ra,24(sp)
    80001e28:	01013403          	ld	s0,16(sp)
    80001e2c:	00813483          	ld	s1,8(sp)
    80001e30:	02010113          	addi	sp,sp,32
    80001e34:	00008067          	ret

0000000080001e38 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001e38:	fd010113          	addi	sp,sp,-48
    80001e3c:	02113423          	sd	ra,40(sp)
    80001e40:	02813023          	sd	s0,32(sp)
    80001e44:	00913c23          	sd	s1,24(sp)
    80001e48:	01213823          	sd	s2,16(sp)
    80001e4c:	03010413          	addi	s0,sp,48
    80001e50:	00050493          	mv	s1,a0
inline uint64 Riscv::r_sstatus()
    80001e54:	100027f3          	csrr	a5,sstatus
    80001e58:	fcf43c23          	sd	a5,-40(s0)
{
    80001e5c:	fd843903          	ld	s2,-40(s0)

    80001e60:	00200793          	li	a5,2
    80001e64:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001e68:	0004c503          	lbu	a0,0(s1)
    80001e6c:	00050a63          	beqz	a0,80001e80 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e70:	00003097          	auipc	ra,0x3
    80001e74:	bac080e7          	jalr	-1108(ra) # 80004a1c <__putc>
        string++;
    80001e78:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e7c:	fedff06f          	j	80001e68 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e80:	0009091b          	sext.w	s2,s2
    80001e84:	00297913          	andi	s2,s2,2
    80001e88:	0009091b          	sext.w	s2,s2

    80001e8c:	10092073          	csrs	sstatus,s2
}
    80001e90:	02813083          	ld	ra,40(sp)
    80001e94:	02013403          	ld	s0,32(sp)
    80001e98:	01813483          	ld	s1,24(sp)
    80001e9c:	01013903          	ld	s2,16(sp)
    80001ea0:	03010113          	addi	sp,sp,48
    80001ea4:	00008067          	ret

0000000080001ea8 <_Z11debug_printPKc>:
    #if DEBUG_PRINT == 1
    printInteger(integer);
    #endif
}

void debug_print(char const *string) {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    #if DEBUG_PRINT == 1
    printString(string);
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	f80080e7          	jalr	-128(ra) # 80001e38 <_Z11printStringPKc>
    #endif
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_Z6assertbPKc>:

void assert(bool condition, char const *debug_message) {
    if (!condition) {
    80001ed0:	00050463          	beqz	a0,80001ed8 <_Z6assertbPKc+0x8>
    80001ed4:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	00813823          	sd	s0,16(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	02010413          	addi	s0,sp,32
    80001eec:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80001ef0:	00003517          	auipc	a0,0x3
    80001ef4:	2c850513          	addi	a0,a0,712 # 800051b8 <_ZZ12printIntegermE6digits+0x10>
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	fb0080e7          	jalr	-80(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(debug_message);
    80001f00:	00048513          	mv	a0,s1
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	fa4080e7          	jalr	-92(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("\n");
    80001f0c:	00003517          	auipc	a0,0x3
    80001f10:	21c50513          	addi	a0,a0,540 # 80005128 <CONSOLE_STATUS+0x118>
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	f94080e7          	jalr	-108(ra) # 80001ea8 <_Z11debug_printPKc>
    }
}
    80001f1c:	01813083          	ld	ra,24(sp)
    80001f20:	01013403          	ld	s0,16(sp)
    80001f24:	00813483          	ld	s1,8(sp)
    80001f28:	02010113          	addi	sp,sp,32
    80001f2c:	00008067          	ret

0000000080001f30 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001f30:	fc010113          	addi	sp,sp,-64
    80001f34:	02113c23          	sd	ra,56(sp)
    80001f38:	02813823          	sd	s0,48(sp)
    80001f3c:	02913423          	sd	s1,40(sp)
    80001f40:	03213023          	sd	s2,32(sp)
    80001f44:	04010413          	addi	s0,sp,64
inline uint64 Riscv::r_sstatus()
    80001f48:	100027f3          	csrr	a5,sstatus
    80001f4c:	fcf43423          	sd	a5,-56(s0)
{
    80001f50:	fc843903          	ld	s2,-56(s0)

    80001f54:	00200793          	li	a5,2
    80001f58:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f5c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001f60:	00000713          	li	a4,0
    80001f64:	0080006f          	j	80001f6c <_Z12printIntegerm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80001f68:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    80001f6c:	00a00793          	li	a5,10
    80001f70:	02f5763b          	remuw	a2,a0,a5
    80001f74:	0017049b          	addiw	s1,a4,1
    80001f78:	00003697          	auipc	a3,0x3
    80001f7c:	23068693          	addi	a3,a3,560 # 800051a8 <_ZZ12printIntegermE6digits>
    80001f80:	00c686b3          	add	a3,a3,a2
    80001f84:	0006c683          	lbu	a3,0(a3)
    80001f88:	fe040613          	addi	a2,s0,-32
    80001f8c:	00e60733          	add	a4,a2,a4
    80001f90:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    80001f94:	02f557bb          	divuw	a5,a0,a5
    80001f98:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    80001f9c:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80001fa0:	00900793          	li	a5,9
    80001fa4:	fca7e2e3          	bltu	a5,a0,80001f68 <_Z12printIntegerm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001fa8:	fff4849b          	addiw	s1,s1,-1
    80001fac:	0004ce63          	bltz	s1,80001fc8 <_Z12printIntegerm+0x98>
    80001fb0:	fe040793          	addi	a5,s0,-32
    80001fb4:	009787b3          	add	a5,a5,s1
    80001fb8:	ff07c503          	lbu	a0,-16(a5)
    80001fbc:	00003097          	auipc	ra,0x3
    80001fc0:	a60080e7          	jalr	-1440(ra) # 80004a1c <__putc>
    80001fc4:	fe5ff06f          	j	80001fa8 <_Z12printIntegerm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001fc8:	0009091b          	sext.w	s2,s2
    80001fcc:	00297913          	andi	s2,s2,2
    80001fd0:	0009091b          	sext.w	s2,s2

    80001fd4:	10092073          	csrs	sstatus,s2
    80001fd8:	03813083          	ld	ra,56(sp)
    80001fdc:	03013403          	ld	s0,48(sp)
    80001fe0:	02813483          	ld	s1,40(sp)
    80001fe4:	02013903          	ld	s2,32(sp)
    80001fe8:	04010113          	addi	sp,sp,64
    80001fec:	00008067          	ret

0000000080001ff0 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    printInteger(integer);
    80002000:	00000097          	auipc	ra,0x0
    80002004:	f30080e7          	jalr	-208(ra) # 80001f30 <_Z12printIntegerm>
}
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    80002018:	fd010113          	addi	sp,sp,-48
    8000201c:	02113423          	sd	ra,40(sp)
    80002020:	02813023          	sd	s0,32(sp)
    80002024:	00913c23          	sd	s1,24(sp)
    80002028:	01213823          	sd	s2,16(sp)
    8000202c:	03010413          	addi	s0,sp,48
    TCB *threads[2];

    debug_print("Main thread created\n");
    80002030:	00003517          	auipc	a0,0x3
    80002034:	1a050513          	addi	a0,a0,416 # 800051d0 <_ZZ12printIntegermE6digits+0x28>
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	e70080e7          	jalr	-400(ra) # 80001ea8 <_Z11debug_printPKc>
    threads[0] = TCB::createThread(nullptr);
    80002040:	00000513          	li	a0,0
    80002044:	00000097          	auipc	ra,0x0
    80002048:	0bc080e7          	jalr	188(ra) # 80002100 <_ZN3TCB12createThreadEPFvvE>
    8000204c:	fca43823          	sd	a0,-48(s0)
    TCB::running = threads[0];
    80002050:	00004797          	auipc	a5,0x4
    80002054:	f6a7bc23          	sd	a0,-136(a5) # 80005fc8 <_ZN3TCB7runningE>

    threads[1] = TCB::createThread(workerTest);
    80002058:	fffff517          	auipc	a0,0xfffff
    8000205c:	7d450513          	addi	a0,a0,2004 # 8000182c <_Z10workerTestv>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	0a0080e7          	jalr	160(ra) # 80002100 <_ZN3TCB12createThreadEPFvvE>
    80002068:	fca43c23          	sd	a0,-40(s0)
    // threads[3] = TCB::createThread(workerBodyC);
    // printString("ThreadC created\n");
    // threads[4] = TCB::createThread(workerBodyD);
    // printString("ThreadD created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    8000206c:	fffff797          	auipc	a5,0xfffff
    80002070:	f9478793          	addi	a5,a5,-108 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002074:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002078:	00200793          	li	a5,2
    8000207c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!threads[1]->isFinished())
    80002080:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80002084:	0287c783          	lbu	a5,40(a5)
    80002088:	00079863          	bnez	a5,80002098 <main+0x80>
        TCB::yield();
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	13c080e7          	jalr	316(ra) # 800021c8 <_ZN3TCB5yieldEv>
    80002094:	fedff06f          	j	80002080 <main+0x68>

    for (auto &thread: threads)
    80002098:	fd040493          	addi	s1,s0,-48
    8000209c:	0140006f          	j	800020b0 <main+0x98>
    {
        delete thread;
    800020a0:	00090513          	mv	a0,s2
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	d14080e7          	jalr	-748(ra) # 80001db8 <_ZdlPv>
    for (auto &thread: threads)
    800020ac:	00848493          	addi	s1,s1,8
    800020b0:	fe040793          	addi	a5,s0,-32
    800020b4:	02f48063          	beq	s1,a5,800020d4 <main+0xbc>
        delete thread;
    800020b8:	0004b903          	ld	s2,0(s1)
    800020bc:	fe0908e3          	beqz	s2,800020ac <main+0x94>
    ~TCB() { delete[] stack; }
    800020c0:	00893503          	ld	a0,8(s2)
    800020c4:	fc050ee3          	beqz	a0,800020a0 <main+0x88>
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	d30080e7          	jalr	-720(ra) # 80001df8 <_ZdaPv>
    800020d0:	fd1ff06f          	j	800020a0 <main+0x88>
    }
    printString("Finished\n");
    800020d4:	00003517          	auipc	a0,0x3
    800020d8:	11450513          	addi	a0,a0,276 # 800051e8 <_ZZ12printIntegermE6digits+0x40>
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	d5c080e7          	jalr	-676(ra) # 80001e38 <_Z11printStringPKc>

    return 0;
}
    800020e4:	00000513          	li	a0,0
    800020e8:	02813083          	ld	ra,40(sp)
    800020ec:	02013403          	ld	s0,32(sp)
    800020f0:	01813483          	ld	s1,24(sp)
    800020f4:	01013903          	ld	s2,16(sp)
    800020f8:	03010113          	addi	sp,sp,48
    800020fc:	00008067          	ret

0000000080002100 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80002100:	fe010113          	addi	sp,sp,-32
    80002104:	00113c23          	sd	ra,24(sp)
    80002108:	00813823          	sd	s0,16(sp)
    8000210c:	00913423          	sd	s1,8(sp)
    80002110:	01213023          	sd	s2,0(sp)
    80002114:	02010413          	addi	s0,sp,32
    80002118:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    8000211c:	03000513          	li	a0,48
    80002120:	00000097          	auipc	ra,0x0
    80002124:	c18080e7          	jalr	-1000(ra) # 80001d38 <_Znwm>
    80002128:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    8000212c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002130:	00090a63          	beqz	s2,80002144 <_ZN3TCB12createThreadEPFvvE+0x44>
    80002134:	00002537          	lui	a0,0x2
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	c40080e7          	jalr	-960(ra) # 80001d78 <_Znam>
    80002140:	0080006f          	j	80002148 <_ZN3TCB12createThreadEPFvvE+0x48>
    80002144:	00000513          	li	a0,0
            finished(false)
    80002148:	00a4b423          	sd	a0,8(s1)
    8000214c:	00000797          	auipc	a5,0x0
    80002150:	09878793          	addi	a5,a5,152 # 800021e4 <_ZN3TCB13threadWrapperEv>
    80002154:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002158:	02050863          	beqz	a0,80002188 <_ZN3TCB12createThreadEPFvvE+0x88>
    8000215c:	000027b7          	lui	a5,0x2
    80002160:	00f50533          	add	a0,a0,a5
            finished(false)
    80002164:	00a4bc23          	sd	a0,24(s1)
    80002168:	00200793          	li	a5,2
    8000216c:	02f4b023          	sd	a5,32(s1)
    80002170:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80002174:	02090c63          	beqz	s2,800021ac <_ZN3TCB12createThreadEPFvvE+0xac>
    80002178:	00048513          	mv	a0,s1
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	054080e7          	jalr	84(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
    80002184:	0280006f          	j	800021ac <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002188:	00000513          	li	a0,0
    8000218c:	fd9ff06f          	j	80002164 <_ZN3TCB12createThreadEPFvvE+0x64>
    80002190:	00050913          	mv	s2,a0
    80002194:	00048513          	mv	a0,s1
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	c20080e7          	jalr	-992(ra) # 80001db8 <_ZdlPv>
    800021a0:	00090513          	mv	a0,s2
    800021a4:	00005097          	auipc	ra,0x5
    800021a8:	f34080e7          	jalr	-204(ra) # 800070d8 <_Unwind_Resume>
}
    800021ac:	00048513          	mv	a0,s1
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	00013903          	ld	s2,0(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret

00000000800021c8 <_ZN3TCB5yieldEv>:

// Let's scheduler decide the next process.
void TCB::yield()
{
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00813423          	sd	s0,8(sp)
    800021d0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800021d4:	00000073          	ecall
}
    800021d8:	00813403          	ld	s0,8(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    800021e4:	fe010113          	addi	sp,sp,-32
    800021e8:	00113c23          	sd	ra,24(sp)
    800021ec:	00813823          	sd	s0,16(sp)
    800021f0:	00913423          	sd	s1,8(sp)
    800021f4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	724080e7          	jalr	1828(ra) # 8000191c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80002200:	00004497          	auipc	s1,0x4
    80002204:	dc848493          	addi	s1,s1,-568 # 80005fc8 <_ZN3TCB7runningE>
    80002208:	0004b783          	ld	a5,0(s1)
    8000220c:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80002210:	000780e7          	jalr	a5
    running->setFinished(true);
    80002214:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80002218:	00100713          	li	a4,1
    8000221c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80002220:	00000097          	auipc	ra,0x0
    80002224:	fa8080e7          	jalr	-88(ra) # 800021c8 <_ZN3TCB5yieldEv>
}
    80002228:	01813083          	ld	ra,24(sp)
    8000222c:	01013403          	ld	s0,16(sp)
    80002230:	00813483          	ld	s1,8(sp)
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret

000000008000223c <_ZN3TCB8dispatchEv>:
{
    8000223c:	fe010113          	addi	sp,sp,-32
    80002240:	00113c23          	sd	ra,24(sp)
    80002244:	00813823          	sd	s0,16(sp)
    80002248:	00913423          	sd	s1,8(sp)
    8000224c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002250:	00004797          	auipc	a5,0x4
    80002254:	d7878793          	addi	a5,a5,-648 # 80005fc8 <_ZN3TCB7runningE>
    80002258:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return finished; }
    8000225c:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002260:	02078c63          	beqz	a5,80002298 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	f00080e7          	jalr	-256(ra) # 80001164 <_ZN9Scheduler3getEv>
    8000226c:	00004797          	auipc	a5,0x4
    80002270:	d4a7be23          	sd	a0,-676(a5) # 80005fc8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002274:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80002278:	01048513          	addi	a0,s1,16
    8000227c:	fffff097          	auipc	ra,0xfffff
    80002280:	e94080e7          	jalr	-364(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002284:	01813083          	ld	ra,24(sp)
    80002288:	01013403          	ld	s0,16(sp)
    8000228c:	00813483          	ld	s1,8(sp)
    80002290:	02010113          	addi	sp,sp,32
    80002294:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002298:	00048513          	mv	a0,s1
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	f34080e7          	jalr	-204(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
    800022a4:	fc1ff06f          	j	80002264 <_ZN3TCB8dispatchEv+0x28>

00000000800022a8 <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    800022a8:	00004797          	auipc	a5,0x4
    800022ac:	d2878793          	addi	a5,a5,-728 # 80005fd0 <_ZN15MemoryAllocator9instance_E>
    800022b0:	0007b783          	ld	a5,0(a5)
    800022b4:	00078a63          	beqz	a5,800022c8 <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    800022b8:	00004797          	auipc	a5,0x4
    800022bc:	d1878793          	addi	a5,a5,-744 # 80005fd0 <_ZN15MemoryAllocator9instance_E>
    800022c0:	0007b503          	ld	a0,0(a5)
    800022c4:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    800022c8:	fd010113          	addi	sp,sp,-48
    800022cc:	02113423          	sd	ra,40(sp)
    800022d0:	02813023          	sd	s0,32(sp)
    800022d4:	00913c23          	sd	s1,24(sp)
    800022d8:	01213823          	sd	s2,16(sp)
    800022dc:	01313423          	sd	s3,8(sp)
    800022e0:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    800022e4:	00004997          	auipc	s3,0x4
    800022e8:	c6c98993          	addi	s3,s3,-916 # 80005f50 <HEAP_START_ADDR>
    800022ec:	0009b783          	ld	a5,0(s3)
    800022f0:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    800022f4:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    800022f8:	00004497          	auipc	s1,0x4
    800022fc:	cd848493          	addi	s1,s1,-808 # 80005fd0 <_ZN15MemoryAllocator9instance_E>
    80002300:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80002304:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    80002308:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    8000230c:	0004b783          	ld	a5,0(s1)
    80002310:	0007b783          	ld	a5,0(a5)
    80002314:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    80002318:	0004b783          	ld	a5,0(s1)
    8000231c:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    80002320:	00004917          	auipc	s2,0x4
    80002324:	c2890913          	addi	s2,s2,-984 # 80005f48 <HEAP_END_ADDR>
    80002328:	00093783          	ld	a5,0(s2)
    8000232c:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    80002330:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80002334:	00003517          	auipc	a0,0x3
    80002338:	ec450513          	addi	a0,a0,-316 # 800051f8 <_ZZ12printIntegermE6digits+0x50>
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	b6c080e7          	jalr	-1172(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80002344:	00003517          	auipc	a0,0x3
    80002348:	edc50513          	addi	a0,a0,-292 # 80005220 <_ZZ12printIntegermE6digits+0x78>
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	b5c080e7          	jalr	-1188(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80002354:	04000513          	li	a0,64
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	c98080e7          	jalr	-872(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    80002360:	00003517          	auipc	a0,0x3
    80002364:	ed850513          	addi	a0,a0,-296 # 80005238 <_ZZ12printIntegermE6digits+0x90>
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	b40080e7          	jalr	-1216(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    80002370:	0009b503          	ld	a0,0(s3)
    80002374:	00000097          	auipc	ra,0x0
    80002378:	c7c080e7          	jalr	-900(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    8000237c:	00003517          	auipc	a0,0x3
    80002380:	ed450513          	addi	a0,a0,-300 # 80005250 <_ZZ12printIntegermE6digits+0xa8>
    80002384:	00000097          	auipc	ra,0x0
    80002388:	b24080e7          	jalr	-1244(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    8000238c:	00093503          	ld	a0,0(s2)
    80002390:	00000097          	auipc	ra,0x0
    80002394:	c60080e7          	jalr	-928(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    80002398:	00003517          	auipc	a0,0x3
    8000239c:	ed050513          	addi	a0,a0,-304 # 80005268 <_ZZ12printIntegermE6digits+0xc0>
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	b08080e7          	jalr	-1272(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    800023a8:	0004b783          	ld	a5,0(s1)
    800023ac:	0007b503          	ld	a0,0(a5)
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	c40080e7          	jalr	-960(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    800023b8:	00003517          	auipc	a0,0x3
    800023bc:	ed050513          	addi	a0,a0,-304 # 80005288 <_ZZ12printIntegermE6digits+0xe0>
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	ae8080e7          	jalr	-1304(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    800023c8:	01000513          	li	a0,16
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	c24080e7          	jalr	-988(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    800023d4:	00003517          	auipc	a0,0x3
    800023d8:	d5450513          	addi	a0,a0,-684 # 80005128 <CONSOLE_STATUS+0x118>
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	acc080e7          	jalr	-1332(ra) # 80001ea8 <_Z11debug_printPKc>
}
    800023e4:	00004797          	auipc	a5,0x4
    800023e8:	bec78793          	addi	a5,a5,-1044 # 80005fd0 <_ZN15MemoryAllocator9instance_E>
    800023ec:	0007b503          	ld	a0,0(a5)
    800023f0:	02813083          	ld	ra,40(sp)
    800023f4:	02013403          	ld	s0,32(sp)
    800023f8:	01813483          	ld	s1,24(sp)
    800023fc:	01013903          	ld	s2,16(sp)
    80002400:	00813983          	ld	s3,8(sp)
    80002404:	03010113          	addi	sp,sp,48
    80002408:	00008067          	ret

000000008000240c <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    8000240c:	fd010113          	addi	sp,sp,-48
    80002410:	02113423          	sd	ra,40(sp)
    80002414:	02813023          	sd	s0,32(sp)
    80002418:	00913c23          	sd	s1,24(sp)
    8000241c:	01213823          	sd	s2,16(sp)
    80002420:	01313423          	sd	s3,8(sp)
    80002424:	03010413          	addi	s0,sp,48
    80002428:	00050993          	mv	s3,a0
    8000242c:	00058913          	mv	s2,a1

    debug_print("Allocating memory of size: ");
    80002430:	00003517          	auipc	a0,0x3
    80002434:	e7850513          	addi	a0,a0,-392 # 800052a8 <_ZZ12printIntegermE6digits+0x100>
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	a70080e7          	jalr	-1424(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print(size);
    80002440:	00090513          	mv	a0,s2
    80002444:	00000097          	auipc	ra,0x0
    80002448:	bac080e7          	jalr	-1108(ra) # 80001ff0 <_Z11debug_printm>
    debug_print("\n");
    8000244c:	00003517          	auipc	a0,0x3
    80002450:	cdc50513          	addi	a0,a0,-804 # 80005128 <CONSOLE_STATUS+0x118>
    80002454:	00000097          	auipc	ra,0x0
    80002458:	a54080e7          	jalr	-1452(ra) # 80001ea8 <_Z11debug_printPKc>

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    8000245c:	0009b483          	ld	s1,0(s3)
    80002460:	0c048263          	beqz	s1,80002524 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    80002464:	04f90913          	addi	s2,s2,79
    80002468:	fc097913          	andi	s2,s2,-64
           & ~(MEM_BLOCK_SIZE - 1);

    debug_print("Aligned size: ");
    8000246c:	00003517          	auipc	a0,0x3
    80002470:	e5c50513          	addi	a0,a0,-420 # 800052c8 <_ZZ12printIntegermE6digits+0x120>
    80002474:	00000097          	auipc	ra,0x0
    80002478:	a34080e7          	jalr	-1484(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print(size);
    8000247c:	00090513          	mv	a0,s2
    80002480:	00000097          	auipc	ra,0x0
    80002484:	b70080e7          	jalr	-1168(ra) # 80001ff0 <_Z11debug_printm>
    debug_print("\n");
    80002488:	00003517          	auipc	a0,0x3
    8000248c:	ca050513          	addi	a0,a0,-864 # 80005128 <CONSOLE_STATUS+0x118>
    80002490:	00000097          	auipc	ra,0x0
    80002494:	a18080e7          	jalr	-1512(ra) # 80001ea8 <_Z11debug_printPKc>

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002498:	0009b483          	ld	s1,0(s3)
    8000249c:	00000713          	li	a4,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    800024a0:	00048c63          	beqz	s1,800024b8 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800024a4:	0084b783          	ld	a5,8(s1)
    800024a8:	0127f863          	bgeu	a5,s2,800024b8 <_ZN15MemoryAllocator9mem_allocEm+0xac>
        prev_free_block = free_block;
    800024ac:	00048713          	mv	a4,s1
        free_block = free_block->next_;
    800024b0:	0004b483          	ld	s1,0(s1)
    while (free_block && free_block->size_ < size) {
    800024b4:	fedff06f          	j	800024a0 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    800024b8:	06048663          	beqz	s1,80002524 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    800024bc:	0084b783          	ld	a5,8(s1)
    800024c0:	08f97663          	bgeu	s2,a5,8000254c <_ZN15MemoryAllocator9mem_allocEm+0x140>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    800024c4:	012486b3          	add	a3,s1,s2
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    800024c8:	06070e63          	beqz	a4,80002544 <_ZN15MemoryAllocator9mem_allocEm+0x138>
            prev_free_block->next_ = new_free_block;
    800024cc:	00d73023          	sd	a3,0(a4)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    800024d0:	0004b783          	ld	a5,0(s1)
    800024d4:	00f6b023          	sd	a5,0(a3)
        new_free_block->size_ = free_block->size_ - size;
    800024d8:	0084b783          	ld	a5,8(s1)
    800024dc:	412787b3          	sub	a5,a5,s2
    800024e0:	00f6b423          	sd	a5,8(a3)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    800024e4:	0124b423          	sd	s2,8(s1)

    debug_print("Allocated block at address: ");
    800024e8:	00003517          	auipc	a0,0x3
    800024ec:	df050513          	addi	a0,a0,-528 # 800052d8 <_ZZ12printIntegermE6digits+0x130>
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	9b8080e7          	jalr	-1608(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    800024f8:	01048913          	addi	s2,s1,16
    800024fc:	00090513          	mv	a0,s2
    80002500:	00000097          	auipc	ra,0x0
    80002504:	af0080e7          	jalr	-1296(ra) # 80001ff0 <_Z11debug_printm>
    debug_print("\n");
    80002508:	00003517          	auipc	a0,0x3
    8000250c:	c2050513          	addi	a0,a0,-992 # 80005128 <CONSOLE_STATUS+0x118>
    80002510:	00000097          	auipc	ra,0x0
    80002514:	998080e7          	jalr	-1640(ra) # 80001ea8 <_Z11debug_printPKc>

    if ((uint64)free_block % MEM_BLOCK_SIZE != 0) {
    80002518:	03f4f793          	andi	a5,s1,63
    8000251c:	04079663          	bnez	a5,80002568 <_ZN15MemoryAllocator9mem_allocEm+0x15c>
        debug_print("Free block address: ");
        debug_print((uint64)free_block);
        debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002520:	00090493          	mv	s1,s2
}
    80002524:	00048513          	mv	a0,s1
    80002528:	02813083          	ld	ra,40(sp)
    8000252c:	02013403          	ld	s0,32(sp)
    80002530:	01813483          	ld	s1,24(sp)
    80002534:	01013903          	ld	s2,16(sp)
    80002538:	00813983          	ld	s3,8(sp)
    8000253c:	03010113          	addi	sp,sp,48
    80002540:	00008067          	ret
            free_block_ptr_ = new_free_block;
    80002544:	00d9b023          	sd	a3,0(s3)
    80002548:	f89ff06f          	j	800024d0 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        if (prev_free_block) {
    8000254c:	00070863          	beqz	a4,8000255c <_ZN15MemoryAllocator9mem_allocEm+0x150>
            prev_free_block->next_ = free_block->next_;
    80002550:	0004b783          	ld	a5,0(s1)
    80002554:	00f73023          	sd	a5,0(a4)
    80002558:	f8dff06f          	j	800024e4 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            free_block_ptr_ = free_block->next_;
    8000255c:	0004b783          	ld	a5,0(s1)
    80002560:	00f9b023          	sd	a5,0(s3)
    80002564:	f81ff06f          	j	800024e4 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        debug_print("Allocated block address is not aligned to MEM_BLOCK_SIZE.\n");
    80002568:	00003517          	auipc	a0,0x3
    8000256c:	d9050513          	addi	a0,a0,-624 # 800052f8 <_ZZ12printIntegermE6digits+0x150>
    80002570:	00000097          	auipc	ra,0x0
    80002574:	938080e7          	jalr	-1736(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("Allocated block address: ");
    80002578:	00003517          	auipc	a0,0x3
    8000257c:	dc050513          	addi	a0,a0,-576 # 80005338 <_ZZ12printIntegermE6digits+0x190>
    80002580:	00000097          	auipc	ra,0x0
    80002584:	928080e7          	jalr	-1752(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002588:	00090513          	mv	a0,s2
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	a64080e7          	jalr	-1436(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80002594:	00003517          	auipc	a0,0x3
    80002598:	b9450513          	addi	a0,a0,-1132 # 80005128 <CONSOLE_STATUS+0x118>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	90c080e7          	jalr	-1780(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("Free block address: ");
    800025a4:	00003517          	auipc	a0,0x3
    800025a8:	db450513          	addi	a0,a0,-588 # 80005358 <_ZZ12printIntegermE6digits+0x1b0>
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	8fc080e7          	jalr	-1796(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print((uint64)free_block);
    800025b4:	00048513          	mv	a0,s1
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	a38080e7          	jalr	-1480(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    800025c0:	00003517          	auipc	a0,0x3
    800025c4:	b6850513          	addi	a0,a0,-1176 # 80005128 <CONSOLE_STATUS+0x118>
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	8e0080e7          	jalr	-1824(ra) # 80001ea8 <_Z11debug_printPKc>
    800025d0:	f51ff06f          	j	80002520 <_ZN15MemoryAllocator9mem_allocEm+0x114>

00000000800025d4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    800025e0:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    800025e4:	00000513          	li	a0,0
    while (free_block_iter) {
    800025e8:	00078a63          	beqz	a5,800025fc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    800025ec:	0087b703          	ld	a4,8(a5)
    800025f0:	fee57ce3          	bgeu	a0,a4,800025e8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    800025f4:	00070513          	mv	a0,a4
    800025f8:	ff1ff06f          	j	800025e8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    800025fc:	00813403          	ld	s0,8(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002608:	ff010113          	addi	sp,sp,-16
    8000260c:	00813423          	sd	s0,8(sp)
    80002610:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    80002614:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    80002618:	00000513          	li	a0,0
    while (free_block_iter) {
    8000261c:	00078a63          	beqz	a5,80002630 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    80002620:	0087b703          	ld	a4,8(a5)
    80002624:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    80002628:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    8000262c:	ff1ff06f          	j	8000261c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    80002630:	00813403          	ld	s0,8(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    8000263c:	fe010113          	addi	sp,sp,-32
    80002640:	00113c23          	sd	ra,24(sp)
    80002644:	00813823          	sd	s0,16(sp)
    80002648:	00913423          	sd	s1,8(sp)
    8000264c:	01213023          	sd	s2,0(sp)
    80002650:	02010413          	addi	s0,sp,32

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    80002654:	04058e63          	beqz	a1,800026b0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    80002658:	00058493          	mv	s1,a1
    8000265c:	00060913          	mv	s2,a2
    80002660:	04060863          	beqz	a2,800026b0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
        debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    80002664:	00003597          	auipc	a1,0x3
    80002668:	d4458593          	addi	a1,a1,-700 # 800053a8 <_ZZ12printIntegermE6digits+0x200>
    8000266c:	00c4b533          	sltu	a0,s1,a2
    80002670:	00000097          	auipc	ra,0x0
    80002674:	860080e7          	jalr	-1952(ra) # 80001ed0 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    80002678:	0084b783          	ld	a5,8(s1)
    8000267c:	00f48733          	add	a4,s1,a5
    80002680:	04e91263          	bne	s2,a4,800026c4 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x88>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002684:	00893703          	ld	a4,8(s2)
    80002688:	00e787b3          	add	a5,a5,a4
    8000268c:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002690:	00093783          	ld	a5,0(s2)
    80002694:	00f4b023          	sd	a5,0(s1)
    80002698:	01813083          	ld	ra,24(sp)
    8000269c:	01013403          	ld	s0,16(sp)
    800026a0:	00813483          	ld	s1,8(sp)
    800026a4:	00013903          	ld	s2,0(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret
        debug_print("Cannot consolidate blocks, one of them is null.\n");
    800026b0:	00003517          	auipc	a0,0x3
    800026b4:	cc050513          	addi	a0,a0,-832 # 80005370 <_ZZ12printIntegermE6digits+0x1c8>
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	7f0080e7          	jalr	2032(ra) # 80001ea8 <_Z11debug_printPKc>
        return;
    800026c0:	fd9ff06f          	j	80002698 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        debug_print("First block address: ");
    800026c4:	00003517          	auipc	a0,0x3
    800026c8:	d2450513          	addi	a0,a0,-732 # 800053e8 <_ZZ12printIntegermE6digits+0x240>
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	7dc080e7          	jalr	2012(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print((uint64)first_block);
    800026d4:	00048513          	mv	a0,s1
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	918080e7          	jalr	-1768(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    800026e0:	00003517          	auipc	a0,0x3
    800026e4:	a4850513          	addi	a0,a0,-1464 # 80005128 <CONSOLE_STATUS+0x118>
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	7c0080e7          	jalr	1984(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("First block size: ");
    800026f0:	00003517          	auipc	a0,0x3
    800026f4:	d1050513          	addi	a0,a0,-752 # 80005400 <_ZZ12printIntegermE6digits+0x258>
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	7b0080e7          	jalr	1968(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print(first_block->size_);
    80002700:	0084b503          	ld	a0,8(s1)
    80002704:	00000097          	auipc	ra,0x0
    80002708:	8ec080e7          	jalr	-1812(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    8000270c:	00003517          	auipc	a0,0x3
    80002710:	a1c50513          	addi	a0,a0,-1508 # 80005128 <CONSOLE_STATUS+0x118>
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	794080e7          	jalr	1940(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("Second block address: ");
    8000271c:	00003517          	auipc	a0,0x3
    80002720:	cfc50513          	addi	a0,a0,-772 # 80005418 <_ZZ12printIntegermE6digits+0x270>
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	784080e7          	jalr	1924(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print((uint64)second_block);
    8000272c:	00090513          	mv	a0,s2
    80002730:	00000097          	auipc	ra,0x0
    80002734:	8c0080e7          	jalr	-1856(ra) # 80001ff0 <_Z11debug_printm>
        debug_print("\n");
    80002738:	00003517          	auipc	a0,0x3
    8000273c:	9f050513          	addi	a0,a0,-1552 # 80005128 <CONSOLE_STATUS+0x118>
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	768080e7          	jalr	1896(ra) # 80001ea8 <_Z11debug_printPKc>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
    80002748:	00003517          	auipc	a0,0x3
    8000274c:	ce850513          	addi	a0,a0,-792 # 80005430 <_ZZ12printIntegermE6digits+0x288>
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	758080e7          	jalr	1880(ra) # 80001ea8 <_Z11debug_printPKc>
        return;
    80002758:	f41ff06f          	j	80002698 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>

000000008000275c <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    8000275c:	fc010113          	addi	sp,sp,-64
    80002760:	02113c23          	sd	ra,56(sp)
    80002764:	02813823          	sd	s0,48(sp)
    80002768:	02913423          	sd	s1,40(sp)
    8000276c:	03213023          	sd	s2,32(sp)
    80002770:	01313c23          	sd	s3,24(sp)
    80002774:	01413823          	sd	s4,16(sp)
    80002778:	01513423          	sd	s5,8(sp)
    8000277c:	04010413          	addi	s0,sp,64
    80002780:	00050a93          	mv	s5,a0
    80002784:	00058a13          	mv	s4,a1
    debug_print("Freeing block at address: ");
    80002788:	00003517          	auipc	a0,0x3
    8000278c:	ce050513          	addi	a0,a0,-800 # 80005468 <_ZZ12printIntegermE6digits+0x2c0>
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	718080e7          	jalr	1816(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print((uint64)free_block_addr);
    80002798:	000a0513          	mv	a0,s4
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	854080e7          	jalr	-1964(ra) # 80001ff0 <_Z11debug_printm>
    debug_print("\n");
    800027a4:	00003517          	auipc	a0,0x3
    800027a8:	98450513          	addi	a0,a0,-1660 # 80005128 <CONSOLE_STATUS+0x118>
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	6fc080e7          	jalr	1788(ra) # 80001ea8 <_Z11debug_printPKc>
    if (!free_block_addr) {
    800027b4:	040a0063          	beqz	s4,800027f4 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    800027b8:	ff0a0993          	addi	s3,s4,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    800027bc:	00098793          	mv	a5,s3
    800027c0:	03f9f713          	andi	a4,s3,63
    800027c4:	04071463          	bnez	a4,8000280c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    800027c8:	00003717          	auipc	a4,0x3
    800027cc:	78870713          	addi	a4,a4,1928 # 80005f50 <HEAP_START_ADDR>
    800027d0:	00073703          	ld	a4,0(a4)
    800027d4:	04e9e863          	bltu	s3,a4,80002824 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    800027d8:	00003717          	auipc	a4,0x3
    800027dc:	77070713          	addi	a4,a4,1904 # 80005f48 <HEAP_END_ADDR>
    800027e0:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    800027e4:	04e9f063          	bgeu	s3,a4,80002824 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    800027e8:	000ab483          	ld	s1,0(s5)
    800027ec:	00000913          	li	s2,0
    800027f0:	0540006f          	j	80002844 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        debug_print("Free block address is null.\n");
    800027f4:	00003517          	auipc	a0,0x3
    800027f8:	c9450513          	addi	a0,a0,-876 # 80005488 <_ZZ12printIntegermE6digits+0x2e0>
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	6ac080e7          	jalr	1708(ra) # 80001ea8 <_Z11debug_printPKc>
        return -1;
    80002804:	fff00513          	li	a0,-1
    80002808:	1140006f          	j	8000291c <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    8000280c:	00003517          	auipc	a0,0x3
    80002810:	c9c50513          	addi	a0,a0,-868 # 800054a8 <_ZZ12printIntegermE6digits+0x300>
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	694080e7          	jalr	1684(ra) # 80001ea8 <_Z11debug_printPKc>
        return -2;
    8000281c:	ffe00513          	li	a0,-2
    80002820:	0fc0006f          	j	8000291c <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not in the heap.\n");
    80002824:	00003517          	auipc	a0,0x3
    80002828:	cbc50513          	addi	a0,a0,-836 # 800054e0 <_ZZ12printIntegermE6digits+0x338>
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	67c080e7          	jalr	1660(ra) # 80001ea8 <_Z11debug_printPKc>
        return -3;
    80002834:	ffd00513          	li	a0,-3
    80002838:	0e40006f          	j	8000291c <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        prev_free_block = next_free_block;
    8000283c:	00048913          	mv	s2,s1
        next_free_block = next_free_block->next_;
    80002840:	0004b483          	ld	s1,0(s1)
    while (next_free_block &&
    80002844:	00048663          	beqz	s1,80002850 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    80002848:	fe97fae3          	bgeu	a5,s1,8000283c <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
          !(((uint64)next_free_block > (uint64)block_info) &&
    8000284c:	fef978e3          	bgeu	s2,a5,8000283c <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    debug_print("Prev free block: ");
    80002850:	00003517          	auipc	a0,0x3
    80002854:	cb850513          	addi	a0,a0,-840 # 80005508 <_ZZ12printIntegermE6digits+0x360>
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	650080e7          	jalr	1616(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print((uint64)prev_free_block);
    80002860:	00090513          	mv	a0,s2
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	78c080e7          	jalr	1932(ra) # 80001ff0 <_Z11debug_printm>
    debug_print("\n");
    8000286c:	00003517          	auipc	a0,0x3
    80002870:	8bc50513          	addi	a0,a0,-1860 # 80005128 <CONSOLE_STATUS+0x118>
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	634080e7          	jalr	1588(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print("Block info: ");
    8000287c:	00003517          	auipc	a0,0x3
    80002880:	ca450513          	addi	a0,a0,-860 # 80005520 <_ZZ12printIntegermE6digits+0x378>
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	624080e7          	jalr	1572(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print((uint64)block_info);
    8000288c:	00098513          	mv	a0,s3
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	760080e7          	jalr	1888(ra) # 80001ff0 <_Z11debug_printm>
    debug_print("\n");
    80002898:	00003517          	auipc	a0,0x3
    8000289c:	89050513          	addi	a0,a0,-1904 # 80005128 <CONSOLE_STATUS+0x118>
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	608080e7          	jalr	1544(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print("Next free block: ");
    800028a8:	00003517          	auipc	a0,0x3
    800028ac:	c8850513          	addi	a0,a0,-888 # 80005530 <_ZZ12printIntegermE6digits+0x388>
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	5f8080e7          	jalr	1528(ra) # 80001ea8 <_Z11debug_printPKc>
    debug_print((uint64)next_free_block);
    800028b8:	00048513          	mv	a0,s1
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	734080e7          	jalr	1844(ra) # 80001ff0 <_Z11debug_printm>
    debug_print("\n");
    800028c4:	00003517          	auipc	a0,0x3
    800028c8:	86450513          	addi	a0,a0,-1948 # 80005128 <CONSOLE_STATUS+0x118>
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	5dc080e7          	jalr	1500(ra) # 80001ea8 <_Z11debug_printPKc>
    if (!prev_free_block) {
    800028d4:	06090663          	beqz	s2,80002940 <_ZN15MemoryAllocator8mem_freeEPv+0x1e4>
        debug_print("Block is not the first free block.\n");
    800028d8:	00003517          	auipc	a0,0x3
    800028dc:	c9050513          	addi	a0,a0,-880 # 80005568 <_ZZ12printIntegermE6digits+0x3c0>
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	5c8080e7          	jalr	1480(ra) # 80001ea8 <_Z11debug_printPKc>
        prev_free_block->next_ = block_info;
    800028e8:	01393023          	sd	s3,0(s2)
    block_info->next_ = next_free_block;
    800028ec:	fe9a3823          	sd	s1,-16(s4)
    maybe_consolidate(block_info, next_free_block);
    800028f0:	00048613          	mv	a2,s1
    800028f4:	00098593          	mv	a1,s3
    800028f8:	000a8513          	mv	a0,s5
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	d40080e7          	jalr	-704(ra) # 8000263c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80002904:	00098613          	mv	a2,s3
    80002908:	00090593          	mv	a1,s2
    8000290c:	000a8513          	mv	a0,s5
    80002910:	00000097          	auipc	ra,0x0
    80002914:	d2c080e7          	jalr	-724(ra) # 8000263c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    80002918:	00000513          	li	a0,0
}
    8000291c:	03813083          	ld	ra,56(sp)
    80002920:	03013403          	ld	s0,48(sp)
    80002924:	02813483          	ld	s1,40(sp)
    80002928:	02013903          	ld	s2,32(sp)
    8000292c:	01813983          	ld	s3,24(sp)
    80002930:	01013a03          	ld	s4,16(sp)
    80002934:	00813a83          	ld	s5,8(sp)
    80002938:	04010113          	addi	sp,sp,64
    8000293c:	00008067          	ret
        debug_print("Block is the first free block.\n");
    80002940:	00003517          	auipc	a0,0x3
    80002944:	c0850513          	addi	a0,a0,-1016 # 80005548 <_ZZ12printIntegermE6digits+0x3a0>
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	560080e7          	jalr	1376(ra) # 80001ea8 <_Z11debug_printPKc>
        free_block_ptr_ = block_info;
    80002950:	013ab023          	sd	s3,0(s5)
    80002954:	f99ff06f          	j	800028ec <_ZN15MemoryAllocator8mem_freeEPv+0x190>

0000000080002958 <start>:
    80002958:	ff010113          	addi	sp,sp,-16
    8000295c:	00813423          	sd	s0,8(sp)
    80002960:	01010413          	addi	s0,sp,16
    80002964:	300027f3          	csrr	a5,mstatus
    80002968:	ffffe737          	lui	a4,0xffffe
    8000296c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff758f>
    80002970:	00e7f7b3          	and	a5,a5,a4
    80002974:	00001737          	lui	a4,0x1
    80002978:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000297c:	00e7e7b3          	or	a5,a5,a4
    80002980:	30079073          	csrw	mstatus,a5
    80002984:	00000797          	auipc	a5,0x0
    80002988:	16078793          	addi	a5,a5,352 # 80002ae4 <system_main>
    8000298c:	34179073          	csrw	mepc,a5
    80002990:	00000793          	li	a5,0
    80002994:	18079073          	csrw	satp,a5
    80002998:	000107b7          	lui	a5,0x10
    8000299c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800029a0:	30279073          	csrw	medeleg,a5
    800029a4:	30379073          	csrw	mideleg,a5
    800029a8:	104027f3          	csrr	a5,sie
    800029ac:	2227e793          	ori	a5,a5,546
    800029b0:	10479073          	csrw	sie,a5
    800029b4:	fff00793          	li	a5,-1
    800029b8:	00a7d793          	srli	a5,a5,0xa
    800029bc:	3b079073          	csrw	pmpaddr0,a5
    800029c0:	00f00793          	li	a5,15
    800029c4:	3a079073          	csrw	pmpcfg0,a5
    800029c8:	f14027f3          	csrr	a5,mhartid
    800029cc:	0200c737          	lui	a4,0x200c
    800029d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800029d4:	0007869b          	sext.w	a3,a5
    800029d8:	00269713          	slli	a4,a3,0x2
    800029dc:	000f4637          	lui	a2,0xf4
    800029e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800029e4:	00d70733          	add	a4,a4,a3
    800029e8:	0037979b          	slliw	a5,a5,0x3
    800029ec:	020046b7          	lui	a3,0x2004
    800029f0:	00d787b3          	add	a5,a5,a3
    800029f4:	00c585b3          	add	a1,a1,a2
    800029f8:	00371693          	slli	a3,a4,0x3
    800029fc:	00003717          	auipc	a4,0x3
    80002a00:	61470713          	addi	a4,a4,1556 # 80006010 <timer_scratch>
    80002a04:	00b7b023          	sd	a1,0(a5)
    80002a08:	00d70733          	add	a4,a4,a3
    80002a0c:	00f73c23          	sd	a5,24(a4)
    80002a10:	02c73023          	sd	a2,32(a4)
    80002a14:	34071073          	csrw	mscratch,a4
    80002a18:	00000797          	auipc	a5,0x0
    80002a1c:	6e878793          	addi	a5,a5,1768 # 80003100 <timervec>
    80002a20:	30579073          	csrw	mtvec,a5
    80002a24:	300027f3          	csrr	a5,mstatus
    80002a28:	0087e793          	ori	a5,a5,8
    80002a2c:	30079073          	csrw	mstatus,a5
    80002a30:	304027f3          	csrr	a5,mie
    80002a34:	0807e793          	ori	a5,a5,128
    80002a38:	30479073          	csrw	mie,a5
    80002a3c:	f14027f3          	csrr	a5,mhartid
    80002a40:	0007879b          	sext.w	a5,a5
    80002a44:	00078213          	mv	tp,a5
    80002a48:	30200073          	mret
    80002a4c:	00813403          	ld	s0,8(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <timerinit>:
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00813423          	sd	s0,8(sp)
    80002a60:	01010413          	addi	s0,sp,16
    80002a64:	f14027f3          	csrr	a5,mhartid
    80002a68:	0200c737          	lui	a4,0x200c
    80002a6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002a70:	0007869b          	sext.w	a3,a5
    80002a74:	00269713          	slli	a4,a3,0x2
    80002a78:	000f4637          	lui	a2,0xf4
    80002a7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002a80:	00d70733          	add	a4,a4,a3
    80002a84:	0037979b          	slliw	a5,a5,0x3
    80002a88:	020046b7          	lui	a3,0x2004
    80002a8c:	00d787b3          	add	a5,a5,a3
    80002a90:	00c585b3          	add	a1,a1,a2
    80002a94:	00371693          	slli	a3,a4,0x3
    80002a98:	00003717          	auipc	a4,0x3
    80002a9c:	57870713          	addi	a4,a4,1400 # 80006010 <timer_scratch>
    80002aa0:	00b7b023          	sd	a1,0(a5)
    80002aa4:	00d70733          	add	a4,a4,a3
    80002aa8:	00f73c23          	sd	a5,24(a4)
    80002aac:	02c73023          	sd	a2,32(a4)
    80002ab0:	34071073          	csrw	mscratch,a4
    80002ab4:	00000797          	auipc	a5,0x0
    80002ab8:	64c78793          	addi	a5,a5,1612 # 80003100 <timervec>
    80002abc:	30579073          	csrw	mtvec,a5
    80002ac0:	300027f3          	csrr	a5,mstatus
    80002ac4:	0087e793          	ori	a5,a5,8
    80002ac8:	30079073          	csrw	mstatus,a5
    80002acc:	304027f3          	csrr	a5,mie
    80002ad0:	0807e793          	ori	a5,a5,128
    80002ad4:	30479073          	csrw	mie,a5
    80002ad8:	00813403          	ld	s0,8(sp)
    80002adc:	01010113          	addi	sp,sp,16
    80002ae0:	00008067          	ret

0000000080002ae4 <system_main>:
    80002ae4:	fe010113          	addi	sp,sp,-32
    80002ae8:	00813823          	sd	s0,16(sp)
    80002aec:	00913423          	sd	s1,8(sp)
    80002af0:	00113c23          	sd	ra,24(sp)
    80002af4:	02010413          	addi	s0,sp,32
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	0c4080e7          	jalr	196(ra) # 80002bbc <cpuid>
    80002b00:	00003497          	auipc	s1,0x3
    80002b04:	4d848493          	addi	s1,s1,1240 # 80005fd8 <started>
    80002b08:	02050263          	beqz	a0,80002b2c <system_main+0x48>
    80002b0c:	0004a783          	lw	a5,0(s1)
    80002b10:	0007879b          	sext.w	a5,a5
    80002b14:	fe078ce3          	beqz	a5,80002b0c <system_main+0x28>
    80002b18:	0ff0000f          	fence
    80002b1c:	00003517          	auipc	a0,0x3
    80002b20:	aa450513          	addi	a0,a0,-1372 # 800055c0 <_ZZ12printIntegermE6digits+0x418>
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	a78080e7          	jalr	-1416(ra) # 8000359c <panic>
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	9cc080e7          	jalr	-1588(ra) # 800034f8 <consoleinit>
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	158080e7          	jalr	344(ra) # 80003c8c <printfinit>
    80002b3c:	00002517          	auipc	a0,0x2
    80002b40:	5ec50513          	addi	a0,a0,1516 # 80005128 <CONSOLE_STATUS+0x118>
    80002b44:	00001097          	auipc	ra,0x1
    80002b48:	ab4080e7          	jalr	-1356(ra) # 800035f8 <__printf>
    80002b4c:	00003517          	auipc	a0,0x3
    80002b50:	a4450513          	addi	a0,a0,-1468 # 80005590 <_ZZ12printIntegermE6digits+0x3e8>
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	aa4080e7          	jalr	-1372(ra) # 800035f8 <__printf>
    80002b5c:	00002517          	auipc	a0,0x2
    80002b60:	5cc50513          	addi	a0,a0,1484 # 80005128 <CONSOLE_STATUS+0x118>
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	a94080e7          	jalr	-1388(ra) # 800035f8 <__printf>
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	4ac080e7          	jalr	1196(ra) # 80004018 <kinit>
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	148080e7          	jalr	328(ra) # 80002cbc <trapinit>
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	16c080e7          	jalr	364(ra) # 80002ce8 <trapinithart>
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	5bc080e7          	jalr	1468(ra) # 80003140 <plicinit>
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	5dc080e7          	jalr	1500(ra) # 80003168 <plicinithart>
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	078080e7          	jalr	120(ra) # 80002c0c <userinit>
    80002b9c:	0ff0000f          	fence
    80002ba0:	00100793          	li	a5,1
    80002ba4:	00003517          	auipc	a0,0x3
    80002ba8:	a0450513          	addi	a0,a0,-1532 # 800055a8 <_ZZ12printIntegermE6digits+0x400>
    80002bac:	00f4a023          	sw	a5,0(s1)
    80002bb0:	00001097          	auipc	ra,0x1
    80002bb4:	a48080e7          	jalr	-1464(ra) # 800035f8 <__printf>
    80002bb8:	0000006f          	j	80002bb8 <system_main+0xd4>

0000000080002bbc <cpuid>:
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00020513          	mv	a0,tp
    80002bcc:	00813403          	ld	s0,8(sp)
    80002bd0:	0005051b          	sext.w	a0,a0
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <mycpu>:
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813423          	sd	s0,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	00020793          	mv	a5,tp
    80002bec:	00813403          	ld	s0,8(sp)
    80002bf0:	0007879b          	sext.w	a5,a5
    80002bf4:	00779793          	slli	a5,a5,0x7
    80002bf8:	00004517          	auipc	a0,0x4
    80002bfc:	44850513          	addi	a0,a0,1096 # 80007040 <cpus>
    80002c00:	00f50533          	add	a0,a0,a5
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <userinit>:
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
    80002c18:	00813403          	ld	s0,8(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	fffff317          	auipc	t1,0xfffff
    80002c24:	3f830067          	jr	1016(t1) # 80002018 <main>

0000000080002c28 <either_copyout>:
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00813023          	sd	s0,0(sp)
    80002c30:	00113423          	sd	ra,8(sp)
    80002c34:	01010413          	addi	s0,sp,16
    80002c38:	02051663          	bnez	a0,80002c64 <either_copyout+0x3c>
    80002c3c:	00058513          	mv	a0,a1
    80002c40:	00060593          	mv	a1,a2
    80002c44:	0006861b          	sext.w	a2,a3
    80002c48:	00002097          	auipc	ra,0x2
    80002c4c:	c5c080e7          	jalr	-932(ra) # 800048a4 <__memmove>
    80002c50:	00813083          	ld	ra,8(sp)
    80002c54:	00013403          	ld	s0,0(sp)
    80002c58:	00000513          	li	a0,0
    80002c5c:	01010113          	addi	sp,sp,16
    80002c60:	00008067          	ret
    80002c64:	00003517          	auipc	a0,0x3
    80002c68:	98450513          	addi	a0,a0,-1660 # 800055e8 <_ZZ12printIntegermE6digits+0x440>
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	930080e7          	jalr	-1744(ra) # 8000359c <panic>

0000000080002c74 <either_copyin>:
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00813023          	sd	s0,0(sp)
    80002c7c:	00113423          	sd	ra,8(sp)
    80002c80:	01010413          	addi	s0,sp,16
    80002c84:	02059463          	bnez	a1,80002cac <either_copyin+0x38>
    80002c88:	00060593          	mv	a1,a2
    80002c8c:	0006861b          	sext.w	a2,a3
    80002c90:	00002097          	auipc	ra,0x2
    80002c94:	c14080e7          	jalr	-1004(ra) # 800048a4 <__memmove>
    80002c98:	00813083          	ld	ra,8(sp)
    80002c9c:	00013403          	ld	s0,0(sp)
    80002ca0:	00000513          	li	a0,0
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret
    80002cac:	00003517          	auipc	a0,0x3
    80002cb0:	96450513          	addi	a0,a0,-1692 # 80005610 <_ZZ12printIntegermE6digits+0x468>
    80002cb4:	00001097          	auipc	ra,0x1
    80002cb8:	8e8080e7          	jalr	-1816(ra) # 8000359c <panic>

0000000080002cbc <trapinit>:
    80002cbc:	ff010113          	addi	sp,sp,-16
    80002cc0:	00813423          	sd	s0,8(sp)
    80002cc4:	01010413          	addi	s0,sp,16
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	00003597          	auipc	a1,0x3
    80002cd0:	96c58593          	addi	a1,a1,-1684 # 80005638 <_ZZ12printIntegermE6digits+0x490>
    80002cd4:	00004517          	auipc	a0,0x4
    80002cd8:	3ec50513          	addi	a0,a0,1004 # 800070c0 <tickslock>
    80002cdc:	01010113          	addi	sp,sp,16
    80002ce0:	00001317          	auipc	t1,0x1
    80002ce4:	5c830067          	jr	1480(t1) # 800042a8 <initlock>

0000000080002ce8 <trapinithart>:
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813423          	sd	s0,8(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    80002cf4:	00000797          	auipc	a5,0x0
    80002cf8:	2fc78793          	addi	a5,a5,764 # 80002ff0 <kernelvec>
    80002cfc:	10579073          	csrw	stvec,a5
    80002d00:	00813403          	ld	s0,8(sp)
    80002d04:	01010113          	addi	sp,sp,16
    80002d08:	00008067          	ret

0000000080002d0c <usertrap>:
    80002d0c:	ff010113          	addi	sp,sp,-16
    80002d10:	00813423          	sd	s0,8(sp)
    80002d14:	01010413          	addi	s0,sp,16
    80002d18:	00813403          	ld	s0,8(sp)
    80002d1c:	01010113          	addi	sp,sp,16
    80002d20:	00008067          	ret

0000000080002d24 <usertrapret>:
    80002d24:	ff010113          	addi	sp,sp,-16
    80002d28:	00813423          	sd	s0,8(sp)
    80002d2c:	01010413          	addi	s0,sp,16
    80002d30:	00813403          	ld	s0,8(sp)
    80002d34:	01010113          	addi	sp,sp,16
    80002d38:	00008067          	ret

0000000080002d3c <kerneltrap>:
    80002d3c:	fe010113          	addi	sp,sp,-32
    80002d40:	00813823          	sd	s0,16(sp)
    80002d44:	00113c23          	sd	ra,24(sp)
    80002d48:	00913423          	sd	s1,8(sp)
    80002d4c:	02010413          	addi	s0,sp,32
    80002d50:	142025f3          	csrr	a1,scause
    80002d54:	100027f3          	csrr	a5,sstatus
    80002d58:	0027f793          	andi	a5,a5,2
    80002d5c:	10079c63          	bnez	a5,80002e74 <kerneltrap+0x138>
    80002d60:	142027f3          	csrr	a5,scause
    80002d64:	0207ce63          	bltz	a5,80002da0 <kerneltrap+0x64>
    80002d68:	00003517          	auipc	a0,0x3
    80002d6c:	91850513          	addi	a0,a0,-1768 # 80005680 <_ZZ12printIntegermE6digits+0x4d8>
    80002d70:	00001097          	auipc	ra,0x1
    80002d74:	888080e7          	jalr	-1912(ra) # 800035f8 <__printf>
    80002d78:	141025f3          	csrr	a1,sepc
    80002d7c:	14302673          	csrr	a2,stval
    80002d80:	00003517          	auipc	a0,0x3
    80002d84:	91050513          	addi	a0,a0,-1776 # 80005690 <_ZZ12printIntegermE6digits+0x4e8>
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	870080e7          	jalr	-1936(ra) # 800035f8 <__printf>
    80002d90:	00003517          	auipc	a0,0x3
    80002d94:	91850513          	addi	a0,a0,-1768 # 800056a8 <_ZZ12printIntegermE6digits+0x500>
    80002d98:	00001097          	auipc	ra,0x1
    80002d9c:	804080e7          	jalr	-2044(ra) # 8000359c <panic>
    80002da0:	0ff7f713          	andi	a4,a5,255
    80002da4:	00900693          	li	a3,9
    80002da8:	04d70063          	beq	a4,a3,80002de8 <kerneltrap+0xac>
    80002dac:	fff00713          	li	a4,-1
    80002db0:	03f71713          	slli	a4,a4,0x3f
    80002db4:	00170713          	addi	a4,a4,1
    80002db8:	fae798e3          	bne	a5,a4,80002d68 <kerneltrap+0x2c>
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	e00080e7          	jalr	-512(ra) # 80002bbc <cpuid>
    80002dc4:	06050663          	beqz	a0,80002e30 <kerneltrap+0xf4>
    80002dc8:	144027f3          	csrr	a5,sip
    80002dcc:	ffd7f793          	andi	a5,a5,-3
    80002dd0:	14479073          	csrw	sip,a5
    80002dd4:	01813083          	ld	ra,24(sp)
    80002dd8:	01013403          	ld	s0,16(sp)
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	02010113          	addi	sp,sp,32
    80002de4:	00008067          	ret
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	3cc080e7          	jalr	972(ra) # 800031b4 <plic_claim>
    80002df0:	00a00793          	li	a5,10
    80002df4:	00050493          	mv	s1,a0
    80002df8:	06f50863          	beq	a0,a5,80002e68 <kerneltrap+0x12c>
    80002dfc:	fc050ce3          	beqz	a0,80002dd4 <kerneltrap+0x98>
    80002e00:	00050593          	mv	a1,a0
    80002e04:	00003517          	auipc	a0,0x3
    80002e08:	85c50513          	addi	a0,a0,-1956 # 80005660 <_ZZ12printIntegermE6digits+0x4b8>
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	7ec080e7          	jalr	2028(ra) # 800035f8 <__printf>
    80002e14:	01013403          	ld	s0,16(sp)
    80002e18:	01813083          	ld	ra,24(sp)
    80002e1c:	00048513          	mv	a0,s1
    80002e20:	00813483          	ld	s1,8(sp)
    80002e24:	02010113          	addi	sp,sp,32
    80002e28:	00000317          	auipc	t1,0x0
    80002e2c:	3c430067          	jr	964(t1) # 800031ec <plic_complete>
    80002e30:	00004517          	auipc	a0,0x4
    80002e34:	29050513          	addi	a0,a0,656 # 800070c0 <tickslock>
    80002e38:	00001097          	auipc	ra,0x1
    80002e3c:	494080e7          	jalr	1172(ra) # 800042cc <acquire>
    80002e40:	00003717          	auipc	a4,0x3
    80002e44:	19c70713          	addi	a4,a4,412 # 80005fdc <ticks>
    80002e48:	00072783          	lw	a5,0(a4)
    80002e4c:	00004517          	auipc	a0,0x4
    80002e50:	27450513          	addi	a0,a0,628 # 800070c0 <tickslock>
    80002e54:	0017879b          	addiw	a5,a5,1
    80002e58:	00f72023          	sw	a5,0(a4)
    80002e5c:	00001097          	auipc	ra,0x1
    80002e60:	53c080e7          	jalr	1340(ra) # 80004398 <release>
    80002e64:	f65ff06f          	j	80002dc8 <kerneltrap+0x8c>
    80002e68:	00001097          	auipc	ra,0x1
    80002e6c:	098080e7          	jalr	152(ra) # 80003f00 <uartintr>
    80002e70:	fa5ff06f          	j	80002e14 <kerneltrap+0xd8>
    80002e74:	00002517          	auipc	a0,0x2
    80002e78:	7cc50513          	addi	a0,a0,1996 # 80005640 <_ZZ12printIntegermE6digits+0x498>
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	720080e7          	jalr	1824(ra) # 8000359c <panic>

0000000080002e84 <clockintr>:
    80002e84:	fe010113          	addi	sp,sp,-32
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	00113c23          	sd	ra,24(sp)
    80002e94:	02010413          	addi	s0,sp,32
    80002e98:	00004497          	auipc	s1,0x4
    80002e9c:	22848493          	addi	s1,s1,552 # 800070c0 <tickslock>
    80002ea0:	00048513          	mv	a0,s1
    80002ea4:	00001097          	auipc	ra,0x1
    80002ea8:	428080e7          	jalr	1064(ra) # 800042cc <acquire>
    80002eac:	00003717          	auipc	a4,0x3
    80002eb0:	13070713          	addi	a4,a4,304 # 80005fdc <ticks>
    80002eb4:	00072783          	lw	a5,0(a4)
    80002eb8:	01013403          	ld	s0,16(sp)
    80002ebc:	01813083          	ld	ra,24(sp)
    80002ec0:	00048513          	mv	a0,s1
    80002ec4:	0017879b          	addiw	a5,a5,1
    80002ec8:	00813483          	ld	s1,8(sp)
    80002ecc:	00f72023          	sw	a5,0(a4)
    80002ed0:	02010113          	addi	sp,sp,32
    80002ed4:	00001317          	auipc	t1,0x1
    80002ed8:	4c430067          	jr	1220(t1) # 80004398 <release>

0000000080002edc <devintr>:
    80002edc:	142027f3          	csrr	a5,scause
    80002ee0:	00000513          	li	a0,0
    80002ee4:	0007c463          	bltz	a5,80002eec <devintr+0x10>
    80002ee8:	00008067          	ret
    80002eec:	fe010113          	addi	sp,sp,-32
    80002ef0:	00813823          	sd	s0,16(sp)
    80002ef4:	00113c23          	sd	ra,24(sp)
    80002ef8:	00913423          	sd	s1,8(sp)
    80002efc:	02010413          	addi	s0,sp,32
    80002f00:	0ff7f713          	andi	a4,a5,255
    80002f04:	00900693          	li	a3,9
    80002f08:	04d70c63          	beq	a4,a3,80002f60 <devintr+0x84>
    80002f0c:	fff00713          	li	a4,-1
    80002f10:	03f71713          	slli	a4,a4,0x3f
    80002f14:	00170713          	addi	a4,a4,1
    80002f18:	00e78c63          	beq	a5,a4,80002f30 <devintr+0x54>
    80002f1c:	01813083          	ld	ra,24(sp)
    80002f20:	01013403          	ld	s0,16(sp)
    80002f24:	00813483          	ld	s1,8(sp)
    80002f28:	02010113          	addi	sp,sp,32
    80002f2c:	00008067          	ret
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	c8c080e7          	jalr	-884(ra) # 80002bbc <cpuid>
    80002f38:	06050663          	beqz	a0,80002fa4 <devintr+0xc8>
    80002f3c:	144027f3          	csrr	a5,sip
    80002f40:	ffd7f793          	andi	a5,a5,-3
    80002f44:	14479073          	csrw	sip,a5
    80002f48:	01813083          	ld	ra,24(sp)
    80002f4c:	01013403          	ld	s0,16(sp)
    80002f50:	00813483          	ld	s1,8(sp)
    80002f54:	00200513          	li	a0,2
    80002f58:	02010113          	addi	sp,sp,32
    80002f5c:	00008067          	ret
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	254080e7          	jalr	596(ra) # 800031b4 <plic_claim>
    80002f68:	00a00793          	li	a5,10
    80002f6c:	00050493          	mv	s1,a0
    80002f70:	06f50663          	beq	a0,a5,80002fdc <devintr+0x100>
    80002f74:	00100513          	li	a0,1
    80002f78:	fa0482e3          	beqz	s1,80002f1c <devintr+0x40>
    80002f7c:	00048593          	mv	a1,s1
    80002f80:	00002517          	auipc	a0,0x2
    80002f84:	6e050513          	addi	a0,a0,1760 # 80005660 <_ZZ12printIntegermE6digits+0x4b8>
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	670080e7          	jalr	1648(ra) # 800035f8 <__printf>
    80002f90:	00048513          	mv	a0,s1
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	258080e7          	jalr	600(ra) # 800031ec <plic_complete>
    80002f9c:	00100513          	li	a0,1
    80002fa0:	f7dff06f          	j	80002f1c <devintr+0x40>
    80002fa4:	00004517          	auipc	a0,0x4
    80002fa8:	11c50513          	addi	a0,a0,284 # 800070c0 <tickslock>
    80002fac:	00001097          	auipc	ra,0x1
    80002fb0:	320080e7          	jalr	800(ra) # 800042cc <acquire>
    80002fb4:	00003717          	auipc	a4,0x3
    80002fb8:	02870713          	addi	a4,a4,40 # 80005fdc <ticks>
    80002fbc:	00072783          	lw	a5,0(a4)
    80002fc0:	00004517          	auipc	a0,0x4
    80002fc4:	10050513          	addi	a0,a0,256 # 800070c0 <tickslock>
    80002fc8:	0017879b          	addiw	a5,a5,1
    80002fcc:	00f72023          	sw	a5,0(a4)
    80002fd0:	00001097          	auipc	ra,0x1
    80002fd4:	3c8080e7          	jalr	968(ra) # 80004398 <release>
    80002fd8:	f65ff06f          	j	80002f3c <devintr+0x60>
    80002fdc:	00001097          	auipc	ra,0x1
    80002fe0:	f24080e7          	jalr	-220(ra) # 80003f00 <uartintr>
    80002fe4:	fadff06f          	j	80002f90 <devintr+0xb4>
	...

0000000080002ff0 <kernelvec>:
    80002ff0:	f0010113          	addi	sp,sp,-256
    80002ff4:	00113023          	sd	ra,0(sp)
    80002ff8:	00213423          	sd	sp,8(sp)
    80002ffc:	00313823          	sd	gp,16(sp)
    80003000:	00413c23          	sd	tp,24(sp)
    80003004:	02513023          	sd	t0,32(sp)
    80003008:	02613423          	sd	t1,40(sp)
    8000300c:	02713823          	sd	t2,48(sp)
    80003010:	02813c23          	sd	s0,56(sp)
    80003014:	04913023          	sd	s1,64(sp)
    80003018:	04a13423          	sd	a0,72(sp)
    8000301c:	04b13823          	sd	a1,80(sp)
    80003020:	04c13c23          	sd	a2,88(sp)
    80003024:	06d13023          	sd	a3,96(sp)
    80003028:	06e13423          	sd	a4,104(sp)
    8000302c:	06f13823          	sd	a5,112(sp)
    80003030:	07013c23          	sd	a6,120(sp)
    80003034:	09113023          	sd	a7,128(sp)
    80003038:	09213423          	sd	s2,136(sp)
    8000303c:	09313823          	sd	s3,144(sp)
    80003040:	09413c23          	sd	s4,152(sp)
    80003044:	0b513023          	sd	s5,160(sp)
    80003048:	0b613423          	sd	s6,168(sp)
    8000304c:	0b713823          	sd	s7,176(sp)
    80003050:	0b813c23          	sd	s8,184(sp)
    80003054:	0d913023          	sd	s9,192(sp)
    80003058:	0da13423          	sd	s10,200(sp)
    8000305c:	0db13823          	sd	s11,208(sp)
    80003060:	0dc13c23          	sd	t3,216(sp)
    80003064:	0fd13023          	sd	t4,224(sp)
    80003068:	0fe13423          	sd	t5,232(sp)
    8000306c:	0ff13823          	sd	t6,240(sp)
    80003070:	ccdff0ef          	jal	ra,80002d3c <kerneltrap>
    80003074:	00013083          	ld	ra,0(sp)
    80003078:	00813103          	ld	sp,8(sp)
    8000307c:	01013183          	ld	gp,16(sp)
    80003080:	02013283          	ld	t0,32(sp)
    80003084:	02813303          	ld	t1,40(sp)
    80003088:	03013383          	ld	t2,48(sp)
    8000308c:	03813403          	ld	s0,56(sp)
    80003090:	04013483          	ld	s1,64(sp)
    80003094:	04813503          	ld	a0,72(sp)
    80003098:	05013583          	ld	a1,80(sp)
    8000309c:	05813603          	ld	a2,88(sp)
    800030a0:	06013683          	ld	a3,96(sp)
    800030a4:	06813703          	ld	a4,104(sp)
    800030a8:	07013783          	ld	a5,112(sp)
    800030ac:	07813803          	ld	a6,120(sp)
    800030b0:	08013883          	ld	a7,128(sp)
    800030b4:	08813903          	ld	s2,136(sp)
    800030b8:	09013983          	ld	s3,144(sp)
    800030bc:	09813a03          	ld	s4,152(sp)
    800030c0:	0a013a83          	ld	s5,160(sp)
    800030c4:	0a813b03          	ld	s6,168(sp)
    800030c8:	0b013b83          	ld	s7,176(sp)
    800030cc:	0b813c03          	ld	s8,184(sp)
    800030d0:	0c013c83          	ld	s9,192(sp)
    800030d4:	0c813d03          	ld	s10,200(sp)
    800030d8:	0d013d83          	ld	s11,208(sp)
    800030dc:	0d813e03          	ld	t3,216(sp)
    800030e0:	0e013e83          	ld	t4,224(sp)
    800030e4:	0e813f03          	ld	t5,232(sp)
    800030e8:	0f013f83          	ld	t6,240(sp)
    800030ec:	10010113          	addi	sp,sp,256
    800030f0:	10200073          	sret
    800030f4:	00000013          	nop
    800030f8:	00000013          	nop
    800030fc:	00000013          	nop

0000000080003100 <timervec>:
    80003100:	34051573          	csrrw	a0,mscratch,a0
    80003104:	00b53023          	sd	a1,0(a0)
    80003108:	00c53423          	sd	a2,8(a0)
    8000310c:	00d53823          	sd	a3,16(a0)
    80003110:	01853583          	ld	a1,24(a0)
    80003114:	02053603          	ld	a2,32(a0)
    80003118:	0005b683          	ld	a3,0(a1)
    8000311c:	00c686b3          	add	a3,a3,a2
    80003120:	00d5b023          	sd	a3,0(a1)
    80003124:	00200593          	li	a1,2
    80003128:	14459073          	csrw	sip,a1
    8000312c:	01053683          	ld	a3,16(a0)
    80003130:	00853603          	ld	a2,8(a0)
    80003134:	00053583          	ld	a1,0(a0)
    80003138:	34051573          	csrrw	a0,mscratch,a0
    8000313c:	30200073          	mret

0000000080003140 <plicinit>:
    80003140:	ff010113          	addi	sp,sp,-16
    80003144:	00813423          	sd	s0,8(sp)
    80003148:	01010413          	addi	s0,sp,16
    8000314c:	00813403          	ld	s0,8(sp)
    80003150:	0c0007b7          	lui	a5,0xc000
    80003154:	00100713          	li	a4,1
    80003158:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000315c:	00e7a223          	sw	a4,4(a5)
    80003160:	01010113          	addi	sp,sp,16
    80003164:	00008067          	ret

0000000080003168 <plicinithart>:
    80003168:	ff010113          	addi	sp,sp,-16
    8000316c:	00813023          	sd	s0,0(sp)
    80003170:	00113423          	sd	ra,8(sp)
    80003174:	01010413          	addi	s0,sp,16
    80003178:	00000097          	auipc	ra,0x0
    8000317c:	a44080e7          	jalr	-1468(ra) # 80002bbc <cpuid>
    80003180:	0085171b          	slliw	a4,a0,0x8
    80003184:	0c0027b7          	lui	a5,0xc002
    80003188:	00e787b3          	add	a5,a5,a4
    8000318c:	40200713          	li	a4,1026
    80003190:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003194:	00813083          	ld	ra,8(sp)
    80003198:	00013403          	ld	s0,0(sp)
    8000319c:	00d5151b          	slliw	a0,a0,0xd
    800031a0:	0c2017b7          	lui	a5,0xc201
    800031a4:	00a78533          	add	a0,a5,a0
    800031a8:	00052023          	sw	zero,0(a0)
    800031ac:	01010113          	addi	sp,sp,16
    800031b0:	00008067          	ret

00000000800031b4 <plic_claim>:
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813023          	sd	s0,0(sp)
    800031bc:	00113423          	sd	ra,8(sp)
    800031c0:	01010413          	addi	s0,sp,16
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	9f8080e7          	jalr	-1544(ra) # 80002bbc <cpuid>
    800031cc:	00813083          	ld	ra,8(sp)
    800031d0:	00013403          	ld	s0,0(sp)
    800031d4:	00d5151b          	slliw	a0,a0,0xd
    800031d8:	0c2017b7          	lui	a5,0xc201
    800031dc:	00a78533          	add	a0,a5,a0
    800031e0:	00452503          	lw	a0,4(a0)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <plic_complete>:
    800031ec:	fe010113          	addi	sp,sp,-32
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00913423          	sd	s1,8(sp)
    800031f8:	00113c23          	sd	ra,24(sp)
    800031fc:	02010413          	addi	s0,sp,32
    80003200:	00050493          	mv	s1,a0
    80003204:	00000097          	auipc	ra,0x0
    80003208:	9b8080e7          	jalr	-1608(ra) # 80002bbc <cpuid>
    8000320c:	01813083          	ld	ra,24(sp)
    80003210:	01013403          	ld	s0,16(sp)
    80003214:	00d5179b          	slliw	a5,a0,0xd
    80003218:	0c201737          	lui	a4,0xc201
    8000321c:	00f707b3          	add	a5,a4,a5
    80003220:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003224:	00813483          	ld	s1,8(sp)
    80003228:	02010113          	addi	sp,sp,32
    8000322c:	00008067          	ret

0000000080003230 <consolewrite>:
    80003230:	fb010113          	addi	sp,sp,-80
    80003234:	04813023          	sd	s0,64(sp)
    80003238:	04113423          	sd	ra,72(sp)
    8000323c:	02913c23          	sd	s1,56(sp)
    80003240:	03213823          	sd	s2,48(sp)
    80003244:	03313423          	sd	s3,40(sp)
    80003248:	03413023          	sd	s4,32(sp)
    8000324c:	01513c23          	sd	s5,24(sp)
    80003250:	05010413          	addi	s0,sp,80
    80003254:	06c05c63          	blez	a2,800032cc <consolewrite+0x9c>
    80003258:	00060993          	mv	s3,a2
    8000325c:	00050a13          	mv	s4,a0
    80003260:	00058493          	mv	s1,a1
    80003264:	00000913          	li	s2,0
    80003268:	fff00a93          	li	s5,-1
    8000326c:	01c0006f          	j	80003288 <consolewrite+0x58>
    80003270:	fbf44503          	lbu	a0,-65(s0)
    80003274:	0019091b          	addiw	s2,s2,1
    80003278:	00148493          	addi	s1,s1,1
    8000327c:	00001097          	auipc	ra,0x1
    80003280:	a9c080e7          	jalr	-1380(ra) # 80003d18 <uartputc>
    80003284:	03298063          	beq	s3,s2,800032a4 <consolewrite+0x74>
    80003288:	00048613          	mv	a2,s1
    8000328c:	00100693          	li	a3,1
    80003290:	000a0593          	mv	a1,s4
    80003294:	fbf40513          	addi	a0,s0,-65
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	9dc080e7          	jalr	-1572(ra) # 80002c74 <either_copyin>
    800032a0:	fd5518e3          	bne	a0,s5,80003270 <consolewrite+0x40>
    800032a4:	04813083          	ld	ra,72(sp)
    800032a8:	04013403          	ld	s0,64(sp)
    800032ac:	03813483          	ld	s1,56(sp)
    800032b0:	02813983          	ld	s3,40(sp)
    800032b4:	02013a03          	ld	s4,32(sp)
    800032b8:	01813a83          	ld	s5,24(sp)
    800032bc:	00090513          	mv	a0,s2
    800032c0:	03013903          	ld	s2,48(sp)
    800032c4:	05010113          	addi	sp,sp,80
    800032c8:	00008067          	ret
    800032cc:	00000913          	li	s2,0
    800032d0:	fd5ff06f          	j	800032a4 <consolewrite+0x74>

00000000800032d4 <consoleread>:
    800032d4:	f9010113          	addi	sp,sp,-112
    800032d8:	06813023          	sd	s0,96(sp)
    800032dc:	04913c23          	sd	s1,88(sp)
    800032e0:	05213823          	sd	s2,80(sp)
    800032e4:	05313423          	sd	s3,72(sp)
    800032e8:	05413023          	sd	s4,64(sp)
    800032ec:	03513c23          	sd	s5,56(sp)
    800032f0:	03613823          	sd	s6,48(sp)
    800032f4:	03713423          	sd	s7,40(sp)
    800032f8:	03813023          	sd	s8,32(sp)
    800032fc:	06113423          	sd	ra,104(sp)
    80003300:	01913c23          	sd	s9,24(sp)
    80003304:	07010413          	addi	s0,sp,112
    80003308:	00060b93          	mv	s7,a2
    8000330c:	00050913          	mv	s2,a0
    80003310:	00058c13          	mv	s8,a1
    80003314:	00060b1b          	sext.w	s6,a2
    80003318:	00004497          	auipc	s1,0x4
    8000331c:	dd048493          	addi	s1,s1,-560 # 800070e8 <cons>
    80003320:	00400993          	li	s3,4
    80003324:	fff00a13          	li	s4,-1
    80003328:	00a00a93          	li	s5,10
    8000332c:	05705e63          	blez	s7,80003388 <consoleread+0xb4>
    80003330:	09c4a703          	lw	a4,156(s1)
    80003334:	0984a783          	lw	a5,152(s1)
    80003338:	0007071b          	sext.w	a4,a4
    8000333c:	08e78463          	beq	a5,a4,800033c4 <consoleread+0xf0>
    80003340:	07f7f713          	andi	a4,a5,127
    80003344:	00e48733          	add	a4,s1,a4
    80003348:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000334c:	0017869b          	addiw	a3,a5,1
    80003350:	08d4ac23          	sw	a3,152(s1)
    80003354:	00070c9b          	sext.w	s9,a4
    80003358:	0b370663          	beq	a4,s3,80003404 <consoleread+0x130>
    8000335c:	00100693          	li	a3,1
    80003360:	f9f40613          	addi	a2,s0,-97
    80003364:	000c0593          	mv	a1,s8
    80003368:	00090513          	mv	a0,s2
    8000336c:	f8e40fa3          	sb	a4,-97(s0)
    80003370:	00000097          	auipc	ra,0x0
    80003374:	8b8080e7          	jalr	-1864(ra) # 80002c28 <either_copyout>
    80003378:	01450863          	beq	a0,s4,80003388 <consoleread+0xb4>
    8000337c:	001c0c13          	addi	s8,s8,1
    80003380:	fffb8b9b          	addiw	s7,s7,-1
    80003384:	fb5c94e3          	bne	s9,s5,8000332c <consoleread+0x58>
    80003388:	000b851b          	sext.w	a0,s7
    8000338c:	06813083          	ld	ra,104(sp)
    80003390:	06013403          	ld	s0,96(sp)
    80003394:	05813483          	ld	s1,88(sp)
    80003398:	05013903          	ld	s2,80(sp)
    8000339c:	04813983          	ld	s3,72(sp)
    800033a0:	04013a03          	ld	s4,64(sp)
    800033a4:	03813a83          	ld	s5,56(sp)
    800033a8:	02813b83          	ld	s7,40(sp)
    800033ac:	02013c03          	ld	s8,32(sp)
    800033b0:	01813c83          	ld	s9,24(sp)
    800033b4:	40ab053b          	subw	a0,s6,a0
    800033b8:	03013b03          	ld	s6,48(sp)
    800033bc:	07010113          	addi	sp,sp,112
    800033c0:	00008067          	ret
    800033c4:	00001097          	auipc	ra,0x1
    800033c8:	1d8080e7          	jalr	472(ra) # 8000459c <push_on>
    800033cc:	0984a703          	lw	a4,152(s1)
    800033d0:	09c4a783          	lw	a5,156(s1)
    800033d4:	0007879b          	sext.w	a5,a5
    800033d8:	fef70ce3          	beq	a4,a5,800033d0 <consoleread+0xfc>
    800033dc:	00001097          	auipc	ra,0x1
    800033e0:	234080e7          	jalr	564(ra) # 80004610 <pop_on>
    800033e4:	0984a783          	lw	a5,152(s1)
    800033e8:	07f7f713          	andi	a4,a5,127
    800033ec:	00e48733          	add	a4,s1,a4
    800033f0:	01874703          	lbu	a4,24(a4)
    800033f4:	0017869b          	addiw	a3,a5,1
    800033f8:	08d4ac23          	sw	a3,152(s1)
    800033fc:	00070c9b          	sext.w	s9,a4
    80003400:	f5371ee3          	bne	a4,s3,8000335c <consoleread+0x88>
    80003404:	000b851b          	sext.w	a0,s7
    80003408:	f96bf2e3          	bgeu	s7,s6,8000338c <consoleread+0xb8>
    8000340c:	08f4ac23          	sw	a5,152(s1)
    80003410:	f7dff06f          	j	8000338c <consoleread+0xb8>

0000000080003414 <consputc>:
    80003414:	10000793          	li	a5,256
    80003418:	00f50663          	beq	a0,a5,80003424 <consputc+0x10>
    8000341c:	00001317          	auipc	t1,0x1
    80003420:	9f430067          	jr	-1548(t1) # 80003e10 <uartputc_sync>
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00113423          	sd	ra,8(sp)
    8000342c:	00813023          	sd	s0,0(sp)
    80003430:	01010413          	addi	s0,sp,16
    80003434:	00800513          	li	a0,8
    80003438:	00001097          	auipc	ra,0x1
    8000343c:	9d8080e7          	jalr	-1576(ra) # 80003e10 <uartputc_sync>
    80003440:	02000513          	li	a0,32
    80003444:	00001097          	auipc	ra,0x1
    80003448:	9cc080e7          	jalr	-1588(ra) # 80003e10 <uartputc_sync>
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00800513          	li	a0,8
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00001317          	auipc	t1,0x1
    80003460:	9b430067          	jr	-1612(t1) # 80003e10 <uartputc_sync>

0000000080003464 <consoleintr>:
    80003464:	fe010113          	addi	sp,sp,-32
    80003468:	00813823          	sd	s0,16(sp)
    8000346c:	00913423          	sd	s1,8(sp)
    80003470:	01213023          	sd	s2,0(sp)
    80003474:	00113c23          	sd	ra,24(sp)
    80003478:	02010413          	addi	s0,sp,32
    8000347c:	00004917          	auipc	s2,0x4
    80003480:	c6c90913          	addi	s2,s2,-916 # 800070e8 <cons>
    80003484:	00050493          	mv	s1,a0
    80003488:	00090513          	mv	a0,s2
    8000348c:	00001097          	auipc	ra,0x1
    80003490:	e40080e7          	jalr	-448(ra) # 800042cc <acquire>
    80003494:	02048c63          	beqz	s1,800034cc <consoleintr+0x68>
    80003498:	0a092783          	lw	a5,160(s2)
    8000349c:	09892703          	lw	a4,152(s2)
    800034a0:	07f00693          	li	a3,127
    800034a4:	40e7873b          	subw	a4,a5,a4
    800034a8:	02e6e263          	bltu	a3,a4,800034cc <consoleintr+0x68>
    800034ac:	00d00713          	li	a4,13
    800034b0:	04e48063          	beq	s1,a4,800034f0 <consoleintr+0x8c>
    800034b4:	07f7f713          	andi	a4,a5,127
    800034b8:	00e90733          	add	a4,s2,a4
    800034bc:	0017879b          	addiw	a5,a5,1
    800034c0:	0af92023          	sw	a5,160(s2)
    800034c4:	00970c23          	sb	s1,24(a4)
    800034c8:	08f92e23          	sw	a5,156(s2)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	01813083          	ld	ra,24(sp)
    800034d4:	00813483          	ld	s1,8(sp)
    800034d8:	00013903          	ld	s2,0(sp)
    800034dc:	00004517          	auipc	a0,0x4
    800034e0:	c0c50513          	addi	a0,a0,-1012 # 800070e8 <cons>
    800034e4:	02010113          	addi	sp,sp,32
    800034e8:	00001317          	auipc	t1,0x1
    800034ec:	eb030067          	jr	-336(t1) # 80004398 <release>
    800034f0:	00a00493          	li	s1,10
    800034f4:	fc1ff06f          	j	800034b4 <consoleintr+0x50>

00000000800034f8 <consoleinit>:
    800034f8:	fe010113          	addi	sp,sp,-32
    800034fc:	00113c23          	sd	ra,24(sp)
    80003500:	00813823          	sd	s0,16(sp)
    80003504:	00913423          	sd	s1,8(sp)
    80003508:	02010413          	addi	s0,sp,32
    8000350c:	00004497          	auipc	s1,0x4
    80003510:	bdc48493          	addi	s1,s1,-1060 # 800070e8 <cons>
    80003514:	00048513          	mv	a0,s1
    80003518:	00002597          	auipc	a1,0x2
    8000351c:	1a058593          	addi	a1,a1,416 # 800056b8 <_ZZ12printIntegermE6digits+0x510>
    80003520:	00001097          	auipc	ra,0x1
    80003524:	d88080e7          	jalr	-632(ra) # 800042a8 <initlock>
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	7ac080e7          	jalr	1964(ra) # 80003cd4 <uartinit>
    80003530:	01813083          	ld	ra,24(sp)
    80003534:	01013403          	ld	s0,16(sp)
    80003538:	00000797          	auipc	a5,0x0
    8000353c:	d9c78793          	addi	a5,a5,-612 # 800032d4 <consoleread>
    80003540:	0af4bc23          	sd	a5,184(s1)
    80003544:	00000797          	auipc	a5,0x0
    80003548:	cec78793          	addi	a5,a5,-788 # 80003230 <consolewrite>
    8000354c:	0cf4b023          	sd	a5,192(s1)
    80003550:	00813483          	ld	s1,8(sp)
    80003554:	02010113          	addi	sp,sp,32
    80003558:	00008067          	ret

000000008000355c <console_read>:
    8000355c:	ff010113          	addi	sp,sp,-16
    80003560:	00813423          	sd	s0,8(sp)
    80003564:	01010413          	addi	s0,sp,16
    80003568:	00813403          	ld	s0,8(sp)
    8000356c:	00004317          	auipc	t1,0x4
    80003570:	c3433303          	ld	t1,-972(t1) # 800071a0 <devsw+0x10>
    80003574:	01010113          	addi	sp,sp,16
    80003578:	00030067          	jr	t1

000000008000357c <console_write>:
    8000357c:	ff010113          	addi	sp,sp,-16
    80003580:	00813423          	sd	s0,8(sp)
    80003584:	01010413          	addi	s0,sp,16
    80003588:	00813403          	ld	s0,8(sp)
    8000358c:	00004317          	auipc	t1,0x4
    80003590:	c1c33303          	ld	t1,-996(t1) # 800071a8 <devsw+0x18>
    80003594:	01010113          	addi	sp,sp,16
    80003598:	00030067          	jr	t1

000000008000359c <panic>:
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00813823          	sd	s0,16(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	02010413          	addi	s0,sp,32
    800035b0:	00050493          	mv	s1,a0
    800035b4:	00002517          	auipc	a0,0x2
    800035b8:	10c50513          	addi	a0,a0,268 # 800056c0 <_ZZ12printIntegermE6digits+0x518>
    800035bc:	00004797          	auipc	a5,0x4
    800035c0:	c807a623          	sw	zero,-884(a5) # 80007248 <pr+0x18>
    800035c4:	00000097          	auipc	ra,0x0
    800035c8:	034080e7          	jalr	52(ra) # 800035f8 <__printf>
    800035cc:	00048513          	mv	a0,s1
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	028080e7          	jalr	40(ra) # 800035f8 <__printf>
    800035d8:	00002517          	auipc	a0,0x2
    800035dc:	b5050513          	addi	a0,a0,-1200 # 80005128 <CONSOLE_STATUS+0x118>
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	018080e7          	jalr	24(ra) # 800035f8 <__printf>
    800035e8:	00100793          	li	a5,1
    800035ec:	00003717          	auipc	a4,0x3
    800035f0:	9ef72a23          	sw	a5,-1548(a4) # 80005fe0 <panicked>
    800035f4:	0000006f          	j	800035f4 <panic+0x58>

00000000800035f8 <__printf>:
    800035f8:	f3010113          	addi	sp,sp,-208
    800035fc:	08813023          	sd	s0,128(sp)
    80003600:	07313423          	sd	s3,104(sp)
    80003604:	09010413          	addi	s0,sp,144
    80003608:	05813023          	sd	s8,64(sp)
    8000360c:	08113423          	sd	ra,136(sp)
    80003610:	06913c23          	sd	s1,120(sp)
    80003614:	07213823          	sd	s2,112(sp)
    80003618:	07413023          	sd	s4,96(sp)
    8000361c:	05513c23          	sd	s5,88(sp)
    80003620:	05613823          	sd	s6,80(sp)
    80003624:	05713423          	sd	s7,72(sp)
    80003628:	03913c23          	sd	s9,56(sp)
    8000362c:	03a13823          	sd	s10,48(sp)
    80003630:	03b13423          	sd	s11,40(sp)
    80003634:	00004317          	auipc	t1,0x4
    80003638:	bfc30313          	addi	t1,t1,-1028 # 80007230 <pr>
    8000363c:	01832c03          	lw	s8,24(t1)
    80003640:	00b43423          	sd	a1,8(s0)
    80003644:	00c43823          	sd	a2,16(s0)
    80003648:	00d43c23          	sd	a3,24(s0)
    8000364c:	02e43023          	sd	a4,32(s0)
    80003650:	02f43423          	sd	a5,40(s0)
    80003654:	03043823          	sd	a6,48(s0)
    80003658:	03143c23          	sd	a7,56(s0)
    8000365c:	00050993          	mv	s3,a0
    80003660:	4a0c1663          	bnez	s8,80003b0c <__printf+0x514>
    80003664:	60098c63          	beqz	s3,80003c7c <__printf+0x684>
    80003668:	0009c503          	lbu	a0,0(s3)
    8000366c:	00840793          	addi	a5,s0,8
    80003670:	f6f43c23          	sd	a5,-136(s0)
    80003674:	00000493          	li	s1,0
    80003678:	22050063          	beqz	a0,80003898 <__printf+0x2a0>
    8000367c:	00002a37          	lui	s4,0x2
    80003680:	00018ab7          	lui	s5,0x18
    80003684:	000f4b37          	lui	s6,0xf4
    80003688:	00989bb7          	lui	s7,0x989
    8000368c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003690:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003694:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003698:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000369c:	00148c9b          	addiw	s9,s1,1
    800036a0:	02500793          	li	a5,37
    800036a4:	01998933          	add	s2,s3,s9
    800036a8:	38f51263          	bne	a0,a5,80003a2c <__printf+0x434>
    800036ac:	00094783          	lbu	a5,0(s2)
    800036b0:	00078c9b          	sext.w	s9,a5
    800036b4:	1e078263          	beqz	a5,80003898 <__printf+0x2a0>
    800036b8:	0024849b          	addiw	s1,s1,2
    800036bc:	07000713          	li	a4,112
    800036c0:	00998933          	add	s2,s3,s1
    800036c4:	38e78a63          	beq	a5,a4,80003a58 <__printf+0x460>
    800036c8:	20f76863          	bltu	a4,a5,800038d8 <__printf+0x2e0>
    800036cc:	42a78863          	beq	a5,a0,80003afc <__printf+0x504>
    800036d0:	06400713          	li	a4,100
    800036d4:	40e79663          	bne	a5,a4,80003ae0 <__printf+0x4e8>
    800036d8:	f7843783          	ld	a5,-136(s0)
    800036dc:	0007a603          	lw	a2,0(a5)
    800036e0:	00878793          	addi	a5,a5,8
    800036e4:	f6f43c23          	sd	a5,-136(s0)
    800036e8:	42064a63          	bltz	a2,80003b1c <__printf+0x524>
    800036ec:	00a00713          	li	a4,10
    800036f0:	02e677bb          	remuw	a5,a2,a4
    800036f4:	00002d97          	auipc	s11,0x2
    800036f8:	ff4d8d93          	addi	s11,s11,-12 # 800056e8 <digits>
    800036fc:	00900593          	li	a1,9
    80003700:	0006051b          	sext.w	a0,a2
    80003704:	00000c93          	li	s9,0
    80003708:	02079793          	slli	a5,a5,0x20
    8000370c:	0207d793          	srli	a5,a5,0x20
    80003710:	00fd87b3          	add	a5,s11,a5
    80003714:	0007c783          	lbu	a5,0(a5)
    80003718:	02e656bb          	divuw	a3,a2,a4
    8000371c:	f8f40023          	sb	a5,-128(s0)
    80003720:	14c5d863          	bge	a1,a2,80003870 <__printf+0x278>
    80003724:	06300593          	li	a1,99
    80003728:	00100c93          	li	s9,1
    8000372c:	02e6f7bb          	remuw	a5,a3,a4
    80003730:	02079793          	slli	a5,a5,0x20
    80003734:	0207d793          	srli	a5,a5,0x20
    80003738:	00fd87b3          	add	a5,s11,a5
    8000373c:	0007c783          	lbu	a5,0(a5)
    80003740:	02e6d73b          	divuw	a4,a3,a4
    80003744:	f8f400a3          	sb	a5,-127(s0)
    80003748:	12a5f463          	bgeu	a1,a0,80003870 <__printf+0x278>
    8000374c:	00a00693          	li	a3,10
    80003750:	00900593          	li	a1,9
    80003754:	02d777bb          	remuw	a5,a4,a3
    80003758:	02079793          	slli	a5,a5,0x20
    8000375c:	0207d793          	srli	a5,a5,0x20
    80003760:	00fd87b3          	add	a5,s11,a5
    80003764:	0007c503          	lbu	a0,0(a5)
    80003768:	02d757bb          	divuw	a5,a4,a3
    8000376c:	f8a40123          	sb	a0,-126(s0)
    80003770:	48e5f263          	bgeu	a1,a4,80003bf4 <__printf+0x5fc>
    80003774:	06300513          	li	a0,99
    80003778:	02d7f5bb          	remuw	a1,a5,a3
    8000377c:	02059593          	slli	a1,a1,0x20
    80003780:	0205d593          	srli	a1,a1,0x20
    80003784:	00bd85b3          	add	a1,s11,a1
    80003788:	0005c583          	lbu	a1,0(a1)
    8000378c:	02d7d7bb          	divuw	a5,a5,a3
    80003790:	f8b401a3          	sb	a1,-125(s0)
    80003794:	48e57263          	bgeu	a0,a4,80003c18 <__printf+0x620>
    80003798:	3e700513          	li	a0,999
    8000379c:	02d7f5bb          	remuw	a1,a5,a3
    800037a0:	02059593          	slli	a1,a1,0x20
    800037a4:	0205d593          	srli	a1,a1,0x20
    800037a8:	00bd85b3          	add	a1,s11,a1
    800037ac:	0005c583          	lbu	a1,0(a1)
    800037b0:	02d7d7bb          	divuw	a5,a5,a3
    800037b4:	f8b40223          	sb	a1,-124(s0)
    800037b8:	46e57663          	bgeu	a0,a4,80003c24 <__printf+0x62c>
    800037bc:	02d7f5bb          	remuw	a1,a5,a3
    800037c0:	02059593          	slli	a1,a1,0x20
    800037c4:	0205d593          	srli	a1,a1,0x20
    800037c8:	00bd85b3          	add	a1,s11,a1
    800037cc:	0005c583          	lbu	a1,0(a1)
    800037d0:	02d7d7bb          	divuw	a5,a5,a3
    800037d4:	f8b402a3          	sb	a1,-123(s0)
    800037d8:	46ea7863          	bgeu	s4,a4,80003c48 <__printf+0x650>
    800037dc:	02d7f5bb          	remuw	a1,a5,a3
    800037e0:	02059593          	slli	a1,a1,0x20
    800037e4:	0205d593          	srli	a1,a1,0x20
    800037e8:	00bd85b3          	add	a1,s11,a1
    800037ec:	0005c583          	lbu	a1,0(a1)
    800037f0:	02d7d7bb          	divuw	a5,a5,a3
    800037f4:	f8b40323          	sb	a1,-122(s0)
    800037f8:	3eeaf863          	bgeu	s5,a4,80003be8 <__printf+0x5f0>
    800037fc:	02d7f5bb          	remuw	a1,a5,a3
    80003800:	02059593          	slli	a1,a1,0x20
    80003804:	0205d593          	srli	a1,a1,0x20
    80003808:	00bd85b3          	add	a1,s11,a1
    8000380c:	0005c583          	lbu	a1,0(a1)
    80003810:	02d7d7bb          	divuw	a5,a5,a3
    80003814:	f8b403a3          	sb	a1,-121(s0)
    80003818:	42eb7e63          	bgeu	s6,a4,80003c54 <__printf+0x65c>
    8000381c:	02d7f5bb          	remuw	a1,a5,a3
    80003820:	02059593          	slli	a1,a1,0x20
    80003824:	0205d593          	srli	a1,a1,0x20
    80003828:	00bd85b3          	add	a1,s11,a1
    8000382c:	0005c583          	lbu	a1,0(a1)
    80003830:	02d7d7bb          	divuw	a5,a5,a3
    80003834:	f8b40423          	sb	a1,-120(s0)
    80003838:	42ebfc63          	bgeu	s7,a4,80003c70 <__printf+0x678>
    8000383c:	02079793          	slli	a5,a5,0x20
    80003840:	0207d793          	srli	a5,a5,0x20
    80003844:	00fd8db3          	add	s11,s11,a5
    80003848:	000dc703          	lbu	a4,0(s11)
    8000384c:	00a00793          	li	a5,10
    80003850:	00900c93          	li	s9,9
    80003854:	f8e404a3          	sb	a4,-119(s0)
    80003858:	00065c63          	bgez	a2,80003870 <__printf+0x278>
    8000385c:	f9040713          	addi	a4,s0,-112
    80003860:	00f70733          	add	a4,a4,a5
    80003864:	02d00693          	li	a3,45
    80003868:	fed70823          	sb	a3,-16(a4)
    8000386c:	00078c93          	mv	s9,a5
    80003870:	f8040793          	addi	a5,s0,-128
    80003874:	01978cb3          	add	s9,a5,s9
    80003878:	f7f40d13          	addi	s10,s0,-129
    8000387c:	000cc503          	lbu	a0,0(s9)
    80003880:	fffc8c93          	addi	s9,s9,-1
    80003884:	00000097          	auipc	ra,0x0
    80003888:	b90080e7          	jalr	-1136(ra) # 80003414 <consputc>
    8000388c:	ffac98e3          	bne	s9,s10,8000387c <__printf+0x284>
    80003890:	00094503          	lbu	a0,0(s2)
    80003894:	e00514e3          	bnez	a0,8000369c <__printf+0xa4>
    80003898:	1a0c1663          	bnez	s8,80003a44 <__printf+0x44c>
    8000389c:	08813083          	ld	ra,136(sp)
    800038a0:	08013403          	ld	s0,128(sp)
    800038a4:	07813483          	ld	s1,120(sp)
    800038a8:	07013903          	ld	s2,112(sp)
    800038ac:	06813983          	ld	s3,104(sp)
    800038b0:	06013a03          	ld	s4,96(sp)
    800038b4:	05813a83          	ld	s5,88(sp)
    800038b8:	05013b03          	ld	s6,80(sp)
    800038bc:	04813b83          	ld	s7,72(sp)
    800038c0:	04013c03          	ld	s8,64(sp)
    800038c4:	03813c83          	ld	s9,56(sp)
    800038c8:	03013d03          	ld	s10,48(sp)
    800038cc:	02813d83          	ld	s11,40(sp)
    800038d0:	0d010113          	addi	sp,sp,208
    800038d4:	00008067          	ret
    800038d8:	07300713          	li	a4,115
    800038dc:	1ce78a63          	beq	a5,a4,80003ab0 <__printf+0x4b8>
    800038e0:	07800713          	li	a4,120
    800038e4:	1ee79e63          	bne	a5,a4,80003ae0 <__printf+0x4e8>
    800038e8:	f7843783          	ld	a5,-136(s0)
    800038ec:	0007a703          	lw	a4,0(a5)
    800038f0:	00878793          	addi	a5,a5,8
    800038f4:	f6f43c23          	sd	a5,-136(s0)
    800038f8:	28074263          	bltz	a4,80003b7c <__printf+0x584>
    800038fc:	00002d97          	auipc	s11,0x2
    80003900:	decd8d93          	addi	s11,s11,-532 # 800056e8 <digits>
    80003904:	00f77793          	andi	a5,a4,15
    80003908:	00fd87b3          	add	a5,s11,a5
    8000390c:	0007c683          	lbu	a3,0(a5)
    80003910:	00f00613          	li	a2,15
    80003914:	0007079b          	sext.w	a5,a4
    80003918:	f8d40023          	sb	a3,-128(s0)
    8000391c:	0047559b          	srliw	a1,a4,0x4
    80003920:	0047569b          	srliw	a3,a4,0x4
    80003924:	00000c93          	li	s9,0
    80003928:	0ee65063          	bge	a2,a4,80003a08 <__printf+0x410>
    8000392c:	00f6f693          	andi	a3,a3,15
    80003930:	00dd86b3          	add	a3,s11,a3
    80003934:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003938:	0087d79b          	srliw	a5,a5,0x8
    8000393c:	00100c93          	li	s9,1
    80003940:	f8d400a3          	sb	a3,-127(s0)
    80003944:	0cb67263          	bgeu	a2,a1,80003a08 <__printf+0x410>
    80003948:	00f7f693          	andi	a3,a5,15
    8000394c:	00dd86b3          	add	a3,s11,a3
    80003950:	0006c583          	lbu	a1,0(a3)
    80003954:	00f00613          	li	a2,15
    80003958:	0047d69b          	srliw	a3,a5,0x4
    8000395c:	f8b40123          	sb	a1,-126(s0)
    80003960:	0047d593          	srli	a1,a5,0x4
    80003964:	28f67e63          	bgeu	a2,a5,80003c00 <__printf+0x608>
    80003968:	00f6f693          	andi	a3,a3,15
    8000396c:	00dd86b3          	add	a3,s11,a3
    80003970:	0006c503          	lbu	a0,0(a3)
    80003974:	0087d813          	srli	a6,a5,0x8
    80003978:	0087d69b          	srliw	a3,a5,0x8
    8000397c:	f8a401a3          	sb	a0,-125(s0)
    80003980:	28b67663          	bgeu	a2,a1,80003c0c <__printf+0x614>
    80003984:	00f6f693          	andi	a3,a3,15
    80003988:	00dd86b3          	add	a3,s11,a3
    8000398c:	0006c583          	lbu	a1,0(a3)
    80003990:	00c7d513          	srli	a0,a5,0xc
    80003994:	00c7d69b          	srliw	a3,a5,0xc
    80003998:	f8b40223          	sb	a1,-124(s0)
    8000399c:	29067a63          	bgeu	a2,a6,80003c30 <__printf+0x638>
    800039a0:	00f6f693          	andi	a3,a3,15
    800039a4:	00dd86b3          	add	a3,s11,a3
    800039a8:	0006c583          	lbu	a1,0(a3)
    800039ac:	0107d813          	srli	a6,a5,0x10
    800039b0:	0107d69b          	srliw	a3,a5,0x10
    800039b4:	f8b402a3          	sb	a1,-123(s0)
    800039b8:	28a67263          	bgeu	a2,a0,80003c3c <__printf+0x644>
    800039bc:	00f6f693          	andi	a3,a3,15
    800039c0:	00dd86b3          	add	a3,s11,a3
    800039c4:	0006c683          	lbu	a3,0(a3)
    800039c8:	0147d79b          	srliw	a5,a5,0x14
    800039cc:	f8d40323          	sb	a3,-122(s0)
    800039d0:	21067663          	bgeu	a2,a6,80003bdc <__printf+0x5e4>
    800039d4:	02079793          	slli	a5,a5,0x20
    800039d8:	0207d793          	srli	a5,a5,0x20
    800039dc:	00fd8db3          	add	s11,s11,a5
    800039e0:	000dc683          	lbu	a3,0(s11)
    800039e4:	00800793          	li	a5,8
    800039e8:	00700c93          	li	s9,7
    800039ec:	f8d403a3          	sb	a3,-121(s0)
    800039f0:	00075c63          	bgez	a4,80003a08 <__printf+0x410>
    800039f4:	f9040713          	addi	a4,s0,-112
    800039f8:	00f70733          	add	a4,a4,a5
    800039fc:	02d00693          	li	a3,45
    80003a00:	fed70823          	sb	a3,-16(a4)
    80003a04:	00078c93          	mv	s9,a5
    80003a08:	f8040793          	addi	a5,s0,-128
    80003a0c:	01978cb3          	add	s9,a5,s9
    80003a10:	f7f40d13          	addi	s10,s0,-129
    80003a14:	000cc503          	lbu	a0,0(s9)
    80003a18:	fffc8c93          	addi	s9,s9,-1
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	9f8080e7          	jalr	-1544(ra) # 80003414 <consputc>
    80003a24:	ff9d18e3          	bne	s10,s9,80003a14 <__printf+0x41c>
    80003a28:	0100006f          	j	80003a38 <__printf+0x440>
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	9e8080e7          	jalr	-1560(ra) # 80003414 <consputc>
    80003a34:	000c8493          	mv	s1,s9
    80003a38:	00094503          	lbu	a0,0(s2)
    80003a3c:	c60510e3          	bnez	a0,8000369c <__printf+0xa4>
    80003a40:	e40c0ee3          	beqz	s8,8000389c <__printf+0x2a4>
    80003a44:	00003517          	auipc	a0,0x3
    80003a48:	7ec50513          	addi	a0,a0,2028 # 80007230 <pr>
    80003a4c:	00001097          	auipc	ra,0x1
    80003a50:	94c080e7          	jalr	-1716(ra) # 80004398 <release>
    80003a54:	e49ff06f          	j	8000389c <__printf+0x2a4>
    80003a58:	f7843783          	ld	a5,-136(s0)
    80003a5c:	03000513          	li	a0,48
    80003a60:	01000d13          	li	s10,16
    80003a64:	00878713          	addi	a4,a5,8
    80003a68:	0007bc83          	ld	s9,0(a5)
    80003a6c:	f6e43c23          	sd	a4,-136(s0)
    80003a70:	00000097          	auipc	ra,0x0
    80003a74:	9a4080e7          	jalr	-1628(ra) # 80003414 <consputc>
    80003a78:	07800513          	li	a0,120
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	998080e7          	jalr	-1640(ra) # 80003414 <consputc>
    80003a84:	00002d97          	auipc	s11,0x2
    80003a88:	c64d8d93          	addi	s11,s11,-924 # 800056e8 <digits>
    80003a8c:	03ccd793          	srli	a5,s9,0x3c
    80003a90:	00fd87b3          	add	a5,s11,a5
    80003a94:	0007c503          	lbu	a0,0(a5)
    80003a98:	fffd0d1b          	addiw	s10,s10,-1
    80003a9c:	004c9c93          	slli	s9,s9,0x4
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	974080e7          	jalr	-1676(ra) # 80003414 <consputc>
    80003aa8:	fe0d12e3          	bnez	s10,80003a8c <__printf+0x494>
    80003aac:	f8dff06f          	j	80003a38 <__printf+0x440>
    80003ab0:	f7843783          	ld	a5,-136(s0)
    80003ab4:	0007bc83          	ld	s9,0(a5)
    80003ab8:	00878793          	addi	a5,a5,8
    80003abc:	f6f43c23          	sd	a5,-136(s0)
    80003ac0:	000c9a63          	bnez	s9,80003ad4 <__printf+0x4dc>
    80003ac4:	1080006f          	j	80003bcc <__printf+0x5d4>
    80003ac8:	001c8c93          	addi	s9,s9,1
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	948080e7          	jalr	-1720(ra) # 80003414 <consputc>
    80003ad4:	000cc503          	lbu	a0,0(s9)
    80003ad8:	fe0518e3          	bnez	a0,80003ac8 <__printf+0x4d0>
    80003adc:	f5dff06f          	j	80003a38 <__printf+0x440>
    80003ae0:	02500513          	li	a0,37
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	930080e7          	jalr	-1744(ra) # 80003414 <consputc>
    80003aec:	000c8513          	mv	a0,s9
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	924080e7          	jalr	-1756(ra) # 80003414 <consputc>
    80003af8:	f41ff06f          	j	80003a38 <__printf+0x440>
    80003afc:	02500513          	li	a0,37
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	914080e7          	jalr	-1772(ra) # 80003414 <consputc>
    80003b08:	f31ff06f          	j	80003a38 <__printf+0x440>
    80003b0c:	00030513          	mv	a0,t1
    80003b10:	00000097          	auipc	ra,0x0
    80003b14:	7bc080e7          	jalr	1980(ra) # 800042cc <acquire>
    80003b18:	b4dff06f          	j	80003664 <__printf+0x6c>
    80003b1c:	40c0053b          	negw	a0,a2
    80003b20:	00a00713          	li	a4,10
    80003b24:	02e576bb          	remuw	a3,a0,a4
    80003b28:	00002d97          	auipc	s11,0x2
    80003b2c:	bc0d8d93          	addi	s11,s11,-1088 # 800056e8 <digits>
    80003b30:	ff700593          	li	a1,-9
    80003b34:	02069693          	slli	a3,a3,0x20
    80003b38:	0206d693          	srli	a3,a3,0x20
    80003b3c:	00dd86b3          	add	a3,s11,a3
    80003b40:	0006c683          	lbu	a3,0(a3)
    80003b44:	02e557bb          	divuw	a5,a0,a4
    80003b48:	f8d40023          	sb	a3,-128(s0)
    80003b4c:	10b65e63          	bge	a2,a1,80003c68 <__printf+0x670>
    80003b50:	06300593          	li	a1,99
    80003b54:	02e7f6bb          	remuw	a3,a5,a4
    80003b58:	02069693          	slli	a3,a3,0x20
    80003b5c:	0206d693          	srli	a3,a3,0x20
    80003b60:	00dd86b3          	add	a3,s11,a3
    80003b64:	0006c683          	lbu	a3,0(a3)
    80003b68:	02e7d73b          	divuw	a4,a5,a4
    80003b6c:	00200793          	li	a5,2
    80003b70:	f8d400a3          	sb	a3,-127(s0)
    80003b74:	bca5ece3          	bltu	a1,a0,8000374c <__printf+0x154>
    80003b78:	ce5ff06f          	j	8000385c <__printf+0x264>
    80003b7c:	40e007bb          	negw	a5,a4
    80003b80:	00002d97          	auipc	s11,0x2
    80003b84:	b68d8d93          	addi	s11,s11,-1176 # 800056e8 <digits>
    80003b88:	00f7f693          	andi	a3,a5,15
    80003b8c:	00dd86b3          	add	a3,s11,a3
    80003b90:	0006c583          	lbu	a1,0(a3)
    80003b94:	ff100613          	li	a2,-15
    80003b98:	0047d69b          	srliw	a3,a5,0x4
    80003b9c:	f8b40023          	sb	a1,-128(s0)
    80003ba0:	0047d59b          	srliw	a1,a5,0x4
    80003ba4:	0ac75e63          	bge	a4,a2,80003c60 <__printf+0x668>
    80003ba8:	00f6f693          	andi	a3,a3,15
    80003bac:	00dd86b3          	add	a3,s11,a3
    80003bb0:	0006c603          	lbu	a2,0(a3)
    80003bb4:	00f00693          	li	a3,15
    80003bb8:	0087d79b          	srliw	a5,a5,0x8
    80003bbc:	f8c400a3          	sb	a2,-127(s0)
    80003bc0:	d8b6e4e3          	bltu	a3,a1,80003948 <__printf+0x350>
    80003bc4:	00200793          	li	a5,2
    80003bc8:	e2dff06f          	j	800039f4 <__printf+0x3fc>
    80003bcc:	00002c97          	auipc	s9,0x2
    80003bd0:	afcc8c93          	addi	s9,s9,-1284 # 800056c8 <_ZZ12printIntegermE6digits+0x520>
    80003bd4:	02800513          	li	a0,40
    80003bd8:	ef1ff06f          	j	80003ac8 <__printf+0x4d0>
    80003bdc:	00700793          	li	a5,7
    80003be0:	00600c93          	li	s9,6
    80003be4:	e0dff06f          	j	800039f0 <__printf+0x3f8>
    80003be8:	00700793          	li	a5,7
    80003bec:	00600c93          	li	s9,6
    80003bf0:	c69ff06f          	j	80003858 <__printf+0x260>
    80003bf4:	00300793          	li	a5,3
    80003bf8:	00200c93          	li	s9,2
    80003bfc:	c5dff06f          	j	80003858 <__printf+0x260>
    80003c00:	00300793          	li	a5,3
    80003c04:	00200c93          	li	s9,2
    80003c08:	de9ff06f          	j	800039f0 <__printf+0x3f8>
    80003c0c:	00400793          	li	a5,4
    80003c10:	00300c93          	li	s9,3
    80003c14:	dddff06f          	j	800039f0 <__printf+0x3f8>
    80003c18:	00400793          	li	a5,4
    80003c1c:	00300c93          	li	s9,3
    80003c20:	c39ff06f          	j	80003858 <__printf+0x260>
    80003c24:	00500793          	li	a5,5
    80003c28:	00400c93          	li	s9,4
    80003c2c:	c2dff06f          	j	80003858 <__printf+0x260>
    80003c30:	00500793          	li	a5,5
    80003c34:	00400c93          	li	s9,4
    80003c38:	db9ff06f          	j	800039f0 <__printf+0x3f8>
    80003c3c:	00600793          	li	a5,6
    80003c40:	00500c93          	li	s9,5
    80003c44:	dadff06f          	j	800039f0 <__printf+0x3f8>
    80003c48:	00600793          	li	a5,6
    80003c4c:	00500c93          	li	s9,5
    80003c50:	c09ff06f          	j	80003858 <__printf+0x260>
    80003c54:	00800793          	li	a5,8
    80003c58:	00700c93          	li	s9,7
    80003c5c:	bfdff06f          	j	80003858 <__printf+0x260>
    80003c60:	00100793          	li	a5,1
    80003c64:	d91ff06f          	j	800039f4 <__printf+0x3fc>
    80003c68:	00100793          	li	a5,1
    80003c6c:	bf1ff06f          	j	8000385c <__printf+0x264>
    80003c70:	00900793          	li	a5,9
    80003c74:	00800c93          	li	s9,8
    80003c78:	be1ff06f          	j	80003858 <__printf+0x260>
    80003c7c:	00002517          	auipc	a0,0x2
    80003c80:	a5450513          	addi	a0,a0,-1452 # 800056d0 <_ZZ12printIntegermE6digits+0x528>
    80003c84:	00000097          	auipc	ra,0x0
    80003c88:	918080e7          	jalr	-1768(ra) # 8000359c <panic>

0000000080003c8c <printfinit>:
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	00113c23          	sd	ra,24(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    80003ca0:	00003497          	auipc	s1,0x3
    80003ca4:	59048493          	addi	s1,s1,1424 # 80007230 <pr>
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00002597          	auipc	a1,0x2
    80003cb0:	a3458593          	addi	a1,a1,-1484 # 800056e0 <_ZZ12printIntegermE6digits+0x538>
    80003cb4:	00000097          	auipc	ra,0x0
    80003cb8:	5f4080e7          	jalr	1524(ra) # 800042a8 <initlock>
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	01013403          	ld	s0,16(sp)
    80003cc4:	0004ac23          	sw	zero,24(s1)
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	02010113          	addi	sp,sp,32
    80003cd0:	00008067          	ret

0000000080003cd4 <uartinit>:
    80003cd4:	ff010113          	addi	sp,sp,-16
    80003cd8:	00813423          	sd	s0,8(sp)
    80003cdc:	01010413          	addi	s0,sp,16
    80003ce0:	100007b7          	lui	a5,0x10000
    80003ce4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003ce8:	f8000713          	li	a4,-128
    80003cec:	00e781a3          	sb	a4,3(a5)
    80003cf0:	00300713          	li	a4,3
    80003cf4:	00e78023          	sb	a4,0(a5)
    80003cf8:	000780a3          	sb	zero,1(a5)
    80003cfc:	00e781a3          	sb	a4,3(a5)
    80003d00:	00700693          	li	a3,7
    80003d04:	00d78123          	sb	a3,2(a5)
    80003d08:	00e780a3          	sb	a4,1(a5)
    80003d0c:	00813403          	ld	s0,8(sp)
    80003d10:	01010113          	addi	sp,sp,16
    80003d14:	00008067          	ret

0000000080003d18 <uartputc>:
    80003d18:	00002797          	auipc	a5,0x2
    80003d1c:	2c87a783          	lw	a5,712(a5) # 80005fe0 <panicked>
    80003d20:	00078463          	beqz	a5,80003d28 <uartputc+0x10>
    80003d24:	0000006f          	j	80003d24 <uartputc+0xc>
    80003d28:	fd010113          	addi	sp,sp,-48
    80003d2c:	02813023          	sd	s0,32(sp)
    80003d30:	00913c23          	sd	s1,24(sp)
    80003d34:	01213823          	sd	s2,16(sp)
    80003d38:	01313423          	sd	s3,8(sp)
    80003d3c:	02113423          	sd	ra,40(sp)
    80003d40:	03010413          	addi	s0,sp,48
    80003d44:	00002917          	auipc	s2,0x2
    80003d48:	2a490913          	addi	s2,s2,676 # 80005fe8 <uart_tx_r>
    80003d4c:	00093783          	ld	a5,0(s2)
    80003d50:	00002497          	auipc	s1,0x2
    80003d54:	2a048493          	addi	s1,s1,672 # 80005ff0 <uart_tx_w>
    80003d58:	0004b703          	ld	a4,0(s1)
    80003d5c:	02078693          	addi	a3,a5,32
    80003d60:	00050993          	mv	s3,a0
    80003d64:	02e69c63          	bne	a3,a4,80003d9c <uartputc+0x84>
    80003d68:	00001097          	auipc	ra,0x1
    80003d6c:	834080e7          	jalr	-1996(ra) # 8000459c <push_on>
    80003d70:	00093783          	ld	a5,0(s2)
    80003d74:	0004b703          	ld	a4,0(s1)
    80003d78:	02078793          	addi	a5,a5,32
    80003d7c:	00e79463          	bne	a5,a4,80003d84 <uartputc+0x6c>
    80003d80:	0000006f          	j	80003d80 <uartputc+0x68>
    80003d84:	00001097          	auipc	ra,0x1
    80003d88:	88c080e7          	jalr	-1908(ra) # 80004610 <pop_on>
    80003d8c:	00093783          	ld	a5,0(s2)
    80003d90:	0004b703          	ld	a4,0(s1)
    80003d94:	02078693          	addi	a3,a5,32
    80003d98:	fce688e3          	beq	a3,a4,80003d68 <uartputc+0x50>
    80003d9c:	01f77693          	andi	a3,a4,31
    80003da0:	00003597          	auipc	a1,0x3
    80003da4:	4b058593          	addi	a1,a1,1200 # 80007250 <uart_tx_buf>
    80003da8:	00d586b3          	add	a3,a1,a3
    80003dac:	00170713          	addi	a4,a4,1
    80003db0:	01368023          	sb	s3,0(a3)
    80003db4:	00e4b023          	sd	a4,0(s1)
    80003db8:	10000637          	lui	a2,0x10000
    80003dbc:	02f71063          	bne	a4,a5,80003ddc <uartputc+0xc4>
    80003dc0:	0340006f          	j	80003df4 <uartputc+0xdc>
    80003dc4:	00074703          	lbu	a4,0(a4)
    80003dc8:	00f93023          	sd	a5,0(s2)
    80003dcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003dd0:	00093783          	ld	a5,0(s2)
    80003dd4:	0004b703          	ld	a4,0(s1)
    80003dd8:	00f70e63          	beq	a4,a5,80003df4 <uartputc+0xdc>
    80003ddc:	00564683          	lbu	a3,5(a2)
    80003de0:	01f7f713          	andi	a4,a5,31
    80003de4:	00e58733          	add	a4,a1,a4
    80003de8:	0206f693          	andi	a3,a3,32
    80003dec:	00178793          	addi	a5,a5,1
    80003df0:	fc069ae3          	bnez	a3,80003dc4 <uartputc+0xac>
    80003df4:	02813083          	ld	ra,40(sp)
    80003df8:	02013403          	ld	s0,32(sp)
    80003dfc:	01813483          	ld	s1,24(sp)
    80003e00:	01013903          	ld	s2,16(sp)
    80003e04:	00813983          	ld	s3,8(sp)
    80003e08:	03010113          	addi	sp,sp,48
    80003e0c:	00008067          	ret

0000000080003e10 <uartputc_sync>:
    80003e10:	ff010113          	addi	sp,sp,-16
    80003e14:	00813423          	sd	s0,8(sp)
    80003e18:	01010413          	addi	s0,sp,16
    80003e1c:	00002717          	auipc	a4,0x2
    80003e20:	1c472703          	lw	a4,452(a4) # 80005fe0 <panicked>
    80003e24:	02071663          	bnez	a4,80003e50 <uartputc_sync+0x40>
    80003e28:	00050793          	mv	a5,a0
    80003e2c:	100006b7          	lui	a3,0x10000
    80003e30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003e34:	02077713          	andi	a4,a4,32
    80003e38:	fe070ce3          	beqz	a4,80003e30 <uartputc_sync+0x20>
    80003e3c:	0ff7f793          	andi	a5,a5,255
    80003e40:	00f68023          	sb	a5,0(a3)
    80003e44:	00813403          	ld	s0,8(sp)
    80003e48:	01010113          	addi	sp,sp,16
    80003e4c:	00008067          	ret
    80003e50:	0000006f          	j	80003e50 <uartputc_sync+0x40>

0000000080003e54 <uartstart>:
    80003e54:	ff010113          	addi	sp,sp,-16
    80003e58:	00813423          	sd	s0,8(sp)
    80003e5c:	01010413          	addi	s0,sp,16
    80003e60:	00002617          	auipc	a2,0x2
    80003e64:	18860613          	addi	a2,a2,392 # 80005fe8 <uart_tx_r>
    80003e68:	00002517          	auipc	a0,0x2
    80003e6c:	18850513          	addi	a0,a0,392 # 80005ff0 <uart_tx_w>
    80003e70:	00063783          	ld	a5,0(a2)
    80003e74:	00053703          	ld	a4,0(a0)
    80003e78:	04f70263          	beq	a4,a5,80003ebc <uartstart+0x68>
    80003e7c:	100005b7          	lui	a1,0x10000
    80003e80:	00003817          	auipc	a6,0x3
    80003e84:	3d080813          	addi	a6,a6,976 # 80007250 <uart_tx_buf>
    80003e88:	01c0006f          	j	80003ea4 <uartstart+0x50>
    80003e8c:	0006c703          	lbu	a4,0(a3)
    80003e90:	00f63023          	sd	a5,0(a2)
    80003e94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e98:	00063783          	ld	a5,0(a2)
    80003e9c:	00053703          	ld	a4,0(a0)
    80003ea0:	00f70e63          	beq	a4,a5,80003ebc <uartstart+0x68>
    80003ea4:	01f7f713          	andi	a4,a5,31
    80003ea8:	00e806b3          	add	a3,a6,a4
    80003eac:	0055c703          	lbu	a4,5(a1)
    80003eb0:	00178793          	addi	a5,a5,1
    80003eb4:	02077713          	andi	a4,a4,32
    80003eb8:	fc071ae3          	bnez	a4,80003e8c <uartstart+0x38>
    80003ebc:	00813403          	ld	s0,8(sp)
    80003ec0:	01010113          	addi	sp,sp,16
    80003ec4:	00008067          	ret

0000000080003ec8 <uartgetc>:
    80003ec8:	ff010113          	addi	sp,sp,-16
    80003ecc:	00813423          	sd	s0,8(sp)
    80003ed0:	01010413          	addi	s0,sp,16
    80003ed4:	10000737          	lui	a4,0x10000
    80003ed8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003edc:	0017f793          	andi	a5,a5,1
    80003ee0:	00078c63          	beqz	a5,80003ef8 <uartgetc+0x30>
    80003ee4:	00074503          	lbu	a0,0(a4)
    80003ee8:	0ff57513          	andi	a0,a0,255
    80003eec:	00813403          	ld	s0,8(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret
    80003ef8:	fff00513          	li	a0,-1
    80003efc:	ff1ff06f          	j	80003eec <uartgetc+0x24>

0000000080003f00 <uartintr>:
    80003f00:	100007b7          	lui	a5,0x10000
    80003f04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003f08:	0017f793          	andi	a5,a5,1
    80003f0c:	0a078463          	beqz	a5,80003fb4 <uartintr+0xb4>
    80003f10:	fe010113          	addi	sp,sp,-32
    80003f14:	00813823          	sd	s0,16(sp)
    80003f18:	00913423          	sd	s1,8(sp)
    80003f1c:	00113c23          	sd	ra,24(sp)
    80003f20:	02010413          	addi	s0,sp,32
    80003f24:	100004b7          	lui	s1,0x10000
    80003f28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003f2c:	0ff57513          	andi	a0,a0,255
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	534080e7          	jalr	1332(ra) # 80003464 <consoleintr>
    80003f38:	0054c783          	lbu	a5,5(s1)
    80003f3c:	0017f793          	andi	a5,a5,1
    80003f40:	fe0794e3          	bnez	a5,80003f28 <uartintr+0x28>
    80003f44:	00002617          	auipc	a2,0x2
    80003f48:	0a460613          	addi	a2,a2,164 # 80005fe8 <uart_tx_r>
    80003f4c:	00002517          	auipc	a0,0x2
    80003f50:	0a450513          	addi	a0,a0,164 # 80005ff0 <uart_tx_w>
    80003f54:	00063783          	ld	a5,0(a2)
    80003f58:	00053703          	ld	a4,0(a0)
    80003f5c:	04f70263          	beq	a4,a5,80003fa0 <uartintr+0xa0>
    80003f60:	100005b7          	lui	a1,0x10000
    80003f64:	00003817          	auipc	a6,0x3
    80003f68:	2ec80813          	addi	a6,a6,748 # 80007250 <uart_tx_buf>
    80003f6c:	01c0006f          	j	80003f88 <uartintr+0x88>
    80003f70:	0006c703          	lbu	a4,0(a3)
    80003f74:	00f63023          	sd	a5,0(a2)
    80003f78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f7c:	00063783          	ld	a5,0(a2)
    80003f80:	00053703          	ld	a4,0(a0)
    80003f84:	00f70e63          	beq	a4,a5,80003fa0 <uartintr+0xa0>
    80003f88:	01f7f713          	andi	a4,a5,31
    80003f8c:	00e806b3          	add	a3,a6,a4
    80003f90:	0055c703          	lbu	a4,5(a1)
    80003f94:	00178793          	addi	a5,a5,1
    80003f98:	02077713          	andi	a4,a4,32
    80003f9c:	fc071ae3          	bnez	a4,80003f70 <uartintr+0x70>
    80003fa0:	01813083          	ld	ra,24(sp)
    80003fa4:	01013403          	ld	s0,16(sp)
    80003fa8:	00813483          	ld	s1,8(sp)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00008067          	ret
    80003fb4:	00002617          	auipc	a2,0x2
    80003fb8:	03460613          	addi	a2,a2,52 # 80005fe8 <uart_tx_r>
    80003fbc:	00002517          	auipc	a0,0x2
    80003fc0:	03450513          	addi	a0,a0,52 # 80005ff0 <uart_tx_w>
    80003fc4:	00063783          	ld	a5,0(a2)
    80003fc8:	00053703          	ld	a4,0(a0)
    80003fcc:	04f70263          	beq	a4,a5,80004010 <uartintr+0x110>
    80003fd0:	100005b7          	lui	a1,0x10000
    80003fd4:	00003817          	auipc	a6,0x3
    80003fd8:	27c80813          	addi	a6,a6,636 # 80007250 <uart_tx_buf>
    80003fdc:	01c0006f          	j	80003ff8 <uartintr+0xf8>
    80003fe0:	0006c703          	lbu	a4,0(a3)
    80003fe4:	00f63023          	sd	a5,0(a2)
    80003fe8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003fec:	00063783          	ld	a5,0(a2)
    80003ff0:	00053703          	ld	a4,0(a0)
    80003ff4:	02f70063          	beq	a4,a5,80004014 <uartintr+0x114>
    80003ff8:	01f7f713          	andi	a4,a5,31
    80003ffc:	00e806b3          	add	a3,a6,a4
    80004000:	0055c703          	lbu	a4,5(a1)
    80004004:	00178793          	addi	a5,a5,1
    80004008:	02077713          	andi	a4,a4,32
    8000400c:	fc071ae3          	bnez	a4,80003fe0 <uartintr+0xe0>
    80004010:	00008067          	ret
    80004014:	00008067          	ret

0000000080004018 <kinit>:
    80004018:	fc010113          	addi	sp,sp,-64
    8000401c:	02913423          	sd	s1,40(sp)
    80004020:	fffff7b7          	lui	a5,0xfffff
    80004024:	00004497          	auipc	s1,0x4
    80004028:	24b48493          	addi	s1,s1,587 # 8000826f <end+0xfff>
    8000402c:	02813823          	sd	s0,48(sp)
    80004030:	01313c23          	sd	s3,24(sp)
    80004034:	00f4f4b3          	and	s1,s1,a5
    80004038:	02113c23          	sd	ra,56(sp)
    8000403c:	03213023          	sd	s2,32(sp)
    80004040:	01413823          	sd	s4,16(sp)
    80004044:	01513423          	sd	s5,8(sp)
    80004048:	04010413          	addi	s0,sp,64
    8000404c:	000017b7          	lui	a5,0x1
    80004050:	01100993          	li	s3,17
    80004054:	00f487b3          	add	a5,s1,a5
    80004058:	01b99993          	slli	s3,s3,0x1b
    8000405c:	06f9e063          	bltu	s3,a5,800040bc <kinit+0xa4>
    80004060:	00003a97          	auipc	s5,0x3
    80004064:	210a8a93          	addi	s5,s5,528 # 80007270 <end>
    80004068:	0754ec63          	bltu	s1,s5,800040e0 <kinit+0xc8>
    8000406c:	0734fa63          	bgeu	s1,s3,800040e0 <kinit+0xc8>
    80004070:	00088a37          	lui	s4,0x88
    80004074:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004078:	00002917          	auipc	s2,0x2
    8000407c:	f8090913          	addi	s2,s2,-128 # 80005ff8 <kmem>
    80004080:	00ca1a13          	slli	s4,s4,0xc
    80004084:	0140006f          	j	80004098 <kinit+0x80>
    80004088:	000017b7          	lui	a5,0x1
    8000408c:	00f484b3          	add	s1,s1,a5
    80004090:	0554e863          	bltu	s1,s5,800040e0 <kinit+0xc8>
    80004094:	0534f663          	bgeu	s1,s3,800040e0 <kinit+0xc8>
    80004098:	00001637          	lui	a2,0x1
    8000409c:	00100593          	li	a1,1
    800040a0:	00048513          	mv	a0,s1
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	5e4080e7          	jalr	1508(ra) # 80004688 <__memset>
    800040ac:	00093783          	ld	a5,0(s2)
    800040b0:	00f4b023          	sd	a5,0(s1)
    800040b4:	00993023          	sd	s1,0(s2)
    800040b8:	fd4498e3          	bne	s1,s4,80004088 <kinit+0x70>
    800040bc:	03813083          	ld	ra,56(sp)
    800040c0:	03013403          	ld	s0,48(sp)
    800040c4:	02813483          	ld	s1,40(sp)
    800040c8:	02013903          	ld	s2,32(sp)
    800040cc:	01813983          	ld	s3,24(sp)
    800040d0:	01013a03          	ld	s4,16(sp)
    800040d4:	00813a83          	ld	s5,8(sp)
    800040d8:	04010113          	addi	sp,sp,64
    800040dc:	00008067          	ret
    800040e0:	00001517          	auipc	a0,0x1
    800040e4:	62050513          	addi	a0,a0,1568 # 80005700 <digits+0x18>
    800040e8:	fffff097          	auipc	ra,0xfffff
    800040ec:	4b4080e7          	jalr	1204(ra) # 8000359c <panic>

00000000800040f0 <freerange>:
    800040f0:	fc010113          	addi	sp,sp,-64
    800040f4:	000017b7          	lui	a5,0x1
    800040f8:	02913423          	sd	s1,40(sp)
    800040fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004100:	009504b3          	add	s1,a0,s1
    80004104:	fffff537          	lui	a0,0xfffff
    80004108:	02813823          	sd	s0,48(sp)
    8000410c:	02113c23          	sd	ra,56(sp)
    80004110:	03213023          	sd	s2,32(sp)
    80004114:	01313c23          	sd	s3,24(sp)
    80004118:	01413823          	sd	s4,16(sp)
    8000411c:	01513423          	sd	s5,8(sp)
    80004120:	01613023          	sd	s6,0(sp)
    80004124:	04010413          	addi	s0,sp,64
    80004128:	00a4f4b3          	and	s1,s1,a0
    8000412c:	00f487b3          	add	a5,s1,a5
    80004130:	06f5e463          	bltu	a1,a5,80004198 <freerange+0xa8>
    80004134:	00003a97          	auipc	s5,0x3
    80004138:	13ca8a93          	addi	s5,s5,316 # 80007270 <end>
    8000413c:	0954e263          	bltu	s1,s5,800041c0 <freerange+0xd0>
    80004140:	01100993          	li	s3,17
    80004144:	01b99993          	slli	s3,s3,0x1b
    80004148:	0734fc63          	bgeu	s1,s3,800041c0 <freerange+0xd0>
    8000414c:	00058a13          	mv	s4,a1
    80004150:	00002917          	auipc	s2,0x2
    80004154:	ea890913          	addi	s2,s2,-344 # 80005ff8 <kmem>
    80004158:	00002b37          	lui	s6,0x2
    8000415c:	0140006f          	j	80004170 <freerange+0x80>
    80004160:	000017b7          	lui	a5,0x1
    80004164:	00f484b3          	add	s1,s1,a5
    80004168:	0554ec63          	bltu	s1,s5,800041c0 <freerange+0xd0>
    8000416c:	0534fa63          	bgeu	s1,s3,800041c0 <freerange+0xd0>
    80004170:	00001637          	lui	a2,0x1
    80004174:	00100593          	li	a1,1
    80004178:	00048513          	mv	a0,s1
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	50c080e7          	jalr	1292(ra) # 80004688 <__memset>
    80004184:	00093703          	ld	a4,0(s2)
    80004188:	016487b3          	add	a5,s1,s6
    8000418c:	00e4b023          	sd	a4,0(s1)
    80004190:	00993023          	sd	s1,0(s2)
    80004194:	fcfa76e3          	bgeu	s4,a5,80004160 <freerange+0x70>
    80004198:	03813083          	ld	ra,56(sp)
    8000419c:	03013403          	ld	s0,48(sp)
    800041a0:	02813483          	ld	s1,40(sp)
    800041a4:	02013903          	ld	s2,32(sp)
    800041a8:	01813983          	ld	s3,24(sp)
    800041ac:	01013a03          	ld	s4,16(sp)
    800041b0:	00813a83          	ld	s5,8(sp)
    800041b4:	00013b03          	ld	s6,0(sp)
    800041b8:	04010113          	addi	sp,sp,64
    800041bc:	00008067          	ret
    800041c0:	00001517          	auipc	a0,0x1
    800041c4:	54050513          	addi	a0,a0,1344 # 80005700 <digits+0x18>
    800041c8:	fffff097          	auipc	ra,0xfffff
    800041cc:	3d4080e7          	jalr	980(ra) # 8000359c <panic>

00000000800041d0 <kfree>:
    800041d0:	fe010113          	addi	sp,sp,-32
    800041d4:	00813823          	sd	s0,16(sp)
    800041d8:	00113c23          	sd	ra,24(sp)
    800041dc:	00913423          	sd	s1,8(sp)
    800041e0:	02010413          	addi	s0,sp,32
    800041e4:	03451793          	slli	a5,a0,0x34
    800041e8:	04079c63          	bnez	a5,80004240 <kfree+0x70>
    800041ec:	00003797          	auipc	a5,0x3
    800041f0:	08478793          	addi	a5,a5,132 # 80007270 <end>
    800041f4:	00050493          	mv	s1,a0
    800041f8:	04f56463          	bltu	a0,a5,80004240 <kfree+0x70>
    800041fc:	01100793          	li	a5,17
    80004200:	01b79793          	slli	a5,a5,0x1b
    80004204:	02f57e63          	bgeu	a0,a5,80004240 <kfree+0x70>
    80004208:	00001637          	lui	a2,0x1
    8000420c:	00100593          	li	a1,1
    80004210:	00000097          	auipc	ra,0x0
    80004214:	478080e7          	jalr	1144(ra) # 80004688 <__memset>
    80004218:	00002797          	auipc	a5,0x2
    8000421c:	de078793          	addi	a5,a5,-544 # 80005ff8 <kmem>
    80004220:	0007b703          	ld	a4,0(a5)
    80004224:	01813083          	ld	ra,24(sp)
    80004228:	01013403          	ld	s0,16(sp)
    8000422c:	00e4b023          	sd	a4,0(s1)
    80004230:	0097b023          	sd	s1,0(a5)
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret
    80004240:	00001517          	auipc	a0,0x1
    80004244:	4c050513          	addi	a0,a0,1216 # 80005700 <digits+0x18>
    80004248:	fffff097          	auipc	ra,0xfffff
    8000424c:	354080e7          	jalr	852(ra) # 8000359c <panic>

0000000080004250 <kalloc>:
    80004250:	fe010113          	addi	sp,sp,-32
    80004254:	00813823          	sd	s0,16(sp)
    80004258:	00913423          	sd	s1,8(sp)
    8000425c:	00113c23          	sd	ra,24(sp)
    80004260:	02010413          	addi	s0,sp,32
    80004264:	00002797          	auipc	a5,0x2
    80004268:	d9478793          	addi	a5,a5,-620 # 80005ff8 <kmem>
    8000426c:	0007b483          	ld	s1,0(a5)
    80004270:	02048063          	beqz	s1,80004290 <kalloc+0x40>
    80004274:	0004b703          	ld	a4,0(s1)
    80004278:	00001637          	lui	a2,0x1
    8000427c:	00500593          	li	a1,5
    80004280:	00048513          	mv	a0,s1
    80004284:	00e7b023          	sd	a4,0(a5)
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	400080e7          	jalr	1024(ra) # 80004688 <__memset>
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	00048513          	mv	a0,s1
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret

00000000800042a8 <initlock>:
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00813423          	sd	s0,8(sp)
    800042b0:	01010413          	addi	s0,sp,16
    800042b4:	00813403          	ld	s0,8(sp)
    800042b8:	00b53423          	sd	a1,8(a0)
    800042bc:	00052023          	sw	zero,0(a0)
    800042c0:	00053823          	sd	zero,16(a0)
    800042c4:	01010113          	addi	sp,sp,16
    800042c8:	00008067          	ret

00000000800042cc <acquire>:
    800042cc:	fe010113          	addi	sp,sp,-32
    800042d0:	00813823          	sd	s0,16(sp)
    800042d4:	00913423          	sd	s1,8(sp)
    800042d8:	00113c23          	sd	ra,24(sp)
    800042dc:	01213023          	sd	s2,0(sp)
    800042e0:	02010413          	addi	s0,sp,32
    800042e4:	00050493          	mv	s1,a0
    800042e8:	10002973          	csrr	s2,sstatus
    800042ec:	100027f3          	csrr	a5,sstatus
    800042f0:	ffd7f793          	andi	a5,a5,-3
    800042f4:	10079073          	csrw	sstatus,a5
    800042f8:	fffff097          	auipc	ra,0xfffff
    800042fc:	8e4080e7          	jalr	-1820(ra) # 80002bdc <mycpu>
    80004300:	07852783          	lw	a5,120(a0)
    80004304:	06078e63          	beqz	a5,80004380 <acquire+0xb4>
    80004308:	fffff097          	auipc	ra,0xfffff
    8000430c:	8d4080e7          	jalr	-1836(ra) # 80002bdc <mycpu>
    80004310:	07852783          	lw	a5,120(a0)
    80004314:	0004a703          	lw	a4,0(s1)
    80004318:	0017879b          	addiw	a5,a5,1
    8000431c:	06f52c23          	sw	a5,120(a0)
    80004320:	04071063          	bnez	a4,80004360 <acquire+0x94>
    80004324:	00100713          	li	a4,1
    80004328:	00070793          	mv	a5,a4
    8000432c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004330:	0007879b          	sext.w	a5,a5
    80004334:	fe079ae3          	bnez	a5,80004328 <acquire+0x5c>
    80004338:	0ff0000f          	fence
    8000433c:	fffff097          	auipc	ra,0xfffff
    80004340:	8a0080e7          	jalr	-1888(ra) # 80002bdc <mycpu>
    80004344:	01813083          	ld	ra,24(sp)
    80004348:	01013403          	ld	s0,16(sp)
    8000434c:	00a4b823          	sd	a0,16(s1)
    80004350:	00013903          	ld	s2,0(sp)
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	02010113          	addi	sp,sp,32
    8000435c:	00008067          	ret
    80004360:	0104b903          	ld	s2,16(s1)
    80004364:	fffff097          	auipc	ra,0xfffff
    80004368:	878080e7          	jalr	-1928(ra) # 80002bdc <mycpu>
    8000436c:	faa91ce3          	bne	s2,a0,80004324 <acquire+0x58>
    80004370:	00001517          	auipc	a0,0x1
    80004374:	39850513          	addi	a0,a0,920 # 80005708 <digits+0x20>
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	224080e7          	jalr	548(ra) # 8000359c <panic>
    80004380:	00195913          	srli	s2,s2,0x1
    80004384:	fffff097          	auipc	ra,0xfffff
    80004388:	858080e7          	jalr	-1960(ra) # 80002bdc <mycpu>
    8000438c:	00197913          	andi	s2,s2,1
    80004390:	07252e23          	sw	s2,124(a0)
    80004394:	f75ff06f          	j	80004308 <acquire+0x3c>

0000000080004398 <release>:
    80004398:	fe010113          	addi	sp,sp,-32
    8000439c:	00813823          	sd	s0,16(sp)
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	00913423          	sd	s1,8(sp)
    800043a8:	01213023          	sd	s2,0(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00052783          	lw	a5,0(a0)
    800043b4:	00079a63          	bnez	a5,800043c8 <release+0x30>
    800043b8:	00001517          	auipc	a0,0x1
    800043bc:	35850513          	addi	a0,a0,856 # 80005710 <digits+0x28>
    800043c0:	fffff097          	auipc	ra,0xfffff
    800043c4:	1dc080e7          	jalr	476(ra) # 8000359c <panic>
    800043c8:	01053903          	ld	s2,16(a0)
    800043cc:	00050493          	mv	s1,a0
    800043d0:	fffff097          	auipc	ra,0xfffff
    800043d4:	80c080e7          	jalr	-2036(ra) # 80002bdc <mycpu>
    800043d8:	fea910e3          	bne	s2,a0,800043b8 <release+0x20>
    800043dc:	0004b823          	sd	zero,16(s1)
    800043e0:	0ff0000f          	fence
    800043e4:	0f50000f          	fence	iorw,ow
    800043e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	7f0080e7          	jalr	2032(ra) # 80002bdc <mycpu>
    800043f4:	100027f3          	csrr	a5,sstatus
    800043f8:	0027f793          	andi	a5,a5,2
    800043fc:	04079a63          	bnez	a5,80004450 <release+0xb8>
    80004400:	07852783          	lw	a5,120(a0)
    80004404:	02f05e63          	blez	a5,80004440 <release+0xa8>
    80004408:	fff7871b          	addiw	a4,a5,-1
    8000440c:	06e52c23          	sw	a4,120(a0)
    80004410:	00071c63          	bnez	a4,80004428 <release+0x90>
    80004414:	07c52783          	lw	a5,124(a0)
    80004418:	00078863          	beqz	a5,80004428 <release+0x90>
    8000441c:	100027f3          	csrr	a5,sstatus
    80004420:	0027e793          	ori	a5,a5,2
    80004424:	10079073          	csrw	sstatus,a5
    80004428:	01813083          	ld	ra,24(sp)
    8000442c:	01013403          	ld	s0,16(sp)
    80004430:	00813483          	ld	s1,8(sp)
    80004434:	00013903          	ld	s2,0(sp)
    80004438:	02010113          	addi	sp,sp,32
    8000443c:	00008067          	ret
    80004440:	00001517          	auipc	a0,0x1
    80004444:	2f050513          	addi	a0,a0,752 # 80005730 <digits+0x48>
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	154080e7          	jalr	340(ra) # 8000359c <panic>
    80004450:	00001517          	auipc	a0,0x1
    80004454:	2c850513          	addi	a0,a0,712 # 80005718 <digits+0x30>
    80004458:	fffff097          	auipc	ra,0xfffff
    8000445c:	144080e7          	jalr	324(ra) # 8000359c <panic>

0000000080004460 <holding>:
    80004460:	00052783          	lw	a5,0(a0)
    80004464:	00079663          	bnez	a5,80004470 <holding+0x10>
    80004468:	00000513          	li	a0,0
    8000446c:	00008067          	ret
    80004470:	fe010113          	addi	sp,sp,-32
    80004474:	00813823          	sd	s0,16(sp)
    80004478:	00913423          	sd	s1,8(sp)
    8000447c:	00113c23          	sd	ra,24(sp)
    80004480:	02010413          	addi	s0,sp,32
    80004484:	01053483          	ld	s1,16(a0)
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	754080e7          	jalr	1876(ra) # 80002bdc <mycpu>
    80004490:	01813083          	ld	ra,24(sp)
    80004494:	01013403          	ld	s0,16(sp)
    80004498:	40a48533          	sub	a0,s1,a0
    8000449c:	00153513          	seqz	a0,a0
    800044a0:	00813483          	ld	s1,8(sp)
    800044a4:	02010113          	addi	sp,sp,32
    800044a8:	00008067          	ret

00000000800044ac <push_off>:
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00813823          	sd	s0,16(sp)
    800044b4:	00113c23          	sd	ra,24(sp)
    800044b8:	00913423          	sd	s1,8(sp)
    800044bc:	02010413          	addi	s0,sp,32
    800044c0:	100024f3          	csrr	s1,sstatus
    800044c4:	100027f3          	csrr	a5,sstatus
    800044c8:	ffd7f793          	andi	a5,a5,-3
    800044cc:	10079073          	csrw	sstatus,a5
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	70c080e7          	jalr	1804(ra) # 80002bdc <mycpu>
    800044d8:	07852783          	lw	a5,120(a0)
    800044dc:	02078663          	beqz	a5,80004508 <push_off+0x5c>
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	6fc080e7          	jalr	1788(ra) # 80002bdc <mycpu>
    800044e8:	07852783          	lw	a5,120(a0)
    800044ec:	01813083          	ld	ra,24(sp)
    800044f0:	01013403          	ld	s0,16(sp)
    800044f4:	0017879b          	addiw	a5,a5,1
    800044f8:	06f52c23          	sw	a5,120(a0)
    800044fc:	00813483          	ld	s1,8(sp)
    80004500:	02010113          	addi	sp,sp,32
    80004504:	00008067          	ret
    80004508:	0014d493          	srli	s1,s1,0x1
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	6d0080e7          	jalr	1744(ra) # 80002bdc <mycpu>
    80004514:	0014f493          	andi	s1,s1,1
    80004518:	06952e23          	sw	s1,124(a0)
    8000451c:	fc5ff06f          	j	800044e0 <push_off+0x34>

0000000080004520 <pop_off>:
    80004520:	ff010113          	addi	sp,sp,-16
    80004524:	00813023          	sd	s0,0(sp)
    80004528:	00113423          	sd	ra,8(sp)
    8000452c:	01010413          	addi	s0,sp,16
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	6ac080e7          	jalr	1708(ra) # 80002bdc <mycpu>
    80004538:	100027f3          	csrr	a5,sstatus
    8000453c:	0027f793          	andi	a5,a5,2
    80004540:	04079663          	bnez	a5,8000458c <pop_off+0x6c>
    80004544:	07852783          	lw	a5,120(a0)
    80004548:	02f05a63          	blez	a5,8000457c <pop_off+0x5c>
    8000454c:	fff7871b          	addiw	a4,a5,-1
    80004550:	06e52c23          	sw	a4,120(a0)
    80004554:	00071c63          	bnez	a4,8000456c <pop_off+0x4c>
    80004558:	07c52783          	lw	a5,124(a0)
    8000455c:	00078863          	beqz	a5,8000456c <pop_off+0x4c>
    80004560:	100027f3          	csrr	a5,sstatus
    80004564:	0027e793          	ori	a5,a5,2
    80004568:	10079073          	csrw	sstatus,a5
    8000456c:	00813083          	ld	ra,8(sp)
    80004570:	00013403          	ld	s0,0(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret
    8000457c:	00001517          	auipc	a0,0x1
    80004580:	1b450513          	addi	a0,a0,436 # 80005730 <digits+0x48>
    80004584:	fffff097          	auipc	ra,0xfffff
    80004588:	018080e7          	jalr	24(ra) # 8000359c <panic>
    8000458c:	00001517          	auipc	a0,0x1
    80004590:	18c50513          	addi	a0,a0,396 # 80005718 <digits+0x30>
    80004594:	fffff097          	auipc	ra,0xfffff
    80004598:	008080e7          	jalr	8(ra) # 8000359c <panic>

000000008000459c <push_on>:
    8000459c:	fe010113          	addi	sp,sp,-32
    800045a0:	00813823          	sd	s0,16(sp)
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	00913423          	sd	s1,8(sp)
    800045ac:	02010413          	addi	s0,sp,32
    800045b0:	100024f3          	csrr	s1,sstatus
    800045b4:	100027f3          	csrr	a5,sstatus
    800045b8:	0027e793          	ori	a5,a5,2
    800045bc:	10079073          	csrw	sstatus,a5
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	61c080e7          	jalr	1564(ra) # 80002bdc <mycpu>
    800045c8:	07852783          	lw	a5,120(a0)
    800045cc:	02078663          	beqz	a5,800045f8 <push_on+0x5c>
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	60c080e7          	jalr	1548(ra) # 80002bdc <mycpu>
    800045d8:	07852783          	lw	a5,120(a0)
    800045dc:	01813083          	ld	ra,24(sp)
    800045e0:	01013403          	ld	s0,16(sp)
    800045e4:	0017879b          	addiw	a5,a5,1
    800045e8:	06f52c23          	sw	a5,120(a0)
    800045ec:	00813483          	ld	s1,8(sp)
    800045f0:	02010113          	addi	sp,sp,32
    800045f4:	00008067          	ret
    800045f8:	0014d493          	srli	s1,s1,0x1
    800045fc:	ffffe097          	auipc	ra,0xffffe
    80004600:	5e0080e7          	jalr	1504(ra) # 80002bdc <mycpu>
    80004604:	0014f493          	andi	s1,s1,1
    80004608:	06952e23          	sw	s1,124(a0)
    8000460c:	fc5ff06f          	j	800045d0 <push_on+0x34>

0000000080004610 <pop_on>:
    80004610:	ff010113          	addi	sp,sp,-16
    80004614:	00813023          	sd	s0,0(sp)
    80004618:	00113423          	sd	ra,8(sp)
    8000461c:	01010413          	addi	s0,sp,16
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	5bc080e7          	jalr	1468(ra) # 80002bdc <mycpu>
    80004628:	100027f3          	csrr	a5,sstatus
    8000462c:	0027f793          	andi	a5,a5,2
    80004630:	04078463          	beqz	a5,80004678 <pop_on+0x68>
    80004634:	07852783          	lw	a5,120(a0)
    80004638:	02f05863          	blez	a5,80004668 <pop_on+0x58>
    8000463c:	fff7879b          	addiw	a5,a5,-1
    80004640:	06f52c23          	sw	a5,120(a0)
    80004644:	07853783          	ld	a5,120(a0)
    80004648:	00079863          	bnez	a5,80004658 <pop_on+0x48>
    8000464c:	100027f3          	csrr	a5,sstatus
    80004650:	ffd7f793          	andi	a5,a5,-3
    80004654:	10079073          	csrw	sstatus,a5
    80004658:	00813083          	ld	ra,8(sp)
    8000465c:	00013403          	ld	s0,0(sp)
    80004660:	01010113          	addi	sp,sp,16
    80004664:	00008067          	ret
    80004668:	00001517          	auipc	a0,0x1
    8000466c:	0f050513          	addi	a0,a0,240 # 80005758 <digits+0x70>
    80004670:	fffff097          	auipc	ra,0xfffff
    80004674:	f2c080e7          	jalr	-212(ra) # 8000359c <panic>
    80004678:	00001517          	auipc	a0,0x1
    8000467c:	0c050513          	addi	a0,a0,192 # 80005738 <digits+0x50>
    80004680:	fffff097          	auipc	ra,0xfffff
    80004684:	f1c080e7          	jalr	-228(ra) # 8000359c <panic>

0000000080004688 <__memset>:
    80004688:	ff010113          	addi	sp,sp,-16
    8000468c:	00813423          	sd	s0,8(sp)
    80004690:	01010413          	addi	s0,sp,16
    80004694:	1a060e63          	beqz	a2,80004850 <__memset+0x1c8>
    80004698:	40a007b3          	neg	a5,a0
    8000469c:	0077f793          	andi	a5,a5,7
    800046a0:	00778693          	addi	a3,a5,7
    800046a4:	00b00813          	li	a6,11
    800046a8:	0ff5f593          	andi	a1,a1,255
    800046ac:	fff6071b          	addiw	a4,a2,-1
    800046b0:	1b06e663          	bltu	a3,a6,8000485c <__memset+0x1d4>
    800046b4:	1cd76463          	bltu	a4,a3,8000487c <__memset+0x1f4>
    800046b8:	1a078e63          	beqz	a5,80004874 <__memset+0x1ec>
    800046bc:	00b50023          	sb	a1,0(a0)
    800046c0:	00100713          	li	a4,1
    800046c4:	1ae78463          	beq	a5,a4,8000486c <__memset+0x1e4>
    800046c8:	00b500a3          	sb	a1,1(a0)
    800046cc:	00200713          	li	a4,2
    800046d0:	1ae78a63          	beq	a5,a4,80004884 <__memset+0x1fc>
    800046d4:	00b50123          	sb	a1,2(a0)
    800046d8:	00300713          	li	a4,3
    800046dc:	18e78463          	beq	a5,a4,80004864 <__memset+0x1dc>
    800046e0:	00b501a3          	sb	a1,3(a0)
    800046e4:	00400713          	li	a4,4
    800046e8:	1ae78263          	beq	a5,a4,8000488c <__memset+0x204>
    800046ec:	00b50223          	sb	a1,4(a0)
    800046f0:	00500713          	li	a4,5
    800046f4:	1ae78063          	beq	a5,a4,80004894 <__memset+0x20c>
    800046f8:	00b502a3          	sb	a1,5(a0)
    800046fc:	00700713          	li	a4,7
    80004700:	18e79e63          	bne	a5,a4,8000489c <__memset+0x214>
    80004704:	00b50323          	sb	a1,6(a0)
    80004708:	00700e93          	li	t4,7
    8000470c:	00859713          	slli	a4,a1,0x8
    80004710:	00e5e733          	or	a4,a1,a4
    80004714:	01059e13          	slli	t3,a1,0x10
    80004718:	01c76e33          	or	t3,a4,t3
    8000471c:	01859313          	slli	t1,a1,0x18
    80004720:	006e6333          	or	t1,t3,t1
    80004724:	02059893          	slli	a7,a1,0x20
    80004728:	40f60e3b          	subw	t3,a2,a5
    8000472c:	011368b3          	or	a7,t1,a7
    80004730:	02859813          	slli	a6,a1,0x28
    80004734:	0108e833          	or	a6,a7,a6
    80004738:	03059693          	slli	a3,a1,0x30
    8000473c:	003e589b          	srliw	a7,t3,0x3
    80004740:	00d866b3          	or	a3,a6,a3
    80004744:	03859713          	slli	a4,a1,0x38
    80004748:	00389813          	slli	a6,a7,0x3
    8000474c:	00f507b3          	add	a5,a0,a5
    80004750:	00e6e733          	or	a4,a3,a4
    80004754:	000e089b          	sext.w	a7,t3
    80004758:	00f806b3          	add	a3,a6,a5
    8000475c:	00e7b023          	sd	a4,0(a5)
    80004760:	00878793          	addi	a5,a5,8
    80004764:	fed79ce3          	bne	a5,a3,8000475c <__memset+0xd4>
    80004768:	ff8e7793          	andi	a5,t3,-8
    8000476c:	0007871b          	sext.w	a4,a5
    80004770:	01d787bb          	addw	a5,a5,t4
    80004774:	0ce88e63          	beq	a7,a4,80004850 <__memset+0x1c8>
    80004778:	00f50733          	add	a4,a0,a5
    8000477c:	00b70023          	sb	a1,0(a4)
    80004780:	0017871b          	addiw	a4,a5,1
    80004784:	0cc77663          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    80004788:	00e50733          	add	a4,a0,a4
    8000478c:	00b70023          	sb	a1,0(a4)
    80004790:	0027871b          	addiw	a4,a5,2
    80004794:	0ac77e63          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    80004798:	00e50733          	add	a4,a0,a4
    8000479c:	00b70023          	sb	a1,0(a4)
    800047a0:	0037871b          	addiw	a4,a5,3
    800047a4:	0ac77663          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    800047a8:	00e50733          	add	a4,a0,a4
    800047ac:	00b70023          	sb	a1,0(a4)
    800047b0:	0047871b          	addiw	a4,a5,4
    800047b4:	08c77e63          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    800047b8:	00e50733          	add	a4,a0,a4
    800047bc:	00b70023          	sb	a1,0(a4)
    800047c0:	0057871b          	addiw	a4,a5,5
    800047c4:	08c77663          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    800047c8:	00e50733          	add	a4,a0,a4
    800047cc:	00b70023          	sb	a1,0(a4)
    800047d0:	0067871b          	addiw	a4,a5,6
    800047d4:	06c77e63          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    800047d8:	00e50733          	add	a4,a0,a4
    800047dc:	00b70023          	sb	a1,0(a4)
    800047e0:	0077871b          	addiw	a4,a5,7
    800047e4:	06c77663          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    800047e8:	00e50733          	add	a4,a0,a4
    800047ec:	00b70023          	sb	a1,0(a4)
    800047f0:	0087871b          	addiw	a4,a5,8
    800047f4:	04c77e63          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    800047f8:	00e50733          	add	a4,a0,a4
    800047fc:	00b70023          	sb	a1,0(a4)
    80004800:	0097871b          	addiw	a4,a5,9
    80004804:	04c77663          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    80004808:	00e50733          	add	a4,a0,a4
    8000480c:	00b70023          	sb	a1,0(a4)
    80004810:	00a7871b          	addiw	a4,a5,10
    80004814:	02c77e63          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    80004818:	00e50733          	add	a4,a0,a4
    8000481c:	00b70023          	sb	a1,0(a4)
    80004820:	00b7871b          	addiw	a4,a5,11
    80004824:	02c77663          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    80004828:	00e50733          	add	a4,a0,a4
    8000482c:	00b70023          	sb	a1,0(a4)
    80004830:	00c7871b          	addiw	a4,a5,12
    80004834:	00c77e63          	bgeu	a4,a2,80004850 <__memset+0x1c8>
    80004838:	00e50733          	add	a4,a0,a4
    8000483c:	00b70023          	sb	a1,0(a4)
    80004840:	00d7879b          	addiw	a5,a5,13
    80004844:	00c7f663          	bgeu	a5,a2,80004850 <__memset+0x1c8>
    80004848:	00f507b3          	add	a5,a0,a5
    8000484c:	00b78023          	sb	a1,0(a5)
    80004850:	00813403          	ld	s0,8(sp)
    80004854:	01010113          	addi	sp,sp,16
    80004858:	00008067          	ret
    8000485c:	00b00693          	li	a3,11
    80004860:	e55ff06f          	j	800046b4 <__memset+0x2c>
    80004864:	00300e93          	li	t4,3
    80004868:	ea5ff06f          	j	8000470c <__memset+0x84>
    8000486c:	00100e93          	li	t4,1
    80004870:	e9dff06f          	j	8000470c <__memset+0x84>
    80004874:	00000e93          	li	t4,0
    80004878:	e95ff06f          	j	8000470c <__memset+0x84>
    8000487c:	00000793          	li	a5,0
    80004880:	ef9ff06f          	j	80004778 <__memset+0xf0>
    80004884:	00200e93          	li	t4,2
    80004888:	e85ff06f          	j	8000470c <__memset+0x84>
    8000488c:	00400e93          	li	t4,4
    80004890:	e7dff06f          	j	8000470c <__memset+0x84>
    80004894:	00500e93          	li	t4,5
    80004898:	e75ff06f          	j	8000470c <__memset+0x84>
    8000489c:	00600e93          	li	t4,6
    800048a0:	e6dff06f          	j	8000470c <__memset+0x84>

00000000800048a4 <__memmove>:
    800048a4:	ff010113          	addi	sp,sp,-16
    800048a8:	00813423          	sd	s0,8(sp)
    800048ac:	01010413          	addi	s0,sp,16
    800048b0:	0e060863          	beqz	a2,800049a0 <__memmove+0xfc>
    800048b4:	fff6069b          	addiw	a3,a2,-1
    800048b8:	0006881b          	sext.w	a6,a3
    800048bc:	0ea5e863          	bltu	a1,a0,800049ac <__memmove+0x108>
    800048c0:	00758713          	addi	a4,a1,7
    800048c4:	00a5e7b3          	or	a5,a1,a0
    800048c8:	40a70733          	sub	a4,a4,a0
    800048cc:	0077f793          	andi	a5,a5,7
    800048d0:	00f73713          	sltiu	a4,a4,15
    800048d4:	00174713          	xori	a4,a4,1
    800048d8:	0017b793          	seqz	a5,a5
    800048dc:	00e7f7b3          	and	a5,a5,a4
    800048e0:	10078863          	beqz	a5,800049f0 <__memmove+0x14c>
    800048e4:	00900793          	li	a5,9
    800048e8:	1107f463          	bgeu	a5,a6,800049f0 <__memmove+0x14c>
    800048ec:	0036581b          	srliw	a6,a2,0x3
    800048f0:	fff8081b          	addiw	a6,a6,-1
    800048f4:	02081813          	slli	a6,a6,0x20
    800048f8:	01d85893          	srli	a7,a6,0x1d
    800048fc:	00858813          	addi	a6,a1,8
    80004900:	00058793          	mv	a5,a1
    80004904:	00050713          	mv	a4,a0
    80004908:	01088833          	add	a6,a7,a6
    8000490c:	0007b883          	ld	a7,0(a5)
    80004910:	00878793          	addi	a5,a5,8
    80004914:	00870713          	addi	a4,a4,8
    80004918:	ff173c23          	sd	a7,-8(a4)
    8000491c:	ff0798e3          	bne	a5,a6,8000490c <__memmove+0x68>
    80004920:	ff867713          	andi	a4,a2,-8
    80004924:	02071793          	slli	a5,a4,0x20
    80004928:	0207d793          	srli	a5,a5,0x20
    8000492c:	00f585b3          	add	a1,a1,a5
    80004930:	40e686bb          	subw	a3,a3,a4
    80004934:	00f507b3          	add	a5,a0,a5
    80004938:	06e60463          	beq	a2,a4,800049a0 <__memmove+0xfc>
    8000493c:	0005c703          	lbu	a4,0(a1)
    80004940:	00e78023          	sb	a4,0(a5)
    80004944:	04068e63          	beqz	a3,800049a0 <__memmove+0xfc>
    80004948:	0015c603          	lbu	a2,1(a1)
    8000494c:	00100713          	li	a4,1
    80004950:	00c780a3          	sb	a2,1(a5)
    80004954:	04e68663          	beq	a3,a4,800049a0 <__memmove+0xfc>
    80004958:	0025c603          	lbu	a2,2(a1)
    8000495c:	00200713          	li	a4,2
    80004960:	00c78123          	sb	a2,2(a5)
    80004964:	02e68e63          	beq	a3,a4,800049a0 <__memmove+0xfc>
    80004968:	0035c603          	lbu	a2,3(a1)
    8000496c:	00300713          	li	a4,3
    80004970:	00c781a3          	sb	a2,3(a5)
    80004974:	02e68663          	beq	a3,a4,800049a0 <__memmove+0xfc>
    80004978:	0045c603          	lbu	a2,4(a1)
    8000497c:	00400713          	li	a4,4
    80004980:	00c78223          	sb	a2,4(a5)
    80004984:	00e68e63          	beq	a3,a4,800049a0 <__memmove+0xfc>
    80004988:	0055c603          	lbu	a2,5(a1)
    8000498c:	00500713          	li	a4,5
    80004990:	00c782a3          	sb	a2,5(a5)
    80004994:	00e68663          	beq	a3,a4,800049a0 <__memmove+0xfc>
    80004998:	0065c703          	lbu	a4,6(a1)
    8000499c:	00e78323          	sb	a4,6(a5)
    800049a0:	00813403          	ld	s0,8(sp)
    800049a4:	01010113          	addi	sp,sp,16
    800049a8:	00008067          	ret
    800049ac:	02061713          	slli	a4,a2,0x20
    800049b0:	02075713          	srli	a4,a4,0x20
    800049b4:	00e587b3          	add	a5,a1,a4
    800049b8:	f0f574e3          	bgeu	a0,a5,800048c0 <__memmove+0x1c>
    800049bc:	02069613          	slli	a2,a3,0x20
    800049c0:	02065613          	srli	a2,a2,0x20
    800049c4:	fff64613          	not	a2,a2
    800049c8:	00e50733          	add	a4,a0,a4
    800049cc:	00c78633          	add	a2,a5,a2
    800049d0:	fff7c683          	lbu	a3,-1(a5)
    800049d4:	fff78793          	addi	a5,a5,-1
    800049d8:	fff70713          	addi	a4,a4,-1
    800049dc:	00d70023          	sb	a3,0(a4)
    800049e0:	fec798e3          	bne	a5,a2,800049d0 <__memmove+0x12c>
    800049e4:	00813403          	ld	s0,8(sp)
    800049e8:	01010113          	addi	sp,sp,16
    800049ec:	00008067          	ret
    800049f0:	02069713          	slli	a4,a3,0x20
    800049f4:	02075713          	srli	a4,a4,0x20
    800049f8:	00170713          	addi	a4,a4,1
    800049fc:	00e50733          	add	a4,a0,a4
    80004a00:	00050793          	mv	a5,a0
    80004a04:	0005c683          	lbu	a3,0(a1)
    80004a08:	00178793          	addi	a5,a5,1
    80004a0c:	00158593          	addi	a1,a1,1
    80004a10:	fed78fa3          	sb	a3,-1(a5)
    80004a14:	fee798e3          	bne	a5,a4,80004a04 <__memmove+0x160>
    80004a18:	f89ff06f          	j	800049a0 <__memmove+0xfc>

0000000080004a1c <__putc>:
    80004a1c:	fe010113          	addi	sp,sp,-32
    80004a20:	00813823          	sd	s0,16(sp)
    80004a24:	00113c23          	sd	ra,24(sp)
    80004a28:	02010413          	addi	s0,sp,32
    80004a2c:	00050793          	mv	a5,a0
    80004a30:	fef40593          	addi	a1,s0,-17
    80004a34:	00100613          	li	a2,1
    80004a38:	00000513          	li	a0,0
    80004a3c:	fef407a3          	sb	a5,-17(s0)
    80004a40:	fffff097          	auipc	ra,0xfffff
    80004a44:	b3c080e7          	jalr	-1220(ra) # 8000357c <console_write>
    80004a48:	01813083          	ld	ra,24(sp)
    80004a4c:	01013403          	ld	s0,16(sp)
    80004a50:	02010113          	addi	sp,sp,32
    80004a54:	00008067          	ret

0000000080004a58 <__getc>:
    80004a58:	fe010113          	addi	sp,sp,-32
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00113c23          	sd	ra,24(sp)
    80004a64:	02010413          	addi	s0,sp,32
    80004a68:	fe840593          	addi	a1,s0,-24
    80004a6c:	00100613          	li	a2,1
    80004a70:	00000513          	li	a0,0
    80004a74:	fffff097          	auipc	ra,0xfffff
    80004a78:	ae8080e7          	jalr	-1304(ra) # 8000355c <console_read>
    80004a7c:	fe844503          	lbu	a0,-24(s0)
    80004a80:	01813083          	ld	ra,24(sp)
    80004a84:	01013403          	ld	s0,16(sp)
    80004a88:	02010113          	addi	sp,sp,32
    80004a8c:	00008067          	ret

0000000080004a90 <console_handler>:
    80004a90:	fe010113          	addi	sp,sp,-32
    80004a94:	00813823          	sd	s0,16(sp)
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00913423          	sd	s1,8(sp)
    80004aa0:	02010413          	addi	s0,sp,32
    80004aa4:	14202773          	csrr	a4,scause
    80004aa8:	100027f3          	csrr	a5,sstatus
    80004aac:	0027f793          	andi	a5,a5,2
    80004ab0:	06079e63          	bnez	a5,80004b2c <console_handler+0x9c>
    80004ab4:	00074c63          	bltz	a4,80004acc <console_handler+0x3c>
    80004ab8:	01813083          	ld	ra,24(sp)
    80004abc:	01013403          	ld	s0,16(sp)
    80004ac0:	00813483          	ld	s1,8(sp)
    80004ac4:	02010113          	addi	sp,sp,32
    80004ac8:	00008067          	ret
    80004acc:	0ff77713          	andi	a4,a4,255
    80004ad0:	00900793          	li	a5,9
    80004ad4:	fef712e3          	bne	a4,a5,80004ab8 <console_handler+0x28>
    80004ad8:	ffffe097          	auipc	ra,0xffffe
    80004adc:	6dc080e7          	jalr	1756(ra) # 800031b4 <plic_claim>
    80004ae0:	00a00793          	li	a5,10
    80004ae4:	00050493          	mv	s1,a0
    80004ae8:	02f50c63          	beq	a0,a5,80004b20 <console_handler+0x90>
    80004aec:	fc0506e3          	beqz	a0,80004ab8 <console_handler+0x28>
    80004af0:	00050593          	mv	a1,a0
    80004af4:	00001517          	auipc	a0,0x1
    80004af8:	b6c50513          	addi	a0,a0,-1172 # 80005660 <_ZZ12printIntegermE6digits+0x4b8>
    80004afc:	fffff097          	auipc	ra,0xfffff
    80004b00:	afc080e7          	jalr	-1284(ra) # 800035f8 <__printf>
    80004b04:	01013403          	ld	s0,16(sp)
    80004b08:	01813083          	ld	ra,24(sp)
    80004b0c:	00048513          	mv	a0,s1
    80004b10:	00813483          	ld	s1,8(sp)
    80004b14:	02010113          	addi	sp,sp,32
    80004b18:	ffffe317          	auipc	t1,0xffffe
    80004b1c:	6d430067          	jr	1748(t1) # 800031ec <plic_complete>
    80004b20:	fffff097          	auipc	ra,0xfffff
    80004b24:	3e0080e7          	jalr	992(ra) # 80003f00 <uartintr>
    80004b28:	fddff06f          	j	80004b04 <console_handler+0x74>
    80004b2c:	00001517          	auipc	a0,0x1
    80004b30:	c3450513          	addi	a0,a0,-972 # 80005760 <digits+0x78>
    80004b34:	fffff097          	auipc	ra,0xfffff
    80004b38:	a68080e7          	jalr	-1432(ra) # 8000359c <panic>
	...
