
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	77013103          	ld	sp,1904(sp) # 8000b770 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	098060ef          	jal	ra,800060b4 <start>

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
    80001084:	205000ef          	jal	ra,80001a88 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    80001150:	00100793          	li	a5,1
    80001154:	00f50863          	beq	a0,a5,80001164 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001158:	00813403          	ld	s0,8(sp)
    8000115c:	01010113          	addi	sp,sp,16
    80001160:	00008067          	ret
    80001164:	000107b7          	lui	a5,0x10
    80001168:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000116c:	fef596e3          	bne	a1,a5,80001158 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001170:	0000b797          	auipc	a5,0xb
    80001174:	83078793          	addi	a5,a5,-2000 # 8000b9a0 <_ZN9Scheduler16readyThreadQueueE>
    80001178:	0007b023          	sd	zero,0(a5)
    8000117c:	0007b423          	sd	zero,8(a5)
    80001180:	fd9ff06f          	j	80001158 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001184 <_ZN9Scheduler3getEv>:
{
    80001184:	fe010113          	addi	sp,sp,-32
    80001188:	00113c23          	sd	ra,24(sp)
    8000118c:	00813823          	sd	s0,16(sp)
    80001190:	00913423          	sd	s1,8(sp)
    80001194:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001198:	0000b797          	auipc	a5,0xb
    8000119c:	80878793          	addi	a5,a5,-2040 # 8000b9a0 <_ZN9Scheduler16readyThreadQueueE>
    800011a0:	0007b503          	ld	a0,0(a5)
    800011a4:	04050263          	beqz	a0,800011e8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011a8:	00853783          	ld	a5,8(a0)
    800011ac:	0000a717          	auipc	a4,0xa
    800011b0:	7ef73a23          	sd	a5,2036(a4) # 8000b9a0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011b4:	02078463          	beqz	a5,800011dc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011b8:	00053483          	ld	s1,0(a0)
        delete elem;
    800011bc:	00001097          	auipc	ra,0x1
    800011c0:	c9c080e7          	jalr	-868(ra) # 80001e58 <_ZdlPv>
}
    800011c4:	00048513          	mv	a0,s1
    800011c8:	01813083          	ld	ra,24(sp)
    800011cc:	01013403          	ld	s0,16(sp)
    800011d0:	00813483          	ld	s1,8(sp)
    800011d4:	02010113          	addi	sp,sp,32
    800011d8:	00008067          	ret
        if (!head) { tail = 0; }
    800011dc:	0000a797          	auipc	a5,0xa
    800011e0:	7c07b623          	sd	zero,1996(a5) # 8000b9a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800011e4:	fd5ff06f          	j	800011b8 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    800011e8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800011ec:	fd9ff06f          	j	800011c4 <_ZN9Scheduler3getEv+0x40>

00000000800011f0 <_ZN9Scheduler3putEP3TCB>:
{
    800011f0:	fe010113          	addi	sp,sp,-32
    800011f4:	00113c23          	sd	ra,24(sp)
    800011f8:	00813823          	sd	s0,16(sp)
    800011fc:	00913423          	sd	s1,8(sp)
    80001200:	02010413          	addi	s0,sp,32
    80001204:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001208:	01000513          	li	a0,16
    8000120c:	00001097          	auipc	ra,0x1
    80001210:	bcc080e7          	jalr	-1076(ra) # 80001dd8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001214:	00953023          	sd	s1,0(a0)
    80001218:	00053423          	sd	zero,8(a0)
        if (tail)
    8000121c:	0000a797          	auipc	a5,0xa
    80001220:	78478793          	addi	a5,a5,1924 # 8000b9a0 <_ZN9Scheduler16readyThreadQueueE>
    80001224:	0087b783          	ld	a5,8(a5)
    80001228:	02078263          	beqz	a5,8000124c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000122c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001230:	0000a797          	auipc	a5,0xa
    80001234:	76a7bc23          	sd	a0,1912(a5) # 8000b9a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001238:	01813083          	ld	ra,24(sp)
    8000123c:	01013403          	ld	s0,16(sp)
    80001240:	00813483          	ld	s1,8(sp)
    80001244:	02010113          	addi	sp,sp,32
    80001248:	00008067          	ret
            head = tail = elem;
    8000124c:	0000a797          	auipc	a5,0xa
    80001250:	75478793          	addi	a5,a5,1876 # 8000b9a0 <_ZN9Scheduler16readyThreadQueueE>
    80001254:	00a7b423          	sd	a0,8(a5)
    80001258:	00a7b023          	sd	a0,0(a5)
    8000125c:	fddff06f          	j	80001238 <_ZN9Scheduler3putEP3TCB+0x48>

0000000080001260 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001260:	ff010113          	addi	sp,sp,-16
    80001264:	00113423          	sd	ra,8(sp)
    80001268:	00813023          	sd	s0,0(sp)
    8000126c:	01010413          	addi	s0,sp,16
    80001270:	000105b7          	lui	a1,0x10
    80001274:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001278:	00100513          	li	a0,1
    8000127c:	00000097          	auipc	ra,0x0
    80001280:	ec8080e7          	jalr	-312(ra) # 80001144 <_Z41__static_initialization_and_destruction_0ii>
    80001284:	00813083          	ld	ra,8(sp)
    80001288:	00013403          	ld	s0,0(sp)
    8000128c:	01010113          	addi	sp,sp,16
    80001290:	00008067          	ret

0000000080001294 <_ZN6Thread9body_execEPv>:
// Out-of-line implementation for the C++ syscall trampoline.
#include "../h/syscall_cpp.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void Thread::body_exec(void* thread) {
    80001294:	ff010113          	addi	sp,sp,-16
    80001298:	00113423          	sd	ra,8(sp)
    8000129c:	00813023          	sd	s0,0(sp)
    800012a0:	01010413          	addi	s0,sp,16
    static_cast<Thread*>(thread)->run();
    800012a4:	00053783          	ld	a5,0(a0)
    800012a8:	0107b783          	ld	a5,16(a5)
    800012ac:	000780e7          	jalr	a5
}
    800012b0:	00813083          	ld	ra,8(sp)
    800012b4:	00013403          	ld	s0,0(sp)
    800012b8:	01010113          	addi	sp,sp,16
    800012bc:	00008067          	ret

00000000800012c0 <_ZN10_semaphore5closeEv>:
    debug_print("\n");
    return new _semaphore((int)init);
}

void _semaphore::close()
{
    800012c0:	fe010113          	addi	sp,sp,-32
    800012c4:	00113c23          	sd	ra,24(sp)
    800012c8:	00813823          	sd	s0,16(sp)
    800012cc:	00913423          	sd	s1,8(sp)
    800012d0:	01213023          	sd	s2,0(sp)
    800012d4:	02010413          	addi	s0,sp,32
    800012d8:	00050913          	mv	s2,a0
    debug_print("Semaphore close: Closing semaphore\n");
    800012dc:	00008517          	auipc	a0,0x8
    800012e0:	d4450513          	addi	a0,a0,-700 # 80009020 <CONSOLE_STATUS+0x10>
    800012e4:	00001097          	auipc	ra,0x1
    800012e8:	c64080e7          	jalr	-924(ra) # 80001f48 <_Z11debug_printPKc>
    closed_ = true;
    800012ec:	00100793          	li	a5,1
    800012f0:	00f90223          	sb	a5,4(s2)
    800012f4:	0280006f          	j	8000131c <_ZN10_semaphore5closeEv+0x5c>
        if (!head) { tail = 0; }
    800012f8:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    800012fc:	00053483          	ld	s1,0(a0)
        delete elem;
    80001300:	00001097          	auipc	ra,0x1
    80001304:	b58080e7          	jalr	-1192(ra) # 80001e58 <_ZdlPv>
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    80001308:	02048663          	beqz	s1,80001334 <_ZN10_semaphore5closeEv+0x74>

    void setFinished(bool value) { finished_ = value; }

    void block() { blocked_ = true; }

    void unblock() { blocked_ = false; }
    8000130c:	020488a3          	sb	zero,49(s1)
    {
        t->unblock();
        Scheduler::put(t);
    80001310:	00048513          	mv	a0,s1
    80001314:	00000097          	auipc	ra,0x0
    80001318:	edc080e7          	jalr	-292(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    8000131c:	00893503          	ld	a0,8(s2)
    80001320:	00050a63          	beqz	a0,80001334 <_ZN10_semaphore5closeEv+0x74>
        head = head->next;
    80001324:	00853783          	ld	a5,8(a0)
    80001328:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    8000132c:	fc0798e3          	bnez	a5,800012fc <_ZN10_semaphore5closeEv+0x3c>
    80001330:	fc9ff06f          	j	800012f8 <_ZN10_semaphore5closeEv+0x38>
    }
}
    80001334:	01813083          	ld	ra,24(sp)
    80001338:	01013403          	ld	s0,16(sp)
    8000133c:	00813483          	ld	s1,8(sp)
    80001340:	00013903          	ld	s2,0(sp)
    80001344:	02010113          	addi	sp,sp,32
    80001348:	00008067          	ret

000000008000134c <_ZN10_semaphore4waitEv>:

int _semaphore::wait()
{
    // Cannot wait on a closed semaphore.
    if (closed_)
    8000134c:	00454783          	lbu	a5,4(a0)
    80001350:	0a079063          	bnez	a5,800013f0 <_ZN10_semaphore4waitEv+0xa4>
    {
        return -1;
    }

    if (value_ > 0)
    80001354:	00052783          	lw	a5,0(a0)
    80001358:	00f05a63          	blez	a5,8000136c <_ZN10_semaphore4waitEv+0x20>
    {
        value_ -= 1;
    8000135c:	fff7879b          	addiw	a5,a5,-1
    80001360:	00f52023          	sw	a5,0(a0)
        return 0;
    80001364:	00000513          	li	a0,0
    80001368:	00008067          	ret
{
    8000136c:	fe010113          	addi	sp,sp,-32
    80001370:	00113c23          	sd	ra,24(sp)
    80001374:	00813823          	sd	s0,16(sp)
    80001378:	00913423          	sd	s1,8(sp)
    8000137c:	01213023          	sd	s2,0(sp)
    80001380:	02010413          	addi	s0,sp,32
    80001384:	00050493          	mv	s1,a0
    }

    // We do not need to remove the thread from the scheduler, just block it, 
    // and add it to the blocked list (waiting queue), then dispatch.
    TCB* old = TCB::running;
    80001388:	0000a797          	auipc	a5,0xa
    8000138c:	59078793          	addi	a5,a5,1424 # 8000b918 <_ZN3TCB7runningE>
    80001390:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    80001394:	00100793          	li	a5,1
    80001398:	02f908a3          	sb	a5,49(s2)
        Elem *elem = new Elem(data, 0);
    8000139c:	01000513          	li	a0,16
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	a38080e7          	jalr	-1480(ra) # 80001dd8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800013a8:	01253023          	sd	s2,0(a0)
    800013ac:	00053423          	sd	zero,8(a0)
        if (tail)
    800013b0:	0104b783          	ld	a5,16(s1)
    800013b4:	02078863          	beqz	a5,800013e4 <_ZN10_semaphore4waitEv+0x98>
            tail->next = elem;
    800013b8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800013bc:	00a4b823          	sd	a0,16(s1)
    old->block();
    blocked_.addLast(old);
    TCB::yield();
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	078080e7          	jalr	120(ra) # 80002438 <_ZN3TCB5yieldEv>

    // TODO: Check if this works as a way of detecting closed semaphores.
    return 0;
    800013c8:	00000513          	li	a0,0
}
    800013cc:	01813083          	ld	ra,24(sp)
    800013d0:	01013403          	ld	s0,16(sp)
    800013d4:	00813483          	ld	s1,8(sp)
    800013d8:	00013903          	ld	s2,0(sp)
    800013dc:	02010113          	addi	sp,sp,32
    800013e0:	00008067          	ret
            head = tail = elem;
    800013e4:	00a4b823          	sd	a0,16(s1)
    800013e8:	00a4b423          	sd	a0,8(s1)
    800013ec:	fd5ff06f          	j	800013c0 <_ZN10_semaphore4waitEv+0x74>
        return -1;
    800013f0:	fff00513          	li	a0,-1
}
    800013f4:	00008067          	ret

00000000800013f8 <_ZN10_semaphore6signalEv>:

void _semaphore::signal()
{
    800013f8:	fe010113          	addi	sp,sp,-32
    800013fc:	00113c23          	sd	ra,24(sp)
    80001400:	00813823          	sd	s0,16(sp)
    80001404:	00913423          	sd	s1,8(sp)
    80001408:	01213023          	sd	s2,0(sp)
    8000140c:	02010413          	addi	s0,sp,32
    80001410:	00050493          	mv	s1,a0
        if (!head) { return 0; }
    80001414:	00853503          	ld	a0,8(a0)
    80001418:	02050e63          	beqz	a0,80001454 <_ZN10_semaphore6signalEv+0x5c>
        head = head->next;
    8000141c:	00853783          	ld	a5,8(a0)
    80001420:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001424:	02078463          	beqz	a5,8000144c <_ZN10_semaphore6signalEv+0x54>
        T *ret = elem->data;
    80001428:	00053903          	ld	s2,0(a0)
        delete elem;
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	a2c080e7          	jalr	-1492(ra) # 80001e58 <_ZdlPv>
    if (TCB *t = blocked_.removeFirst())
    80001434:	02090063          	beqz	s2,80001454 <_ZN10_semaphore6signalEv+0x5c>
    void unblock() { blocked_ = false; }
    80001438:	020908a3          	sb	zero,49(s2)
    {
        t->unblock();
        Scheduler::put(t);
    8000143c:	00090513          	mv	a0,s2
    80001440:	00000097          	auipc	ra,0x0
    80001444:	db0080e7          	jalr	-592(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    80001448:	0180006f          	j	80001460 <_ZN10_semaphore6signalEv+0x68>
        if (!head) { tail = 0; }
    8000144c:	0004b823          	sd	zero,16(s1)
    80001450:	fd9ff06f          	j	80001428 <_ZN10_semaphore6signalEv+0x30>
    }
    else
    {
        value_ += 1;
    80001454:	0004a783          	lw	a5,0(s1)
    80001458:	0017879b          	addiw	a5,a5,1
    8000145c:	00f4a023          	sw	a5,0(s1)
    }
}
    80001460:	01813083          	ld	ra,24(sp)
    80001464:	01013403          	ld	s0,16(sp)
    80001468:	00813483          	ld	s1,8(sp)
    8000146c:	00013903          	ld	s2,0(sp)
    80001470:	02010113          	addi	sp,sp,32
    80001474:	00008067          	ret

0000000080001478 <_ZN10_semaphoreC1Ei>:

    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    80001484:	00b52023          	sw	a1,0(a0)
    80001488:	00050223          	sb	zero,4(a0)
    List() : head(0), tail(0) {}
    8000148c:	00053423          	sd	zero,8(a0)
    80001490:	00053823          	sd	zero,16(a0)
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_ZN10_semaphore4openEj>:
{
    800014a0:	fe010113          	addi	sp,sp,-32
    800014a4:	00113c23          	sd	ra,24(sp)
    800014a8:	00813823          	sd	s0,16(sp)
    800014ac:	00913423          	sd	s1,8(sp)
    800014b0:	01213023          	sd	s2,0(sp)
    800014b4:	02010413          	addi	s0,sp,32
    800014b8:	00050493          	mv	s1,a0
    debug_print("Semaphore open: Initializing semaphore with value: ");
    800014bc:	00008517          	auipc	a0,0x8
    800014c0:	b8c50513          	addi	a0,a0,-1140 # 80009048 <CONSOLE_STATUS+0x38>
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	a84080e7          	jalr	-1404(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)init);
    800014cc:	02049513          	slli	a0,s1,0x20
    800014d0:	02055513          	srli	a0,a0,0x20
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	bbc080e7          	jalr	-1092(ra) # 80002090 <_Z11debug_printm>
    debug_print("\n");
    800014dc:	00008517          	auipc	a0,0x8
    800014e0:	edc50513          	addi	a0,a0,-292 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	a64080e7          	jalr	-1436(ra) # 80001f48 <_Z11debug_printPKc>
    return new _semaphore((int)init);
    800014ec:	01800513          	li	a0,24
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	8e8080e7          	jalr	-1816(ra) # 80001dd8 <_Znwm>
    800014f8:	00050913          	mv	s2,a0
    800014fc:	00048593          	mv	a1,s1
    80001500:	00000097          	auipc	ra,0x0
    80001504:	f78080e7          	jalr	-136(ra) # 80001478 <_ZN10_semaphoreC1Ei>
}
    80001508:	00090513          	mv	a0,s2
    8000150c:	01813083          	ld	ra,24(sp)
    80001510:	01013403          	ld	s0,16(sp)
    80001514:	00813483          	ld	s1,8(sp)
    80001518:	00013903          	ld	s2,0(sp)
    8000151c:	02010113          	addi	sp,sp,32
    80001520:	00008067          	ret

0000000080001524 <_Z7syscall11SyscallCodemmmmmmmm>:
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/print.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00813423          	sd	s0,8(sp)
    8000152c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001530:	00000073          	ecall
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    80001534:	00050513          	mv	a0,a0
    return result;
}
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_Z9mem_allocm>:

// TODO: Do this with number of blocks instead of size.
void* mem_alloc (size_t size) {
    80001544:	fd010113          	addi	sp,sp,-48
    80001548:	02113423          	sd	ra,40(sp)
    8000154c:	02813023          	sd	s0,32(sp)
    80001550:	00913c23          	sd	s1,24(sp)
    80001554:	03010413          	addi	s0,sp,48
    80001558:	00050493          	mv	s1,a0
    debug_print("Syscall malloc called\n");
    8000155c:	00008517          	auipc	a0,0x8
    80001560:	b2450513          	addi	a0,a0,-1244 # 80009080 <CONSOLE_STATUS+0x70>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	9e4080e7          	jalr	-1564(ra) # 80001f48 <_Z11debug_printPKc>
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    8000156c:	00013023          	sd	zero,0(sp)
    80001570:	00000893          	li	a7,0
    80001574:	00000813          	li	a6,0
    80001578:	00000793          	li	a5,0
    8000157c:	00000713          	li	a4,0
    80001580:	00000693          	li	a3,0
    80001584:	00000613          	li	a2,0
    80001588:	00048593          	mv	a1,s1
    8000158c:	00100513          	li	a0,1
    80001590:	00000097          	auipc	ra,0x0
    80001594:	f94080e7          	jalr	-108(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001598:	02813083          	ld	ra,40(sp)
    8000159c:	02013403          	ld	s0,32(sp)
    800015a0:	01813483          	ld	s1,24(sp)
    800015a4:	03010113          	addi	sp,sp,48
    800015a8:	00008067          	ret

00000000800015ac <_Z8mem_freePv>:

int mem_free (void* ptr) {
    800015ac:	fd010113          	addi	sp,sp,-48
    800015b0:	02113423          	sd	ra,40(sp)
    800015b4:	02813023          	sd	s0,32(sp)
    800015b8:	00913c23          	sd	s1,24(sp)
    800015bc:	03010413          	addi	s0,sp,48
    800015c0:	00050493          	mv	s1,a0
    debug_print("Syscall free called\n");
    800015c4:	00008517          	auipc	a0,0x8
    800015c8:	ad450513          	addi	a0,a0,-1324 # 80009098 <CONSOLE_STATUS+0x88>
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	97c080e7          	jalr	-1668(ra) # 80001f48 <_Z11debug_printPKc>
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    800015d4:	00013023          	sd	zero,0(sp)
    800015d8:	00000893          	li	a7,0
    800015dc:	00000813          	li	a6,0
    800015e0:	00000793          	li	a5,0
    800015e4:	00000713          	li	a4,0
    800015e8:	00000693          	li	a3,0
    800015ec:	00000613          	li	a2,0
    800015f0:	00048593          	mv	a1,s1
    800015f4:	00200513          	li	a0,2
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	f2c080e7          	jalr	-212(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001600:	0005051b          	sext.w	a0,a0
    80001604:	02813083          	ld	ra,40(sp)
    80001608:	02013403          	ld	s0,32(sp)
    8000160c:	01813483          	ld	s1,24(sp)
    80001610:	03010113          	addi	sp,sp,48
    80001614:	00008067          	ret

0000000080001618 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001618:	fe010113          	addi	sp,sp,-32
    8000161c:	00113c23          	sd	ra,24(sp)
    80001620:	00813823          	sd	s0,16(sp)
    80001624:	02010413          	addi	s0,sp,32
    debug_print("Syscall get free space called\n");
    80001628:	00008517          	auipc	a0,0x8
    8000162c:	a8850513          	addi	a0,a0,-1400 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001630:	00001097          	auipc	ra,0x1
    80001634:	918080e7          	jalr	-1768(ra) # 80001f48 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    80001638:	00013023          	sd	zero,0(sp)
    8000163c:	00000893          	li	a7,0
    80001640:	00000813          	li	a6,0
    80001644:	00000793          	li	a5,0
    80001648:	00000713          	li	a4,0
    8000164c:	00000693          	li	a3,0
    80001650:	00000613          	li	a2,0
    80001654:	00000593          	li	a1,0
    80001658:	00300513          	li	a0,3
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	ec8080e7          	jalr	-312(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001664:	01813083          	ld	ra,24(sp)
    80001668:	01013403          	ld	s0,16(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret

0000000080001674 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    80001674:	fe010113          	addi	sp,sp,-32
    80001678:	00113c23          	sd	ra,24(sp)
    8000167c:	00813823          	sd	s0,16(sp)
    80001680:	02010413          	addi	s0,sp,32
    debug_print("Syscall get largest free block called\n");
    80001684:	00008517          	auipc	a0,0x8
    80001688:	a4c50513          	addi	a0,a0,-1460 # 800090d0 <CONSOLE_STATUS+0xc0>
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	8bc080e7          	jalr	-1860(ra) # 80001f48 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    80001694:	00013023          	sd	zero,0(sp)
    80001698:	00000893          	li	a7,0
    8000169c:	00000813          	li	a6,0
    800016a0:	00000793          	li	a5,0
    800016a4:	00000713          	li	a4,0
    800016a8:	00000693          	li	a3,0
    800016ac:	00000613          	li	a2,0
    800016b0:	00000593          	li	a1,0
    800016b4:	00400513          	li	a0,4
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	e6c080e7          	jalr	-404(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800016c0:	01813083          	ld	ra,24(sp)
    800016c4:	01013403          	ld	s0,16(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    800016e0:	00013023          	sd	zero,0(sp)
    800016e4:	00000893          	li	a7,0
    800016e8:	00000813          	li	a6,0
    800016ec:	00000793          	li	a5,0
    800016f0:	00000713          	li	a4,0
    800016f4:	00060693          	mv	a3,a2
    800016f8:	00058613          	mv	a2,a1
    800016fc:	00050593          	mv	a1,a0
    80001700:	01100513          	li	a0,17
    80001704:	00000097          	auipc	ra,0x0
    80001708:	e20080e7          	jalr	-480(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000170c:	0005051b          	sext.w	a0,a0
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret

0000000080001720 <_Z11thread_exitv>:

int thread_exit () {
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	02010413          	addi	s0,sp,32
    debug_print("Syscall thread exit called\n");
    80001730:	00008517          	auipc	a0,0x8
    80001734:	9c850513          	addi	a0,a0,-1592 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	810080e7          	jalr	-2032(ra) # 80001f48 <_Z11debug_printPKc>
    return syscall(SyscallCode::THREAD_EXIT);
    80001740:	00013023          	sd	zero,0(sp)
    80001744:	00000893          	li	a7,0
    80001748:	00000813          	li	a6,0
    8000174c:	00000793          	li	a5,0
    80001750:	00000713          	li	a4,0
    80001754:	00000693          	li	a3,0
    80001758:	00000613          	li	a2,0
    8000175c:	00000593          	li	a1,0
    80001760:	01200513          	li	a0,18
    80001764:	00000097          	auipc	ra,0x0
    80001768:	dc0080e7          	jalr	-576(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000176c:	0005051b          	sext.w	a0,a0
    80001770:	01813083          	ld	ra,24(sp)
    80001774:	01013403          	ld	s0,16(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z15thread_dispatchv>:

void thread_dispatch () {
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_DISPATCH);
    80001790:	00013023          	sd	zero,0(sp)
    80001794:	00000893          	li	a7,0
    80001798:	00000813          	li	a6,0
    8000179c:	00000793          	li	a5,0
    800017a0:	00000713          	li	a4,0
    800017a4:	00000693          	li	a3,0
    800017a8:	00000613          	li	a2,0
    800017ac:	00000593          	li	a1,0
    800017b0:	01300513          	li	a0,19
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	d70080e7          	jalr	-656(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800017bc:	01813083          	ld	ra,24(sp)
    800017c0:	01013403          	ld	s0,16(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret

00000000800017cc <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init) {
    800017cc:	fd010113          	addi	sp,sp,-48
    800017d0:	02113423          	sd	ra,40(sp)
    800017d4:	02813023          	sd	s0,32(sp)
    800017d8:	00913c23          	sd	s1,24(sp)
    800017dc:	01213823          	sd	s2,16(sp)
    800017e0:	03010413          	addi	s0,sp,48
    800017e4:	00050913          	mv	s2,a0
    800017e8:	00058493          	mv	s1,a1
    debug_print("Syscall sem open called\n");
    800017ec:	00008517          	auipc	a0,0x8
    800017f0:	92c50513          	addi	a0,a0,-1748 # 80009118 <CONSOLE_STATUS+0x108>
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	754080e7          	jalr	1876(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Handle: ");
    800017fc:	00008517          	auipc	a0,0x8
    80001800:	93c50513          	addi	a0,a0,-1732 # 80009138 <CONSOLE_STATUS+0x128>
    80001804:	00000097          	auipc	ra,0x0
    80001808:	744080e7          	jalr	1860(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)handle);
    8000180c:	00090513          	mv	a0,s2
    80001810:	00001097          	auipc	ra,0x1
    80001814:	880080e7          	jalr	-1920(ra) # 80002090 <_Z11debug_printm>
    debug_print("\n");
    80001818:	00008517          	auipc	a0,0x8
    8000181c:	ba050513          	addi	a0,a0,-1120 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001820:	00000097          	auipc	ra,0x0
    80001824:	728080e7          	jalr	1832(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Init: ");
    80001828:	00008517          	auipc	a0,0x8
    8000182c:	93050513          	addi	a0,a0,-1744 # 80009158 <CONSOLE_STATUS+0x148>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	718080e7          	jalr	1816(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001838:	02049493          	slli	s1,s1,0x20
    8000183c:	0204d493          	srli	s1,s1,0x20
    80001840:	00048513          	mv	a0,s1
    80001844:	00001097          	auipc	ra,0x1
    80001848:	84c080e7          	jalr	-1972(ra) # 80002090 <_Z11debug_printm>
    debug_print("\n");
    8000184c:	00008517          	auipc	a0,0x8
    80001850:	b6c50513          	addi	a0,a0,-1172 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001854:	00000097          	auipc	ra,0x0
    80001858:	6f4080e7          	jalr	1780(ra) # 80001f48 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
    8000185c:	00013023          	sd	zero,0(sp)
    80001860:	00000893          	li	a7,0
    80001864:	00000813          	li	a6,0
    80001868:	00000793          	li	a5,0
    8000186c:	00000713          	li	a4,0
    80001870:	00000693          	li	a3,0
    80001874:	00048613          	mv	a2,s1
    80001878:	00090593          	mv	a1,s2
    8000187c:	02100513          	li	a0,33
    80001880:	00000097          	auipc	ra,0x0
    80001884:	ca4080e7          	jalr	-860(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001888:	0005051b          	sext.w	a0,a0
    8000188c:	02813083          	ld	ra,40(sp)
    80001890:	02013403          	ld	s0,32(sp)
    80001894:	01813483          	ld	s1,24(sp)
    80001898:	01013903          	ld	s2,16(sp)
    8000189c:	03010113          	addi	sp,sp,48
    800018a0:	00008067          	ret

00000000800018a4 <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle) {
    800018a4:	fd010113          	addi	sp,sp,-48
    800018a8:	02113423          	sd	ra,40(sp)
    800018ac:	02813023          	sd	s0,32(sp)
    800018b0:	00913c23          	sd	s1,24(sp)
    800018b4:	03010413          	addi	s0,sp,48
    800018b8:	00050493          	mv	s1,a0
    debug_print("Syscall sem close called\n");
    800018bc:	00008517          	auipc	a0,0x8
    800018c0:	8bc50513          	addi	a0,a0,-1860 # 80009178 <CONSOLE_STATUS+0x168>
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	684080e7          	jalr	1668(ra) # 80001f48 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
    800018cc:	00013023          	sd	zero,0(sp)
    800018d0:	00000893          	li	a7,0
    800018d4:	00000813          	li	a6,0
    800018d8:	00000793          	li	a5,0
    800018dc:	00000713          	li	a4,0
    800018e0:	00000693          	li	a3,0
    800018e4:	00000613          	li	a2,0
    800018e8:	00048593          	mv	a1,s1
    800018ec:	02200513          	li	a0,34
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	c34080e7          	jalr	-972(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800018f8:	0005051b          	sext.w	a0,a0
    800018fc:	02813083          	ld	ra,40(sp)
    80001900:	02013403          	ld	s0,32(sp)
    80001904:	01813483          	ld	s1,24(sp)
    80001908:	03010113          	addi	sp,sp,48
    8000190c:	00008067          	ret

0000000080001910 <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id) {
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	02010413          	addi	s0,sp,32

    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
    80001920:	00013023          	sd	zero,0(sp)
    80001924:	00000893          	li	a7,0
    80001928:	00000813          	li	a6,0
    8000192c:	00000793          	li	a5,0
    80001930:	00000713          	li	a4,0
    80001934:	00000693          	li	a3,0
    80001938:	00000613          	li	a2,0
    8000193c:	00050593          	mv	a1,a0
    80001940:	02300513          	li	a0,35
    80001944:	00000097          	auipc	ra,0x0
    80001948:	be0080e7          	jalr	-1056(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000194c:	0005051b          	sext.w	a0,a0
    80001950:	01813083          	ld	ra,24(sp)
    80001954:	01013403          	ld	s0,16(sp)
    80001958:	02010113          	addi	sp,sp,32
    8000195c:	00008067          	ret

0000000080001960 <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id) {
    80001960:	fe010113          	addi	sp,sp,-32
    80001964:	00113c23          	sd	ra,24(sp)
    80001968:	00813823          	sd	s0,16(sp)
    8000196c:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
    80001970:	00013023          	sd	zero,0(sp)
    80001974:	00000893          	li	a7,0
    80001978:	00000813          	li	a6,0
    8000197c:	00000793          	li	a5,0
    80001980:	00000713          	li	a4,0
    80001984:	00000693          	li	a3,0
    80001988:	00000613          	li	a2,0
    8000198c:	00050593          	mv	a1,a0
    80001990:	02400513          	li	a0,36
    80001994:	00000097          	auipc	ra,0x0
    80001998:	b90080e7          	jalr	-1136(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000199c:	0005051b          	sext.w	a0,a0
    800019a0:	01813083          	ld	ra,24(sp)
    800019a4:	01013403          	ld	s0,16(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret

00000000800019b0 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    800019b0:	ff010113          	addi	sp,sp,-16
    800019b4:	00813423          	sd	s0,8(sp)
    800019b8:	01010413          	addi	s0,sp,16
    return 0;
}
    800019bc:	00000513          	li	a0,0
    800019c0:	00813403          	ld	s0,8(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret

00000000800019cc <_Z4getcv>:

char getc () {
    800019cc:	fe010113          	addi	sp,sp,-32
    800019d0:	00113c23          	sd	ra,24(sp)
    800019d4:	00813823          	sd	s0,16(sp)
    800019d8:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::GETC);
    800019dc:	00013023          	sd	zero,0(sp)
    800019e0:	00000893          	li	a7,0
    800019e4:	00000813          	li	a6,0
    800019e8:	00000793          	li	a5,0
    800019ec:	00000713          	li	a4,0
    800019f0:	00000693          	li	a3,0
    800019f4:	00000613          	li	a2,0
    800019f8:	00000593          	li	a1,0
    800019fc:	04100513          	li	a0,65
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	b24080e7          	jalr	-1244(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001a08:	0ff57513          	andi	a0,a0,255
    80001a0c:	01813083          	ld	ra,24(sp)
    80001a10:	01013403          	ld	s0,16(sp)
    80001a14:	02010113          	addi	sp,sp,32
    80001a18:	00008067          	ret

0000000080001a1c <_Z4putcc>:

void putc (char c) {
    80001a1c:	fe010113          	addi	sp,sp,-32
    80001a20:	00113c23          	sd	ra,24(sp)
    80001a24:	00813823          	sd	s0,16(sp)
    80001a28:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::PUTC, (uint64)c);
    80001a2c:	00013023          	sd	zero,0(sp)
    80001a30:	00000893          	li	a7,0
    80001a34:	00000813          	li	a6,0
    80001a38:	00000793          	li	a5,0
    80001a3c:	00000713          	li	a4,0
    80001a40:	00000693          	li	a3,0
    80001a44:	00000613          	li	a2,0
    80001a48:	00050593          	mv	a1,a0
    80001a4c:	04200513          	li	a0,66
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	ad4080e7          	jalr	-1324(ra) # 80001524 <_Z7syscall11SyscallCodemmmmmmmm>
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	02010113          	addi	sp,sp,32
    80001a64:	00008067          	ret

0000000080001a68 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00813423          	sd	s0,8(sp)
    80001a70:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001a74:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001a78:	10200073          	sret
}
    80001a7c:	00813403          	ld	s0,8(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001a88:	f9010113          	addi	sp,sp,-112
    80001a8c:	06113423          	sd	ra,104(sp)
    80001a90:	06813023          	sd	s0,96(sp)
    80001a94:	04913c23          	sd	s1,88(sp)
    80001a98:	05213823          	sd	s2,80(sp)
    80001a9c:	07010413          	addi	s0,sp,112
    uint64 a0, a1, a2, a3, a4, a5, a6, a7;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001aa0:	00050793          	mv	a5,a0
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001aa4:	00058493          	mv	s1,a1
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001aa8:	00060513          	mv	a0,a2
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001aac:	00068593          	mv	a1,a3
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001ab0:	00070713          	mv	a4,a4
    __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001ab4:	00078713          	mv	a4,a5
    __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001ab8:	00080713          	mv	a4,a6
    __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001abc:	00088713          	mv	a4,a7
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ac0:	14202773          	csrr	a4,scause
    80001ac4:	fae43c23          	sd	a4,-72(s0)
    return scause;
    80001ac8:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001acc:	ff870613          	addi	a2,a4,-8
    80001ad0:	00100693          	li	a3,1
    80001ad4:	02c6f863          	bgeu	a3,a2,80001b04 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001ad8:	fff00793          	li	a5,-1
    80001adc:	03f79793          	slli	a5,a5,0x3f
    80001ae0:	00178793          	addi	a5,a5,1
    80001ae4:	28f70063          	beq	a4,a5,80001d64 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001ae8:	fff00793          	li	a5,-1
    80001aec:	03f79793          	slli	a5,a5,0x3f
    80001af0:	00978793          	addi	a5,a5,9
    80001af4:	08f71463          	bne	a4,a5,80001b7c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    {
        // debug_print("Console handler called\n");
        console_handler();
    80001af8:	00006097          	auipc	ra,0x6
    80001afc:	6f8080e7          	jalr	1784(ra) # 800081f0 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001b00:	07c0006f          	j	80001b7c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b04:	14102773          	csrr	a4,sepc
    80001b08:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80001b0c:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001b10:	00470713          	addi	a4,a4,4
    80001b14:	f8e43c23          	sd	a4,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b18:	10002773          	csrr	a4,sstatus
    80001b1c:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80001b20:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001b24:	fae43023          	sd	a4,-96(s0)
        switch (a0) {
    80001b28:	04200713          	li	a4,66
    80001b2c:	22f76063          	bltu	a4,a5,80001d4c <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
    80001b30:	00279793          	slli	a5,a5,0x2
    80001b34:	00007717          	auipc	a4,0x7
    80001b38:	66070713          	addi	a4,a4,1632 # 80009194 <CONSOLE_STATUS+0x184>
    80001b3c:	00e787b3          	add	a5,a5,a4
    80001b40:	0007a783          	lw	a5,0(a5)
    80001b44:	00e787b3          	add	a5,a5,a4
    80001b48:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	99c080e7          	jalr	-1636(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001b54:	00048593          	mv	a1,s1
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	af4080e7          	jalr	-1292(ra) # 8000264c <_ZN15MemoryAllocator9mem_allocEm>
    80001b60:	00050913          	mv	s2,a0
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001b64:	00090513          	mv	a0,s2
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    80001b68:	05243823          	sd	s2,80(s0)
        w_sstatus(sstatus);
    80001b6c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b70:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001b74:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b78:	14179073          	csrw	sepc,a5
    80001b7c:	06813083          	ld	ra,104(sp)
    80001b80:	06013403          	ld	s0,96(sp)
    80001b84:	05813483          	ld	s1,88(sp)
    80001b88:	05013903          	ld	s2,80(sp)
    80001b8c:	07010113          	addi	sp,sp,112
    80001b90:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	954080e7          	jalr	-1708(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001b9c:	00048593          	mv	a1,s1
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	c2c080e7          	jalr	-980(ra) # 800027cc <_ZN15MemoryAllocator8mem_freeEPv>
    80001ba8:	00050913          	mv	s2,a0
                break;
    80001bac:	fb9ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	938080e7          	jalr	-1736(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	b68080e7          	jalr	-1176(ra) # 80002720 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    80001bc0:	00000913          	li	s2,0
                break;
    80001bc4:	fa1ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	920080e7          	jalr	-1760(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	b1c080e7          	jalr	-1252(ra) # 800026ec <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001bd8:	00000913          	li	s2,0
                break;
    80001bdc:	f89ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	6f8080e7          	jalr	1784(ra) # 800022d8 <_ZN3TCB12createThreadEPFvPvES0_>
    80001be8:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001bec:	16050463          	beqz	a0,80001d54 <_ZN5Riscv20handleSupervisorTrapEv+0x2cc>
        uint64 res = 0;
    80001bf0:	00000913          	li	s2,0
    80001bf4:	f71ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                TCB::exit();
    80001bf8:	00001097          	auipc	ra,0x1
    80001bfc:	868080e7          	jalr	-1944(ra) # 80002460 <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    80001c00:	0004b783          	ld	a5,0(s1)
    80001c04:	0000a717          	auipc	a4,0xa
    80001c08:	d1470713          	addi	a4,a4,-748 # 8000b918 <_ZN3TCB7runningE>
    80001c0c:	00073503          	ld	a0,0(a4)
    80001c10:	40f50533          	sub	a0,a0,a5
    80001c14:	00007597          	auipc	a1,0x7
    80001c18:	68c58593          	addi	a1,a1,1676 # 800092a0 <CONSOLE_STATUS+0x290>
    80001c1c:	00153513          	seqz	a0,a0
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	350080e7          	jalr	848(ra) # 80001f70 <_Z6assertbPKc>
                delete *handle;
    80001c28:	0004b483          	ld	s1,0(s1)
    80001c2c:	12048863          	beqz	s1,80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
    ~TCB() { delete[] stack; }
    80001c30:	0104b503          	ld	a0,16(s1)
    80001c34:	00050663          	beqz	a0,80001c40 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	260080e7          	jalr	608(ra) # 80001e98 <_ZdaPv>
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	214080e7          	jalr	532(ra) # 80001e58 <_ZdlPv>
        uint64 res = 0;
    80001c4c:	00000913          	li	s2,0
    80001c50:	f15ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                TCB::dispatch();
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	770080e7          	jalr	1904(ra) # 800023c4 <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001c5c:	00000913          	li	s2,0
                break;
    80001c60:	f05ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                *handle = (sem_t)_semaphore::open(a2);
    80001c64:	0005051b          	sext.w	a0,a0
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	838080e7          	jalr	-1992(ra) # 800014a0 <_ZN10_semaphore4openEj>
    80001c70:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001c74:	06050263          	beqz	a0,80001cd8 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
        uint64 res = 0;
    80001c78:	00000913          	li	s2,0
                debug_print("Semaphore open: Handle: ");
    80001c7c:	00007517          	auipc	a0,0x7
    80001c80:	65c50513          	addi	a0,a0,1628 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	2c4080e7          	jalr	708(ra) # 80001f48 <_Z11debug_printPKc>
                debug_print((uint64)*handle);
    80001c8c:	0004b503          	ld	a0,0(s1)
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	400080e7          	jalr	1024(ra) # 80002090 <_Z11debug_printm>
                debug_print("\n");
    80001c98:	00007517          	auipc	a0,0x7
    80001c9c:	72050513          	addi	a0,a0,1824 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	2a8080e7          	jalr	680(ra) # 80001f48 <_Z11debug_printPKc>
                debug_print("On handle addr: ");
    80001ca8:	00007517          	auipc	a0,0x7
    80001cac:	65050513          	addi	a0,a0,1616 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	298080e7          	jalr	664(ra) # 80001f48 <_Z11debug_printPKc>
                debug_print((uint64)handle);
    80001cb8:	00048513          	mv	a0,s1
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	3d4080e7          	jalr	980(ra) # 80002090 <_Z11debug_printm>
                debug_print("\n");
    80001cc4:	00007517          	auipc	a0,0x7
    80001cc8:	6f450513          	addi	a0,a0,1780 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	27c080e7          	jalr	636(ra) # 80001f48 <_Z11debug_printPKc>
                break;
    80001cd4:	e91ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    res = -1;
    80001cd8:	fff00913          	li	s2,-1
    80001cdc:	fa1ff06f          	j	80001c7c <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                handle->close();
    80001ce0:	00048513          	mv	a0,s1
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	5dc080e7          	jalr	1500(ra) # 800012c0 <_ZN10_semaphore5closeEv>
                delete handle;
    80001cec:	00048513          	mv	a0,s1
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	168080e7          	jalr	360(ra) # 80001e58 <_ZdlPv>
        uint64 res = 0;
    80001cf8:	00000913          	li	s2,0
                break;
    80001cfc:	e69ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                res = handle->wait();
    80001d00:	00048513          	mv	a0,s1
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	648080e7          	jalr	1608(ra) # 8000134c <_ZN10_semaphore4waitEv>
    80001d0c:	00050913          	mv	s2,a0
                break;
    80001d10:	e55ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                handle->signal();
    80001d14:	00048513          	mv	a0,s1
    80001d18:	fffff097          	auipc	ra,0xfffff
    80001d1c:	6e0080e7          	jalr	1760(ra) # 800013f8 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80001d20:	00000913          	li	s2,0
                break;
    80001d24:	e41ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                res = __getc();
    80001d28:	00006097          	auipc	ra,0x6
    80001d2c:	490080e7          	jalr	1168(ra) # 800081b8 <__getc>
    80001d30:	00050913          	mv	s2,a0
                break;
    80001d34:	e31ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                __putc((char)a1);
    80001d38:	0ff4f513          	andi	a0,s1,255
    80001d3c:	00006097          	auipc	ra,0x6
    80001d40:	440080e7          	jalr	1088(ra) # 8000817c <__putc>
        uint64 res = 0;
    80001d44:	00000913          	li	s2,0
                break;
    80001d48:	e1dff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        uint64 res = 0;
    80001d4c:	00000913          	li	s2,0
    80001d50:	e15ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    res = -1;
    80001d54:	fff00913          	li	s2,-1
    80001d58:	e0dff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        uint64 res = 0;
    80001d5c:	00000913          	li	s2,0
    80001d60:	e05ff06f          	j	80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d64:	00200793          	li	a5,2
    80001d68:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001d6c:	0000a717          	auipc	a4,0xa
    80001d70:	ba470713          	addi	a4,a4,-1116 # 8000b910 <_ZN3TCB16timeSliceCounterE>
    80001d74:	00073783          	ld	a5,0(a4)
    80001d78:	00178793          	addi	a5,a5,1
    80001d7c:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001d80:	0000a717          	auipc	a4,0xa
    80001d84:	b9870713          	addi	a4,a4,-1128 # 8000b918 <_ZN3TCB7runningE>
    80001d88:	00073703          	ld	a4,0(a4)

    bool isBlocked() { return blocked_; }

    uint64 getTimeSlice() const { return timeSlice; }
    80001d8c:	02873703          	ld	a4,40(a4)
    80001d90:	dee7e6e3          	bltu	a5,a4,80001b7c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d94:	141027f3          	csrr	a5,sepc
    80001d98:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d9c:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001da0:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001da4:	100027f3          	csrr	a5,sstatus
    80001da8:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001dac:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001db0:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80001db4:	0000a797          	auipc	a5,0xa
    80001db8:	b407be23          	sd	zero,-1188(a5) # 8000b910 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	608080e7          	jalr	1544(ra) # 800023c4 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001dc4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001dc8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001dcc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001dd0:	14179073          	csrw	sepc,a5
    80001dd4:	da9ff06f          	j	80001b7c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>

0000000080001dd8 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001dd8:	fe010113          	addi	sp,sp,-32
    80001ddc:	00113c23          	sd	ra,24(sp)
    80001de0:	00813823          	sd	s0,16(sp)
    80001de4:	00913423          	sd	s1,8(sp)
    80001de8:	02010413          	addi	s0,sp,32
    80001dec:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	6f8080e7          	jalr	1784(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001df8:	00048593          	mv	a1,s1
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	850080e7          	jalr	-1968(ra) # 8000264c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e04:	01813083          	ld	ra,24(sp)
    80001e08:	01013403          	ld	s0,16(sp)
    80001e0c:	00813483          	ld	s1,8(sp)
    80001e10:	02010113          	addi	sp,sp,32
    80001e14:	00008067          	ret

0000000080001e18 <_Znam>:

void *operator new[](size_t n)
{
    80001e18:	fe010113          	addi	sp,sp,-32
    80001e1c:	00113c23          	sd	ra,24(sp)
    80001e20:	00813823          	sd	s0,16(sp)
    80001e24:	00913423          	sd	s1,8(sp)
    80001e28:	02010413          	addi	s0,sp,32
    80001e2c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	6b8080e7          	jalr	1720(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001e38:	00048593          	mv	a1,s1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	810080e7          	jalr	-2032(ra) # 8000264c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e44:	01813083          	ld	ra,24(sp)
    80001e48:	01013403          	ld	s0,16(sp)
    80001e4c:	00813483          	ld	s1,8(sp)
    80001e50:	02010113          	addi	sp,sp,32
    80001e54:	00008067          	ret

0000000080001e58 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00113c23          	sd	ra,24(sp)
    80001e60:	00813823          	sd	s0,16(sp)
    80001e64:	00913423          	sd	s1,8(sp)
    80001e68:	02010413          	addi	s0,sp,32
    80001e6c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	678080e7          	jalr	1656(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001e78:	00048593          	mv	a1,s1
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	950080e7          	jalr	-1712(ra) # 800027cc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e84:	01813083          	ld	ra,24(sp)
    80001e88:	01013403          	ld	s0,16(sp)
    80001e8c:	00813483          	ld	s1,8(sp)
    80001e90:	02010113          	addi	sp,sp,32
    80001e94:	00008067          	ret

0000000080001e98 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001e98:	fe010113          	addi	sp,sp,-32
    80001e9c:	00113c23          	sd	ra,24(sp)
    80001ea0:	00813823          	sd	s0,16(sp)
    80001ea4:	00913423          	sd	s1,8(sp)
    80001ea8:	02010413          	addi	s0,sp,32
    80001eac:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	638080e7          	jalr	1592(ra) # 800024e8 <_ZN15MemoryAllocator11getInstanceEv>
    80001eb8:	00048593          	mv	a1,s1
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	910080e7          	jalr	-1776(ra) # 800027cc <_ZN15MemoryAllocator8mem_freeEPv>
    80001ec4:	01813083          	ld	ra,24(sp)
    80001ec8:	01013403          	ld	s0,16(sp)
    80001ecc:	00813483          	ld	s1,8(sp)
    80001ed0:	02010113          	addi	sp,sp,32
    80001ed4:	00008067          	ret

0000000080001ed8 <_Z27debug_print_internal_stringPKc>:
        debug_print("\n");
    }
}

void debug_print_internal_string(char const *string)
{
    80001ed8:	fd010113          	addi	sp,sp,-48
    80001edc:	02113423          	sd	ra,40(sp)
    80001ee0:	02813023          	sd	s0,32(sp)
    80001ee4:	00913c23          	sd	s1,24(sp)
    80001ee8:	01213823          	sd	s2,16(sp)
    80001eec:	03010413          	addi	s0,sp,48
    80001ef0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ef4:	100027f3          	csrr	a5,sstatus
    80001ef8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001efc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f00:	00200793          	li	a5,2
    80001f04:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001f08:	0004c503          	lbu	a0,0(s1)
    80001f0c:	00050a63          	beqz	a0,80001f20 <_Z27debug_print_internal_stringPKc+0x48>
    {
        __putc(*string);
    80001f10:	00006097          	auipc	ra,0x6
    80001f14:	26c080e7          	jalr	620(ra) # 8000817c <__putc>
        string++;
    80001f18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f1c:	fedff06f          	j	80001f08 <_Z27debug_print_internal_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f20:	0009091b          	sext.w	s2,s2
    80001f24:	00297913          	andi	s2,s2,2
    80001f28:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f2c:	10092073          	csrs	sstatus,s2
}
    80001f30:	02813083          	ld	ra,40(sp)
    80001f34:	02013403          	ld	s0,32(sp)
    80001f38:	01813483          	ld	s1,24(sp)
    80001f3c:	01013903          	ld	s2,16(sp)
    80001f40:	03010113          	addi	sp,sp,48
    80001f44:	00008067          	ret

0000000080001f48 <_Z11debug_printPKc>:
void debug_print(char const *string) {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
    debug_print_internal_string(string);
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	f80080e7          	jalr	-128(ra) # 80001ed8 <_Z27debug_print_internal_stringPKc>
}
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	01010113          	addi	sp,sp,16
    80001f6c:	00008067          	ret

0000000080001f70 <_Z6assertbPKc>:
    if (!condition) {
    80001f70:	00050463          	beqz	a0,80001f78 <_Z6assertbPKc+0x8>
    80001f74:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80001f90:	00007517          	auipc	a0,0x7
    80001f94:	39050513          	addi	a0,a0,912 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0x10>
    80001f98:	00000097          	auipc	ra,0x0
    80001f9c:	fb0080e7          	jalr	-80(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print(debug_message);
    80001fa0:	00048513          	mv	a0,s1
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	fa4080e7          	jalr	-92(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("\n");
    80001fac:	00007517          	auipc	a0,0x7
    80001fb0:	40c50513          	addi	a0,a0,1036 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	f94080e7          	jalr	-108(ra) # 80001f48 <_Z11debug_printPKc>
}
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	00813483          	ld	s1,8(sp)
    80001fc8:	02010113          	addi	sp,sp,32
    80001fcc:	00008067          	ret

0000000080001fd0 <_Z24debug_print_internal_intm>:

void debug_print_internal_int(uint64 integer)
{
    80001fd0:	fc010113          	addi	sp,sp,-64
    80001fd4:	02113c23          	sd	ra,56(sp)
    80001fd8:	02813823          	sd	s0,48(sp)
    80001fdc:	02913423          	sd	s1,40(sp)
    80001fe0:	03213023          	sd	s2,32(sp)
    80001fe4:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fe8:	100027f3          	csrr	a5,sstatus
    80001fec:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001ff0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ff4:	00200793          	li	a5,2
    80001ff8:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001ffc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002000:	00000713          	li	a4,0
    80002004:	0080006f          	j	8000200c <_Z24debug_print_internal_intm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80002008:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    8000200c:	00a00793          	li	a5,10
    80002010:	02f5763b          	remuw	a2,a0,a5
    80002014:	0017049b          	addiw	s1,a4,1
    80002018:	00007697          	auipc	a3,0x7
    8000201c:	2f868693          	addi	a3,a3,760 # 80009310 <_ZZ24debug_print_internal_intmE6digits>
    80002020:	00c686b3          	add	a3,a3,a2
    80002024:	0006c683          	lbu	a3,0(a3)
    80002028:	fe040613          	addi	a2,s0,-32
    8000202c:	00e60733          	add	a4,a2,a4
    80002030:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    80002034:	02f557bb          	divuw	a5,a0,a5
    80002038:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    8000203c:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80002040:	00900793          	li	a5,9
    80002044:	fca7e2e3          	bltu	a5,a0,80002008 <_Z24debug_print_internal_intm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002048:	fff4849b          	addiw	s1,s1,-1
    8000204c:	0004ce63          	bltz	s1,80002068 <_Z24debug_print_internal_intm+0x98>
    80002050:	fe040793          	addi	a5,s0,-32
    80002054:	009787b3          	add	a5,a5,s1
    80002058:	ff07c503          	lbu	a0,-16(a5)
    8000205c:	00006097          	auipc	ra,0x6
    80002060:	120080e7          	jalr	288(ra) # 8000817c <__putc>
    80002064:	fe5ff06f          	j	80002048 <_Z24debug_print_internal_intm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002068:	0009091b          	sext.w	s2,s2
    8000206c:	00297913          	andi	s2,s2,2
    80002070:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002074:	10092073          	csrs	sstatus,s2
    80002078:	03813083          	ld	ra,56(sp)
    8000207c:	03013403          	ld	s0,48(sp)
    80002080:	02813483          	ld	s1,40(sp)
    80002084:	02013903          	ld	s2,32(sp)
    80002088:	04010113          	addi	sp,sp,64
    8000208c:	00008067          	ret

0000000080002090 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    debug_print_internal_int(integer);
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	f30080e7          	jalr	-208(ra) # 80001fd0 <_Z24debug_print_internal_intm>
}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_Z15userMainWrapperPv>:
#include "../h/syscall_cpp.hpp"

void userMain();

void userMainWrapper(void* arg)
{
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	00813023          	sd	s0,0(sp)
    800020c4:	01010413          	addi	s0,sp,16
    debug_print("Starting userMain\n");
    800020c8:	00007517          	auipc	a0,0x7
    800020cc:	27050513          	addi	a0,a0,624 # 80009338 <_ZZ24debug_print_internal_intmE6digits+0x28>
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	e78080e7          	jalr	-392(ra) # 80001f48 <_Z11debug_printPKc>
    userMain();
    800020d8:	00002097          	auipc	ra,0x2
    800020dc:	988080e7          	jalr	-1656(ra) # 80003a60 <_Z8userMainv>
}
    800020e0:	00813083          	ld	ra,8(sp)
    800020e4:	00013403          	ld	s0,0(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <main>:
// void randomWrapper(void* arg) {
//     debug_print("Starting random\n");
// }

int main()
{
    800020f0:	fe010113          	addi	sp,sp,-32
    800020f4:	00113c23          	sd	ra,24(sp)
    800020f8:	00813823          	sd	s0,16(sp)
    800020fc:	00913423          	sd	s1,8(sp)
    80002100:	01213023          	sd	s2,0(sp)
    80002104:	02010413          	addi	s0,sp,32
    thread_t main_handle;
    thread_t userMain_handle;

    // We create threads directly through TCB because we do not yet have
    // interrupts enabled.
    debug_print("Creating main thread\n");
    80002108:	00007517          	auipc	a0,0x7
    8000210c:	24850513          	addi	a0,a0,584 # 80009350 <_ZZ24debug_print_internal_intmE6digits+0x40>
    80002110:	00000097          	auipc	ra,0x0
    80002114:	e38080e7          	jalr	-456(ra) # 80001f48 <_Z11debug_printPKc>
    main_handle = TCB::createThread(nullptr, nullptr);
    80002118:	00000593          	li	a1,0
    8000211c:	00000513          	li	a0,0
    80002120:	00000097          	auipc	ra,0x0
    80002124:	1b8080e7          	jalr	440(ra) # 800022d8 <_ZN3TCB12createThreadEPFvPvES0_>
    80002128:	00050913          	mv	s2,a0
    debug_print("Main thread handle: \n");
    8000212c:	00007517          	auipc	a0,0x7
    80002130:	23c50513          	addi	a0,a0,572 # 80009368 <_ZZ24debug_print_internal_intmE6digits+0x58>
    80002134:	00000097          	auipc	ra,0x0
    80002138:	e14080e7          	jalr	-492(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)main_handle);
    8000213c:	00090513          	mv	a0,s2
    80002140:	00000097          	auipc	ra,0x0
    80002144:	f50080e7          	jalr	-176(ra) # 80002090 <_Z11debug_printm>
    debug_print("\n");
    80002148:	00007517          	auipc	a0,0x7
    8000214c:	27050513          	addi	a0,a0,624 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002150:	00000097          	auipc	ra,0x0
    80002154:	df8080e7          	jalr	-520(ra) # 80001f48 <_Z11debug_printPKc>

    debug_print("Creating userMain thread\n");
    80002158:	00007517          	auipc	a0,0x7
    8000215c:	22850513          	addi	a0,a0,552 # 80009380 <_ZZ24debug_print_internal_intmE6digits+0x70>
    80002160:	00000097          	auipc	ra,0x0
    80002164:	de8080e7          	jalr	-536(ra) # 80001f48 <_Z11debug_printPKc>
    userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    80002168:	00000593          	li	a1,0
    8000216c:	00000517          	auipc	a0,0x0
    80002170:	f4c50513          	addi	a0,a0,-180 # 800020b8 <_Z15userMainWrapperPv>
    80002174:	00000097          	auipc	ra,0x0
    80002178:	164080e7          	jalr	356(ra) # 800022d8 <_ZN3TCB12createThreadEPFvPvES0_>
    8000217c:	00050493          	mv	s1,a0
    debug_print("UserMain thread handle: \n");
    80002180:	00007517          	auipc	a0,0x7
    80002184:	22050513          	addi	a0,a0,544 # 800093a0 <_ZZ24debug_print_internal_intmE6digits+0x90>
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	dc0080e7          	jalr	-576(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)userMain_handle);
    80002190:	00048513          	mv	a0,s1
    80002194:	00000097          	auipc	ra,0x0
    80002198:	efc080e7          	jalr	-260(ra) # 80002090 <_Z11debug_printm>
    debug_print("\n");
    8000219c:	00007517          	auipc	a0,0x7
    800021a0:	21c50513          	addi	a0,a0,540 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	da4080e7          	jalr	-604(ra) # 80001f48 <_Z11debug_printPKc>

    debug_print("Setting running to main thread\n");
    800021ac:	00007517          	auipc	a0,0x7
    800021b0:	21450513          	addi	a0,a0,532 # 800093c0 <_ZZ24debug_print_internal_intmE6digits+0xb0>
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	d94080e7          	jalr	-620(ra) # 80001f48 <_Z11debug_printPKc>
    TCB::running = main_handle;
    800021bc:	00009797          	auipc	a5,0x9
    800021c0:	7527be23          	sd	s2,1884(a5) # 8000b918 <_ZN3TCB7runningE>

    debug_print("Setting supervisor trap and enabling interrupts\n");
    800021c4:	00007517          	auipc	a0,0x7
    800021c8:	21c50513          	addi	a0,a0,540 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xd0>
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	d7c080e7          	jalr	-644(ra) # 80001f48 <_Z11debug_printPKc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800021d4:	fffff797          	auipc	a5,0xfffff
    800021d8:	e2c78793          	addi	a5,a5,-468 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800021dc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800021e0:	00200793          	li	a5,2
    800021e4:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished_; }
    800021e8:	0304c783          	lbu	a5,48(s1)
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Thread randomThread(randomWrapper, nullptr);
    // randomThread.start();

    while (!userMain_handle->isFinished()) {
    800021ec:	fe078ee3          	beqz	a5,800021e8 <main+0xf8>
        // TCB::yield(); // This causes a lock???
    }

    debug_print("Finished\n");
    800021f0:	00007517          	auipc	a0,0x7
    800021f4:	22850513          	addi	a0,a0,552 # 80009418 <_ZZ24debug_print_internal_intmE6digits+0x108>
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	d50080e7          	jalr	-688(ra) # 80001f48 <_Z11debug_printPKc>

    return 0;
}
    80002200:	00000513          	li	a0,0
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	00013903          	ld	s2,0(sp)
    80002214:	02010113          	addi	sp,sp,32
    80002218:	00008067          	ret

000000008000221c <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00113c23          	sd	ra,24(sp)
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002230:	00000097          	auipc	ra,0x0
    80002234:	838080e7          	jalr	-1992(ra) # 80001a68 <_ZN5Riscv10popSppSpieEv>
    debug_print("TCB: Starting thread body: ");
    80002238:	00007517          	auipc	a0,0x7
    8000223c:	1f050513          	addi	a0,a0,496 # 80009428 <_ZZ24debug_print_internal_intmE6digits+0x118>
    80002240:	00000097          	auipc	ra,0x0
    80002244:	d08080e7          	jalr	-760(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)running->body);
    80002248:	00009497          	auipc	s1,0x9
    8000224c:	6d048493          	addi	s1,s1,1744 # 8000b918 <_ZN3TCB7runningE>
    80002250:	0004b783          	ld	a5,0(s1)
    80002254:	0007b503          	ld	a0,0(a5)
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	e38080e7          	jalr	-456(ra) # 80002090 <_Z11debug_printm>
    debug_print(" for thread: ");
    80002260:	00007517          	auipc	a0,0x7
    80002264:	1e850513          	addi	a0,a0,488 # 80009448 <_ZZ24debug_print_internal_intmE6digits+0x138>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	ce0080e7          	jalr	-800(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)running);
    80002270:	0004b503          	ld	a0,0(s1)
    80002274:	00000097          	auipc	ra,0x0
    80002278:	e1c080e7          	jalr	-484(ra) # 80002090 <_Z11debug_printm>
    debug_print(" and arg: ");
    8000227c:	00007517          	auipc	a0,0x7
    80002280:	1dc50513          	addi	a0,a0,476 # 80009458 <_ZZ24debug_print_internal_intmE6digits+0x148>
    80002284:	00000097          	auipc	ra,0x0
    80002288:	cc4080e7          	jalr	-828(ra) # 80001f48 <_Z11debug_printPKc>
    debug_print((uint64)running->arg_);
    8000228c:	0004b783          	ld	a5,0(s1)
    80002290:	0087b503          	ld	a0,8(a5)
    80002294:	00000097          	auipc	ra,0x0
    80002298:	dfc080e7          	jalr	-516(ra) # 80002090 <_Z11debug_printm>
    debug_print("\n");
    8000229c:	00007517          	auipc	a0,0x7
    800022a0:	11c50513          	addi	a0,a0,284 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	ca4080e7          	jalr	-860(ra) # 80001f48 <_Z11debug_printPKc>
    
    running->body(running->arg_);
    800022ac:	0004b783          	ld	a5,0(s1)
    800022b0:	0007b703          	ld	a4,0(a5)
    800022b4:	0087b503          	ld	a0,8(a5)
    800022b8:	000700e7          	jalr	a4
    thread_exit();
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	464080e7          	jalr	1124(ra) # 80001720 <_Z11thread_exitv>
}
    800022c4:	01813083          	ld	ra,24(sp)
    800022c8:	01013403          	ld	s0,16(sp)
    800022cc:	00813483          	ld	s1,8(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00008067          	ret

00000000800022d8 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    800022d8:	fd010113          	addi	sp,sp,-48
    800022dc:	02113423          	sd	ra,40(sp)
    800022e0:	02813023          	sd	s0,32(sp)
    800022e4:	00913c23          	sd	s1,24(sp)
    800022e8:	01213823          	sd	s2,16(sp)
    800022ec:	01313423          	sd	s3,8(sp)
    800022f0:	03010413          	addi	s0,sp,48
    800022f4:	00050913          	mv	s2,a0
    800022f8:	00058993          	mv	s3,a1
    debug_print("TCB: Creating TCB\n");
    800022fc:	00007517          	auipc	a0,0x7
    80002300:	16c50513          	addi	a0,a0,364 # 80009468 <_ZZ24debug_print_internal_intmE6digits+0x158>
    80002304:	00000097          	auipc	ra,0x0
    80002308:	c44080e7          	jalr	-956(ra) # 80001f48 <_Z11debug_printPKc>
    return new TCB(body, arg, TIME_SLICE);
    8000230c:	03800513          	li	a0,56
    80002310:	00000097          	auipc	ra,0x0
    80002314:	ac8080e7          	jalr	-1336(ra) # 80001dd8 <_Znwm>
    80002318:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished_(false),
            blocked_(false)
    8000231c:	01253023          	sd	s2,0(a0)
    80002320:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002324:	00090a63          	beqz	s2,80002338 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    80002328:	00002537          	lui	a0,0x2
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	aec080e7          	jalr	-1300(ra) # 80001e18 <_Znam>
    80002334:	0080006f          	j	8000233c <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    80002338:	00000513          	li	a0,0
            blocked_(false)
    8000233c:	00a4b823          	sd	a0,16(s1)
    80002340:	00000797          	auipc	a5,0x0
    80002344:	edc78793          	addi	a5,a5,-292 # 8000221c <_ZN3TCB13threadWrapperEv>
    80002348:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000234c:	02050a63          	beqz	a0,80002380 <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
    80002350:	000027b7          	lui	a5,0x2
    80002354:	00f50533          	add	a0,a0,a5
            blocked_(false)
    80002358:	02a4b023          	sd	a0,32(s1)
    8000235c:	00200793          	li	a5,2
    80002360:	02f4b423          	sd	a5,40(s1)
    80002364:	02048823          	sb	zero,48(s1)
    80002368:	020488a3          	sb	zero,49(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    8000236c:	02090c63          	beqz	s2,800023a4 <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
    80002370:	00048513          	mv	a0,s1
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	e7c080e7          	jalr	-388(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    8000237c:	0280006f          	j	800023a4 <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002380:	00000513          	li	a0,0
    80002384:	fd5ff06f          	j	80002358 <_ZN3TCB12createThreadEPFvPvES0_+0x80>
    80002388:	00050913          	mv	s2,a0
    8000238c:	00048513          	mv	a0,s1
    80002390:	00000097          	auipc	ra,0x0
    80002394:	ac8080e7          	jalr	-1336(ra) # 80001e58 <_ZdlPv>
    80002398:	00090513          	mv	a0,s2
    8000239c:	0000a097          	auipc	ra,0xa
    800023a0:	6dc080e7          	jalr	1756(ra) # 8000ca78 <_Unwind_Resume>
}
    800023a4:	00048513          	mv	a0,s1
    800023a8:	02813083          	ld	ra,40(sp)
    800023ac:	02013403          	ld	s0,32(sp)
    800023b0:	01813483          	ld	s1,24(sp)
    800023b4:	01013903          	ld	s2,16(sp)
    800023b8:	00813983          	ld	s3,8(sp)
    800023bc:	03010113          	addi	sp,sp,48
    800023c0:	00008067          	ret

00000000800023c4 <_ZN3TCB8dispatchEv>:
{
    800023c4:	fe010113          	addi	sp,sp,-32
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	00813823          	sd	s0,16(sp)
    800023d0:	00913423          	sd	s1,8(sp)
    800023d4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800023d8:	00009797          	auipc	a5,0x9
    800023dc:	54078793          	addi	a5,a5,1344 # 8000b918 <_ZN3TCB7runningE>
    800023e0:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    800023e4:	0314c783          	lbu	a5,49(s1)
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    800023e8:	00079663          	bnez	a5,800023f4 <_ZN3TCB8dispatchEv+0x30>
    bool isFinished() const { return finished_; }
    800023ec:	0304c783          	lbu	a5,48(s1)
    800023f0:	02078c63          	beqz	a5,80002428 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	d90080e7          	jalr	-624(ra) # 80001184 <_ZN9Scheduler3getEv>
    800023fc:	00009797          	auipc	a5,0x9
    80002400:	50a7be23          	sd	a0,1308(a5) # 8000b918 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002404:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80002408:	01848513          	addi	a0,s1,24
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	d04080e7          	jalr	-764(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002414:	01813083          	ld	ra,24(sp)
    80002418:	01013403          	ld	s0,16(sp)
    8000241c:	00813483          	ld	s1,8(sp)
    80002420:	02010113          	addi	sp,sp,32
    80002424:	00008067          	ret
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    80002428:	00048513          	mv	a0,s1
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	dc4080e7          	jalr	-572(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    80002434:	fc1ff06f          	j	800023f4 <_ZN3TCB8dispatchEv+0x30>

0000000080002438 <_ZN3TCB5yieldEv>:
{
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	00813023          	sd	s0,0(sp)
    80002444:	01010413          	addi	s0,sp,16
    dispatch();
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	f7c080e7          	jalr	-132(ra) # 800023c4 <_ZN3TCB8dispatchEv>
}
    80002450:	00813083          	ld	ra,8(sp)
    80002454:	00013403          	ld	s0,0(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret

0000000080002460 <_ZN3TCB4exitEv>:

void TCB::exit() {
    80002460:	fe010113          	addi	sp,sp,-32
    80002464:	00113c23          	sd	ra,24(sp)
    80002468:	00813823          	sd	s0,16(sp)
    8000246c:	00913423          	sd	s1,8(sp)
    80002470:	01213023          	sd	s2,0(sp)
    80002474:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    80002478:	00007517          	auipc	a0,0x7
    8000247c:	00850513          	addi	a0,a0,8 # 80009480 <_ZZ24debug_print_internal_intmE6digits+0x170>
    80002480:	00000097          	auipc	ra,0x0
    80002484:	ac8080e7          	jalr	-1336(ra) # 80001f48 <_Z11debug_printPKc>
    TCB *old = running;
    80002488:	00009497          	auipc	s1,0x9
    8000248c:	49048493          	addi	s1,s1,1168 # 8000b918 <_ZN3TCB7runningE>
    80002490:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    80002494:	00100793          	li	a5,1
    80002498:	02f90823          	sb	a5,48(s2)
    old->setFinished(true);
    running = Scheduler::get();
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	ce8080e7          	jalr	-792(ra) # 80001184 <_ZN9Scheduler3getEv>
    800024a4:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    800024a8:	00007597          	auipc	a1,0x7
    800024ac:	ff058593          	addi	a1,a1,-16 # 80009498 <_ZZ24debug_print_internal_intmE6digits+0x188>
    800024b0:	00a03533          	snez	a0,a0
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	abc080e7          	jalr	-1348(ra) # 80001f70 <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    800024bc:	0004b583          	ld	a1,0(s1)
    800024c0:	01858593          	addi	a1,a1,24
    800024c4:	01890513          	addi	a0,s2,24
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	c48080e7          	jalr	-952(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    800024d0:	01813083          	ld	ra,24(sp)
    800024d4:	01013403          	ld	s0,16(sp)
    800024d8:	00813483          	ld	s1,8(sp)
    800024dc:	00013903          	ld	s2,0(sp)
    800024e0:	02010113          	addi	sp,sp,32
    800024e4:	00008067          	ret

00000000800024e8 <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    800024e8:	00009797          	auipc	a5,0x9
    800024ec:	43878793          	addi	a5,a5,1080 # 8000b920 <_ZN15MemoryAllocator9instance_E>
    800024f0:	0007b783          	ld	a5,0(a5)
    800024f4:	00078a63          	beqz	a5,80002508 <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    800024f8:	00009797          	auipc	a5,0x9
    800024fc:	42878793          	addi	a5,a5,1064 # 8000b920 <_ZN15MemoryAllocator9instance_E>
    80002500:	0007b503          	ld	a0,0(a5)
    80002504:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80002508:	fd010113          	addi	sp,sp,-48
    8000250c:	02113423          	sd	ra,40(sp)
    80002510:	02813023          	sd	s0,32(sp)
    80002514:	00913c23          	sd	s1,24(sp)
    80002518:	01213823          	sd	s2,16(sp)
    8000251c:	01313423          	sd	s3,8(sp)
    80002520:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002524:	00009997          	auipc	s3,0x9
    80002528:	21c98993          	addi	s3,s3,540 # 8000b740 <HEAP_START_ADDR>
    8000252c:	0009b783          	ld	a5,0(s3)
    80002530:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80002534:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002538:	00009497          	auipc	s1,0x9
    8000253c:	3e848493          	addi	s1,s1,1000 # 8000b920 <_ZN15MemoryAllocator9instance_E>
    80002540:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80002544:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    80002548:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    8000254c:	0004b783          	ld	a5,0(s1)
    80002550:	0007b783          	ld	a5,0(a5)
    80002554:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    80002558:	0004b783          	ld	a5,0(s1)
    8000255c:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    80002560:	00009917          	auipc	s2,0x9
    80002564:	1d890913          	addi	s2,s2,472 # 8000b738 <HEAP_END_ADDR>
    80002568:	00093783          	ld	a5,0(s2)
    8000256c:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    80002570:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80002574:	00007517          	auipc	a0,0x7
    80002578:	f5450513          	addi	a0,a0,-172 # 800094c8 <_ZZ24debug_print_internal_intmE6digits+0x1b8>
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	9cc080e7          	jalr	-1588(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80002584:	00007517          	auipc	a0,0x7
    80002588:	f6c50513          	addi	a0,a0,-148 # 800094f0 <_ZZ24debug_print_internal_intmE6digits+0x1e0>
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	9bc080e7          	jalr	-1604(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80002594:	04000513          	li	a0,64
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	af8080e7          	jalr	-1288(ra) # 80002090 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    800025a0:	00007517          	auipc	a0,0x7
    800025a4:	f6850513          	addi	a0,a0,-152 # 80009508 <_ZZ24debug_print_internal_intmE6digits+0x1f8>
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	9a0080e7          	jalr	-1632(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    800025b0:	0009b503          	ld	a0,0(s3)
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	adc080e7          	jalr	-1316(ra) # 80002090 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    800025bc:	00007517          	auipc	a0,0x7
    800025c0:	f6450513          	addi	a0,a0,-156 # 80009520 <_ZZ24debug_print_internal_intmE6digits+0x210>
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	984080e7          	jalr	-1660(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    800025cc:	00093503          	ld	a0,0(s2)
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	ac0080e7          	jalr	-1344(ra) # 80002090 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    800025d8:	00007517          	auipc	a0,0x7
    800025dc:	f6050513          	addi	a0,a0,-160 # 80009538 <_ZZ24debug_print_internal_intmE6digits+0x228>
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	968080e7          	jalr	-1688(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    800025e8:	0004b783          	ld	a5,0(s1)
    800025ec:	0007b503          	ld	a0,0(a5)
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	aa0080e7          	jalr	-1376(ra) # 80002090 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    800025f8:	00007517          	auipc	a0,0x7
    800025fc:	f6050513          	addi	a0,a0,-160 # 80009558 <_ZZ24debug_print_internal_intmE6digits+0x248>
    80002600:	00000097          	auipc	ra,0x0
    80002604:	948080e7          	jalr	-1720(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    80002608:	01000513          	li	a0,16
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	a84080e7          	jalr	-1404(ra) # 80002090 <_Z11debug_printm>
        debug_print("\n");
    80002614:	00007517          	auipc	a0,0x7
    80002618:	da450513          	addi	a0,a0,-604 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	92c080e7          	jalr	-1748(ra) # 80001f48 <_Z11debug_printPKc>
}
    80002624:	00009797          	auipc	a5,0x9
    80002628:	2fc78793          	addi	a5,a5,764 # 8000b920 <_ZN15MemoryAllocator9instance_E>
    8000262c:	0007b503          	ld	a0,0(a5)
    80002630:	02813083          	ld	ra,40(sp)
    80002634:	02013403          	ld	s0,32(sp)
    80002638:	01813483          	ld	s1,24(sp)
    8000263c:	01013903          	ld	s2,16(sp)
    80002640:	00813983          	ld	s3,8(sp)
    80002644:	03010113          	addi	sp,sp,48
    80002648:	00008067          	ret

000000008000264c <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    // debug_print("Allocating memory of size: ");
    // debug_print(size);
    // debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    80002658:	00053783          	ld	a5,0(a0)
    8000265c:	04078e63          	beqz	a5,800026b8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    80002660:	04f58593          	addi	a1,a1,79
    80002664:	fc05f593          	andi	a1,a1,-64

    // debug_print("Aligned size: ");
    // debug_print(size);
    // debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002668:	00000693          	li	a3,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    8000266c:	00078c63          	beqz	a5,80002684 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    80002670:	0087b703          	ld	a4,8(a5)
    80002674:	00b77863          	bgeu	a4,a1,80002684 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        prev_free_block = free_block;
    80002678:	00078693          	mv	a3,a5
        free_block = free_block->next_;
    8000267c:	0007b783          	ld	a5,0(a5)
    while (free_block && free_block->size_ < size) {
    80002680:	fedff06f          	j	8000266c <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80002684:	02078a63          	beqz	a5,800026b8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    80002688:	0087b703          	ld	a4,8(a5)
    8000268c:	04e5f263          	bgeu	a1,a4,800026d0 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    80002690:	00b78633          	add	a2,a5,a1
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80002694:	02068a63          	beqz	a3,800026c8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            prev_free_block->next_ = new_free_block;
    80002698:	00c6b023          	sd	a2,0(a3)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    8000269c:	0007b703          	ld	a4,0(a5)
    800026a0:	00e63023          	sd	a4,0(a2)
        new_free_block->size_ = free_block->size_ - size;
    800026a4:	0087b703          	ld	a4,8(a5)
    800026a8:	40b70733          	sub	a4,a4,a1
    800026ac:	00e63423          	sd	a4,8(a2)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    800026b0:	00b7b423          	sd	a1,8(a5)
        // debug_print("Free block address: ");
        // debug_print((uint64)free_block);
        // debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    800026b4:	01078793          	addi	a5,a5,16
}
    800026b8:	00078513          	mv	a0,a5
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret
            free_block_ptr_ = new_free_block;
    800026c8:	00c53023          	sd	a2,0(a0)
    800026cc:	fd1ff06f          	j	8000269c <_ZN15MemoryAllocator9mem_allocEm+0x50>
        if (prev_free_block) {
    800026d0:	00068863          	beqz	a3,800026e0 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            prev_free_block->next_ = free_block->next_;
    800026d4:	0007b703          	ld	a4,0(a5)
    800026d8:	00e6b023          	sd	a4,0(a3)
    800026dc:	fd5ff06f          	j	800026b0 <_ZN15MemoryAllocator9mem_allocEm+0x64>
            free_block_ptr_ = free_block->next_;
    800026e0:	0007b703          	ld	a4,0(a5)
    800026e4:	00e53023          	sd	a4,0(a0)
    800026e8:	fc9ff06f          	j	800026b0 <_ZN15MemoryAllocator9mem_allocEm+0x64>

00000000800026ec <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    800026ec:	ff010113          	addi	sp,sp,-16
    800026f0:	00813423          	sd	s0,8(sp)
    800026f4:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    800026f8:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    800026fc:	00000513          	li	a0,0
    while (free_block_iter) {
    80002700:	00078a63          	beqz	a5,80002714 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    80002704:	0087b703          	ld	a4,8(a5)
    80002708:	fee57ce3          	bgeu	a0,a4,80002700 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    8000270c:	00070513          	mv	a0,a4
    80002710:	ff1ff06f          	j	80002700 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    80002714:	00813403          	ld	s0,8(sp)
    80002718:	01010113          	addi	sp,sp,16
    8000271c:	00008067          	ret

0000000080002720 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00813423          	sd	s0,8(sp)
    80002728:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    8000272c:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    80002730:	00000513          	li	a0,0
    while (free_block_iter) {
    80002734:	00078a63          	beqz	a5,80002748 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    80002738:	0087b703          	ld	a4,8(a5)
    8000273c:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    80002740:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    80002744:	ff1ff06f          	j	80002734 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    80002754:	06058a63          	beqz	a1,800027c8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    80002758:	06060863          	beqz	a2,800027c8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    8000275c:	fe010113          	addi	sp,sp,-32
    80002760:	00113c23          	sd	ra,24(sp)
    80002764:	00813823          	sd	s0,16(sp)
    80002768:	00913423          	sd	s1,8(sp)
    8000276c:	01213023          	sd	s2,0(sp)
    80002770:	02010413          	addi	s0,sp,32
    80002774:	00060913          	mv	s2,a2
    80002778:	00058493          	mv	s1,a1
        // debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    8000277c:	00007597          	auipc	a1,0x7
    80002780:	dfc58593          	addi	a1,a1,-516 # 80009578 <_ZZ24debug_print_internal_intmE6digits+0x268>
    80002784:	00c4b533          	sltu	a0,s1,a2
    80002788:	fffff097          	auipc	ra,0xfffff
    8000278c:	7e8080e7          	jalr	2024(ra) # 80001f70 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    80002790:	0084b783          	ld	a5,8(s1)
    80002794:	00f48733          	add	a4,s1,a5
    80002798:	00e91c63          	bne	s2,a4,800027b0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        // debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    8000279c:	00893703          	ld	a4,8(s2)
    800027a0:	00e787b3          	add	a5,a5,a4
    800027a4:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    800027a8:	00093783          	ld	a5,0(s2)
    800027ac:	00f4b023          	sd	a5,0(s1)
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	01013403          	ld	s0,16(sp)
    800027b8:	00813483          	ld	s1,8(sp)
    800027bc:	00013903          	ld	s2,0(sp)
    800027c0:	02010113          	addi	sp,sp,32
    800027c4:	00008067          	ret
    800027c8:	00008067          	ret

00000000800027cc <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    800027cc:	fd010113          	addi	sp,sp,-48
    800027d0:	02113423          	sd	ra,40(sp)
    800027d4:	02813023          	sd	s0,32(sp)
    800027d8:	00913c23          	sd	s1,24(sp)
    800027dc:	01213823          	sd	s2,16(sp)
    800027e0:	01313423          	sd	s3,8(sp)
    800027e4:	03010413          	addi	s0,sp,48
    if (!free_block_addr) {
    800027e8:	04058263          	beqz	a1,8000282c <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    800027ec:	00050993          	mv	s3,a0
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    800027f0:	ff058913          	addi	s2,a1,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    800027f4:	00090793          	mv	a5,s2
    800027f8:	03f97713          	andi	a4,s2,63
    800027fc:	04071463          	bnez	a4,80002844 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002800:	00009717          	auipc	a4,0x9
    80002804:	f4070713          	addi	a4,a4,-192 # 8000b740 <HEAP_START_ADDR>
    80002808:	00073703          	ld	a4,0(a4)
    8000280c:	04e96863          	bltu	s2,a4,8000285c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    80002810:	00009717          	auipc	a4,0x9
    80002814:	f2870713          	addi	a4,a4,-216 # 8000b738 <HEAP_END_ADDR>
    80002818:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    8000281c:	04e97063          	bgeu	s2,a4,8000285c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    80002820:	00053603          	ld	a2,0(a0)
    80002824:	00000493          	li	s1,0
    80002828:	0540006f          	j	8000287c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        debug_print("Free block address is null.\n");
    8000282c:	00007517          	auipc	a0,0x7
    80002830:	d8c50513          	addi	a0,a0,-628 # 800095b8 <_ZZ24debug_print_internal_intmE6digits+0x2a8>
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	714080e7          	jalr	1812(ra) # 80001f48 <_Z11debug_printPKc>
        return -1;
    8000283c:	fff00513          	li	a0,-1
    80002840:	07c0006f          	j	800028bc <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    80002844:	00007517          	auipc	a0,0x7
    80002848:	d9450513          	addi	a0,a0,-620 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x2c8>
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	6fc080e7          	jalr	1788(ra) # 80001f48 <_Z11debug_printPKc>
        return -2;
    80002854:	ffe00513          	li	a0,-2
    80002858:	0640006f          	j	800028bc <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not in the heap.\n");
    8000285c:	00007517          	auipc	a0,0x7
    80002860:	db450513          	addi	a0,a0,-588 # 80009610 <_ZZ24debug_print_internal_intmE6digits+0x300>
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	6e4080e7          	jalr	1764(ra) # 80001f48 <_Z11debug_printPKc>
        return -3;
    8000286c:	ffd00513          	li	a0,-3
    80002870:	04c0006f          	j	800028bc <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        prev_free_block = next_free_block;
    80002874:	00060493          	mv	s1,a2
        next_free_block = next_free_block->next_;
    80002878:	00063603          	ld	a2,0(a2)
    while (next_free_block &&
    8000287c:	00060663          	beqz	a2,80002888 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002880:	fec7fae3          	bgeu	a5,a2,80002874 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
          !(((uint64)next_free_block > (uint64)block_info) &&
    80002884:	fef4f8e3          	bgeu	s1,a5,80002874 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if (!prev_free_block) {
    80002888:	04048863          	beqz	s1,800028d8 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        prev_free_block->next_ = block_info;
    8000288c:	0124b023          	sd	s2,0(s1)
    block_info->next_ = next_free_block;
    80002890:	fec5b823          	sd	a2,-16(a1)
    maybe_consolidate(block_info, next_free_block);
    80002894:	00090593          	mv	a1,s2
    80002898:	00098513          	mv	a0,s3
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	eb8080e7          	jalr	-328(ra) # 80002754 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    800028a4:	00090613          	mv	a2,s2
    800028a8:	00048593          	mv	a1,s1
    800028ac:	00098513          	mv	a0,s3
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	ea4080e7          	jalr	-348(ra) # 80002754 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    800028b8:	00000513          	li	a0,0
}
    800028bc:	02813083          	ld	ra,40(sp)
    800028c0:	02013403          	ld	s0,32(sp)
    800028c4:	01813483          	ld	s1,24(sp)
    800028c8:	01013903          	ld	s2,16(sp)
    800028cc:	00813983          	ld	s3,8(sp)
    800028d0:	03010113          	addi	sp,sp,48
    800028d4:	00008067          	ret
        free_block_ptr_ = block_info;
    800028d8:	0129b023          	sd	s2,0(s3)
    800028dc:	fb5ff06f          	j	80002890 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>

00000000800028e0 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800028e0:	00100793          	li	a5,1
    800028e4:	06a7f863          	bgeu	a5,a0,80002954 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800028e8:	fe010113          	addi	sp,sp,-32
    800028ec:	00113c23          	sd	ra,24(sp)
    800028f0:	00813823          	sd	s0,16(sp)
    800028f4:	00913423          	sd	s1,8(sp)
    800028f8:	01213023          	sd	s2,0(sp)
    800028fc:	02010413          	addi	s0,sp,32
    80002900:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80002904:	00a00793          	li	a5,10
    80002908:	02f577b3          	remu	a5,a0,a5
    8000290c:	02078e63          	beqz	a5,80002948 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002910:	fff48513          	addi	a0,s1,-1
    80002914:	00000097          	auipc	ra,0x0
    80002918:	fcc080e7          	jalr	-52(ra) # 800028e0 <_ZL9fibonaccim>
    8000291c:	00050913          	mv	s2,a0
    80002920:	ffe48513          	addi	a0,s1,-2
    80002924:	00000097          	auipc	ra,0x0
    80002928:	fbc080e7          	jalr	-68(ra) # 800028e0 <_ZL9fibonaccim>
    8000292c:	00a90533          	add	a0,s2,a0
}
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	01013403          	ld	s0,16(sp)
    80002938:	00813483          	ld	s1,8(sp)
    8000293c:	00013903          	ld	s2,0(sp)
    80002940:	02010113          	addi	sp,sp,32
    80002944:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	e38080e7          	jalr	-456(ra) # 80001780 <_Z15thread_dispatchv>
    80002950:	fc1ff06f          	j	80002910 <_ZL9fibonaccim+0x30>
}
    80002954:	00008067          	ret

0000000080002958 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002958:	fe010113          	addi	sp,sp,-32
    8000295c:	00113c23          	sd	ra,24(sp)
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	01213023          	sd	s2,0(sp)
    8000296c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002970:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80002974:	00c00793          	li	a5,12
    80002978:	0497e263          	bltu	a5,s1,800029bc <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    8000297c:	00007517          	auipc	a0,0x7
    80002980:	cbc50513          	addi	a0,a0,-836 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80002984:	00003097          	auipc	ra,0x3
    80002988:	a88080e7          	jalr	-1400(ra) # 8000540c <_Z11printStringPKc>
    8000298c:	00000613          	li	a2,0
    80002990:	00a00593          	li	a1,10
    80002994:	00048513          	mv	a0,s1
    80002998:	00003097          	auipc	ra,0x3
    8000299c:	c20080e7          	jalr	-992(ra) # 800055b8 <_Z8printIntiii>
    800029a0:	00007517          	auipc	a0,0x7
    800029a4:	a1850513          	addi	a0,a0,-1512 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800029a8:	00003097          	auipc	ra,0x3
    800029ac:	a64080e7          	jalr	-1436(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800029b0:	0014849b          	addiw	s1,s1,1
    800029b4:	0ff4f493          	andi	s1,s1,255
    800029b8:	fbdff06f          	j	80002974 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    800029bc:	00007517          	auipc	a0,0x7
    800029c0:	c8450513          	addi	a0,a0,-892 # 80009640 <_ZZ24debug_print_internal_intmE6digits+0x330>
    800029c4:	00003097          	auipc	ra,0x3
    800029c8:	a48080e7          	jalr	-1464(ra) # 8000540c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800029cc:	00500313          	li	t1,5
    thread_dispatch();
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	db0080e7          	jalr	-592(ra) # 80001780 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800029d8:	01000513          	li	a0,16
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	f04080e7          	jalr	-252(ra) # 800028e0 <_ZL9fibonaccim>
    800029e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800029e8:	00007517          	auipc	a0,0x7
    800029ec:	c6850513          	addi	a0,a0,-920 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x340>
    800029f0:	00003097          	auipc	ra,0x3
    800029f4:	a1c080e7          	jalr	-1508(ra) # 8000540c <_Z11printStringPKc>
    800029f8:	00000613          	li	a2,0
    800029fc:	00a00593          	li	a1,10
    80002a00:	0009051b          	sext.w	a0,s2
    80002a04:	00003097          	auipc	ra,0x3
    80002a08:	bb4080e7          	jalr	-1100(ra) # 800055b8 <_Z8printIntiii>
    80002a0c:	00007517          	auipc	a0,0x7
    80002a10:	9ac50513          	addi	a0,a0,-1620 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002a14:	00003097          	auipc	ra,0x3
    80002a18:	9f8080e7          	jalr	-1544(ra) # 8000540c <_Z11printStringPKc>

    for (; i < 16; i++) {
    80002a1c:	00f00793          	li	a5,15
    80002a20:	0497e263          	bltu	a5,s1,80002a64 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80002a24:	00007517          	auipc	a0,0x7
    80002a28:	c1450513          	addi	a0,a0,-1004 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80002a2c:	00003097          	auipc	ra,0x3
    80002a30:	9e0080e7          	jalr	-1568(ra) # 8000540c <_Z11printStringPKc>
    80002a34:	00000613          	li	a2,0
    80002a38:	00a00593          	li	a1,10
    80002a3c:	00048513          	mv	a0,s1
    80002a40:	00003097          	auipc	ra,0x3
    80002a44:	b78080e7          	jalr	-1160(ra) # 800055b8 <_Z8printIntiii>
    80002a48:	00007517          	auipc	a0,0x7
    80002a4c:	97050513          	addi	a0,a0,-1680 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002a50:	00003097          	auipc	ra,0x3
    80002a54:	9bc080e7          	jalr	-1604(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002a58:	0014849b          	addiw	s1,s1,1
    80002a5c:	0ff4f493          	andi	s1,s1,255
    80002a60:	fbdff06f          	j	80002a1c <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80002a64:	00007517          	auipc	a0,0x7
    80002a68:	bfc50513          	addi	a0,a0,-1028 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80002a6c:	00003097          	auipc	ra,0x3
    80002a70:	9a0080e7          	jalr	-1632(ra) # 8000540c <_Z11printStringPKc>
    finishedD = true;
    80002a74:	00100793          	li	a5,1
    80002a78:	00009717          	auipc	a4,0x9
    80002a7c:	eaf70823          	sb	a5,-336(a4) # 8000b928 <_ZL9finishedD>
    thread_dispatch();
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	d00080e7          	jalr	-768(ra) # 80001780 <_Z15thread_dispatchv>
}
    80002a88:	01813083          	ld	ra,24(sp)
    80002a8c:	01013403          	ld	s0,16(sp)
    80002a90:	00813483          	ld	s1,8(sp)
    80002a94:	00013903          	ld	s2,0(sp)
    80002a98:	02010113          	addi	sp,sp,32
    80002a9c:	00008067          	ret

0000000080002aa0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002aa0:	fe010113          	addi	sp,sp,-32
    80002aa4:	00113c23          	sd	ra,24(sp)
    80002aa8:	00813823          	sd	s0,16(sp)
    80002aac:	00913423          	sd	s1,8(sp)
    80002ab0:	01213023          	sd	s2,0(sp)
    80002ab4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ab8:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80002abc:	00200793          	li	a5,2
    80002ac0:	0497e263          	bltu	a5,s1,80002b04 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80002ac4:	00007517          	auipc	a0,0x7
    80002ac8:	bac50513          	addi	a0,a0,-1108 # 80009670 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80002acc:	00003097          	auipc	ra,0x3
    80002ad0:	940080e7          	jalr	-1728(ra) # 8000540c <_Z11printStringPKc>
    80002ad4:	00000613          	li	a2,0
    80002ad8:	00a00593          	li	a1,10
    80002adc:	00048513          	mv	a0,s1
    80002ae0:	00003097          	auipc	ra,0x3
    80002ae4:	ad8080e7          	jalr	-1320(ra) # 800055b8 <_Z8printIntiii>
    80002ae8:	00007517          	auipc	a0,0x7
    80002aec:	8d050513          	addi	a0,a0,-1840 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002af0:	00003097          	auipc	ra,0x3
    80002af4:	91c080e7          	jalr	-1764(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002af8:	0014849b          	addiw	s1,s1,1
    80002afc:	0ff4f493          	andi	s1,s1,255
    80002b00:	fbdff06f          	j	80002abc <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80002b04:	00007517          	auipc	a0,0x7
    80002b08:	b7450513          	addi	a0,a0,-1164 # 80009678 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80002b0c:	00003097          	auipc	ra,0x3
    80002b10:	900080e7          	jalr	-1792(ra) # 8000540c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b14:	00700313          	li	t1,7
    thread_dispatch();
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	c68080e7          	jalr	-920(ra) # 80001780 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b20:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002b24:	00007517          	auipc	a0,0x7
    80002b28:	b6450513          	addi	a0,a0,-1180 # 80009688 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80002b2c:	00003097          	auipc	ra,0x3
    80002b30:	8e0080e7          	jalr	-1824(ra) # 8000540c <_Z11printStringPKc>
    80002b34:	00000613          	li	a2,0
    80002b38:	00a00593          	li	a1,10
    80002b3c:	0009051b          	sext.w	a0,s2
    80002b40:	00003097          	auipc	ra,0x3
    80002b44:	a78080e7          	jalr	-1416(ra) # 800055b8 <_Z8printIntiii>
    80002b48:	00007517          	auipc	a0,0x7
    80002b4c:	87050513          	addi	a0,a0,-1936 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002b50:	00003097          	auipc	ra,0x3
    80002b54:	8bc080e7          	jalr	-1860(ra) # 8000540c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002b58:	00c00513          	li	a0,12
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	d84080e7          	jalr	-636(ra) # 800028e0 <_ZL9fibonaccim>
    80002b64:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b68:	00007517          	auipc	a0,0x7
    80002b6c:	b2850513          	addi	a0,a0,-1240 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80002b70:	00003097          	auipc	ra,0x3
    80002b74:	89c080e7          	jalr	-1892(ra) # 8000540c <_Z11printStringPKc>
    80002b78:	00000613          	li	a2,0
    80002b7c:	00a00593          	li	a1,10
    80002b80:	0009051b          	sext.w	a0,s2
    80002b84:	00003097          	auipc	ra,0x3
    80002b88:	a34080e7          	jalr	-1484(ra) # 800055b8 <_Z8printIntiii>
    80002b8c:	00007517          	auipc	a0,0x7
    80002b90:	82c50513          	addi	a0,a0,-2004 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002b94:	00003097          	auipc	ra,0x3
    80002b98:	878080e7          	jalr	-1928(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002b9c:	00500793          	li	a5,5
    80002ba0:	0497e263          	bltu	a5,s1,80002be4 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80002ba4:	00007517          	auipc	a0,0x7
    80002ba8:	acc50513          	addi	a0,a0,-1332 # 80009670 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80002bac:	00003097          	auipc	ra,0x3
    80002bb0:	860080e7          	jalr	-1952(ra) # 8000540c <_Z11printStringPKc>
    80002bb4:	00000613          	li	a2,0
    80002bb8:	00a00593          	li	a1,10
    80002bbc:	00048513          	mv	a0,s1
    80002bc0:	00003097          	auipc	ra,0x3
    80002bc4:	9f8080e7          	jalr	-1544(ra) # 800055b8 <_Z8printIntiii>
    80002bc8:	00006517          	auipc	a0,0x6
    80002bcc:	7f050513          	addi	a0,a0,2032 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002bd0:	00003097          	auipc	ra,0x3
    80002bd4:	83c080e7          	jalr	-1988(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002bd8:	0014849b          	addiw	s1,s1,1
    80002bdc:	0ff4f493          	andi	s1,s1,255
    80002be0:	fbdff06f          	j	80002b9c <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    80002be4:	00007517          	auipc	a0,0x7
    80002be8:	abc50513          	addi	a0,a0,-1348 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80002bec:	00003097          	auipc	ra,0x3
    80002bf0:	820080e7          	jalr	-2016(ra) # 8000540c <_Z11printStringPKc>
    finishedC = true;
    80002bf4:	00100793          	li	a5,1
    80002bf8:	00009717          	auipc	a4,0x9
    80002bfc:	d2f708a3          	sb	a5,-719(a4) # 8000b929 <_ZL9finishedC>
    thread_dispatch();
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	b80080e7          	jalr	-1152(ra) # 80001780 <_Z15thread_dispatchv>
}
    80002c08:	01813083          	ld	ra,24(sp)
    80002c0c:	01013403          	ld	s0,16(sp)
    80002c10:	00813483          	ld	s1,8(sp)
    80002c14:	00013903          	ld	s2,0(sp)
    80002c18:	02010113          	addi	sp,sp,32
    80002c1c:	00008067          	ret

0000000080002c20 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002c20:	fe010113          	addi	sp,sp,-32
    80002c24:	00113c23          	sd	ra,24(sp)
    80002c28:	00813823          	sd	s0,16(sp)
    80002c2c:	00913423          	sd	s1,8(sp)
    80002c30:	01213023          	sd	s2,0(sp)
    80002c34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c38:	00000913          	li	s2,0
    80002c3c:	0380006f          	j	80002c74 <_ZL11workerBodyBPv+0x54>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002c40:	00178793          	addi	a5,a5,1
    80002c44:	01d00713          	li	a4,29
    80002c48:	fef77ce3          	bgeu	a4,a5,80002c40 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	b34080e7          	jalr	-1228(ra) # 80001780 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80002c54:	00148493          	addi	s1,s1,1
    80002c58:	00900793          	li	a5,9
    80002c5c:	0097e663          	bltu	a5,s1,80002c68 <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002c60:	00000793          	li	a5,0
    80002c64:	fe1ff06f          	j	80002c44 <_ZL11workerBodyBPv+0x24>
        if (i == 10) {
    80002c68:	00a00793          	li	a5,10
    80002c6c:	04f90663          	beq	s2,a5,80002cb8 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    80002c70:	00190913          	addi	s2,s2,1
    80002c74:	00f00793          	li	a5,15
    80002c78:	0527e463          	bltu	a5,s2,80002cc0 <_ZL11workerBodyBPv+0xa0>
        printString("B: i="); printInt(i); printString("\n");
    80002c7c:	00007517          	auipc	a0,0x7
    80002c80:	a3450513          	addi	a0,a0,-1484 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80002c84:	00002097          	auipc	ra,0x2
    80002c88:	788080e7          	jalr	1928(ra) # 8000540c <_Z11printStringPKc>
    80002c8c:	00000613          	li	a2,0
    80002c90:	00a00593          	li	a1,10
    80002c94:	0009051b          	sext.w	a0,s2
    80002c98:	00003097          	auipc	ra,0x3
    80002c9c:	920080e7          	jalr	-1760(ra) # 800055b8 <_Z8printIntiii>
    80002ca0:	00006517          	auipc	a0,0x6
    80002ca4:	71850513          	addi	a0,a0,1816 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002ca8:	00002097          	auipc	ra,0x2
    80002cac:	764080e7          	jalr	1892(ra) # 8000540c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80002cb0:	00000493          	li	s1,0
    80002cb4:	fa5ff06f          	j	80002c58 <_ZL11workerBodyBPv+0x38>
            asm volatile("csrr t6, sepc");
    80002cb8:	14102ff3          	csrr	t6,sepc
    80002cbc:	fb5ff06f          	j	80002c70 <_ZL11workerBodyBPv+0x50>
    printString("B finished!\n");
    80002cc0:	00007517          	auipc	a0,0x7
    80002cc4:	9f850513          	addi	a0,a0,-1544 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80002cc8:	00002097          	auipc	ra,0x2
    80002ccc:	744080e7          	jalr	1860(ra) # 8000540c <_Z11printStringPKc>
    finishedB = true;
    80002cd0:	00100793          	li	a5,1
    80002cd4:	00009717          	auipc	a4,0x9
    80002cd8:	c4f70b23          	sb	a5,-938(a4) # 8000b92a <_ZL9finishedB>
    thread_dispatch();
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	aa4080e7          	jalr	-1372(ra) # 80001780 <_Z15thread_dispatchv>
}
    80002ce4:	01813083          	ld	ra,24(sp)
    80002ce8:	01013403          	ld	s0,16(sp)
    80002cec:	00813483          	ld	s1,8(sp)
    80002cf0:	00013903          	ld	s2,0(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret

0000000080002cfc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002cfc:	fe010113          	addi	sp,sp,-32
    80002d00:	00113c23          	sd	ra,24(sp)
    80002d04:	00813823          	sd	s0,16(sp)
    80002d08:	00913423          	sd	s1,8(sp)
    80002d0c:	01213023          	sd	s2,0(sp)
    80002d10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002d14:	00000913          	li	s2,0
    80002d18:	0300006f          	j	80002d48 <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002d1c:	00178793          	addi	a5,a5,1
    80002d20:	01d00713          	li	a4,29
    80002d24:	fef77ce3          	bgeu	a4,a5,80002d1c <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	a58080e7          	jalr	-1448(ra) # 80001780 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80002d30:	00148493          	addi	s1,s1,1
    80002d34:	00900793          	li	a5,9
    80002d38:	0097e663          	bltu	a5,s1,80002d44 <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002d3c:	00000793          	li	a5,0
    80002d40:	fe1ff06f          	j	80002d20 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80002d44:	00190913          	addi	s2,s2,1
    80002d48:	00900793          	li	a5,9
    80002d4c:	0527e063          	bltu	a5,s2,80002d8c <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80002d50:	00007517          	auipc	a0,0x7
    80002d54:	97850513          	addi	a0,a0,-1672 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80002d58:	00002097          	auipc	ra,0x2
    80002d5c:	6b4080e7          	jalr	1716(ra) # 8000540c <_Z11printStringPKc>
    80002d60:	00000613          	li	a2,0
    80002d64:	00a00593          	li	a1,10
    80002d68:	0009051b          	sext.w	a0,s2
    80002d6c:	00003097          	auipc	ra,0x3
    80002d70:	84c080e7          	jalr	-1972(ra) # 800055b8 <_Z8printIntiii>
    80002d74:	00006517          	auipc	a0,0x6
    80002d78:	64450513          	addi	a0,a0,1604 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002d7c:	00002097          	auipc	ra,0x2
    80002d80:	690080e7          	jalr	1680(ra) # 8000540c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80002d84:	00000493          	li	s1,0
    80002d88:	fadff06f          	j	80002d34 <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    80002d8c:	00007517          	auipc	a0,0x7
    80002d90:	91450513          	addi	a0,a0,-1772 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80002d94:	00002097          	auipc	ra,0x2
    80002d98:	678080e7          	jalr	1656(ra) # 8000540c <_Z11printStringPKc>
    finishedA = true;
    80002d9c:	00100793          	li	a5,1
    80002da0:	00009717          	auipc	a4,0x9
    80002da4:	b8f705a3          	sb	a5,-1141(a4) # 8000b92b <_ZL9finishedA>
}
    80002da8:	01813083          	ld	ra,24(sp)
    80002dac:	01013403          	ld	s0,16(sp)
    80002db0:	00813483          	ld	s1,8(sp)
    80002db4:	00013903          	ld	s2,0(sp)
    80002db8:	02010113          	addi	sp,sp,32
    80002dbc:	00008067          	ret

0000000080002dc0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002dc0:	fd010113          	addi	sp,sp,-48
    80002dc4:	02113423          	sd	ra,40(sp)
    80002dc8:	02813023          	sd	s0,32(sp)
    80002dcc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002dd0:	00000613          	li	a2,0
    80002dd4:	00000597          	auipc	a1,0x0
    80002dd8:	f2858593          	addi	a1,a1,-216 # 80002cfc <_ZL11workerBodyAPv>
    80002ddc:	fd040513          	addi	a0,s0,-48
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	8f0080e7          	jalr	-1808(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002de8:	00007517          	auipc	a0,0x7
    80002dec:	8e850513          	addi	a0,a0,-1816 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    80002df0:	00002097          	auipc	ra,0x2
    80002df4:	61c080e7          	jalr	1564(ra) # 8000540c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002df8:	00000613          	li	a2,0
    80002dfc:	00000597          	auipc	a1,0x0
    80002e00:	e2458593          	addi	a1,a1,-476 # 80002c20 <_ZL11workerBodyBPv>
    80002e04:	fd840513          	addi	a0,s0,-40
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	8c8080e7          	jalr	-1848(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002e10:	00007517          	auipc	a0,0x7
    80002e14:	8d850513          	addi	a0,a0,-1832 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    80002e18:	00002097          	auipc	ra,0x2
    80002e1c:	5f4080e7          	jalr	1524(ra) # 8000540c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002e20:	00000613          	li	a2,0
    80002e24:	00000597          	auipc	a1,0x0
    80002e28:	c7c58593          	addi	a1,a1,-900 # 80002aa0 <_ZL11workerBodyCPv>
    80002e2c:	fe040513          	addi	a0,s0,-32
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	8a0080e7          	jalr	-1888(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002e38:	00007517          	auipc	a0,0x7
    80002e3c:	8c850513          	addi	a0,a0,-1848 # 80009700 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    80002e40:	00002097          	auipc	ra,0x2
    80002e44:	5cc080e7          	jalr	1484(ra) # 8000540c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002e48:	00000613          	li	a2,0
    80002e4c:	00000597          	auipc	a1,0x0
    80002e50:	b0c58593          	addi	a1,a1,-1268 # 80002958 <_ZL11workerBodyDPv>
    80002e54:	fe840513          	addi	a0,s0,-24
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	878080e7          	jalr	-1928(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80002e60:	00007517          	auipc	a0,0x7
    80002e64:	8b850513          	addi	a0,a0,-1864 # 80009718 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80002e68:	00002097          	auipc	ra,0x2
    80002e6c:	5a4080e7          	jalr	1444(ra) # 8000540c <_Z11printStringPKc>
    80002e70:	00c0006f          	j	80002e7c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002e74:	fffff097          	auipc	ra,0xfffff
    80002e78:	90c080e7          	jalr	-1780(ra) # 80001780 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002e7c:	00009797          	auipc	a5,0x9
    80002e80:	aaf78793          	addi	a5,a5,-1361 # 8000b92b <_ZL9finishedA>
    80002e84:	0007c783          	lbu	a5,0(a5)
    80002e88:	0ff7f793          	andi	a5,a5,255
    80002e8c:	fe0784e3          	beqz	a5,80002e74 <_Z16System_Mode_testv+0xb4>
    80002e90:	00009797          	auipc	a5,0x9
    80002e94:	a9a78793          	addi	a5,a5,-1382 # 8000b92a <_ZL9finishedB>
    80002e98:	0007c783          	lbu	a5,0(a5)
    80002e9c:	0ff7f793          	andi	a5,a5,255
    80002ea0:	fc078ae3          	beqz	a5,80002e74 <_Z16System_Mode_testv+0xb4>
    80002ea4:	00009797          	auipc	a5,0x9
    80002ea8:	a8578793          	addi	a5,a5,-1403 # 8000b929 <_ZL9finishedC>
    80002eac:	0007c783          	lbu	a5,0(a5)
    80002eb0:	0ff7f793          	andi	a5,a5,255
    80002eb4:	fc0780e3          	beqz	a5,80002e74 <_Z16System_Mode_testv+0xb4>
    80002eb8:	00009797          	auipc	a5,0x9
    80002ebc:	a7078793          	addi	a5,a5,-1424 # 8000b928 <_ZL9finishedD>
    80002ec0:	0007c783          	lbu	a5,0(a5)
    80002ec4:	0ff7f793          	andi	a5,a5,255
    80002ec8:	fa0786e3          	beqz	a5,80002e74 <_Z16System_Mode_testv+0xb4>
    }

}
    80002ecc:	02813083          	ld	ra,40(sp)
    80002ed0:	02013403          	ld	s0,32(sp)
    80002ed4:	03010113          	addi	sp,sp,48
    80002ed8:	00008067          	ret

0000000080002edc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002edc:	fe010113          	addi	sp,sp,-32
    80002ee0:	00113c23          	sd	ra,24(sp)
    80002ee4:	00813823          	sd	s0,16(sp)
    80002ee8:	00913423          	sd	s1,8(sp)
    80002eec:	01213023          	sd	s2,0(sp)
    80002ef0:	02010413          	addi	s0,sp,32
    80002ef4:	00050493          	mv	s1,a0
    80002ef8:	00058913          	mv	s2,a1
    80002efc:	0015879b          	addiw	a5,a1,1
    80002f00:	0007851b          	sext.w	a0,a5
    80002f04:	00f4a023          	sw	a5,0(s1)
    80002f08:	0004a823          	sw	zero,16(s1)
    80002f0c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002f10:	00251513          	slli	a0,a0,0x2
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	630080e7          	jalr	1584(ra) # 80001544 <_Z9mem_allocm>
    80002f1c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002f20:	00000593          	li	a1,0
    80002f24:	02048513          	addi	a0,s1,32
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	8a4080e7          	jalr	-1884(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    80002f30:	00090593          	mv	a1,s2
    80002f34:	01848513          	addi	a0,s1,24
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	894080e7          	jalr	-1900(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    80002f40:	00100593          	li	a1,1
    80002f44:	02848513          	addi	a0,s1,40
    80002f48:	fffff097          	auipc	ra,0xfffff
    80002f4c:	884080e7          	jalr	-1916(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    80002f50:	00100593          	li	a1,1
    80002f54:	03048513          	addi	a0,s1,48
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	874080e7          	jalr	-1932(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
}
    80002f60:	01813083          	ld	ra,24(sp)
    80002f64:	01013403          	ld	s0,16(sp)
    80002f68:	00813483          	ld	s1,8(sp)
    80002f6c:	00013903          	ld	s2,0(sp)
    80002f70:	02010113          	addi	sp,sp,32
    80002f74:	00008067          	ret

0000000080002f78 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002f78:	fe010113          	addi	sp,sp,-32
    80002f7c:	00113c23          	sd	ra,24(sp)
    80002f80:	00813823          	sd	s0,16(sp)
    80002f84:	00913423          	sd	s1,8(sp)
    80002f88:	01213023          	sd	s2,0(sp)
    80002f8c:	02010413          	addi	s0,sp,32
    80002f90:	00050493          	mv	s1,a0
    80002f94:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002f98:	01853503          	ld	a0,24(a0)
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	974080e7          	jalr	-1676(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80002fa4:	0304b503          	ld	a0,48(s1)
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	968080e7          	jalr	-1688(ra) # 80001910 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80002fb0:	0084b783          	ld	a5,8(s1)
    80002fb4:	0144a703          	lw	a4,20(s1)
    80002fb8:	00271713          	slli	a4,a4,0x2
    80002fbc:	00e787b3          	add	a5,a5,a4
    80002fc0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002fc4:	0144a783          	lw	a5,20(s1)
    80002fc8:	0017879b          	addiw	a5,a5,1
    80002fcc:	0004a703          	lw	a4,0(s1)
    80002fd0:	02e7e7bb          	remw	a5,a5,a4
    80002fd4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002fd8:	0304b503          	ld	a0,48(s1)
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	984080e7          	jalr	-1660(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80002fe4:	0204b503          	ld	a0,32(s1)
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	978080e7          	jalr	-1672(ra) # 80001960 <_Z10sem_signalP10_semaphore>

}
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	01013403          	ld	s0,16(sp)
    80002ff8:	00813483          	ld	s1,8(sp)
    80002ffc:	00013903          	ld	s2,0(sp)
    80003000:	02010113          	addi	sp,sp,32
    80003004:	00008067          	ret

0000000080003008 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003008:	fe010113          	addi	sp,sp,-32
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	00813823          	sd	s0,16(sp)
    80003014:	00913423          	sd	s1,8(sp)
    80003018:	01213023          	sd	s2,0(sp)
    8000301c:	02010413          	addi	s0,sp,32
    80003020:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003024:	02053503          	ld	a0,32(a0)
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	8e8080e7          	jalr	-1816(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    80003030:	0284b503          	ld	a0,40(s1)
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	8dc080e7          	jalr	-1828(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    8000303c:	0084b703          	ld	a4,8(s1)
    80003040:	0104a783          	lw	a5,16(s1)
    80003044:	00279693          	slli	a3,a5,0x2
    80003048:	00d70733          	add	a4,a4,a3
    8000304c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003050:	0017879b          	addiw	a5,a5,1
    80003054:	0004a703          	lw	a4,0(s1)
    80003058:	02e7e7bb          	remw	a5,a5,a4
    8000305c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003060:	0284b503          	ld	a0,40(s1)
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	8fc080e7          	jalr	-1796(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    8000306c:	0184b503          	ld	a0,24(s1)
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	8f0080e7          	jalr	-1808(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80003078:	00090513          	mv	a0,s2
    8000307c:	01813083          	ld	ra,24(sp)
    80003080:	01013403          	ld	s0,16(sp)
    80003084:	00813483          	ld	s1,8(sp)
    80003088:	00013903          	ld	s2,0(sp)
    8000308c:	02010113          	addi	sp,sp,32
    80003090:	00008067          	ret

0000000080003094 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003094:	fe010113          	addi	sp,sp,-32
    80003098:	00113c23          	sd	ra,24(sp)
    8000309c:	00813823          	sd	s0,16(sp)
    800030a0:	00913423          	sd	s1,8(sp)
    800030a4:	01213023          	sd	s2,0(sp)
    800030a8:	02010413          	addi	s0,sp,32
    800030ac:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800030b0:	02853503          	ld	a0,40(a0)
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	85c080e7          	jalr	-1956(ra) # 80001910 <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    800030bc:	0304b503          	ld	a0,48(s1)
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	850080e7          	jalr	-1968(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    800030c8:	0144a783          	lw	a5,20(s1)
    800030cc:	0104a903          	lw	s2,16(s1)
    800030d0:	0327ce63          	blt	a5,s2,8000310c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800030d4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800030d8:	0304b503          	ld	a0,48(s1)
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	884080e7          	jalr	-1916(ra) # 80001960 <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    800030e4:	0284b503          	ld	a0,40(s1)
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	878080e7          	jalr	-1928(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    return ret;
}
    800030f0:	00090513          	mv	a0,s2
    800030f4:	01813083          	ld	ra,24(sp)
    800030f8:	01013403          	ld	s0,16(sp)
    800030fc:	00813483          	ld	s1,8(sp)
    80003100:	00013903          	ld	s2,0(sp)
    80003104:	02010113          	addi	sp,sp,32
    80003108:	00008067          	ret
        ret = cap - head + tail;
    8000310c:	0004a703          	lw	a4,0(s1)
    80003110:	4127093b          	subw	s2,a4,s2
    80003114:	00f9093b          	addw	s2,s2,a5
    80003118:	fc1ff06f          	j	800030d8 <_ZN6Buffer6getCntEv+0x44>

000000008000311c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	02010413          	addi	s0,sp,32
    80003130:	00050493          	mv	s1,a0
    putc('\n');
    80003134:	00a00513          	li	a0,10
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	8e4080e7          	jalr	-1820(ra) # 80001a1c <_Z4putcc>
    printString("Buffer deleted!\n");
    80003140:	00006517          	auipc	a0,0x6
    80003144:	5f050513          	addi	a0,a0,1520 # 80009730 <_ZZ24debug_print_internal_intmE6digits+0x420>
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	2c4080e7          	jalr	708(ra) # 8000540c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003150:	00048513          	mv	a0,s1
    80003154:	00000097          	auipc	ra,0x0
    80003158:	f40080e7          	jalr	-192(ra) # 80003094 <_ZN6Buffer6getCntEv>
    8000315c:	02a05c63          	blez	a0,80003194 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003160:	0084b783          	ld	a5,8(s1)
    80003164:	0104a703          	lw	a4,16(s1)
    80003168:	00271713          	slli	a4,a4,0x2
    8000316c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003170:	0007c503          	lbu	a0,0(a5)
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	8a8080e7          	jalr	-1880(ra) # 80001a1c <_Z4putcc>
        head = (head + 1) % cap;
    8000317c:	0104a783          	lw	a5,16(s1)
    80003180:	0017879b          	addiw	a5,a5,1
    80003184:	0004a703          	lw	a4,0(s1)
    80003188:	02e7e7bb          	remw	a5,a5,a4
    8000318c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003190:	fc1ff06f          	j	80003150 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003194:	02100513          	li	a0,33
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	884080e7          	jalr	-1916(ra) # 80001a1c <_Z4putcc>
    putc('\n');
    800031a0:	00a00513          	li	a0,10
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	878080e7          	jalr	-1928(ra) # 80001a1c <_Z4putcc>
    mem_free(buffer);
    800031ac:	0084b503          	ld	a0,8(s1)
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	3fc080e7          	jalr	1020(ra) # 800015ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    800031b8:	0204b503          	ld	a0,32(s1)
    800031bc:	ffffe097          	auipc	ra,0xffffe
    800031c0:	6e8080e7          	jalr	1768(ra) # 800018a4 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    800031c4:	0184b503          	ld	a0,24(s1)
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	6dc080e7          	jalr	1756(ra) # 800018a4 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    800031d0:	0304b503          	ld	a0,48(s1)
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	6d0080e7          	jalr	1744(ra) # 800018a4 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    800031dc:	0284b503          	ld	a0,40(s1)
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	6c4080e7          	jalr	1732(ra) # 800018a4 <_Z9sem_closeP10_semaphore>
}
    800031e8:	01813083          	ld	ra,24(sp)
    800031ec:	01013403          	ld	s0,16(sp)
    800031f0:	00813483          	ld	s1,8(sp)
    800031f4:	02010113          	addi	sp,sp,32
    800031f8:	00008067          	ret

00000000800031fc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800031fc:	f8010113          	addi	sp,sp,-128
    80003200:	06113c23          	sd	ra,120(sp)
    80003204:	06813823          	sd	s0,112(sp)
    80003208:	06913423          	sd	s1,104(sp)
    8000320c:	07213023          	sd	s2,96(sp)
    80003210:	05313c23          	sd	s3,88(sp)
    80003214:	05413823          	sd	s4,80(sp)
    80003218:	05513423          	sd	s5,72(sp)
    8000321c:	05613023          	sd	s6,64(sp)
    80003220:	03713c23          	sd	s7,56(sp)
    80003224:	03813823          	sd	s8,48(sp)
    80003228:	03913423          	sd	s9,40(sp)
    8000322c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003230:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003234:	00006517          	auipc	a0,0x6
    80003238:	5ac50513          	addi	a0,a0,1452 # 800097e0 <_ZTV8Consumer+0x28>
    8000323c:	00002097          	auipc	ra,0x2
    80003240:	1d0080e7          	jalr	464(ra) # 8000540c <_Z11printStringPKc>
    getString(input, 30);
    80003244:	01e00593          	li	a1,30
    80003248:	f8040513          	addi	a0,s0,-128
    8000324c:	00002097          	auipc	ra,0x2
    80003250:	248080e7          	jalr	584(ra) # 80005494 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003254:	f8040513          	addi	a0,s0,-128
    80003258:	00002097          	auipc	ra,0x2
    8000325c:	310080e7          	jalr	784(ra) # 80005568 <_Z11stringToIntPKc>
    80003260:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    80003264:	00006517          	auipc	a0,0x6
    80003268:	59c50513          	addi	a0,a0,1436 # 80009800 <_ZTV8Consumer+0x48>
    8000326c:	00002097          	auipc	ra,0x2
    80003270:	1a0080e7          	jalr	416(ra) # 8000540c <_Z11printStringPKc>
    getString(input, 30);
    80003274:	01e00593          	li	a1,30
    80003278:	f8040513          	addi	a0,s0,-128
    8000327c:	00002097          	auipc	ra,0x2
    80003280:	218080e7          	jalr	536(ra) # 80005494 <_Z9getStringPci>
    n = stringToInt(input);
    80003284:	f8040513          	addi	a0,s0,-128
    80003288:	00002097          	auipc	ra,0x2
    8000328c:	2e0080e7          	jalr	736(ra) # 80005568 <_Z11stringToIntPKc>
    80003290:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003294:	00006517          	auipc	a0,0x6
    80003298:	58c50513          	addi	a0,a0,1420 # 80009820 <_ZTV8Consumer+0x68>
    8000329c:	00002097          	auipc	ra,0x2
    800032a0:	170080e7          	jalr	368(ra) # 8000540c <_Z11printStringPKc>
    printInt(threadNum);
    800032a4:	00000613          	li	a2,0
    800032a8:	00a00593          	li	a1,10
    800032ac:	000a0513          	mv	a0,s4
    800032b0:	00002097          	auipc	ra,0x2
    800032b4:	308080e7          	jalr	776(ra) # 800055b8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800032b8:	00006517          	auipc	a0,0x6
    800032bc:	58050513          	addi	a0,a0,1408 # 80009838 <_ZTV8Consumer+0x80>
    800032c0:	00002097          	auipc	ra,0x2
    800032c4:	14c080e7          	jalr	332(ra) # 8000540c <_Z11printStringPKc>
    printInt(n);
    800032c8:	00000613          	li	a2,0
    800032cc:	00a00593          	li	a1,10
    800032d0:	00048513          	mv	a0,s1
    800032d4:	00002097          	auipc	ra,0x2
    800032d8:	2e4080e7          	jalr	740(ra) # 800055b8 <_Z8printIntiii>
    printString(".\n");
    800032dc:	00006517          	auipc	a0,0x6
    800032e0:	57450513          	addi	a0,a0,1396 # 80009850 <_ZTV8Consumer+0x98>
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	128080e7          	jalr	296(ra) # 8000540c <_Z11printStringPKc>
    if (threadNum > n) {
    800032ec:	0344c463          	blt	s1,s4,80003314 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    800032f0:	03405c63          	blez	s4,80003328 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    800032f4:	03800513          	li	a0,56
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	ae0080e7          	jalr	-1312(ra) # 80001dd8 <_Znwm>
    80003300:	00050b13          	mv	s6,a0
    80003304:	00048593          	mv	a1,s1
    80003308:	00003097          	auipc	ra,0x3
    8000330c:	8f4080e7          	jalr	-1804(ra) # 80005bfc <_ZN9BufferCPPC1Ei>
    80003310:	0300006f          	j	80003340 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003314:	00006517          	auipc	a0,0x6
    80003318:	54450513          	addi	a0,a0,1348 # 80009858 <_ZTV8Consumer+0xa0>
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	0f0080e7          	jalr	240(ra) # 8000540c <_Z11printStringPKc>
        return;
    80003324:	0140006f          	j	80003338 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003328:	00006517          	auipc	a0,0x6
    8000332c:	57050513          	addi	a0,a0,1392 # 80009898 <_ZTV8Consumer+0xe0>
    80003330:	00002097          	auipc	ra,0x2
    80003334:	0dc080e7          	jalr	220(ra) # 8000540c <_Z11printStringPKc>
        return;
    80003338:	000c0113          	mv	sp,s8
    8000333c:	37c0006f          	j	800036b8 <_Z20testConsumerProducerv+0x4bc>
    waitForAll = new Semaphore(0);
    80003340:	01000513          	li	a0,16
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	a94080e7          	jalr	-1388(ra) # 80001dd8 <_Znwm>
    8000334c:	00050913          	mv	s2,a0
    void* arg;
};

class Semaphore {
    public:
    Semaphore(unsigned init = 1) {
    80003350:	00006797          	auipc	a5,0x6
    80003354:	40878793          	addi	a5,a5,1032 # 80009758 <_ZTV9Semaphore+0x10>
    80003358:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    8000335c:	00000593          	li	a1,0
    80003360:	00850513          	addi	a0,a0,8
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	468080e7          	jalr	1128(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    8000336c:	00050463          	beqz	a0,80003374 <_Z20testConsumerProducerv+0x178>
            myHandle = nullptr;
    80003370:	00093423          	sd	zero,8(s2)
    80003374:	00008797          	auipc	a5,0x8
    80003378:	5d27b223          	sd	s2,1476(a5) # 8000b938 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000337c:	003a1793          	slli	a5,s4,0x3
    80003380:	00f78793          	addi	a5,a5,15
    80003384:	ff07f793          	andi	a5,a5,-16
    80003388:	40f10133          	sub	sp,sp,a5
    8000338c:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    80003390:	001a079b          	addiw	a5,s4,1
    80003394:	00179713          	slli	a4,a5,0x1
    80003398:	00f70733          	add	a4,a4,a5
    8000339c:	00371793          	slli	a5,a4,0x3
    800033a0:	00f78793          	addi	a5,a5,15
    800033a4:	ff07f793          	andi	a5,a5,-16
    800033a8:	40f10133          	sub	sp,sp,a5
    800033ac:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    800033b0:	001a1793          	slli	a5,s4,0x1
    800033b4:	014787b3          	add	a5,a5,s4
    800033b8:	00379493          	slli	s1,a5,0x3
    800033bc:	009c84b3          	add	s1,s9,s1
    800033c0:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    800033c4:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    800033c8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800033cc:	02800513          	li	a0,40
    800033d0:	fffff097          	auipc	ra,0xfffff
    800033d4:	a08080e7          	jalr	-1528(ra) # 80001dd8 <_Znwm>
    800033d8:	00050b93          	mv	s7,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800033dc:	00053423          	sd	zero,8(a0)
    800033e0:	00053823          	sd	zero,16(a0)
    800033e4:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800033e8:	00006797          	auipc	a5,0x6
    800033ec:	3e078793          	addi	a5,a5,992 # 800097c8 <_ZTV8Consumer+0x10>
    800033f0:	00f53023          	sd	a5,0(a0)
    800033f4:	02953023          	sd	s1,32(a0)
        debug_print("CPP API: Starting thread\n");
    800033f8:	00006517          	auipc	a0,0x6
    800033fc:	4d050513          	addi	a0,a0,1232 # 800098c8 <_ZTV8Consumer+0x110>
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	b48080e7          	jalr	-1208(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003408:	00006517          	auipc	a0,0x6
    8000340c:	4e050513          	addi	a0,a0,1248 # 800098e8 <_ZTV8Consumer+0x130>
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	b38080e7          	jalr	-1224(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003418:	000b8513          	mv	a0,s7
    8000341c:	fffff097          	auipc	ra,0xfffff
    80003420:	c74080e7          	jalr	-908(ra) # 80002090 <_Z11debug_printm>
        debug_print("\n");
    80003424:	00006517          	auipc	a0,0x6
    80003428:	f9450513          	addi	a0,a0,-108 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	b1c080e7          	jalr	-1252(ra) # 80001f48 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003434:	000b8613          	mv	a2,s7
    80003438:	ffffe597          	auipc	a1,0xffffe
    8000343c:	e5c58593          	addi	a1,a1,-420 # 80001294 <_ZN6Thread9body_execEPv>
    80003440:	008b8513          	addi	a0,s7,8
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	28c080e7          	jalr	652(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    8000344c:	0c051663          	bnez	a0,80003518 <_Z20testConsumerProducerv+0x31c>
        debug_print("CPP API: Thread started\n");
    80003450:	00006517          	auipc	a0,0x6
    80003454:	4b050513          	addi	a0,a0,1200 # 80009900 <_ZTV8Consumer+0x148>
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	af0080e7          	jalr	-1296(ra) # 80001f48 <_Z11debug_printPKc>
    threadData[0].id = 0;
    80003460:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    80003464:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    80003468:	00008797          	auipc	a5,0x8
    8000346c:	4d078793          	addi	a5,a5,1232 # 8000b938 <_ZL10waitForAll>
    80003470:	0007b783          	ld	a5,0(a5)
    80003474:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003478:	02800513          	li	a0,40
    8000347c:	fffff097          	auipc	ra,0xfffff
    80003480:	95c080e7          	jalr	-1700(ra) # 80001dd8 <_Znwm>
    80003484:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003488:	00053423          	sd	zero,8(a0)
    8000348c:	00053823          	sd	zero,16(a0)
    80003490:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003494:	00006797          	auipc	a5,0x6
    80003498:	2e478793          	addi	a5,a5,740 # 80009778 <_ZTV16ProducerKeyborad+0x10>
    8000349c:	00f53023          	sd	a5,0(a0)
    800034a0:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800034a4:	00aab023          	sd	a0,0(s5)
        debug_print("CPP API: Starting thread\n");
    800034a8:	00006517          	auipc	a0,0x6
    800034ac:	42050513          	addi	a0,a0,1056 # 800098c8 <_ZTV8Consumer+0x110>
    800034b0:	fffff097          	auipc	ra,0xfffff
    800034b4:	a98080e7          	jalr	-1384(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    800034b8:	00006517          	auipc	a0,0x6
    800034bc:	43050513          	addi	a0,a0,1072 # 800098e8 <_ZTV8Consumer+0x130>
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	a88080e7          	jalr	-1400(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)this);
    800034c8:	00048513          	mv	a0,s1
    800034cc:	fffff097          	auipc	ra,0xfffff
    800034d0:	bc4080e7          	jalr	-1084(ra) # 80002090 <_Z11debug_printm>
        debug_print("\n");
    800034d4:	00006517          	auipc	a0,0x6
    800034d8:	ee450513          	addi	a0,a0,-284 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	a6c080e7          	jalr	-1428(ra) # 80001f48 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    800034e4:	00048613          	mv	a2,s1
    800034e8:	ffffe597          	auipc	a1,0xffffe
    800034ec:	dac58593          	addi	a1,a1,-596 # 80001294 <_ZN6Thread9body_execEPv>
    800034f0:	00848513          	addi	a0,s1,8
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	1dc080e7          	jalr	476(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    800034fc:	02051263          	bnez	a0,80003520 <_Z20testConsumerProducerv+0x324>
        debug_print("CPP API: Thread started\n");
    80003500:	00006517          	auipc	a0,0x6
    80003504:	40050513          	addi	a0,a0,1024 # 80009900 <_ZTV8Consumer+0x148>
    80003508:	fffff097          	auipc	ra,0xfffff
    8000350c:	a40080e7          	jalr	-1472(ra) # 80001f48 <_Z11debug_printPKc>
    for (int i = 1; i < threadNum; i++) {
    80003510:	00100993          	li	s3,1
    80003514:	0280006f          	j	8000353c <_Z20testConsumerProducerv+0x340>
            myHandle = nullptr;
    80003518:	000bb423          	sd	zero,8(s7)
            return -1;
    8000351c:	f45ff06f          	j	80003460 <_Z20testConsumerProducerv+0x264>
            myHandle = nullptr;
    80003520:	0004b423          	sd	zero,8(s1)
            return -1;
    80003524:	fedff06f          	j	80003510 <_Z20testConsumerProducerv+0x314>
        debug_print("CPP API: Thread started\n");
    80003528:	00006517          	auipc	a0,0x6
    8000352c:	3d850513          	addi	a0,a0,984 # 80009900 <_ZTV8Consumer+0x148>
    80003530:	fffff097          	auipc	ra,0xfffff
    80003534:	a18080e7          	jalr	-1512(ra) # 80001f48 <_Z11debug_printPKc>
    80003538:	0019899b          	addiw	s3,s3,1
    8000353c:	0d49d263          	bge	s3,s4,80003600 <_Z20testConsumerProducerv+0x404>
        threadData[i].id = i;
    80003540:	00199793          	slli	a5,s3,0x1
    80003544:	013787b3          	add	a5,a5,s3
    80003548:	00379913          	slli	s2,a5,0x3
    8000354c:	012c8933          	add	s2,s9,s2
    80003550:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    80003554:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    80003558:	00008797          	auipc	a5,0x8
    8000355c:	3e078793          	addi	a5,a5,992 # 8000b938 <_ZL10waitForAll>
    80003560:	0007b783          	ld	a5,0(a5)
    80003564:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    80003568:	02800513          	li	a0,40
    8000356c:	fffff097          	auipc	ra,0xfffff
    80003570:	86c080e7          	jalr	-1940(ra) # 80001dd8 <_Znwm>
    80003574:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003578:	00053423          	sd	zero,8(a0)
    8000357c:	00053823          	sd	zero,16(a0)
    80003580:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003584:	00006797          	auipc	a5,0x6
    80003588:	21c78793          	addi	a5,a5,540 # 800097a0 <_ZTV8Producer+0x10>
    8000358c:	00f53023          	sd	a5,0(a0)
    80003590:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    80003594:	00399793          	slli	a5,s3,0x3
    80003598:	00fa87b3          	add	a5,s5,a5
    8000359c:	00a7b023          	sd	a0,0(a5)
        debug_print("CPP API: Starting thread\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	32850513          	addi	a0,a0,808 # 800098c8 <_ZTV8Consumer+0x110>
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	9a0080e7          	jalr	-1632(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	33850513          	addi	a0,a0,824 # 800098e8 <_ZTV8Consumer+0x130>
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	990080e7          	jalr	-1648(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)this);
    800035c0:	00048513          	mv	a0,s1
    800035c4:	fffff097          	auipc	ra,0xfffff
    800035c8:	acc080e7          	jalr	-1332(ra) # 80002090 <_Z11debug_printm>
        debug_print("\n");
    800035cc:	00006517          	auipc	a0,0x6
    800035d0:	dec50513          	addi	a0,a0,-532 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	974080e7          	jalr	-1676(ra) # 80001f48 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    800035dc:	00048613          	mv	a2,s1
    800035e0:	ffffe597          	auipc	a1,0xffffe
    800035e4:	cb458593          	addi	a1,a1,-844 # 80001294 <_ZN6Thread9body_execEPv>
    800035e8:	00848513          	addi	a0,s1,8
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	0e4080e7          	jalr	228(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    800035f4:	f2050ae3          	beqz	a0,80003528 <_Z20testConsumerProducerv+0x32c>
            myHandle = nullptr;
    800035f8:	0004b423          	sd	zero,8(s1)
            return -1;
    800035fc:	f3dff06f          	j	80003538 <_Z20testConsumerProducerv+0x33c>
        thread_dispatch();
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	180080e7          	jalr	384(ra) # 80001780 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003608:	00000493          	li	s1,0
    8000360c:	0080006f          	j	80003614 <_Z20testConsumerProducerv+0x418>
    80003610:	0014849b          	addiw	s1,s1,1
    80003614:	029a4263          	blt	s4,s1,80003638 <_Z20testConsumerProducerv+0x43c>
        waitForAll->wait();
    80003618:	00008797          	auipc	a5,0x8
    8000361c:	32078793          	addi	a5,a5,800 # 8000b938 <_ZL10waitForAll>
    80003620:	0007b783          	ld	a5,0(a5)
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }
    int wait() {
        if (myHandle == nullptr) {
    80003624:	0087b503          	ld	a0,8(a5)
    80003628:	fe0504e3          	beqz	a0,80003610 <_Z20testConsumerProducerv+0x414>
            return -1;
        }
        return sem_wait(myHandle);
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	2e4080e7          	jalr	740(ra) # 80001910 <_Z8sem_waitP10_semaphore>
    80003634:	fddff06f          	j	80003610 <_Z20testConsumerProducerv+0x414>
    delete waitForAll;
    80003638:	00008797          	auipc	a5,0x8
    8000363c:	30078793          	addi	a5,a5,768 # 8000b938 <_ZL10waitForAll>
    80003640:	0007b503          	ld	a0,0(a5)
    80003644:	00050863          	beqz	a0,80003654 <_Z20testConsumerProducerv+0x458>
    80003648:	00053783          	ld	a5,0(a0)
    8000364c:	0087b783          	ld	a5,8(a5)
    80003650:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003654:	00000493          	li	s1,0
    80003658:	0080006f          	j	80003660 <_Z20testConsumerProducerv+0x464>
    for (int i = 0; i < threadNum; i++) {
    8000365c:	0014849b          	addiw	s1,s1,1
    80003660:	0344d263          	bge	s1,s4,80003684 <_Z20testConsumerProducerv+0x488>
        delete producers[i];
    80003664:	00349793          	slli	a5,s1,0x3
    80003668:	00fa87b3          	add	a5,s5,a5
    8000366c:	0007b503          	ld	a0,0(a5)
    80003670:	fe0506e3          	beqz	a0,8000365c <_Z20testConsumerProducerv+0x460>
    80003674:	00053783          	ld	a5,0(a0)
    80003678:	0087b783          	ld	a5,8(a5)
    8000367c:	000780e7          	jalr	a5
    80003680:	fddff06f          	j	8000365c <_Z20testConsumerProducerv+0x460>
    delete consumer;
    80003684:	000b8a63          	beqz	s7,80003698 <_Z20testConsumerProducerv+0x49c>
    80003688:	000bb783          	ld	a5,0(s7)
    8000368c:	0087b783          	ld	a5,8(a5)
    80003690:	000b8513          	mv	a0,s7
    80003694:	000780e7          	jalr	a5
    delete buffer;
    80003698:	000b0e63          	beqz	s6,800036b4 <_Z20testConsumerProducerv+0x4b8>
    8000369c:	000b0513          	mv	a0,s6
    800036a0:	00003097          	auipc	ra,0x3
    800036a4:	914080e7          	jalr	-1772(ra) # 80005fb4 <_ZN9BufferCPPD1Ev>
    800036a8:	000b0513          	mv	a0,s6
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	7ac080e7          	jalr	1964(ra) # 80001e58 <_ZdlPv>
    800036b4:	000c0113          	mv	sp,s8
}
    800036b8:	f8040113          	addi	sp,s0,-128
    800036bc:	07813083          	ld	ra,120(sp)
    800036c0:	07013403          	ld	s0,112(sp)
    800036c4:	06813483          	ld	s1,104(sp)
    800036c8:	06013903          	ld	s2,96(sp)
    800036cc:	05813983          	ld	s3,88(sp)
    800036d0:	05013a03          	ld	s4,80(sp)
    800036d4:	04813a83          	ld	s5,72(sp)
    800036d8:	04013b03          	ld	s6,64(sp)
    800036dc:	03813b83          	ld	s7,56(sp)
    800036e0:	03013c03          	ld	s8,48(sp)
    800036e4:	02813c83          	ld	s9,40(sp)
    800036e8:	08010113          	addi	sp,sp,128
    800036ec:	00008067          	ret
    800036f0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800036f4:	000b0513          	mv	a0,s6
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	760080e7          	jalr	1888(ra) # 80001e58 <_ZdlPv>
    80003700:	00048513          	mv	a0,s1
    80003704:	00009097          	auipc	ra,0x9
    80003708:	374080e7          	jalr	884(ra) # 8000ca78 <_Unwind_Resume>
    8000370c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003710:	00090513          	mv	a0,s2
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	744080e7          	jalr	1860(ra) # 80001e58 <_ZdlPv>
    8000371c:	00048513          	mv	a0,s1
    80003720:	00009097          	auipc	ra,0x9
    80003724:	358080e7          	jalr	856(ra) # 8000ca78 <_Unwind_Resume>

0000000080003728 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003728:	ff010113          	addi	sp,sp,-16
    8000372c:	00813423          	sd	s0,8(sp)
    80003730:	01010413          	addi	s0,sp,16
    80003734:	00813403          	ld	s0,8(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret

0000000080003740 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003740:	ff010113          	addi	sp,sp,-16
    80003744:	00813423          	sd	s0,8(sp)
    80003748:	01010413          	addi	s0,sp,16
    8000374c:	00813403          	ld	s0,8(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret

0000000080003758 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00813423          	sd	s0,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	00813403          	ld	s0,8(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret

0000000080003770 <_ZN8ConsumerD0Ev>:
class Consumer : public Thread {
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00113423          	sd	ra,8(sp)
    80003778:	00813023          	sd	s0,0(sp)
    8000377c:	01010413          	addi	s0,sp,16
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	6d8080e7          	jalr	1752(ra) # 80001e58 <_ZdlPv>
    80003788:	00813083          	ld	ra,8(sp)
    8000378c:	00013403          	ld	s0,0(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <_ZN16ProducerKeyboradD0Ev>:
class ProducerKeyborad : public Thread {
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00113423          	sd	ra,8(sp)
    800037a0:	00813023          	sd	s0,0(sp)
    800037a4:	01010413          	addi	s0,sp,16
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	6b0080e7          	jalr	1712(ra) # 80001e58 <_ZdlPv>
    800037b0:	00813083          	ld	ra,8(sp)
    800037b4:	00013403          	ld	s0,0(sp)
    800037b8:	01010113          	addi	sp,sp,16
    800037bc:	00008067          	ret

00000000800037c0 <_ZN8ProducerD0Ev>:
class Producer : public Thread {
    800037c0:	ff010113          	addi	sp,sp,-16
    800037c4:	00113423          	sd	ra,8(sp)
    800037c8:	00813023          	sd	s0,0(sp)
    800037cc:	01010413          	addi	s0,sp,16
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	688080e7          	jalr	1672(ra) # 80001e58 <_ZdlPv>
    800037d8:	00813083          	ld	ra,8(sp)
    800037dc:	00013403          	ld	s0,0(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret

00000000800037e8 <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() {
    800037e8:	00006797          	auipc	a5,0x6
    800037ec:	f7078793          	addi	a5,a5,-144 # 80009758 <_ZTV9Semaphore+0x10>
    800037f0:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    800037f4:	00853503          	ld	a0,8(a0)
    800037f8:	02050663          	beqz	a0,80003824 <_ZN9SemaphoreD1Ev+0x3c>
    virtual ~Semaphore() {
    800037fc:	ff010113          	addi	sp,sp,-16
    80003800:	00113423          	sd	ra,8(sp)
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	01010413          	addi	s0,sp,16
            sem_close(myHandle);
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	098080e7          	jalr	152(ra) # 800018a4 <_Z9sem_closeP10_semaphore>
    }
    80003814:	00813083          	ld	ra,8(sp)
    80003818:	00013403          	ld	s0,0(sp)
    8000381c:	01010113          	addi	sp,sp,16
    80003820:	00008067          	ret
    80003824:	00008067          	ret

0000000080003828 <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore() {
    80003828:	fe010113          	addi	sp,sp,-32
    8000382c:	00113c23          	sd	ra,24(sp)
    80003830:	00813823          	sd	s0,16(sp)
    80003834:	00913423          	sd	s1,8(sp)
    80003838:	02010413          	addi	s0,sp,32
    8000383c:	00050493          	mv	s1,a0
    80003840:	00006797          	auipc	a5,0x6
    80003844:	f1878793          	addi	a5,a5,-232 # 80009758 <_ZTV9Semaphore+0x10>
    80003848:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    8000384c:	00853503          	ld	a0,8(a0)
    80003850:	00050663          	beqz	a0,8000385c <_ZN9SemaphoreD0Ev+0x34>
            sem_close(myHandle);
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	050080e7          	jalr	80(ra) # 800018a4 <_Z9sem_closeP10_semaphore>
    }
    8000385c:	00048513          	mv	a0,s1
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	5f8080e7          	jalr	1528(ra) # 80001e58 <_ZdlPv>
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	02010113          	addi	sp,sp,32
    80003878:	00008067          	ret

000000008000387c <_ZN8Consumer3runEv>:
    void run() override {
    8000387c:	fd010113          	addi	sp,sp,-48
    80003880:	02113423          	sd	ra,40(sp)
    80003884:	02813023          	sd	s0,32(sp)
    80003888:	00913c23          	sd	s1,24(sp)
    8000388c:	01213823          	sd	s2,16(sp)
    80003890:	01313423          	sd	s3,8(sp)
    80003894:	03010413          	addi	s0,sp,48
    80003898:	00050913          	mv	s2,a0
        int i = 0;
    8000389c:	00000993          	li	s3,0
    800038a0:	0100006f          	j	800038b0 <_ZN8Consumer3runEv+0x34>
};

class Console {
    public:
    static char getc() { return __getc(); };
    static void putc(char c) { __putc(c); };
    800038a4:	00a00513          	li	a0,10
    800038a8:	00005097          	auipc	ra,0x5
    800038ac:	8d4080e7          	jalr	-1836(ra) # 8000817c <__putc>
        while (!threadEnd) {
    800038b0:	00008797          	auipc	a5,0x8
    800038b4:	08078793          	addi	a5,a5,128 # 8000b930 <_ZL9threadEnd>
    800038b8:	0007a783          	lw	a5,0(a5)
    800038bc:	0007879b          	sext.w	a5,a5
    800038c0:	02079c63          	bnez	a5,800038f8 <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    800038c4:	02093783          	ld	a5,32(s2)
    800038c8:	0087b503          	ld	a0,8(a5)
    800038cc:	00002097          	auipc	ra,0x2
    800038d0:	594080e7          	jalr	1428(ra) # 80005e60 <_ZN9BufferCPP3getEv>
            i++;
    800038d4:	0019849b          	addiw	s1,s3,1
    800038d8:	0004899b          	sext.w	s3,s1
    800038dc:	0ff57513          	andi	a0,a0,255
    800038e0:	00005097          	auipc	ra,0x5
    800038e4:	89c080e7          	jalr	-1892(ra) # 8000817c <__putc>
            if (i % 80 == 0) {
    800038e8:	05000793          	li	a5,80
    800038ec:	02f4e4bb          	remw	s1,s1,a5
    800038f0:	fc0490e3          	bnez	s1,800038b0 <_ZN8Consumer3runEv+0x34>
    800038f4:	fb1ff06f          	j	800038a4 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    800038f8:	02093783          	ld	a5,32(s2)
    800038fc:	0087b503          	ld	a0,8(a5)
    80003900:	00002097          	auipc	ra,0x2
    80003904:	60c080e7          	jalr	1548(ra) # 80005f0c <_ZN9BufferCPP6getCntEv>
    80003908:	02a05263          	blez	a0,8000392c <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    8000390c:	02093783          	ld	a5,32(s2)
    80003910:	0087b503          	ld	a0,8(a5)
    80003914:	00002097          	auipc	ra,0x2
    80003918:	54c080e7          	jalr	1356(ra) # 80005e60 <_ZN9BufferCPP3getEv>
    8000391c:	0ff57513          	andi	a0,a0,255
    80003920:	00005097          	auipc	ra,0x5
    80003924:	85c080e7          	jalr	-1956(ra) # 8000817c <__putc>
    80003928:	fd1ff06f          	j	800038f8 <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    8000392c:	02093783          	ld	a5,32(s2)
    80003930:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003934:	0087b503          	ld	a0,8(a5)
    80003938:	00050663          	beqz	a0,80003944 <_ZN8Consumer3runEv+0xc8>
        return sem_signal(myHandle);
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	024080e7          	jalr	36(ra) # 80001960 <_Z10sem_signalP10_semaphore>
    }
    80003944:	02813083          	ld	ra,40(sp)
    80003948:	02013403          	ld	s0,32(sp)
    8000394c:	01813483          	ld	s1,24(sp)
    80003950:	01013903          	ld	s2,16(sp)
    80003954:	00813983          	ld	s3,8(sp)
    80003958:	03010113          	addi	sp,sp,48
    8000395c:	00008067          	ret

0000000080003960 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003960:	fe010113          	addi	sp,sp,-32
    80003964:	00113c23          	sd	ra,24(sp)
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00913423          	sd	s1,8(sp)
    80003970:	02010413          	addi	s0,sp,32
    80003974:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	054080e7          	jalr	84(ra) # 800019cc <_Z4getcv>
    80003980:	0005059b          	sext.w	a1,a0
    80003984:	01b00793          	li	a5,27
    80003988:	00f58c63          	beq	a1,a5,800039a0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000398c:	0204b783          	ld	a5,32(s1)
    80003990:	0087b503          	ld	a0,8(a5)
    80003994:	00002097          	auipc	ra,0x2
    80003998:	41c080e7          	jalr	1052(ra) # 80005db0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000399c:	fddff06f          	j	80003978 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800039a0:	00100793          	li	a5,1
    800039a4:	00008717          	auipc	a4,0x8
    800039a8:	f8f72623          	sw	a5,-116(a4) # 8000b930 <_ZL9threadEnd>
        td->buffer->put('!');
    800039ac:	0204b783          	ld	a5,32(s1)
    800039b0:	02100593          	li	a1,33
    800039b4:	0087b503          	ld	a0,8(a5)
    800039b8:	00002097          	auipc	ra,0x2
    800039bc:	3f8080e7          	jalr	1016(ra) # 80005db0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800039c0:	0204b783          	ld	a5,32(s1)
    800039c4:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    800039c8:	0087b503          	ld	a0,8(a5)
    800039cc:	00050663          	beqz	a0,800039d8 <_ZN16ProducerKeyborad3runEv+0x78>
        return sem_signal(myHandle);
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	f90080e7          	jalr	-112(ra) # 80001960 <_Z10sem_signalP10_semaphore>
    }
    800039d8:	01813083          	ld	ra,24(sp)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	02010113          	addi	sp,sp,32
    800039e8:	00008067          	ret

00000000800039ec <_ZN8Producer3runEv>:
    void run() override {
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00113c23          	sd	ra,24(sp)
    800039f4:	00813823          	sd	s0,16(sp)
    800039f8:	00913423          	sd	s1,8(sp)
    800039fc:	02010413          	addi	s0,sp,32
    80003a00:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80003a04:	00008797          	auipc	a5,0x8
    80003a08:	f2c78793          	addi	a5,a5,-212 # 8000b930 <_ZL9threadEnd>
    80003a0c:	0007a783          	lw	a5,0(a5)
    80003a10:	0007879b          	sext.w	a5,a5
    80003a14:	02079063          	bnez	a5,80003a34 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    80003a18:	0204b783          	ld	a5,32(s1)
    80003a1c:	0007a583          	lw	a1,0(a5)
    80003a20:	0305859b          	addiw	a1,a1,48
    80003a24:	0087b503          	ld	a0,8(a5)
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	388080e7          	jalr	904(ra) # 80005db0 <_ZN9BufferCPP3putEi>
        return 0;
    80003a30:	fd5ff06f          	j	80003a04 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80003a34:	0204b783          	ld	a5,32(s1)
    80003a38:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003a3c:	0087b503          	ld	a0,8(a5)
    80003a40:	00050663          	beqz	a0,80003a4c <_ZN8Producer3runEv+0x60>
        return sem_signal(myHandle);
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	f1c080e7          	jalr	-228(ra) # 80001960 <_Z10sem_signalP10_semaphore>
    }
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	01013403          	ld	s0,16(sp)
    80003a54:	00813483          	ld	s1,8(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	00008067          	ret

0000000080003a60 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003a60:	fe010113          	addi	sp,sp,-32
    80003a64:	00113c23          	sd	ra,24(sp)
    80003a68:	00813823          	sd	s0,16(sp)
    80003a6c:	00913423          	sd	s1,8(sp)
    80003a70:	01213023          	sd	s2,0(sp)
    80003a74:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80003a78:	00006517          	auipc	a0,0x6
    80003a7c:	ec850513          	addi	a0,a0,-312 # 80009940 <_ZTV8Consumer+0x188>
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	98c080e7          	jalr	-1652(ra) # 8000540c <_Z11printStringPKc>
    int test = getc() - '0';
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	f44080e7          	jalr	-188(ra) # 800019cc <_Z4getcv>
    80003a90:	00050913          	mv	s2,a0
    80003a94:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	f34080e7          	jalr	-204(ra) # 800019cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80003aa0:	fcb9091b          	addiw	s2,s2,-53
    80003aa4:	00100793          	li	a5,1
    80003aa8:	0327f463          	bgeu	a5,s2,80003ad0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003aac:	00700793          	li	a5,7
    80003ab0:	0e97e263          	bltu	a5,s1,80003b94 <_Z8userMainv+0x134>
    80003ab4:	00249493          	slli	s1,s1,0x2
    80003ab8:	00006717          	auipc	a4,0x6
    80003abc:	e6470713          	addi	a4,a4,-412 # 8000991c <_ZTV8Consumer+0x164>
    80003ac0:	00e484b3          	add	s1,s1,a4
    80003ac4:	0004a783          	lw	a5,0(s1)
    80003ac8:	00e787b3          	add	a5,a5,a4
    80003acc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80003ad0:	00006517          	auipc	a0,0x6
    80003ad4:	e9050513          	addi	a0,a0,-368 # 80009960 <_ZTV8Consumer+0x1a8>
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	934080e7          	jalr	-1740(ra) # 8000540c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003ae0:	01813083          	ld	ra,24(sp)
    80003ae4:	01013403          	ld	s0,16(sp)
    80003ae8:	00813483          	ld	s1,8(sp)
    80003aec:	00013903          	ld	s2,0(sp)
    80003af0:	02010113          	addi	sp,sp,32
    80003af4:	00008067          	ret
            Threads_C_API_test();
    80003af8:	00001097          	auipc	ra,0x1
    80003afc:	e28080e7          	jalr	-472(ra) # 80004920 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003b00:	00006517          	auipc	a0,0x6
    80003b04:	e9050513          	addi	a0,a0,-368 # 80009990 <_ZTV8Consumer+0x1d8>
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	904080e7          	jalr	-1788(ra) # 8000540c <_Z11printStringPKc>
            break;
    80003b10:	fd1ff06f          	j	80003ae0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	564080e7          	jalr	1380(ra) # 80004078 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003b1c:	00006517          	auipc	a0,0x6
    80003b20:	eb450513          	addi	a0,a0,-332 # 800099d0 <_ZTV8Consumer+0x218>
    80003b24:	00002097          	auipc	ra,0x2
    80003b28:	8e8080e7          	jalr	-1816(ra) # 8000540c <_Z11printStringPKc>
            break;
    80003b2c:	fb5ff06f          	j	80003ae0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	de8080e7          	jalr	-536(ra) # 80005918 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80003b38:	00006517          	auipc	a0,0x6
    80003b3c:	ed850513          	addi	a0,a0,-296 # 80009a10 <_ZTV8Consumer+0x258>
    80003b40:	00002097          	auipc	ra,0x2
    80003b44:	8cc080e7          	jalr	-1844(ra) # 8000540c <_Z11printStringPKc>
            break;
    80003b48:	f99ff06f          	j	80003ae0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80003b4c:	00001097          	auipc	ra,0x1
    80003b50:	164080e7          	jalr	356(ra) # 80004cb0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80003b54:	00006517          	auipc	a0,0x6
    80003b58:	f0c50513          	addi	a0,a0,-244 # 80009a60 <_ZTV8Consumer+0x2a8>
    80003b5c:	00002097          	auipc	ra,0x2
    80003b60:	8b0080e7          	jalr	-1872(ra) # 8000540c <_Z11printStringPKc>
            break;
    80003b64:	f7dff06f          	j	80003ae0 <_Z8userMainv+0x80>
            System_Mode_test();
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	258080e7          	jalr	600(ra) # 80002dc0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003b70:	00006517          	auipc	a0,0x6
    80003b74:	f4850513          	addi	a0,a0,-184 # 80009ab8 <_ZTV8Consumer+0x300>
    80003b78:	00002097          	auipc	ra,0x2
    80003b7c:	894080e7          	jalr	-1900(ra) # 8000540c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003b80:	00006517          	auipc	a0,0x6
    80003b84:	f5850513          	addi	a0,a0,-168 # 80009ad8 <_ZTV8Consumer+0x320>
    80003b88:	00002097          	auipc	ra,0x2
    80003b8c:	884080e7          	jalr	-1916(ra) # 8000540c <_Z11printStringPKc>
            break;
    80003b90:	f51ff06f          	j	80003ae0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80003b94:	00006517          	auipc	a0,0x6
    80003b98:	f9c50513          	addi	a0,a0,-100 # 80009b30 <_ZTV8Consumer+0x378>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	870080e7          	jalr	-1936(ra) # 8000540c <_Z11printStringPKc>
    80003ba4:	f3dff06f          	j	80003ae0 <_Z8userMainv+0x80>

0000000080003ba8 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80003ba8:	00100793          	li	a5,1
    80003bac:	06a7f863          	bgeu	a5,a0,80003c1c <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    80003bc8:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80003bcc:	00a00793          	li	a5,10
    80003bd0:	02f577b3          	remu	a5,a0,a5
    80003bd4:	02078e63          	beqz	a5,80003c10 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003bd8:	fff48513          	addi	a0,s1,-1
    80003bdc:	00000097          	auipc	ra,0x0
    80003be0:	fcc080e7          	jalr	-52(ra) # 80003ba8 <_ZL9fibonaccim>
    80003be4:	00050913          	mv	s2,a0
    80003be8:	ffe48513          	addi	a0,s1,-2
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	fbc080e7          	jalr	-68(ra) # 80003ba8 <_ZL9fibonaccim>
    80003bf4:	00a90533          	add	a0,s2,a0
}
    80003bf8:	01813083          	ld	ra,24(sp)
    80003bfc:	01013403          	ld	s0,16(sp)
    80003c00:	00813483          	ld	s1,8(sp)
    80003c04:	00013903          	ld	s2,0(sp)
    80003c08:	02010113          	addi	sp,sp,32
    80003c0c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	b70080e7          	jalr	-1168(ra) # 80001780 <_Z15thread_dispatchv>
    80003c18:	fc1ff06f          	j	80003bd8 <_ZL9fibonaccim+0x30>
}
    80003c1c:	00008067          	ret

0000000080003c20 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003c20:	fe010113          	addi	sp,sp,-32
    80003c24:	00113c23          	sd	ra,24(sp)
    80003c28:	00813823          	sd	s0,16(sp)
    80003c2c:	00913423          	sd	s1,8(sp)
    80003c30:	01213023          	sd	s2,0(sp)
    80003c34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003c38:	00000913          	li	s2,0
    80003c3c:	0300006f          	j	80003c6c <_ZN7WorkerA11workerBodyAEPv+0x4c>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003c40:	00178793          	addi	a5,a5,1
    80003c44:	01d00713          	li	a4,29
    80003c48:	fef77ce3          	bgeu	a4,a5,80003c40 <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	b34080e7          	jalr	-1228(ra) # 80001780 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003c54:	00148493          	addi	s1,s1,1
    80003c58:	00900793          	li	a5,9
    80003c5c:	0097e663          	bltu	a5,s1,80003c68 <_ZN7WorkerA11workerBodyAEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003c60:	00000793          	li	a5,0
    80003c64:	fe1ff06f          	j	80003c44 <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80003c68:	00190913          	addi	s2,s2,1
    80003c6c:	00900793          	li	a5,9
    80003c70:	0527e063          	bltu	a5,s2,80003cb0 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80003c74:	00006517          	auipc	a0,0x6
    80003c78:	a5450513          	addi	a0,a0,-1452 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	790080e7          	jalr	1936(ra) # 8000540c <_Z11printStringPKc>
    80003c84:	00000613          	li	a2,0
    80003c88:	00a00593          	li	a1,10
    80003c8c:	0009051b          	sext.w	a0,s2
    80003c90:	00002097          	auipc	ra,0x2
    80003c94:	928080e7          	jalr	-1752(ra) # 800055b8 <_Z8printIntiii>
    80003c98:	00005517          	auipc	a0,0x5
    80003c9c:	72050513          	addi	a0,a0,1824 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	76c080e7          	jalr	1900(ra) # 8000540c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003ca8:	00000493          	li	s1,0
    80003cac:	fadff06f          	j	80003c58 <_ZN7WorkerA11workerBodyAEPv+0x38>
        }
    }
    printString("A finished!\n");
    80003cb0:	00006517          	auipc	a0,0x6
    80003cb4:	9f050513          	addi	a0,a0,-1552 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	754080e7          	jalr	1876(ra) # 8000540c <_Z11printStringPKc>
    finishedA = true;
    80003cc0:	00100793          	li	a5,1
    80003cc4:	00008717          	auipc	a4,0x8
    80003cc8:	c6f70fa3          	sb	a5,-897(a4) # 8000b943 <_ZL9finishedA>
}
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	00013903          	ld	s2,0(sp)
    80003cdc:	02010113          	addi	sp,sp,32
    80003ce0:	00008067          	ret

0000000080003ce4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ce4:	fe010113          	addi	sp,sp,-32
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	00813823          	sd	s0,16(sp)
    80003cf0:	00913423          	sd	s1,8(sp)
    80003cf4:	01213023          	sd	s2,0(sp)
    80003cf8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003cfc:	00000913          	li	s2,0
    80003d00:	0300006f          	j	80003d30 <_ZN7WorkerB11workerBodyBEPv+0x4c>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003d04:	00178793          	addi	a5,a5,1
    80003d08:	01d00713          	li	a4,29
    80003d0c:	fef77ce3          	bgeu	a4,a5,80003d04 <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	a70080e7          	jalr	-1424(ra) # 80001780 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003d18:	00148493          	addi	s1,s1,1
    80003d1c:	00900793          	li	a5,9
    80003d20:	0097e663          	bltu	a5,s1,80003d2c <_ZN7WorkerB11workerBodyBEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003d24:	00000793          	li	a5,0
    80003d28:	fe1ff06f          	j	80003d08 <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80003d2c:	00190913          	addi	s2,s2,1
    80003d30:	00f00793          	li	a5,15
    80003d34:	0527e063          	bltu	a5,s2,80003d74 <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80003d38:	00006517          	auipc	a0,0x6
    80003d3c:	97850513          	addi	a0,a0,-1672 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	6cc080e7          	jalr	1740(ra) # 8000540c <_Z11printStringPKc>
    80003d48:	00000613          	li	a2,0
    80003d4c:	00a00593          	li	a1,10
    80003d50:	0009051b          	sext.w	a0,s2
    80003d54:	00002097          	auipc	ra,0x2
    80003d58:	864080e7          	jalr	-1948(ra) # 800055b8 <_Z8printIntiii>
    80003d5c:	00005517          	auipc	a0,0x5
    80003d60:	65c50513          	addi	a0,a0,1628 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	6a8080e7          	jalr	1704(ra) # 8000540c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003d6c:	00000493          	li	s1,0
    80003d70:	fadff06f          	j	80003d1c <_ZN7WorkerB11workerBodyBEPv+0x38>
        }
    }
    printString("B finished!\n");
    80003d74:	00006517          	auipc	a0,0x6
    80003d78:	94450513          	addi	a0,a0,-1724 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80003d7c:	00001097          	auipc	ra,0x1
    80003d80:	690080e7          	jalr	1680(ra) # 8000540c <_Z11printStringPKc>
    finishedB = true;
    80003d84:	00100793          	li	a5,1
    80003d88:	00008717          	auipc	a4,0x8
    80003d8c:	baf70d23          	sb	a5,-1094(a4) # 8000b942 <_ZL9finishedB>
    thread_dispatch();
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	9f0080e7          	jalr	-1552(ra) # 80001780 <_Z15thread_dispatchv>
}
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	00013903          	ld	s2,0(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret

0000000080003db0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003db0:	fe010113          	addi	sp,sp,-32
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	00813823          	sd	s0,16(sp)
    80003dbc:	00913423          	sd	s1,8(sp)
    80003dc0:	01213023          	sd	s2,0(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003dc8:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80003dcc:	00200793          	li	a5,2
    80003dd0:	0497e263          	bltu	a5,s1,80003e14 <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80003dd4:	00006517          	auipc	a0,0x6
    80003dd8:	89c50513          	addi	a0,a0,-1892 # 80009670 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	630080e7          	jalr	1584(ra) # 8000540c <_Z11printStringPKc>
    80003de4:	00000613          	li	a2,0
    80003de8:	00a00593          	li	a1,10
    80003dec:	00048513          	mv	a0,s1
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	7c8080e7          	jalr	1992(ra) # 800055b8 <_Z8printIntiii>
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	5c050513          	addi	a0,a0,1472 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003e00:	00001097          	auipc	ra,0x1
    80003e04:	60c080e7          	jalr	1548(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e08:	0014849b          	addiw	s1,s1,1
    80003e0c:	0ff4f493          	andi	s1,s1,255
    80003e10:	fbdff06f          	j	80003dcc <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    80003e14:	00006517          	auipc	a0,0x6
    80003e18:	86450513          	addi	a0,a0,-1948 # 80009678 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80003e1c:	00001097          	auipc	ra,0x1
    80003e20:	5f0080e7          	jalr	1520(ra) # 8000540c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e24:	00700313          	li	t1,7
    thread_dispatch();
    80003e28:	ffffe097          	auipc	ra,0xffffe
    80003e2c:	958080e7          	jalr	-1704(ra) # 80001780 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e30:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003e34:	00006517          	auipc	a0,0x6
    80003e38:	85450513          	addi	a0,a0,-1964 # 80009688 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80003e3c:	00001097          	auipc	ra,0x1
    80003e40:	5d0080e7          	jalr	1488(ra) # 8000540c <_Z11printStringPKc>
    80003e44:	00000613          	li	a2,0
    80003e48:	00a00593          	li	a1,10
    80003e4c:	0009051b          	sext.w	a0,s2
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	768080e7          	jalr	1896(ra) # 800055b8 <_Z8printIntiii>
    80003e58:	00005517          	auipc	a0,0x5
    80003e5c:	56050513          	addi	a0,a0,1376 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	5ac080e7          	jalr	1452(ra) # 8000540c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003e68:	00c00513          	li	a0,12
    80003e6c:	00000097          	auipc	ra,0x0
    80003e70:	d3c080e7          	jalr	-708(ra) # 80003ba8 <_ZL9fibonaccim>
    80003e74:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e78:	00006517          	auipc	a0,0x6
    80003e7c:	81850513          	addi	a0,a0,-2024 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80003e80:	00001097          	auipc	ra,0x1
    80003e84:	58c080e7          	jalr	1420(ra) # 8000540c <_Z11printStringPKc>
    80003e88:	00000613          	li	a2,0
    80003e8c:	00a00593          	li	a1,10
    80003e90:	0009051b          	sext.w	a0,s2
    80003e94:	00001097          	auipc	ra,0x1
    80003e98:	724080e7          	jalr	1828(ra) # 800055b8 <_Z8printIntiii>
    80003e9c:	00005517          	auipc	a0,0x5
    80003ea0:	51c50513          	addi	a0,a0,1308 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	568080e7          	jalr	1384(ra) # 8000540c <_Z11printStringPKc>

    for (; i < 6; i++) {
    80003eac:	00500793          	li	a5,5
    80003eb0:	0497e263          	bltu	a5,s1,80003ef4 <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80003eb4:	00005517          	auipc	a0,0x5
    80003eb8:	7bc50513          	addi	a0,a0,1980 # 80009670 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	550080e7          	jalr	1360(ra) # 8000540c <_Z11printStringPKc>
    80003ec4:	00000613          	li	a2,0
    80003ec8:	00a00593          	li	a1,10
    80003ecc:	00048513          	mv	a0,s1
    80003ed0:	00001097          	auipc	ra,0x1
    80003ed4:	6e8080e7          	jalr	1768(ra) # 800055b8 <_Z8printIntiii>
    80003ed8:	00005517          	auipc	a0,0x5
    80003edc:	4e050513          	addi	a0,a0,1248 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	52c080e7          	jalr	1324(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003ee8:	0014849b          	addiw	s1,s1,1
    80003eec:	0ff4f493          	andi	s1,s1,255
    80003ef0:	fbdff06f          	j	80003eac <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    80003ef4:	00005517          	auipc	a0,0x5
    80003ef8:	7ac50513          	addi	a0,a0,1964 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	510080e7          	jalr	1296(ra) # 8000540c <_Z11printStringPKc>
    finishedC = true;
    80003f04:	00100793          	li	a5,1
    80003f08:	00008717          	auipc	a4,0x8
    80003f0c:	a2f70ca3          	sb	a5,-1479(a4) # 8000b941 <_ZL9finishedC>
    thread_dispatch();
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	870080e7          	jalr	-1936(ra) # 80001780 <_Z15thread_dispatchv>
}
    80003f18:	01813083          	ld	ra,24(sp)
    80003f1c:	01013403          	ld	s0,16(sp)
    80003f20:	00813483          	ld	s1,8(sp)
    80003f24:	00013903          	ld	s2,0(sp)
    80003f28:	02010113          	addi	sp,sp,32
    80003f2c:	00008067          	ret

0000000080003f30 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003f30:	fe010113          	addi	sp,sp,-32
    80003f34:	00113c23          	sd	ra,24(sp)
    80003f38:	00813823          	sd	s0,16(sp)
    80003f3c:	00913423          	sd	s1,8(sp)
    80003f40:	01213023          	sd	s2,0(sp)
    80003f44:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003f48:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80003f4c:	00c00793          	li	a5,12
    80003f50:	0497e263          	bltu	a5,s1,80003f94 <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80003f54:	00005517          	auipc	a0,0x5
    80003f58:	6e450513          	addi	a0,a0,1764 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80003f5c:	00001097          	auipc	ra,0x1
    80003f60:	4b0080e7          	jalr	1200(ra) # 8000540c <_Z11printStringPKc>
    80003f64:	00000613          	li	a2,0
    80003f68:	00a00593          	li	a1,10
    80003f6c:	00048513          	mv	a0,s1
    80003f70:	00001097          	auipc	ra,0x1
    80003f74:	648080e7          	jalr	1608(ra) # 800055b8 <_Z8printIntiii>
    80003f78:	00005517          	auipc	a0,0x5
    80003f7c:	44050513          	addi	a0,a0,1088 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	48c080e7          	jalr	1164(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003f88:	0014849b          	addiw	s1,s1,1
    80003f8c:	0ff4f493          	andi	s1,s1,255
    80003f90:	fbdff06f          	j	80003f4c <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	6ac50513          	addi	a0,a0,1708 # 80009640 <_ZZ24debug_print_internal_intmE6digits+0x330>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	470080e7          	jalr	1136(ra) # 8000540c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003fa4:	00500313          	li	t1,5
    thread_dispatch();
    80003fa8:	ffffd097          	auipc	ra,0xffffd
    80003fac:	7d8080e7          	jalr	2008(ra) # 80001780 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003fb0:	01000513          	li	a0,16
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	bf4080e7          	jalr	-1036(ra) # 80003ba8 <_ZL9fibonaccim>
    80003fbc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003fc0:	00005517          	auipc	a0,0x5
    80003fc4:	69050513          	addi	a0,a0,1680 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80003fc8:	00001097          	auipc	ra,0x1
    80003fcc:	444080e7          	jalr	1092(ra) # 8000540c <_Z11printStringPKc>
    80003fd0:	00000613          	li	a2,0
    80003fd4:	00a00593          	li	a1,10
    80003fd8:	0009051b          	sext.w	a0,s2
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	5dc080e7          	jalr	1500(ra) # 800055b8 <_Z8printIntiii>
    80003fe4:	00005517          	auipc	a0,0x5
    80003fe8:	3d450513          	addi	a0,a0,980 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003fec:	00001097          	auipc	ra,0x1
    80003ff0:	420080e7          	jalr	1056(ra) # 8000540c <_Z11printStringPKc>

    for (; i < 16; i++) {
    80003ff4:	00f00793          	li	a5,15
    80003ff8:	0497e263          	bltu	a5,s1,8000403c <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80003ffc:	00005517          	auipc	a0,0x5
    80004000:	63c50513          	addi	a0,a0,1596 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80004004:	00001097          	auipc	ra,0x1
    80004008:	408080e7          	jalr	1032(ra) # 8000540c <_Z11printStringPKc>
    8000400c:	00000613          	li	a2,0
    80004010:	00a00593          	li	a1,10
    80004014:	00048513          	mv	a0,s1
    80004018:	00001097          	auipc	ra,0x1
    8000401c:	5a0080e7          	jalr	1440(ra) # 800055b8 <_Z8printIntiii>
    80004020:	00005517          	auipc	a0,0x5
    80004024:	39850513          	addi	a0,a0,920 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	3e4080e7          	jalr	996(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004030:	0014849b          	addiw	s1,s1,1
    80004034:	0ff4f493          	andi	s1,s1,255
    80004038:	fbdff06f          	j	80003ff4 <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	62450513          	addi	a0,a0,1572 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	3c8080e7          	jalr	968(ra) # 8000540c <_Z11printStringPKc>
    finishedD = true;
    8000404c:	00100793          	li	a5,1
    80004050:	00008717          	auipc	a4,0x8
    80004054:	8ef70823          	sb	a5,-1808(a4) # 8000b940 <_ZL9finishedD>
    thread_dispatch();
    80004058:	ffffd097          	auipc	ra,0xffffd
    8000405c:	728080e7          	jalr	1832(ra) # 80001780 <_Z15thread_dispatchv>
}
    80004060:	01813083          	ld	ra,24(sp)
    80004064:	01013403          	ld	s0,16(sp)
    80004068:	00813483          	ld	s1,8(sp)
    8000406c:	00013903          	ld	s2,0(sp)
    80004070:	02010113          	addi	sp,sp,32
    80004074:	00008067          	ret

0000000080004078 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004078:	fc010113          	addi	sp,sp,-64
    8000407c:	02113c23          	sd	ra,56(sp)
    80004080:	02813823          	sd	s0,48(sp)
    80004084:	02913423          	sd	s1,40(sp)
    80004088:	03213023          	sd	s2,32(sp)
    8000408c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004090:	02000513          	li	a0,32
    80004094:	ffffe097          	auipc	ra,0xffffe
    80004098:	d44080e7          	jalr	-700(ra) # 80001dd8 <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    8000409c:	00053423          	sd	zero,8(a0)
    800040a0:	00053823          	sd	zero,16(a0)
    800040a4:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    800040a8:	00006797          	auipc	a5,0x6
    800040ac:	ac078793          	addi	a5,a5,-1344 # 80009b68 <_ZTV7WorkerA+0x10>
    800040b0:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    800040b4:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	61850513          	addi	a0,a0,1560 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	34c080e7          	jalr	844(ra) # 8000540c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800040c8:	02000513          	li	a0,32
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	d0c080e7          	jalr	-756(ra) # 80001dd8 <_Znwm>
    800040d4:	00053423          	sd	zero,8(a0)
    800040d8:	00053823          	sd	zero,16(a0)
    800040dc:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    800040e0:	00006797          	auipc	a5,0x6
    800040e4:	ab078793          	addi	a5,a5,-1360 # 80009b90 <_ZTV7WorkerB+0x10>
    800040e8:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    800040ec:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    800040f0:	00005517          	auipc	a0,0x5
    800040f4:	5f850513          	addi	a0,a0,1528 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	314080e7          	jalr	788(ra) # 8000540c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004100:	02000513          	li	a0,32
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	cd4080e7          	jalr	-812(ra) # 80001dd8 <_Znwm>
    8000410c:	00053423          	sd	zero,8(a0)
    80004110:	00053823          	sd	zero,16(a0)
    80004114:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    80004118:	00006797          	auipc	a5,0x6
    8000411c:	aa078793          	addi	a5,a5,-1376 # 80009bb8 <_ZTV7WorkerC+0x10>
    80004120:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    80004124:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80004128:	00005517          	auipc	a0,0x5
    8000412c:	5d850513          	addi	a0,a0,1496 # 80009700 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    80004130:	00001097          	auipc	ra,0x1
    80004134:	2dc080e7          	jalr	732(ra) # 8000540c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004138:	02000513          	li	a0,32
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	c9c080e7          	jalr	-868(ra) # 80001dd8 <_Znwm>
    80004144:	00053423          	sd	zero,8(a0)
    80004148:	00053823          	sd	zero,16(a0)
    8000414c:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    80004150:	00006797          	auipc	a5,0x6
    80004154:	a9078793          	addi	a5,a5,-1392 # 80009be0 <_ZTV7WorkerD+0x10>
    80004158:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    8000415c:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80004160:	00005517          	auipc	a0,0x5
    80004164:	5b850513          	addi	a0,a0,1464 # 80009718 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80004168:	00001097          	auipc	ra,0x1
    8000416c:	2a4080e7          	jalr	676(ra) # 8000540c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004170:	00000493          	li	s1,0
    80004174:	00c0006f          	j	80004180 <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    80004178:	00093423          	sd	zero,8(s2)
    8000417c:	0014849b          	addiw	s1,s1,1
    80004180:	00300793          	li	a5,3
    80004184:	0897c463          	blt	a5,s1,8000420c <_Z20Threads_CPP_API_testv+0x194>
        threads[i]->start();
    80004188:	00349793          	slli	a5,s1,0x3
    8000418c:	fe040713          	addi	a4,s0,-32
    80004190:	00f707b3          	add	a5,a4,a5
    80004194:	fe07b903          	ld	s2,-32(a5)
        debug_print("CPP API: Starting thread\n");
    80004198:	00005517          	auipc	a0,0x5
    8000419c:	73050513          	addi	a0,a0,1840 # 800098c8 <_ZTV8Consumer+0x110>
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	da8080e7          	jalr	-600(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    800041a8:	00005517          	auipc	a0,0x5
    800041ac:	74050513          	addi	a0,a0,1856 # 800098e8 <_ZTV8Consumer+0x130>
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	d98080e7          	jalr	-616(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)this);
    800041b8:	00090513          	mv	a0,s2
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	ed4080e7          	jalr	-300(ra) # 80002090 <_Z11debug_printm>
        debug_print("\n");
    800041c4:	00005517          	auipc	a0,0x5
    800041c8:	1f450513          	addi	a0,a0,500 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	d7c080e7          	jalr	-644(ra) # 80001f48 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    800041d4:	00090613          	mv	a2,s2
    800041d8:	ffffd597          	auipc	a1,0xffffd
    800041dc:	0bc58593          	addi	a1,a1,188 # 80001294 <_ZN6Thread9body_execEPv>
    800041e0:	00890513          	addi	a0,s2,8
    800041e4:	ffffd097          	auipc	ra,0xffffd
    800041e8:	4ec080e7          	jalr	1260(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    800041ec:	f80516e3          	bnez	a0,80004178 <_Z20Threads_CPP_API_testv+0x100>
        debug_print("CPP API: Thread started\n");
    800041f0:	00005517          	auipc	a0,0x5
    800041f4:	71050513          	addi	a0,a0,1808 # 80009900 <_ZTV8Consumer+0x148>
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	d50080e7          	jalr	-688(ra) # 80001f48 <_Z11debug_printPKc>
        return 0;
    80004200:	f7dff06f          	j	8000417c <_Z20Threads_CPP_API_testv+0x104>
        thread_dispatch();
    80004204:	ffffd097          	auipc	ra,0xffffd
    80004208:	57c080e7          	jalr	1404(ra) # 80001780 <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000420c:	00007797          	auipc	a5,0x7
    80004210:	73778793          	addi	a5,a5,1847 # 8000b943 <_ZL9finishedA>
    80004214:	0007c783          	lbu	a5,0(a5)
    80004218:	0ff7f793          	andi	a5,a5,255
    8000421c:	fe0784e3          	beqz	a5,80004204 <_Z20Threads_CPP_API_testv+0x18c>
    80004220:	00007797          	auipc	a5,0x7
    80004224:	72278793          	addi	a5,a5,1826 # 8000b942 <_ZL9finishedB>
    80004228:	0007c783          	lbu	a5,0(a5)
    8000422c:	0ff7f793          	andi	a5,a5,255
    80004230:	fc078ae3          	beqz	a5,80004204 <_Z20Threads_CPP_API_testv+0x18c>
    80004234:	00007797          	auipc	a5,0x7
    80004238:	70d78793          	addi	a5,a5,1805 # 8000b941 <_ZL9finishedC>
    8000423c:	0007c783          	lbu	a5,0(a5)
    80004240:	0ff7f793          	andi	a5,a5,255
    80004244:	fc0780e3          	beqz	a5,80004204 <_Z20Threads_CPP_API_testv+0x18c>
    80004248:	00007797          	auipc	a5,0x7
    8000424c:	6f878793          	addi	a5,a5,1784 # 8000b940 <_ZL9finishedD>
    80004250:	0007c783          	lbu	a5,0(a5)
    80004254:	0ff7f793          	andi	a5,a5,255
    80004258:	fa0786e3          	beqz	a5,80004204 <_Z20Threads_CPP_API_testv+0x18c>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    8000425c:	fc040493          	addi	s1,s0,-64
    80004260:	0080006f          	j	80004268 <_Z20Threads_CPP_API_testv+0x1f0>
    80004264:	00848493          	addi	s1,s1,8
    80004268:	fe040793          	addi	a5,s0,-32
    8000426c:	00f48e63          	beq	s1,a5,80004288 <_Z20Threads_CPP_API_testv+0x210>
    80004270:	0004b503          	ld	a0,0(s1)
    80004274:	fe0508e3          	beqz	a0,80004264 <_Z20Threads_CPP_API_testv+0x1ec>
    80004278:	00053783          	ld	a5,0(a0)
    8000427c:	0087b783          	ld	a5,8(a5)
    80004280:	000780e7          	jalr	a5
    80004284:	fe1ff06f          	j	80004264 <_Z20Threads_CPP_API_testv+0x1ec>
}
    80004288:	03813083          	ld	ra,56(sp)
    8000428c:	03013403          	ld	s0,48(sp)
    80004290:	02813483          	ld	s1,40(sp)
    80004294:	02013903          	ld	s2,32(sp)
    80004298:	04010113          	addi	sp,sp,64
    8000429c:	00008067          	ret

00000000800042a0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800042a0:	ff010113          	addi	sp,sp,-16
    800042a4:	00813423          	sd	s0,8(sp)
    800042a8:	01010413          	addi	s0,sp,16
    800042ac:	00813403          	ld	s0,8(sp)
    800042b0:	01010113          	addi	sp,sp,16
    800042b4:	00008067          	ret

00000000800042b8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800042b8:	ff010113          	addi	sp,sp,-16
    800042bc:	00813423          	sd	s0,8(sp)
    800042c0:	01010413          	addi	s0,sp,16
    800042c4:	00813403          	ld	s0,8(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	00008067          	ret

00000000800042d0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00813423          	sd	s0,8(sp)
    800042d8:	01010413          	addi	s0,sp,16
    800042dc:	00813403          	ld	s0,8(sp)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800042e8:	ff010113          	addi	sp,sp,-16
    800042ec:	00813423          	sd	s0,8(sp)
    800042f0:	01010413          	addi	s0,sp,16
    800042f4:	00813403          	ld	s0,8(sp)
    800042f8:	01010113          	addi	sp,sp,16
    800042fc:	00008067          	ret

0000000080004300 <_ZN7WorkerAD0Ev>:
    80004300:	ff010113          	addi	sp,sp,-16
    80004304:	00113423          	sd	ra,8(sp)
    80004308:	00813023          	sd	s0,0(sp)
    8000430c:	01010413          	addi	s0,sp,16
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	b48080e7          	jalr	-1208(ra) # 80001e58 <_ZdlPv>
    80004318:	00813083          	ld	ra,8(sp)
    8000431c:	00013403          	ld	s0,0(sp)
    80004320:	01010113          	addi	sp,sp,16
    80004324:	00008067          	ret

0000000080004328 <_ZN7WorkerBD0Ev>:
class WorkerB: public Thread {
    80004328:	ff010113          	addi	sp,sp,-16
    8000432c:	00113423          	sd	ra,8(sp)
    80004330:	00813023          	sd	s0,0(sp)
    80004334:	01010413          	addi	s0,sp,16
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	b20080e7          	jalr	-1248(ra) # 80001e58 <_ZdlPv>
    80004340:	00813083          	ld	ra,8(sp)
    80004344:	00013403          	ld	s0,0(sp)
    80004348:	01010113          	addi	sp,sp,16
    8000434c:	00008067          	ret

0000000080004350 <_ZN7WorkerCD0Ev>:
class WorkerC: public Thread {
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00113423          	sd	ra,8(sp)
    80004358:	00813023          	sd	s0,0(sp)
    8000435c:	01010413          	addi	s0,sp,16
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	af8080e7          	jalr	-1288(ra) # 80001e58 <_ZdlPv>
    80004368:	00813083          	ld	ra,8(sp)
    8000436c:	00013403          	ld	s0,0(sp)
    80004370:	01010113          	addi	sp,sp,16
    80004374:	00008067          	ret

0000000080004378 <_ZN7WorkerDD0Ev>:
class WorkerD: public Thread {
    80004378:	ff010113          	addi	sp,sp,-16
    8000437c:	00113423          	sd	ra,8(sp)
    80004380:	00813023          	sd	s0,0(sp)
    80004384:	01010413          	addi	s0,sp,16
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	ad0080e7          	jalr	-1328(ra) # 80001e58 <_ZdlPv>
    80004390:	00813083          	ld	ra,8(sp)
    80004394:	00013403          	ld	s0,0(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret

00000000800043a0 <_ZN7WorkerA3runEv>:
    void run() override {
    800043a0:	ff010113          	addi	sp,sp,-16
    800043a4:	00113423          	sd	ra,8(sp)
    800043a8:	00813023          	sd	s0,0(sp)
    800043ac:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800043b0:	00000593          	li	a1,0
    800043b4:	00000097          	auipc	ra,0x0
    800043b8:	86c080e7          	jalr	-1940(ra) # 80003c20 <_ZN7WorkerA11workerBodyAEPv>
    }
    800043bc:	00813083          	ld	ra,8(sp)
    800043c0:	00013403          	ld	s0,0(sp)
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret

00000000800043cc <_ZN7WorkerB3runEv>:
    void run() override {
    800043cc:	ff010113          	addi	sp,sp,-16
    800043d0:	00113423          	sd	ra,8(sp)
    800043d4:	00813023          	sd	s0,0(sp)
    800043d8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800043dc:	00000593          	li	a1,0
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	904080e7          	jalr	-1788(ra) # 80003ce4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800043e8:	00813083          	ld	ra,8(sp)
    800043ec:	00013403          	ld	s0,0(sp)
    800043f0:	01010113          	addi	sp,sp,16
    800043f4:	00008067          	ret

00000000800043f8 <_ZN7WorkerC3runEv>:
    void run() override {
    800043f8:	ff010113          	addi	sp,sp,-16
    800043fc:	00113423          	sd	ra,8(sp)
    80004400:	00813023          	sd	s0,0(sp)
    80004404:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004408:	00000593          	li	a1,0
    8000440c:	00000097          	auipc	ra,0x0
    80004410:	9a4080e7          	jalr	-1628(ra) # 80003db0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004414:	00813083          	ld	ra,8(sp)
    80004418:	00013403          	ld	s0,0(sp)
    8000441c:	01010113          	addi	sp,sp,16
    80004420:	00008067          	ret

0000000080004424 <_ZN7WorkerD3runEv>:
    void run() override {
    80004424:	ff010113          	addi	sp,sp,-16
    80004428:	00113423          	sd	ra,8(sp)
    8000442c:	00813023          	sd	s0,0(sp)
    80004430:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004434:	00000593          	li	a1,0
    80004438:	00000097          	auipc	ra,0x0
    8000443c:	af8080e7          	jalr	-1288(ra) # 80003f30 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004440:	00813083          	ld	ra,8(sp)
    80004444:	00013403          	ld	s0,0(sp)
    80004448:	01010113          	addi	sp,sp,16
    8000444c:	00008067          	ret

0000000080004450 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80004450:	00100793          	li	a5,1
    80004454:	06a7f863          	bgeu	a5,a0,800044c4 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80004458:	fe010113          	addi	sp,sp,-32
    8000445c:	00113c23          	sd	ra,24(sp)
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	01213023          	sd	s2,0(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80004474:	00a00793          	li	a5,10
    80004478:	02f577b3          	remu	a5,a0,a5
    8000447c:	02078e63          	beqz	a5,800044b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004480:	fff48513          	addi	a0,s1,-1
    80004484:	00000097          	auipc	ra,0x0
    80004488:	fcc080e7          	jalr	-52(ra) # 80004450 <_ZL9fibonaccim>
    8000448c:	00050913          	mv	s2,a0
    80004490:	ffe48513          	addi	a0,s1,-2
    80004494:	00000097          	auipc	ra,0x0
    80004498:	fbc080e7          	jalr	-68(ra) # 80004450 <_ZL9fibonaccim>
    8000449c:	00a90533          	add	a0,s2,a0
}
    800044a0:	01813083          	ld	ra,24(sp)
    800044a4:	01013403          	ld	s0,16(sp)
    800044a8:	00813483          	ld	s1,8(sp)
    800044ac:	00013903          	ld	s2,0(sp)
    800044b0:	02010113          	addi	sp,sp,32
    800044b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800044b8:	ffffd097          	auipc	ra,0xffffd
    800044bc:	2c8080e7          	jalr	712(ra) # 80001780 <_Z15thread_dispatchv>
    800044c0:	fc1ff06f          	j	80004480 <_ZL9fibonaccim+0x30>
}
    800044c4:	00008067          	ret

00000000800044c8 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800044c8:	fe010113          	addi	sp,sp,-32
    800044cc:	00113c23          	sd	ra,24(sp)
    800044d0:	00813823          	sd	s0,16(sp)
    800044d4:	00913423          	sd	s1,8(sp)
    800044d8:	01213023          	sd	s2,0(sp)
    800044dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800044e0:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    800044e4:	00c00793          	li	a5,12
    800044e8:	0497e263          	bltu	a5,s1,8000452c <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    800044ec:	00005517          	auipc	a0,0x5
    800044f0:	14c50513          	addi	a0,a0,332 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x328>
    800044f4:	00001097          	auipc	ra,0x1
    800044f8:	f18080e7          	jalr	-232(ra) # 8000540c <_Z11printStringPKc>
    800044fc:	00000613          	li	a2,0
    80004500:	00a00593          	li	a1,10
    80004504:	00048513          	mv	a0,s1
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	0b0080e7          	jalr	176(ra) # 800055b8 <_Z8printIntiii>
    80004510:	00005517          	auipc	a0,0x5
    80004514:	ea850513          	addi	a0,a0,-344 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	ef4080e7          	jalr	-268(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004520:	0014849b          	addiw	s1,s1,1
    80004524:	0ff4f493          	andi	s1,s1,255
    80004528:	fbdff06f          	j	800044e4 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    8000452c:	00005517          	auipc	a0,0x5
    80004530:	11450513          	addi	a0,a0,276 # 80009640 <_ZZ24debug_print_internal_intmE6digits+0x330>
    80004534:	00001097          	auipc	ra,0x1
    80004538:	ed8080e7          	jalr	-296(ra) # 8000540c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000453c:	00500313          	li	t1,5
    thread_dispatch();
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	240080e7          	jalr	576(ra) # 80001780 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004548:	01000513          	li	a0,16
    8000454c:	00000097          	auipc	ra,0x0
    80004550:	f04080e7          	jalr	-252(ra) # 80004450 <_ZL9fibonaccim>
    80004554:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004558:	00005517          	auipc	a0,0x5
    8000455c:	0f850513          	addi	a0,a0,248 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004560:	00001097          	auipc	ra,0x1
    80004564:	eac080e7          	jalr	-340(ra) # 8000540c <_Z11printStringPKc>
    80004568:	00000613          	li	a2,0
    8000456c:	00a00593          	li	a1,10
    80004570:	0009051b          	sext.w	a0,s2
    80004574:	00001097          	auipc	ra,0x1
    80004578:	044080e7          	jalr	68(ra) # 800055b8 <_Z8printIntiii>
    8000457c:	00005517          	auipc	a0,0x5
    80004580:	e3c50513          	addi	a0,a0,-452 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004584:	00001097          	auipc	ra,0x1
    80004588:	e88080e7          	jalr	-376(ra) # 8000540c <_Z11printStringPKc>

    for (; i < 16; i++) {
    8000458c:	00f00793          	li	a5,15
    80004590:	0497e263          	bltu	a5,s1,800045d4 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80004594:	00005517          	auipc	a0,0x5
    80004598:	0a450513          	addi	a0,a0,164 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x328>
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	e70080e7          	jalr	-400(ra) # 8000540c <_Z11printStringPKc>
    800045a4:	00000613          	li	a2,0
    800045a8:	00a00593          	li	a1,10
    800045ac:	00048513          	mv	a0,s1
    800045b0:	00001097          	auipc	ra,0x1
    800045b4:	008080e7          	jalr	8(ra) # 800055b8 <_Z8printIntiii>
    800045b8:	00005517          	auipc	a0,0x5
    800045bc:	e0050513          	addi	a0,a0,-512 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	e4c080e7          	jalr	-436(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800045c8:	0014849b          	addiw	s1,s1,1
    800045cc:	0ff4f493          	andi	s1,s1,255
    800045d0:	fbdff06f          	j	8000458c <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    800045d4:	00005517          	auipc	a0,0x5
    800045d8:	08c50513          	addi	a0,a0,140 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x350>
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	e30080e7          	jalr	-464(ra) # 8000540c <_Z11printStringPKc>
    finishedD = true;
    800045e4:	00100793          	li	a5,1
    800045e8:	00007717          	auipc	a4,0x7
    800045ec:	34f70e23          	sb	a5,860(a4) # 8000b944 <_ZL9finishedD>
    thread_dispatch();
    800045f0:	ffffd097          	auipc	ra,0xffffd
    800045f4:	190080e7          	jalr	400(ra) # 80001780 <_Z15thread_dispatchv>
}
    800045f8:	01813083          	ld	ra,24(sp)
    800045fc:	01013403          	ld	s0,16(sp)
    80004600:	00813483          	ld	s1,8(sp)
    80004604:	00013903          	ld	s2,0(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret

0000000080004610 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004610:	fe010113          	addi	sp,sp,-32
    80004614:	00113c23          	sd	ra,24(sp)
    80004618:	00813823          	sd	s0,16(sp)
    8000461c:	00913423          	sd	s1,8(sp)
    80004620:	01213023          	sd	s2,0(sp)
    80004624:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004628:	00000493          	li	s1,0
    for (; i < 3; i++) {
    8000462c:	00200793          	li	a5,2
    80004630:	0497e263          	bltu	a5,s1,80004674 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80004634:	00005517          	auipc	a0,0x5
    80004638:	03c50513          	addi	a0,a0,60 # 80009670 <_ZZ24debug_print_internal_intmE6digits+0x360>
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	dd0080e7          	jalr	-560(ra) # 8000540c <_Z11printStringPKc>
    80004644:	00000613          	li	a2,0
    80004648:	00a00593          	li	a1,10
    8000464c:	00048513          	mv	a0,s1
    80004650:	00001097          	auipc	ra,0x1
    80004654:	f68080e7          	jalr	-152(ra) # 800055b8 <_Z8printIntiii>
    80004658:	00005517          	auipc	a0,0x5
    8000465c:	d6050513          	addi	a0,a0,-672 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004660:	00001097          	auipc	ra,0x1
    80004664:	dac080e7          	jalr	-596(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004668:	0014849b          	addiw	s1,s1,1
    8000466c:	0ff4f493          	andi	s1,s1,255
    80004670:	fbdff06f          	j	8000462c <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80004674:	00005517          	auipc	a0,0x5
    80004678:	00450513          	addi	a0,a0,4 # 80009678 <_ZZ24debug_print_internal_intmE6digits+0x368>
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	d90080e7          	jalr	-624(ra) # 8000540c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004684:	00700313          	li	t1,7
    thread_dispatch();
    80004688:	ffffd097          	auipc	ra,0xffffd
    8000468c:	0f8080e7          	jalr	248(ra) # 80001780 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004690:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004694:	00005517          	auipc	a0,0x5
    80004698:	ff450513          	addi	a0,a0,-12 # 80009688 <_ZZ24debug_print_internal_intmE6digits+0x378>
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	d70080e7          	jalr	-656(ra) # 8000540c <_Z11printStringPKc>
    800046a4:	00000613          	li	a2,0
    800046a8:	00a00593          	li	a1,10
    800046ac:	0009051b          	sext.w	a0,s2
    800046b0:	00001097          	auipc	ra,0x1
    800046b4:	f08080e7          	jalr	-248(ra) # 800055b8 <_Z8printIntiii>
    800046b8:	00005517          	auipc	a0,0x5
    800046bc:	d0050513          	addi	a0,a0,-768 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	d4c080e7          	jalr	-692(ra) # 8000540c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800046c8:	00c00513          	li	a0,12
    800046cc:	00000097          	auipc	ra,0x0
    800046d0:	d84080e7          	jalr	-636(ra) # 80004450 <_ZL9fibonaccim>
    800046d4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	fb850513          	addi	a0,a0,-72 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x380>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	d2c080e7          	jalr	-724(ra) # 8000540c <_Z11printStringPKc>
    800046e8:	00000613          	li	a2,0
    800046ec:	00a00593          	li	a1,10
    800046f0:	0009051b          	sext.w	a0,s2
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	ec4080e7          	jalr	-316(ra) # 800055b8 <_Z8printIntiii>
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	cbc50513          	addi	a0,a0,-836 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004704:	00001097          	auipc	ra,0x1
    80004708:	d08080e7          	jalr	-760(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000470c:	00500793          	li	a5,5
    80004710:	0497e263          	bltu	a5,s1,80004754 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80004714:	00005517          	auipc	a0,0x5
    80004718:	f5c50513          	addi	a0,a0,-164 # 80009670 <_ZZ24debug_print_internal_intmE6digits+0x360>
    8000471c:	00001097          	auipc	ra,0x1
    80004720:	cf0080e7          	jalr	-784(ra) # 8000540c <_Z11printStringPKc>
    80004724:	00000613          	li	a2,0
    80004728:	00a00593          	li	a1,10
    8000472c:	00048513          	mv	a0,s1
    80004730:	00001097          	auipc	ra,0x1
    80004734:	e88080e7          	jalr	-376(ra) # 800055b8 <_Z8printIntiii>
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	c8050513          	addi	a0,a0,-896 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	ccc080e7          	jalr	-820(ra) # 8000540c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004748:	0014849b          	addiw	s1,s1,1
    8000474c:	0ff4f493          	andi	s1,s1,255
    80004750:	fbdff06f          	j	8000470c <_ZL11workerBodyCPv+0xfc>
    printString("C finished!\n");
    80004754:	00005517          	auipc	a0,0x5
    80004758:	4a450513          	addi	a0,a0,1188 # 80009bf8 <_ZTV7WorkerD+0x28>
    8000475c:	00001097          	auipc	ra,0x1
    80004760:	cb0080e7          	jalr	-848(ra) # 8000540c <_Z11printStringPKc>
    finishedC = true;
    80004764:	00100793          	li	a5,1
    80004768:	00007717          	auipc	a4,0x7
    8000476c:	1cf70ea3          	sb	a5,477(a4) # 8000b945 <_ZL9finishedC>
    thread_dispatch();
    80004770:	ffffd097          	auipc	ra,0xffffd
    80004774:	010080e7          	jalr	16(ra) # 80001780 <_Z15thread_dispatchv>
}
    80004778:	01813083          	ld	ra,24(sp)
    8000477c:	01013403          	ld	s0,16(sp)
    80004780:	00813483          	ld	s1,8(sp)
    80004784:	00013903          	ld	s2,0(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret

0000000080004790 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004790:	fe010113          	addi	sp,sp,-32
    80004794:	00113c23          	sd	ra,24(sp)
    80004798:	00813823          	sd	s0,16(sp)
    8000479c:	00913423          	sd	s1,8(sp)
    800047a0:	01213023          	sd	s2,0(sp)
    800047a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800047a8:	00000913          	li	s2,0
    800047ac:	0300006f          	j	800047dc <_ZL11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800047b0:	00178793          	addi	a5,a5,1
    800047b4:	01d00713          	li	a4,29
    800047b8:	fef77ce3          	bgeu	a4,a5,800047b0 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    800047bc:	ffffd097          	auipc	ra,0xffffd
    800047c0:	fc4080e7          	jalr	-60(ra) # 80001780 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    800047c4:	00148493          	addi	s1,s1,1
    800047c8:	00900793          	li	a5,9
    800047cc:	0097e663          	bltu	a5,s1,800047d8 <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800047d0:	00000793          	li	a5,0
    800047d4:	fe1ff06f          	j	800047b4 <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    800047d8:	00190913          	addi	s2,s2,1
    800047dc:	00f00793          	li	a5,15
    800047e0:	0527e063          	bltu	a5,s2,80004820 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    800047e4:	00005517          	auipc	a0,0x5
    800047e8:	ecc50513          	addi	a0,a0,-308 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    800047ec:	00001097          	auipc	ra,0x1
    800047f0:	c20080e7          	jalr	-992(ra) # 8000540c <_Z11printStringPKc>
    800047f4:	00000613          	li	a2,0
    800047f8:	00a00593          	li	a1,10
    800047fc:	0009051b          	sext.w	a0,s2
    80004800:	00001097          	auipc	ra,0x1
    80004804:	db8080e7          	jalr	-584(ra) # 800055b8 <_Z8printIntiii>
    80004808:	00005517          	auipc	a0,0x5
    8000480c:	bb050513          	addi	a0,a0,-1104 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004810:	00001097          	auipc	ra,0x1
    80004814:	bfc080e7          	jalr	-1028(ra) # 8000540c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004818:	00000493          	li	s1,0
    8000481c:	fadff06f          	j	800047c8 <_ZL11workerBodyBPv+0x38>
    printString("B finished!\n");
    80004820:	00005517          	auipc	a0,0x5
    80004824:	e9850513          	addi	a0,a0,-360 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	be4080e7          	jalr	-1052(ra) # 8000540c <_Z11printStringPKc>
    finishedB = true;
    80004830:	00100793          	li	a5,1
    80004834:	00007717          	auipc	a4,0x7
    80004838:	10f70923          	sb	a5,274(a4) # 8000b946 <_ZL9finishedB>
    thread_dispatch();
    8000483c:	ffffd097          	auipc	ra,0xffffd
    80004840:	f44080e7          	jalr	-188(ra) # 80001780 <_Z15thread_dispatchv>
}
    80004844:	01813083          	ld	ra,24(sp)
    80004848:	01013403          	ld	s0,16(sp)
    8000484c:	00813483          	ld	s1,8(sp)
    80004850:	00013903          	ld	s2,0(sp)
    80004854:	02010113          	addi	sp,sp,32
    80004858:	00008067          	ret

000000008000485c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000485c:	fe010113          	addi	sp,sp,-32
    80004860:	00113c23          	sd	ra,24(sp)
    80004864:	00813823          	sd	s0,16(sp)
    80004868:	00913423          	sd	s1,8(sp)
    8000486c:	01213023          	sd	s2,0(sp)
    80004870:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004874:	00000913          	li	s2,0
    80004878:	0300006f          	j	800048a8 <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    8000487c:	00178793          	addi	a5,a5,1
    80004880:	01d00713          	li	a4,29
    80004884:	fef77ce3          	bgeu	a4,a5,8000487c <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	ef8080e7          	jalr	-264(ra) # 80001780 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004890:	00148493          	addi	s1,s1,1
    80004894:	00900793          	li	a5,9
    80004898:	0097e663          	bltu	a5,s1,800048a4 <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    8000489c:	00000793          	li	a5,0
    800048a0:	fe1ff06f          	j	80004880 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    800048a4:	00190913          	addi	s2,s2,1
    800048a8:	00900793          	li	a5,9
    800048ac:	0527e063          	bltu	a5,s2,800048ec <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    800048b0:	00005517          	auipc	a0,0x5
    800048b4:	e1850513          	addi	a0,a0,-488 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	b54080e7          	jalr	-1196(ra) # 8000540c <_Z11printStringPKc>
    800048c0:	00000613          	li	a2,0
    800048c4:	00a00593          	li	a1,10
    800048c8:	0009051b          	sext.w	a0,s2
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	cec080e7          	jalr	-788(ra) # 800055b8 <_Z8printIntiii>
    800048d4:	00005517          	auipc	a0,0x5
    800048d8:	ae450513          	addi	a0,a0,-1308 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800048dc:	00001097          	auipc	ra,0x1
    800048e0:	b30080e7          	jalr	-1232(ra) # 8000540c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    800048e4:	00000493          	li	s1,0
    800048e8:	fadff06f          	j	80004894 <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    800048ec:	00005517          	auipc	a0,0x5
    800048f0:	db450513          	addi	a0,a0,-588 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x390>
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	b18080e7          	jalr	-1256(ra) # 8000540c <_Z11printStringPKc>
    finishedA = true;
    800048fc:	00100793          	li	a5,1
    80004900:	00007717          	auipc	a4,0x7
    80004904:	04f703a3          	sb	a5,71(a4) # 8000b947 <_ZL9finishedA>
}
    80004908:	01813083          	ld	ra,24(sp)
    8000490c:	01013403          	ld	s0,16(sp)
    80004910:	00813483          	ld	s1,8(sp)
    80004914:	00013903          	ld	s2,0(sp)
    80004918:	02010113          	addi	sp,sp,32
    8000491c:	00008067          	ret

0000000080004920 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004920:	fd010113          	addi	sp,sp,-48
    80004924:	02113423          	sd	ra,40(sp)
    80004928:	02813023          	sd	s0,32(sp)
    8000492c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004930:	00000613          	li	a2,0
    80004934:	00000597          	auipc	a1,0x0
    80004938:	f2858593          	addi	a1,a1,-216 # 8000485c <_ZL11workerBodyAPv>
    8000493c:	fd040513          	addi	a0,s0,-48
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	d90080e7          	jalr	-624(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004948:	00005517          	auipc	a0,0x5
    8000494c:	d8850513          	addi	a0,a0,-632 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    80004950:	00001097          	auipc	ra,0x1
    80004954:	abc080e7          	jalr	-1348(ra) # 8000540c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004958:	00000613          	li	a2,0
    8000495c:	00000597          	auipc	a1,0x0
    80004960:	e3458593          	addi	a1,a1,-460 # 80004790 <_ZL11workerBodyBPv>
    80004964:	fd840513          	addi	a0,s0,-40
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	d68080e7          	jalr	-664(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004970:	00005517          	auipc	a0,0x5
    80004974:	d7850513          	addi	a0,a0,-648 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	a94080e7          	jalr	-1388(ra) # 8000540c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004980:	00000613          	li	a2,0
    80004984:	00000597          	auipc	a1,0x0
    80004988:	c8c58593          	addi	a1,a1,-884 # 80004610 <_ZL11workerBodyCPv>
    8000498c:	fe040513          	addi	a0,s0,-32
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	d40080e7          	jalr	-704(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004998:	00005517          	auipc	a0,0x5
    8000499c:	d6850513          	addi	a0,a0,-664 # 80009700 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	a6c080e7          	jalr	-1428(ra) # 8000540c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800049a8:	00000613          	li	a2,0
    800049ac:	00000597          	auipc	a1,0x0
    800049b0:	b1c58593          	addi	a1,a1,-1252 # 800044c8 <_ZL11workerBodyDPv>
    800049b4:	fe840513          	addi	a0,s0,-24
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	d18080e7          	jalr	-744(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800049c0:	00005517          	auipc	a0,0x5
    800049c4:	d5850513          	addi	a0,a0,-680 # 80009718 <_ZZ24debug_print_internal_intmE6digits+0x408>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	a44080e7          	jalr	-1468(ra) # 8000540c <_Z11printStringPKc>
    800049d0:	00c0006f          	j	800049dc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	dac080e7          	jalr	-596(ra) # 80001780 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800049dc:	00007797          	auipc	a5,0x7
    800049e0:	f6b78793          	addi	a5,a5,-149 # 8000b947 <_ZL9finishedA>
    800049e4:	0007c783          	lbu	a5,0(a5)
    800049e8:	0ff7f793          	andi	a5,a5,255
    800049ec:	fe0784e3          	beqz	a5,800049d4 <_Z18Threads_C_API_testv+0xb4>
    800049f0:	00007797          	auipc	a5,0x7
    800049f4:	f5678793          	addi	a5,a5,-170 # 8000b946 <_ZL9finishedB>
    800049f8:	0007c783          	lbu	a5,0(a5)
    800049fc:	0ff7f793          	andi	a5,a5,255
    80004a00:	fc078ae3          	beqz	a5,800049d4 <_Z18Threads_C_API_testv+0xb4>
    80004a04:	00007797          	auipc	a5,0x7
    80004a08:	f4178793          	addi	a5,a5,-191 # 8000b945 <_ZL9finishedC>
    80004a0c:	0007c783          	lbu	a5,0(a5)
    80004a10:	0ff7f793          	andi	a5,a5,255
    80004a14:	fc0780e3          	beqz	a5,800049d4 <_Z18Threads_C_API_testv+0xb4>
    80004a18:	00007797          	auipc	a5,0x7
    80004a1c:	f2c78793          	addi	a5,a5,-212 # 8000b944 <_ZL9finishedD>
    80004a20:	0007c783          	lbu	a5,0(a5)
    80004a24:	0ff7f793          	andi	a5,a5,255
    80004a28:	fa0786e3          	beqz	a5,800049d4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004a2c:	02813083          	ld	ra,40(sp)
    80004a30:	02013403          	ld	s0,32(sp)
    80004a34:	03010113          	addi	sp,sp,48
    80004a38:	00008067          	ret

0000000080004a3c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004a3c:	fd010113          	addi	sp,sp,-48
    80004a40:	02113423          	sd	ra,40(sp)
    80004a44:	02813023          	sd	s0,32(sp)
    80004a48:	00913c23          	sd	s1,24(sp)
    80004a4c:	01213823          	sd	s2,16(sp)
    80004a50:	01313423          	sd	s3,8(sp)
    80004a54:	03010413          	addi	s0,sp,48
    80004a58:	00050993          	mv	s3,a0
    80004a5c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004a60:	00000913          	li	s2,0
    80004a64:	00c0006f          	j	80004a70 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	d18080e7          	jalr	-744(ra) # 80001780 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	f5c080e7          	jalr	-164(ra) # 800019cc <_Z4getcv>
    80004a78:	0005059b          	sext.w	a1,a0
    80004a7c:	01b00793          	li	a5,27
    80004a80:	02f58a63          	beq	a1,a5,80004ab4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004a84:	0084b503          	ld	a0,8(s1)
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	328080e7          	jalr	808(ra) # 80005db0 <_ZN9BufferCPP3putEi>
        i++;
    80004a90:	0019079b          	addiw	a5,s2,1
    80004a94:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004a98:	0004a683          	lw	a3,0(s1)
    80004a9c:	0026971b          	slliw	a4,a3,0x2
    80004aa0:	00d7073b          	addw	a4,a4,a3
    80004aa4:	0017169b          	slliw	a3,a4,0x1
    80004aa8:	02d7e7bb          	remw	a5,a5,a3
    80004aac:	fc0792e3          	bnez	a5,80004a70 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ab0:	fb9ff06f          	j	80004a68 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    80004ab4:	00100793          	li	a5,1
    80004ab8:	00007717          	auipc	a4,0x7
    80004abc:	e8f72823          	sw	a5,-368(a4) # 8000b948 <_ZL9threadEnd>
    td->buffer->put('!');
    80004ac0:	0209b783          	ld	a5,32(s3)
    80004ac4:	02100593          	li	a1,33
    80004ac8:	0087b503          	ld	a0,8(a5)
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	2e4080e7          	jalr	740(ra) # 80005db0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004ad4:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80004ad8:	0087b503          	ld	a0,8(a5)
    80004adc:	00050663          	beqz	a0,80004ae8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
        return sem_signal(myHandle);
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	e80080e7          	jalr	-384(ra) # 80001960 <_Z10sem_signalP10_semaphore>
}
    80004ae8:	02813083          	ld	ra,40(sp)
    80004aec:	02013403          	ld	s0,32(sp)
    80004af0:	01813483          	ld	s1,24(sp)
    80004af4:	01013903          	ld	s2,16(sp)
    80004af8:	00813983          	ld	s3,8(sp)
    80004afc:	03010113          	addi	sp,sp,48
    80004b00:	00008067          	ret

0000000080004b04 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004b04:	fe010113          	addi	sp,sp,-32
    80004b08:	00113c23          	sd	ra,24(sp)
    80004b0c:	00813823          	sd	s0,16(sp)
    80004b10:	00913423          	sd	s1,8(sp)
    80004b14:	01213023          	sd	s2,0(sp)
    80004b18:	02010413          	addi	s0,sp,32
    80004b1c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b20:	00000913          	li	s2,0
    80004b24:	00c0006f          	j	80004b30 <_ZN12ProducerSync8producerEPv+0x2c>
        thread_dispatch();
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	c58080e7          	jalr	-936(ra) # 80001780 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80004b30:	00007797          	auipc	a5,0x7
    80004b34:	e1878793          	addi	a5,a5,-488 # 8000b948 <_ZL9threadEnd>
    80004b38:	0007a783          	lw	a5,0(a5)
    80004b3c:	0007879b          	sext.w	a5,a5
    80004b40:	02079e63          	bnez	a5,80004b7c <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80004b44:	0004a583          	lw	a1,0(s1)
    80004b48:	0305859b          	addiw	a1,a1,48
    80004b4c:	0084b503          	ld	a0,8(s1)
    80004b50:	00001097          	auipc	ra,0x1
    80004b54:	260080e7          	jalr	608(ra) # 80005db0 <_ZN9BufferCPP3putEi>
        i++;
    80004b58:	0019079b          	addiw	a5,s2,1
    80004b5c:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004b60:	0004a683          	lw	a3,0(s1)
    80004b64:	0026971b          	slliw	a4,a3,0x2
    80004b68:	00d7073b          	addw	a4,a4,a3
    80004b6c:	0017169b          	slliw	a3,a4,0x1
    80004b70:	02d7e7bb          	remw	a5,a5,a3
    80004b74:	fa079ee3          	bnez	a5,80004b30 <_ZN12ProducerSync8producerEPv+0x2c>
    80004b78:	fb1ff06f          	j	80004b28 <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80004b7c:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80004b80:	0087b503          	ld	a0,8(a5)
    80004b84:	00050663          	beqz	a0,80004b90 <_ZN12ProducerSync8producerEPv+0x8c>
        return sem_signal(myHandle);
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	dd8080e7          	jalr	-552(ra) # 80001960 <_Z10sem_signalP10_semaphore>
}
    80004b90:	01813083          	ld	ra,24(sp)
    80004b94:	01013403          	ld	s0,16(sp)
    80004b98:	00813483          	ld	s1,8(sp)
    80004b9c:	00013903          	ld	s2,0(sp)
    80004ba0:	02010113          	addi	sp,sp,32
    80004ba4:	00008067          	ret

0000000080004ba8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004ba8:	fd010113          	addi	sp,sp,-48
    80004bac:	02113423          	sd	ra,40(sp)
    80004bb0:	02813023          	sd	s0,32(sp)
    80004bb4:	00913c23          	sd	s1,24(sp)
    80004bb8:	01213823          	sd	s2,16(sp)
    80004bbc:	01313423          	sd	s3,8(sp)
    80004bc0:	01413023          	sd	s4,0(sp)
    80004bc4:	03010413          	addi	s0,sp,48
    80004bc8:	00050993          	mv	s3,a0
    80004bcc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004bd0:	00000a13          	li	s4,0
    80004bd4:	01c0006f          	j	80004bf0 <_ZN12ConsumerSync8consumerEPv+0x48>
        thread_dispatch();
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	ba8080e7          	jalr	-1112(ra) # 80001780 <_Z15thread_dispatchv>
    80004be0:	0580006f          	j	80004c38 <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    80004be4:	00a00513          	li	a0,10
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	e34080e7          	jalr	-460(ra) # 80001a1c <_Z4putcc>
    while (!threadEnd) {
    80004bf0:	00007797          	auipc	a5,0x7
    80004bf4:	d5878793          	addi	a5,a5,-680 # 8000b948 <_ZL9threadEnd>
    80004bf8:	0007a783          	lw	a5,0(a5)
    80004bfc:	0007879b          	sext.w	a5,a5
    80004c00:	04079463          	bnez	a5,80004c48 <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    80004c04:	00893503          	ld	a0,8(s2)
    80004c08:	00001097          	auipc	ra,0x1
    80004c0c:	258080e7          	jalr	600(ra) # 80005e60 <_ZN9BufferCPP3getEv>
        i++;
    80004c10:	001a049b          	addiw	s1,s4,1
    80004c14:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004c18:	0ff57513          	andi	a0,a0,255
    80004c1c:	ffffd097          	auipc	ra,0xffffd
    80004c20:	e00080e7          	jalr	-512(ra) # 80001a1c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004c24:	00092703          	lw	a4,0(s2)
    80004c28:	0027179b          	slliw	a5,a4,0x2
    80004c2c:	00e787bb          	addw	a5,a5,a4
    80004c30:	02f4e7bb          	remw	a5,s1,a5
    80004c34:	fa0782e3          	beqz	a5,80004bd8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004c38:	05000793          	li	a5,80
    80004c3c:	02f4e4bb          	remw	s1,s1,a5
    80004c40:	fa0498e3          	bnez	s1,80004bf0 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004c44:	fa1ff06f          	j	80004be4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    80004c48:	0209b783          	ld	a5,32(s3)
    80004c4c:	0087b503          	ld	a0,8(a5)
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	2bc080e7          	jalr	700(ra) # 80005f0c <_ZN9BufferCPP6getCntEv>
    80004c58:	02a05263          	blez	a0,80004c7c <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    80004c5c:	0209b783          	ld	a5,32(s3)
    80004c60:	0087b503          	ld	a0,8(a5)
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	1fc080e7          	jalr	508(ra) # 80005e60 <_ZN9BufferCPP3getEv>
    static void putc(char c) { __putc(c); };
    80004c6c:	0ff57513          	andi	a0,a0,255
    80004c70:	00003097          	auipc	ra,0x3
    80004c74:	50c080e7          	jalr	1292(ra) # 8000817c <__putc>
    80004c78:	fd1ff06f          	j	80004c48 <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    80004c7c:	01093783          	ld	a5,16(s2)
        if (myHandle == nullptr) {
    80004c80:	0087b503          	ld	a0,8(a5)
    80004c84:	00050663          	beqz	a0,80004c90 <_ZN12ConsumerSync8consumerEPv+0xe8>
        return sem_signal(myHandle);
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	cd8080e7          	jalr	-808(ra) # 80001960 <_Z10sem_signalP10_semaphore>
}
    80004c90:	02813083          	ld	ra,40(sp)
    80004c94:	02013403          	ld	s0,32(sp)
    80004c98:	01813483          	ld	s1,24(sp)
    80004c9c:	01013903          	ld	s2,16(sp)
    80004ca0:	00813983          	ld	s3,8(sp)
    80004ca4:	00013a03          	ld	s4,0(sp)
    80004ca8:	03010113          	addi	sp,sp,48
    80004cac:	00008067          	ret

0000000080004cb0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004cb0:	f9010113          	addi	sp,sp,-112
    80004cb4:	06113423          	sd	ra,104(sp)
    80004cb8:	06813023          	sd	s0,96(sp)
    80004cbc:	04913c23          	sd	s1,88(sp)
    80004cc0:	05213823          	sd	s2,80(sp)
    80004cc4:	05313423          	sd	s3,72(sp)
    80004cc8:	05413023          	sd	s4,64(sp)
    80004ccc:	03513c23          	sd	s5,56(sp)
    80004cd0:	03613823          	sd	s6,48(sp)
    80004cd4:	03713423          	sd	s7,40(sp)
    80004cd8:	03813023          	sd	s8,32(sp)
    80004cdc:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004ce0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004ce4:	00005517          	auipc	a0,0x5
    80004ce8:	afc50513          	addi	a0,a0,-1284 # 800097e0 <_ZTV8Consumer+0x28>
    80004cec:	00000097          	auipc	ra,0x0
    80004cf0:	720080e7          	jalr	1824(ra) # 8000540c <_Z11printStringPKc>
    getString(input, 30);
    80004cf4:	01e00593          	li	a1,30
    80004cf8:	f9040513          	addi	a0,s0,-112
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	798080e7          	jalr	1944(ra) # 80005494 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004d04:	f9040513          	addi	a0,s0,-112
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	860080e7          	jalr	-1952(ra) # 80005568 <_Z11stringToIntPKc>
    80004d10:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004d14:	00005517          	auipc	a0,0x5
    80004d18:	aec50513          	addi	a0,a0,-1300 # 80009800 <_ZTV8Consumer+0x48>
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	6f0080e7          	jalr	1776(ra) # 8000540c <_Z11printStringPKc>
    getString(input, 30);
    80004d24:	01e00593          	li	a1,30
    80004d28:	f9040513          	addi	a0,s0,-112
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	768080e7          	jalr	1896(ra) # 80005494 <_Z9getStringPci>
    n = stringToInt(input);
    80004d34:	f9040513          	addi	a0,s0,-112
    80004d38:	00001097          	auipc	ra,0x1
    80004d3c:	830080e7          	jalr	-2000(ra) # 80005568 <_Z11stringToIntPKc>
    80004d40:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004d44:	00005517          	auipc	a0,0x5
    80004d48:	adc50513          	addi	a0,a0,-1316 # 80009820 <_ZTV8Consumer+0x68>
    80004d4c:	00000097          	auipc	ra,0x0
    80004d50:	6c0080e7          	jalr	1728(ra) # 8000540c <_Z11printStringPKc>
    80004d54:	00000613          	li	a2,0
    80004d58:	00a00593          	li	a1,10
    80004d5c:	00090513          	mv	a0,s2
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	858080e7          	jalr	-1960(ra) # 800055b8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004d68:	00005517          	auipc	a0,0x5
    80004d6c:	ad050513          	addi	a0,a0,-1328 # 80009838 <_ZTV8Consumer+0x80>
    80004d70:	00000097          	auipc	ra,0x0
    80004d74:	69c080e7          	jalr	1692(ra) # 8000540c <_Z11printStringPKc>
    80004d78:	00000613          	li	a2,0
    80004d7c:	00a00593          	li	a1,10
    80004d80:	00048513          	mv	a0,s1
    80004d84:	00001097          	auipc	ra,0x1
    80004d88:	834080e7          	jalr	-1996(ra) # 800055b8 <_Z8printIntiii>
    printString(".\n");
    80004d8c:	00005517          	auipc	a0,0x5
    80004d90:	ac450513          	addi	a0,a0,-1340 # 80009850 <_ZTV8Consumer+0x98>
    80004d94:	00000097          	auipc	ra,0x0
    80004d98:	678080e7          	jalr	1656(ra) # 8000540c <_Z11printStringPKc>
    if(threadNum > n) {
    80004d9c:	0324c463          	blt	s1,s2,80004dc4 <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80004da0:	03205c63          	blez	s2,80004dd8 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    80004da4:	03800513          	li	a0,56
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	030080e7          	jalr	48(ra) # 80001dd8 <_Znwm>
    80004db0:	00050a93          	mv	s5,a0
    80004db4:	00048593          	mv	a1,s1
    80004db8:	00001097          	auipc	ra,0x1
    80004dbc:	e44080e7          	jalr	-444(ra) # 80005bfc <_ZN9BufferCPPC1Ei>
    80004dc0:	0300006f          	j	80004df0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004dc4:	00005517          	auipc	a0,0x5
    80004dc8:	a9450513          	addi	a0,a0,-1388 # 80009858 <_ZTV8Consumer+0xa0>
    80004dcc:	00000097          	auipc	ra,0x0
    80004dd0:	640080e7          	jalr	1600(ra) # 8000540c <_Z11printStringPKc>
        return;
    80004dd4:	0140006f          	j	80004de8 <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004dd8:	00005517          	auipc	a0,0x5
    80004ddc:	ac050513          	addi	a0,a0,-1344 # 80009898 <_ZTV8Consumer+0xe0>
    80004de0:	00000097          	auipc	ra,0x0
    80004de4:	62c080e7          	jalr	1580(ra) # 8000540c <_Z11printStringPKc>
        return;
    80004de8:	000b8113          	mv	sp,s7
    80004dec:	3340006f          	j	80005120 <_Z29producerConsumer_CPP_Sync_APIv+0x470>
    waitForAll = new Semaphore(0);
    80004df0:	01000513          	li	a0,16
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	fe4080e7          	jalr	-28(ra) # 80001dd8 <_Znwm>
    80004dfc:	00050493          	mv	s1,a0
    Semaphore(unsigned init = 1) {
    80004e00:	00005797          	auipc	a5,0x5
    80004e04:	95878793          	addi	a5,a5,-1704 # 80009758 <_ZTV9Semaphore+0x10>
    80004e08:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80004e0c:	00000593          	li	a1,0
    80004e10:	00850513          	addi	a0,a0,8
    80004e14:	ffffd097          	auipc	ra,0xffffd
    80004e18:	9b8080e7          	jalr	-1608(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    80004e1c:	00050463          	beqz	a0,80004e24 <_Z29producerConsumer_CPP_Sync_APIv+0x174>
            myHandle = nullptr;
    80004e20:	0004b423          	sd	zero,8(s1)
    80004e24:	00007797          	auipc	a5,0x7
    80004e28:	b297b623          	sd	s1,-1236(a5) # 8000b950 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004e2c:	00391793          	slli	a5,s2,0x3
    80004e30:	00f78793          	addi	a5,a5,15
    80004e34:	ff07f793          	andi	a5,a5,-16
    80004e38:	40f10133          	sub	sp,sp,a5
    80004e3c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004e40:	0019079b          	addiw	a5,s2,1
    80004e44:	00179713          	slli	a4,a5,0x1
    80004e48:	00f70733          	add	a4,a4,a5
    80004e4c:	00371793          	slli	a5,a4,0x3
    80004e50:	00f78793          	addi	a5,a5,15
    80004e54:	ff07f793          	andi	a5,a5,-16
    80004e58:	40f10133          	sub	sp,sp,a5
    80004e5c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004e60:	00191c13          	slli	s8,s2,0x1
    80004e64:	012c0733          	add	a4,s8,s2
    80004e68:	00371793          	slli	a5,a4,0x3
    80004e6c:	00fa07b3          	add	a5,s4,a5
    80004e70:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004e74:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004e78:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004e7c:	02800513          	li	a0,40
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	f58080e7          	jalr	-168(ra) # 80001dd8 <_Znwm>
    80004e88:	00050b13          	mv	s6,a0
    80004e8c:	012c0c33          	add	s8,s8,s2
    80004e90:	003c1793          	slli	a5,s8,0x3
    80004e94:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004e98:	00053423          	sd	zero,8(a0)
    80004e9c:	00053823          	sd	zero,16(a0)
    80004ea0:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004ea4:	00005717          	auipc	a4,0x5
    80004ea8:	dc470713          	addi	a4,a4,-572 # 80009c68 <_ZTV12ConsumerSync+0x10>
    80004eac:	00e53023          	sd	a4,0(a0)
    80004eb0:	02f53023          	sd	a5,32(a0)
        debug_print("CPP API: Starting thread\n");
    80004eb4:	00005517          	auipc	a0,0x5
    80004eb8:	a1450513          	addi	a0,a0,-1516 # 800098c8 <_ZTV8Consumer+0x110>
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	08c080e7          	jalr	140(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80004ec4:	00005517          	auipc	a0,0x5
    80004ec8:	a2450513          	addi	a0,a0,-1500 # 800098e8 <_ZTV8Consumer+0x130>
    80004ecc:	ffffd097          	auipc	ra,0xffffd
    80004ed0:	07c080e7          	jalr	124(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80004ed4:	000b0513          	mv	a0,s6
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	1b8080e7          	jalr	440(ra) # 80002090 <_Z11debug_printm>
        debug_print("\n");
    80004ee0:	00004517          	auipc	a0,0x4
    80004ee4:	4d850513          	addi	a0,a0,1240 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	060080e7          	jalr	96(ra) # 80001f48 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80004ef0:	000b0613          	mv	a2,s6
    80004ef4:	ffffc597          	auipc	a1,0xffffc
    80004ef8:	3a058593          	addi	a1,a1,928 # 80001294 <_ZN6Thread9body_execEPv>
    80004efc:	008b0513          	addi	a0,s6,8
    80004f00:	ffffc097          	auipc	ra,0xffffc
    80004f04:	7d0080e7          	jalr	2000(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    80004f08:	00051e63          	bnez	a0,80004f24 <_Z29producerConsumer_CPP_Sync_APIv+0x274>
        debug_print("CPP API: Thread started\n");
    80004f0c:	00005517          	auipc	a0,0x5
    80004f10:	9f450513          	addi	a0,a0,-1548 # 80009900 <_ZTV8Consumer+0x148>
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	034080e7          	jalr	52(ra) # 80001f48 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    80004f1c:	00000493          	li	s1,0
    80004f20:	0c80006f          	j	80004fe8 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
            myHandle = nullptr;
    80004f24:	000b3423          	sd	zero,8(s6)
            return -1;
    80004f28:	ff5ff06f          	j	80004f1c <_Z29producerConsumer_CPP_Sync_APIv+0x26c>
            threads[i] = new ProducerSync(data+i);
    80004f2c:	02800513          	li	a0,40
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	ea8080e7          	jalr	-344(ra) # 80001dd8 <_Znwm>
    80004f38:	00149713          	slli	a4,s1,0x1
    80004f3c:	00970733          	add	a4,a4,s1
    80004f40:	00371793          	slli	a5,a4,0x3
    80004f44:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004f48:	00053423          	sd	zero,8(a0)
    80004f4c:	00053823          	sd	zero,16(a0)
    80004f50:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004f54:	00005717          	auipc	a4,0x5
    80004f58:	cec70713          	addi	a4,a4,-788 # 80009c40 <_ZTV12ProducerSync+0x10>
    80004f5c:	00e53023          	sd	a4,0(a0)
    80004f60:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    80004f64:	00349793          	slli	a5,s1,0x3
    80004f68:	00f987b3          	add	a5,s3,a5
    80004f6c:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80004f70:	00349793          	slli	a5,s1,0x3
    80004f74:	00f987b3          	add	a5,s3,a5
    80004f78:	0007bc03          	ld	s8,0(a5)
        debug_print("CPP API: Starting thread\n");
    80004f7c:	00005517          	auipc	a0,0x5
    80004f80:	94c50513          	addi	a0,a0,-1716 # 800098c8 <_ZTV8Consumer+0x110>
    80004f84:	ffffd097          	auipc	ra,0xffffd
    80004f88:	fc4080e7          	jalr	-60(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80004f8c:	00005517          	auipc	a0,0x5
    80004f90:	95c50513          	addi	a0,a0,-1700 # 800098e8 <_ZTV8Consumer+0x130>
    80004f94:	ffffd097          	auipc	ra,0xffffd
    80004f98:	fb4080e7          	jalr	-76(ra) # 80001f48 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80004f9c:	000c0513          	mv	a0,s8
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	0f0080e7          	jalr	240(ra) # 80002090 <_Z11debug_printm>
        debug_print("\n");
    80004fa8:	00004517          	auipc	a0,0x4
    80004fac:	41050513          	addi	a0,a0,1040 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	f98080e7          	jalr	-104(ra) # 80001f48 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80004fb8:	000c0613          	mv	a2,s8
    80004fbc:	ffffc597          	auipc	a1,0xffffc
    80004fc0:	2d858593          	addi	a1,a1,728 # 80001294 <_ZN6Thread9body_execEPv>
    80004fc4:	008c0513          	addi	a0,s8,8
    80004fc8:	ffffc097          	auipc	ra,0xffffc
    80004fcc:	708080e7          	jalr	1800(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    80004fd0:	08051863          	bnez	a0,80005060 <_Z29producerConsumer_CPP_Sync_APIv+0x3b0>
        debug_print("CPP API: Thread started\n");
    80004fd4:	00005517          	auipc	a0,0x5
    80004fd8:	92c50513          	addi	a0,a0,-1748 # 80009900 <_ZTV8Consumer+0x148>
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	f6c080e7          	jalr	-148(ra) # 80001f48 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    80004fe4:	0014849b          	addiw	s1,s1,1
    80004fe8:	0924d063          	bge	s1,s2,80005068 <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
        data[i].id = i;
    80004fec:	00149713          	slli	a4,s1,0x1
    80004ff0:	00970733          	add	a4,a4,s1
    80004ff4:	00371793          	slli	a5,a4,0x3
    80004ff8:	00fa07b3          	add	a5,s4,a5
    80004ffc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005000:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005004:	00007717          	auipc	a4,0x7
    80005008:	94c70713          	addi	a4,a4,-1716 # 8000b950 <_ZL10waitForAll>
    8000500c:	00073703          	ld	a4,0(a4)
    80005010:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005014:	f0904ce3          	bgtz	s1,80004f2c <_Z29producerConsumer_CPP_Sync_APIv+0x27c>
            threads[i] = new ProducerKeyboard(data+i);
    80005018:	02800513          	li	a0,40
    8000501c:	ffffd097          	auipc	ra,0xffffd
    80005020:	dbc080e7          	jalr	-580(ra) # 80001dd8 <_Znwm>
    80005024:	00149713          	slli	a4,s1,0x1
    80005028:	00970733          	add	a4,a4,s1
    8000502c:	00371793          	slli	a5,a4,0x3
    80005030:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80005034:	00053423          	sd	zero,8(a0)
    80005038:	00053823          	sd	zero,16(a0)
    8000503c:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005040:	00005717          	auipc	a4,0x5
    80005044:	bd870713          	addi	a4,a4,-1064 # 80009c18 <_ZTV16ProducerKeyboard+0x10>
    80005048:	00e53023          	sd	a4,0(a0)
    8000504c:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    80005050:	00349793          	slli	a5,s1,0x3
    80005054:	00f987b3          	add	a5,s3,a5
    80005058:	00a7b023          	sd	a0,0(a5)
    8000505c:	f15ff06f          	j	80004f70 <_Z29producerConsumer_CPP_Sync_APIv+0x2c0>
            myHandle = nullptr;
    80005060:	000c3423          	sd	zero,8(s8)
            return -1;
    80005064:	f81ff06f          	j	80004fe4 <_Z29producerConsumer_CPP_Sync_APIv+0x334>
        thread_dispatch();
    80005068:	ffffc097          	auipc	ra,0xffffc
    8000506c:	718080e7          	jalr	1816(ra) # 80001780 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005070:	00000493          	li	s1,0
    80005074:	0080006f          	j	8000507c <_Z29producerConsumer_CPP_Sync_APIv+0x3cc>
    80005078:	0014849b          	addiw	s1,s1,1
    8000507c:	02994263          	blt	s2,s1,800050a0 <_Z29producerConsumer_CPP_Sync_APIv+0x3f0>
        waitForAll->wait();
    80005080:	00007797          	auipc	a5,0x7
    80005084:	8d078793          	addi	a5,a5,-1840 # 8000b950 <_ZL10waitForAll>
    80005088:	0007b783          	ld	a5,0(a5)
        if (myHandle == nullptr) {
    8000508c:	0087b503          	ld	a0,8(a5)
    80005090:	fe0504e3          	beqz	a0,80005078 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
        return sem_wait(myHandle);
    80005094:	ffffd097          	auipc	ra,0xffffd
    80005098:	87c080e7          	jalr	-1924(ra) # 80001910 <_Z8sem_waitP10_semaphore>
    8000509c:	fddff06f          	j	80005078 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
    for (int i = 0; i < threadNum; i++) {
    800050a0:	00000493          	li	s1,0
    800050a4:	0080006f          	j	800050ac <_Z29producerConsumer_CPP_Sync_APIv+0x3fc>
    800050a8:	0014849b          	addiw	s1,s1,1
    800050ac:	0324d263          	bge	s1,s2,800050d0 <_Z29producerConsumer_CPP_Sync_APIv+0x420>
        delete threads[i];
    800050b0:	00349793          	slli	a5,s1,0x3
    800050b4:	00f987b3          	add	a5,s3,a5
    800050b8:	0007b503          	ld	a0,0(a5)
    800050bc:	fe0506e3          	beqz	a0,800050a8 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    800050c0:	00053783          	ld	a5,0(a0)
    800050c4:	0087b783          	ld	a5,8(a5)
    800050c8:	000780e7          	jalr	a5
    800050cc:	fddff06f          	j	800050a8 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    delete consumerThread;
    800050d0:	000b0a63          	beqz	s6,800050e4 <_Z29producerConsumer_CPP_Sync_APIv+0x434>
    800050d4:	000b3783          	ld	a5,0(s6)
    800050d8:	0087b783          	ld	a5,8(a5)
    800050dc:	000b0513          	mv	a0,s6
    800050e0:	000780e7          	jalr	a5
    delete waitForAll;
    800050e4:	00007797          	auipc	a5,0x7
    800050e8:	86c78793          	addi	a5,a5,-1940 # 8000b950 <_ZL10waitForAll>
    800050ec:	0007b503          	ld	a0,0(a5)
    800050f0:	00050863          	beqz	a0,80005100 <_Z29producerConsumer_CPP_Sync_APIv+0x450>
    800050f4:	00053783          	ld	a5,0(a0)
    800050f8:	0087b783          	ld	a5,8(a5)
    800050fc:	000780e7          	jalr	a5
    delete buffer;
    80005100:	000a8e63          	beqz	s5,8000511c <_Z29producerConsumer_CPP_Sync_APIv+0x46c>
    80005104:	000a8513          	mv	a0,s5
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	eac080e7          	jalr	-340(ra) # 80005fb4 <_ZN9BufferCPPD1Ev>
    80005110:	000a8513          	mv	a0,s5
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	d44080e7          	jalr	-700(ra) # 80001e58 <_ZdlPv>
    8000511c:	000b8113          	mv	sp,s7

}
    80005120:	f9040113          	addi	sp,s0,-112
    80005124:	06813083          	ld	ra,104(sp)
    80005128:	06013403          	ld	s0,96(sp)
    8000512c:	05813483          	ld	s1,88(sp)
    80005130:	05013903          	ld	s2,80(sp)
    80005134:	04813983          	ld	s3,72(sp)
    80005138:	04013a03          	ld	s4,64(sp)
    8000513c:	03813a83          	ld	s5,56(sp)
    80005140:	03013b03          	ld	s6,48(sp)
    80005144:	02813b83          	ld	s7,40(sp)
    80005148:	02013c03          	ld	s8,32(sp)
    8000514c:	07010113          	addi	sp,sp,112
    80005150:	00008067          	ret
    80005154:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005158:	000a8513          	mv	a0,s5
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	cfc080e7          	jalr	-772(ra) # 80001e58 <_ZdlPv>
    80005164:	00048513          	mv	a0,s1
    80005168:	00008097          	auipc	ra,0x8
    8000516c:	910080e7          	jalr	-1776(ra) # 8000ca78 <_Unwind_Resume>
    80005170:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005174:	00048513          	mv	a0,s1
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	ce0080e7          	jalr	-800(ra) # 80001e58 <_ZdlPv>
    80005180:	00090513          	mv	a0,s2
    80005184:	00008097          	auipc	ra,0x8
    80005188:	8f4080e7          	jalr	-1804(ra) # 8000ca78 <_Unwind_Resume>

000000008000518c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000518c:	ff010113          	addi	sp,sp,-16
    80005190:	00813423          	sd	s0,8(sp)
    80005194:	01010413          	addi	s0,sp,16
    80005198:	00813403          	ld	s0,8(sp)
    8000519c:	01010113          	addi	sp,sp,16
    800051a0:	00008067          	ret

00000000800051a4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800051a4:	ff010113          	addi	sp,sp,-16
    800051a8:	00813423          	sd	s0,8(sp)
    800051ac:	01010413          	addi	s0,sp,16
    800051b0:	00813403          	ld	s0,8(sp)
    800051b4:	01010113          	addi	sp,sp,16
    800051b8:	00008067          	ret

00000000800051bc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800051bc:	ff010113          	addi	sp,sp,-16
    800051c0:	00813423          	sd	s0,8(sp)
    800051c4:	01010413          	addi	s0,sp,16
    800051c8:	00813403          	ld	s0,8(sp)
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <_ZN12ConsumerSyncD0Ev>:
class ConsumerSync:public Thread {
    800051d4:	ff010113          	addi	sp,sp,-16
    800051d8:	00113423          	sd	ra,8(sp)
    800051dc:	00813023          	sd	s0,0(sp)
    800051e0:	01010413          	addi	s0,sp,16
    800051e4:	ffffd097          	auipc	ra,0xffffd
    800051e8:	c74080e7          	jalr	-908(ra) # 80001e58 <_ZdlPv>
    800051ec:	00813083          	ld	ra,8(sp)
    800051f0:	00013403          	ld	s0,0(sp)
    800051f4:	01010113          	addi	sp,sp,16
    800051f8:	00008067          	ret

00000000800051fc <_ZN12ProducerSyncD0Ev>:
class ProducerSync:public Thread {
    800051fc:	ff010113          	addi	sp,sp,-16
    80005200:	00113423          	sd	ra,8(sp)
    80005204:	00813023          	sd	s0,0(sp)
    80005208:	01010413          	addi	s0,sp,16
    8000520c:	ffffd097          	auipc	ra,0xffffd
    80005210:	c4c080e7          	jalr	-948(ra) # 80001e58 <_ZdlPv>
    80005214:	00813083          	ld	ra,8(sp)
    80005218:	00013403          	ld	s0,0(sp)
    8000521c:	01010113          	addi	sp,sp,16
    80005220:	00008067          	ret

0000000080005224 <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    80005224:	ff010113          	addi	sp,sp,-16
    80005228:	00113423          	sd	ra,8(sp)
    8000522c:	00813023          	sd	s0,0(sp)
    80005230:	01010413          	addi	s0,sp,16
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	c24080e7          	jalr	-988(ra) # 80001e58 <_ZdlPv>
    8000523c:	00813083          	ld	ra,8(sp)
    80005240:	00013403          	ld	s0,0(sp)
    80005244:	01010113          	addi	sp,sp,16
    80005248:	00008067          	ret

000000008000524c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000524c:	ff010113          	addi	sp,sp,-16
    80005250:	00113423          	sd	ra,8(sp)
    80005254:	00813023          	sd	s0,0(sp)
    80005258:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000525c:	02053583          	ld	a1,32(a0)
    80005260:	fffff097          	auipc	ra,0xfffff
    80005264:	7dc080e7          	jalr	2012(ra) # 80004a3c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005268:	00813083          	ld	ra,8(sp)
    8000526c:	00013403          	ld	s0,0(sp)
    80005270:	01010113          	addi	sp,sp,16
    80005274:	00008067          	ret

0000000080005278 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005278:	ff010113          	addi	sp,sp,-16
    8000527c:	00113423          	sd	ra,8(sp)
    80005280:	00813023          	sd	s0,0(sp)
    80005284:	01010413          	addi	s0,sp,16
        producer(td);
    80005288:	02053583          	ld	a1,32(a0)
    8000528c:	00000097          	auipc	ra,0x0
    80005290:	878080e7          	jalr	-1928(ra) # 80004b04 <_ZN12ProducerSync8producerEPv>
    }
    80005294:	00813083          	ld	ra,8(sp)
    80005298:	00013403          	ld	s0,0(sp)
    8000529c:	01010113          	addi	sp,sp,16
    800052a0:	00008067          	ret

00000000800052a4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800052a4:	ff010113          	addi	sp,sp,-16
    800052a8:	00113423          	sd	ra,8(sp)
    800052ac:	00813023          	sd	s0,0(sp)
    800052b0:	01010413          	addi	s0,sp,16
        consumer(td);
    800052b4:	02053583          	ld	a1,32(a0)
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	8f0080e7          	jalr	-1808(ra) # 80004ba8 <_ZN12ConsumerSync8consumerEPv>
    }
    800052c0:	00813083          	ld	ra,8(sp)
    800052c4:	00013403          	ld	s0,0(sp)
    800052c8:	01010113          	addi	sp,sp,16
    800052cc:	00008067          	ret

00000000800052d0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800052d0:	fe010113          	addi	sp,sp,-32
    800052d4:	00113c23          	sd	ra,24(sp)
    800052d8:	00813823          	sd	s0,16(sp)
    800052dc:	00913423          	sd	s1,8(sp)
    800052e0:	01213023          	sd	s2,0(sp)
    800052e4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800052e8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800052ec:	00600493          	li	s1,6
    while (--i > 0) {
    800052f0:	fff4849b          	addiw	s1,s1,-1
    800052f4:	04905463          	blez	s1,8000533c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800052f8:	00005517          	auipc	a0,0x5
    800052fc:	98850513          	addi	a0,a0,-1656 # 80009c80 <_ZTV12ConsumerSync+0x28>
    80005300:	00000097          	auipc	ra,0x0
    80005304:	10c080e7          	jalr	268(ra) # 8000540c <_Z11printStringPKc>
        printInt(sleep_time);
    80005308:	00000613          	li	a2,0
    8000530c:	00a00593          	li	a1,10
    80005310:	0009051b          	sext.w	a0,s2
    80005314:	00000097          	auipc	ra,0x0
    80005318:	2a4080e7          	jalr	676(ra) # 800055b8 <_Z8printIntiii>
        printString(" !\n");
    8000531c:	00005517          	auipc	a0,0x5
    80005320:	96c50513          	addi	a0,a0,-1684 # 80009c88 <_ZTV12ConsumerSync+0x30>
    80005324:	00000097          	auipc	ra,0x0
    80005328:	0e8080e7          	jalr	232(ra) # 8000540c <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000532c:	00090513          	mv	a0,s2
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	680080e7          	jalr	1664(ra) # 800019b0 <_Z10time_sleepm>
    while (--i > 0) {
    80005338:	fb9ff06f          	j	800052f0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000533c:	00a00793          	li	a5,10
    80005340:	02f95933          	divu	s2,s2,a5
    80005344:	fff90913          	addi	s2,s2,-1
    80005348:	00006797          	auipc	a5,0x6
    8000534c:	61078793          	addi	a5,a5,1552 # 8000b958 <_ZL8finished>
    80005350:	01278933          	add	s2,a5,s2
    80005354:	00100793          	li	a5,1
    80005358:	00f90023          	sb	a5,0(s2)
}
    8000535c:	01813083          	ld	ra,24(sp)
    80005360:	01013403          	ld	s0,16(sp)
    80005364:	00813483          	ld	s1,8(sp)
    80005368:	00013903          	ld	s2,0(sp)
    8000536c:	02010113          	addi	sp,sp,32
    80005370:	00008067          	ret

0000000080005374 <_Z12testSleepingv>:

void testSleeping() {
    80005374:	fc010113          	addi	sp,sp,-64
    80005378:	02113c23          	sd	ra,56(sp)
    8000537c:	02813823          	sd	s0,48(sp)
    80005380:	02913423          	sd	s1,40(sp)
    80005384:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005388:	00a00793          	li	a5,10
    8000538c:	fcf43823          	sd	a5,-48(s0)
    80005390:	01400793          	li	a5,20
    80005394:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005398:	00000493          	li	s1,0
    8000539c:	00100793          	li	a5,1
    800053a0:	0297c863          	blt	a5,s1,800053d0 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800053a4:	00349513          	slli	a0,s1,0x3
    800053a8:	fd040793          	addi	a5,s0,-48
    800053ac:	00a78633          	add	a2,a5,a0
    800053b0:	00000597          	auipc	a1,0x0
    800053b4:	f2058593          	addi	a1,a1,-224 # 800052d0 <_ZL9sleepyRunPv>
    800053b8:	fc040793          	addi	a5,s0,-64
    800053bc:	00a78533          	add	a0,a5,a0
    800053c0:	ffffc097          	auipc	ra,0xffffc
    800053c4:	310080e7          	jalr	784(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800053c8:	0014849b          	addiw	s1,s1,1
    800053cc:	fd1ff06f          	j	8000539c <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    800053d0:	00006797          	auipc	a5,0x6
    800053d4:	58878793          	addi	a5,a5,1416 # 8000b958 <_ZL8finished>
    800053d8:	0007c783          	lbu	a5,0(a5)
    800053dc:	0ff7f793          	andi	a5,a5,255
    800053e0:	fe0788e3          	beqz	a5,800053d0 <_Z12testSleepingv+0x5c>
    800053e4:	00006797          	auipc	a5,0x6
    800053e8:	57478793          	addi	a5,a5,1396 # 8000b958 <_ZL8finished>
    800053ec:	0017c783          	lbu	a5,1(a5)
    800053f0:	0ff7f793          	andi	a5,a5,255
    800053f4:	fc078ee3          	beqz	a5,800053d0 <_Z12testSleepingv+0x5c>
}
    800053f8:	03813083          	ld	ra,56(sp)
    800053fc:	03013403          	ld	s0,48(sp)
    80005400:	02813483          	ld	s1,40(sp)
    80005404:	04010113          	addi	sp,sp,64
    80005408:	00008067          	ret

000000008000540c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00113c23          	sd	ra,24(sp)
    80005414:	00813823          	sd	s0,16(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	02010413          	addi	s0,sp,32
    80005420:	00050493          	mv	s1,a0
    LOCK();
    80005424:	00100613          	li	a2,1
    80005428:	00000593          	li	a1,0
    8000542c:	00006517          	auipc	a0,0x6
    80005430:	53450513          	addi	a0,a0,1332 # 8000b960 <lockPrint>
    80005434:	ffffc097          	auipc	ra,0xffffc
    80005438:	cf0080e7          	jalr	-784(ra) # 80001124 <copy_and_swap>
    8000543c:	00050863          	beqz	a0,8000544c <_Z11printStringPKc+0x40>
    80005440:	ffffc097          	auipc	ra,0xffffc
    80005444:	340080e7          	jalr	832(ra) # 80001780 <_Z15thread_dispatchv>
    80005448:	fddff06f          	j	80005424 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000544c:	0004c503          	lbu	a0,0(s1)
    80005450:	00050a63          	beqz	a0,80005464 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	5c8080e7          	jalr	1480(ra) # 80001a1c <_Z4putcc>
        string++;
    8000545c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005460:	fedff06f          	j	8000544c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005464:	00000613          	li	a2,0
    80005468:	00100593          	li	a1,1
    8000546c:	00006517          	auipc	a0,0x6
    80005470:	4f450513          	addi	a0,a0,1268 # 8000b960 <lockPrint>
    80005474:	ffffc097          	auipc	ra,0xffffc
    80005478:	cb0080e7          	jalr	-848(ra) # 80001124 <copy_and_swap>
    8000547c:	fe0514e3          	bnez	a0,80005464 <_Z11printStringPKc+0x58>
}
    80005480:	01813083          	ld	ra,24(sp)
    80005484:	01013403          	ld	s0,16(sp)
    80005488:	00813483          	ld	s1,8(sp)
    8000548c:	02010113          	addi	sp,sp,32
    80005490:	00008067          	ret

0000000080005494 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005494:	fd010113          	addi	sp,sp,-48
    80005498:	02113423          	sd	ra,40(sp)
    8000549c:	02813023          	sd	s0,32(sp)
    800054a0:	00913c23          	sd	s1,24(sp)
    800054a4:	01213823          	sd	s2,16(sp)
    800054a8:	01313423          	sd	s3,8(sp)
    800054ac:	01413023          	sd	s4,0(sp)
    800054b0:	03010413          	addi	s0,sp,48
    800054b4:	00050993          	mv	s3,a0
    800054b8:	00058a13          	mv	s4,a1
    LOCK();
    800054bc:	00100613          	li	a2,1
    800054c0:	00000593          	li	a1,0
    800054c4:	00006517          	auipc	a0,0x6
    800054c8:	49c50513          	addi	a0,a0,1180 # 8000b960 <lockPrint>
    800054cc:	ffffc097          	auipc	ra,0xffffc
    800054d0:	c58080e7          	jalr	-936(ra) # 80001124 <copy_and_swap>
    800054d4:	00050863          	beqz	a0,800054e4 <_Z9getStringPci+0x50>
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	2a8080e7          	jalr	680(ra) # 80001780 <_Z15thread_dispatchv>
    800054e0:	fddff06f          	j	800054bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800054e4:	00000493          	li	s1,0
    800054e8:	0014891b          	addiw	s2,s1,1
    800054ec:	03495a63          	bge	s2,s4,80005520 <_Z9getStringPci+0x8c>
        cc = getc();
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	4dc080e7          	jalr	1244(ra) # 800019cc <_Z4getcv>
        if(cc < 1)
    800054f8:	02050463          	beqz	a0,80005520 <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    800054fc:	009984b3          	add	s1,s3,s1
    80005500:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005504:	00a00793          	li	a5,10
    80005508:	00f50a63          	beq	a0,a5,8000551c <_Z9getStringPci+0x88>
        buf[i++] = c;
    8000550c:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    80005510:	00d00793          	li	a5,13
    80005514:	fcf51ae3          	bne	a0,a5,800054e8 <_Z9getStringPci+0x54>
    80005518:	0080006f          	j	80005520 <_Z9getStringPci+0x8c>
        buf[i++] = c;
    8000551c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005520:	009984b3          	add	s1,s3,s1
    80005524:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005528:	00000613          	li	a2,0
    8000552c:	00100593          	li	a1,1
    80005530:	00006517          	auipc	a0,0x6
    80005534:	43050513          	addi	a0,a0,1072 # 8000b960 <lockPrint>
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	bec080e7          	jalr	-1044(ra) # 80001124 <copy_and_swap>
    80005540:	fe0514e3          	bnez	a0,80005528 <_Z9getStringPci+0x94>
    return buf;
}
    80005544:	00098513          	mv	a0,s3
    80005548:	02813083          	ld	ra,40(sp)
    8000554c:	02013403          	ld	s0,32(sp)
    80005550:	01813483          	ld	s1,24(sp)
    80005554:	01013903          	ld	s2,16(sp)
    80005558:	00813983          	ld	s3,8(sp)
    8000555c:	00013a03          	ld	s4,0(sp)
    80005560:	03010113          	addi	sp,sp,48
    80005564:	00008067          	ret

0000000080005568 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005568:	ff010113          	addi	sp,sp,-16
    8000556c:	00813423          	sd	s0,8(sp)
    80005570:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    80005574:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    80005578:	00054603          	lbu	a2,0(a0)
    8000557c:	fd06069b          	addiw	a3,a2,-48
    80005580:	0ff6f693          	andi	a3,a3,255
    80005584:	00900713          	li	a4,9
    80005588:	02d76063          	bltu	a4,a3,800055a8 <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    8000558c:	0027969b          	slliw	a3,a5,0x2
    80005590:	00f687bb          	addw	a5,a3,a5
    80005594:	0017971b          	slliw	a4,a5,0x1
    80005598:	00150513          	addi	a0,a0,1
    8000559c:	00c707bb          	addw	a5,a4,a2
    800055a0:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    800055a4:	fd5ff06f          	j	80005578 <_Z11stringToIntPKc+0x10>
    return n;
}
    800055a8:	00078513          	mv	a0,a5
    800055ac:	00813403          	ld	s0,8(sp)
    800055b0:	01010113          	addi	sp,sp,16
    800055b4:	00008067          	ret

00000000800055b8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800055b8:	fc010113          	addi	sp,sp,-64
    800055bc:	02113c23          	sd	ra,56(sp)
    800055c0:	02813823          	sd	s0,48(sp)
    800055c4:	02913423          	sd	s1,40(sp)
    800055c8:	03213023          	sd	s2,32(sp)
    800055cc:	01313c23          	sd	s3,24(sp)
    800055d0:	04010413          	addi	s0,sp,64
    800055d4:	00050493          	mv	s1,a0
    800055d8:	00058913          	mv	s2,a1
    800055dc:	00060993          	mv	s3,a2
    LOCK();
    800055e0:	00100613          	li	a2,1
    800055e4:	00000593          	li	a1,0
    800055e8:	00006517          	auipc	a0,0x6
    800055ec:	37850513          	addi	a0,a0,888 # 8000b960 <lockPrint>
    800055f0:	ffffc097          	auipc	ra,0xffffc
    800055f4:	b34080e7          	jalr	-1228(ra) # 80001124 <copy_and_swap>
    800055f8:	00050863          	beqz	a0,80005608 <_Z8printIntiii+0x50>
    800055fc:	ffffc097          	auipc	ra,0xffffc
    80005600:	184080e7          	jalr	388(ra) # 80001780 <_Z15thread_dispatchv>
    80005604:	fddff06f          	j	800055e0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005608:	00098463          	beqz	s3,80005610 <_Z8printIntiii+0x58>
    8000560c:	0004ca63          	bltz	s1,80005620 <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005610:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005614:	00000593          	li	a1,0
    }

    i = 0;
    80005618:	00000613          	li	a2,0
    8000561c:	0180006f          	j	80005634 <_Z8printIntiii+0x7c>
        x = -xx;
    80005620:	4090053b          	negw	a0,s1
        neg = 1;
    80005624:	00100593          	li	a1,1
        x = -xx;
    80005628:	ff1ff06f          	j	80005618 <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    8000562c:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    80005630:	00048613          	mv	a2,s1
    80005634:	0009079b          	sext.w	a5,s2
    80005638:	02f5773b          	remuw	a4,a0,a5
    8000563c:	0016049b          	addiw	s1,a2,1
    80005640:	02071693          	slli	a3,a4,0x20
    80005644:	0206d693          	srli	a3,a3,0x20
    80005648:	00006717          	auipc	a4,0x6
    8000564c:	10870713          	addi	a4,a4,264 # 8000b750 <digits>
    80005650:	00d70733          	add	a4,a4,a3
    80005654:	00074683          	lbu	a3,0(a4)
    80005658:	fd040713          	addi	a4,s0,-48
    8000565c:	00c70733          	add	a4,a4,a2
    80005660:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005664:	02f5573b          	divuw	a4,a0,a5
    80005668:	0007069b          	sext.w	a3,a4
    8000566c:	fcf570e3          	bgeu	a0,a5,8000562c <_Z8printIntiii+0x74>
    if(neg)
    80005670:	00058c63          	beqz	a1,80005688 <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    80005674:	fd040793          	addi	a5,s0,-48
    80005678:	009784b3          	add	s1,a5,s1
    8000567c:	02d00793          	li	a5,45
    80005680:	fef48823          	sb	a5,-16(s1)
    80005684:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005688:	fff4849b          	addiw	s1,s1,-1
    8000568c:	0004ce63          	bltz	s1,800056a8 <_Z8printIntiii+0xf0>
        putc(buf[i]);
    80005690:	fd040793          	addi	a5,s0,-48
    80005694:	009787b3          	add	a5,a5,s1
    80005698:	ff07c503          	lbu	a0,-16(a5)
    8000569c:	ffffc097          	auipc	ra,0xffffc
    800056a0:	380080e7          	jalr	896(ra) # 80001a1c <_Z4putcc>
    800056a4:	fe5ff06f          	j	80005688 <_Z8printIntiii+0xd0>

    UNLOCK();
    800056a8:	00000613          	li	a2,0
    800056ac:	00100593          	li	a1,1
    800056b0:	00006517          	auipc	a0,0x6
    800056b4:	2b050513          	addi	a0,a0,688 # 8000b960 <lockPrint>
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	a6c080e7          	jalr	-1428(ra) # 80001124 <copy_and_swap>
    800056c0:	fe0514e3          	bnez	a0,800056a8 <_Z8printIntiii+0xf0>
    800056c4:	03813083          	ld	ra,56(sp)
    800056c8:	03013403          	ld	s0,48(sp)
    800056cc:	02813483          	ld	s1,40(sp)
    800056d0:	02013903          	ld	s2,32(sp)
    800056d4:	01813983          	ld	s3,24(sp)
    800056d8:	04010113          	addi	sp,sp,64
    800056dc:	00008067          	ret

00000000800056e0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800056e0:	fe010113          	addi	sp,sp,-32
    800056e4:	00113c23          	sd	ra,24(sp)
    800056e8:	00813823          	sd	s0,16(sp)
    800056ec:	00913423          	sd	s1,8(sp)
    800056f0:	01213023          	sd	s2,0(sp)
    800056f4:	02010413          	addi	s0,sp,32
    800056f8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800056fc:	00000913          	li	s2,0
    80005700:	00c0006f          	j	8000570c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005704:	ffffc097          	auipc	ra,0xffffc
    80005708:	07c080e7          	jalr	124(ra) # 80001780 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	2c0080e7          	jalr	704(ra) # 800019cc <_Z4getcv>
    80005714:	0005059b          	sext.w	a1,a0
    80005718:	01b00793          	li	a5,27
    8000571c:	02f58a63          	beq	a1,a5,80005750 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80005720:	0084b503          	ld	a0,8(s1)
    80005724:	ffffe097          	auipc	ra,0xffffe
    80005728:	854080e7          	jalr	-1964(ra) # 80002f78 <_ZN6Buffer3putEi>
        i++;
    8000572c:	0019079b          	addiw	a5,s2,1
    80005730:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005734:	0004a683          	lw	a3,0(s1)
    80005738:	0026971b          	slliw	a4,a3,0x2
    8000573c:	00d7073b          	addw	a4,a4,a3
    80005740:	0017169b          	slliw	a3,a4,0x1
    80005744:	02d7e7bb          	remw	a5,a5,a3
    80005748:	fc0792e3          	bnez	a5,8000570c <_ZL16producerKeyboardPv+0x2c>
    8000574c:	fb9ff06f          	j	80005704 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80005750:	00100793          	li	a5,1
    80005754:	00006717          	auipc	a4,0x6
    80005758:	20f72a23          	sw	a5,532(a4) # 8000b968 <_ZL9threadEnd>
    data->buffer->put('!');
    8000575c:	02100593          	li	a1,33
    80005760:	0084b503          	ld	a0,8(s1)
    80005764:	ffffe097          	auipc	ra,0xffffe
    80005768:	814080e7          	jalr	-2028(ra) # 80002f78 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000576c:	0104b503          	ld	a0,16(s1)
    80005770:	ffffc097          	auipc	ra,0xffffc
    80005774:	1f0080e7          	jalr	496(ra) # 80001960 <_Z10sem_signalP10_semaphore>
}
    80005778:	01813083          	ld	ra,24(sp)
    8000577c:	01013403          	ld	s0,16(sp)
    80005780:	00813483          	ld	s1,8(sp)
    80005784:	00013903          	ld	s2,0(sp)
    80005788:	02010113          	addi	sp,sp,32
    8000578c:	00008067          	ret

0000000080005790 <_ZL8producerPv>:

static void producer(void *arg) {
    80005790:	fe010113          	addi	sp,sp,-32
    80005794:	00113c23          	sd	ra,24(sp)
    80005798:	00813823          	sd	s0,16(sp)
    8000579c:	00913423          	sd	s1,8(sp)
    800057a0:	01213023          	sd	s2,0(sp)
    800057a4:	02010413          	addi	s0,sp,32
    800057a8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800057ac:	00000913          	li	s2,0
    800057b0:	00c0006f          	j	800057bc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	fcc080e7          	jalr	-52(ra) # 80001780 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800057bc:	00006797          	auipc	a5,0x6
    800057c0:	1ac78793          	addi	a5,a5,428 # 8000b968 <_ZL9threadEnd>
    800057c4:	0007a783          	lw	a5,0(a5)
    800057c8:	0007879b          	sext.w	a5,a5
    800057cc:	02079e63          	bnez	a5,80005808 <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    800057d0:	0004a583          	lw	a1,0(s1)
    800057d4:	0305859b          	addiw	a1,a1,48
    800057d8:	0084b503          	ld	a0,8(s1)
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	79c080e7          	jalr	1948(ra) # 80002f78 <_ZN6Buffer3putEi>
        i++;
    800057e4:	0019079b          	addiw	a5,s2,1
    800057e8:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    800057ec:	0004a683          	lw	a3,0(s1)
    800057f0:	0026971b          	slliw	a4,a3,0x2
    800057f4:	00d7073b          	addw	a4,a4,a3
    800057f8:	0017169b          	slliw	a3,a4,0x1
    800057fc:	02d7e7bb          	remw	a5,a5,a3
    80005800:	fa079ee3          	bnez	a5,800057bc <_ZL8producerPv+0x2c>
    80005804:	fb1ff06f          	j	800057b4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80005808:	0104b503          	ld	a0,16(s1)
    8000580c:	ffffc097          	auipc	ra,0xffffc
    80005810:	154080e7          	jalr	340(ra) # 80001960 <_Z10sem_signalP10_semaphore>
}
    80005814:	01813083          	ld	ra,24(sp)
    80005818:	01013403          	ld	s0,16(sp)
    8000581c:	00813483          	ld	s1,8(sp)
    80005820:	00013903          	ld	s2,0(sp)
    80005824:	02010113          	addi	sp,sp,32
    80005828:	00008067          	ret

000000008000582c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000582c:	fd010113          	addi	sp,sp,-48
    80005830:	02113423          	sd	ra,40(sp)
    80005834:	02813023          	sd	s0,32(sp)
    80005838:	00913c23          	sd	s1,24(sp)
    8000583c:	01213823          	sd	s2,16(sp)
    80005840:	01313423          	sd	s3,8(sp)
    80005844:	03010413          	addi	s0,sp,48
    80005848:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000584c:	00000993          	li	s3,0
    80005850:	01c0006f          	j	8000586c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80005854:	ffffc097          	auipc	ra,0xffffc
    80005858:	f2c080e7          	jalr	-212(ra) # 80001780 <_Z15thread_dispatchv>
    8000585c:	0580006f          	j	800058b4 <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005860:	00a00513          	li	a0,10
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	1b8080e7          	jalr	440(ra) # 80001a1c <_Z4putcc>
    while (!threadEnd) {
    8000586c:	00006797          	auipc	a5,0x6
    80005870:	0fc78793          	addi	a5,a5,252 # 8000b968 <_ZL9threadEnd>
    80005874:	0007a783          	lw	a5,0(a5)
    80005878:	0007879b          	sext.w	a5,a5
    8000587c:	04079463          	bnez	a5,800058c4 <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    80005880:	00893503          	ld	a0,8(s2)
    80005884:	ffffd097          	auipc	ra,0xffffd
    80005888:	784080e7          	jalr	1924(ra) # 80003008 <_ZN6Buffer3getEv>
        i++;
    8000588c:	0019849b          	addiw	s1,s3,1
    80005890:	0004899b          	sext.w	s3,s1
        putc(key);
    80005894:	0ff57513          	andi	a0,a0,255
    80005898:	ffffc097          	auipc	ra,0xffffc
    8000589c:	184080e7          	jalr	388(ra) # 80001a1c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800058a0:	00092703          	lw	a4,0(s2)
    800058a4:	0027179b          	slliw	a5,a4,0x2
    800058a8:	00e787bb          	addw	a5,a5,a4
    800058ac:	02f4e7bb          	remw	a5,s1,a5
    800058b0:	fa0782e3          	beqz	a5,80005854 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800058b4:	05000793          	li	a5,80
    800058b8:	02f4e4bb          	remw	s1,s1,a5
    800058bc:	fa0498e3          	bnez	s1,8000586c <_ZL8consumerPv+0x40>
    800058c0:	fa1ff06f          	j	80005860 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    800058c4:	00893503          	ld	a0,8(s2)
    800058c8:	ffffd097          	auipc	ra,0xffffd
    800058cc:	7cc080e7          	jalr	1996(ra) # 80003094 <_ZN6Buffer6getCntEv>
    800058d0:	02a05063          	blez	a0,800058f0 <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    800058d4:	00893503          	ld	a0,8(s2)
    800058d8:	ffffd097          	auipc	ra,0xffffd
    800058dc:	730080e7          	jalr	1840(ra) # 80003008 <_ZN6Buffer3getEv>
        putc(key);
    800058e0:	0ff57513          	andi	a0,a0,255
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	138080e7          	jalr	312(ra) # 80001a1c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800058ec:	fd9ff06f          	j	800058c4 <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    800058f0:	01093503          	ld	a0,16(s2)
    800058f4:	ffffc097          	auipc	ra,0xffffc
    800058f8:	06c080e7          	jalr	108(ra) # 80001960 <_Z10sem_signalP10_semaphore>
}
    800058fc:	02813083          	ld	ra,40(sp)
    80005900:	02013403          	ld	s0,32(sp)
    80005904:	01813483          	ld	s1,24(sp)
    80005908:	01013903          	ld	s2,16(sp)
    8000590c:	00813983          	ld	s3,8(sp)
    80005910:	03010113          	addi	sp,sp,48
    80005914:	00008067          	ret

0000000080005918 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80005918:	f9010113          	addi	sp,sp,-112
    8000591c:	06113423          	sd	ra,104(sp)
    80005920:	06813023          	sd	s0,96(sp)
    80005924:	04913c23          	sd	s1,88(sp)
    80005928:	05213823          	sd	s2,80(sp)
    8000592c:	05313423          	sd	s3,72(sp)
    80005930:	05413023          	sd	s4,64(sp)
    80005934:	03513c23          	sd	s5,56(sp)
    80005938:	03613823          	sd	s6,48(sp)
    8000593c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80005940:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80005944:	00004517          	auipc	a0,0x4
    80005948:	e9c50513          	addi	a0,a0,-356 # 800097e0 <_ZTV8Consumer+0x28>
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	ac0080e7          	jalr	-1344(ra) # 8000540c <_Z11printStringPKc>
    getString(input, 30);
    80005954:	01e00593          	li	a1,30
    80005958:	fa040513          	addi	a0,s0,-96
    8000595c:	00000097          	auipc	ra,0x0
    80005960:	b38080e7          	jalr	-1224(ra) # 80005494 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005964:	fa040513          	addi	a0,s0,-96
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	c00080e7          	jalr	-1024(ra) # 80005568 <_Z11stringToIntPKc>
    80005970:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	e8c50513          	addi	a0,a0,-372 # 80009800 <_ZTV8Consumer+0x48>
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	a90080e7          	jalr	-1392(ra) # 8000540c <_Z11printStringPKc>
    getString(input, 30);
    80005984:	01e00593          	li	a1,30
    80005988:	fa040513          	addi	a0,s0,-96
    8000598c:	00000097          	auipc	ra,0x0
    80005990:	b08080e7          	jalr	-1272(ra) # 80005494 <_Z9getStringPci>
    n = stringToInt(input);
    80005994:	fa040513          	addi	a0,s0,-96
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	bd0080e7          	jalr	-1072(ra) # 80005568 <_Z11stringToIntPKc>
    800059a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800059a4:	00004517          	auipc	a0,0x4
    800059a8:	e7c50513          	addi	a0,a0,-388 # 80009820 <_ZTV8Consumer+0x68>
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	a60080e7          	jalr	-1440(ra) # 8000540c <_Z11printStringPKc>
    800059b4:	00000613          	li	a2,0
    800059b8:	00a00593          	li	a1,10
    800059bc:	00090513          	mv	a0,s2
    800059c0:	00000097          	auipc	ra,0x0
    800059c4:	bf8080e7          	jalr	-1032(ra) # 800055b8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800059c8:	00004517          	auipc	a0,0x4
    800059cc:	e7050513          	addi	a0,a0,-400 # 80009838 <_ZTV8Consumer+0x80>
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	a3c080e7          	jalr	-1476(ra) # 8000540c <_Z11printStringPKc>
    800059d8:	00000613          	li	a2,0
    800059dc:	00a00593          	li	a1,10
    800059e0:	00048513          	mv	a0,s1
    800059e4:	00000097          	auipc	ra,0x0
    800059e8:	bd4080e7          	jalr	-1068(ra) # 800055b8 <_Z8printIntiii>
    printString(".\n");
    800059ec:	00004517          	auipc	a0,0x4
    800059f0:	e6450513          	addi	a0,a0,-412 # 80009850 <_ZTV8Consumer+0x98>
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	a18080e7          	jalr	-1512(ra) # 8000540c <_Z11printStringPKc>
    if(threadNum > n) {
    800059fc:	0324c463          	blt	s1,s2,80005a24 <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    80005a00:	03205c63          	blez	s2,80005a38 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    80005a04:	03800513          	li	a0,56
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	3d0080e7          	jalr	976(ra) # 80001dd8 <_Znwm>
    80005a10:	00050a13          	mv	s4,a0
    80005a14:	00048593          	mv	a1,s1
    80005a18:	ffffd097          	auipc	ra,0xffffd
    80005a1c:	4c4080e7          	jalr	1220(ra) # 80002edc <_ZN6BufferC1Ei>
    80005a20:	0300006f          	j	80005a50 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005a24:	00004517          	auipc	a0,0x4
    80005a28:	e3450513          	addi	a0,a0,-460 # 80009858 <_ZTV8Consumer+0xa0>
    80005a2c:	00000097          	auipc	ra,0x0
    80005a30:	9e0080e7          	jalr	-1568(ra) # 8000540c <_Z11printStringPKc>
        return;
    80005a34:	0140006f          	j	80005a48 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005a38:	00004517          	auipc	a0,0x4
    80005a3c:	e6050513          	addi	a0,a0,-416 # 80009898 <_ZTV8Consumer+0xe0>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	9cc080e7          	jalr	-1588(ra) # 8000540c <_Z11printStringPKc>
        return;
    80005a48:	000b0113          	mv	sp,s6
    80005a4c:	1680006f          	j	80005bb4 <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80005a50:	00000593          	li	a1,0
    80005a54:	00006517          	auipc	a0,0x6
    80005a58:	f1c50513          	addi	a0,a0,-228 # 8000b970 <_ZL10waitForAll>
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	d70080e7          	jalr	-656(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    80005a64:	00391793          	slli	a5,s2,0x3
    80005a68:	00f78793          	addi	a5,a5,15
    80005a6c:	ff07f793          	andi	a5,a5,-16
    80005a70:	40f10133          	sub	sp,sp,a5
    80005a74:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80005a78:	0019079b          	addiw	a5,s2,1
    80005a7c:	00179713          	slli	a4,a5,0x1
    80005a80:	00f70733          	add	a4,a4,a5
    80005a84:	00371793          	slli	a5,a4,0x3
    80005a88:	00f78793          	addi	a5,a5,15
    80005a8c:	ff07f793          	andi	a5,a5,-16
    80005a90:	40f10133          	sub	sp,sp,a5
    80005a94:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80005a98:	00191713          	slli	a4,s2,0x1
    80005a9c:	012706b3          	add	a3,a4,s2
    80005aa0:	00369793          	slli	a5,a3,0x3
    80005aa4:	00f987b3          	add	a5,s3,a5
    80005aa8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005aac:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80005ab0:	00006697          	auipc	a3,0x6
    80005ab4:	ec068693          	addi	a3,a3,-320 # 8000b970 <_ZL10waitForAll>
    80005ab8:	0006b683          	ld	a3,0(a3)
    80005abc:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80005ac0:	012707b3          	add	a5,a4,s2
    80005ac4:	00379613          	slli	a2,a5,0x3
    80005ac8:	00c98633          	add	a2,s3,a2
    80005acc:	00000597          	auipc	a1,0x0
    80005ad0:	d6058593          	addi	a1,a1,-672 # 8000582c <_ZL8consumerPv>
    80005ad4:	f9840513          	addi	a0,s0,-104
    80005ad8:	ffffc097          	auipc	ra,0xffffc
    80005adc:	bf8080e7          	jalr	-1032(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005ae0:	00000493          	li	s1,0
    80005ae4:	0280006f          	j	80005b0c <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    80005ae8:	00000597          	auipc	a1,0x0
    80005aec:	bf858593          	addi	a1,a1,-1032 # 800056e0 <_ZL16producerKeyboardPv>
                      data + i);
    80005af0:	00171793          	slli	a5,a4,0x1
    80005af4:	00e787b3          	add	a5,a5,a4
    80005af8:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    80005afc:	00c98633          	add	a2,s3,a2
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	bd0080e7          	jalr	-1072(ra) # 800016d0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005b08:	0014849b          	addiw	s1,s1,1
    80005b0c:	0524d463          	bge	s1,s2,80005b54 <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    80005b10:	00149713          	slli	a4,s1,0x1
    80005b14:	00970733          	add	a4,a4,s1
    80005b18:	00371793          	slli	a5,a4,0x3
    80005b1c:	00f987b3          	add	a5,s3,a5
    80005b20:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005b24:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80005b28:	00006717          	auipc	a4,0x6
    80005b2c:	e4870713          	addi	a4,a4,-440 # 8000b970 <_ZL10waitForAll>
    80005b30:	00073703          	ld	a4,0(a4)
    80005b34:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80005b38:	00048713          	mv	a4,s1
    80005b3c:	00349513          	slli	a0,s1,0x3
    80005b40:	00aa8533          	add	a0,s5,a0
    80005b44:	fa9052e3          	blez	s1,80005ae8 <_Z22producerConsumer_C_APIv+0x1d0>
    80005b48:	00000597          	auipc	a1,0x0
    80005b4c:	c4858593          	addi	a1,a1,-952 # 80005790 <_ZL8producerPv>
    80005b50:	fa1ff06f          	j	80005af0 <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	c2c080e7          	jalr	-980(ra) # 80001780 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005b5c:	00000493          	li	s1,0
    80005b60:	02994063          	blt	s2,s1,80005b80 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    80005b64:	00006797          	auipc	a5,0x6
    80005b68:	e0c78793          	addi	a5,a5,-500 # 8000b970 <_ZL10waitForAll>
    80005b6c:	0007b503          	ld	a0,0(a5)
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	da0080e7          	jalr	-608(ra) # 80001910 <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80005b78:	0014849b          	addiw	s1,s1,1
    80005b7c:	fe5ff06f          	j	80005b60 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    80005b80:	00006797          	auipc	a5,0x6
    80005b84:	df078793          	addi	a5,a5,-528 # 8000b970 <_ZL10waitForAll>
    80005b88:	0007b503          	ld	a0,0(a5)
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	d18080e7          	jalr	-744(ra) # 800018a4 <_Z9sem_closeP10_semaphore>
    delete buffer;
    80005b94:	000a0e63          	beqz	s4,80005bb0 <_Z22producerConsumer_C_APIv+0x298>
    80005b98:	000a0513          	mv	a0,s4
    80005b9c:	ffffd097          	auipc	ra,0xffffd
    80005ba0:	580080e7          	jalr	1408(ra) # 8000311c <_ZN6BufferD1Ev>
    80005ba4:	000a0513          	mv	a0,s4
    80005ba8:	ffffc097          	auipc	ra,0xffffc
    80005bac:	2b0080e7          	jalr	688(ra) # 80001e58 <_ZdlPv>
    80005bb0:	000b0113          	mv	sp,s6

}
    80005bb4:	f9040113          	addi	sp,s0,-112
    80005bb8:	06813083          	ld	ra,104(sp)
    80005bbc:	06013403          	ld	s0,96(sp)
    80005bc0:	05813483          	ld	s1,88(sp)
    80005bc4:	05013903          	ld	s2,80(sp)
    80005bc8:	04813983          	ld	s3,72(sp)
    80005bcc:	04013a03          	ld	s4,64(sp)
    80005bd0:	03813a83          	ld	s5,56(sp)
    80005bd4:	03013b03          	ld	s6,48(sp)
    80005bd8:	07010113          	addi	sp,sp,112
    80005bdc:	00008067          	ret
    80005be0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80005be4:	000a0513          	mv	a0,s4
    80005be8:	ffffc097          	auipc	ra,0xffffc
    80005bec:	270080e7          	jalr	624(ra) # 80001e58 <_ZdlPv>
    80005bf0:	00048513          	mv	a0,s1
    80005bf4:	00007097          	auipc	ra,0x7
    80005bf8:	e84080e7          	jalr	-380(ra) # 8000ca78 <_Unwind_Resume>

0000000080005bfc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005bfc:	fd010113          	addi	sp,sp,-48
    80005c00:	02113423          	sd	ra,40(sp)
    80005c04:	02813023          	sd	s0,32(sp)
    80005c08:	00913c23          	sd	s1,24(sp)
    80005c0c:	01213823          	sd	s2,16(sp)
    80005c10:	01313423          	sd	s3,8(sp)
    80005c14:	03010413          	addi	s0,sp,48
    80005c18:	00050493          	mv	s1,a0
    80005c1c:	00058993          	mv	s3,a1
    80005c20:	0015879b          	addiw	a5,a1,1
    80005c24:	0007851b          	sext.w	a0,a5
    80005c28:	00f4a023          	sw	a5,0(s1)
    80005c2c:	0004a823          	sw	zero,16(s1)
    80005c30:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c34:	00251513          	slli	a0,a0,0x2
    80005c38:	ffffc097          	auipc	ra,0xffffc
    80005c3c:	90c080e7          	jalr	-1780(ra) # 80001544 <_Z9mem_allocm>
    80005c40:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c44:	01000513          	li	a0,16
    80005c48:	ffffc097          	auipc	ra,0xffffc
    80005c4c:	190080e7          	jalr	400(ra) # 80001dd8 <_Znwm>
    80005c50:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005c54:	00004797          	auipc	a5,0x4
    80005c58:	b0478793          	addi	a5,a5,-1276 # 80009758 <_ZTV9Semaphore+0x10>
    80005c5c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005c60:	00000593          	li	a1,0
    80005c64:	00850513          	addi	a0,a0,8
    80005c68:	ffffc097          	auipc	ra,0xffffc
    80005c6c:	b64080e7          	jalr	-1180(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    80005c70:	00050463          	beqz	a0,80005c78 <_ZN9BufferCPPC1Ei+0x7c>
            myHandle = nullptr;
    80005c74:	00093423          	sd	zero,8(s2)
    80005c78:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c7c:	01000513          	li	a0,16
    80005c80:	ffffc097          	auipc	ra,0xffffc
    80005c84:	158080e7          	jalr	344(ra) # 80001dd8 <_Znwm>
    80005c88:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005c8c:	00004797          	auipc	a5,0x4
    80005c90:	acc78793          	addi	a5,a5,-1332 # 80009758 <_ZTV9Semaphore+0x10>
    80005c94:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005c98:	00098593          	mv	a1,s3
    80005c9c:	00850513          	addi	a0,a0,8
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	b2c080e7          	jalr	-1236(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    80005ca8:	00050463          	beqz	a0,80005cb0 <_ZN9BufferCPPC1Ei+0xb4>
            myHandle = nullptr;
    80005cac:	00093423          	sd	zero,8(s2)
    80005cb0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005cb4:	01000513          	li	a0,16
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	120080e7          	jalr	288(ra) # 80001dd8 <_Znwm>
    80005cc0:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005cc4:	00004797          	auipc	a5,0x4
    80005cc8:	a9478793          	addi	a5,a5,-1388 # 80009758 <_ZTV9Semaphore+0x10>
    80005ccc:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005cd0:	00100593          	li	a1,1
    80005cd4:	00850513          	addi	a0,a0,8
    80005cd8:	ffffc097          	auipc	ra,0xffffc
    80005cdc:	af4080e7          	jalr	-1292(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    80005ce0:	00050463          	beqz	a0,80005ce8 <_ZN9BufferCPPC1Ei+0xec>
            myHandle = nullptr;
    80005ce4:	00093423          	sd	zero,8(s2)
    80005ce8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005cec:	01000513          	li	a0,16
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	0e8080e7          	jalr	232(ra) # 80001dd8 <_Znwm>
    80005cf8:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005cfc:	00004797          	auipc	a5,0x4
    80005d00:	a5c78793          	addi	a5,a5,-1444 # 80009758 <_ZTV9Semaphore+0x10>
    80005d04:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005d08:	00100593          	li	a1,1
    80005d0c:	00850513          	addi	a0,a0,8
    80005d10:	ffffc097          	auipc	ra,0xffffc
    80005d14:	abc080e7          	jalr	-1348(ra) # 800017cc <_Z8sem_openPP10_semaphorej>
    80005d18:	00050463          	beqz	a0,80005d20 <_ZN9BufferCPPC1Ei+0x124>
            myHandle = nullptr;
    80005d1c:	00093423          	sd	zero,8(s2)
    80005d20:	0324b823          	sd	s2,48(s1)
}
    80005d24:	02813083          	ld	ra,40(sp)
    80005d28:	02013403          	ld	s0,32(sp)
    80005d2c:	01813483          	ld	s1,24(sp)
    80005d30:	01013903          	ld	s2,16(sp)
    80005d34:	00813983          	ld	s3,8(sp)
    80005d38:	03010113          	addi	sp,sp,48
    80005d3c:	00008067          	ret
    80005d40:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005d44:	00090513          	mv	a0,s2
    80005d48:	ffffc097          	auipc	ra,0xffffc
    80005d4c:	110080e7          	jalr	272(ra) # 80001e58 <_ZdlPv>
    80005d50:	00048513          	mv	a0,s1
    80005d54:	00007097          	auipc	ra,0x7
    80005d58:	d24080e7          	jalr	-732(ra) # 8000ca78 <_Unwind_Resume>
    80005d5c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d60:	00090513          	mv	a0,s2
    80005d64:	ffffc097          	auipc	ra,0xffffc
    80005d68:	0f4080e7          	jalr	244(ra) # 80001e58 <_ZdlPv>
    80005d6c:	00048513          	mv	a0,s1
    80005d70:	00007097          	auipc	ra,0x7
    80005d74:	d08080e7          	jalr	-760(ra) # 8000ca78 <_Unwind_Resume>
    80005d78:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005d7c:	00090513          	mv	a0,s2
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	0d8080e7          	jalr	216(ra) # 80001e58 <_ZdlPv>
    80005d88:	00048513          	mv	a0,s1
    80005d8c:	00007097          	auipc	ra,0x7
    80005d90:	cec080e7          	jalr	-788(ra) # 8000ca78 <_Unwind_Resume>
    80005d94:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d98:	00090513          	mv	a0,s2
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	0bc080e7          	jalr	188(ra) # 80001e58 <_ZdlPv>
    80005da4:	00048513          	mv	a0,s1
    80005da8:	00007097          	auipc	ra,0x7
    80005dac:	cd0080e7          	jalr	-816(ra) # 8000ca78 <_Unwind_Resume>

0000000080005db0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005db0:	fe010113          	addi	sp,sp,-32
    80005db4:	00113c23          	sd	ra,24(sp)
    80005db8:	00813823          	sd	s0,16(sp)
    80005dbc:	00913423          	sd	s1,8(sp)
    80005dc0:	01213023          	sd	s2,0(sp)
    80005dc4:	02010413          	addi	s0,sp,32
    80005dc8:	00050493          	mv	s1,a0
    80005dcc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005dd0:	01853783          	ld	a5,24(a0)
        if (myHandle == nullptr) {
    80005dd4:	0087b503          	ld	a0,8(a5)
    80005dd8:	00050663          	beqz	a0,80005de4 <_ZN9BufferCPP3putEi+0x34>
        return sem_wait(myHandle);
    80005ddc:	ffffc097          	auipc	ra,0xffffc
    80005de0:	b34080e7          	jalr	-1228(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    80005de4:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005de8:	0087b503          	ld	a0,8(a5)
    80005dec:	00050663          	beqz	a0,80005df8 <_ZN9BufferCPP3putEi+0x48>
        return sem_wait(myHandle);
    80005df0:	ffffc097          	auipc	ra,0xffffc
    80005df4:	b20080e7          	jalr	-1248(ra) # 80001910 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80005df8:	0084b783          	ld	a5,8(s1)
    80005dfc:	0144a703          	lw	a4,20(s1)
    80005e00:	00271713          	slli	a4,a4,0x2
    80005e04:	00e787b3          	add	a5,a5,a4
    80005e08:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e0c:	0144a783          	lw	a5,20(s1)
    80005e10:	0017879b          	addiw	a5,a5,1
    80005e14:	0004a703          	lw	a4,0(s1)
    80005e18:	02e7e7bb          	remw	a5,a5,a4
    80005e1c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005e20:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005e24:	0087b503          	ld	a0,8(a5)
    80005e28:	00050663          	beqz	a0,80005e34 <_ZN9BufferCPP3putEi+0x84>
        return sem_signal(myHandle);
    80005e2c:	ffffc097          	auipc	ra,0xffffc
    80005e30:	b34080e7          	jalr	-1228(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    80005e34:	0204b783          	ld	a5,32(s1)
        if (myHandle == nullptr) {
    80005e38:	0087b503          	ld	a0,8(a5)
    80005e3c:	00050663          	beqz	a0,80005e48 <_ZN9BufferCPP3putEi+0x98>
        return sem_signal(myHandle);
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	b20080e7          	jalr	-1248(ra) # 80001960 <_Z10sem_signalP10_semaphore>

}
    80005e48:	01813083          	ld	ra,24(sp)
    80005e4c:	01013403          	ld	s0,16(sp)
    80005e50:	00813483          	ld	s1,8(sp)
    80005e54:	00013903          	ld	s2,0(sp)
    80005e58:	02010113          	addi	sp,sp,32
    80005e5c:	00008067          	ret

0000000080005e60 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e60:	fe010113          	addi	sp,sp,-32
    80005e64:	00113c23          	sd	ra,24(sp)
    80005e68:	00813823          	sd	s0,16(sp)
    80005e6c:	00913423          	sd	s1,8(sp)
    80005e70:	01213023          	sd	s2,0(sp)
    80005e74:	02010413          	addi	s0,sp,32
    80005e78:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e7c:	02053783          	ld	a5,32(a0)
        if (myHandle == nullptr) {
    80005e80:	0087b503          	ld	a0,8(a5)
    80005e84:	00050663          	beqz	a0,80005e90 <_ZN9BufferCPP3getEv+0x30>
        return sem_wait(myHandle);
    80005e88:	ffffc097          	auipc	ra,0xffffc
    80005e8c:	a88080e7          	jalr	-1400(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    80005e90:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80005e94:	0087b503          	ld	a0,8(a5)
    80005e98:	00050663          	beqz	a0,80005ea4 <_ZN9BufferCPP3getEv+0x44>
        return sem_wait(myHandle);
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	a74080e7          	jalr	-1420(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80005ea4:	0084b703          	ld	a4,8(s1)
    80005ea8:	0104a783          	lw	a5,16(s1)
    80005eac:	00279693          	slli	a3,a5,0x2
    80005eb0:	00d70733          	add	a4,a4,a3
    80005eb4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005eb8:	0017879b          	addiw	a5,a5,1
    80005ebc:	0004a703          	lw	a4,0(s1)
    80005ec0:	02e7e7bb          	remw	a5,a5,a4
    80005ec4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005ec8:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80005ecc:	0087b503          	ld	a0,8(a5)
    80005ed0:	00050663          	beqz	a0,80005edc <_ZN9BufferCPP3getEv+0x7c>
        return sem_signal(myHandle);
    80005ed4:	ffffc097          	auipc	ra,0xffffc
    80005ed8:	a8c080e7          	jalr	-1396(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    80005edc:	0184b783          	ld	a5,24(s1)
        if (myHandle == nullptr) {
    80005ee0:	0087b503          	ld	a0,8(a5)
    80005ee4:	00050663          	beqz	a0,80005ef0 <_ZN9BufferCPP3getEv+0x90>
        return sem_signal(myHandle);
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	a78080e7          	jalr	-1416(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80005ef0:	00090513          	mv	a0,s2
    80005ef4:	01813083          	ld	ra,24(sp)
    80005ef8:	01013403          	ld	s0,16(sp)
    80005efc:	00813483          	ld	s1,8(sp)
    80005f00:	00013903          	ld	s2,0(sp)
    80005f04:	02010113          	addi	sp,sp,32
    80005f08:	00008067          	ret

0000000080005f0c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005f0c:	fe010113          	addi	sp,sp,-32
    80005f10:	00113c23          	sd	ra,24(sp)
    80005f14:	00813823          	sd	s0,16(sp)
    80005f18:	00913423          	sd	s1,8(sp)
    80005f1c:	01213023          	sd	s2,0(sp)
    80005f20:	02010413          	addi	s0,sp,32
    80005f24:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005f28:	02853783          	ld	a5,40(a0)
        if (myHandle == nullptr) {
    80005f2c:	0087b503          	ld	a0,8(a5)
    80005f30:	00050663          	beqz	a0,80005f3c <_ZN9BufferCPP6getCntEv+0x30>
        return sem_wait(myHandle);
    80005f34:	ffffc097          	auipc	ra,0xffffc
    80005f38:	9dc080e7          	jalr	-1572(ra) # 80001910 <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    80005f3c:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005f40:	0087b503          	ld	a0,8(a5)
    80005f44:	00050663          	beqz	a0,80005f50 <_ZN9BufferCPP6getCntEv+0x44>
        return sem_wait(myHandle);
    80005f48:	ffffc097          	auipc	ra,0xffffc
    80005f4c:	9c8080e7          	jalr	-1592(ra) # 80001910 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80005f50:	0144a783          	lw	a5,20(s1)
    80005f54:	0104a903          	lw	s2,16(s1)
    80005f58:	0527c663          	blt	a5,s2,80005fa4 <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    80005f5c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005f60:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005f64:	0087b503          	ld	a0,8(a5)
    80005f68:	00050663          	beqz	a0,80005f74 <_ZN9BufferCPP6getCntEv+0x68>
        return sem_signal(myHandle);
    80005f6c:	ffffc097          	auipc	ra,0xffffc
    80005f70:	9f4080e7          	jalr	-1548(ra) # 80001960 <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    80005f74:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80005f78:	0087b503          	ld	a0,8(a5)
    80005f7c:	00050663          	beqz	a0,80005f88 <_ZN9BufferCPP6getCntEv+0x7c>
        return sem_signal(myHandle);
    80005f80:	ffffc097          	auipc	ra,0xffffc
    80005f84:	9e0080e7          	jalr	-1568(ra) # 80001960 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80005f88:	00090513          	mv	a0,s2
    80005f8c:	01813083          	ld	ra,24(sp)
    80005f90:	01013403          	ld	s0,16(sp)
    80005f94:	00813483          	ld	s1,8(sp)
    80005f98:	00013903          	ld	s2,0(sp)
    80005f9c:	02010113          	addi	sp,sp,32
    80005fa0:	00008067          	ret
        ret = cap - head + tail;
    80005fa4:	0004a703          	lw	a4,0(s1)
    80005fa8:	4127093b          	subw	s2,a4,s2
    80005fac:	00f9093b          	addw	s2,s2,a5
    80005fb0:	fb1ff06f          	j	80005f60 <_ZN9BufferCPP6getCntEv+0x54>

0000000080005fb4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00113c23          	sd	ra,24(sp)
    80005fbc:	00813823          	sd	s0,16(sp)
    80005fc0:	00913423          	sd	s1,8(sp)
    80005fc4:	02010413          	addi	s0,sp,32
    80005fc8:	00050493          	mv	s1,a0
    static void putc(char c) { __putc(c); };
    80005fcc:	00a00513          	li	a0,10
    80005fd0:	00002097          	auipc	ra,0x2
    80005fd4:	1ac080e7          	jalr	428(ra) # 8000817c <__putc>
    printString("Buffer deleted!\n");
    80005fd8:	00003517          	auipc	a0,0x3
    80005fdc:	75850513          	addi	a0,a0,1880 # 80009730 <_ZZ24debug_print_internal_intmE6digits+0x420>
    80005fe0:	fffff097          	auipc	ra,0xfffff
    80005fe4:	42c080e7          	jalr	1068(ra) # 8000540c <_Z11printStringPKc>
    while (getCnt()) {
    80005fe8:	00048513          	mv	a0,s1
    80005fec:	00000097          	auipc	ra,0x0
    80005ff0:	f20080e7          	jalr	-224(ra) # 80005f0c <_ZN9BufferCPP6getCntEv>
    80005ff4:	02050c63          	beqz	a0,8000602c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005ff8:	0084b783          	ld	a5,8(s1)
    80005ffc:	0104a703          	lw	a4,16(s1)
    80006000:	00271713          	slli	a4,a4,0x2
    80006004:	00e787b3          	add	a5,a5,a4
    80006008:	0007c503          	lbu	a0,0(a5)
    8000600c:	00002097          	auipc	ra,0x2
    80006010:	170080e7          	jalr	368(ra) # 8000817c <__putc>
        head = (head + 1) % cap;
    80006014:	0104a783          	lw	a5,16(s1)
    80006018:	0017879b          	addiw	a5,a5,1
    8000601c:	0004a703          	lw	a4,0(s1)
    80006020:	02e7e7bb          	remw	a5,a5,a4
    80006024:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006028:	fc1ff06f          	j	80005fe8 <_ZN9BufferCPPD1Ev+0x34>
    8000602c:	02100513          	li	a0,33
    80006030:	00002097          	auipc	ra,0x2
    80006034:	14c080e7          	jalr	332(ra) # 8000817c <__putc>
    80006038:	00a00513          	li	a0,10
    8000603c:	00002097          	auipc	ra,0x2
    80006040:	140080e7          	jalr	320(ra) # 8000817c <__putc>
    mem_free(buffer);
    80006044:	0084b503          	ld	a0,8(s1)
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	564080e7          	jalr	1380(ra) # 800015ac <_Z8mem_freePv>
    delete itemAvailable;
    80006050:	0204b503          	ld	a0,32(s1)
    80006054:	00050863          	beqz	a0,80006064 <_ZN9BufferCPPD1Ev+0xb0>
    80006058:	00053783          	ld	a5,0(a0)
    8000605c:	0087b783          	ld	a5,8(a5)
    80006060:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006064:	0184b503          	ld	a0,24(s1)
    80006068:	00050863          	beqz	a0,80006078 <_ZN9BufferCPPD1Ev+0xc4>
    8000606c:	00053783          	ld	a5,0(a0)
    80006070:	0087b783          	ld	a5,8(a5)
    80006074:	000780e7          	jalr	a5
    delete mutexTail;
    80006078:	0304b503          	ld	a0,48(s1)
    8000607c:	00050863          	beqz	a0,8000608c <_ZN9BufferCPPD1Ev+0xd8>
    80006080:	00053783          	ld	a5,0(a0)
    80006084:	0087b783          	ld	a5,8(a5)
    80006088:	000780e7          	jalr	a5
    delete mutexHead;
    8000608c:	0284b503          	ld	a0,40(s1)
    80006090:	00050863          	beqz	a0,800060a0 <_ZN9BufferCPPD1Ev+0xec>
    80006094:	00053783          	ld	a5,0(a0)
    80006098:	0087b783          	ld	a5,8(a5)
    8000609c:	000780e7          	jalr	a5
}
    800060a0:	01813083          	ld	ra,24(sp)
    800060a4:	01013403          	ld	s0,16(sp)
    800060a8:	00813483          	ld	s1,8(sp)
    800060ac:	02010113          	addi	sp,sp,32
    800060b0:	00008067          	ret

00000000800060b4 <start>:
    800060b4:	ff010113          	addi	sp,sp,-16
    800060b8:	00813423          	sd	s0,8(sp)
    800060bc:	01010413          	addi	s0,sp,16
    800060c0:	300027f3          	csrr	a5,mstatus
    800060c4:	ffffe737          	lui	a4,0xffffe
    800060c8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1bef>
    800060cc:	00e7f7b3          	and	a5,a5,a4
    800060d0:	00001737          	lui	a4,0x1
    800060d4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800060d8:	00e7e7b3          	or	a5,a5,a4
    800060dc:	30079073          	csrw	mstatus,a5
    800060e0:	00000797          	auipc	a5,0x0
    800060e4:	16078793          	addi	a5,a5,352 # 80006240 <system_main>
    800060e8:	34179073          	csrw	mepc,a5
    800060ec:	00000793          	li	a5,0
    800060f0:	18079073          	csrw	satp,a5
    800060f4:	000107b7          	lui	a5,0x10
    800060f8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800060fc:	30279073          	csrw	medeleg,a5
    80006100:	30379073          	csrw	mideleg,a5
    80006104:	104027f3          	csrr	a5,sie
    80006108:	2227e793          	ori	a5,a5,546
    8000610c:	10479073          	csrw	sie,a5
    80006110:	fff00793          	li	a5,-1
    80006114:	00a7d793          	srli	a5,a5,0xa
    80006118:	3b079073          	csrw	pmpaddr0,a5
    8000611c:	00f00793          	li	a5,15
    80006120:	3a079073          	csrw	pmpcfg0,a5
    80006124:	f14027f3          	csrr	a5,mhartid
    80006128:	0200c737          	lui	a4,0x200c
    8000612c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006130:	0007869b          	sext.w	a3,a5
    80006134:	00269713          	slli	a4,a3,0x2
    80006138:	000f4637          	lui	a2,0xf4
    8000613c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006140:	00d70733          	add	a4,a4,a3
    80006144:	0037979b          	slliw	a5,a5,0x3
    80006148:	020046b7          	lui	a3,0x2004
    8000614c:	00d787b3          	add	a5,a5,a3
    80006150:	00c585b3          	add	a1,a1,a2
    80006154:	00371693          	slli	a3,a4,0x3
    80006158:	00006717          	auipc	a4,0x6
    8000615c:	85870713          	addi	a4,a4,-1960 # 8000b9b0 <timer_scratch>
    80006160:	00b7b023          	sd	a1,0(a5)
    80006164:	00d70733          	add	a4,a4,a3
    80006168:	00f73c23          	sd	a5,24(a4)
    8000616c:	02c73023          	sd	a2,32(a4)
    80006170:	34071073          	csrw	mscratch,a4
    80006174:	00000797          	auipc	a5,0x0
    80006178:	6ec78793          	addi	a5,a5,1772 # 80006860 <timervec>
    8000617c:	30579073          	csrw	mtvec,a5
    80006180:	300027f3          	csrr	a5,mstatus
    80006184:	0087e793          	ori	a5,a5,8
    80006188:	30079073          	csrw	mstatus,a5
    8000618c:	304027f3          	csrr	a5,mie
    80006190:	0807e793          	ori	a5,a5,128
    80006194:	30479073          	csrw	mie,a5
    80006198:	f14027f3          	csrr	a5,mhartid
    8000619c:	0007879b          	sext.w	a5,a5
    800061a0:	00078213          	mv	tp,a5
    800061a4:	30200073          	mret
    800061a8:	00813403          	ld	s0,8(sp)
    800061ac:	01010113          	addi	sp,sp,16
    800061b0:	00008067          	ret

00000000800061b4 <timerinit>:
    800061b4:	ff010113          	addi	sp,sp,-16
    800061b8:	00813423          	sd	s0,8(sp)
    800061bc:	01010413          	addi	s0,sp,16
    800061c0:	f14027f3          	csrr	a5,mhartid
    800061c4:	0200c737          	lui	a4,0x200c
    800061c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800061cc:	0007869b          	sext.w	a3,a5
    800061d0:	00269713          	slli	a4,a3,0x2
    800061d4:	000f4637          	lui	a2,0xf4
    800061d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800061dc:	00d70733          	add	a4,a4,a3
    800061e0:	0037979b          	slliw	a5,a5,0x3
    800061e4:	020046b7          	lui	a3,0x2004
    800061e8:	00d787b3          	add	a5,a5,a3
    800061ec:	00c585b3          	add	a1,a1,a2
    800061f0:	00371693          	slli	a3,a4,0x3
    800061f4:	00005717          	auipc	a4,0x5
    800061f8:	7bc70713          	addi	a4,a4,1980 # 8000b9b0 <timer_scratch>
    800061fc:	00b7b023          	sd	a1,0(a5)
    80006200:	00d70733          	add	a4,a4,a3
    80006204:	00f73c23          	sd	a5,24(a4)
    80006208:	02c73023          	sd	a2,32(a4)
    8000620c:	34071073          	csrw	mscratch,a4
    80006210:	00000797          	auipc	a5,0x0
    80006214:	65078793          	addi	a5,a5,1616 # 80006860 <timervec>
    80006218:	30579073          	csrw	mtvec,a5
    8000621c:	300027f3          	csrr	a5,mstatus
    80006220:	0087e793          	ori	a5,a5,8
    80006224:	30079073          	csrw	mstatus,a5
    80006228:	304027f3          	csrr	a5,mie
    8000622c:	0807e793          	ori	a5,a5,128
    80006230:	30479073          	csrw	mie,a5
    80006234:	00813403          	ld	s0,8(sp)
    80006238:	01010113          	addi	sp,sp,16
    8000623c:	00008067          	ret

0000000080006240 <system_main>:
    80006240:	fe010113          	addi	sp,sp,-32
    80006244:	00813823          	sd	s0,16(sp)
    80006248:	00913423          	sd	s1,8(sp)
    8000624c:	00113c23          	sd	ra,24(sp)
    80006250:	02010413          	addi	s0,sp,32
    80006254:	00000097          	auipc	ra,0x0
    80006258:	0c4080e7          	jalr	196(ra) # 80006318 <cpuid>
    8000625c:	00005497          	auipc	s1,0x5
    80006260:	71c48493          	addi	s1,s1,1820 # 8000b978 <started>
    80006264:	02050263          	beqz	a0,80006288 <system_main+0x48>
    80006268:	0004a783          	lw	a5,0(s1)
    8000626c:	0007879b          	sext.w	a5,a5
    80006270:	fe078ce3          	beqz	a5,80006268 <system_main+0x28>
    80006274:	0ff0000f          	fence
    80006278:	00004517          	auipc	a0,0x4
    8000627c:	a4850513          	addi	a0,a0,-1464 # 80009cc0 <_ZTV12ConsumerSync+0x68>
    80006280:	00001097          	auipc	ra,0x1
    80006284:	a7c080e7          	jalr	-1412(ra) # 80006cfc <panic>
    80006288:	00001097          	auipc	ra,0x1
    8000628c:	9d0080e7          	jalr	-1584(ra) # 80006c58 <consoleinit>
    80006290:	00001097          	auipc	ra,0x1
    80006294:	15c080e7          	jalr	348(ra) # 800073ec <printfinit>
    80006298:	00003517          	auipc	a0,0x3
    8000629c:	12050513          	addi	a0,a0,288 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800062a0:	00001097          	auipc	ra,0x1
    800062a4:	ab8080e7          	jalr	-1352(ra) # 80006d58 <__printf>
    800062a8:	00004517          	auipc	a0,0x4
    800062ac:	9e850513          	addi	a0,a0,-1560 # 80009c90 <_ZTV12ConsumerSync+0x38>
    800062b0:	00001097          	auipc	ra,0x1
    800062b4:	aa8080e7          	jalr	-1368(ra) # 80006d58 <__printf>
    800062b8:	00003517          	auipc	a0,0x3
    800062bc:	10050513          	addi	a0,a0,256 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800062c0:	00001097          	auipc	ra,0x1
    800062c4:	a98080e7          	jalr	-1384(ra) # 80006d58 <__printf>
    800062c8:	00001097          	auipc	ra,0x1
    800062cc:	4b0080e7          	jalr	1200(ra) # 80007778 <kinit>
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	148080e7          	jalr	328(ra) # 80006418 <trapinit>
    800062d8:	00000097          	auipc	ra,0x0
    800062dc:	16c080e7          	jalr	364(ra) # 80006444 <trapinithart>
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	5c0080e7          	jalr	1472(ra) # 800068a0 <plicinit>
    800062e8:	00000097          	auipc	ra,0x0
    800062ec:	5e0080e7          	jalr	1504(ra) # 800068c8 <plicinithart>
    800062f0:	00000097          	auipc	ra,0x0
    800062f4:	078080e7          	jalr	120(ra) # 80006368 <userinit>
    800062f8:	0ff0000f          	fence
    800062fc:	00100793          	li	a5,1
    80006300:	00004517          	auipc	a0,0x4
    80006304:	9a850513          	addi	a0,a0,-1624 # 80009ca8 <_ZTV12ConsumerSync+0x50>
    80006308:	00f4a023          	sw	a5,0(s1)
    8000630c:	00001097          	auipc	ra,0x1
    80006310:	a4c080e7          	jalr	-1460(ra) # 80006d58 <__printf>
    80006314:	0000006f          	j	80006314 <system_main+0xd4>

0000000080006318 <cpuid>:
    80006318:	ff010113          	addi	sp,sp,-16
    8000631c:	00813423          	sd	s0,8(sp)
    80006320:	01010413          	addi	s0,sp,16
    80006324:	00020513          	mv	a0,tp
    80006328:	00813403          	ld	s0,8(sp)
    8000632c:	0005051b          	sext.w	a0,a0
    80006330:	01010113          	addi	sp,sp,16
    80006334:	00008067          	ret

0000000080006338 <mycpu>:
    80006338:	ff010113          	addi	sp,sp,-16
    8000633c:	00813423          	sd	s0,8(sp)
    80006340:	01010413          	addi	s0,sp,16
    80006344:	00020793          	mv	a5,tp
    80006348:	00813403          	ld	s0,8(sp)
    8000634c:	0007879b          	sext.w	a5,a5
    80006350:	00779793          	slli	a5,a5,0x7
    80006354:	00006517          	auipc	a0,0x6
    80006358:	68c50513          	addi	a0,a0,1676 # 8000c9e0 <cpus>
    8000635c:	00f50533          	add	a0,a0,a5
    80006360:	01010113          	addi	sp,sp,16
    80006364:	00008067          	ret

0000000080006368 <userinit>:
    80006368:	ff010113          	addi	sp,sp,-16
    8000636c:	00813423          	sd	s0,8(sp)
    80006370:	01010413          	addi	s0,sp,16
    80006374:	00813403          	ld	s0,8(sp)
    80006378:	01010113          	addi	sp,sp,16
    8000637c:	ffffc317          	auipc	t1,0xffffc
    80006380:	d7430067          	jr	-652(t1) # 800020f0 <main>

0000000080006384 <either_copyout>:
    80006384:	ff010113          	addi	sp,sp,-16
    80006388:	00813023          	sd	s0,0(sp)
    8000638c:	00113423          	sd	ra,8(sp)
    80006390:	01010413          	addi	s0,sp,16
    80006394:	02051663          	bnez	a0,800063c0 <either_copyout+0x3c>
    80006398:	00058513          	mv	a0,a1
    8000639c:	00060593          	mv	a1,a2
    800063a0:	0006861b          	sext.w	a2,a3
    800063a4:	00002097          	auipc	ra,0x2
    800063a8:	c60080e7          	jalr	-928(ra) # 80008004 <__memmove>
    800063ac:	00813083          	ld	ra,8(sp)
    800063b0:	00013403          	ld	s0,0(sp)
    800063b4:	00000513          	li	a0,0
    800063b8:	01010113          	addi	sp,sp,16
    800063bc:	00008067          	ret
    800063c0:	00004517          	auipc	a0,0x4
    800063c4:	92850513          	addi	a0,a0,-1752 # 80009ce8 <_ZTV12ConsumerSync+0x90>
    800063c8:	00001097          	auipc	ra,0x1
    800063cc:	934080e7          	jalr	-1740(ra) # 80006cfc <panic>

00000000800063d0 <either_copyin>:
    800063d0:	ff010113          	addi	sp,sp,-16
    800063d4:	00813023          	sd	s0,0(sp)
    800063d8:	00113423          	sd	ra,8(sp)
    800063dc:	01010413          	addi	s0,sp,16
    800063e0:	02059463          	bnez	a1,80006408 <either_copyin+0x38>
    800063e4:	00060593          	mv	a1,a2
    800063e8:	0006861b          	sext.w	a2,a3
    800063ec:	00002097          	auipc	ra,0x2
    800063f0:	c18080e7          	jalr	-1000(ra) # 80008004 <__memmove>
    800063f4:	00813083          	ld	ra,8(sp)
    800063f8:	00013403          	ld	s0,0(sp)
    800063fc:	00000513          	li	a0,0
    80006400:	01010113          	addi	sp,sp,16
    80006404:	00008067          	ret
    80006408:	00004517          	auipc	a0,0x4
    8000640c:	90850513          	addi	a0,a0,-1784 # 80009d10 <_ZTV12ConsumerSync+0xb8>
    80006410:	00001097          	auipc	ra,0x1
    80006414:	8ec080e7          	jalr	-1812(ra) # 80006cfc <panic>

0000000080006418 <trapinit>:
    80006418:	ff010113          	addi	sp,sp,-16
    8000641c:	00813423          	sd	s0,8(sp)
    80006420:	01010413          	addi	s0,sp,16
    80006424:	00813403          	ld	s0,8(sp)
    80006428:	00004597          	auipc	a1,0x4
    8000642c:	91058593          	addi	a1,a1,-1776 # 80009d38 <_ZTV12ConsumerSync+0xe0>
    80006430:	00006517          	auipc	a0,0x6
    80006434:	63050513          	addi	a0,a0,1584 # 8000ca60 <tickslock>
    80006438:	01010113          	addi	sp,sp,16
    8000643c:	00001317          	auipc	t1,0x1
    80006440:	5cc30067          	jr	1484(t1) # 80007a08 <initlock>

0000000080006444 <trapinithart>:
    80006444:	ff010113          	addi	sp,sp,-16
    80006448:	00813423          	sd	s0,8(sp)
    8000644c:	01010413          	addi	s0,sp,16
    80006450:	00000797          	auipc	a5,0x0
    80006454:	30078793          	addi	a5,a5,768 # 80006750 <kernelvec>
    80006458:	10579073          	csrw	stvec,a5
    8000645c:	00813403          	ld	s0,8(sp)
    80006460:	01010113          	addi	sp,sp,16
    80006464:	00008067          	ret

0000000080006468 <usertrap>:
    80006468:	ff010113          	addi	sp,sp,-16
    8000646c:	00813423          	sd	s0,8(sp)
    80006470:	01010413          	addi	s0,sp,16
    80006474:	00813403          	ld	s0,8(sp)
    80006478:	01010113          	addi	sp,sp,16
    8000647c:	00008067          	ret

0000000080006480 <usertrapret>:
    80006480:	ff010113          	addi	sp,sp,-16
    80006484:	00813423          	sd	s0,8(sp)
    80006488:	01010413          	addi	s0,sp,16
    8000648c:	00813403          	ld	s0,8(sp)
    80006490:	01010113          	addi	sp,sp,16
    80006494:	00008067          	ret

0000000080006498 <kerneltrap>:
    80006498:	fe010113          	addi	sp,sp,-32
    8000649c:	00813823          	sd	s0,16(sp)
    800064a0:	00113c23          	sd	ra,24(sp)
    800064a4:	00913423          	sd	s1,8(sp)
    800064a8:	02010413          	addi	s0,sp,32
    800064ac:	142025f3          	csrr	a1,scause
    800064b0:	100027f3          	csrr	a5,sstatus
    800064b4:	0027f793          	andi	a5,a5,2
    800064b8:	10079c63          	bnez	a5,800065d0 <kerneltrap+0x138>
    800064bc:	142027f3          	csrr	a5,scause
    800064c0:	0207ce63          	bltz	a5,800064fc <kerneltrap+0x64>
    800064c4:	00004517          	auipc	a0,0x4
    800064c8:	8bc50513          	addi	a0,a0,-1860 # 80009d80 <_ZTV12ConsumerSync+0x128>
    800064cc:	00001097          	auipc	ra,0x1
    800064d0:	88c080e7          	jalr	-1908(ra) # 80006d58 <__printf>
    800064d4:	141025f3          	csrr	a1,sepc
    800064d8:	14302673          	csrr	a2,stval
    800064dc:	00004517          	auipc	a0,0x4
    800064e0:	8b450513          	addi	a0,a0,-1868 # 80009d90 <_ZTV12ConsumerSync+0x138>
    800064e4:	00001097          	auipc	ra,0x1
    800064e8:	874080e7          	jalr	-1932(ra) # 80006d58 <__printf>
    800064ec:	00004517          	auipc	a0,0x4
    800064f0:	8bc50513          	addi	a0,a0,-1860 # 80009da8 <_ZTV12ConsumerSync+0x150>
    800064f4:	00001097          	auipc	ra,0x1
    800064f8:	808080e7          	jalr	-2040(ra) # 80006cfc <panic>
    800064fc:	0ff7f713          	andi	a4,a5,255
    80006500:	00900693          	li	a3,9
    80006504:	04d70063          	beq	a4,a3,80006544 <kerneltrap+0xac>
    80006508:	fff00713          	li	a4,-1
    8000650c:	03f71713          	slli	a4,a4,0x3f
    80006510:	00170713          	addi	a4,a4,1
    80006514:	fae798e3          	bne	a5,a4,800064c4 <kerneltrap+0x2c>
    80006518:	00000097          	auipc	ra,0x0
    8000651c:	e00080e7          	jalr	-512(ra) # 80006318 <cpuid>
    80006520:	06050663          	beqz	a0,8000658c <kerneltrap+0xf4>
    80006524:	144027f3          	csrr	a5,sip
    80006528:	ffd7f793          	andi	a5,a5,-3
    8000652c:	14479073          	csrw	sip,a5
    80006530:	01813083          	ld	ra,24(sp)
    80006534:	01013403          	ld	s0,16(sp)
    80006538:	00813483          	ld	s1,8(sp)
    8000653c:	02010113          	addi	sp,sp,32
    80006540:	00008067          	ret
    80006544:	00000097          	auipc	ra,0x0
    80006548:	3d0080e7          	jalr	976(ra) # 80006914 <plic_claim>
    8000654c:	00a00793          	li	a5,10
    80006550:	00050493          	mv	s1,a0
    80006554:	06f50863          	beq	a0,a5,800065c4 <kerneltrap+0x12c>
    80006558:	fc050ce3          	beqz	a0,80006530 <kerneltrap+0x98>
    8000655c:	00050593          	mv	a1,a0
    80006560:	00004517          	auipc	a0,0x4
    80006564:	80050513          	addi	a0,a0,-2048 # 80009d60 <_ZTV12ConsumerSync+0x108>
    80006568:	00000097          	auipc	ra,0x0
    8000656c:	7f0080e7          	jalr	2032(ra) # 80006d58 <__printf>
    80006570:	01013403          	ld	s0,16(sp)
    80006574:	01813083          	ld	ra,24(sp)
    80006578:	00048513          	mv	a0,s1
    8000657c:	00813483          	ld	s1,8(sp)
    80006580:	02010113          	addi	sp,sp,32
    80006584:	00000317          	auipc	t1,0x0
    80006588:	3c830067          	jr	968(t1) # 8000694c <plic_complete>
    8000658c:	00006517          	auipc	a0,0x6
    80006590:	4d450513          	addi	a0,a0,1236 # 8000ca60 <tickslock>
    80006594:	00001097          	auipc	ra,0x1
    80006598:	498080e7          	jalr	1176(ra) # 80007a2c <acquire>
    8000659c:	00005717          	auipc	a4,0x5
    800065a0:	3e070713          	addi	a4,a4,992 # 8000b97c <ticks>
    800065a4:	00072783          	lw	a5,0(a4)
    800065a8:	00006517          	auipc	a0,0x6
    800065ac:	4b850513          	addi	a0,a0,1208 # 8000ca60 <tickslock>
    800065b0:	0017879b          	addiw	a5,a5,1
    800065b4:	00f72023          	sw	a5,0(a4)
    800065b8:	00001097          	auipc	ra,0x1
    800065bc:	540080e7          	jalr	1344(ra) # 80007af8 <release>
    800065c0:	f65ff06f          	j	80006524 <kerneltrap+0x8c>
    800065c4:	00001097          	auipc	ra,0x1
    800065c8:	09c080e7          	jalr	156(ra) # 80007660 <uartintr>
    800065cc:	fa5ff06f          	j	80006570 <kerneltrap+0xd8>
    800065d0:	00003517          	auipc	a0,0x3
    800065d4:	77050513          	addi	a0,a0,1904 # 80009d40 <_ZTV12ConsumerSync+0xe8>
    800065d8:	00000097          	auipc	ra,0x0
    800065dc:	724080e7          	jalr	1828(ra) # 80006cfc <panic>

00000000800065e0 <clockintr>:
    800065e0:	fe010113          	addi	sp,sp,-32
    800065e4:	00813823          	sd	s0,16(sp)
    800065e8:	00913423          	sd	s1,8(sp)
    800065ec:	00113c23          	sd	ra,24(sp)
    800065f0:	02010413          	addi	s0,sp,32
    800065f4:	00006497          	auipc	s1,0x6
    800065f8:	46c48493          	addi	s1,s1,1132 # 8000ca60 <tickslock>
    800065fc:	00048513          	mv	a0,s1
    80006600:	00001097          	auipc	ra,0x1
    80006604:	42c080e7          	jalr	1068(ra) # 80007a2c <acquire>
    80006608:	00005717          	auipc	a4,0x5
    8000660c:	37470713          	addi	a4,a4,884 # 8000b97c <ticks>
    80006610:	00072783          	lw	a5,0(a4)
    80006614:	01013403          	ld	s0,16(sp)
    80006618:	01813083          	ld	ra,24(sp)
    8000661c:	00048513          	mv	a0,s1
    80006620:	0017879b          	addiw	a5,a5,1
    80006624:	00813483          	ld	s1,8(sp)
    80006628:	00f72023          	sw	a5,0(a4)
    8000662c:	02010113          	addi	sp,sp,32
    80006630:	00001317          	auipc	t1,0x1
    80006634:	4c830067          	jr	1224(t1) # 80007af8 <release>

0000000080006638 <devintr>:
    80006638:	142027f3          	csrr	a5,scause
    8000663c:	00000513          	li	a0,0
    80006640:	0007c463          	bltz	a5,80006648 <devintr+0x10>
    80006644:	00008067          	ret
    80006648:	fe010113          	addi	sp,sp,-32
    8000664c:	00813823          	sd	s0,16(sp)
    80006650:	00113c23          	sd	ra,24(sp)
    80006654:	00913423          	sd	s1,8(sp)
    80006658:	02010413          	addi	s0,sp,32
    8000665c:	0ff7f713          	andi	a4,a5,255
    80006660:	00900693          	li	a3,9
    80006664:	04d70c63          	beq	a4,a3,800066bc <devintr+0x84>
    80006668:	fff00713          	li	a4,-1
    8000666c:	03f71713          	slli	a4,a4,0x3f
    80006670:	00170713          	addi	a4,a4,1
    80006674:	00e78c63          	beq	a5,a4,8000668c <devintr+0x54>
    80006678:	01813083          	ld	ra,24(sp)
    8000667c:	01013403          	ld	s0,16(sp)
    80006680:	00813483          	ld	s1,8(sp)
    80006684:	02010113          	addi	sp,sp,32
    80006688:	00008067          	ret
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	c8c080e7          	jalr	-884(ra) # 80006318 <cpuid>
    80006694:	06050663          	beqz	a0,80006700 <devintr+0xc8>
    80006698:	144027f3          	csrr	a5,sip
    8000669c:	ffd7f793          	andi	a5,a5,-3
    800066a0:	14479073          	csrw	sip,a5
    800066a4:	01813083          	ld	ra,24(sp)
    800066a8:	01013403          	ld	s0,16(sp)
    800066ac:	00813483          	ld	s1,8(sp)
    800066b0:	00200513          	li	a0,2
    800066b4:	02010113          	addi	sp,sp,32
    800066b8:	00008067          	ret
    800066bc:	00000097          	auipc	ra,0x0
    800066c0:	258080e7          	jalr	600(ra) # 80006914 <plic_claim>
    800066c4:	00a00793          	li	a5,10
    800066c8:	00050493          	mv	s1,a0
    800066cc:	06f50663          	beq	a0,a5,80006738 <devintr+0x100>
    800066d0:	00100513          	li	a0,1
    800066d4:	fa0482e3          	beqz	s1,80006678 <devintr+0x40>
    800066d8:	00048593          	mv	a1,s1
    800066dc:	00003517          	auipc	a0,0x3
    800066e0:	68450513          	addi	a0,a0,1668 # 80009d60 <_ZTV12ConsumerSync+0x108>
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	674080e7          	jalr	1652(ra) # 80006d58 <__printf>
    800066ec:	00048513          	mv	a0,s1
    800066f0:	00000097          	auipc	ra,0x0
    800066f4:	25c080e7          	jalr	604(ra) # 8000694c <plic_complete>
    800066f8:	00100513          	li	a0,1
    800066fc:	f7dff06f          	j	80006678 <devintr+0x40>
    80006700:	00006517          	auipc	a0,0x6
    80006704:	36050513          	addi	a0,a0,864 # 8000ca60 <tickslock>
    80006708:	00001097          	auipc	ra,0x1
    8000670c:	324080e7          	jalr	804(ra) # 80007a2c <acquire>
    80006710:	00005717          	auipc	a4,0x5
    80006714:	26c70713          	addi	a4,a4,620 # 8000b97c <ticks>
    80006718:	00072783          	lw	a5,0(a4)
    8000671c:	00006517          	auipc	a0,0x6
    80006720:	34450513          	addi	a0,a0,836 # 8000ca60 <tickslock>
    80006724:	0017879b          	addiw	a5,a5,1
    80006728:	00f72023          	sw	a5,0(a4)
    8000672c:	00001097          	auipc	ra,0x1
    80006730:	3cc080e7          	jalr	972(ra) # 80007af8 <release>
    80006734:	f65ff06f          	j	80006698 <devintr+0x60>
    80006738:	00001097          	auipc	ra,0x1
    8000673c:	f28080e7          	jalr	-216(ra) # 80007660 <uartintr>
    80006740:	fadff06f          	j	800066ec <devintr+0xb4>
	...

0000000080006750 <kernelvec>:
    80006750:	f0010113          	addi	sp,sp,-256
    80006754:	00113023          	sd	ra,0(sp)
    80006758:	00213423          	sd	sp,8(sp)
    8000675c:	00313823          	sd	gp,16(sp)
    80006760:	00413c23          	sd	tp,24(sp)
    80006764:	02513023          	sd	t0,32(sp)
    80006768:	02613423          	sd	t1,40(sp)
    8000676c:	02713823          	sd	t2,48(sp)
    80006770:	02813c23          	sd	s0,56(sp)
    80006774:	04913023          	sd	s1,64(sp)
    80006778:	04a13423          	sd	a0,72(sp)
    8000677c:	04b13823          	sd	a1,80(sp)
    80006780:	04c13c23          	sd	a2,88(sp)
    80006784:	06d13023          	sd	a3,96(sp)
    80006788:	06e13423          	sd	a4,104(sp)
    8000678c:	06f13823          	sd	a5,112(sp)
    80006790:	07013c23          	sd	a6,120(sp)
    80006794:	09113023          	sd	a7,128(sp)
    80006798:	09213423          	sd	s2,136(sp)
    8000679c:	09313823          	sd	s3,144(sp)
    800067a0:	09413c23          	sd	s4,152(sp)
    800067a4:	0b513023          	sd	s5,160(sp)
    800067a8:	0b613423          	sd	s6,168(sp)
    800067ac:	0b713823          	sd	s7,176(sp)
    800067b0:	0b813c23          	sd	s8,184(sp)
    800067b4:	0d913023          	sd	s9,192(sp)
    800067b8:	0da13423          	sd	s10,200(sp)
    800067bc:	0db13823          	sd	s11,208(sp)
    800067c0:	0dc13c23          	sd	t3,216(sp)
    800067c4:	0fd13023          	sd	t4,224(sp)
    800067c8:	0fe13423          	sd	t5,232(sp)
    800067cc:	0ff13823          	sd	t6,240(sp)
    800067d0:	cc9ff0ef          	jal	ra,80006498 <kerneltrap>
    800067d4:	00013083          	ld	ra,0(sp)
    800067d8:	00813103          	ld	sp,8(sp)
    800067dc:	01013183          	ld	gp,16(sp)
    800067e0:	02013283          	ld	t0,32(sp)
    800067e4:	02813303          	ld	t1,40(sp)
    800067e8:	03013383          	ld	t2,48(sp)
    800067ec:	03813403          	ld	s0,56(sp)
    800067f0:	04013483          	ld	s1,64(sp)
    800067f4:	04813503          	ld	a0,72(sp)
    800067f8:	05013583          	ld	a1,80(sp)
    800067fc:	05813603          	ld	a2,88(sp)
    80006800:	06013683          	ld	a3,96(sp)
    80006804:	06813703          	ld	a4,104(sp)
    80006808:	07013783          	ld	a5,112(sp)
    8000680c:	07813803          	ld	a6,120(sp)
    80006810:	08013883          	ld	a7,128(sp)
    80006814:	08813903          	ld	s2,136(sp)
    80006818:	09013983          	ld	s3,144(sp)
    8000681c:	09813a03          	ld	s4,152(sp)
    80006820:	0a013a83          	ld	s5,160(sp)
    80006824:	0a813b03          	ld	s6,168(sp)
    80006828:	0b013b83          	ld	s7,176(sp)
    8000682c:	0b813c03          	ld	s8,184(sp)
    80006830:	0c013c83          	ld	s9,192(sp)
    80006834:	0c813d03          	ld	s10,200(sp)
    80006838:	0d013d83          	ld	s11,208(sp)
    8000683c:	0d813e03          	ld	t3,216(sp)
    80006840:	0e013e83          	ld	t4,224(sp)
    80006844:	0e813f03          	ld	t5,232(sp)
    80006848:	0f013f83          	ld	t6,240(sp)
    8000684c:	10010113          	addi	sp,sp,256
    80006850:	10200073          	sret
    80006854:	00000013          	nop
    80006858:	00000013          	nop
    8000685c:	00000013          	nop

0000000080006860 <timervec>:
    80006860:	34051573          	csrrw	a0,mscratch,a0
    80006864:	00b53023          	sd	a1,0(a0)
    80006868:	00c53423          	sd	a2,8(a0)
    8000686c:	00d53823          	sd	a3,16(a0)
    80006870:	01853583          	ld	a1,24(a0)
    80006874:	02053603          	ld	a2,32(a0)
    80006878:	0005b683          	ld	a3,0(a1)
    8000687c:	00c686b3          	add	a3,a3,a2
    80006880:	00d5b023          	sd	a3,0(a1)
    80006884:	00200593          	li	a1,2
    80006888:	14459073          	csrw	sip,a1
    8000688c:	01053683          	ld	a3,16(a0)
    80006890:	00853603          	ld	a2,8(a0)
    80006894:	00053583          	ld	a1,0(a0)
    80006898:	34051573          	csrrw	a0,mscratch,a0
    8000689c:	30200073          	mret

00000000800068a0 <plicinit>:
    800068a0:	ff010113          	addi	sp,sp,-16
    800068a4:	00813423          	sd	s0,8(sp)
    800068a8:	01010413          	addi	s0,sp,16
    800068ac:	00813403          	ld	s0,8(sp)
    800068b0:	0c0007b7          	lui	a5,0xc000
    800068b4:	00100713          	li	a4,1
    800068b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800068bc:	00e7a223          	sw	a4,4(a5)
    800068c0:	01010113          	addi	sp,sp,16
    800068c4:	00008067          	ret

00000000800068c8 <plicinithart>:
    800068c8:	ff010113          	addi	sp,sp,-16
    800068cc:	00813023          	sd	s0,0(sp)
    800068d0:	00113423          	sd	ra,8(sp)
    800068d4:	01010413          	addi	s0,sp,16
    800068d8:	00000097          	auipc	ra,0x0
    800068dc:	a40080e7          	jalr	-1472(ra) # 80006318 <cpuid>
    800068e0:	0085171b          	slliw	a4,a0,0x8
    800068e4:	0c0027b7          	lui	a5,0xc002
    800068e8:	00e787b3          	add	a5,a5,a4
    800068ec:	40200713          	li	a4,1026
    800068f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800068f4:	00813083          	ld	ra,8(sp)
    800068f8:	00013403          	ld	s0,0(sp)
    800068fc:	00d5151b          	slliw	a0,a0,0xd
    80006900:	0c2017b7          	lui	a5,0xc201
    80006904:	00a78533          	add	a0,a5,a0
    80006908:	00052023          	sw	zero,0(a0)
    8000690c:	01010113          	addi	sp,sp,16
    80006910:	00008067          	ret

0000000080006914 <plic_claim>:
    80006914:	ff010113          	addi	sp,sp,-16
    80006918:	00813023          	sd	s0,0(sp)
    8000691c:	00113423          	sd	ra,8(sp)
    80006920:	01010413          	addi	s0,sp,16
    80006924:	00000097          	auipc	ra,0x0
    80006928:	9f4080e7          	jalr	-1548(ra) # 80006318 <cpuid>
    8000692c:	00813083          	ld	ra,8(sp)
    80006930:	00013403          	ld	s0,0(sp)
    80006934:	00d5151b          	slliw	a0,a0,0xd
    80006938:	0c2017b7          	lui	a5,0xc201
    8000693c:	00a78533          	add	a0,a5,a0
    80006940:	00452503          	lw	a0,4(a0)
    80006944:	01010113          	addi	sp,sp,16
    80006948:	00008067          	ret

000000008000694c <plic_complete>:
    8000694c:	fe010113          	addi	sp,sp,-32
    80006950:	00813823          	sd	s0,16(sp)
    80006954:	00913423          	sd	s1,8(sp)
    80006958:	00113c23          	sd	ra,24(sp)
    8000695c:	02010413          	addi	s0,sp,32
    80006960:	00050493          	mv	s1,a0
    80006964:	00000097          	auipc	ra,0x0
    80006968:	9b4080e7          	jalr	-1612(ra) # 80006318 <cpuid>
    8000696c:	01813083          	ld	ra,24(sp)
    80006970:	01013403          	ld	s0,16(sp)
    80006974:	00d5179b          	slliw	a5,a0,0xd
    80006978:	0c201737          	lui	a4,0xc201
    8000697c:	00f707b3          	add	a5,a4,a5
    80006980:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006984:	00813483          	ld	s1,8(sp)
    80006988:	02010113          	addi	sp,sp,32
    8000698c:	00008067          	ret

0000000080006990 <consolewrite>:
    80006990:	fb010113          	addi	sp,sp,-80
    80006994:	04813023          	sd	s0,64(sp)
    80006998:	04113423          	sd	ra,72(sp)
    8000699c:	02913c23          	sd	s1,56(sp)
    800069a0:	03213823          	sd	s2,48(sp)
    800069a4:	03313423          	sd	s3,40(sp)
    800069a8:	03413023          	sd	s4,32(sp)
    800069ac:	01513c23          	sd	s5,24(sp)
    800069b0:	05010413          	addi	s0,sp,80
    800069b4:	06c05c63          	blez	a2,80006a2c <consolewrite+0x9c>
    800069b8:	00060993          	mv	s3,a2
    800069bc:	00050a13          	mv	s4,a0
    800069c0:	00058493          	mv	s1,a1
    800069c4:	00000913          	li	s2,0
    800069c8:	fff00a93          	li	s5,-1
    800069cc:	01c0006f          	j	800069e8 <consolewrite+0x58>
    800069d0:	fbf44503          	lbu	a0,-65(s0)
    800069d4:	0019091b          	addiw	s2,s2,1
    800069d8:	00148493          	addi	s1,s1,1
    800069dc:	00001097          	auipc	ra,0x1
    800069e0:	a9c080e7          	jalr	-1380(ra) # 80007478 <uartputc>
    800069e4:	03298063          	beq	s3,s2,80006a04 <consolewrite+0x74>
    800069e8:	00048613          	mv	a2,s1
    800069ec:	00100693          	li	a3,1
    800069f0:	000a0593          	mv	a1,s4
    800069f4:	fbf40513          	addi	a0,s0,-65
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	9d8080e7          	jalr	-1576(ra) # 800063d0 <either_copyin>
    80006a00:	fd5518e3          	bne	a0,s5,800069d0 <consolewrite+0x40>
    80006a04:	04813083          	ld	ra,72(sp)
    80006a08:	04013403          	ld	s0,64(sp)
    80006a0c:	03813483          	ld	s1,56(sp)
    80006a10:	02813983          	ld	s3,40(sp)
    80006a14:	02013a03          	ld	s4,32(sp)
    80006a18:	01813a83          	ld	s5,24(sp)
    80006a1c:	00090513          	mv	a0,s2
    80006a20:	03013903          	ld	s2,48(sp)
    80006a24:	05010113          	addi	sp,sp,80
    80006a28:	00008067          	ret
    80006a2c:	00000913          	li	s2,0
    80006a30:	fd5ff06f          	j	80006a04 <consolewrite+0x74>

0000000080006a34 <consoleread>:
    80006a34:	f9010113          	addi	sp,sp,-112
    80006a38:	06813023          	sd	s0,96(sp)
    80006a3c:	04913c23          	sd	s1,88(sp)
    80006a40:	05213823          	sd	s2,80(sp)
    80006a44:	05313423          	sd	s3,72(sp)
    80006a48:	05413023          	sd	s4,64(sp)
    80006a4c:	03513c23          	sd	s5,56(sp)
    80006a50:	03613823          	sd	s6,48(sp)
    80006a54:	03713423          	sd	s7,40(sp)
    80006a58:	03813023          	sd	s8,32(sp)
    80006a5c:	06113423          	sd	ra,104(sp)
    80006a60:	01913c23          	sd	s9,24(sp)
    80006a64:	07010413          	addi	s0,sp,112
    80006a68:	00060b93          	mv	s7,a2
    80006a6c:	00050913          	mv	s2,a0
    80006a70:	00058c13          	mv	s8,a1
    80006a74:	00060b1b          	sext.w	s6,a2
    80006a78:	00006497          	auipc	s1,0x6
    80006a7c:	01048493          	addi	s1,s1,16 # 8000ca88 <cons>
    80006a80:	00400993          	li	s3,4
    80006a84:	fff00a13          	li	s4,-1
    80006a88:	00a00a93          	li	s5,10
    80006a8c:	05705e63          	blez	s7,80006ae8 <consoleread+0xb4>
    80006a90:	09c4a703          	lw	a4,156(s1)
    80006a94:	0984a783          	lw	a5,152(s1)
    80006a98:	0007071b          	sext.w	a4,a4
    80006a9c:	08e78463          	beq	a5,a4,80006b24 <consoleread+0xf0>
    80006aa0:	07f7f713          	andi	a4,a5,127
    80006aa4:	00e48733          	add	a4,s1,a4
    80006aa8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006aac:	0017869b          	addiw	a3,a5,1
    80006ab0:	08d4ac23          	sw	a3,152(s1)
    80006ab4:	00070c9b          	sext.w	s9,a4
    80006ab8:	0b370663          	beq	a4,s3,80006b64 <consoleread+0x130>
    80006abc:	00100693          	li	a3,1
    80006ac0:	f9f40613          	addi	a2,s0,-97
    80006ac4:	000c0593          	mv	a1,s8
    80006ac8:	00090513          	mv	a0,s2
    80006acc:	f8e40fa3          	sb	a4,-97(s0)
    80006ad0:	00000097          	auipc	ra,0x0
    80006ad4:	8b4080e7          	jalr	-1868(ra) # 80006384 <either_copyout>
    80006ad8:	01450863          	beq	a0,s4,80006ae8 <consoleread+0xb4>
    80006adc:	001c0c13          	addi	s8,s8,1
    80006ae0:	fffb8b9b          	addiw	s7,s7,-1
    80006ae4:	fb5c94e3          	bne	s9,s5,80006a8c <consoleread+0x58>
    80006ae8:	000b851b          	sext.w	a0,s7
    80006aec:	06813083          	ld	ra,104(sp)
    80006af0:	06013403          	ld	s0,96(sp)
    80006af4:	05813483          	ld	s1,88(sp)
    80006af8:	05013903          	ld	s2,80(sp)
    80006afc:	04813983          	ld	s3,72(sp)
    80006b00:	04013a03          	ld	s4,64(sp)
    80006b04:	03813a83          	ld	s5,56(sp)
    80006b08:	02813b83          	ld	s7,40(sp)
    80006b0c:	02013c03          	ld	s8,32(sp)
    80006b10:	01813c83          	ld	s9,24(sp)
    80006b14:	40ab053b          	subw	a0,s6,a0
    80006b18:	03013b03          	ld	s6,48(sp)
    80006b1c:	07010113          	addi	sp,sp,112
    80006b20:	00008067          	ret
    80006b24:	00001097          	auipc	ra,0x1
    80006b28:	1d8080e7          	jalr	472(ra) # 80007cfc <push_on>
    80006b2c:	0984a703          	lw	a4,152(s1)
    80006b30:	09c4a783          	lw	a5,156(s1)
    80006b34:	0007879b          	sext.w	a5,a5
    80006b38:	fef70ce3          	beq	a4,a5,80006b30 <consoleread+0xfc>
    80006b3c:	00001097          	auipc	ra,0x1
    80006b40:	234080e7          	jalr	564(ra) # 80007d70 <pop_on>
    80006b44:	0984a783          	lw	a5,152(s1)
    80006b48:	07f7f713          	andi	a4,a5,127
    80006b4c:	00e48733          	add	a4,s1,a4
    80006b50:	01874703          	lbu	a4,24(a4)
    80006b54:	0017869b          	addiw	a3,a5,1
    80006b58:	08d4ac23          	sw	a3,152(s1)
    80006b5c:	00070c9b          	sext.w	s9,a4
    80006b60:	f5371ee3          	bne	a4,s3,80006abc <consoleread+0x88>
    80006b64:	000b851b          	sext.w	a0,s7
    80006b68:	f96bf2e3          	bgeu	s7,s6,80006aec <consoleread+0xb8>
    80006b6c:	08f4ac23          	sw	a5,152(s1)
    80006b70:	f7dff06f          	j	80006aec <consoleread+0xb8>

0000000080006b74 <consputc>:
    80006b74:	10000793          	li	a5,256
    80006b78:	00f50663          	beq	a0,a5,80006b84 <consputc+0x10>
    80006b7c:	00001317          	auipc	t1,0x1
    80006b80:	9f430067          	jr	-1548(t1) # 80007570 <uartputc_sync>
    80006b84:	ff010113          	addi	sp,sp,-16
    80006b88:	00113423          	sd	ra,8(sp)
    80006b8c:	00813023          	sd	s0,0(sp)
    80006b90:	01010413          	addi	s0,sp,16
    80006b94:	00800513          	li	a0,8
    80006b98:	00001097          	auipc	ra,0x1
    80006b9c:	9d8080e7          	jalr	-1576(ra) # 80007570 <uartputc_sync>
    80006ba0:	02000513          	li	a0,32
    80006ba4:	00001097          	auipc	ra,0x1
    80006ba8:	9cc080e7          	jalr	-1588(ra) # 80007570 <uartputc_sync>
    80006bac:	00013403          	ld	s0,0(sp)
    80006bb0:	00813083          	ld	ra,8(sp)
    80006bb4:	00800513          	li	a0,8
    80006bb8:	01010113          	addi	sp,sp,16
    80006bbc:	00001317          	auipc	t1,0x1
    80006bc0:	9b430067          	jr	-1612(t1) # 80007570 <uartputc_sync>

0000000080006bc4 <consoleintr>:
    80006bc4:	fe010113          	addi	sp,sp,-32
    80006bc8:	00813823          	sd	s0,16(sp)
    80006bcc:	00913423          	sd	s1,8(sp)
    80006bd0:	01213023          	sd	s2,0(sp)
    80006bd4:	00113c23          	sd	ra,24(sp)
    80006bd8:	02010413          	addi	s0,sp,32
    80006bdc:	00006917          	auipc	s2,0x6
    80006be0:	eac90913          	addi	s2,s2,-340 # 8000ca88 <cons>
    80006be4:	00050493          	mv	s1,a0
    80006be8:	00090513          	mv	a0,s2
    80006bec:	00001097          	auipc	ra,0x1
    80006bf0:	e40080e7          	jalr	-448(ra) # 80007a2c <acquire>
    80006bf4:	02048c63          	beqz	s1,80006c2c <consoleintr+0x68>
    80006bf8:	0a092783          	lw	a5,160(s2)
    80006bfc:	09892703          	lw	a4,152(s2)
    80006c00:	07f00693          	li	a3,127
    80006c04:	40e7873b          	subw	a4,a5,a4
    80006c08:	02e6e263          	bltu	a3,a4,80006c2c <consoleintr+0x68>
    80006c0c:	00d00713          	li	a4,13
    80006c10:	04e48063          	beq	s1,a4,80006c50 <consoleintr+0x8c>
    80006c14:	07f7f713          	andi	a4,a5,127
    80006c18:	00e90733          	add	a4,s2,a4
    80006c1c:	0017879b          	addiw	a5,a5,1
    80006c20:	0af92023          	sw	a5,160(s2)
    80006c24:	00970c23          	sb	s1,24(a4)
    80006c28:	08f92e23          	sw	a5,156(s2)
    80006c2c:	01013403          	ld	s0,16(sp)
    80006c30:	01813083          	ld	ra,24(sp)
    80006c34:	00813483          	ld	s1,8(sp)
    80006c38:	00013903          	ld	s2,0(sp)
    80006c3c:	00006517          	auipc	a0,0x6
    80006c40:	e4c50513          	addi	a0,a0,-436 # 8000ca88 <cons>
    80006c44:	02010113          	addi	sp,sp,32
    80006c48:	00001317          	auipc	t1,0x1
    80006c4c:	eb030067          	jr	-336(t1) # 80007af8 <release>
    80006c50:	00a00493          	li	s1,10
    80006c54:	fc1ff06f          	j	80006c14 <consoleintr+0x50>

0000000080006c58 <consoleinit>:
    80006c58:	fe010113          	addi	sp,sp,-32
    80006c5c:	00113c23          	sd	ra,24(sp)
    80006c60:	00813823          	sd	s0,16(sp)
    80006c64:	00913423          	sd	s1,8(sp)
    80006c68:	02010413          	addi	s0,sp,32
    80006c6c:	00006497          	auipc	s1,0x6
    80006c70:	e1c48493          	addi	s1,s1,-484 # 8000ca88 <cons>
    80006c74:	00048513          	mv	a0,s1
    80006c78:	00003597          	auipc	a1,0x3
    80006c7c:	14058593          	addi	a1,a1,320 # 80009db8 <_ZTV12ConsumerSync+0x160>
    80006c80:	00001097          	auipc	ra,0x1
    80006c84:	d88080e7          	jalr	-632(ra) # 80007a08 <initlock>
    80006c88:	00000097          	auipc	ra,0x0
    80006c8c:	7ac080e7          	jalr	1964(ra) # 80007434 <uartinit>
    80006c90:	01813083          	ld	ra,24(sp)
    80006c94:	01013403          	ld	s0,16(sp)
    80006c98:	00000797          	auipc	a5,0x0
    80006c9c:	d9c78793          	addi	a5,a5,-612 # 80006a34 <consoleread>
    80006ca0:	0af4bc23          	sd	a5,184(s1)
    80006ca4:	00000797          	auipc	a5,0x0
    80006ca8:	cec78793          	addi	a5,a5,-788 # 80006990 <consolewrite>
    80006cac:	0cf4b023          	sd	a5,192(s1)
    80006cb0:	00813483          	ld	s1,8(sp)
    80006cb4:	02010113          	addi	sp,sp,32
    80006cb8:	00008067          	ret

0000000080006cbc <console_read>:
    80006cbc:	ff010113          	addi	sp,sp,-16
    80006cc0:	00813423          	sd	s0,8(sp)
    80006cc4:	01010413          	addi	s0,sp,16
    80006cc8:	00813403          	ld	s0,8(sp)
    80006ccc:	00006317          	auipc	t1,0x6
    80006cd0:	e7433303          	ld	t1,-396(t1) # 8000cb40 <devsw+0x10>
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00030067          	jr	t1

0000000080006cdc <console_write>:
    80006cdc:	ff010113          	addi	sp,sp,-16
    80006ce0:	00813423          	sd	s0,8(sp)
    80006ce4:	01010413          	addi	s0,sp,16
    80006ce8:	00813403          	ld	s0,8(sp)
    80006cec:	00006317          	auipc	t1,0x6
    80006cf0:	e5c33303          	ld	t1,-420(t1) # 8000cb48 <devsw+0x18>
    80006cf4:	01010113          	addi	sp,sp,16
    80006cf8:	00030067          	jr	t1

0000000080006cfc <panic>:
    80006cfc:	fe010113          	addi	sp,sp,-32
    80006d00:	00113c23          	sd	ra,24(sp)
    80006d04:	00813823          	sd	s0,16(sp)
    80006d08:	00913423          	sd	s1,8(sp)
    80006d0c:	02010413          	addi	s0,sp,32
    80006d10:	00050493          	mv	s1,a0
    80006d14:	00003517          	auipc	a0,0x3
    80006d18:	0ac50513          	addi	a0,a0,172 # 80009dc0 <_ZTV12ConsumerSync+0x168>
    80006d1c:	00006797          	auipc	a5,0x6
    80006d20:	ec07a623          	sw	zero,-308(a5) # 8000cbe8 <pr+0x18>
    80006d24:	00000097          	auipc	ra,0x0
    80006d28:	034080e7          	jalr	52(ra) # 80006d58 <__printf>
    80006d2c:	00048513          	mv	a0,s1
    80006d30:	00000097          	auipc	ra,0x0
    80006d34:	028080e7          	jalr	40(ra) # 80006d58 <__printf>
    80006d38:	00002517          	auipc	a0,0x2
    80006d3c:	68050513          	addi	a0,a0,1664 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006d40:	00000097          	auipc	ra,0x0
    80006d44:	018080e7          	jalr	24(ra) # 80006d58 <__printf>
    80006d48:	00100793          	li	a5,1
    80006d4c:	00005717          	auipc	a4,0x5
    80006d50:	c2f72a23          	sw	a5,-972(a4) # 8000b980 <panicked>
    80006d54:	0000006f          	j	80006d54 <panic+0x58>

0000000080006d58 <__printf>:
    80006d58:	f3010113          	addi	sp,sp,-208
    80006d5c:	08813023          	sd	s0,128(sp)
    80006d60:	07313423          	sd	s3,104(sp)
    80006d64:	09010413          	addi	s0,sp,144
    80006d68:	05813023          	sd	s8,64(sp)
    80006d6c:	08113423          	sd	ra,136(sp)
    80006d70:	06913c23          	sd	s1,120(sp)
    80006d74:	07213823          	sd	s2,112(sp)
    80006d78:	07413023          	sd	s4,96(sp)
    80006d7c:	05513c23          	sd	s5,88(sp)
    80006d80:	05613823          	sd	s6,80(sp)
    80006d84:	05713423          	sd	s7,72(sp)
    80006d88:	03913c23          	sd	s9,56(sp)
    80006d8c:	03a13823          	sd	s10,48(sp)
    80006d90:	03b13423          	sd	s11,40(sp)
    80006d94:	00006317          	auipc	t1,0x6
    80006d98:	e3c30313          	addi	t1,t1,-452 # 8000cbd0 <pr>
    80006d9c:	01832c03          	lw	s8,24(t1)
    80006da0:	00b43423          	sd	a1,8(s0)
    80006da4:	00c43823          	sd	a2,16(s0)
    80006da8:	00d43c23          	sd	a3,24(s0)
    80006dac:	02e43023          	sd	a4,32(s0)
    80006db0:	02f43423          	sd	a5,40(s0)
    80006db4:	03043823          	sd	a6,48(s0)
    80006db8:	03143c23          	sd	a7,56(s0)
    80006dbc:	00050993          	mv	s3,a0
    80006dc0:	4a0c1663          	bnez	s8,8000726c <__printf+0x514>
    80006dc4:	60098c63          	beqz	s3,800073dc <__printf+0x684>
    80006dc8:	0009c503          	lbu	a0,0(s3)
    80006dcc:	00840793          	addi	a5,s0,8
    80006dd0:	f6f43c23          	sd	a5,-136(s0)
    80006dd4:	00000493          	li	s1,0
    80006dd8:	22050063          	beqz	a0,80006ff8 <__printf+0x2a0>
    80006ddc:	00002a37          	lui	s4,0x2
    80006de0:	00018ab7          	lui	s5,0x18
    80006de4:	000f4b37          	lui	s6,0xf4
    80006de8:	00989bb7          	lui	s7,0x989
    80006dec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006df0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006df4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006df8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006dfc:	00148c9b          	addiw	s9,s1,1
    80006e00:	02500793          	li	a5,37
    80006e04:	01998933          	add	s2,s3,s9
    80006e08:	38f51263          	bne	a0,a5,8000718c <__printf+0x434>
    80006e0c:	00094783          	lbu	a5,0(s2)
    80006e10:	00078c9b          	sext.w	s9,a5
    80006e14:	1e078263          	beqz	a5,80006ff8 <__printf+0x2a0>
    80006e18:	0024849b          	addiw	s1,s1,2
    80006e1c:	07000713          	li	a4,112
    80006e20:	00998933          	add	s2,s3,s1
    80006e24:	38e78a63          	beq	a5,a4,800071b8 <__printf+0x460>
    80006e28:	20f76863          	bltu	a4,a5,80007038 <__printf+0x2e0>
    80006e2c:	42a78863          	beq	a5,a0,8000725c <__printf+0x504>
    80006e30:	06400713          	li	a4,100
    80006e34:	40e79663          	bne	a5,a4,80007240 <__printf+0x4e8>
    80006e38:	f7843783          	ld	a5,-136(s0)
    80006e3c:	0007a603          	lw	a2,0(a5)
    80006e40:	00878793          	addi	a5,a5,8
    80006e44:	f6f43c23          	sd	a5,-136(s0)
    80006e48:	42064a63          	bltz	a2,8000727c <__printf+0x524>
    80006e4c:	00a00713          	li	a4,10
    80006e50:	02e677bb          	remuw	a5,a2,a4
    80006e54:	00003d97          	auipc	s11,0x3
    80006e58:	f94d8d93          	addi	s11,s11,-108 # 80009de8 <digits>
    80006e5c:	00900593          	li	a1,9
    80006e60:	0006051b          	sext.w	a0,a2
    80006e64:	00000c93          	li	s9,0
    80006e68:	02079793          	slli	a5,a5,0x20
    80006e6c:	0207d793          	srli	a5,a5,0x20
    80006e70:	00fd87b3          	add	a5,s11,a5
    80006e74:	0007c783          	lbu	a5,0(a5)
    80006e78:	02e656bb          	divuw	a3,a2,a4
    80006e7c:	f8f40023          	sb	a5,-128(s0)
    80006e80:	14c5d863          	bge	a1,a2,80006fd0 <__printf+0x278>
    80006e84:	06300593          	li	a1,99
    80006e88:	00100c93          	li	s9,1
    80006e8c:	02e6f7bb          	remuw	a5,a3,a4
    80006e90:	02079793          	slli	a5,a5,0x20
    80006e94:	0207d793          	srli	a5,a5,0x20
    80006e98:	00fd87b3          	add	a5,s11,a5
    80006e9c:	0007c783          	lbu	a5,0(a5)
    80006ea0:	02e6d73b          	divuw	a4,a3,a4
    80006ea4:	f8f400a3          	sb	a5,-127(s0)
    80006ea8:	12a5f463          	bgeu	a1,a0,80006fd0 <__printf+0x278>
    80006eac:	00a00693          	li	a3,10
    80006eb0:	00900593          	li	a1,9
    80006eb4:	02d777bb          	remuw	a5,a4,a3
    80006eb8:	02079793          	slli	a5,a5,0x20
    80006ebc:	0207d793          	srli	a5,a5,0x20
    80006ec0:	00fd87b3          	add	a5,s11,a5
    80006ec4:	0007c503          	lbu	a0,0(a5)
    80006ec8:	02d757bb          	divuw	a5,a4,a3
    80006ecc:	f8a40123          	sb	a0,-126(s0)
    80006ed0:	48e5f263          	bgeu	a1,a4,80007354 <__printf+0x5fc>
    80006ed4:	06300513          	li	a0,99
    80006ed8:	02d7f5bb          	remuw	a1,a5,a3
    80006edc:	02059593          	slli	a1,a1,0x20
    80006ee0:	0205d593          	srli	a1,a1,0x20
    80006ee4:	00bd85b3          	add	a1,s11,a1
    80006ee8:	0005c583          	lbu	a1,0(a1)
    80006eec:	02d7d7bb          	divuw	a5,a5,a3
    80006ef0:	f8b401a3          	sb	a1,-125(s0)
    80006ef4:	48e57263          	bgeu	a0,a4,80007378 <__printf+0x620>
    80006ef8:	3e700513          	li	a0,999
    80006efc:	02d7f5bb          	remuw	a1,a5,a3
    80006f00:	02059593          	slli	a1,a1,0x20
    80006f04:	0205d593          	srli	a1,a1,0x20
    80006f08:	00bd85b3          	add	a1,s11,a1
    80006f0c:	0005c583          	lbu	a1,0(a1)
    80006f10:	02d7d7bb          	divuw	a5,a5,a3
    80006f14:	f8b40223          	sb	a1,-124(s0)
    80006f18:	46e57663          	bgeu	a0,a4,80007384 <__printf+0x62c>
    80006f1c:	02d7f5bb          	remuw	a1,a5,a3
    80006f20:	02059593          	slli	a1,a1,0x20
    80006f24:	0205d593          	srli	a1,a1,0x20
    80006f28:	00bd85b3          	add	a1,s11,a1
    80006f2c:	0005c583          	lbu	a1,0(a1)
    80006f30:	02d7d7bb          	divuw	a5,a5,a3
    80006f34:	f8b402a3          	sb	a1,-123(s0)
    80006f38:	46ea7863          	bgeu	s4,a4,800073a8 <__printf+0x650>
    80006f3c:	02d7f5bb          	remuw	a1,a5,a3
    80006f40:	02059593          	slli	a1,a1,0x20
    80006f44:	0205d593          	srli	a1,a1,0x20
    80006f48:	00bd85b3          	add	a1,s11,a1
    80006f4c:	0005c583          	lbu	a1,0(a1)
    80006f50:	02d7d7bb          	divuw	a5,a5,a3
    80006f54:	f8b40323          	sb	a1,-122(s0)
    80006f58:	3eeaf863          	bgeu	s5,a4,80007348 <__printf+0x5f0>
    80006f5c:	02d7f5bb          	remuw	a1,a5,a3
    80006f60:	02059593          	slli	a1,a1,0x20
    80006f64:	0205d593          	srli	a1,a1,0x20
    80006f68:	00bd85b3          	add	a1,s11,a1
    80006f6c:	0005c583          	lbu	a1,0(a1)
    80006f70:	02d7d7bb          	divuw	a5,a5,a3
    80006f74:	f8b403a3          	sb	a1,-121(s0)
    80006f78:	42eb7e63          	bgeu	s6,a4,800073b4 <__printf+0x65c>
    80006f7c:	02d7f5bb          	remuw	a1,a5,a3
    80006f80:	02059593          	slli	a1,a1,0x20
    80006f84:	0205d593          	srli	a1,a1,0x20
    80006f88:	00bd85b3          	add	a1,s11,a1
    80006f8c:	0005c583          	lbu	a1,0(a1)
    80006f90:	02d7d7bb          	divuw	a5,a5,a3
    80006f94:	f8b40423          	sb	a1,-120(s0)
    80006f98:	42ebfc63          	bgeu	s7,a4,800073d0 <__printf+0x678>
    80006f9c:	02079793          	slli	a5,a5,0x20
    80006fa0:	0207d793          	srli	a5,a5,0x20
    80006fa4:	00fd8db3          	add	s11,s11,a5
    80006fa8:	000dc703          	lbu	a4,0(s11)
    80006fac:	00a00793          	li	a5,10
    80006fb0:	00900c93          	li	s9,9
    80006fb4:	f8e404a3          	sb	a4,-119(s0)
    80006fb8:	00065c63          	bgez	a2,80006fd0 <__printf+0x278>
    80006fbc:	f9040713          	addi	a4,s0,-112
    80006fc0:	00f70733          	add	a4,a4,a5
    80006fc4:	02d00693          	li	a3,45
    80006fc8:	fed70823          	sb	a3,-16(a4)
    80006fcc:	00078c93          	mv	s9,a5
    80006fd0:	f8040793          	addi	a5,s0,-128
    80006fd4:	01978cb3          	add	s9,a5,s9
    80006fd8:	f7f40d13          	addi	s10,s0,-129
    80006fdc:	000cc503          	lbu	a0,0(s9)
    80006fe0:	fffc8c93          	addi	s9,s9,-1
    80006fe4:	00000097          	auipc	ra,0x0
    80006fe8:	b90080e7          	jalr	-1136(ra) # 80006b74 <consputc>
    80006fec:	ffac98e3          	bne	s9,s10,80006fdc <__printf+0x284>
    80006ff0:	00094503          	lbu	a0,0(s2)
    80006ff4:	e00514e3          	bnez	a0,80006dfc <__printf+0xa4>
    80006ff8:	1a0c1663          	bnez	s8,800071a4 <__printf+0x44c>
    80006ffc:	08813083          	ld	ra,136(sp)
    80007000:	08013403          	ld	s0,128(sp)
    80007004:	07813483          	ld	s1,120(sp)
    80007008:	07013903          	ld	s2,112(sp)
    8000700c:	06813983          	ld	s3,104(sp)
    80007010:	06013a03          	ld	s4,96(sp)
    80007014:	05813a83          	ld	s5,88(sp)
    80007018:	05013b03          	ld	s6,80(sp)
    8000701c:	04813b83          	ld	s7,72(sp)
    80007020:	04013c03          	ld	s8,64(sp)
    80007024:	03813c83          	ld	s9,56(sp)
    80007028:	03013d03          	ld	s10,48(sp)
    8000702c:	02813d83          	ld	s11,40(sp)
    80007030:	0d010113          	addi	sp,sp,208
    80007034:	00008067          	ret
    80007038:	07300713          	li	a4,115
    8000703c:	1ce78a63          	beq	a5,a4,80007210 <__printf+0x4b8>
    80007040:	07800713          	li	a4,120
    80007044:	1ee79e63          	bne	a5,a4,80007240 <__printf+0x4e8>
    80007048:	f7843783          	ld	a5,-136(s0)
    8000704c:	0007a703          	lw	a4,0(a5)
    80007050:	00878793          	addi	a5,a5,8
    80007054:	f6f43c23          	sd	a5,-136(s0)
    80007058:	28074263          	bltz	a4,800072dc <__printf+0x584>
    8000705c:	00003d97          	auipc	s11,0x3
    80007060:	d8cd8d93          	addi	s11,s11,-628 # 80009de8 <digits>
    80007064:	00f77793          	andi	a5,a4,15
    80007068:	00fd87b3          	add	a5,s11,a5
    8000706c:	0007c683          	lbu	a3,0(a5)
    80007070:	00f00613          	li	a2,15
    80007074:	0007079b          	sext.w	a5,a4
    80007078:	f8d40023          	sb	a3,-128(s0)
    8000707c:	0047559b          	srliw	a1,a4,0x4
    80007080:	0047569b          	srliw	a3,a4,0x4
    80007084:	00000c93          	li	s9,0
    80007088:	0ee65063          	bge	a2,a4,80007168 <__printf+0x410>
    8000708c:	00f6f693          	andi	a3,a3,15
    80007090:	00dd86b3          	add	a3,s11,a3
    80007094:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007098:	0087d79b          	srliw	a5,a5,0x8
    8000709c:	00100c93          	li	s9,1
    800070a0:	f8d400a3          	sb	a3,-127(s0)
    800070a4:	0cb67263          	bgeu	a2,a1,80007168 <__printf+0x410>
    800070a8:	00f7f693          	andi	a3,a5,15
    800070ac:	00dd86b3          	add	a3,s11,a3
    800070b0:	0006c583          	lbu	a1,0(a3)
    800070b4:	00f00613          	li	a2,15
    800070b8:	0047d69b          	srliw	a3,a5,0x4
    800070bc:	f8b40123          	sb	a1,-126(s0)
    800070c0:	0047d593          	srli	a1,a5,0x4
    800070c4:	28f67e63          	bgeu	a2,a5,80007360 <__printf+0x608>
    800070c8:	00f6f693          	andi	a3,a3,15
    800070cc:	00dd86b3          	add	a3,s11,a3
    800070d0:	0006c503          	lbu	a0,0(a3)
    800070d4:	0087d813          	srli	a6,a5,0x8
    800070d8:	0087d69b          	srliw	a3,a5,0x8
    800070dc:	f8a401a3          	sb	a0,-125(s0)
    800070e0:	28b67663          	bgeu	a2,a1,8000736c <__printf+0x614>
    800070e4:	00f6f693          	andi	a3,a3,15
    800070e8:	00dd86b3          	add	a3,s11,a3
    800070ec:	0006c583          	lbu	a1,0(a3)
    800070f0:	00c7d513          	srli	a0,a5,0xc
    800070f4:	00c7d69b          	srliw	a3,a5,0xc
    800070f8:	f8b40223          	sb	a1,-124(s0)
    800070fc:	29067a63          	bgeu	a2,a6,80007390 <__printf+0x638>
    80007100:	00f6f693          	andi	a3,a3,15
    80007104:	00dd86b3          	add	a3,s11,a3
    80007108:	0006c583          	lbu	a1,0(a3)
    8000710c:	0107d813          	srli	a6,a5,0x10
    80007110:	0107d69b          	srliw	a3,a5,0x10
    80007114:	f8b402a3          	sb	a1,-123(s0)
    80007118:	28a67263          	bgeu	a2,a0,8000739c <__printf+0x644>
    8000711c:	00f6f693          	andi	a3,a3,15
    80007120:	00dd86b3          	add	a3,s11,a3
    80007124:	0006c683          	lbu	a3,0(a3)
    80007128:	0147d79b          	srliw	a5,a5,0x14
    8000712c:	f8d40323          	sb	a3,-122(s0)
    80007130:	21067663          	bgeu	a2,a6,8000733c <__printf+0x5e4>
    80007134:	02079793          	slli	a5,a5,0x20
    80007138:	0207d793          	srli	a5,a5,0x20
    8000713c:	00fd8db3          	add	s11,s11,a5
    80007140:	000dc683          	lbu	a3,0(s11)
    80007144:	00800793          	li	a5,8
    80007148:	00700c93          	li	s9,7
    8000714c:	f8d403a3          	sb	a3,-121(s0)
    80007150:	00075c63          	bgez	a4,80007168 <__printf+0x410>
    80007154:	f9040713          	addi	a4,s0,-112
    80007158:	00f70733          	add	a4,a4,a5
    8000715c:	02d00693          	li	a3,45
    80007160:	fed70823          	sb	a3,-16(a4)
    80007164:	00078c93          	mv	s9,a5
    80007168:	f8040793          	addi	a5,s0,-128
    8000716c:	01978cb3          	add	s9,a5,s9
    80007170:	f7f40d13          	addi	s10,s0,-129
    80007174:	000cc503          	lbu	a0,0(s9)
    80007178:	fffc8c93          	addi	s9,s9,-1
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	9f8080e7          	jalr	-1544(ra) # 80006b74 <consputc>
    80007184:	ff9d18e3          	bne	s10,s9,80007174 <__printf+0x41c>
    80007188:	0100006f          	j	80007198 <__printf+0x440>
    8000718c:	00000097          	auipc	ra,0x0
    80007190:	9e8080e7          	jalr	-1560(ra) # 80006b74 <consputc>
    80007194:	000c8493          	mv	s1,s9
    80007198:	00094503          	lbu	a0,0(s2)
    8000719c:	c60510e3          	bnez	a0,80006dfc <__printf+0xa4>
    800071a0:	e40c0ee3          	beqz	s8,80006ffc <__printf+0x2a4>
    800071a4:	00006517          	auipc	a0,0x6
    800071a8:	a2c50513          	addi	a0,a0,-1492 # 8000cbd0 <pr>
    800071ac:	00001097          	auipc	ra,0x1
    800071b0:	94c080e7          	jalr	-1716(ra) # 80007af8 <release>
    800071b4:	e49ff06f          	j	80006ffc <__printf+0x2a4>
    800071b8:	f7843783          	ld	a5,-136(s0)
    800071bc:	03000513          	li	a0,48
    800071c0:	01000d13          	li	s10,16
    800071c4:	00878713          	addi	a4,a5,8
    800071c8:	0007bc83          	ld	s9,0(a5)
    800071cc:	f6e43c23          	sd	a4,-136(s0)
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	9a4080e7          	jalr	-1628(ra) # 80006b74 <consputc>
    800071d8:	07800513          	li	a0,120
    800071dc:	00000097          	auipc	ra,0x0
    800071e0:	998080e7          	jalr	-1640(ra) # 80006b74 <consputc>
    800071e4:	00003d97          	auipc	s11,0x3
    800071e8:	c04d8d93          	addi	s11,s11,-1020 # 80009de8 <digits>
    800071ec:	03ccd793          	srli	a5,s9,0x3c
    800071f0:	00fd87b3          	add	a5,s11,a5
    800071f4:	0007c503          	lbu	a0,0(a5)
    800071f8:	fffd0d1b          	addiw	s10,s10,-1
    800071fc:	004c9c93          	slli	s9,s9,0x4
    80007200:	00000097          	auipc	ra,0x0
    80007204:	974080e7          	jalr	-1676(ra) # 80006b74 <consputc>
    80007208:	fe0d12e3          	bnez	s10,800071ec <__printf+0x494>
    8000720c:	f8dff06f          	j	80007198 <__printf+0x440>
    80007210:	f7843783          	ld	a5,-136(s0)
    80007214:	0007bc83          	ld	s9,0(a5)
    80007218:	00878793          	addi	a5,a5,8
    8000721c:	f6f43c23          	sd	a5,-136(s0)
    80007220:	000c9a63          	bnez	s9,80007234 <__printf+0x4dc>
    80007224:	1080006f          	j	8000732c <__printf+0x5d4>
    80007228:	001c8c93          	addi	s9,s9,1
    8000722c:	00000097          	auipc	ra,0x0
    80007230:	948080e7          	jalr	-1720(ra) # 80006b74 <consputc>
    80007234:	000cc503          	lbu	a0,0(s9)
    80007238:	fe0518e3          	bnez	a0,80007228 <__printf+0x4d0>
    8000723c:	f5dff06f          	j	80007198 <__printf+0x440>
    80007240:	02500513          	li	a0,37
    80007244:	00000097          	auipc	ra,0x0
    80007248:	930080e7          	jalr	-1744(ra) # 80006b74 <consputc>
    8000724c:	000c8513          	mv	a0,s9
    80007250:	00000097          	auipc	ra,0x0
    80007254:	924080e7          	jalr	-1756(ra) # 80006b74 <consputc>
    80007258:	f41ff06f          	j	80007198 <__printf+0x440>
    8000725c:	02500513          	li	a0,37
    80007260:	00000097          	auipc	ra,0x0
    80007264:	914080e7          	jalr	-1772(ra) # 80006b74 <consputc>
    80007268:	f31ff06f          	j	80007198 <__printf+0x440>
    8000726c:	00030513          	mv	a0,t1
    80007270:	00000097          	auipc	ra,0x0
    80007274:	7bc080e7          	jalr	1980(ra) # 80007a2c <acquire>
    80007278:	b4dff06f          	j	80006dc4 <__printf+0x6c>
    8000727c:	40c0053b          	negw	a0,a2
    80007280:	00a00713          	li	a4,10
    80007284:	02e576bb          	remuw	a3,a0,a4
    80007288:	00003d97          	auipc	s11,0x3
    8000728c:	b60d8d93          	addi	s11,s11,-1184 # 80009de8 <digits>
    80007290:	ff700593          	li	a1,-9
    80007294:	02069693          	slli	a3,a3,0x20
    80007298:	0206d693          	srli	a3,a3,0x20
    8000729c:	00dd86b3          	add	a3,s11,a3
    800072a0:	0006c683          	lbu	a3,0(a3)
    800072a4:	02e557bb          	divuw	a5,a0,a4
    800072a8:	f8d40023          	sb	a3,-128(s0)
    800072ac:	10b65e63          	bge	a2,a1,800073c8 <__printf+0x670>
    800072b0:	06300593          	li	a1,99
    800072b4:	02e7f6bb          	remuw	a3,a5,a4
    800072b8:	02069693          	slli	a3,a3,0x20
    800072bc:	0206d693          	srli	a3,a3,0x20
    800072c0:	00dd86b3          	add	a3,s11,a3
    800072c4:	0006c683          	lbu	a3,0(a3)
    800072c8:	02e7d73b          	divuw	a4,a5,a4
    800072cc:	00200793          	li	a5,2
    800072d0:	f8d400a3          	sb	a3,-127(s0)
    800072d4:	bca5ece3          	bltu	a1,a0,80006eac <__printf+0x154>
    800072d8:	ce5ff06f          	j	80006fbc <__printf+0x264>
    800072dc:	40e007bb          	negw	a5,a4
    800072e0:	00003d97          	auipc	s11,0x3
    800072e4:	b08d8d93          	addi	s11,s11,-1272 # 80009de8 <digits>
    800072e8:	00f7f693          	andi	a3,a5,15
    800072ec:	00dd86b3          	add	a3,s11,a3
    800072f0:	0006c583          	lbu	a1,0(a3)
    800072f4:	ff100613          	li	a2,-15
    800072f8:	0047d69b          	srliw	a3,a5,0x4
    800072fc:	f8b40023          	sb	a1,-128(s0)
    80007300:	0047d59b          	srliw	a1,a5,0x4
    80007304:	0ac75e63          	bge	a4,a2,800073c0 <__printf+0x668>
    80007308:	00f6f693          	andi	a3,a3,15
    8000730c:	00dd86b3          	add	a3,s11,a3
    80007310:	0006c603          	lbu	a2,0(a3)
    80007314:	00f00693          	li	a3,15
    80007318:	0087d79b          	srliw	a5,a5,0x8
    8000731c:	f8c400a3          	sb	a2,-127(s0)
    80007320:	d8b6e4e3          	bltu	a3,a1,800070a8 <__printf+0x350>
    80007324:	00200793          	li	a5,2
    80007328:	e2dff06f          	j	80007154 <__printf+0x3fc>
    8000732c:	00003c97          	auipc	s9,0x3
    80007330:	a9cc8c93          	addi	s9,s9,-1380 # 80009dc8 <_ZTV12ConsumerSync+0x170>
    80007334:	02800513          	li	a0,40
    80007338:	ef1ff06f          	j	80007228 <__printf+0x4d0>
    8000733c:	00700793          	li	a5,7
    80007340:	00600c93          	li	s9,6
    80007344:	e0dff06f          	j	80007150 <__printf+0x3f8>
    80007348:	00700793          	li	a5,7
    8000734c:	00600c93          	li	s9,6
    80007350:	c69ff06f          	j	80006fb8 <__printf+0x260>
    80007354:	00300793          	li	a5,3
    80007358:	00200c93          	li	s9,2
    8000735c:	c5dff06f          	j	80006fb8 <__printf+0x260>
    80007360:	00300793          	li	a5,3
    80007364:	00200c93          	li	s9,2
    80007368:	de9ff06f          	j	80007150 <__printf+0x3f8>
    8000736c:	00400793          	li	a5,4
    80007370:	00300c93          	li	s9,3
    80007374:	dddff06f          	j	80007150 <__printf+0x3f8>
    80007378:	00400793          	li	a5,4
    8000737c:	00300c93          	li	s9,3
    80007380:	c39ff06f          	j	80006fb8 <__printf+0x260>
    80007384:	00500793          	li	a5,5
    80007388:	00400c93          	li	s9,4
    8000738c:	c2dff06f          	j	80006fb8 <__printf+0x260>
    80007390:	00500793          	li	a5,5
    80007394:	00400c93          	li	s9,4
    80007398:	db9ff06f          	j	80007150 <__printf+0x3f8>
    8000739c:	00600793          	li	a5,6
    800073a0:	00500c93          	li	s9,5
    800073a4:	dadff06f          	j	80007150 <__printf+0x3f8>
    800073a8:	00600793          	li	a5,6
    800073ac:	00500c93          	li	s9,5
    800073b0:	c09ff06f          	j	80006fb8 <__printf+0x260>
    800073b4:	00800793          	li	a5,8
    800073b8:	00700c93          	li	s9,7
    800073bc:	bfdff06f          	j	80006fb8 <__printf+0x260>
    800073c0:	00100793          	li	a5,1
    800073c4:	d91ff06f          	j	80007154 <__printf+0x3fc>
    800073c8:	00100793          	li	a5,1
    800073cc:	bf1ff06f          	j	80006fbc <__printf+0x264>
    800073d0:	00900793          	li	a5,9
    800073d4:	00800c93          	li	s9,8
    800073d8:	be1ff06f          	j	80006fb8 <__printf+0x260>
    800073dc:	00003517          	auipc	a0,0x3
    800073e0:	9f450513          	addi	a0,a0,-1548 # 80009dd0 <_ZTV12ConsumerSync+0x178>
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	918080e7          	jalr	-1768(ra) # 80006cfc <panic>

00000000800073ec <printfinit>:
    800073ec:	fe010113          	addi	sp,sp,-32
    800073f0:	00813823          	sd	s0,16(sp)
    800073f4:	00913423          	sd	s1,8(sp)
    800073f8:	00113c23          	sd	ra,24(sp)
    800073fc:	02010413          	addi	s0,sp,32
    80007400:	00005497          	auipc	s1,0x5
    80007404:	7d048493          	addi	s1,s1,2000 # 8000cbd0 <pr>
    80007408:	00048513          	mv	a0,s1
    8000740c:	00003597          	auipc	a1,0x3
    80007410:	9d458593          	addi	a1,a1,-1580 # 80009de0 <_ZTV12ConsumerSync+0x188>
    80007414:	00000097          	auipc	ra,0x0
    80007418:	5f4080e7          	jalr	1524(ra) # 80007a08 <initlock>
    8000741c:	01813083          	ld	ra,24(sp)
    80007420:	01013403          	ld	s0,16(sp)
    80007424:	0004ac23          	sw	zero,24(s1)
    80007428:	00813483          	ld	s1,8(sp)
    8000742c:	02010113          	addi	sp,sp,32
    80007430:	00008067          	ret

0000000080007434 <uartinit>:
    80007434:	ff010113          	addi	sp,sp,-16
    80007438:	00813423          	sd	s0,8(sp)
    8000743c:	01010413          	addi	s0,sp,16
    80007440:	100007b7          	lui	a5,0x10000
    80007444:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007448:	f8000713          	li	a4,-128
    8000744c:	00e781a3          	sb	a4,3(a5)
    80007450:	00300713          	li	a4,3
    80007454:	00e78023          	sb	a4,0(a5)
    80007458:	000780a3          	sb	zero,1(a5)
    8000745c:	00e781a3          	sb	a4,3(a5)
    80007460:	00700693          	li	a3,7
    80007464:	00d78123          	sb	a3,2(a5)
    80007468:	00e780a3          	sb	a4,1(a5)
    8000746c:	00813403          	ld	s0,8(sp)
    80007470:	01010113          	addi	sp,sp,16
    80007474:	00008067          	ret

0000000080007478 <uartputc>:
    80007478:	00004797          	auipc	a5,0x4
    8000747c:	5087a783          	lw	a5,1288(a5) # 8000b980 <panicked>
    80007480:	00078463          	beqz	a5,80007488 <uartputc+0x10>
    80007484:	0000006f          	j	80007484 <uartputc+0xc>
    80007488:	fd010113          	addi	sp,sp,-48
    8000748c:	02813023          	sd	s0,32(sp)
    80007490:	00913c23          	sd	s1,24(sp)
    80007494:	01213823          	sd	s2,16(sp)
    80007498:	01313423          	sd	s3,8(sp)
    8000749c:	02113423          	sd	ra,40(sp)
    800074a0:	03010413          	addi	s0,sp,48
    800074a4:	00004917          	auipc	s2,0x4
    800074a8:	4e490913          	addi	s2,s2,1252 # 8000b988 <uart_tx_r>
    800074ac:	00093783          	ld	a5,0(s2)
    800074b0:	00004497          	auipc	s1,0x4
    800074b4:	4e048493          	addi	s1,s1,1248 # 8000b990 <uart_tx_w>
    800074b8:	0004b703          	ld	a4,0(s1)
    800074bc:	02078693          	addi	a3,a5,32
    800074c0:	00050993          	mv	s3,a0
    800074c4:	02e69c63          	bne	a3,a4,800074fc <uartputc+0x84>
    800074c8:	00001097          	auipc	ra,0x1
    800074cc:	834080e7          	jalr	-1996(ra) # 80007cfc <push_on>
    800074d0:	00093783          	ld	a5,0(s2)
    800074d4:	0004b703          	ld	a4,0(s1)
    800074d8:	02078793          	addi	a5,a5,32
    800074dc:	00e79463          	bne	a5,a4,800074e4 <uartputc+0x6c>
    800074e0:	0000006f          	j	800074e0 <uartputc+0x68>
    800074e4:	00001097          	auipc	ra,0x1
    800074e8:	88c080e7          	jalr	-1908(ra) # 80007d70 <pop_on>
    800074ec:	00093783          	ld	a5,0(s2)
    800074f0:	0004b703          	ld	a4,0(s1)
    800074f4:	02078693          	addi	a3,a5,32
    800074f8:	fce688e3          	beq	a3,a4,800074c8 <uartputc+0x50>
    800074fc:	01f77693          	andi	a3,a4,31
    80007500:	00005597          	auipc	a1,0x5
    80007504:	6f058593          	addi	a1,a1,1776 # 8000cbf0 <uart_tx_buf>
    80007508:	00d586b3          	add	a3,a1,a3
    8000750c:	00170713          	addi	a4,a4,1
    80007510:	01368023          	sb	s3,0(a3)
    80007514:	00e4b023          	sd	a4,0(s1)
    80007518:	10000637          	lui	a2,0x10000
    8000751c:	02f71063          	bne	a4,a5,8000753c <uartputc+0xc4>
    80007520:	0340006f          	j	80007554 <uartputc+0xdc>
    80007524:	00074703          	lbu	a4,0(a4)
    80007528:	00f93023          	sd	a5,0(s2)
    8000752c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007530:	00093783          	ld	a5,0(s2)
    80007534:	0004b703          	ld	a4,0(s1)
    80007538:	00f70e63          	beq	a4,a5,80007554 <uartputc+0xdc>
    8000753c:	00564683          	lbu	a3,5(a2)
    80007540:	01f7f713          	andi	a4,a5,31
    80007544:	00e58733          	add	a4,a1,a4
    80007548:	0206f693          	andi	a3,a3,32
    8000754c:	00178793          	addi	a5,a5,1
    80007550:	fc069ae3          	bnez	a3,80007524 <uartputc+0xac>
    80007554:	02813083          	ld	ra,40(sp)
    80007558:	02013403          	ld	s0,32(sp)
    8000755c:	01813483          	ld	s1,24(sp)
    80007560:	01013903          	ld	s2,16(sp)
    80007564:	00813983          	ld	s3,8(sp)
    80007568:	03010113          	addi	sp,sp,48
    8000756c:	00008067          	ret

0000000080007570 <uartputc_sync>:
    80007570:	ff010113          	addi	sp,sp,-16
    80007574:	00813423          	sd	s0,8(sp)
    80007578:	01010413          	addi	s0,sp,16
    8000757c:	00004717          	auipc	a4,0x4
    80007580:	40472703          	lw	a4,1028(a4) # 8000b980 <panicked>
    80007584:	02071663          	bnez	a4,800075b0 <uartputc_sync+0x40>
    80007588:	00050793          	mv	a5,a0
    8000758c:	100006b7          	lui	a3,0x10000
    80007590:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007594:	02077713          	andi	a4,a4,32
    80007598:	fe070ce3          	beqz	a4,80007590 <uartputc_sync+0x20>
    8000759c:	0ff7f793          	andi	a5,a5,255
    800075a0:	00f68023          	sb	a5,0(a3)
    800075a4:	00813403          	ld	s0,8(sp)
    800075a8:	01010113          	addi	sp,sp,16
    800075ac:	00008067          	ret
    800075b0:	0000006f          	j	800075b0 <uartputc_sync+0x40>

00000000800075b4 <uartstart>:
    800075b4:	ff010113          	addi	sp,sp,-16
    800075b8:	00813423          	sd	s0,8(sp)
    800075bc:	01010413          	addi	s0,sp,16
    800075c0:	00004617          	auipc	a2,0x4
    800075c4:	3c860613          	addi	a2,a2,968 # 8000b988 <uart_tx_r>
    800075c8:	00004517          	auipc	a0,0x4
    800075cc:	3c850513          	addi	a0,a0,968 # 8000b990 <uart_tx_w>
    800075d0:	00063783          	ld	a5,0(a2)
    800075d4:	00053703          	ld	a4,0(a0)
    800075d8:	04f70263          	beq	a4,a5,8000761c <uartstart+0x68>
    800075dc:	100005b7          	lui	a1,0x10000
    800075e0:	00005817          	auipc	a6,0x5
    800075e4:	61080813          	addi	a6,a6,1552 # 8000cbf0 <uart_tx_buf>
    800075e8:	01c0006f          	j	80007604 <uartstart+0x50>
    800075ec:	0006c703          	lbu	a4,0(a3)
    800075f0:	00f63023          	sd	a5,0(a2)
    800075f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075f8:	00063783          	ld	a5,0(a2)
    800075fc:	00053703          	ld	a4,0(a0)
    80007600:	00f70e63          	beq	a4,a5,8000761c <uartstart+0x68>
    80007604:	01f7f713          	andi	a4,a5,31
    80007608:	00e806b3          	add	a3,a6,a4
    8000760c:	0055c703          	lbu	a4,5(a1)
    80007610:	00178793          	addi	a5,a5,1
    80007614:	02077713          	andi	a4,a4,32
    80007618:	fc071ae3          	bnez	a4,800075ec <uartstart+0x38>
    8000761c:	00813403          	ld	s0,8(sp)
    80007620:	01010113          	addi	sp,sp,16
    80007624:	00008067          	ret

0000000080007628 <uartgetc>:
    80007628:	ff010113          	addi	sp,sp,-16
    8000762c:	00813423          	sd	s0,8(sp)
    80007630:	01010413          	addi	s0,sp,16
    80007634:	10000737          	lui	a4,0x10000
    80007638:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000763c:	0017f793          	andi	a5,a5,1
    80007640:	00078c63          	beqz	a5,80007658 <uartgetc+0x30>
    80007644:	00074503          	lbu	a0,0(a4)
    80007648:	0ff57513          	andi	a0,a0,255
    8000764c:	00813403          	ld	s0,8(sp)
    80007650:	01010113          	addi	sp,sp,16
    80007654:	00008067          	ret
    80007658:	fff00513          	li	a0,-1
    8000765c:	ff1ff06f          	j	8000764c <uartgetc+0x24>

0000000080007660 <uartintr>:
    80007660:	100007b7          	lui	a5,0x10000
    80007664:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007668:	0017f793          	andi	a5,a5,1
    8000766c:	0a078463          	beqz	a5,80007714 <uartintr+0xb4>
    80007670:	fe010113          	addi	sp,sp,-32
    80007674:	00813823          	sd	s0,16(sp)
    80007678:	00913423          	sd	s1,8(sp)
    8000767c:	00113c23          	sd	ra,24(sp)
    80007680:	02010413          	addi	s0,sp,32
    80007684:	100004b7          	lui	s1,0x10000
    80007688:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000768c:	0ff57513          	andi	a0,a0,255
    80007690:	fffff097          	auipc	ra,0xfffff
    80007694:	534080e7          	jalr	1332(ra) # 80006bc4 <consoleintr>
    80007698:	0054c783          	lbu	a5,5(s1)
    8000769c:	0017f793          	andi	a5,a5,1
    800076a0:	fe0794e3          	bnez	a5,80007688 <uartintr+0x28>
    800076a4:	00004617          	auipc	a2,0x4
    800076a8:	2e460613          	addi	a2,a2,740 # 8000b988 <uart_tx_r>
    800076ac:	00004517          	auipc	a0,0x4
    800076b0:	2e450513          	addi	a0,a0,740 # 8000b990 <uart_tx_w>
    800076b4:	00063783          	ld	a5,0(a2)
    800076b8:	00053703          	ld	a4,0(a0)
    800076bc:	04f70263          	beq	a4,a5,80007700 <uartintr+0xa0>
    800076c0:	100005b7          	lui	a1,0x10000
    800076c4:	00005817          	auipc	a6,0x5
    800076c8:	52c80813          	addi	a6,a6,1324 # 8000cbf0 <uart_tx_buf>
    800076cc:	01c0006f          	j	800076e8 <uartintr+0x88>
    800076d0:	0006c703          	lbu	a4,0(a3)
    800076d4:	00f63023          	sd	a5,0(a2)
    800076d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800076dc:	00063783          	ld	a5,0(a2)
    800076e0:	00053703          	ld	a4,0(a0)
    800076e4:	00f70e63          	beq	a4,a5,80007700 <uartintr+0xa0>
    800076e8:	01f7f713          	andi	a4,a5,31
    800076ec:	00e806b3          	add	a3,a6,a4
    800076f0:	0055c703          	lbu	a4,5(a1)
    800076f4:	00178793          	addi	a5,a5,1
    800076f8:	02077713          	andi	a4,a4,32
    800076fc:	fc071ae3          	bnez	a4,800076d0 <uartintr+0x70>
    80007700:	01813083          	ld	ra,24(sp)
    80007704:	01013403          	ld	s0,16(sp)
    80007708:	00813483          	ld	s1,8(sp)
    8000770c:	02010113          	addi	sp,sp,32
    80007710:	00008067          	ret
    80007714:	00004617          	auipc	a2,0x4
    80007718:	27460613          	addi	a2,a2,628 # 8000b988 <uart_tx_r>
    8000771c:	00004517          	auipc	a0,0x4
    80007720:	27450513          	addi	a0,a0,628 # 8000b990 <uart_tx_w>
    80007724:	00063783          	ld	a5,0(a2)
    80007728:	00053703          	ld	a4,0(a0)
    8000772c:	04f70263          	beq	a4,a5,80007770 <uartintr+0x110>
    80007730:	100005b7          	lui	a1,0x10000
    80007734:	00005817          	auipc	a6,0x5
    80007738:	4bc80813          	addi	a6,a6,1212 # 8000cbf0 <uart_tx_buf>
    8000773c:	01c0006f          	j	80007758 <uartintr+0xf8>
    80007740:	0006c703          	lbu	a4,0(a3)
    80007744:	00f63023          	sd	a5,0(a2)
    80007748:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000774c:	00063783          	ld	a5,0(a2)
    80007750:	00053703          	ld	a4,0(a0)
    80007754:	02f70063          	beq	a4,a5,80007774 <uartintr+0x114>
    80007758:	01f7f713          	andi	a4,a5,31
    8000775c:	00e806b3          	add	a3,a6,a4
    80007760:	0055c703          	lbu	a4,5(a1)
    80007764:	00178793          	addi	a5,a5,1
    80007768:	02077713          	andi	a4,a4,32
    8000776c:	fc071ae3          	bnez	a4,80007740 <uartintr+0xe0>
    80007770:	00008067          	ret
    80007774:	00008067          	ret

0000000080007778 <kinit>:
    80007778:	fc010113          	addi	sp,sp,-64
    8000777c:	02913423          	sd	s1,40(sp)
    80007780:	fffff7b7          	lui	a5,0xfffff
    80007784:	00006497          	auipc	s1,0x6
    80007788:	48b48493          	addi	s1,s1,1163 # 8000dc0f <end+0xfff>
    8000778c:	02813823          	sd	s0,48(sp)
    80007790:	01313c23          	sd	s3,24(sp)
    80007794:	00f4f4b3          	and	s1,s1,a5
    80007798:	02113c23          	sd	ra,56(sp)
    8000779c:	03213023          	sd	s2,32(sp)
    800077a0:	01413823          	sd	s4,16(sp)
    800077a4:	01513423          	sd	s5,8(sp)
    800077a8:	04010413          	addi	s0,sp,64
    800077ac:	000017b7          	lui	a5,0x1
    800077b0:	01100993          	li	s3,17
    800077b4:	00f487b3          	add	a5,s1,a5
    800077b8:	01b99993          	slli	s3,s3,0x1b
    800077bc:	06f9e063          	bltu	s3,a5,8000781c <kinit+0xa4>
    800077c0:	00005a97          	auipc	s5,0x5
    800077c4:	450a8a93          	addi	s5,s5,1104 # 8000cc10 <end>
    800077c8:	0754ec63          	bltu	s1,s5,80007840 <kinit+0xc8>
    800077cc:	0734fa63          	bgeu	s1,s3,80007840 <kinit+0xc8>
    800077d0:	00088a37          	lui	s4,0x88
    800077d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800077d8:	00004917          	auipc	s2,0x4
    800077dc:	1c090913          	addi	s2,s2,448 # 8000b998 <kmem>
    800077e0:	00ca1a13          	slli	s4,s4,0xc
    800077e4:	0140006f          	j	800077f8 <kinit+0x80>
    800077e8:	000017b7          	lui	a5,0x1
    800077ec:	00f484b3          	add	s1,s1,a5
    800077f0:	0554e863          	bltu	s1,s5,80007840 <kinit+0xc8>
    800077f4:	0534f663          	bgeu	s1,s3,80007840 <kinit+0xc8>
    800077f8:	00001637          	lui	a2,0x1
    800077fc:	00100593          	li	a1,1
    80007800:	00048513          	mv	a0,s1
    80007804:	00000097          	auipc	ra,0x0
    80007808:	5e4080e7          	jalr	1508(ra) # 80007de8 <__memset>
    8000780c:	00093783          	ld	a5,0(s2)
    80007810:	00f4b023          	sd	a5,0(s1)
    80007814:	00993023          	sd	s1,0(s2)
    80007818:	fd4498e3          	bne	s1,s4,800077e8 <kinit+0x70>
    8000781c:	03813083          	ld	ra,56(sp)
    80007820:	03013403          	ld	s0,48(sp)
    80007824:	02813483          	ld	s1,40(sp)
    80007828:	02013903          	ld	s2,32(sp)
    8000782c:	01813983          	ld	s3,24(sp)
    80007830:	01013a03          	ld	s4,16(sp)
    80007834:	00813a83          	ld	s5,8(sp)
    80007838:	04010113          	addi	sp,sp,64
    8000783c:	00008067          	ret
    80007840:	00002517          	auipc	a0,0x2
    80007844:	5c050513          	addi	a0,a0,1472 # 80009e00 <digits+0x18>
    80007848:	fffff097          	auipc	ra,0xfffff
    8000784c:	4b4080e7          	jalr	1204(ra) # 80006cfc <panic>

0000000080007850 <freerange>:
    80007850:	fc010113          	addi	sp,sp,-64
    80007854:	000017b7          	lui	a5,0x1
    80007858:	02913423          	sd	s1,40(sp)
    8000785c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007860:	009504b3          	add	s1,a0,s1
    80007864:	fffff537          	lui	a0,0xfffff
    80007868:	02813823          	sd	s0,48(sp)
    8000786c:	02113c23          	sd	ra,56(sp)
    80007870:	03213023          	sd	s2,32(sp)
    80007874:	01313c23          	sd	s3,24(sp)
    80007878:	01413823          	sd	s4,16(sp)
    8000787c:	01513423          	sd	s5,8(sp)
    80007880:	01613023          	sd	s6,0(sp)
    80007884:	04010413          	addi	s0,sp,64
    80007888:	00a4f4b3          	and	s1,s1,a0
    8000788c:	00f487b3          	add	a5,s1,a5
    80007890:	06f5e463          	bltu	a1,a5,800078f8 <freerange+0xa8>
    80007894:	00005a97          	auipc	s5,0x5
    80007898:	37ca8a93          	addi	s5,s5,892 # 8000cc10 <end>
    8000789c:	0954e263          	bltu	s1,s5,80007920 <freerange+0xd0>
    800078a0:	01100993          	li	s3,17
    800078a4:	01b99993          	slli	s3,s3,0x1b
    800078a8:	0734fc63          	bgeu	s1,s3,80007920 <freerange+0xd0>
    800078ac:	00058a13          	mv	s4,a1
    800078b0:	00004917          	auipc	s2,0x4
    800078b4:	0e890913          	addi	s2,s2,232 # 8000b998 <kmem>
    800078b8:	00002b37          	lui	s6,0x2
    800078bc:	0140006f          	j	800078d0 <freerange+0x80>
    800078c0:	000017b7          	lui	a5,0x1
    800078c4:	00f484b3          	add	s1,s1,a5
    800078c8:	0554ec63          	bltu	s1,s5,80007920 <freerange+0xd0>
    800078cc:	0534fa63          	bgeu	s1,s3,80007920 <freerange+0xd0>
    800078d0:	00001637          	lui	a2,0x1
    800078d4:	00100593          	li	a1,1
    800078d8:	00048513          	mv	a0,s1
    800078dc:	00000097          	auipc	ra,0x0
    800078e0:	50c080e7          	jalr	1292(ra) # 80007de8 <__memset>
    800078e4:	00093703          	ld	a4,0(s2)
    800078e8:	016487b3          	add	a5,s1,s6
    800078ec:	00e4b023          	sd	a4,0(s1)
    800078f0:	00993023          	sd	s1,0(s2)
    800078f4:	fcfa76e3          	bgeu	s4,a5,800078c0 <freerange+0x70>
    800078f8:	03813083          	ld	ra,56(sp)
    800078fc:	03013403          	ld	s0,48(sp)
    80007900:	02813483          	ld	s1,40(sp)
    80007904:	02013903          	ld	s2,32(sp)
    80007908:	01813983          	ld	s3,24(sp)
    8000790c:	01013a03          	ld	s4,16(sp)
    80007910:	00813a83          	ld	s5,8(sp)
    80007914:	00013b03          	ld	s6,0(sp)
    80007918:	04010113          	addi	sp,sp,64
    8000791c:	00008067          	ret
    80007920:	00002517          	auipc	a0,0x2
    80007924:	4e050513          	addi	a0,a0,1248 # 80009e00 <digits+0x18>
    80007928:	fffff097          	auipc	ra,0xfffff
    8000792c:	3d4080e7          	jalr	980(ra) # 80006cfc <panic>

0000000080007930 <kfree>:
    80007930:	fe010113          	addi	sp,sp,-32
    80007934:	00813823          	sd	s0,16(sp)
    80007938:	00113c23          	sd	ra,24(sp)
    8000793c:	00913423          	sd	s1,8(sp)
    80007940:	02010413          	addi	s0,sp,32
    80007944:	03451793          	slli	a5,a0,0x34
    80007948:	04079c63          	bnez	a5,800079a0 <kfree+0x70>
    8000794c:	00005797          	auipc	a5,0x5
    80007950:	2c478793          	addi	a5,a5,708 # 8000cc10 <end>
    80007954:	00050493          	mv	s1,a0
    80007958:	04f56463          	bltu	a0,a5,800079a0 <kfree+0x70>
    8000795c:	01100793          	li	a5,17
    80007960:	01b79793          	slli	a5,a5,0x1b
    80007964:	02f57e63          	bgeu	a0,a5,800079a0 <kfree+0x70>
    80007968:	00001637          	lui	a2,0x1
    8000796c:	00100593          	li	a1,1
    80007970:	00000097          	auipc	ra,0x0
    80007974:	478080e7          	jalr	1144(ra) # 80007de8 <__memset>
    80007978:	00004797          	auipc	a5,0x4
    8000797c:	02078793          	addi	a5,a5,32 # 8000b998 <kmem>
    80007980:	0007b703          	ld	a4,0(a5)
    80007984:	01813083          	ld	ra,24(sp)
    80007988:	01013403          	ld	s0,16(sp)
    8000798c:	00e4b023          	sd	a4,0(s1)
    80007990:	0097b023          	sd	s1,0(a5)
    80007994:	00813483          	ld	s1,8(sp)
    80007998:	02010113          	addi	sp,sp,32
    8000799c:	00008067          	ret
    800079a0:	00002517          	auipc	a0,0x2
    800079a4:	46050513          	addi	a0,a0,1120 # 80009e00 <digits+0x18>
    800079a8:	fffff097          	auipc	ra,0xfffff
    800079ac:	354080e7          	jalr	852(ra) # 80006cfc <panic>

00000000800079b0 <kalloc>:
    800079b0:	fe010113          	addi	sp,sp,-32
    800079b4:	00813823          	sd	s0,16(sp)
    800079b8:	00913423          	sd	s1,8(sp)
    800079bc:	00113c23          	sd	ra,24(sp)
    800079c0:	02010413          	addi	s0,sp,32
    800079c4:	00004797          	auipc	a5,0x4
    800079c8:	fd478793          	addi	a5,a5,-44 # 8000b998 <kmem>
    800079cc:	0007b483          	ld	s1,0(a5)
    800079d0:	02048063          	beqz	s1,800079f0 <kalloc+0x40>
    800079d4:	0004b703          	ld	a4,0(s1)
    800079d8:	00001637          	lui	a2,0x1
    800079dc:	00500593          	li	a1,5
    800079e0:	00048513          	mv	a0,s1
    800079e4:	00e7b023          	sd	a4,0(a5)
    800079e8:	00000097          	auipc	ra,0x0
    800079ec:	400080e7          	jalr	1024(ra) # 80007de8 <__memset>
    800079f0:	01813083          	ld	ra,24(sp)
    800079f4:	01013403          	ld	s0,16(sp)
    800079f8:	00048513          	mv	a0,s1
    800079fc:	00813483          	ld	s1,8(sp)
    80007a00:	02010113          	addi	sp,sp,32
    80007a04:	00008067          	ret

0000000080007a08 <initlock>:
    80007a08:	ff010113          	addi	sp,sp,-16
    80007a0c:	00813423          	sd	s0,8(sp)
    80007a10:	01010413          	addi	s0,sp,16
    80007a14:	00813403          	ld	s0,8(sp)
    80007a18:	00b53423          	sd	a1,8(a0)
    80007a1c:	00052023          	sw	zero,0(a0)
    80007a20:	00053823          	sd	zero,16(a0)
    80007a24:	01010113          	addi	sp,sp,16
    80007a28:	00008067          	ret

0000000080007a2c <acquire>:
    80007a2c:	fe010113          	addi	sp,sp,-32
    80007a30:	00813823          	sd	s0,16(sp)
    80007a34:	00913423          	sd	s1,8(sp)
    80007a38:	00113c23          	sd	ra,24(sp)
    80007a3c:	01213023          	sd	s2,0(sp)
    80007a40:	02010413          	addi	s0,sp,32
    80007a44:	00050493          	mv	s1,a0
    80007a48:	10002973          	csrr	s2,sstatus
    80007a4c:	100027f3          	csrr	a5,sstatus
    80007a50:	ffd7f793          	andi	a5,a5,-3
    80007a54:	10079073          	csrw	sstatus,a5
    80007a58:	fffff097          	auipc	ra,0xfffff
    80007a5c:	8e0080e7          	jalr	-1824(ra) # 80006338 <mycpu>
    80007a60:	07852783          	lw	a5,120(a0)
    80007a64:	06078e63          	beqz	a5,80007ae0 <acquire+0xb4>
    80007a68:	fffff097          	auipc	ra,0xfffff
    80007a6c:	8d0080e7          	jalr	-1840(ra) # 80006338 <mycpu>
    80007a70:	07852783          	lw	a5,120(a0)
    80007a74:	0004a703          	lw	a4,0(s1)
    80007a78:	0017879b          	addiw	a5,a5,1
    80007a7c:	06f52c23          	sw	a5,120(a0)
    80007a80:	04071063          	bnez	a4,80007ac0 <acquire+0x94>
    80007a84:	00100713          	li	a4,1
    80007a88:	00070793          	mv	a5,a4
    80007a8c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007a90:	0007879b          	sext.w	a5,a5
    80007a94:	fe079ae3          	bnez	a5,80007a88 <acquire+0x5c>
    80007a98:	0ff0000f          	fence
    80007a9c:	fffff097          	auipc	ra,0xfffff
    80007aa0:	89c080e7          	jalr	-1892(ra) # 80006338 <mycpu>
    80007aa4:	01813083          	ld	ra,24(sp)
    80007aa8:	01013403          	ld	s0,16(sp)
    80007aac:	00a4b823          	sd	a0,16(s1)
    80007ab0:	00013903          	ld	s2,0(sp)
    80007ab4:	00813483          	ld	s1,8(sp)
    80007ab8:	02010113          	addi	sp,sp,32
    80007abc:	00008067          	ret
    80007ac0:	0104b903          	ld	s2,16(s1)
    80007ac4:	fffff097          	auipc	ra,0xfffff
    80007ac8:	874080e7          	jalr	-1932(ra) # 80006338 <mycpu>
    80007acc:	faa91ce3          	bne	s2,a0,80007a84 <acquire+0x58>
    80007ad0:	00002517          	auipc	a0,0x2
    80007ad4:	33850513          	addi	a0,a0,824 # 80009e08 <digits+0x20>
    80007ad8:	fffff097          	auipc	ra,0xfffff
    80007adc:	224080e7          	jalr	548(ra) # 80006cfc <panic>
    80007ae0:	00195913          	srli	s2,s2,0x1
    80007ae4:	fffff097          	auipc	ra,0xfffff
    80007ae8:	854080e7          	jalr	-1964(ra) # 80006338 <mycpu>
    80007aec:	00197913          	andi	s2,s2,1
    80007af0:	07252e23          	sw	s2,124(a0)
    80007af4:	f75ff06f          	j	80007a68 <acquire+0x3c>

0000000080007af8 <release>:
    80007af8:	fe010113          	addi	sp,sp,-32
    80007afc:	00813823          	sd	s0,16(sp)
    80007b00:	00113c23          	sd	ra,24(sp)
    80007b04:	00913423          	sd	s1,8(sp)
    80007b08:	01213023          	sd	s2,0(sp)
    80007b0c:	02010413          	addi	s0,sp,32
    80007b10:	00052783          	lw	a5,0(a0)
    80007b14:	00079a63          	bnez	a5,80007b28 <release+0x30>
    80007b18:	00002517          	auipc	a0,0x2
    80007b1c:	2f850513          	addi	a0,a0,760 # 80009e10 <digits+0x28>
    80007b20:	fffff097          	auipc	ra,0xfffff
    80007b24:	1dc080e7          	jalr	476(ra) # 80006cfc <panic>
    80007b28:	01053903          	ld	s2,16(a0)
    80007b2c:	00050493          	mv	s1,a0
    80007b30:	fffff097          	auipc	ra,0xfffff
    80007b34:	808080e7          	jalr	-2040(ra) # 80006338 <mycpu>
    80007b38:	fea910e3          	bne	s2,a0,80007b18 <release+0x20>
    80007b3c:	0004b823          	sd	zero,16(s1)
    80007b40:	0ff0000f          	fence
    80007b44:	0f50000f          	fence	iorw,ow
    80007b48:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007b4c:	ffffe097          	auipc	ra,0xffffe
    80007b50:	7ec080e7          	jalr	2028(ra) # 80006338 <mycpu>
    80007b54:	100027f3          	csrr	a5,sstatus
    80007b58:	0027f793          	andi	a5,a5,2
    80007b5c:	04079a63          	bnez	a5,80007bb0 <release+0xb8>
    80007b60:	07852783          	lw	a5,120(a0)
    80007b64:	02f05e63          	blez	a5,80007ba0 <release+0xa8>
    80007b68:	fff7871b          	addiw	a4,a5,-1
    80007b6c:	06e52c23          	sw	a4,120(a0)
    80007b70:	00071c63          	bnez	a4,80007b88 <release+0x90>
    80007b74:	07c52783          	lw	a5,124(a0)
    80007b78:	00078863          	beqz	a5,80007b88 <release+0x90>
    80007b7c:	100027f3          	csrr	a5,sstatus
    80007b80:	0027e793          	ori	a5,a5,2
    80007b84:	10079073          	csrw	sstatus,a5
    80007b88:	01813083          	ld	ra,24(sp)
    80007b8c:	01013403          	ld	s0,16(sp)
    80007b90:	00813483          	ld	s1,8(sp)
    80007b94:	00013903          	ld	s2,0(sp)
    80007b98:	02010113          	addi	sp,sp,32
    80007b9c:	00008067          	ret
    80007ba0:	00002517          	auipc	a0,0x2
    80007ba4:	29050513          	addi	a0,a0,656 # 80009e30 <digits+0x48>
    80007ba8:	fffff097          	auipc	ra,0xfffff
    80007bac:	154080e7          	jalr	340(ra) # 80006cfc <panic>
    80007bb0:	00002517          	auipc	a0,0x2
    80007bb4:	26850513          	addi	a0,a0,616 # 80009e18 <digits+0x30>
    80007bb8:	fffff097          	auipc	ra,0xfffff
    80007bbc:	144080e7          	jalr	324(ra) # 80006cfc <panic>

0000000080007bc0 <holding>:
    80007bc0:	00052783          	lw	a5,0(a0)
    80007bc4:	00079663          	bnez	a5,80007bd0 <holding+0x10>
    80007bc8:	00000513          	li	a0,0
    80007bcc:	00008067          	ret
    80007bd0:	fe010113          	addi	sp,sp,-32
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	00113c23          	sd	ra,24(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	01053483          	ld	s1,16(a0)
    80007be8:	ffffe097          	auipc	ra,0xffffe
    80007bec:	750080e7          	jalr	1872(ra) # 80006338 <mycpu>
    80007bf0:	01813083          	ld	ra,24(sp)
    80007bf4:	01013403          	ld	s0,16(sp)
    80007bf8:	40a48533          	sub	a0,s1,a0
    80007bfc:	00153513          	seqz	a0,a0
    80007c00:	00813483          	ld	s1,8(sp)
    80007c04:	02010113          	addi	sp,sp,32
    80007c08:	00008067          	ret

0000000080007c0c <push_off>:
    80007c0c:	fe010113          	addi	sp,sp,-32
    80007c10:	00813823          	sd	s0,16(sp)
    80007c14:	00113c23          	sd	ra,24(sp)
    80007c18:	00913423          	sd	s1,8(sp)
    80007c1c:	02010413          	addi	s0,sp,32
    80007c20:	100024f3          	csrr	s1,sstatus
    80007c24:	100027f3          	csrr	a5,sstatus
    80007c28:	ffd7f793          	andi	a5,a5,-3
    80007c2c:	10079073          	csrw	sstatus,a5
    80007c30:	ffffe097          	auipc	ra,0xffffe
    80007c34:	708080e7          	jalr	1800(ra) # 80006338 <mycpu>
    80007c38:	07852783          	lw	a5,120(a0)
    80007c3c:	02078663          	beqz	a5,80007c68 <push_off+0x5c>
    80007c40:	ffffe097          	auipc	ra,0xffffe
    80007c44:	6f8080e7          	jalr	1784(ra) # 80006338 <mycpu>
    80007c48:	07852783          	lw	a5,120(a0)
    80007c4c:	01813083          	ld	ra,24(sp)
    80007c50:	01013403          	ld	s0,16(sp)
    80007c54:	0017879b          	addiw	a5,a5,1
    80007c58:	06f52c23          	sw	a5,120(a0)
    80007c5c:	00813483          	ld	s1,8(sp)
    80007c60:	02010113          	addi	sp,sp,32
    80007c64:	00008067          	ret
    80007c68:	0014d493          	srli	s1,s1,0x1
    80007c6c:	ffffe097          	auipc	ra,0xffffe
    80007c70:	6cc080e7          	jalr	1740(ra) # 80006338 <mycpu>
    80007c74:	0014f493          	andi	s1,s1,1
    80007c78:	06952e23          	sw	s1,124(a0)
    80007c7c:	fc5ff06f          	j	80007c40 <push_off+0x34>

0000000080007c80 <pop_off>:
    80007c80:	ff010113          	addi	sp,sp,-16
    80007c84:	00813023          	sd	s0,0(sp)
    80007c88:	00113423          	sd	ra,8(sp)
    80007c8c:	01010413          	addi	s0,sp,16
    80007c90:	ffffe097          	auipc	ra,0xffffe
    80007c94:	6a8080e7          	jalr	1704(ra) # 80006338 <mycpu>
    80007c98:	100027f3          	csrr	a5,sstatus
    80007c9c:	0027f793          	andi	a5,a5,2
    80007ca0:	04079663          	bnez	a5,80007cec <pop_off+0x6c>
    80007ca4:	07852783          	lw	a5,120(a0)
    80007ca8:	02f05a63          	blez	a5,80007cdc <pop_off+0x5c>
    80007cac:	fff7871b          	addiw	a4,a5,-1
    80007cb0:	06e52c23          	sw	a4,120(a0)
    80007cb4:	00071c63          	bnez	a4,80007ccc <pop_off+0x4c>
    80007cb8:	07c52783          	lw	a5,124(a0)
    80007cbc:	00078863          	beqz	a5,80007ccc <pop_off+0x4c>
    80007cc0:	100027f3          	csrr	a5,sstatus
    80007cc4:	0027e793          	ori	a5,a5,2
    80007cc8:	10079073          	csrw	sstatus,a5
    80007ccc:	00813083          	ld	ra,8(sp)
    80007cd0:	00013403          	ld	s0,0(sp)
    80007cd4:	01010113          	addi	sp,sp,16
    80007cd8:	00008067          	ret
    80007cdc:	00002517          	auipc	a0,0x2
    80007ce0:	15450513          	addi	a0,a0,340 # 80009e30 <digits+0x48>
    80007ce4:	fffff097          	auipc	ra,0xfffff
    80007ce8:	018080e7          	jalr	24(ra) # 80006cfc <panic>
    80007cec:	00002517          	auipc	a0,0x2
    80007cf0:	12c50513          	addi	a0,a0,300 # 80009e18 <digits+0x30>
    80007cf4:	fffff097          	auipc	ra,0xfffff
    80007cf8:	008080e7          	jalr	8(ra) # 80006cfc <panic>

0000000080007cfc <push_on>:
    80007cfc:	fe010113          	addi	sp,sp,-32
    80007d00:	00813823          	sd	s0,16(sp)
    80007d04:	00113c23          	sd	ra,24(sp)
    80007d08:	00913423          	sd	s1,8(sp)
    80007d0c:	02010413          	addi	s0,sp,32
    80007d10:	100024f3          	csrr	s1,sstatus
    80007d14:	100027f3          	csrr	a5,sstatus
    80007d18:	0027e793          	ori	a5,a5,2
    80007d1c:	10079073          	csrw	sstatus,a5
    80007d20:	ffffe097          	auipc	ra,0xffffe
    80007d24:	618080e7          	jalr	1560(ra) # 80006338 <mycpu>
    80007d28:	07852783          	lw	a5,120(a0)
    80007d2c:	02078663          	beqz	a5,80007d58 <push_on+0x5c>
    80007d30:	ffffe097          	auipc	ra,0xffffe
    80007d34:	608080e7          	jalr	1544(ra) # 80006338 <mycpu>
    80007d38:	07852783          	lw	a5,120(a0)
    80007d3c:	01813083          	ld	ra,24(sp)
    80007d40:	01013403          	ld	s0,16(sp)
    80007d44:	0017879b          	addiw	a5,a5,1
    80007d48:	06f52c23          	sw	a5,120(a0)
    80007d4c:	00813483          	ld	s1,8(sp)
    80007d50:	02010113          	addi	sp,sp,32
    80007d54:	00008067          	ret
    80007d58:	0014d493          	srli	s1,s1,0x1
    80007d5c:	ffffe097          	auipc	ra,0xffffe
    80007d60:	5dc080e7          	jalr	1500(ra) # 80006338 <mycpu>
    80007d64:	0014f493          	andi	s1,s1,1
    80007d68:	06952e23          	sw	s1,124(a0)
    80007d6c:	fc5ff06f          	j	80007d30 <push_on+0x34>

0000000080007d70 <pop_on>:
    80007d70:	ff010113          	addi	sp,sp,-16
    80007d74:	00813023          	sd	s0,0(sp)
    80007d78:	00113423          	sd	ra,8(sp)
    80007d7c:	01010413          	addi	s0,sp,16
    80007d80:	ffffe097          	auipc	ra,0xffffe
    80007d84:	5b8080e7          	jalr	1464(ra) # 80006338 <mycpu>
    80007d88:	100027f3          	csrr	a5,sstatus
    80007d8c:	0027f793          	andi	a5,a5,2
    80007d90:	04078463          	beqz	a5,80007dd8 <pop_on+0x68>
    80007d94:	07852783          	lw	a5,120(a0)
    80007d98:	02f05863          	blez	a5,80007dc8 <pop_on+0x58>
    80007d9c:	fff7879b          	addiw	a5,a5,-1
    80007da0:	06f52c23          	sw	a5,120(a0)
    80007da4:	07853783          	ld	a5,120(a0)
    80007da8:	00079863          	bnez	a5,80007db8 <pop_on+0x48>
    80007dac:	100027f3          	csrr	a5,sstatus
    80007db0:	ffd7f793          	andi	a5,a5,-3
    80007db4:	10079073          	csrw	sstatus,a5
    80007db8:	00813083          	ld	ra,8(sp)
    80007dbc:	00013403          	ld	s0,0(sp)
    80007dc0:	01010113          	addi	sp,sp,16
    80007dc4:	00008067          	ret
    80007dc8:	00002517          	auipc	a0,0x2
    80007dcc:	09050513          	addi	a0,a0,144 # 80009e58 <digits+0x70>
    80007dd0:	fffff097          	auipc	ra,0xfffff
    80007dd4:	f2c080e7          	jalr	-212(ra) # 80006cfc <panic>
    80007dd8:	00002517          	auipc	a0,0x2
    80007ddc:	06050513          	addi	a0,a0,96 # 80009e38 <digits+0x50>
    80007de0:	fffff097          	auipc	ra,0xfffff
    80007de4:	f1c080e7          	jalr	-228(ra) # 80006cfc <panic>

0000000080007de8 <__memset>:
    80007de8:	ff010113          	addi	sp,sp,-16
    80007dec:	00813423          	sd	s0,8(sp)
    80007df0:	01010413          	addi	s0,sp,16
    80007df4:	1a060e63          	beqz	a2,80007fb0 <__memset+0x1c8>
    80007df8:	40a007b3          	neg	a5,a0
    80007dfc:	0077f793          	andi	a5,a5,7
    80007e00:	00778693          	addi	a3,a5,7
    80007e04:	00b00813          	li	a6,11
    80007e08:	0ff5f593          	andi	a1,a1,255
    80007e0c:	fff6071b          	addiw	a4,a2,-1
    80007e10:	1b06e663          	bltu	a3,a6,80007fbc <__memset+0x1d4>
    80007e14:	1cd76463          	bltu	a4,a3,80007fdc <__memset+0x1f4>
    80007e18:	1a078e63          	beqz	a5,80007fd4 <__memset+0x1ec>
    80007e1c:	00b50023          	sb	a1,0(a0)
    80007e20:	00100713          	li	a4,1
    80007e24:	1ae78463          	beq	a5,a4,80007fcc <__memset+0x1e4>
    80007e28:	00b500a3          	sb	a1,1(a0)
    80007e2c:	00200713          	li	a4,2
    80007e30:	1ae78a63          	beq	a5,a4,80007fe4 <__memset+0x1fc>
    80007e34:	00b50123          	sb	a1,2(a0)
    80007e38:	00300713          	li	a4,3
    80007e3c:	18e78463          	beq	a5,a4,80007fc4 <__memset+0x1dc>
    80007e40:	00b501a3          	sb	a1,3(a0)
    80007e44:	00400713          	li	a4,4
    80007e48:	1ae78263          	beq	a5,a4,80007fec <__memset+0x204>
    80007e4c:	00b50223          	sb	a1,4(a0)
    80007e50:	00500713          	li	a4,5
    80007e54:	1ae78063          	beq	a5,a4,80007ff4 <__memset+0x20c>
    80007e58:	00b502a3          	sb	a1,5(a0)
    80007e5c:	00700713          	li	a4,7
    80007e60:	18e79e63          	bne	a5,a4,80007ffc <__memset+0x214>
    80007e64:	00b50323          	sb	a1,6(a0)
    80007e68:	00700e93          	li	t4,7
    80007e6c:	00859713          	slli	a4,a1,0x8
    80007e70:	00e5e733          	or	a4,a1,a4
    80007e74:	01059e13          	slli	t3,a1,0x10
    80007e78:	01c76e33          	or	t3,a4,t3
    80007e7c:	01859313          	slli	t1,a1,0x18
    80007e80:	006e6333          	or	t1,t3,t1
    80007e84:	02059893          	slli	a7,a1,0x20
    80007e88:	40f60e3b          	subw	t3,a2,a5
    80007e8c:	011368b3          	or	a7,t1,a7
    80007e90:	02859813          	slli	a6,a1,0x28
    80007e94:	0108e833          	or	a6,a7,a6
    80007e98:	03059693          	slli	a3,a1,0x30
    80007e9c:	003e589b          	srliw	a7,t3,0x3
    80007ea0:	00d866b3          	or	a3,a6,a3
    80007ea4:	03859713          	slli	a4,a1,0x38
    80007ea8:	00389813          	slli	a6,a7,0x3
    80007eac:	00f507b3          	add	a5,a0,a5
    80007eb0:	00e6e733          	or	a4,a3,a4
    80007eb4:	000e089b          	sext.w	a7,t3
    80007eb8:	00f806b3          	add	a3,a6,a5
    80007ebc:	00e7b023          	sd	a4,0(a5)
    80007ec0:	00878793          	addi	a5,a5,8
    80007ec4:	fed79ce3          	bne	a5,a3,80007ebc <__memset+0xd4>
    80007ec8:	ff8e7793          	andi	a5,t3,-8
    80007ecc:	0007871b          	sext.w	a4,a5
    80007ed0:	01d787bb          	addw	a5,a5,t4
    80007ed4:	0ce88e63          	beq	a7,a4,80007fb0 <__memset+0x1c8>
    80007ed8:	00f50733          	add	a4,a0,a5
    80007edc:	00b70023          	sb	a1,0(a4)
    80007ee0:	0017871b          	addiw	a4,a5,1
    80007ee4:	0cc77663          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007ee8:	00e50733          	add	a4,a0,a4
    80007eec:	00b70023          	sb	a1,0(a4)
    80007ef0:	0027871b          	addiw	a4,a5,2
    80007ef4:	0ac77e63          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007ef8:	00e50733          	add	a4,a0,a4
    80007efc:	00b70023          	sb	a1,0(a4)
    80007f00:	0037871b          	addiw	a4,a5,3
    80007f04:	0ac77663          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f08:	00e50733          	add	a4,a0,a4
    80007f0c:	00b70023          	sb	a1,0(a4)
    80007f10:	0047871b          	addiw	a4,a5,4
    80007f14:	08c77e63          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f18:	00e50733          	add	a4,a0,a4
    80007f1c:	00b70023          	sb	a1,0(a4)
    80007f20:	0057871b          	addiw	a4,a5,5
    80007f24:	08c77663          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f28:	00e50733          	add	a4,a0,a4
    80007f2c:	00b70023          	sb	a1,0(a4)
    80007f30:	0067871b          	addiw	a4,a5,6
    80007f34:	06c77e63          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f38:	00e50733          	add	a4,a0,a4
    80007f3c:	00b70023          	sb	a1,0(a4)
    80007f40:	0077871b          	addiw	a4,a5,7
    80007f44:	06c77663          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f48:	00e50733          	add	a4,a0,a4
    80007f4c:	00b70023          	sb	a1,0(a4)
    80007f50:	0087871b          	addiw	a4,a5,8
    80007f54:	04c77e63          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f58:	00e50733          	add	a4,a0,a4
    80007f5c:	00b70023          	sb	a1,0(a4)
    80007f60:	0097871b          	addiw	a4,a5,9
    80007f64:	04c77663          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f68:	00e50733          	add	a4,a0,a4
    80007f6c:	00b70023          	sb	a1,0(a4)
    80007f70:	00a7871b          	addiw	a4,a5,10
    80007f74:	02c77e63          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f78:	00e50733          	add	a4,a0,a4
    80007f7c:	00b70023          	sb	a1,0(a4)
    80007f80:	00b7871b          	addiw	a4,a5,11
    80007f84:	02c77663          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f88:	00e50733          	add	a4,a0,a4
    80007f8c:	00b70023          	sb	a1,0(a4)
    80007f90:	00c7871b          	addiw	a4,a5,12
    80007f94:	00c77e63          	bgeu	a4,a2,80007fb0 <__memset+0x1c8>
    80007f98:	00e50733          	add	a4,a0,a4
    80007f9c:	00b70023          	sb	a1,0(a4)
    80007fa0:	00d7879b          	addiw	a5,a5,13
    80007fa4:	00c7f663          	bgeu	a5,a2,80007fb0 <__memset+0x1c8>
    80007fa8:	00f507b3          	add	a5,a0,a5
    80007fac:	00b78023          	sb	a1,0(a5)
    80007fb0:	00813403          	ld	s0,8(sp)
    80007fb4:	01010113          	addi	sp,sp,16
    80007fb8:	00008067          	ret
    80007fbc:	00b00693          	li	a3,11
    80007fc0:	e55ff06f          	j	80007e14 <__memset+0x2c>
    80007fc4:	00300e93          	li	t4,3
    80007fc8:	ea5ff06f          	j	80007e6c <__memset+0x84>
    80007fcc:	00100e93          	li	t4,1
    80007fd0:	e9dff06f          	j	80007e6c <__memset+0x84>
    80007fd4:	00000e93          	li	t4,0
    80007fd8:	e95ff06f          	j	80007e6c <__memset+0x84>
    80007fdc:	00000793          	li	a5,0
    80007fe0:	ef9ff06f          	j	80007ed8 <__memset+0xf0>
    80007fe4:	00200e93          	li	t4,2
    80007fe8:	e85ff06f          	j	80007e6c <__memset+0x84>
    80007fec:	00400e93          	li	t4,4
    80007ff0:	e7dff06f          	j	80007e6c <__memset+0x84>
    80007ff4:	00500e93          	li	t4,5
    80007ff8:	e75ff06f          	j	80007e6c <__memset+0x84>
    80007ffc:	00600e93          	li	t4,6
    80008000:	e6dff06f          	j	80007e6c <__memset+0x84>

0000000080008004 <__memmove>:
    80008004:	ff010113          	addi	sp,sp,-16
    80008008:	00813423          	sd	s0,8(sp)
    8000800c:	01010413          	addi	s0,sp,16
    80008010:	0e060863          	beqz	a2,80008100 <__memmove+0xfc>
    80008014:	fff6069b          	addiw	a3,a2,-1
    80008018:	0006881b          	sext.w	a6,a3
    8000801c:	0ea5e863          	bltu	a1,a0,8000810c <__memmove+0x108>
    80008020:	00758713          	addi	a4,a1,7
    80008024:	00a5e7b3          	or	a5,a1,a0
    80008028:	40a70733          	sub	a4,a4,a0
    8000802c:	0077f793          	andi	a5,a5,7
    80008030:	00f73713          	sltiu	a4,a4,15
    80008034:	00174713          	xori	a4,a4,1
    80008038:	0017b793          	seqz	a5,a5
    8000803c:	00e7f7b3          	and	a5,a5,a4
    80008040:	10078863          	beqz	a5,80008150 <__memmove+0x14c>
    80008044:	00900793          	li	a5,9
    80008048:	1107f463          	bgeu	a5,a6,80008150 <__memmove+0x14c>
    8000804c:	0036581b          	srliw	a6,a2,0x3
    80008050:	fff8081b          	addiw	a6,a6,-1
    80008054:	02081813          	slli	a6,a6,0x20
    80008058:	01d85893          	srli	a7,a6,0x1d
    8000805c:	00858813          	addi	a6,a1,8
    80008060:	00058793          	mv	a5,a1
    80008064:	00050713          	mv	a4,a0
    80008068:	01088833          	add	a6,a7,a6
    8000806c:	0007b883          	ld	a7,0(a5)
    80008070:	00878793          	addi	a5,a5,8
    80008074:	00870713          	addi	a4,a4,8
    80008078:	ff173c23          	sd	a7,-8(a4)
    8000807c:	ff0798e3          	bne	a5,a6,8000806c <__memmove+0x68>
    80008080:	ff867713          	andi	a4,a2,-8
    80008084:	02071793          	slli	a5,a4,0x20
    80008088:	0207d793          	srli	a5,a5,0x20
    8000808c:	00f585b3          	add	a1,a1,a5
    80008090:	40e686bb          	subw	a3,a3,a4
    80008094:	00f507b3          	add	a5,a0,a5
    80008098:	06e60463          	beq	a2,a4,80008100 <__memmove+0xfc>
    8000809c:	0005c703          	lbu	a4,0(a1)
    800080a0:	00e78023          	sb	a4,0(a5)
    800080a4:	04068e63          	beqz	a3,80008100 <__memmove+0xfc>
    800080a8:	0015c603          	lbu	a2,1(a1)
    800080ac:	00100713          	li	a4,1
    800080b0:	00c780a3          	sb	a2,1(a5)
    800080b4:	04e68663          	beq	a3,a4,80008100 <__memmove+0xfc>
    800080b8:	0025c603          	lbu	a2,2(a1)
    800080bc:	00200713          	li	a4,2
    800080c0:	00c78123          	sb	a2,2(a5)
    800080c4:	02e68e63          	beq	a3,a4,80008100 <__memmove+0xfc>
    800080c8:	0035c603          	lbu	a2,3(a1)
    800080cc:	00300713          	li	a4,3
    800080d0:	00c781a3          	sb	a2,3(a5)
    800080d4:	02e68663          	beq	a3,a4,80008100 <__memmove+0xfc>
    800080d8:	0045c603          	lbu	a2,4(a1)
    800080dc:	00400713          	li	a4,4
    800080e0:	00c78223          	sb	a2,4(a5)
    800080e4:	00e68e63          	beq	a3,a4,80008100 <__memmove+0xfc>
    800080e8:	0055c603          	lbu	a2,5(a1)
    800080ec:	00500713          	li	a4,5
    800080f0:	00c782a3          	sb	a2,5(a5)
    800080f4:	00e68663          	beq	a3,a4,80008100 <__memmove+0xfc>
    800080f8:	0065c703          	lbu	a4,6(a1)
    800080fc:	00e78323          	sb	a4,6(a5)
    80008100:	00813403          	ld	s0,8(sp)
    80008104:	01010113          	addi	sp,sp,16
    80008108:	00008067          	ret
    8000810c:	02061713          	slli	a4,a2,0x20
    80008110:	02075713          	srli	a4,a4,0x20
    80008114:	00e587b3          	add	a5,a1,a4
    80008118:	f0f574e3          	bgeu	a0,a5,80008020 <__memmove+0x1c>
    8000811c:	02069613          	slli	a2,a3,0x20
    80008120:	02065613          	srli	a2,a2,0x20
    80008124:	fff64613          	not	a2,a2
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00c78633          	add	a2,a5,a2
    80008130:	fff7c683          	lbu	a3,-1(a5)
    80008134:	fff78793          	addi	a5,a5,-1
    80008138:	fff70713          	addi	a4,a4,-1
    8000813c:	00d70023          	sb	a3,0(a4)
    80008140:	fec798e3          	bne	a5,a2,80008130 <__memmove+0x12c>
    80008144:	00813403          	ld	s0,8(sp)
    80008148:	01010113          	addi	sp,sp,16
    8000814c:	00008067          	ret
    80008150:	02069713          	slli	a4,a3,0x20
    80008154:	02075713          	srli	a4,a4,0x20
    80008158:	00170713          	addi	a4,a4,1
    8000815c:	00e50733          	add	a4,a0,a4
    80008160:	00050793          	mv	a5,a0
    80008164:	0005c683          	lbu	a3,0(a1)
    80008168:	00178793          	addi	a5,a5,1
    8000816c:	00158593          	addi	a1,a1,1
    80008170:	fed78fa3          	sb	a3,-1(a5)
    80008174:	fee798e3          	bne	a5,a4,80008164 <__memmove+0x160>
    80008178:	f89ff06f          	j	80008100 <__memmove+0xfc>

000000008000817c <__putc>:
    8000817c:	fe010113          	addi	sp,sp,-32
    80008180:	00813823          	sd	s0,16(sp)
    80008184:	00113c23          	sd	ra,24(sp)
    80008188:	02010413          	addi	s0,sp,32
    8000818c:	00050793          	mv	a5,a0
    80008190:	fef40593          	addi	a1,s0,-17
    80008194:	00100613          	li	a2,1
    80008198:	00000513          	li	a0,0
    8000819c:	fef407a3          	sb	a5,-17(s0)
    800081a0:	fffff097          	auipc	ra,0xfffff
    800081a4:	b3c080e7          	jalr	-1220(ra) # 80006cdc <console_write>
    800081a8:	01813083          	ld	ra,24(sp)
    800081ac:	01013403          	ld	s0,16(sp)
    800081b0:	02010113          	addi	sp,sp,32
    800081b4:	00008067          	ret

00000000800081b8 <__getc>:
    800081b8:	fe010113          	addi	sp,sp,-32
    800081bc:	00813823          	sd	s0,16(sp)
    800081c0:	00113c23          	sd	ra,24(sp)
    800081c4:	02010413          	addi	s0,sp,32
    800081c8:	fe840593          	addi	a1,s0,-24
    800081cc:	00100613          	li	a2,1
    800081d0:	00000513          	li	a0,0
    800081d4:	fffff097          	auipc	ra,0xfffff
    800081d8:	ae8080e7          	jalr	-1304(ra) # 80006cbc <console_read>
    800081dc:	fe844503          	lbu	a0,-24(s0)
    800081e0:	01813083          	ld	ra,24(sp)
    800081e4:	01013403          	ld	s0,16(sp)
    800081e8:	02010113          	addi	sp,sp,32
    800081ec:	00008067          	ret

00000000800081f0 <console_handler>:
    800081f0:	fe010113          	addi	sp,sp,-32
    800081f4:	00813823          	sd	s0,16(sp)
    800081f8:	00113c23          	sd	ra,24(sp)
    800081fc:	00913423          	sd	s1,8(sp)
    80008200:	02010413          	addi	s0,sp,32
    80008204:	14202773          	csrr	a4,scause
    80008208:	100027f3          	csrr	a5,sstatus
    8000820c:	0027f793          	andi	a5,a5,2
    80008210:	06079e63          	bnez	a5,8000828c <console_handler+0x9c>
    80008214:	00074c63          	bltz	a4,8000822c <console_handler+0x3c>
    80008218:	01813083          	ld	ra,24(sp)
    8000821c:	01013403          	ld	s0,16(sp)
    80008220:	00813483          	ld	s1,8(sp)
    80008224:	02010113          	addi	sp,sp,32
    80008228:	00008067          	ret
    8000822c:	0ff77713          	andi	a4,a4,255
    80008230:	00900793          	li	a5,9
    80008234:	fef712e3          	bne	a4,a5,80008218 <console_handler+0x28>
    80008238:	ffffe097          	auipc	ra,0xffffe
    8000823c:	6dc080e7          	jalr	1756(ra) # 80006914 <plic_claim>
    80008240:	00a00793          	li	a5,10
    80008244:	00050493          	mv	s1,a0
    80008248:	02f50c63          	beq	a0,a5,80008280 <console_handler+0x90>
    8000824c:	fc0506e3          	beqz	a0,80008218 <console_handler+0x28>
    80008250:	00050593          	mv	a1,a0
    80008254:	00002517          	auipc	a0,0x2
    80008258:	b0c50513          	addi	a0,a0,-1268 # 80009d60 <_ZTV12ConsumerSync+0x108>
    8000825c:	fffff097          	auipc	ra,0xfffff
    80008260:	afc080e7          	jalr	-1284(ra) # 80006d58 <__printf>
    80008264:	01013403          	ld	s0,16(sp)
    80008268:	01813083          	ld	ra,24(sp)
    8000826c:	00048513          	mv	a0,s1
    80008270:	00813483          	ld	s1,8(sp)
    80008274:	02010113          	addi	sp,sp,32
    80008278:	ffffe317          	auipc	t1,0xffffe
    8000827c:	6d430067          	jr	1748(t1) # 8000694c <plic_complete>
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	3e0080e7          	jalr	992(ra) # 80007660 <uartintr>
    80008288:	fddff06f          	j	80008264 <console_handler+0x74>
    8000828c:	00002517          	auipc	a0,0x2
    80008290:	bd450513          	addi	a0,a0,-1068 # 80009e60 <digits+0x78>
    80008294:	fffff097          	auipc	ra,0xfffff
    80008298:	a68080e7          	jalr	-1432(ra) # 80006cfc <panic>
	...
