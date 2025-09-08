
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	81013103          	ld	sp,-2032(sp) # 8000b810 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1fc060ef          	jal	ra,80006218 <start>

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
    80001084:	19d000ef          	jal	ra,80001a20 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001174:	90078793          	addi	a5,a5,-1792 # 8000ba70 <_ZN9Scheduler16readyThreadQueueE>
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
    8000119c:	8d878793          	addi	a5,a5,-1832 # 8000ba70 <_ZN9Scheduler16readyThreadQueueE>
    800011a0:	0007b503          	ld	a0,0(a5)
    800011a4:	04050263          	beqz	a0,800011e8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011a8:	00853783          	ld	a5,8(a0)
    800011ac:	0000b717          	auipc	a4,0xb
    800011b0:	8cf73223          	sd	a5,-1852(a4) # 8000ba70 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011b4:	02078463          	beqz	a5,800011dc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011b8:	00053483          	ld	s1,0(a0)
        delete elem;
    800011bc:	00001097          	auipc	ra,0x1
    800011c0:	bc4080e7          	jalr	-1084(ra) # 80001d80 <_ZdlPv>
}
    800011c4:	00048513          	mv	a0,s1
    800011c8:	01813083          	ld	ra,24(sp)
    800011cc:	01013403          	ld	s0,16(sp)
    800011d0:	00813483          	ld	s1,8(sp)
    800011d4:	02010113          	addi	sp,sp,32
    800011d8:	00008067          	ret
        if (!head) { tail = 0; }
    800011dc:	0000b797          	auipc	a5,0xb
    800011e0:	8807be23          	sd	zero,-1892(a5) # 8000ba78 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    80001210:	af4080e7          	jalr	-1292(ra) # 80001d00 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001214:	00953023          	sd	s1,0(a0)
    80001218:	00053423          	sd	zero,8(a0)
        if (tail)
    8000121c:	0000b797          	auipc	a5,0xb
    80001220:	85478793          	addi	a5,a5,-1964 # 8000ba70 <_ZN9Scheduler16readyThreadQueueE>
    80001224:	0087b783          	ld	a5,8(a5)
    80001228:	02078263          	beqz	a5,8000124c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000122c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001230:	0000b797          	auipc	a5,0xb
    80001234:	84a7b423          	sd	a0,-1976(a5) # 8000ba78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001238:	01813083          	ld	ra,24(sp)
    8000123c:	01013403          	ld	s0,16(sp)
    80001240:	00813483          	ld	s1,8(sp)
    80001244:	02010113          	addi	sp,sp,32
    80001248:	00008067          	ret
            head = tail = elem;
    8000124c:	0000b797          	auipc	a5,0xb
    80001250:	82478793          	addi	a5,a5,-2012 # 8000ba70 <_ZN9Scheduler16readyThreadQueueE>
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
{
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
    closed_ = true;
    800012dc:	00100793          	li	a5,1
    800012e0:	00f50223          	sb	a5,4(a0)
    800012e4:	0280006f          	j	8000130c <_ZN10_semaphore5closeEv+0x4c>
        if (!head) { tail = 0; }
    800012e8:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    800012ec:	00053483          	ld	s1,0(a0)
        delete elem;
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	a90080e7          	jalr	-1392(ra) # 80001d80 <_ZdlPv>
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    800012f8:	02048663          	beqz	s1,80001324 <_ZN10_semaphore5closeEv+0x64>

    void setFinished(bool value) { finished_ = value; }

    void block() { blocked_ = true; }

    void unblock() { blocked_ = false; }
    800012fc:	020488a3          	sb	zero,49(s1)
    {
        t->unblock();
        Scheduler::put(t);
    80001300:	00048513          	mv	a0,s1
    80001304:	00000097          	auipc	ra,0x0
    80001308:	eec080e7          	jalr	-276(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    8000130c:	00893503          	ld	a0,8(s2)
    80001310:	00050a63          	beqz	a0,80001324 <_ZN10_semaphore5closeEv+0x64>
        head = head->next;
    80001314:	00853783          	ld	a5,8(a0)
    80001318:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    8000131c:	fc0798e3          	bnez	a5,800012ec <_ZN10_semaphore5closeEv+0x2c>
    80001320:	fc9ff06f          	j	800012e8 <_ZN10_semaphore5closeEv+0x28>
    }
}
    80001324:	01813083          	ld	ra,24(sp)
    80001328:	01013403          	ld	s0,16(sp)
    8000132c:	00813483          	ld	s1,8(sp)
    80001330:	00013903          	ld	s2,0(sp)
    80001334:	02010113          	addi	sp,sp,32
    80001338:	00008067          	ret

000000008000133c <_ZN10_semaphore4waitEv>:

int _semaphore::wait()
{
    // Cannot wait on a closed semaphore.
    if (closed_)
    8000133c:	00454783          	lbu	a5,4(a0)
    80001340:	0a079063          	bnez	a5,800013e0 <_ZN10_semaphore4waitEv+0xa4>
    {
        return -1;
    }

     if (value_ > 0)
    80001344:	00052783          	lw	a5,0(a0)
    80001348:	00f05a63          	blez	a5,8000135c <_ZN10_semaphore4waitEv+0x20>
    {
        value_ -= 1;
    8000134c:	fff7879b          	addiw	a5,a5,-1
    80001350:	00f52023          	sw	a5,0(a0)
        return 0;
    80001354:	00000513          	li	a0,0
    80001358:	00008067          	ret
{
    8000135c:	fe010113          	addi	sp,sp,-32
    80001360:	00113c23          	sd	ra,24(sp)
    80001364:	00813823          	sd	s0,16(sp)
    80001368:	00913423          	sd	s1,8(sp)
    8000136c:	01213023          	sd	s2,0(sp)
    80001370:	02010413          	addi	s0,sp,32
    80001374:	00050493          	mv	s1,a0
    }

    // We do not need to remove the thread from the scheduler, just block it, 
    // and add it to the blocked list (waiting queue), then dispatch.
    TCB* old = TCB::running;
    80001378:	0000a797          	auipc	a5,0xa
    8000137c:	67078793          	addi	a5,a5,1648 # 8000b9e8 <_ZN3TCB7runningE>
    80001380:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    80001384:	00100793          	li	a5,1
    80001388:	02f908a3          	sb	a5,49(s2)
        Elem *elem = new Elem(data, 0);
    8000138c:	01000513          	li	a0,16
    80001390:	00001097          	auipc	ra,0x1
    80001394:	970080e7          	jalr	-1680(ra) # 80001d00 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001398:	01253023          	sd	s2,0(a0)
    8000139c:	00053423          	sd	zero,8(a0)
        if (tail)
    800013a0:	0104b783          	ld	a5,16(s1)
    800013a4:	02078863          	beqz	a5,800013d4 <_ZN10_semaphore4waitEv+0x98>
            tail->next = elem;
    800013a8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800013ac:	00a4b823          	sd	a0,16(s1)
    old->block();
    blocked_.addLast(old);
    TCB::yield();
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	fb0080e7          	jalr	-80(ra) # 80002360 <_ZN3TCB5yieldEv>

    // TODO: Check if this works as a way of detecting closed semaphores.
    return 0;
    800013b8:	00000513          	li	a0,0
}
    800013bc:	01813083          	ld	ra,24(sp)
    800013c0:	01013403          	ld	s0,16(sp)
    800013c4:	00813483          	ld	s1,8(sp)
    800013c8:	00013903          	ld	s2,0(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret
            head = tail = elem;
    800013d4:	00a4b823          	sd	a0,16(s1)
    800013d8:	00a4b423          	sd	a0,8(s1)
    800013dc:	fd5ff06f          	j	800013b0 <_ZN10_semaphore4waitEv+0x74>
        return -1;
    800013e0:	fff00513          	li	a0,-1
}
    800013e4:	00008067          	ret

00000000800013e8 <_ZN10_semaphore6signalEv>:

void _semaphore::signal()
{
    800013e8:	fe010113          	addi	sp,sp,-32
    800013ec:	00113c23          	sd	ra,24(sp)
    800013f0:	00813823          	sd	s0,16(sp)
    800013f4:	00913423          	sd	s1,8(sp)
    800013f8:	01213023          	sd	s2,0(sp)
    800013fc:	02010413          	addi	s0,sp,32
    80001400:	00050493          	mv	s1,a0
        if (!head) { return 0; }
    80001404:	00853503          	ld	a0,8(a0)
    80001408:	02050e63          	beqz	a0,80001444 <_ZN10_semaphore6signalEv+0x5c>
        head = head->next;
    8000140c:	00853783          	ld	a5,8(a0)
    80001410:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001414:	02078463          	beqz	a5,8000143c <_ZN10_semaphore6signalEv+0x54>
        T *ret = elem->data;
    80001418:	00053903          	ld	s2,0(a0)
        delete elem;
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	964080e7          	jalr	-1692(ra) # 80001d80 <_ZdlPv>
    if (TCB *t = blocked_.removeFirst())
    80001424:	02090063          	beqz	s2,80001444 <_ZN10_semaphore6signalEv+0x5c>
    void unblock() { blocked_ = false; }
    80001428:	020908a3          	sb	zero,49(s2)
    {
        t->unblock();
        Scheduler::put(t);
    8000142c:	00090513          	mv	a0,s2
    80001430:	00000097          	auipc	ra,0x0
    80001434:	dc0080e7          	jalr	-576(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    80001438:	0180006f          	j	80001450 <_ZN10_semaphore6signalEv+0x68>
        if (!head) { tail = 0; }
    8000143c:	0004b823          	sd	zero,16(s1)
    80001440:	fd9ff06f          	j	80001418 <_ZN10_semaphore6signalEv+0x30>
    }
    else
    {
        value_ += 1;
    80001444:	0004a783          	lw	a5,0(s1)
    80001448:	0017879b          	addiw	a5,a5,1
    8000144c:	00f4a023          	sw	a5,0(s1)
    }
}
    80001450:	01813083          	ld	ra,24(sp)
    80001454:	01013403          	ld	s0,16(sp)
    80001458:	00813483          	ld	s1,8(sp)
    8000145c:	00013903          	ld	s2,0(sp)
    80001460:	02010113          	addi	sp,sp,32
    80001464:	00008067          	ret

0000000080001468 <_ZN10_semaphoreC1Ei>:

    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00813423          	sd	s0,8(sp)
    80001470:	01010413          	addi	s0,sp,16
    80001474:	00b52023          	sw	a1,0(a0)
    List() : head(0), tail(0) {}
    80001478:	00053423          	sd	zero,8(a0)
    8000147c:	00053823          	sd	zero,16(a0)
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_ZN10_semaphore4openEj>:
{
    8000148c:	fe010113          	addi	sp,sp,-32
    80001490:	00113c23          	sd	ra,24(sp)
    80001494:	00813823          	sd	s0,16(sp)
    80001498:	00913423          	sd	s1,8(sp)
    8000149c:	01213023          	sd	s2,0(sp)
    800014a0:	02010413          	addi	s0,sp,32
    800014a4:	00050913          	mv	s2,a0
    return new _semaphore((int)init);
    800014a8:	01800513          	li	a0,24
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	854080e7          	jalr	-1964(ra) # 80001d00 <_Znwm>
    800014b4:	00050493          	mv	s1,a0
    800014b8:	00090593          	mv	a1,s2
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	fac080e7          	jalr	-84(ra) # 80001468 <_ZN10_semaphoreC1Ei>
}
    800014c4:	00048513          	mv	a0,s1
    800014c8:	01813083          	ld	ra,24(sp)
    800014cc:	01013403          	ld	s0,16(sp)
    800014d0:	00813483          	ld	s1,8(sp)
    800014d4:	00013903          	ld	s2,0(sp)
    800014d8:	02010113          	addi	sp,sp,32
    800014dc:	00008067          	ret

00000000800014e0 <_Z7syscall11SyscallCodemmmmmmmm>:
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/print.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800014ec:	00000073          	ecall
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    800014f0:	00050513          	mv	a0,a0
    return result;
}
    800014f4:	00813403          	ld	s0,8(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <_Z9mem_allocm>:

// TODO: Do this with number of blocks instead of size.
void* mem_alloc (size_t size) {
    80001500:	fd010113          	addi	sp,sp,-48
    80001504:	02113423          	sd	ra,40(sp)
    80001508:	02813023          	sd	s0,32(sp)
    8000150c:	00913c23          	sd	s1,24(sp)
    80001510:	03010413          	addi	s0,sp,48
    80001514:	00050493          	mv	s1,a0
    debug_print("Syscall malloc called\n");
    80001518:	00008517          	auipc	a0,0x8
    8000151c:	b0850513          	addi	a0,a0,-1272 # 80009020 <CONSOLE_STATUS+0x10>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	950080e7          	jalr	-1712(ra) # 80001e70 <_Z11debug_printPKc>
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    80001528:	00013023          	sd	zero,0(sp)
    8000152c:	00000893          	li	a7,0
    80001530:	00000813          	li	a6,0
    80001534:	00000793          	li	a5,0
    80001538:	00000713          	li	a4,0
    8000153c:	00000693          	li	a3,0
    80001540:	00000613          	li	a2,0
    80001544:	00048593          	mv	a1,s1
    80001548:	00100513          	li	a0,1
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	f94080e7          	jalr	-108(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001554:	02813083          	ld	ra,40(sp)
    80001558:	02013403          	ld	s0,32(sp)
    8000155c:	01813483          	ld	s1,24(sp)
    80001560:	03010113          	addi	sp,sp,48
    80001564:	00008067          	ret

0000000080001568 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001568:	fd010113          	addi	sp,sp,-48
    8000156c:	02113423          	sd	ra,40(sp)
    80001570:	02813023          	sd	s0,32(sp)
    80001574:	00913c23          	sd	s1,24(sp)
    80001578:	03010413          	addi	s0,sp,48
    8000157c:	00050493          	mv	s1,a0
    debug_print("Syscall free called\n");
    80001580:	00008517          	auipc	a0,0x8
    80001584:	ab850513          	addi	a0,a0,-1352 # 80009038 <CONSOLE_STATUS+0x28>
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	8e8080e7          	jalr	-1816(ra) # 80001e70 <_Z11debug_printPKc>
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    80001590:	00013023          	sd	zero,0(sp)
    80001594:	00000893          	li	a7,0
    80001598:	00000813          	li	a6,0
    8000159c:	00000793          	li	a5,0
    800015a0:	00000713          	li	a4,0
    800015a4:	00000693          	li	a3,0
    800015a8:	00000613          	li	a2,0
    800015ac:	00048593          	mv	a1,s1
    800015b0:	00200513          	li	a0,2
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f2c080e7          	jalr	-212(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800015bc:	0005051b          	sext.w	a0,a0
    800015c0:	02813083          	ld	ra,40(sp)
    800015c4:	02013403          	ld	s0,32(sp)
    800015c8:	01813483          	ld	s1,24(sp)
    800015cc:	03010113          	addi	sp,sp,48
    800015d0:	00008067          	ret

00000000800015d4 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	02010413          	addi	s0,sp,32
    debug_print("Syscall get free space called\n");
    800015e4:	00008517          	auipc	a0,0x8
    800015e8:	a6c50513          	addi	a0,a0,-1428 # 80009050 <CONSOLE_STATUS+0x40>
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	884080e7          	jalr	-1916(ra) # 80001e70 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    800015f4:	00013023          	sd	zero,0(sp)
    800015f8:	00000893          	li	a7,0
    800015fc:	00000813          	li	a6,0
    80001600:	00000793          	li	a5,0
    80001604:	00000713          	li	a4,0
    80001608:	00000693          	li	a3,0
    8000160c:	00000613          	li	a2,0
    80001610:	00000593          	li	a1,0
    80001614:	00300513          	li	a0,3
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	ec8080e7          	jalr	-312(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001620:	01813083          	ld	ra,24(sp)
    80001624:	01013403          	ld	s0,16(sp)
    80001628:	02010113          	addi	sp,sp,32
    8000162c:	00008067          	ret

0000000080001630 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    80001630:	fe010113          	addi	sp,sp,-32
    80001634:	00113c23          	sd	ra,24(sp)
    80001638:	00813823          	sd	s0,16(sp)
    8000163c:	02010413          	addi	s0,sp,32
    debug_print("Syscall get largest free block called\n");
    80001640:	00008517          	auipc	a0,0x8
    80001644:	a3050513          	addi	a0,a0,-1488 # 80009070 <CONSOLE_STATUS+0x60>
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	828080e7          	jalr	-2008(ra) # 80001e70 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    80001650:	00013023          	sd	zero,0(sp)
    80001654:	00000893          	li	a7,0
    80001658:	00000813          	li	a6,0
    8000165c:	00000793          	li	a5,0
    80001660:	00000713          	li	a4,0
    80001664:	00000693          	li	a3,0
    80001668:	00000613          	li	a2,0
    8000166c:	00000593          	li	a1,0
    80001670:	00400513          	li	a0,4
    80001674:	00000097          	auipc	ra,0x0
    80001678:	e6c080e7          	jalr	-404(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000167c:	01813083          	ld	ra,24(sp)
    80001680:	01013403          	ld	s0,16(sp)
    80001684:	02010113          	addi	sp,sp,32
    80001688:	00008067          	ret

000000008000168c <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    8000169c:	00013023          	sd	zero,0(sp)
    800016a0:	00000893          	li	a7,0
    800016a4:	00000813          	li	a6,0
    800016a8:	00000793          	li	a5,0
    800016ac:	00000713          	li	a4,0
    800016b0:	00060693          	mv	a3,a2
    800016b4:	00058613          	mv	a2,a1
    800016b8:	00050593          	mv	a1,a0
    800016bc:	01100513          	li	a0,17
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	e20080e7          	jalr	-480(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800016c8:	0005051b          	sext.w	a0,a0
    800016cc:	01813083          	ld	ra,24(sp)
    800016d0:	01013403          	ld	s0,16(sp)
    800016d4:	02010113          	addi	sp,sp,32
    800016d8:	00008067          	ret

00000000800016dc <_Z11thread_exitv>:

int thread_exit () {
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	02010413          	addi	s0,sp,32
    debug_print("Syscall thread exit called\n");
    800016ec:	00008517          	auipc	a0,0x8
    800016f0:	9ac50513          	addi	a0,a0,-1620 # 80009098 <CONSOLE_STATUS+0x88>
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	77c080e7          	jalr	1916(ra) # 80001e70 <_Z11debug_printPKc>
    return syscall(SyscallCode::THREAD_EXIT);
    800016fc:	00013023          	sd	zero,0(sp)
    80001700:	00000893          	li	a7,0
    80001704:	00000813          	li	a6,0
    80001708:	00000793          	li	a5,0
    8000170c:	00000713          	li	a4,0
    80001710:	00000693          	li	a3,0
    80001714:	00000613          	li	a2,0
    80001718:	00000593          	li	a1,0
    8000171c:	01200513          	li	a0,18
    80001720:	00000097          	auipc	ra,0x0
    80001724:	dc0080e7          	jalr	-576(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001728:	0005051b          	sext.w	a0,a0
    8000172c:	01813083          	ld	ra,24(sp)
    80001730:	01013403          	ld	s0,16(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret

000000008000173c <_Z15thread_dispatchv>:

void thread_dispatch () {
    8000173c:	fe010113          	addi	sp,sp,-32
    80001740:	00113c23          	sd	ra,24(sp)
    80001744:	00813823          	sd	s0,16(sp)
    80001748:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_DISPATCH);
    8000174c:	00013023          	sd	zero,0(sp)
    80001750:	00000893          	li	a7,0
    80001754:	00000813          	li	a6,0
    80001758:	00000793          	li	a5,0
    8000175c:	00000713          	li	a4,0
    80001760:	00000693          	li	a3,0
    80001764:	00000613          	li	a2,0
    80001768:	00000593          	li	a1,0
    8000176c:	01300513          	li	a0,19
    80001770:	00000097          	auipc	ra,0x0
    80001774:	d70080e7          	jalr	-656(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001778:	01813083          	ld	ra,24(sp)
    8000177c:	01013403          	ld	s0,16(sp)
    80001780:	02010113          	addi	sp,sp,32
    80001784:	00008067          	ret

0000000080001788 <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init) {
    80001788:	fd010113          	addi	sp,sp,-48
    8000178c:	02113423          	sd	ra,40(sp)
    80001790:	02813023          	sd	s0,32(sp)
    80001794:	00913c23          	sd	s1,24(sp)
    80001798:	01213823          	sd	s2,16(sp)
    8000179c:	03010413          	addi	s0,sp,48
    800017a0:	00050493          	mv	s1,a0
    800017a4:	00058913          	mv	s2,a1
    debug_print("Syscall sem open called\n");
    800017a8:	00008517          	auipc	a0,0x8
    800017ac:	91050513          	addi	a0,a0,-1776 # 800090b8 <CONSOLE_STATUS+0xa8>
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	6c0080e7          	jalr	1728(ra) # 80001e70 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
    800017b8:	00013023          	sd	zero,0(sp)
    800017bc:	00000893          	li	a7,0
    800017c0:	00000813          	li	a6,0
    800017c4:	00000793          	li	a5,0
    800017c8:	00000713          	li	a4,0
    800017cc:	00000693          	li	a3,0
    800017d0:	02091613          	slli	a2,s2,0x20
    800017d4:	02065613          	srli	a2,a2,0x20
    800017d8:	00048593          	mv	a1,s1
    800017dc:	02100513          	li	a0,33
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	d00080e7          	jalr	-768(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800017e8:	0005051b          	sext.w	a0,a0
    800017ec:	02813083          	ld	ra,40(sp)
    800017f0:	02013403          	ld	s0,32(sp)
    800017f4:	01813483          	ld	s1,24(sp)
    800017f8:	01013903          	ld	s2,16(sp)
    800017fc:	03010113          	addi	sp,sp,48
    80001800:	00008067          	ret

0000000080001804 <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle) {
    80001804:	fd010113          	addi	sp,sp,-48
    80001808:	02113423          	sd	ra,40(sp)
    8000180c:	02813023          	sd	s0,32(sp)
    80001810:	00913c23          	sd	s1,24(sp)
    80001814:	03010413          	addi	s0,sp,48
    80001818:	00050493          	mv	s1,a0
    debug_print("Syscall sem close called\n");
    8000181c:	00008517          	auipc	a0,0x8
    80001820:	8bc50513          	addi	a0,a0,-1860 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001824:	00000097          	auipc	ra,0x0
    80001828:	64c080e7          	jalr	1612(ra) # 80001e70 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
    8000182c:	00013023          	sd	zero,0(sp)
    80001830:	00000893          	li	a7,0
    80001834:	00000813          	li	a6,0
    80001838:	00000793          	li	a5,0
    8000183c:	00000713          	li	a4,0
    80001840:	00000693          	li	a3,0
    80001844:	00000613          	li	a2,0
    80001848:	00048593          	mv	a1,s1
    8000184c:	02200513          	li	a0,34
    80001850:	00000097          	auipc	ra,0x0
    80001854:	c90080e7          	jalr	-880(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001858:	0005051b          	sext.w	a0,a0
    8000185c:	02813083          	ld	ra,40(sp)
    80001860:	02013403          	ld	s0,32(sp)
    80001864:	01813483          	ld	s1,24(sp)
    80001868:	03010113          	addi	sp,sp,48
    8000186c:	00008067          	ret

0000000080001870 <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id) {
    80001870:	fd010113          	addi	sp,sp,-48
    80001874:	02113423          	sd	ra,40(sp)
    80001878:	02813023          	sd	s0,32(sp)
    8000187c:	00913c23          	sd	s1,24(sp)
    80001880:	03010413          	addi	s0,sp,48
    80001884:	00050493          	mv	s1,a0
    debug_print("Syscall sem wait called\n");
    80001888:	00008517          	auipc	a0,0x8
    8000188c:	87050513          	addi	a0,a0,-1936 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001890:	00000097          	auipc	ra,0x0
    80001894:	5e0080e7          	jalr	1504(ra) # 80001e70 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
    80001898:	00013023          	sd	zero,0(sp)
    8000189c:	00000893          	li	a7,0
    800018a0:	00000813          	li	a6,0
    800018a4:	00000793          	li	a5,0
    800018a8:	00000713          	li	a4,0
    800018ac:	00000693          	li	a3,0
    800018b0:	00000613          	li	a2,0
    800018b4:	00048593          	mv	a1,s1
    800018b8:	02300513          	li	a0,35
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	c24080e7          	jalr	-988(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800018c4:	0005051b          	sext.w	a0,a0
    800018c8:	02813083          	ld	ra,40(sp)
    800018cc:	02013403          	ld	s0,32(sp)
    800018d0:	01813483          	ld	s1,24(sp)
    800018d4:	03010113          	addi	sp,sp,48
    800018d8:	00008067          	ret

00000000800018dc <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id) {
    800018dc:	fd010113          	addi	sp,sp,-48
    800018e0:	02113423          	sd	ra,40(sp)
    800018e4:	02813023          	sd	s0,32(sp)
    800018e8:	00913c23          	sd	s1,24(sp)
    800018ec:	03010413          	addi	s0,sp,48
    800018f0:	00050493          	mv	s1,a0
    debug_print("Syscall sem signal called\n");
    800018f4:	00008517          	auipc	a0,0x8
    800018f8:	82450513          	addi	a0,a0,-2012 # 80009118 <CONSOLE_STATUS+0x108>
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	574080e7          	jalr	1396(ra) # 80001e70 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
    80001904:	00013023          	sd	zero,0(sp)
    80001908:	00000893          	li	a7,0
    8000190c:	00000813          	li	a6,0
    80001910:	00000793          	li	a5,0
    80001914:	00000713          	li	a4,0
    80001918:	00000693          	li	a3,0
    8000191c:	00000613          	li	a2,0
    80001920:	00048593          	mv	a1,s1
    80001924:	02400513          	li	a0,36
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	bb8080e7          	jalr	-1096(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001930:	0005051b          	sext.w	a0,a0
    80001934:	02813083          	ld	ra,40(sp)
    80001938:	02013403          	ld	s0,32(sp)
    8000193c:	01813483          	ld	s1,24(sp)
    80001940:	03010113          	addi	sp,sp,48
    80001944:	00008067          	ret

0000000080001948 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00813423          	sd	s0,8(sp)
    80001950:	01010413          	addi	s0,sp,16
    return 0;
}
    80001954:	00000513          	li	a0,0
    80001958:	00813403          	ld	s0,8(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_Z4getcv>:

char getc () {
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::GETC);
    80001974:	00013023          	sd	zero,0(sp)
    80001978:	00000893          	li	a7,0
    8000197c:	00000813          	li	a6,0
    80001980:	00000793          	li	a5,0
    80001984:	00000713          	li	a4,0
    80001988:	00000693          	li	a3,0
    8000198c:	00000613          	li	a2,0
    80001990:	00000593          	li	a1,0
    80001994:	04100513          	li	a0,65
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	b48080e7          	jalr	-1208(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800019a0:	0ff57513          	andi	a0,a0,255
    800019a4:	01813083          	ld	ra,24(sp)
    800019a8:	01013403          	ld	s0,16(sp)
    800019ac:	02010113          	addi	sp,sp,32
    800019b0:	00008067          	ret

00000000800019b4 <_Z4putcc>:

void putc (char c) {
    800019b4:	fe010113          	addi	sp,sp,-32
    800019b8:	00113c23          	sd	ra,24(sp)
    800019bc:	00813823          	sd	s0,16(sp)
    800019c0:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::PUTC, (uint64)c);
    800019c4:	00013023          	sd	zero,0(sp)
    800019c8:	00000893          	li	a7,0
    800019cc:	00000813          	li	a6,0
    800019d0:	00000793          	li	a5,0
    800019d4:	00000713          	li	a4,0
    800019d8:	00000693          	li	a3,0
    800019dc:	00000613          	li	a2,0
    800019e0:	00050593          	mv	a1,a0
    800019e4:	04200513          	li	a0,66
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	af8080e7          	jalr	-1288(ra) # 800014e0 <_Z7syscall11SyscallCodemmmmmmmm>
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	02010113          	addi	sp,sp,32
    800019fc:	00008067          	ret

0000000080001a00 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00813423          	sd	s0,8(sp)
    80001a08:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001a0c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001a10:	10200073          	sret
}
    80001a14:	00813403          	ld	s0,8(sp)
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret

0000000080001a20 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001a20:	f9010113          	addi	sp,sp,-112
    80001a24:	06113423          	sd	ra,104(sp)
    80001a28:	06813023          	sd	s0,96(sp)
    80001a2c:	04913c23          	sd	s1,88(sp)
    80001a30:	07010413          	addi	s0,sp,112
    uint64 a0, a1, a2, a3, a4, a5, a6, a7;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001a34:	00050793          	mv	a5,a0
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001a38:	00058493          	mv	s1,a1
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001a3c:	00060513          	mv	a0,a2
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001a40:	00068593          	mv	a1,a3
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001a44:	00070713          	mv	a4,a4
    __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001a48:	00078713          	mv	a4,a5
    __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001a4c:	00080713          	mv	a4,a6
    __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001a50:	00088713          	mv	a4,a7
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a54:	14202773          	csrr	a4,scause
    80001a58:	fae43c23          	sd	a4,-72(s0)
    return scause;
    80001a5c:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001a60:	ff870613          	addi	a2,a4,-8
    80001a64:	00100693          	li	a3,1
    80001a68:	02c6f863          	bgeu	a3,a2,80001a98 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001a6c:	fff00793          	li	a5,-1
    80001a70:	03f79793          	slli	a5,a5,0x3f
    80001a74:	00178793          	addi	a5,a5,1
    80001a78:	20f70a63          	beq	a4,a5,80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001a7c:	fff00793          	li	a5,-1
    80001a80:	03f79793          	slli	a5,a5,0x3f
    80001a84:	00978793          	addi	a5,a5,9
    80001a88:	08f71263          	bne	a4,a5,80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    {
        // debug_print("Console handler called\n");
        console_handler();
    80001a8c:	00007097          	auipc	ra,0x7
    80001a90:	8c4080e7          	jalr	-1852(ra) # 80008350 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001a94:	0780006f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xec>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a98:	14102773          	csrr	a4,sepc
    80001a9c:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80001aa0:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001aa4:	00470713          	addi	a4,a4,4
    80001aa8:	f8e43c23          	sd	a4,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001aac:	10002773          	csrr	a4,sstatus
    80001ab0:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80001ab4:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001ab8:	fae43023          	sd	a4,-96(s0)
        switch (a0) {
    80001abc:	04200713          	li	a4,66
    80001ac0:	1af76663          	bltu	a4,a5,80001c6c <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
    80001ac4:	00279793          	slli	a5,a5,0x2
    80001ac8:	00007717          	auipc	a4,0x7
    80001acc:	66c70713          	addi	a4,a4,1644 # 80009134 <CONSOLE_STATUS+0x124>
    80001ad0:	00e787b3          	add	a5,a5,a4
    80001ad4:	0007a783          	lw	a5,0(a5)
    80001ad8:	00e787b3          	add	a5,a5,a4
    80001adc:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	930080e7          	jalr	-1744(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001ae8:	00048593          	mv	a1,s1
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	a88080e7          	jalr	-1400(ra) # 80002574 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001af4:	00050513          	mv	a0,a0
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    80001af8:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001afc:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b00:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001b04:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b08:	14179073          	csrw	sepc,a5
    80001b0c:	06813083          	ld	ra,104(sp)
    80001b10:	06013403          	ld	s0,96(sp)
    80001b14:	05813483          	ld	s1,88(sp)
    80001b18:	07010113          	addi	sp,sp,112
    80001b1c:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	8f0080e7          	jalr	-1808(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001b28:	00048593          	mv	a1,s1
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	bc8080e7          	jalr	-1080(ra) # 800026f4 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001b34:	fc1ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	8d8080e7          	jalr	-1832(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	b08080e7          	jalr	-1272(ra) # 80002648 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    80001b48:	00000513          	li	a0,0
                break;
    80001b4c:	fa9ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	8c0080e7          	jalr	-1856(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	abc080e7          	jalr	-1348(ra) # 80002614 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001b60:	00000513          	li	a0,0
                break;
    80001b64:	f91ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	698080e7          	jalr	1688(ra) # 80002200 <_ZN3TCB12createThreadEPFvPvES0_>
    80001b70:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001b74:	10050063          	beqz	a0,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
        uint64 res = 0;
    80001b78:	00000513          	li	a0,0
    80001b7c:	f79ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::exit();
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	808080e7          	jalr	-2040(ra) # 80002388 <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    80001b88:	0004b783          	ld	a5,0(s1)
    80001b8c:	0000a717          	auipc	a4,0xa
    80001b90:	e5c70713          	addi	a4,a4,-420 # 8000b9e8 <_ZN3TCB7runningE>
    80001b94:	00073503          	ld	a0,0(a4)
    80001b98:	40f50533          	sub	a0,a0,a5
    80001b9c:	00007597          	auipc	a1,0x7
    80001ba0:	6a458593          	addi	a1,a1,1700 # 80009240 <CONSOLE_STATUS+0x230>
    80001ba4:	00153513          	seqz	a0,a0
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	2f0080e7          	jalr	752(ra) # 80001e98 <_Z6assertbPKc>
                delete *handle;
    80001bb0:	0004b483          	ld	s1,0(s1)
    80001bb4:	0c048463          	beqz	s1,80001c7c <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
    ~TCB() { delete[] stack; }
    80001bb8:	0104b503          	ld	a0,16(s1)
    80001bbc:	00050663          	beqz	a0,80001bc8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	200080e7          	jalr	512(ra) # 80001dc0 <_ZdaPv>
    80001bc8:	00048513          	mv	a0,s1
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	1b4080e7          	jalr	436(ra) # 80001d80 <_ZdlPv>
        uint64 res = 0;
    80001bd4:	00000513          	li	a0,0
    80001bd8:	f1dff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::dispatch();
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	710080e7          	jalr	1808(ra) # 800022ec <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001be4:	00000513          	li	a0,0
                break;
    80001be8:	f0dff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                *handle = (sem_t)_semaphore::open(a2);
    80001bec:	0005051b          	sext.w	a0,a0
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	89c080e7          	jalr	-1892(ra) # 8000148c <_ZN10_semaphore4openEj>
    80001bf8:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001bfc:	08050463          	beqz	a0,80001c84 <_ZN5Riscv20handleSupervisorTrapEv+0x264>
        uint64 res = 0;
    80001c00:	00000513          	li	a0,0
    80001c04:	ef1ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                (*handle)->close();
    80001c08:	0004b503          	ld	a0,0(s1)
    80001c0c:	fffff097          	auipc	ra,0xfffff
    80001c10:	6b4080e7          	jalr	1716(ra) # 800012c0 <_ZN10_semaphore5closeEv>
                delete *handle;
    80001c14:	0004b503          	ld	a0,0(s1)
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	168080e7          	jalr	360(ra) # 80001d80 <_ZdlPv>
        uint64 res = 0;
    80001c20:	00000513          	li	a0,0
                break;
    80001c24:	ed1ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                res = (*handle)->wait();
    80001c28:	0004b503          	ld	a0,0(s1)
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	710080e7          	jalr	1808(ra) # 8000133c <_ZN10_semaphore4waitEv>
                break;
    80001c34:	ec1ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                (*handle)->signal();
    80001c38:	0004b503          	ld	a0,0(s1)
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	7ac080e7          	jalr	1964(ra) # 800013e8 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80001c44:	00000513          	li	a0,0
                break;
    80001c48:	eadff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                res = __getc();
    80001c4c:	00006097          	auipc	ra,0x6
    80001c50:	6cc080e7          	jalr	1740(ra) # 80008318 <__getc>
                break;
    80001c54:	ea1ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __putc((char)a1);
    80001c58:	0ff4f513          	andi	a0,s1,255
    80001c5c:	00006097          	auipc	ra,0x6
    80001c60:	680080e7          	jalr	1664(ra) # 800082dc <__putc>
        uint64 res = 0;
    80001c64:	00000513          	li	a0,0
                break;
    80001c68:	e8dff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        uint64 res = 0;
    80001c6c:	00000513          	li	a0,0
    80001c70:	e85ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    res = -1;
    80001c74:	fff00513          	li	a0,-1
    80001c78:	e7dff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        uint64 res = 0;
    80001c7c:	00000513          	li	a0,0
    80001c80:	e75ff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    res = -1;
    80001c84:	fff00513          	li	a0,-1
    80001c88:	e6dff06f          	j	80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c8c:	00200793          	li	a5,2
    80001c90:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001c94:	0000a717          	auipc	a4,0xa
    80001c98:	d4c70713          	addi	a4,a4,-692 # 8000b9e0 <_ZN3TCB16timeSliceCounterE>
    80001c9c:	00073783          	ld	a5,0(a4)
    80001ca0:	00178793          	addi	a5,a5,1
    80001ca4:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001ca8:	0000a717          	auipc	a4,0xa
    80001cac:	d4070713          	addi	a4,a4,-704 # 8000b9e8 <_ZN3TCB7runningE>
    80001cb0:	00073703          	ld	a4,0(a4)

    bool isBlocked() { return blocked_; }

    uint64 getTimeSlice() const { return timeSlice; }
    80001cb4:	02873703          	ld	a4,40(a4)
    80001cb8:	e4e7eae3          	bltu	a5,a4,80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cbc:	141027f3          	csrr	a5,sepc
    80001cc0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001cc4:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001cc8:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ccc:	100027f3          	csrr	a5,sstatus
    80001cd0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001cd4:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001cd8:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80001cdc:	0000a797          	auipc	a5,0xa
    80001ce0:	d007b223          	sd	zero,-764(a5) # 8000b9e0 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	608080e7          	jalr	1544(ra) # 800022ec <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001cec:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cf0:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001cf4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cf8:	14179073          	csrw	sepc,a5
    80001cfc:	e11ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xec>

0000000080001d00 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001d00:	fe010113          	addi	sp,sp,-32
    80001d04:	00113c23          	sd	ra,24(sp)
    80001d08:	00813823          	sd	s0,16(sp)
    80001d0c:	00913423          	sd	s1,8(sp)
    80001d10:	02010413          	addi	s0,sp,32
    80001d14:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	6f8080e7          	jalr	1784(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001d20:	00048593          	mv	a1,s1
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	850080e7          	jalr	-1968(ra) # 80002574 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d2c:	01813083          	ld	ra,24(sp)
    80001d30:	01013403          	ld	s0,16(sp)
    80001d34:	00813483          	ld	s1,8(sp)
    80001d38:	02010113          	addi	sp,sp,32
    80001d3c:	00008067          	ret

0000000080001d40 <_Znam>:

void *operator new[](size_t n)
{
    80001d40:	fe010113          	addi	sp,sp,-32
    80001d44:	00113c23          	sd	ra,24(sp)
    80001d48:	00813823          	sd	s0,16(sp)
    80001d4c:	00913423          	sd	s1,8(sp)
    80001d50:	02010413          	addi	s0,sp,32
    80001d54:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	6b8080e7          	jalr	1720(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001d60:	00048593          	mv	a1,s1
    80001d64:	00001097          	auipc	ra,0x1
    80001d68:	810080e7          	jalr	-2032(ra) # 80002574 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d6c:	01813083          	ld	ra,24(sp)
    80001d70:	01013403          	ld	s0,16(sp)
    80001d74:	00813483          	ld	s1,8(sp)
    80001d78:	02010113          	addi	sp,sp,32
    80001d7c:	00008067          	ret

0000000080001d80 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001d80:	fe010113          	addi	sp,sp,-32
    80001d84:	00113c23          	sd	ra,24(sp)
    80001d88:	00813823          	sd	s0,16(sp)
    80001d8c:	00913423          	sd	s1,8(sp)
    80001d90:	02010413          	addi	s0,sp,32
    80001d94:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	678080e7          	jalr	1656(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001da0:	00048593          	mv	a1,s1
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	950080e7          	jalr	-1712(ra) # 800026f4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001dac:	01813083          	ld	ra,24(sp)
    80001db0:	01013403          	ld	s0,16(sp)
    80001db4:	00813483          	ld	s1,8(sp)
    80001db8:	02010113          	addi	sp,sp,32
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    80001dd4:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	638080e7          	jalr	1592(ra) # 80002410 <_ZN15MemoryAllocator11getInstanceEv>
    80001de0:	00048593          	mv	a1,s1
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	910080e7          	jalr	-1776(ra) # 800026f4 <_ZN15MemoryAllocator8mem_freeEPv>
    80001dec:	01813083          	ld	ra,24(sp)
    80001df0:	01013403          	ld	s0,16(sp)
    80001df4:	00813483          	ld	s1,8(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00008067          	ret

0000000080001e00 <_Z27debug_print_internal_stringPKc>:
        debug_print("\n");
    }
}

void debug_print_internal_string(char const *string)
{
    80001e00:	fd010113          	addi	sp,sp,-48
    80001e04:	02113423          	sd	ra,40(sp)
    80001e08:	02813023          	sd	s0,32(sp)
    80001e0c:	00913c23          	sd	s1,24(sp)
    80001e10:	01213823          	sd	s2,16(sp)
    80001e14:	03010413          	addi	s0,sp,48
    80001e18:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e1c:	100027f3          	csrr	a5,sstatus
    80001e20:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e24:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e28:	00200793          	li	a5,2
    80001e2c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001e30:	0004c503          	lbu	a0,0(s1)
    80001e34:	00050a63          	beqz	a0,80001e48 <_Z27debug_print_internal_stringPKc+0x48>
    {
        __putc(*string);
    80001e38:	00006097          	auipc	ra,0x6
    80001e3c:	4a4080e7          	jalr	1188(ra) # 800082dc <__putc>
        string++;
    80001e40:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e44:	fedff06f          	j	80001e30 <_Z27debug_print_internal_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e48:	0009091b          	sext.w	s2,s2
    80001e4c:	00297913          	andi	s2,s2,2
    80001e50:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e54:	10092073          	csrs	sstatus,s2
}
    80001e58:	02813083          	ld	ra,40(sp)
    80001e5c:	02013403          	ld	s0,32(sp)
    80001e60:	01813483          	ld	s1,24(sp)
    80001e64:	01013903          	ld	s2,16(sp)
    80001e68:	03010113          	addi	sp,sp,48
    80001e6c:	00008067          	ret

0000000080001e70 <_Z11debug_printPKc>:
void debug_print(char const *string) {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00113423          	sd	ra,8(sp)
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    debug_print_internal_string(string);
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	f80080e7          	jalr	-128(ra) # 80001e00 <_Z27debug_print_internal_stringPKc>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_Z6assertbPKc>:
    if (!condition) {
    80001e98:	00050463          	beqz	a0,80001ea0 <_Z6assertbPKc+0x8>
    80001e9c:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80001ea0:	fe010113          	addi	sp,sp,-32
    80001ea4:	00113c23          	sd	ra,24(sp)
    80001ea8:	00813823          	sd	s0,16(sp)
    80001eac:	00913423          	sd	s1,8(sp)
    80001eb0:	02010413          	addi	s0,sp,32
    80001eb4:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80001eb8:	00007517          	auipc	a0,0x7
    80001ebc:	3d050513          	addi	a0,a0,976 # 80009288 <_ZZ24debug_print_internal_intmE6digits+0x10>
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	fb0080e7          	jalr	-80(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print(debug_message);
    80001ec8:	00048513          	mv	a0,s1
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	fa4080e7          	jalr	-92(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("\n");
    80001ed4:	00007517          	auipc	a0,0x7
    80001ed8:	44c50513          	addi	a0,a0,1100 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	f94080e7          	jalr	-108(ra) # 80001e70 <_Z11debug_printPKc>
}
    80001ee4:	01813083          	ld	ra,24(sp)
    80001ee8:	01013403          	ld	s0,16(sp)
    80001eec:	00813483          	ld	s1,8(sp)
    80001ef0:	02010113          	addi	sp,sp,32
    80001ef4:	00008067          	ret

0000000080001ef8 <_Z24debug_print_internal_intm>:

void debug_print_internal_int(uint64 integer)
{
    80001ef8:	fc010113          	addi	sp,sp,-64
    80001efc:	02113c23          	sd	ra,56(sp)
    80001f00:	02813823          	sd	s0,48(sp)
    80001f04:	02913423          	sd	s1,40(sp)
    80001f08:	03213023          	sd	s2,32(sp)
    80001f0c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f10:	100027f3          	csrr	a5,sstatus
    80001f14:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001f18:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f1c:	00200793          	li	a5,2
    80001f20:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f24:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001f28:	00000713          	li	a4,0
    80001f2c:	0080006f          	j	80001f34 <_Z24debug_print_internal_intm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80001f30:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    80001f34:	00a00793          	li	a5,10
    80001f38:	02f5763b          	remuw	a2,a0,a5
    80001f3c:	0017049b          	addiw	s1,a4,1
    80001f40:	00007697          	auipc	a3,0x7
    80001f44:	33868693          	addi	a3,a3,824 # 80009278 <_ZZ24debug_print_internal_intmE6digits>
    80001f48:	00c686b3          	add	a3,a3,a2
    80001f4c:	0006c683          	lbu	a3,0(a3)
    80001f50:	fe040613          	addi	a2,s0,-32
    80001f54:	00e60733          	add	a4,a2,a4
    80001f58:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    80001f5c:	02f557bb          	divuw	a5,a0,a5
    80001f60:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    80001f64:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80001f68:	00900793          	li	a5,9
    80001f6c:	fca7e2e3          	bltu	a5,a0,80001f30 <_Z24debug_print_internal_intm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001f70:	fff4849b          	addiw	s1,s1,-1
    80001f74:	0004ce63          	bltz	s1,80001f90 <_Z24debug_print_internal_intm+0x98>
    80001f78:	fe040793          	addi	a5,s0,-32
    80001f7c:	009787b3          	add	a5,a5,s1
    80001f80:	ff07c503          	lbu	a0,-16(a5)
    80001f84:	00006097          	auipc	ra,0x6
    80001f88:	358080e7          	jalr	856(ra) # 800082dc <__putc>
    80001f8c:	fe5ff06f          	j	80001f70 <_Z24debug_print_internal_intm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f90:	0009091b          	sext.w	s2,s2
    80001f94:	00297913          	andi	s2,s2,2
    80001f98:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f9c:	10092073          	csrs	sstatus,s2
    80001fa0:	03813083          	ld	ra,56(sp)
    80001fa4:	03013403          	ld	s0,48(sp)
    80001fa8:	02813483          	ld	s1,40(sp)
    80001fac:	02013903          	ld	s2,32(sp)
    80001fb0:	04010113          	addi	sp,sp,64
    80001fb4:	00008067          	ret

0000000080001fb8 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00113423          	sd	ra,8(sp)
    80001fc0:	00813023          	sd	s0,0(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    debug_print_internal_int(integer);
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	f30080e7          	jalr	-208(ra) # 80001ef8 <_Z24debug_print_internal_intm>
}
    80001fd0:	00813083          	ld	ra,8(sp)
    80001fd4:	00013403          	ld	s0,0(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_Z15userMainWrapperPv>:
#include "../h/syscall_cpp.hpp"

void userMain();

void userMainWrapper(void* arg)
{
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
    debug_print("Starting userMain\n");
    80001ff0:	00007517          	auipc	a0,0x7
    80001ff4:	2b050513          	addi	a0,a0,688 # 800092a0 <_ZZ24debug_print_internal_intmE6digits+0x28>
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	e78080e7          	jalr	-392(ra) # 80001e70 <_Z11debug_printPKc>
    userMain();
    80002000:	00002097          	auipc	ra,0x2
    80002004:	b04080e7          	jalr	-1276(ra) # 80003b04 <_Z8userMainv>
}
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <main>:
// void randomWrapper(void* arg) {
//     debug_print("Starting random\n");
// }

int main()
{
    80002018:	fe010113          	addi	sp,sp,-32
    8000201c:	00113c23          	sd	ra,24(sp)
    80002020:	00813823          	sd	s0,16(sp)
    80002024:	00913423          	sd	s1,8(sp)
    80002028:	01213023          	sd	s2,0(sp)
    8000202c:	02010413          	addi	s0,sp,32
    thread_t main_handle;
    thread_t userMain_handle;

    // We create threads directly through TCB because we do not yet have
    // interrupts enabled.
    debug_print("Creating main thread\n");
    80002030:	00007517          	auipc	a0,0x7
    80002034:	28850513          	addi	a0,a0,648 # 800092b8 <_ZZ24debug_print_internal_intmE6digits+0x40>
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	e38080e7          	jalr	-456(ra) # 80001e70 <_Z11debug_printPKc>
    main_handle = TCB::createThread(nullptr, nullptr);
    80002040:	00000593          	li	a1,0
    80002044:	00000513          	li	a0,0
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	1b8080e7          	jalr	440(ra) # 80002200 <_ZN3TCB12createThreadEPFvPvES0_>
    80002050:	00050913          	mv	s2,a0
    debug_print("Main thread handle: \n");
    80002054:	00007517          	auipc	a0,0x7
    80002058:	27c50513          	addi	a0,a0,636 # 800092d0 <_ZZ24debug_print_internal_intmE6digits+0x58>
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	e14080e7          	jalr	-492(ra) # 80001e70 <_Z11debug_printPKc>
    debug_print((uint64)main_handle);
    80002064:	00090513          	mv	a0,s2
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	f50080e7          	jalr	-176(ra) # 80001fb8 <_Z11debug_printm>
    debug_print("\n");
    80002070:	00007517          	auipc	a0,0x7
    80002074:	2b050513          	addi	a0,a0,688 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	df8080e7          	jalr	-520(ra) # 80001e70 <_Z11debug_printPKc>

    debug_print("Creating userMain thread\n");
    80002080:	00007517          	auipc	a0,0x7
    80002084:	26850513          	addi	a0,a0,616 # 800092e8 <_ZZ24debug_print_internal_intmE6digits+0x70>
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	de8080e7          	jalr	-536(ra) # 80001e70 <_Z11debug_printPKc>
    userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    80002090:	00000593          	li	a1,0
    80002094:	00000517          	auipc	a0,0x0
    80002098:	f4c50513          	addi	a0,a0,-180 # 80001fe0 <_Z15userMainWrapperPv>
    8000209c:	00000097          	auipc	ra,0x0
    800020a0:	164080e7          	jalr	356(ra) # 80002200 <_ZN3TCB12createThreadEPFvPvES0_>
    800020a4:	00050493          	mv	s1,a0
    debug_print("UserMain thread handle: \n");
    800020a8:	00007517          	auipc	a0,0x7
    800020ac:	26050513          	addi	a0,a0,608 # 80009308 <_ZZ24debug_print_internal_intmE6digits+0x90>
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	dc0080e7          	jalr	-576(ra) # 80001e70 <_Z11debug_printPKc>
    debug_print((uint64)userMain_handle);
    800020b8:	00048513          	mv	a0,s1
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	efc080e7          	jalr	-260(ra) # 80001fb8 <_Z11debug_printm>
    debug_print("\n");
    800020c4:	00007517          	auipc	a0,0x7
    800020c8:	25c50513          	addi	a0,a0,604 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	da4080e7          	jalr	-604(ra) # 80001e70 <_Z11debug_printPKc>

    debug_print("Setting running to main thread\n");
    800020d4:	00007517          	auipc	a0,0x7
    800020d8:	25450513          	addi	a0,a0,596 # 80009328 <_ZZ24debug_print_internal_intmE6digits+0xb0>
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	d94080e7          	jalr	-620(ra) # 80001e70 <_Z11debug_printPKc>
    TCB::running = main_handle;
    800020e4:	0000a797          	auipc	a5,0xa
    800020e8:	9127b223          	sd	s2,-1788(a5) # 8000b9e8 <_ZN3TCB7runningE>

    debug_print("Setting supervisor trap and enabling interrupts\n");
    800020ec:	00007517          	auipc	a0,0x7
    800020f0:	25c50513          	addi	a0,a0,604 # 80009348 <_ZZ24debug_print_internal_intmE6digits+0xd0>
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	d7c080e7          	jalr	-644(ra) # 80001e70 <_Z11debug_printPKc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800020fc:	fffff797          	auipc	a5,0xfffff
    80002100:	f0478793          	addi	a5,a5,-252 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002104:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002108:	00200793          	li	a5,2
    8000210c:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished_; }
    80002110:	0304c783          	lbu	a5,48(s1)
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Thread randomThread(randomWrapper, nullptr);
    // randomThread.start();

    while (!userMain_handle->isFinished()) {
    80002114:	fe078ee3          	beqz	a5,80002110 <main+0xf8>
        // TCB::yield(); // This causes a lock???
    }

    debug_print("Finished\n");
    80002118:	00007517          	auipc	a0,0x7
    8000211c:	26850513          	addi	a0,a0,616 # 80009380 <_ZZ24debug_print_internal_intmE6digits+0x108>
    80002120:	00000097          	auipc	ra,0x0
    80002124:	d50080e7          	jalr	-688(ra) # 80001e70 <_Z11debug_printPKc>

    return 0;
}
    80002128:	00000513          	li	a0,0
    8000212c:	01813083          	ld	ra,24(sp)
    80002130:	01013403          	ld	s0,16(sp)
    80002134:	00813483          	ld	s1,8(sp)
    80002138:	00013903          	ld	s2,0(sp)
    8000213c:	02010113          	addi	sp,sp,32
    80002140:	00008067          	ret

0000000080002144 <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    80002144:	fe010113          	addi	sp,sp,-32
    80002148:	00113c23          	sd	ra,24(sp)
    8000214c:	00813823          	sd	s0,16(sp)
    80002150:	00913423          	sd	s1,8(sp)
    80002154:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	8a8080e7          	jalr	-1880(ra) # 80001a00 <_ZN5Riscv10popSppSpieEv>
    debug_print("TCB: Starting thread body: ");
    80002160:	00007517          	auipc	a0,0x7
    80002164:	23050513          	addi	a0,a0,560 # 80009390 <_ZZ24debug_print_internal_intmE6digits+0x118>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	d08080e7          	jalr	-760(ra) # 80001e70 <_Z11debug_printPKc>
    debug_print((uint64)running->body);
    80002170:	0000a497          	auipc	s1,0xa
    80002174:	87848493          	addi	s1,s1,-1928 # 8000b9e8 <_ZN3TCB7runningE>
    80002178:	0004b783          	ld	a5,0(s1)
    8000217c:	0007b503          	ld	a0,0(a5)
    80002180:	00000097          	auipc	ra,0x0
    80002184:	e38080e7          	jalr	-456(ra) # 80001fb8 <_Z11debug_printm>
    debug_print(" for thread: ");
    80002188:	00007517          	auipc	a0,0x7
    8000218c:	22850513          	addi	a0,a0,552 # 800093b0 <_ZZ24debug_print_internal_intmE6digits+0x138>
    80002190:	00000097          	auipc	ra,0x0
    80002194:	ce0080e7          	jalr	-800(ra) # 80001e70 <_Z11debug_printPKc>
    debug_print((uint64)running);
    80002198:	0004b503          	ld	a0,0(s1)
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	e1c080e7          	jalr	-484(ra) # 80001fb8 <_Z11debug_printm>
    debug_print(" and arg: ");
    800021a4:	00007517          	auipc	a0,0x7
    800021a8:	21c50513          	addi	a0,a0,540 # 800093c0 <_ZZ24debug_print_internal_intmE6digits+0x148>
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	cc4080e7          	jalr	-828(ra) # 80001e70 <_Z11debug_printPKc>
    debug_print((uint64)running->arg_);
    800021b4:	0004b783          	ld	a5,0(s1)
    800021b8:	0087b503          	ld	a0,8(a5)
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	dfc080e7          	jalr	-516(ra) # 80001fb8 <_Z11debug_printm>
    debug_print("\n");
    800021c4:	00007517          	auipc	a0,0x7
    800021c8:	15c50513          	addi	a0,a0,348 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	ca4080e7          	jalr	-860(ra) # 80001e70 <_Z11debug_printPKc>
    
    running->body(running->arg_);
    800021d4:	0004b783          	ld	a5,0(s1)
    800021d8:	0007b703          	ld	a4,0(a5)
    800021dc:	0087b503          	ld	a0,8(a5)
    800021e0:	000700e7          	jalr	a4
    thread_exit();
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	4f8080e7          	jalr	1272(ra) # 800016dc <_Z11thread_exitv>
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret

0000000080002200 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80002200:	fd010113          	addi	sp,sp,-48
    80002204:	02113423          	sd	ra,40(sp)
    80002208:	02813023          	sd	s0,32(sp)
    8000220c:	00913c23          	sd	s1,24(sp)
    80002210:	01213823          	sd	s2,16(sp)
    80002214:	01313423          	sd	s3,8(sp)
    80002218:	03010413          	addi	s0,sp,48
    8000221c:	00050913          	mv	s2,a0
    80002220:	00058993          	mv	s3,a1
    debug_print("TCB: Creating TCB\n");
    80002224:	00007517          	auipc	a0,0x7
    80002228:	1ac50513          	addi	a0,a0,428 # 800093d0 <_ZZ24debug_print_internal_intmE6digits+0x158>
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	c44080e7          	jalr	-956(ra) # 80001e70 <_Z11debug_printPKc>
    return new TCB(body, arg, TIME_SLICE);
    80002234:	03800513          	li	a0,56
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	ac8080e7          	jalr	-1336(ra) # 80001d00 <_Znwm>
    80002240:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished_(false),
            blocked_(false)
    80002244:	01253023          	sd	s2,0(a0)
    80002248:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    8000224c:	00090a63          	beqz	s2,80002260 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    80002250:	00002537          	lui	a0,0x2
    80002254:	00000097          	auipc	ra,0x0
    80002258:	aec080e7          	jalr	-1300(ra) # 80001d40 <_Znam>
    8000225c:	0080006f          	j	80002264 <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    80002260:	00000513          	li	a0,0
            blocked_(false)
    80002264:	00a4b823          	sd	a0,16(s1)
    80002268:	00000797          	auipc	a5,0x0
    8000226c:	edc78793          	addi	a5,a5,-292 # 80002144 <_ZN3TCB13threadWrapperEv>
    80002270:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002274:	02050a63          	beqz	a0,800022a8 <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
    80002278:	000027b7          	lui	a5,0x2
    8000227c:	00f50533          	add	a0,a0,a5
            blocked_(false)
    80002280:	02a4b023          	sd	a0,32(s1)
    80002284:	00200793          	li	a5,2
    80002288:	02f4b423          	sd	a5,40(s1)
    8000228c:	02048823          	sb	zero,48(s1)
    80002290:	020488a3          	sb	zero,49(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80002294:	02090c63          	beqz	s2,800022cc <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
    80002298:	00048513          	mv	a0,s1
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	f54080e7          	jalr	-172(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    800022a4:	0280006f          	j	800022cc <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800022a8:	00000513          	li	a0,0
    800022ac:	fd5ff06f          	j	80002280 <_ZN3TCB12createThreadEPFvPvES0_+0x80>
    800022b0:	00050913          	mv	s2,a0
    800022b4:	00048513          	mv	a0,s1
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	ac8080e7          	jalr	-1336(ra) # 80001d80 <_ZdlPv>
    800022c0:	00090513          	mv	a0,s2
    800022c4:	0000b097          	auipc	ra,0xb
    800022c8:	884080e7          	jalr	-1916(ra) # 8000cb48 <_Unwind_Resume>
}
    800022cc:	00048513          	mv	a0,s1
    800022d0:	02813083          	ld	ra,40(sp)
    800022d4:	02013403          	ld	s0,32(sp)
    800022d8:	01813483          	ld	s1,24(sp)
    800022dc:	01013903          	ld	s2,16(sp)
    800022e0:	00813983          	ld	s3,8(sp)
    800022e4:	03010113          	addi	sp,sp,48
    800022e8:	00008067          	ret

00000000800022ec <_ZN3TCB8dispatchEv>:
{
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002300:	00009797          	auipc	a5,0x9
    80002304:	6e878793          	addi	a5,a5,1768 # 8000b9e8 <_ZN3TCB7runningE>
    80002308:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    8000230c:	0314c783          	lbu	a5,49(s1)
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    80002310:	00079663          	bnez	a5,8000231c <_ZN3TCB8dispatchEv+0x30>
    bool isFinished() const { return finished_; }
    80002314:	0304c783          	lbu	a5,48(s1)
    80002318:	02078c63          	beqz	a5,80002350 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	e68080e7          	jalr	-408(ra) # 80001184 <_ZN9Scheduler3getEv>
    80002324:	00009797          	auipc	a5,0x9
    80002328:	6ca7b223          	sd	a0,1732(a5) # 8000b9e8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000232c:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80002330:	01848513          	addi	a0,s1,24
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	ddc080e7          	jalr	-548(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000233c:	01813083          	ld	ra,24(sp)
    80002340:	01013403          	ld	s0,16(sp)
    80002344:	00813483          	ld	s1,8(sp)
    80002348:	02010113          	addi	sp,sp,32
    8000234c:	00008067          	ret
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    80002350:	00048513          	mv	a0,s1
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	e9c080e7          	jalr	-356(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    8000235c:	fc1ff06f          	j	8000231c <_ZN3TCB8dispatchEv+0x30>

0000000080002360 <_ZN3TCB5yieldEv>:
{
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00113423          	sd	ra,8(sp)
    80002368:	00813023          	sd	s0,0(sp)
    8000236c:	01010413          	addi	s0,sp,16
    dispatch();
    80002370:	00000097          	auipc	ra,0x0
    80002374:	f7c080e7          	jalr	-132(ra) # 800022ec <_ZN3TCB8dispatchEv>
}
    80002378:	00813083          	ld	ra,8(sp)
    8000237c:	00013403          	ld	s0,0(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret

0000000080002388 <_ZN3TCB4exitEv>:

void TCB::exit() {
    80002388:	fe010113          	addi	sp,sp,-32
    8000238c:	00113c23          	sd	ra,24(sp)
    80002390:	00813823          	sd	s0,16(sp)
    80002394:	00913423          	sd	s1,8(sp)
    80002398:	01213023          	sd	s2,0(sp)
    8000239c:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    800023a0:	00007517          	auipc	a0,0x7
    800023a4:	04850513          	addi	a0,a0,72 # 800093e8 <_ZZ24debug_print_internal_intmE6digits+0x170>
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	ac8080e7          	jalr	-1336(ra) # 80001e70 <_Z11debug_printPKc>
    TCB *old = running;
    800023b0:	00009497          	auipc	s1,0x9
    800023b4:	63848493          	addi	s1,s1,1592 # 8000b9e8 <_ZN3TCB7runningE>
    800023b8:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    800023bc:	00100793          	li	a5,1
    800023c0:	02f90823          	sb	a5,48(s2)
    old->setFinished(true);
    running = Scheduler::get();
    800023c4:	fffff097          	auipc	ra,0xfffff
    800023c8:	dc0080e7          	jalr	-576(ra) # 80001184 <_ZN9Scheduler3getEv>
    800023cc:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    800023d0:	00007597          	auipc	a1,0x7
    800023d4:	03058593          	addi	a1,a1,48 # 80009400 <_ZZ24debug_print_internal_intmE6digits+0x188>
    800023d8:	00a03533          	snez	a0,a0
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	abc080e7          	jalr	-1348(ra) # 80001e98 <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    800023e4:	0004b583          	ld	a1,0(s1)
    800023e8:	01858593          	addi	a1,a1,24
    800023ec:	01890513          	addi	a0,s2,24
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	d20080e7          	jalr	-736(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    800023f8:	01813083          	ld	ra,24(sp)
    800023fc:	01013403          	ld	s0,16(sp)
    80002400:	00813483          	ld	s1,8(sp)
    80002404:	00013903          	ld	s2,0(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret

0000000080002410 <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    80002410:	00009797          	auipc	a5,0x9
    80002414:	5e078793          	addi	a5,a5,1504 # 8000b9f0 <_ZN15MemoryAllocator9instance_E>
    80002418:	0007b783          	ld	a5,0(a5)
    8000241c:	00078a63          	beqz	a5,80002430 <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    80002420:	00009797          	auipc	a5,0x9
    80002424:	5d078793          	addi	a5,a5,1488 # 8000b9f0 <_ZN15MemoryAllocator9instance_E>
    80002428:	0007b503          	ld	a0,0(a5)
    8000242c:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80002430:	fd010113          	addi	sp,sp,-48
    80002434:	02113423          	sd	ra,40(sp)
    80002438:	02813023          	sd	s0,32(sp)
    8000243c:	00913c23          	sd	s1,24(sp)
    80002440:	01213823          	sd	s2,16(sp)
    80002444:	01313423          	sd	s3,8(sp)
    80002448:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    8000244c:	00009997          	auipc	s3,0x9
    80002450:	39498993          	addi	s3,s3,916 # 8000b7e0 <HEAP_START_ADDR>
    80002454:	0009b783          	ld	a5,0(s3)
    80002458:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    8000245c:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002460:	00009497          	auipc	s1,0x9
    80002464:	59048493          	addi	s1,s1,1424 # 8000b9f0 <_ZN15MemoryAllocator9instance_E>
    80002468:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    8000246c:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    80002470:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    80002474:	0004b783          	ld	a5,0(s1)
    80002478:	0007b783          	ld	a5,0(a5)
    8000247c:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    80002480:	0004b783          	ld	a5,0(s1)
    80002484:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    80002488:	00009917          	auipc	s2,0x9
    8000248c:	35090913          	addi	s2,s2,848 # 8000b7d8 <HEAP_END_ADDR>
    80002490:	00093783          	ld	a5,0(s2)
    80002494:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    80002498:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    8000249c:	00007517          	auipc	a0,0x7
    800024a0:	f9450513          	addi	a0,a0,-108 # 80009430 <_ZZ24debug_print_internal_intmE6digits+0x1b8>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	9cc080e7          	jalr	-1588(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    800024ac:	00007517          	auipc	a0,0x7
    800024b0:	fac50513          	addi	a0,a0,-84 # 80009458 <_ZZ24debug_print_internal_intmE6digits+0x1e0>
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	9bc080e7          	jalr	-1604(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    800024bc:	04000513          	li	a0,64
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	af8080e7          	jalr	-1288(ra) # 80001fb8 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    800024c8:	00007517          	auipc	a0,0x7
    800024cc:	fa850513          	addi	a0,a0,-88 # 80009470 <_ZZ24debug_print_internal_intmE6digits+0x1f8>
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	9a0080e7          	jalr	-1632(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    800024d8:	0009b503          	ld	a0,0(s3)
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	adc080e7          	jalr	-1316(ra) # 80001fb8 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    800024e4:	00007517          	auipc	a0,0x7
    800024e8:	fa450513          	addi	a0,a0,-92 # 80009488 <_ZZ24debug_print_internal_intmE6digits+0x210>
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	984080e7          	jalr	-1660(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    800024f4:	00093503          	ld	a0,0(s2)
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	ac0080e7          	jalr	-1344(ra) # 80001fb8 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    80002500:	00007517          	auipc	a0,0x7
    80002504:	fa050513          	addi	a0,a0,-96 # 800094a0 <_ZZ24debug_print_internal_intmE6digits+0x228>
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	968080e7          	jalr	-1688(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    80002510:	0004b783          	ld	a5,0(s1)
    80002514:	0007b503          	ld	a0,0(a5)
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	aa0080e7          	jalr	-1376(ra) # 80001fb8 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    80002520:	00007517          	auipc	a0,0x7
    80002524:	fa050513          	addi	a0,a0,-96 # 800094c0 <_ZZ24debug_print_internal_intmE6digits+0x248>
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	948080e7          	jalr	-1720(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    80002530:	01000513          	li	a0,16
    80002534:	00000097          	auipc	ra,0x0
    80002538:	a84080e7          	jalr	-1404(ra) # 80001fb8 <_Z11debug_printm>
        debug_print("\n");
    8000253c:	00007517          	auipc	a0,0x7
    80002540:	de450513          	addi	a0,a0,-540 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002544:	00000097          	auipc	ra,0x0
    80002548:	92c080e7          	jalr	-1748(ra) # 80001e70 <_Z11debug_printPKc>
}
    8000254c:	00009797          	auipc	a5,0x9
    80002550:	4a478793          	addi	a5,a5,1188 # 8000b9f0 <_ZN15MemoryAllocator9instance_E>
    80002554:	0007b503          	ld	a0,0(a5)
    80002558:	02813083          	ld	ra,40(sp)
    8000255c:	02013403          	ld	s0,32(sp)
    80002560:	01813483          	ld	s1,24(sp)
    80002564:	01013903          	ld	s2,16(sp)
    80002568:	00813983          	ld	s3,8(sp)
    8000256c:	03010113          	addi	sp,sp,48
    80002570:	00008067          	ret

0000000080002574 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    80002574:	ff010113          	addi	sp,sp,-16
    80002578:	00813423          	sd	s0,8(sp)
    8000257c:	01010413          	addi	s0,sp,16
    // debug_print("Allocating memory of size: ");
    // debug_print(size);
    // debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    80002580:	00053783          	ld	a5,0(a0)
    80002584:	04078e63          	beqz	a5,800025e0 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    80002588:	04f58593          	addi	a1,a1,79
    8000258c:	fc05f593          	andi	a1,a1,-64

    // debug_print("Aligned size: ");
    // debug_print(size);
    // debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002590:	00000693          	li	a3,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002594:	00078c63          	beqz	a5,800025ac <_ZN15MemoryAllocator9mem_allocEm+0x38>
    80002598:	0087b703          	ld	a4,8(a5)
    8000259c:	00b77863          	bgeu	a4,a1,800025ac <_ZN15MemoryAllocator9mem_allocEm+0x38>
        prev_free_block = free_block;
    800025a0:	00078693          	mv	a3,a5
        free_block = free_block->next_;
    800025a4:	0007b783          	ld	a5,0(a5)
    while (free_block && free_block->size_ < size) {
    800025a8:	fedff06f          	j	80002594 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    800025ac:	02078a63          	beqz	a5,800025e0 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    800025b0:	0087b703          	ld	a4,8(a5)
    800025b4:	04e5f263          	bgeu	a1,a4,800025f8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    800025b8:	00b78633          	add	a2,a5,a1
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    800025bc:	02068a63          	beqz	a3,800025f0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            prev_free_block->next_ = new_free_block;
    800025c0:	00c6b023          	sd	a2,0(a3)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    800025c4:	0007b703          	ld	a4,0(a5)
    800025c8:	00e63023          	sd	a4,0(a2)
        new_free_block->size_ = free_block->size_ - size;
    800025cc:	0087b703          	ld	a4,8(a5)
    800025d0:	40b70733          	sub	a4,a4,a1
    800025d4:	00e63423          	sd	a4,8(a2)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    800025d8:	00b7b423          	sd	a1,8(a5)
        // debug_print("Free block address: ");
        // debug_print((uint64)free_block);
        // debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    800025dc:	01078793          	addi	a5,a5,16
}
    800025e0:	00078513          	mv	a0,a5
    800025e4:	00813403          	ld	s0,8(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret
            free_block_ptr_ = new_free_block;
    800025f0:	00c53023          	sd	a2,0(a0)
    800025f4:	fd1ff06f          	j	800025c4 <_ZN15MemoryAllocator9mem_allocEm+0x50>
        if (prev_free_block) {
    800025f8:	00068863          	beqz	a3,80002608 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            prev_free_block->next_ = free_block->next_;
    800025fc:	0007b703          	ld	a4,0(a5)
    80002600:	00e6b023          	sd	a4,0(a3)
    80002604:	fd5ff06f          	j	800025d8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
            free_block_ptr_ = free_block->next_;
    80002608:	0007b703          	ld	a4,0(a5)
    8000260c:	00e53023          	sd	a4,0(a0)
    80002610:	fc9ff06f          	j	800025d8 <_ZN15MemoryAllocator9mem_allocEm+0x64>

0000000080002614 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    80002620:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    80002624:	00000513          	li	a0,0
    while (free_block_iter) {
    80002628:	00078a63          	beqz	a5,8000263c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    8000262c:	0087b703          	ld	a4,8(a5)
    80002630:	fee57ce3          	bgeu	a0,a4,80002628 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    80002634:	00070513          	mv	a0,a4
    80002638:	ff1ff06f          	j	80002628 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    8000263c:	00813403          	ld	s0,8(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813423          	sd	s0,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    80002654:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    80002658:	00000513          	li	a0,0
    while (free_block_iter) {
    8000265c:	00078a63          	beqz	a5,80002670 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    80002660:	0087b703          	ld	a4,8(a5)
    80002664:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    80002668:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    8000266c:	ff1ff06f          	j	8000265c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    8000267c:	06058a63          	beqz	a1,800026f0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    80002680:	06060863          	beqz	a2,800026f0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    80002684:	fe010113          	addi	sp,sp,-32
    80002688:	00113c23          	sd	ra,24(sp)
    8000268c:	00813823          	sd	s0,16(sp)
    80002690:	00913423          	sd	s1,8(sp)
    80002694:	01213023          	sd	s2,0(sp)
    80002698:	02010413          	addi	s0,sp,32
    8000269c:	00060913          	mv	s2,a2
    800026a0:	00058493          	mv	s1,a1
        // debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    800026a4:	00007597          	auipc	a1,0x7
    800026a8:	e3c58593          	addi	a1,a1,-452 # 800094e0 <_ZZ24debug_print_internal_intmE6digits+0x268>
    800026ac:	00c4b533          	sltu	a0,s1,a2
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	7e8080e7          	jalr	2024(ra) # 80001e98 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    800026b8:	0084b783          	ld	a5,8(s1)
    800026bc:	00f48733          	add	a4,s1,a5
    800026c0:	00e91c63          	bne	s2,a4,800026d8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        // debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    800026c4:	00893703          	ld	a4,8(s2)
    800026c8:	00e787b3          	add	a5,a5,a4
    800026cc:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    800026d0:	00093783          	ld	a5,0(s2)
    800026d4:	00f4b023          	sd	a5,0(s1)
    800026d8:	01813083          	ld	ra,24(sp)
    800026dc:	01013403          	ld	s0,16(sp)
    800026e0:	00813483          	ld	s1,8(sp)
    800026e4:	00013903          	ld	s2,0(sp)
    800026e8:	02010113          	addi	sp,sp,32
    800026ec:	00008067          	ret
    800026f0:	00008067          	ret

00000000800026f4 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    800026f4:	fd010113          	addi	sp,sp,-48
    800026f8:	02113423          	sd	ra,40(sp)
    800026fc:	02813023          	sd	s0,32(sp)
    80002700:	00913c23          	sd	s1,24(sp)
    80002704:	01213823          	sd	s2,16(sp)
    80002708:	01313423          	sd	s3,8(sp)
    8000270c:	03010413          	addi	s0,sp,48
    if (!free_block_addr) {
    80002710:	04058263          	beqz	a1,80002754 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80002714:	00050993          	mv	s3,a0
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    80002718:	ff058913          	addi	s2,a1,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    8000271c:	00090793          	mv	a5,s2
    80002720:	03f97713          	andi	a4,s2,63
    80002724:	04071463          	bnez	a4,8000276c <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002728:	00009717          	auipc	a4,0x9
    8000272c:	0b870713          	addi	a4,a4,184 # 8000b7e0 <HEAP_START_ADDR>
    80002730:	00073703          	ld	a4,0(a4)
    80002734:	04e96863          	bltu	s2,a4,80002784 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    80002738:	00009717          	auipc	a4,0x9
    8000273c:	0a070713          	addi	a4,a4,160 # 8000b7d8 <HEAP_END_ADDR>
    80002740:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002744:	04e97063          	bgeu	s2,a4,80002784 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    80002748:	00053603          	ld	a2,0(a0)
    8000274c:	00000493          	li	s1,0
    80002750:	0540006f          	j	800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        debug_print("Free block address is null.\n");
    80002754:	00007517          	auipc	a0,0x7
    80002758:	dcc50513          	addi	a0,a0,-564 # 80009520 <_ZZ24debug_print_internal_intmE6digits+0x2a8>
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	714080e7          	jalr	1812(ra) # 80001e70 <_Z11debug_printPKc>
        return -1;
    80002764:	fff00513          	li	a0,-1
    80002768:	07c0006f          	j	800027e4 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    8000276c:	00007517          	auipc	a0,0x7
    80002770:	dd450513          	addi	a0,a0,-556 # 80009540 <_ZZ24debug_print_internal_intmE6digits+0x2c8>
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	6fc080e7          	jalr	1788(ra) # 80001e70 <_Z11debug_printPKc>
        return -2;
    8000277c:	ffe00513          	li	a0,-2
    80002780:	0640006f          	j	800027e4 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not in the heap.\n");
    80002784:	00007517          	auipc	a0,0x7
    80002788:	df450513          	addi	a0,a0,-524 # 80009578 <_ZZ24debug_print_internal_intmE6digits+0x300>
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	6e4080e7          	jalr	1764(ra) # 80001e70 <_Z11debug_printPKc>
        return -3;
    80002794:	ffd00513          	li	a0,-3
    80002798:	04c0006f          	j	800027e4 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        prev_free_block = next_free_block;
    8000279c:	00060493          	mv	s1,a2
        next_free_block = next_free_block->next_;
    800027a0:	00063603          	ld	a2,0(a2)
    while (next_free_block &&
    800027a4:	00060663          	beqz	a2,800027b0 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800027a8:	fec7fae3          	bgeu	a5,a2,8000279c <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
          !(((uint64)next_free_block > (uint64)block_info) &&
    800027ac:	fef4f8e3          	bgeu	s1,a5,8000279c <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if (!prev_free_block) {
    800027b0:	04048863          	beqz	s1,80002800 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        prev_free_block->next_ = block_info;
    800027b4:	0124b023          	sd	s2,0(s1)
    block_info->next_ = next_free_block;
    800027b8:	fec5b823          	sd	a2,-16(a1)
    maybe_consolidate(block_info, next_free_block);
    800027bc:	00090593          	mv	a1,s2
    800027c0:	00098513          	mv	a0,s3
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	eb8080e7          	jalr	-328(ra) # 8000267c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    800027cc:	00090613          	mv	a2,s2
    800027d0:	00048593          	mv	a1,s1
    800027d4:	00098513          	mv	a0,s3
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	ea4080e7          	jalr	-348(ra) # 8000267c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    800027e0:	00000513          	li	a0,0
}
    800027e4:	02813083          	ld	ra,40(sp)
    800027e8:	02013403          	ld	s0,32(sp)
    800027ec:	01813483          	ld	s1,24(sp)
    800027f0:	01013903          	ld	s2,16(sp)
    800027f4:	00813983          	ld	s3,8(sp)
    800027f8:	03010113          	addi	sp,sp,48
    800027fc:	00008067          	ret
        free_block_ptr_ = block_info;
    80002800:	0129b023          	sd	s2,0(s3)
    80002804:	fb5ff06f          	j	800027b8 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>

0000000080002808 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80002808:	00100793          	li	a5,1
    8000280c:	06a7f863          	bgeu	a5,a0,8000287c <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80002810:	fe010113          	addi	sp,sp,-32
    80002814:	00113c23          	sd	ra,24(sp)
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00913423          	sd	s1,8(sp)
    80002820:	01213023          	sd	s2,0(sp)
    80002824:	02010413          	addi	s0,sp,32
    80002828:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    8000282c:	00a00793          	li	a5,10
    80002830:	02f577b3          	remu	a5,a0,a5
    80002834:	02078e63          	beqz	a5,80002870 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002838:	fff48513          	addi	a0,s1,-1
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	fcc080e7          	jalr	-52(ra) # 80002808 <_ZL9fibonaccim>
    80002844:	00050913          	mv	s2,a0
    80002848:	ffe48513          	addi	a0,s1,-2
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	fbc080e7          	jalr	-68(ra) # 80002808 <_ZL9fibonaccim>
    80002854:	00a90533          	add	a0,s2,a0
}
    80002858:	01813083          	ld	ra,24(sp)
    8000285c:	01013403          	ld	s0,16(sp)
    80002860:	00813483          	ld	s1,8(sp)
    80002864:	00013903          	ld	s2,0(sp)
    80002868:	02010113          	addi	sp,sp,32
    8000286c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	ecc080e7          	jalr	-308(ra) # 8000173c <_Z15thread_dispatchv>
    80002878:	fc1ff06f          	j	80002838 <_ZL9fibonaccim+0x30>
}
    8000287c:	00008067          	ret

0000000080002880 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002880:	fe010113          	addi	sp,sp,-32
    80002884:	00113c23          	sd	ra,24(sp)
    80002888:	00813823          	sd	s0,16(sp)
    8000288c:	00913423          	sd	s1,8(sp)
    80002890:	01213023          	sd	s2,0(sp)
    80002894:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002898:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    8000289c:	00c00793          	li	a5,12
    800028a0:	0497e263          	bltu	a5,s1,800028e4 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    800028a4:	00007517          	auipc	a0,0x7
    800028a8:	cfc50513          	addi	a0,a0,-772 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    800028ac:	00003097          	auipc	ra,0x3
    800028b0:	cc4080e7          	jalr	-828(ra) # 80005570 <_Z11printStringPKc>
    800028b4:	00000613          	li	a2,0
    800028b8:	00a00593          	li	a1,10
    800028bc:	00048513          	mv	a0,s1
    800028c0:	00003097          	auipc	ra,0x3
    800028c4:	e5c080e7          	jalr	-420(ra) # 8000571c <_Z8printIntiii>
    800028c8:	00007517          	auipc	a0,0x7
    800028cc:	a5850513          	addi	a0,a0,-1448 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800028d0:	00003097          	auipc	ra,0x3
    800028d4:	ca0080e7          	jalr	-864(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800028d8:	0014849b          	addiw	s1,s1,1
    800028dc:	0ff4f493          	andi	s1,s1,255
    800028e0:	fbdff06f          	j	8000289c <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    800028e4:	00007517          	auipc	a0,0x7
    800028e8:	cc450513          	addi	a0,a0,-828 # 800095a8 <_ZZ24debug_print_internal_intmE6digits+0x330>
    800028ec:	00003097          	auipc	ra,0x3
    800028f0:	c84080e7          	jalr	-892(ra) # 80005570 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800028f4:	00500313          	li	t1,5
    thread_dispatch();
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	e44080e7          	jalr	-444(ra) # 8000173c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002900:	01000513          	li	a0,16
    80002904:	00000097          	auipc	ra,0x0
    80002908:	f04080e7          	jalr	-252(ra) # 80002808 <_ZL9fibonaccim>
    8000290c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002910:	00007517          	auipc	a0,0x7
    80002914:	ca850513          	addi	a0,a0,-856 # 800095b8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80002918:	00003097          	auipc	ra,0x3
    8000291c:	c58080e7          	jalr	-936(ra) # 80005570 <_Z11printStringPKc>
    80002920:	00000613          	li	a2,0
    80002924:	00a00593          	li	a1,10
    80002928:	0009051b          	sext.w	a0,s2
    8000292c:	00003097          	auipc	ra,0x3
    80002930:	df0080e7          	jalr	-528(ra) # 8000571c <_Z8printIntiii>
    80002934:	00007517          	auipc	a0,0x7
    80002938:	9ec50513          	addi	a0,a0,-1556 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000293c:	00003097          	auipc	ra,0x3
    80002940:	c34080e7          	jalr	-972(ra) # 80005570 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80002944:	00f00793          	li	a5,15
    80002948:	0497e263          	bltu	a5,s1,8000298c <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    8000294c:	00007517          	auipc	a0,0x7
    80002950:	c5450513          	addi	a0,a0,-940 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80002954:	00003097          	auipc	ra,0x3
    80002958:	c1c080e7          	jalr	-996(ra) # 80005570 <_Z11printStringPKc>
    8000295c:	00000613          	li	a2,0
    80002960:	00a00593          	li	a1,10
    80002964:	00048513          	mv	a0,s1
    80002968:	00003097          	auipc	ra,0x3
    8000296c:	db4080e7          	jalr	-588(ra) # 8000571c <_Z8printIntiii>
    80002970:	00007517          	auipc	a0,0x7
    80002974:	9b050513          	addi	a0,a0,-1616 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002978:	00003097          	auipc	ra,0x3
    8000297c:	bf8080e7          	jalr	-1032(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002980:	0014849b          	addiw	s1,s1,1
    80002984:	0ff4f493          	andi	s1,s1,255
    80002988:	fbdff06f          	j	80002944 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    8000298c:	00007517          	auipc	a0,0x7
    80002990:	c3c50513          	addi	a0,a0,-964 # 800095c8 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80002994:	00003097          	auipc	ra,0x3
    80002998:	bdc080e7          	jalr	-1060(ra) # 80005570 <_Z11printStringPKc>
    finishedD = true;
    8000299c:	00100793          	li	a5,1
    800029a0:	00009717          	auipc	a4,0x9
    800029a4:	04f70c23          	sb	a5,88(a4) # 8000b9f8 <_ZL9finishedD>
    thread_dispatch();
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	d94080e7          	jalr	-620(ra) # 8000173c <_Z15thread_dispatchv>
}
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	01013403          	ld	s0,16(sp)
    800029b8:	00813483          	ld	s1,8(sp)
    800029bc:	00013903          	ld	s2,0(sp)
    800029c0:	02010113          	addi	sp,sp,32
    800029c4:	00008067          	ret

00000000800029c8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800029c8:	fe010113          	addi	sp,sp,-32
    800029cc:	00113c23          	sd	ra,24(sp)
    800029d0:	00813823          	sd	s0,16(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	01213023          	sd	s2,0(sp)
    800029dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800029e0:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800029e4:	00200793          	li	a5,2
    800029e8:	0497e263          	bltu	a5,s1,80002a2c <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    800029ec:	00007517          	auipc	a0,0x7
    800029f0:	bec50513          	addi	a0,a0,-1044 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    800029f4:	00003097          	auipc	ra,0x3
    800029f8:	b7c080e7          	jalr	-1156(ra) # 80005570 <_Z11printStringPKc>
    800029fc:	00000613          	li	a2,0
    80002a00:	00a00593          	li	a1,10
    80002a04:	00048513          	mv	a0,s1
    80002a08:	00003097          	auipc	ra,0x3
    80002a0c:	d14080e7          	jalr	-748(ra) # 8000571c <_Z8printIntiii>
    80002a10:	00007517          	auipc	a0,0x7
    80002a14:	91050513          	addi	a0,a0,-1776 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002a18:	00003097          	auipc	ra,0x3
    80002a1c:	b58080e7          	jalr	-1192(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002a20:	0014849b          	addiw	s1,s1,1
    80002a24:	0ff4f493          	andi	s1,s1,255
    80002a28:	fbdff06f          	j	800029e4 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80002a2c:	00007517          	auipc	a0,0x7
    80002a30:	bb450513          	addi	a0,a0,-1100 # 800095e0 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80002a34:	00003097          	auipc	ra,0x3
    80002a38:	b3c080e7          	jalr	-1220(ra) # 80005570 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002a3c:	00700313          	li	t1,7
    thread_dispatch();
    80002a40:	fffff097          	auipc	ra,0xfffff
    80002a44:	cfc080e7          	jalr	-772(ra) # 8000173c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002a48:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002a4c:	00007517          	auipc	a0,0x7
    80002a50:	ba450513          	addi	a0,a0,-1116 # 800095f0 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80002a54:	00003097          	auipc	ra,0x3
    80002a58:	b1c080e7          	jalr	-1252(ra) # 80005570 <_Z11printStringPKc>
    80002a5c:	00000613          	li	a2,0
    80002a60:	00a00593          	li	a1,10
    80002a64:	0009051b          	sext.w	a0,s2
    80002a68:	00003097          	auipc	ra,0x3
    80002a6c:	cb4080e7          	jalr	-844(ra) # 8000571c <_Z8printIntiii>
    80002a70:	00007517          	auipc	a0,0x7
    80002a74:	8b050513          	addi	a0,a0,-1872 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002a78:	00003097          	auipc	ra,0x3
    80002a7c:	af8080e7          	jalr	-1288(ra) # 80005570 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002a80:	00c00513          	li	a0,12
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	d84080e7          	jalr	-636(ra) # 80002808 <_ZL9fibonaccim>
    80002a8c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002a90:	00007517          	auipc	a0,0x7
    80002a94:	b6850513          	addi	a0,a0,-1176 # 800095f8 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80002a98:	00003097          	auipc	ra,0x3
    80002a9c:	ad8080e7          	jalr	-1320(ra) # 80005570 <_Z11printStringPKc>
    80002aa0:	00000613          	li	a2,0
    80002aa4:	00a00593          	li	a1,10
    80002aa8:	0009051b          	sext.w	a0,s2
    80002aac:	00003097          	auipc	ra,0x3
    80002ab0:	c70080e7          	jalr	-912(ra) # 8000571c <_Z8printIntiii>
    80002ab4:	00007517          	auipc	a0,0x7
    80002ab8:	86c50513          	addi	a0,a0,-1940 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002abc:	00003097          	auipc	ra,0x3
    80002ac0:	ab4080e7          	jalr	-1356(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002ac4:	00500793          	li	a5,5
    80002ac8:	0497e263          	bltu	a5,s1,80002b0c <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80002acc:	00007517          	auipc	a0,0x7
    80002ad0:	b0c50513          	addi	a0,a0,-1268 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80002ad4:	00003097          	auipc	ra,0x3
    80002ad8:	a9c080e7          	jalr	-1380(ra) # 80005570 <_Z11printStringPKc>
    80002adc:	00000613          	li	a2,0
    80002ae0:	00a00593          	li	a1,10
    80002ae4:	00048513          	mv	a0,s1
    80002ae8:	00003097          	auipc	ra,0x3
    80002aec:	c34080e7          	jalr	-972(ra) # 8000571c <_Z8printIntiii>
    80002af0:	00007517          	auipc	a0,0x7
    80002af4:	83050513          	addi	a0,a0,-2000 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002af8:	00003097          	auipc	ra,0x3
    80002afc:	a78080e7          	jalr	-1416(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002b00:	0014849b          	addiw	s1,s1,1
    80002b04:	0ff4f493          	andi	s1,s1,255
    80002b08:	fbdff06f          	j	80002ac4 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    80002b0c:	00007517          	auipc	a0,0x7
    80002b10:	afc50513          	addi	a0,a0,-1284 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80002b14:	00003097          	auipc	ra,0x3
    80002b18:	a5c080e7          	jalr	-1444(ra) # 80005570 <_Z11printStringPKc>
    finishedC = true;
    80002b1c:	00100793          	li	a5,1
    80002b20:	00009717          	auipc	a4,0x9
    80002b24:	ecf70ca3          	sb	a5,-295(a4) # 8000b9f9 <_ZL9finishedC>
    thread_dispatch();
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	c14080e7          	jalr	-1004(ra) # 8000173c <_Z15thread_dispatchv>
}
    80002b30:	01813083          	ld	ra,24(sp)
    80002b34:	01013403          	ld	s0,16(sp)
    80002b38:	00813483          	ld	s1,8(sp)
    80002b3c:	00013903          	ld	s2,0(sp)
    80002b40:	02010113          	addi	sp,sp,32
    80002b44:	00008067          	ret

0000000080002b48 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002b48:	fe010113          	addi	sp,sp,-32
    80002b4c:	00113c23          	sd	ra,24(sp)
    80002b50:	00813823          	sd	s0,16(sp)
    80002b54:	00913423          	sd	s1,8(sp)
    80002b58:	01213023          	sd	s2,0(sp)
    80002b5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002b60:	00000913          	li	s2,0
    80002b64:	0400006f          	j	80002ba4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	bd4080e7          	jalr	-1068(ra) # 8000173c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b70:	00148493          	addi	s1,s1,1
    80002b74:	000027b7          	lui	a5,0x2
    80002b78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b7c:	0097ee63          	bltu	a5,s1,80002b98 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b80:	00000713          	li	a4,0
    80002b84:	000077b7          	lui	a5,0x7
    80002b88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b8c:	fce7eee3          	bltu	a5,a4,80002b68 <_ZL11workerBodyBPv+0x20>
    80002b90:	00170713          	addi	a4,a4,1
    80002b94:	ff1ff06f          	j	80002b84 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80002b98:	00a00793          	li	a5,10
    80002b9c:	04f90663          	beq	s2,a5,80002be8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80002ba0:	00190913          	addi	s2,s2,1
    80002ba4:	00f00793          	li	a5,15
    80002ba8:	0527e463          	bltu	a5,s2,80002bf0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80002bac:	00007517          	auipc	a0,0x7
    80002bb0:	a6c50513          	addi	a0,a0,-1428 # 80009618 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80002bb4:	00003097          	auipc	ra,0x3
    80002bb8:	9bc080e7          	jalr	-1604(ra) # 80005570 <_Z11printStringPKc>
    80002bbc:	00000613          	li	a2,0
    80002bc0:	00a00593          	li	a1,10
    80002bc4:	0009051b          	sext.w	a0,s2
    80002bc8:	00003097          	auipc	ra,0x3
    80002bcc:	b54080e7          	jalr	-1196(ra) # 8000571c <_Z8printIntiii>
    80002bd0:	00006517          	auipc	a0,0x6
    80002bd4:	75050513          	addi	a0,a0,1872 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002bd8:	00003097          	auipc	ra,0x3
    80002bdc:	998080e7          	jalr	-1640(ra) # 80005570 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002be0:	00000493          	li	s1,0
    80002be4:	f91ff06f          	j	80002b74 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80002be8:	14102ff3          	csrr	t6,sepc
    80002bec:	fb5ff06f          	j	80002ba0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80002bf0:	00007517          	auipc	a0,0x7
    80002bf4:	a3050513          	addi	a0,a0,-1488 # 80009620 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80002bf8:	00003097          	auipc	ra,0x3
    80002bfc:	978080e7          	jalr	-1672(ra) # 80005570 <_Z11printStringPKc>
    finishedB = true;
    80002c00:	00100793          	li	a5,1
    80002c04:	00009717          	auipc	a4,0x9
    80002c08:	def70b23          	sb	a5,-522(a4) # 8000b9fa <_ZL9finishedB>
    thread_dispatch();
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	b30080e7          	jalr	-1232(ra) # 8000173c <_Z15thread_dispatchv>
}
    80002c14:	01813083          	ld	ra,24(sp)
    80002c18:	01013403          	ld	s0,16(sp)
    80002c1c:	00813483          	ld	s1,8(sp)
    80002c20:	00013903          	ld	s2,0(sp)
    80002c24:	02010113          	addi	sp,sp,32
    80002c28:	00008067          	ret

0000000080002c2c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002c2c:	fe010113          	addi	sp,sp,-32
    80002c30:	00113c23          	sd	ra,24(sp)
    80002c34:	00813823          	sd	s0,16(sp)
    80002c38:	00913423          	sd	s1,8(sp)
    80002c3c:	01213023          	sd	s2,0(sp)
    80002c40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002c44:	00000913          	li	s2,0
    80002c48:	0380006f          	j	80002c80 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	af0080e7          	jalr	-1296(ra) # 8000173c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c54:	00148493          	addi	s1,s1,1
    80002c58:	000027b7          	lui	a5,0x2
    80002c5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c60:	0097ee63          	bltu	a5,s1,80002c7c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c64:	00000713          	li	a4,0
    80002c68:	000077b7          	lui	a5,0x7
    80002c6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c70:	fce7eee3          	bltu	a5,a4,80002c4c <_ZL11workerBodyAPv+0x20>
    80002c74:	00170713          	addi	a4,a4,1
    80002c78:	ff1ff06f          	j	80002c68 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002c7c:	00190913          	addi	s2,s2,1
    80002c80:	00900793          	li	a5,9
    80002c84:	0527e063          	bltu	a5,s2,80002cc4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002c88:	00007517          	auipc	a0,0x7
    80002c8c:	9a850513          	addi	a0,a0,-1624 # 80009630 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80002c90:	00003097          	auipc	ra,0x3
    80002c94:	8e0080e7          	jalr	-1824(ra) # 80005570 <_Z11printStringPKc>
    80002c98:	00000613          	li	a2,0
    80002c9c:	00a00593          	li	a1,10
    80002ca0:	0009051b          	sext.w	a0,s2
    80002ca4:	00003097          	auipc	ra,0x3
    80002ca8:	a78080e7          	jalr	-1416(ra) # 8000571c <_Z8printIntiii>
    80002cac:	00006517          	auipc	a0,0x6
    80002cb0:	67450513          	addi	a0,a0,1652 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002cb4:	00003097          	auipc	ra,0x3
    80002cb8:	8bc080e7          	jalr	-1860(ra) # 80005570 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cbc:	00000493          	li	s1,0
    80002cc0:	f99ff06f          	j	80002c58 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002cc4:	00007517          	auipc	a0,0x7
    80002cc8:	94450513          	addi	a0,a0,-1724 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80002ccc:	00003097          	auipc	ra,0x3
    80002cd0:	8a4080e7          	jalr	-1884(ra) # 80005570 <_Z11printStringPKc>
    finishedA = true;
    80002cd4:	00100793          	li	a5,1
    80002cd8:	00009717          	auipc	a4,0x9
    80002cdc:	d2f701a3          	sb	a5,-733(a4) # 8000b9fb <_ZL9finishedA>
}
    80002ce0:	01813083          	ld	ra,24(sp)
    80002ce4:	01013403          	ld	s0,16(sp)
    80002ce8:	00813483          	ld	s1,8(sp)
    80002cec:	00013903          	ld	s2,0(sp)
    80002cf0:	02010113          	addi	sp,sp,32
    80002cf4:	00008067          	ret

0000000080002cf8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002cf8:	fd010113          	addi	sp,sp,-48
    80002cfc:	02113423          	sd	ra,40(sp)
    80002d00:	02813023          	sd	s0,32(sp)
    80002d04:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002d08:	00000613          	li	a2,0
    80002d0c:	00000597          	auipc	a1,0x0
    80002d10:	f2058593          	addi	a1,a1,-224 # 80002c2c <_ZL11workerBodyAPv>
    80002d14:	fd040513          	addi	a0,s0,-48
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	974080e7          	jalr	-1676(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002d20:	00007517          	auipc	a0,0x7
    80002d24:	91850513          	addi	a0,a0,-1768 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    80002d28:	00003097          	auipc	ra,0x3
    80002d2c:	848080e7          	jalr	-1976(ra) # 80005570 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002d30:	00000613          	li	a2,0
    80002d34:	00000597          	auipc	a1,0x0
    80002d38:	e1458593          	addi	a1,a1,-492 # 80002b48 <_ZL11workerBodyBPv>
    80002d3c:	fd840513          	addi	a0,s0,-40
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	94c080e7          	jalr	-1716(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002d48:	00007517          	auipc	a0,0x7
    80002d4c:	90850513          	addi	a0,a0,-1784 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    80002d50:	00003097          	auipc	ra,0x3
    80002d54:	820080e7          	jalr	-2016(ra) # 80005570 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002d58:	00000613          	li	a2,0
    80002d5c:	00000597          	auipc	a1,0x0
    80002d60:	c6c58593          	addi	a1,a1,-916 # 800029c8 <_ZL11workerBodyCPv>
    80002d64:	fe040513          	addi	a0,s0,-32
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	924080e7          	jalr	-1756(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002d70:	00007517          	auipc	a0,0x7
    80002d74:	8f850513          	addi	a0,a0,-1800 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    80002d78:	00002097          	auipc	ra,0x2
    80002d7c:	7f8080e7          	jalr	2040(ra) # 80005570 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002d80:	00000613          	li	a2,0
    80002d84:	00000597          	auipc	a1,0x0
    80002d88:	afc58593          	addi	a1,a1,-1284 # 80002880 <_ZL11workerBodyDPv>
    80002d8c:	fe840513          	addi	a0,s0,-24
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	8fc080e7          	jalr	-1796(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80002d98:	00007517          	auipc	a0,0x7
    80002d9c:	8e850513          	addi	a0,a0,-1816 # 80009680 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	7d0080e7          	jalr	2000(ra) # 80005570 <_Z11printStringPKc>
    80002da8:	00c0006f          	j	80002db4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	990080e7          	jalr	-1648(ra) # 8000173c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002db4:	00009797          	auipc	a5,0x9
    80002db8:	c4778793          	addi	a5,a5,-953 # 8000b9fb <_ZL9finishedA>
    80002dbc:	0007c783          	lbu	a5,0(a5)
    80002dc0:	0ff7f793          	andi	a5,a5,255
    80002dc4:	fe0784e3          	beqz	a5,80002dac <_Z16System_Mode_testv+0xb4>
    80002dc8:	00009797          	auipc	a5,0x9
    80002dcc:	c3278793          	addi	a5,a5,-974 # 8000b9fa <_ZL9finishedB>
    80002dd0:	0007c783          	lbu	a5,0(a5)
    80002dd4:	0ff7f793          	andi	a5,a5,255
    80002dd8:	fc078ae3          	beqz	a5,80002dac <_Z16System_Mode_testv+0xb4>
    80002ddc:	00009797          	auipc	a5,0x9
    80002de0:	c1d78793          	addi	a5,a5,-995 # 8000b9f9 <_ZL9finishedC>
    80002de4:	0007c783          	lbu	a5,0(a5)
    80002de8:	0ff7f793          	andi	a5,a5,255
    80002dec:	fc0780e3          	beqz	a5,80002dac <_Z16System_Mode_testv+0xb4>
    80002df0:	00009797          	auipc	a5,0x9
    80002df4:	c0878793          	addi	a5,a5,-1016 # 8000b9f8 <_ZL9finishedD>
    80002df8:	0007c783          	lbu	a5,0(a5)
    80002dfc:	0ff7f793          	andi	a5,a5,255
    80002e00:	fa0786e3          	beqz	a5,80002dac <_Z16System_Mode_testv+0xb4>
    }

}
    80002e04:	02813083          	ld	ra,40(sp)
    80002e08:	02013403          	ld	s0,32(sp)
    80002e0c:	03010113          	addi	sp,sp,48
    80002e10:	00008067          	ret

0000000080002e14 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002e14:	fe010113          	addi	sp,sp,-32
    80002e18:	00113c23          	sd	ra,24(sp)
    80002e1c:	00813823          	sd	s0,16(sp)
    80002e20:	00913423          	sd	s1,8(sp)
    80002e24:	01213023          	sd	s2,0(sp)
    80002e28:	02010413          	addi	s0,sp,32
    80002e2c:	00050493          	mv	s1,a0
    80002e30:	00058913          	mv	s2,a1
    80002e34:	0015879b          	addiw	a5,a1,1
    80002e38:	0007851b          	sext.w	a0,a5
    80002e3c:	00f4a023          	sw	a5,0(s1)
    80002e40:	0004a823          	sw	zero,16(s1)
    80002e44:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002e48:	00251513          	slli	a0,a0,0x2
    80002e4c:	ffffe097          	auipc	ra,0xffffe
    80002e50:	6b4080e7          	jalr	1716(ra) # 80001500 <_Z9mem_allocm>
    80002e54:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002e58:	00000593          	li	a1,0
    80002e5c:	02048513          	addi	a0,s1,32
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	928080e7          	jalr	-1752(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    80002e68:	00090593          	mv	a1,s2
    80002e6c:	01848513          	addi	a0,s1,24
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	918080e7          	jalr	-1768(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    80002e78:	00100593          	li	a1,1
    80002e7c:	02848513          	addi	a0,s1,40
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	908080e7          	jalr	-1784(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    80002e88:	00100593          	li	a1,1
    80002e8c:	03048513          	addi	a0,s1,48
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	8f8080e7          	jalr	-1800(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
}
    80002e98:	01813083          	ld	ra,24(sp)
    80002e9c:	01013403          	ld	s0,16(sp)
    80002ea0:	00813483          	ld	s1,8(sp)
    80002ea4:	00013903          	ld	s2,0(sp)
    80002ea8:	02010113          	addi	sp,sp,32
    80002eac:	00008067          	ret

0000000080002eb0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002eb0:	fe010113          	addi	sp,sp,-32
    80002eb4:	00113c23          	sd	ra,24(sp)
    80002eb8:	00813823          	sd	s0,16(sp)
    80002ebc:	00913423          	sd	s1,8(sp)
    80002ec0:	01213023          	sd	s2,0(sp)
    80002ec4:	02010413          	addi	s0,sp,32
    80002ec8:	00050493          	mv	s1,a0
    80002ecc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002ed0:	01853503          	ld	a0,24(a0)
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	99c080e7          	jalr	-1636(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80002edc:	0304b503          	ld	a0,48(s1)
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	990080e7          	jalr	-1648(ra) # 80001870 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80002ee8:	0084b783          	ld	a5,8(s1)
    80002eec:	0144a703          	lw	a4,20(s1)
    80002ef0:	00271713          	slli	a4,a4,0x2
    80002ef4:	00e787b3          	add	a5,a5,a4
    80002ef8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002efc:	0144a783          	lw	a5,20(s1)
    80002f00:	0017879b          	addiw	a5,a5,1
    80002f04:	0004a703          	lw	a4,0(s1)
    80002f08:	02e7e7bb          	remw	a5,a5,a4
    80002f0c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002f10:	0304b503          	ld	a0,48(s1)
    80002f14:	fffff097          	auipc	ra,0xfffff
    80002f18:	9c8080e7          	jalr	-1592(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80002f1c:	0204b503          	ld	a0,32(s1)
    80002f20:	fffff097          	auipc	ra,0xfffff
    80002f24:	9bc080e7          	jalr	-1604(ra) # 800018dc <_Z10sem_signalP10_semaphore>

}
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	00013903          	ld	s2,0(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret

0000000080002f40 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002f40:	fe010113          	addi	sp,sp,-32
    80002f44:	00113c23          	sd	ra,24(sp)
    80002f48:	00813823          	sd	s0,16(sp)
    80002f4c:	00913423          	sd	s1,8(sp)
    80002f50:	01213023          	sd	s2,0(sp)
    80002f54:	02010413          	addi	s0,sp,32
    80002f58:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002f5c:	02053503          	ld	a0,32(a0)
    80002f60:	fffff097          	auipc	ra,0xfffff
    80002f64:	910080e7          	jalr	-1776(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    80002f68:	0284b503          	ld	a0,40(s1)
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	904080e7          	jalr	-1788(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80002f74:	0084b703          	ld	a4,8(s1)
    80002f78:	0104a783          	lw	a5,16(s1)
    80002f7c:	00279693          	slli	a3,a5,0x2
    80002f80:	00d70733          	add	a4,a4,a3
    80002f84:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002f88:	0017879b          	addiw	a5,a5,1
    80002f8c:	0004a703          	lw	a4,0(s1)
    80002f90:	02e7e7bb          	remw	a5,a5,a4
    80002f94:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002f98:	0284b503          	ld	a0,40(s1)
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	940080e7          	jalr	-1728(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    80002fa4:	0184b503          	ld	a0,24(s1)
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	934080e7          	jalr	-1740(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    return ret;
}
    80002fb0:	00090513          	mv	a0,s2
    80002fb4:	01813083          	ld	ra,24(sp)
    80002fb8:	01013403          	ld	s0,16(sp)
    80002fbc:	00813483          	ld	s1,8(sp)
    80002fc0:	00013903          	ld	s2,0(sp)
    80002fc4:	02010113          	addi	sp,sp,32
    80002fc8:	00008067          	ret

0000000080002fcc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	01213023          	sd	s2,0(sp)
    80002fe0:	02010413          	addi	s0,sp,32
    80002fe4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002fe8:	02853503          	ld	a0,40(a0)
    80002fec:	fffff097          	auipc	ra,0xfffff
    80002ff0:	884080e7          	jalr	-1916(ra) # 80001870 <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80002ff4:	0304b503          	ld	a0,48(s1)
    80002ff8:	fffff097          	auipc	ra,0xfffff
    80002ffc:	878080e7          	jalr	-1928(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80003000:	0144a783          	lw	a5,20(s1)
    80003004:	0104a903          	lw	s2,16(s1)
    80003008:	0327ce63          	blt	a5,s2,80003044 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000300c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003010:	0304b503          	ld	a0,48(s1)
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	8c8080e7          	jalr	-1848(ra) # 800018dc <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    8000301c:	0284b503          	ld	a0,40(s1)
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	8bc080e7          	jalr	-1860(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    return ret;
}
    80003028:	00090513          	mv	a0,s2
    8000302c:	01813083          	ld	ra,24(sp)
    80003030:	01013403          	ld	s0,16(sp)
    80003034:	00813483          	ld	s1,8(sp)
    80003038:	00013903          	ld	s2,0(sp)
    8000303c:	02010113          	addi	sp,sp,32
    80003040:	00008067          	ret
        ret = cap - head + tail;
    80003044:	0004a703          	lw	a4,0(s1)
    80003048:	4127093b          	subw	s2,a4,s2
    8000304c:	00f9093b          	addw	s2,s2,a5
    80003050:	fc1ff06f          	j	80003010 <_ZN6Buffer6getCntEv+0x44>

0000000080003054 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003054:	fe010113          	addi	sp,sp,-32
    80003058:	00113c23          	sd	ra,24(sp)
    8000305c:	00813823          	sd	s0,16(sp)
    80003060:	00913423          	sd	s1,8(sp)
    80003064:	02010413          	addi	s0,sp,32
    80003068:	00050493          	mv	s1,a0
    putc('\n');
    8000306c:	00a00513          	li	a0,10
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	944080e7          	jalr	-1724(ra) # 800019b4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003078:	00006517          	auipc	a0,0x6
    8000307c:	62050513          	addi	a0,a0,1568 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x420>
    80003080:	00002097          	auipc	ra,0x2
    80003084:	4f0080e7          	jalr	1264(ra) # 80005570 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003088:	00048513          	mv	a0,s1
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	f40080e7          	jalr	-192(ra) # 80002fcc <_ZN6Buffer6getCntEv>
    80003094:	02a05c63          	blez	a0,800030cc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003098:	0084b783          	ld	a5,8(s1)
    8000309c:	0104a703          	lw	a4,16(s1)
    800030a0:	00271713          	slli	a4,a4,0x2
    800030a4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800030a8:	0007c503          	lbu	a0,0(a5)
    800030ac:	fffff097          	auipc	ra,0xfffff
    800030b0:	908080e7          	jalr	-1784(ra) # 800019b4 <_Z4putcc>
        head = (head + 1) % cap;
    800030b4:	0104a783          	lw	a5,16(s1)
    800030b8:	0017879b          	addiw	a5,a5,1
    800030bc:	0004a703          	lw	a4,0(s1)
    800030c0:	02e7e7bb          	remw	a5,a5,a4
    800030c4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800030c8:	fc1ff06f          	j	80003088 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800030cc:	02100513          	li	a0,33
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	8e4080e7          	jalr	-1820(ra) # 800019b4 <_Z4putcc>
    putc('\n');
    800030d8:	00a00513          	li	a0,10
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	8d8080e7          	jalr	-1832(ra) # 800019b4 <_Z4putcc>
    mem_free(buffer);
    800030e4:	0084b503          	ld	a0,8(s1)
    800030e8:	ffffe097          	auipc	ra,0xffffe
    800030ec:	480080e7          	jalr	1152(ra) # 80001568 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800030f0:	0204b503          	ld	a0,32(s1)
    800030f4:	ffffe097          	auipc	ra,0xffffe
    800030f8:	710080e7          	jalr	1808(ra) # 80001804 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    800030fc:	0184b503          	ld	a0,24(s1)
    80003100:	ffffe097          	auipc	ra,0xffffe
    80003104:	704080e7          	jalr	1796(ra) # 80001804 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    80003108:	0304b503          	ld	a0,48(s1)
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	6f8080e7          	jalr	1784(ra) # 80001804 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    80003114:	0284b503          	ld	a0,40(s1)
    80003118:	ffffe097          	auipc	ra,0xffffe
    8000311c:	6ec080e7          	jalr	1772(ra) # 80001804 <_Z9sem_closeP10_semaphore>
}
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	00813483          	ld	s1,8(sp)
    8000312c:	02010113          	addi	sp,sp,32
    80003130:	00008067          	ret

0000000080003134 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003134:	f8010113          	addi	sp,sp,-128
    80003138:	06113c23          	sd	ra,120(sp)
    8000313c:	06813823          	sd	s0,112(sp)
    80003140:	06913423          	sd	s1,104(sp)
    80003144:	07213023          	sd	s2,96(sp)
    80003148:	05313c23          	sd	s3,88(sp)
    8000314c:	05413823          	sd	s4,80(sp)
    80003150:	05513423          	sd	s5,72(sp)
    80003154:	05613023          	sd	s6,64(sp)
    80003158:	03713c23          	sd	s7,56(sp)
    8000315c:	03813823          	sd	s8,48(sp)
    80003160:	03913423          	sd	s9,40(sp)
    80003164:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003168:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000316c:	00006517          	auipc	a0,0x6
    80003170:	60450513          	addi	a0,a0,1540 # 80009770 <_ZTV8Consumer+0x28>
    80003174:	00002097          	auipc	ra,0x2
    80003178:	3fc080e7          	jalr	1020(ra) # 80005570 <_Z11printStringPKc>
    getString(input, 30);
    8000317c:	01e00593          	li	a1,30
    80003180:	f8040513          	addi	a0,s0,-128
    80003184:	00002097          	auipc	ra,0x2
    80003188:	474080e7          	jalr	1140(ra) # 800055f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000318c:	f8040513          	addi	a0,s0,-128
    80003190:	00002097          	auipc	ra,0x2
    80003194:	53c080e7          	jalr	1340(ra) # 800056cc <_Z11stringToIntPKc>
    80003198:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    8000319c:	00006517          	auipc	a0,0x6
    800031a0:	5f450513          	addi	a0,a0,1524 # 80009790 <_ZTV8Consumer+0x48>
    800031a4:	00002097          	auipc	ra,0x2
    800031a8:	3cc080e7          	jalr	972(ra) # 80005570 <_Z11printStringPKc>
    getString(input, 30);
    800031ac:	01e00593          	li	a1,30
    800031b0:	f8040513          	addi	a0,s0,-128
    800031b4:	00002097          	auipc	ra,0x2
    800031b8:	444080e7          	jalr	1092(ra) # 800055f8 <_Z9getStringPci>
    n = stringToInt(input);
    800031bc:	f8040513          	addi	a0,s0,-128
    800031c0:	00002097          	auipc	ra,0x2
    800031c4:	50c080e7          	jalr	1292(ra) # 800056cc <_Z11stringToIntPKc>
    800031c8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800031cc:	00006517          	auipc	a0,0x6
    800031d0:	5e450513          	addi	a0,a0,1508 # 800097b0 <_ZTV8Consumer+0x68>
    800031d4:	00002097          	auipc	ra,0x2
    800031d8:	39c080e7          	jalr	924(ra) # 80005570 <_Z11printStringPKc>
    printInt(threadNum);
    800031dc:	00000613          	li	a2,0
    800031e0:	00a00593          	li	a1,10
    800031e4:	000a0513          	mv	a0,s4
    800031e8:	00002097          	auipc	ra,0x2
    800031ec:	534080e7          	jalr	1332(ra) # 8000571c <_Z8printIntiii>
    printString(" i velicina bafera ");
    800031f0:	00006517          	auipc	a0,0x6
    800031f4:	5d850513          	addi	a0,a0,1496 # 800097c8 <_ZTV8Consumer+0x80>
    800031f8:	00002097          	auipc	ra,0x2
    800031fc:	378080e7          	jalr	888(ra) # 80005570 <_Z11printStringPKc>
    printInt(n);
    80003200:	00000613          	li	a2,0
    80003204:	00a00593          	li	a1,10
    80003208:	00048513          	mv	a0,s1
    8000320c:	00002097          	auipc	ra,0x2
    80003210:	510080e7          	jalr	1296(ra) # 8000571c <_Z8printIntiii>
    printString(".\n");
    80003214:	00006517          	auipc	a0,0x6
    80003218:	5cc50513          	addi	a0,a0,1484 # 800097e0 <_ZTV8Consumer+0x98>
    8000321c:	00002097          	auipc	ra,0x2
    80003220:	354080e7          	jalr	852(ra) # 80005570 <_Z11printStringPKc>
    if (threadNum > n) {
    80003224:	0344c463          	blt	s1,s4,8000324c <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    80003228:	03405c63          	blez	s4,80003260 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    8000322c:	03800513          	li	a0,56
    80003230:	fffff097          	auipc	ra,0xfffff
    80003234:	ad0080e7          	jalr	-1328(ra) # 80001d00 <_Znwm>
    80003238:	00050b13          	mv	s6,a0
    8000323c:	00048593          	mv	a1,s1
    80003240:	00003097          	auipc	ra,0x3
    80003244:	b20080e7          	jalr	-1248(ra) # 80005d60 <_ZN9BufferCPPC1Ei>
    80003248:	0300006f          	j	80003278 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000324c:	00006517          	auipc	a0,0x6
    80003250:	59c50513          	addi	a0,a0,1436 # 800097e8 <_ZTV8Consumer+0xa0>
    80003254:	00002097          	auipc	ra,0x2
    80003258:	31c080e7          	jalr	796(ra) # 80005570 <_Z11printStringPKc>
        return;
    8000325c:	0140006f          	j	80003270 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003260:	00006517          	auipc	a0,0x6
    80003264:	5c850513          	addi	a0,a0,1480 # 80009828 <_ZTV8Consumer+0xe0>
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	308080e7          	jalr	776(ra) # 80005570 <_Z11printStringPKc>
        return;
    80003270:	000c0113          	mv	sp,s8
    80003274:	37c0006f          	j	800035f0 <_Z20testConsumerProducerv+0x4bc>
    waitForAll = new Semaphore(0);
    80003278:	01000513          	li	a0,16
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	a84080e7          	jalr	-1404(ra) # 80001d00 <_Znwm>
    80003284:	00050913          	mv	s2,a0
            myHandle = nullptr;
        }
    }
    virtual ~Semaphore() {
        if (myHandle != nullptr) {
            sem_close(myHandle);
    80003288:	00006797          	auipc	a5,0x6
    8000328c:	46078793          	addi	a5,a5,1120 # 800096e8 <_ZTV9Semaphore+0x10>
    80003290:	00f53023          	sd	a5,0(a0)
        }
    80003294:	00000593          	li	a1,0
    80003298:	00850513          	addi	a0,a0,8
    8000329c:	ffffe097          	auipc	ra,0xffffe
    800032a0:	4ec080e7          	jalr	1260(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    800032a4:	00050463          	beqz	a0,800032ac <_Z20testConsumerProducerv+0x178>
    }
    800032a8:	00093423          	sd	zero,8(s2)
    800032ac:	00008797          	auipc	a5,0x8
    800032b0:	7527be23          	sd	s2,1884(a5) # 8000ba08 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800032b4:	003a1793          	slli	a5,s4,0x3
    800032b8:	00f78793          	addi	a5,a5,15
    800032bc:	ff07f793          	andi	a5,a5,-16
    800032c0:	40f10133          	sub	sp,sp,a5
    800032c4:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    800032c8:	001a079b          	addiw	a5,s4,1
    800032cc:	00179713          	slli	a4,a5,0x1
    800032d0:	00f70733          	add	a4,a4,a5
    800032d4:	00371793          	slli	a5,a4,0x3
    800032d8:	00f78793          	addi	a5,a5,15
    800032dc:	ff07f793          	andi	a5,a5,-16
    800032e0:	40f10133          	sub	sp,sp,a5
    800032e4:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    800032e8:	001a1793          	slli	a5,s4,0x1
    800032ec:	014787b3          	add	a5,a5,s4
    800032f0:	00379493          	slli	s1,a5,0x3
    800032f4:	009c84b3          	add	s1,s9,s1
    800032f8:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    800032fc:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003300:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003304:	02800513          	li	a0,40
    80003308:	fffff097          	auipc	ra,0xfffff
    8000330c:	9f8080e7          	jalr	-1544(ra) # 80001d00 <_Znwm>
    80003310:	00050b93          	mv	s7,a0
    static void body_exec (void* thread);
    80003314:	00053423          	sd	zero,8(a0)
    80003318:	00053823          	sd	zero,16(a0)
    8000331c:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003320:	00006797          	auipc	a5,0x6
    80003324:	43878793          	addi	a5,a5,1080 # 80009758 <_ZTV8Consumer+0x10>
    80003328:	00f53023          	sd	a5,0(a0)
    8000332c:	02953023          	sd	s1,32(a0)
            return -1;
    80003330:	00006517          	auipc	a0,0x6
    80003334:	52850513          	addi	a0,a0,1320 # 80009858 <_ZTV8Consumer+0x110>
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	b38080e7          	jalr	-1224(ra) # 80001e70 <_Z11debug_printPKc>
        }
    80003340:	00006517          	auipc	a0,0x6
    80003344:	53850513          	addi	a0,a0,1336 # 80009878 <_ZTV8Consumer+0x130>
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	b28080e7          	jalr	-1240(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("CPP API: Thread started\n");
    80003350:	000b8513          	mv	a0,s7
    80003354:	fffff097          	auipc	ra,0xfffff
    80003358:	c64080e7          	jalr	-924(ra) # 80001fb8 <_Z11debug_printm>
        return 0;
    8000335c:	00006517          	auipc	a0,0x6
    80003360:	fc450513          	addi	a0,a0,-60 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	b0c080e7          	jalr	-1268(ra) # 80001e70 <_Z11debug_printPKc>
    static void dispatch() {
    8000336c:	000b8613          	mv	a2,s7
    80003370:	ffffe597          	auipc	a1,0xffffe
    80003374:	f2458593          	addi	a1,a1,-220 # 80001294 <_ZN6Thread9body_execEPv>
    80003378:	008b8513          	addi	a0,s7,8
    8000337c:	ffffe097          	auipc	ra,0xffffe
    80003380:	310080e7          	jalr	784(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    80003384:	0c051663          	bnez	a0,80003450 <_Z20testConsumerProducerv+0x31c>
        return 0;
    80003388:	00006517          	auipc	a0,0x6
    8000338c:	50850513          	addi	a0,a0,1288 # 80009890 <_ZTV8Consumer+0x148>
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	ae0080e7          	jalr	-1312(ra) # 80001e70 <_Z11debug_printPKc>
    threadData[0].id = 0;
    80003398:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    8000339c:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    800033a0:	00008797          	auipc	a5,0x8
    800033a4:	66878793          	addi	a5,a5,1640 # 8000ba08 <_ZL10waitForAll>
    800033a8:	0007b783          	ld	a5,0(a5)
    800033ac:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800033b0:	02800513          	li	a0,40
    800033b4:	fffff097          	auipc	ra,0xfffff
    800033b8:	94c080e7          	jalr	-1716(ra) # 80001d00 <_Znwm>
    800033bc:	00050493          	mv	s1,a0
    static void body_exec (void* thread);
    800033c0:	00053423          	sd	zero,8(a0)
    800033c4:	00053823          	sd	zero,16(a0)
    800033c8:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800033cc:	00006797          	auipc	a5,0x6
    800033d0:	33c78793          	addi	a5,a5,828 # 80009708 <_ZTV16ProducerKeyborad+0x10>
    800033d4:	00f53023          	sd	a5,0(a0)
    800033d8:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800033dc:	00aab023          	sd	a0,0(s5)
            return -1;
    800033e0:	00006517          	auipc	a0,0x6
    800033e4:	47850513          	addi	a0,a0,1144 # 80009858 <_ZTV8Consumer+0x110>
    800033e8:	fffff097          	auipc	ra,0xfffff
    800033ec:	a88080e7          	jalr	-1400(ra) # 80001e70 <_Z11debug_printPKc>
        }
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	48850513          	addi	a0,a0,1160 # 80009878 <_ZTV8Consumer+0x130>
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	a78080e7          	jalr	-1416(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("CPP API: Thread started\n");
    80003400:	00048513          	mv	a0,s1
    80003404:	fffff097          	auipc	ra,0xfffff
    80003408:	bb4080e7          	jalr	-1100(ra) # 80001fb8 <_Z11debug_printm>
        return 0;
    8000340c:	00006517          	auipc	a0,0x6
    80003410:	f1450513          	addi	a0,a0,-236 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003414:	fffff097          	auipc	ra,0xfffff
    80003418:	a5c080e7          	jalr	-1444(ra) # 80001e70 <_Z11debug_printPKc>
    static void dispatch() {
    8000341c:	00048613          	mv	a2,s1
    80003420:	ffffe597          	auipc	a1,0xffffe
    80003424:	e7458593          	addi	a1,a1,-396 # 80001294 <_ZN6Thread9body_execEPv>
    80003428:	00848513          	addi	a0,s1,8
    8000342c:	ffffe097          	auipc	ra,0xffffe
    80003430:	260080e7          	jalr	608(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    80003434:	02051263          	bnez	a0,80003458 <_Z20testConsumerProducerv+0x324>
        return 0;
    80003438:	00006517          	auipc	a0,0x6
    8000343c:	45850513          	addi	a0,a0,1112 # 80009890 <_ZTV8Consumer+0x148>
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	a30080e7          	jalr	-1488(ra) # 80001e70 <_Z11debug_printPKc>
    for (int i = 1; i < threadNum; i++) {
    80003448:	00100993          	li	s3,1
    8000344c:	0280006f          	j	80003474 <_Z20testConsumerProducerv+0x340>
        thread_dispatch();
    80003450:	000bb423          	sd	zero,8(s7)
    }
    80003454:	f45ff06f          	j	80003398 <_Z20testConsumerProducerv+0x264>
        thread_dispatch();
    80003458:	0004b423          	sd	zero,8(s1)
    }
    8000345c:	fedff06f          	j	80003448 <_Z20testConsumerProducerv+0x314>
        return 0;
    80003460:	00006517          	auipc	a0,0x6
    80003464:	43050513          	addi	a0,a0,1072 # 80009890 <_ZTV8Consumer+0x148>
    80003468:	fffff097          	auipc	ra,0xfffff
    8000346c:	a08080e7          	jalr	-1528(ra) # 80001e70 <_Z11debug_printPKc>
    80003470:	0019899b          	addiw	s3,s3,1
    80003474:	0d49d263          	bge	s3,s4,80003538 <_Z20testConsumerProducerv+0x404>
        threadData[i].id = i;
    80003478:	00199793          	slli	a5,s3,0x1
    8000347c:	013787b3          	add	a5,a5,s3
    80003480:	00379913          	slli	s2,a5,0x3
    80003484:	012c8933          	add	s2,s9,s2
    80003488:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    8000348c:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    80003490:	00008797          	auipc	a5,0x8
    80003494:	57878793          	addi	a5,a5,1400 # 8000ba08 <_ZL10waitForAll>
    80003498:	0007b783          	ld	a5,0(a5)
    8000349c:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    800034a0:	02800513          	li	a0,40
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	85c080e7          	jalr	-1956(ra) # 80001d00 <_Znwm>
    800034ac:	00050493          	mv	s1,a0
    static void body_exec (void* thread);
    800034b0:	00053423          	sd	zero,8(a0)
    800034b4:	00053823          	sd	zero,16(a0)
    800034b8:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800034bc:	00006797          	auipc	a5,0x6
    800034c0:	27478793          	addi	a5,a5,628 # 80009730 <_ZTV8Producer+0x10>
    800034c4:	00f53023          	sd	a5,0(a0)
    800034c8:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    800034cc:	00399793          	slli	a5,s3,0x3
    800034d0:	00fa87b3          	add	a5,s5,a5
    800034d4:	00a7b023          	sd	a0,0(a5)
            return -1;
    800034d8:	00006517          	auipc	a0,0x6
    800034dc:	38050513          	addi	a0,a0,896 # 80009858 <_ZTV8Consumer+0x110>
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	990080e7          	jalr	-1648(ra) # 80001e70 <_Z11debug_printPKc>
        }
    800034e8:	00006517          	auipc	a0,0x6
    800034ec:	39050513          	addi	a0,a0,912 # 80009878 <_ZTV8Consumer+0x130>
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	980080e7          	jalr	-1664(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("CPP API: Thread started\n");
    800034f8:	00048513          	mv	a0,s1
    800034fc:	fffff097          	auipc	ra,0xfffff
    80003500:	abc080e7          	jalr	-1348(ra) # 80001fb8 <_Z11debug_printm>
        return 0;
    80003504:	00006517          	auipc	a0,0x6
    80003508:	e1c50513          	addi	a0,a0,-484 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000350c:	fffff097          	auipc	ra,0xfffff
    80003510:	964080e7          	jalr	-1692(ra) # 80001e70 <_Z11debug_printPKc>
    static void dispatch() {
    80003514:	00048613          	mv	a2,s1
    80003518:	ffffe597          	auipc	a1,0xffffe
    8000351c:	d7c58593          	addi	a1,a1,-644 # 80001294 <_ZN6Thread9body_execEPv>
    80003520:	00848513          	addi	a0,s1,8
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	168080e7          	jalr	360(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    8000352c:	f2050ae3          	beqz	a0,80003460 <_Z20testConsumerProducerv+0x32c>
        thread_dispatch();
    80003530:	0004b423          	sd	zero,8(s1)
    }
    80003534:	f3dff06f          	j	80003470 <_Z20testConsumerProducerv+0x33c>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	204080e7          	jalr	516(ra) # 8000173c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003540:	00000493          	li	s1,0
    80003544:	0080006f          	j	8000354c <_Z20testConsumerProducerv+0x418>
    80003548:	0014849b          	addiw	s1,s1,1
    8000354c:	029a4263          	blt	s4,s1,80003570 <_Z20testConsumerProducerv+0x43c>
        waitForAll->wait();
    80003550:	00008797          	auipc	a5,0x8
    80003554:	4b878793          	addi	a5,a5,1208 # 8000ba08 <_ZL10waitForAll>
    80003558:	0007b783          	ld	a5,0(a5)
        }
        return sem_wait(myHandle);
    }
    int signal() {
        if (myHandle == nullptr) {
            return -1;
    8000355c:	0087b503          	ld	a0,8(a5)
    80003560:	fe0504e3          	beqz	a0,80003548 <_Z20testConsumerProducerv+0x414>
        }
        return sem_signal(myHandle);
    }
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	30c080e7          	jalr	780(ra) # 80001870 <_Z8sem_waitP10_semaphore>
    8000356c:	fddff06f          	j	80003548 <_Z20testConsumerProducerv+0x414>
    delete waitForAll;
    80003570:	00008797          	auipc	a5,0x8
    80003574:	49878793          	addi	a5,a5,1176 # 8000ba08 <_ZL10waitForAll>
    80003578:	0007b503          	ld	a0,0(a5)
    8000357c:	00050863          	beqz	a0,8000358c <_Z20testConsumerProducerv+0x458>
    80003580:	00053783          	ld	a5,0(a0)
    80003584:	0087b783          	ld	a5,8(a5)
    80003588:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000358c:	00000493          	li	s1,0
    80003590:	0080006f          	j	80003598 <_Z20testConsumerProducerv+0x464>
    for (int i = 0; i < threadNum; i++) {
    80003594:	0014849b          	addiw	s1,s1,1
    80003598:	0344d263          	bge	s1,s4,800035bc <_Z20testConsumerProducerv+0x488>
        delete producers[i];
    8000359c:	00349793          	slli	a5,s1,0x3
    800035a0:	00fa87b3          	add	a5,s5,a5
    800035a4:	0007b503          	ld	a0,0(a5)
    800035a8:	fe0506e3          	beqz	a0,80003594 <_Z20testConsumerProducerv+0x460>
    800035ac:	00053783          	ld	a5,0(a0)
    800035b0:	0087b783          	ld	a5,8(a5)
    800035b4:	000780e7          	jalr	a5
    800035b8:	fddff06f          	j	80003594 <_Z20testConsumerProducerv+0x460>
    delete consumer;
    800035bc:	000b8a63          	beqz	s7,800035d0 <_Z20testConsumerProducerv+0x49c>
    800035c0:	000bb783          	ld	a5,0(s7)
    800035c4:	0087b783          	ld	a5,8(a5)
    800035c8:	000b8513          	mv	a0,s7
    800035cc:	000780e7          	jalr	a5
    delete buffer;
    800035d0:	000b0e63          	beqz	s6,800035ec <_Z20testConsumerProducerv+0x4b8>
    800035d4:	000b0513          	mv	a0,s6
    800035d8:	00003097          	auipc	ra,0x3
    800035dc:	b40080e7          	jalr	-1216(ra) # 80006118 <_ZN9BufferCPPD1Ev>
    800035e0:	000b0513          	mv	a0,s6
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	79c080e7          	jalr	1948(ra) # 80001d80 <_ZdlPv>
    800035ec:	000c0113          	mv	sp,s8
}
    800035f0:	f8040113          	addi	sp,s0,-128
    800035f4:	07813083          	ld	ra,120(sp)
    800035f8:	07013403          	ld	s0,112(sp)
    800035fc:	06813483          	ld	s1,104(sp)
    80003600:	06013903          	ld	s2,96(sp)
    80003604:	05813983          	ld	s3,88(sp)
    80003608:	05013a03          	ld	s4,80(sp)
    8000360c:	04813a83          	ld	s5,72(sp)
    80003610:	04013b03          	ld	s6,64(sp)
    80003614:	03813b83          	ld	s7,56(sp)
    80003618:	03013c03          	ld	s8,48(sp)
    8000361c:	02813c83          	ld	s9,40(sp)
    80003620:	08010113          	addi	sp,sp,128
    80003624:	00008067          	ret
    80003628:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000362c:	000b0513          	mv	a0,s6
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	750080e7          	jalr	1872(ra) # 80001d80 <_ZdlPv>
    80003638:	00048513          	mv	a0,s1
    8000363c:	00009097          	auipc	ra,0x9
    80003640:	50c080e7          	jalr	1292(ra) # 8000cb48 <_Unwind_Resume>
    80003644:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003648:	00090513          	mv	a0,s2
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	734080e7          	jalr	1844(ra) # 80001d80 <_ZdlPv>
    80003654:	00048513          	mv	a0,s1
    80003658:	00009097          	auipc	ra,0x9
    8000365c:	4f0080e7          	jalr	1264(ra) # 8000cb48 <_Unwind_Resume>

0000000080003660 <_ZN6Thread3runEv>:
    thread_t myHandle;
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    void (*body)(void*);
    80003670:	01053783          	ld	a5,16(a0)
    80003674:	01853503          	ld	a0,24(a0)
    80003678:	000780e7          	jalr	a5
    void* arg;
    8000367c:	00813083          	ld	ra,8(sp)
    80003680:	00013403          	ld	s0,0(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret

000000008000368c <_ZN9SemaphoreD1Ev>:
            return -1;
    8000368c:	00006797          	auipc	a5,0x6
    80003690:	05c78793          	addi	a5,a5,92 # 800096e8 <_ZTV9Semaphore+0x10>
    80003694:	00f53023          	sd	a5,0(a0)
        }
    80003698:	00853503          	ld	a0,8(a0)
    8000369c:	02050663          	beqz	a0,800036c8 <_ZN9SemaphoreD1Ev+0x3c>
            return -1;
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00113423          	sd	ra,8(sp)
    800036a8:	00813023          	sd	s0,0(sp)
    800036ac:	01010413          	addi	s0,sp,16
        return sem_wait(myHandle);
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	154080e7          	jalr	340(ra) # 80001804 <_Z9sem_closeP10_semaphore>
    int signal() {
    800036b8:	00813083          	ld	ra,8(sp)
    800036bc:	00013403          	ld	s0,0(sp)
    800036c0:	01010113          	addi	sp,sp,16
    800036c4:	00008067          	ret
    800036c8:	00008067          	ret

00000000800036cc <_ZN9SemaphoreD0Ev>:
            return -1;
    800036cc:	fe010113          	addi	sp,sp,-32
    800036d0:	00113c23          	sd	ra,24(sp)
    800036d4:	00813823          	sd	s0,16(sp)
    800036d8:	00913423          	sd	s1,8(sp)
    800036dc:	02010413          	addi	s0,sp,32
    800036e0:	00050493          	mv	s1,a0
    800036e4:	00006797          	auipc	a5,0x6
    800036e8:	00478793          	addi	a5,a5,4 # 800096e8 <_ZTV9Semaphore+0x10>
    800036ec:	00f53023          	sd	a5,0(a0)
        }
    800036f0:	00853503          	ld	a0,8(a0)
    800036f4:	00050663          	beqz	a0,80003700 <_ZN9SemaphoreD0Ev+0x34>
        return sem_wait(myHandle);
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	10c080e7          	jalr	268(ra) # 80001804 <_Z9sem_closeP10_semaphore>
    int signal() {
    80003700:	00048513          	mv	a0,s1
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	67c080e7          	jalr	1660(ra) # 80001d80 <_ZdlPv>
    8000370c:	01813083          	ld	ra,24(sp)
    80003710:	01013403          	ld	s0,16(sp)
    80003714:	00813483          	ld	s1,8(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret

0000000080003720 <_ZN8Consumer3runEv>:
    void run() override {
    80003720:	fd010113          	addi	sp,sp,-48
    80003724:	02113423          	sd	ra,40(sp)
    80003728:	02813023          	sd	s0,32(sp)
    8000372c:	00913c23          	sd	s1,24(sp)
    80003730:	01213823          	sd	s2,16(sp)
    80003734:	01313423          	sd	s3,8(sp)
    80003738:	03010413          	addi	s0,sp,48
    8000373c:	00050913          	mv	s2,a0
        int i = 0;
    80003740:	00000993          	li	s3,0
    80003744:	0100006f          	j	80003754 <_ZN8Consumer3runEv+0x34>

    80003748:	00a00513          	li	a0,10
    8000374c:	00005097          	auipc	ra,0x5
    80003750:	b90080e7          	jalr	-1136(ra) # 800082dc <__putc>
        while (!threadEnd) {
    80003754:	00008797          	auipc	a5,0x8
    80003758:	2ac78793          	addi	a5,a5,684 # 8000ba00 <_ZL9threadEnd>
    8000375c:	0007a783          	lw	a5,0(a5)
    80003760:	0007879b          	sext.w	a5,a5
    80003764:	02079c63          	bnez	a5,8000379c <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    80003768:	02093783          	ld	a5,32(s2)
    8000376c:	0087b503          	ld	a0,8(a5)
    80003770:	00003097          	auipc	ra,0x3
    80003774:	854080e7          	jalr	-1964(ra) # 80005fc4 <_ZN9BufferCPP3getEv>
            i++;
    80003778:	0019849b          	addiw	s1,s3,1
    8000377c:	0004899b          	sext.w	s3,s1
    80003780:	0ff57513          	andi	a0,a0,255
    80003784:	00005097          	auipc	ra,0x5
    80003788:	b58080e7          	jalr	-1192(ra) # 800082dc <__putc>
            if (i % 80 == 0) {
    8000378c:	05000793          	li	a5,80
    80003790:	02f4e4bb          	remw	s1,s1,a5
    80003794:	fc0490e3          	bnez	s1,80003754 <_ZN8Consumer3runEv+0x34>
    80003798:	fb1ff06f          	j	80003748 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    8000379c:	02093783          	ld	a5,32(s2)
    800037a0:	0087b503          	ld	a0,8(a5)
    800037a4:	00003097          	auipc	ra,0x3
    800037a8:	8cc080e7          	jalr	-1844(ra) # 80006070 <_ZN9BufferCPP6getCntEv>
    800037ac:	02a05263          	blez	a0,800037d0 <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    800037b0:	02093783          	ld	a5,32(s2)
    800037b4:	0087b503          	ld	a0,8(a5)
    800037b8:	00003097          	auipc	ra,0x3
    800037bc:	80c080e7          	jalr	-2036(ra) # 80005fc4 <_ZN9BufferCPP3getEv>
    800037c0:	0ff57513          	andi	a0,a0,255
    800037c4:	00005097          	auipc	ra,0x5
    800037c8:	b18080e7          	jalr	-1256(ra) # 800082dc <__putc>
    800037cc:	fd1ff06f          	j	8000379c <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    800037d0:	02093783          	ld	a5,32(s2)
    800037d4:	0107b783          	ld	a5,16(a5)
    sem_t myHandle;
    800037d8:	0087b503          	ld	a0,8(a5)
    800037dc:	00050663          	beqz	a0,800037e8 <_ZN8Consumer3runEv+0xc8>
class PeriodicThread : public Thread {
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	0fc080e7          	jalr	252(ra) # 800018dc <_Z10sem_signalP10_semaphore>
    }
    800037e8:	02813083          	ld	ra,40(sp)
    800037ec:	02013403          	ld	s0,32(sp)
    800037f0:	01813483          	ld	s1,24(sp)
    800037f4:	01013903          	ld	s2,16(sp)
    800037f8:	00813983          	ld	s3,8(sp)
    800037fc:	03010113          	addi	sp,sp,48
    80003800:	00008067          	ret

0000000080003804 <_ZN6ThreadD1Ev>:
    virtual ~Thread() {}
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	00813023          	sd	s0,0(sp)
    80003810:	01010413          	addi	s0,sp,16
    80003814:	00006797          	auipc	a5,0x6
    80003818:	eac78793          	addi	a5,a5,-340 # 800096c0 <_ZTV6Thread+0x10>
    8000381c:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	ebc080e7          	jalr	-324(ra) # 800016dc <_Z11thread_exitv>
        debug_print((uint64)this);
    80003828:	00813083          	ld	ra,8(sp)
    8000382c:	00013403          	ld	s0,0(sp)
    80003830:	01010113          	addi	sp,sp,16
    80003834:	00008067          	ret

0000000080003838 <_ZN6ThreadD0Ev>:
    virtual ~Thread() {}
    80003838:	fe010113          	addi	sp,sp,-32
    8000383c:	00113c23          	sd	ra,24(sp)
    80003840:	00813823          	sd	s0,16(sp)
    80003844:	00913423          	sd	s1,8(sp)
    80003848:	02010413          	addi	s0,sp,32
    8000384c:	00050493          	mv	s1,a0
    80003850:	00006797          	auipc	a5,0x6
    80003854:	e7078793          	addi	a5,a5,-400 # 800096c0 <_ZTV6Thread+0x10>
    80003858:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	e80080e7          	jalr	-384(ra) # 800016dc <_Z11thread_exitv>
        debug_print((uint64)this);
    80003864:	00048513          	mv	a0,s1
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	518080e7          	jalr	1304(ra) # 80001d80 <_ZdlPv>
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00813483          	ld	s1,8(sp)
    8000387c:	02010113          	addi	sp,sp,32
    80003880:	00008067          	ret

0000000080003884 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003884:	ff010113          	addi	sp,sp,-16
    80003888:	00113423          	sd	ra,8(sp)
    8000388c:	00813023          	sd	s0,0(sp)
    80003890:	01010413          	addi	s0,sp,16
    virtual ~Thread() {}
    80003894:	00006797          	auipc	a5,0x6
    80003898:	e2c78793          	addi	a5,a5,-468 # 800096c0 <_ZTV6Thread+0x10>
    8000389c:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	e3c080e7          	jalr	-452(ra) # 800016dc <_Z11thread_exitv>
    800038a8:	00813083          	ld	ra,8(sp)
    800038ac:	00013403          	ld	s0,0(sp)
    800038b0:	01010113          	addi	sp,sp,16
    800038b4:	00008067          	ret

00000000800038b8 <_ZN8ConsumerD0Ev>:
    800038b8:	fe010113          	addi	sp,sp,-32
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	02010413          	addi	s0,sp,32
    800038cc:	00050493          	mv	s1,a0
    virtual ~Thread() {}
    800038d0:	00006797          	auipc	a5,0x6
    800038d4:	df078793          	addi	a5,a5,-528 # 800096c0 <_ZTV6Thread+0x10>
    800038d8:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	e00080e7          	jalr	-512(ra) # 800016dc <_Z11thread_exitv>
    800038e4:	00048513          	mv	a0,s1
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	498080e7          	jalr	1176(ra) # 80001d80 <_ZdlPv>
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	00813483          	ld	s1,8(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003904:	ff010113          	addi	sp,sp,-16
    80003908:	00113423          	sd	ra,8(sp)
    8000390c:	00813023          	sd	s0,0(sp)
    80003910:	01010413          	addi	s0,sp,16
    virtual ~Thread() {}
    80003914:	00006797          	auipc	a5,0x6
    80003918:	dac78793          	addi	a5,a5,-596 # 800096c0 <_ZTV6Thread+0x10>
    8000391c:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	dbc080e7          	jalr	-580(ra) # 800016dc <_Z11thread_exitv>
    80003928:	00813083          	ld	ra,8(sp)
    8000392c:	00013403          	ld	s0,0(sp)
    80003930:	01010113          	addi	sp,sp,16
    80003934:	00008067          	ret

0000000080003938 <_ZN16ProducerKeyboradD0Ev>:
    80003938:	fe010113          	addi	sp,sp,-32
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	00813823          	sd	s0,16(sp)
    80003944:	00913423          	sd	s1,8(sp)
    80003948:	02010413          	addi	s0,sp,32
    8000394c:	00050493          	mv	s1,a0
    virtual ~Thread() {}
    80003950:	00006797          	auipc	a5,0x6
    80003954:	d7078793          	addi	a5,a5,-656 # 800096c0 <_ZTV6Thread+0x10>
    80003958:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	d80080e7          	jalr	-640(ra) # 800016dc <_Z11thread_exitv>
    80003964:	00048513          	mv	a0,s1
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	418080e7          	jalr	1048(ra) # 80001d80 <_ZdlPv>
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00813483          	ld	s1,8(sp)
    8000397c:	02010113          	addi	sp,sp,32
    80003980:	00008067          	ret

0000000080003984 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00113423          	sd	ra,8(sp)
    8000398c:	00813023          	sd	s0,0(sp)
    80003990:	01010413          	addi	s0,sp,16
    virtual ~Thread() {}
    80003994:	00006797          	auipc	a5,0x6
    80003998:	d2c78793          	addi	a5,a5,-724 # 800096c0 <_ZTV6Thread+0x10>
    8000399c:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	d3c080e7          	jalr	-708(ra) # 800016dc <_Z11thread_exitv>
    800039a8:	00813083          	ld	ra,8(sp)
    800039ac:	00013403          	ld	s0,0(sp)
    800039b0:	01010113          	addi	sp,sp,16
    800039b4:	00008067          	ret

00000000800039b8 <_ZN8ProducerD0Ev>:
    800039b8:	fe010113          	addi	sp,sp,-32
    800039bc:	00113c23          	sd	ra,24(sp)
    800039c0:	00813823          	sd	s0,16(sp)
    800039c4:	00913423          	sd	s1,8(sp)
    800039c8:	02010413          	addi	s0,sp,32
    800039cc:	00050493          	mv	s1,a0
    virtual ~Thread() {}
    800039d0:	00006797          	auipc	a5,0x6
    800039d4:	cf078793          	addi	a5,a5,-784 # 800096c0 <_ZTV6Thread+0x10>
    800039d8:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	d00080e7          	jalr	-768(ra) # 800016dc <_Z11thread_exitv>
    800039e4:	00048513          	mv	a0,s1
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	398080e7          	jalr	920(ra) # 80001d80 <_ZdlPv>
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	02010113          	addi	sp,sp,32
    80003a00:	00008067          	ret

0000000080003a04 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	02010413          	addi	s0,sp,32
    80003a18:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	f48080e7          	jalr	-184(ra) # 80001964 <_Z4getcv>
    80003a24:	0005059b          	sext.w	a1,a0
    80003a28:	01b00793          	li	a5,27
    80003a2c:	00f58c63          	beq	a1,a5,80003a44 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003a30:	0204b783          	ld	a5,32(s1)
    80003a34:	0087b503          	ld	a0,8(a5)
    80003a38:	00002097          	auipc	ra,0x2
    80003a3c:	4dc080e7          	jalr	1244(ra) # 80005f14 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003a40:	fddff06f          	j	80003a1c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003a44:	00100793          	li	a5,1
    80003a48:	00008717          	auipc	a4,0x8
    80003a4c:	faf72c23          	sw	a5,-72(a4) # 8000ba00 <_ZL9threadEnd>
        td->buffer->put('!');
    80003a50:	0204b783          	ld	a5,32(s1)
    80003a54:	02100593          	li	a1,33
    80003a58:	0087b503          	ld	a0,8(a5)
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	4b8080e7          	jalr	1208(ra) # 80005f14 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003a64:	0204b783          	ld	a5,32(s1)
    80003a68:	0107b783          	ld	a5,16(a5)
    sem_t myHandle;
    80003a6c:	0087b503          	ld	a0,8(a5)
    80003a70:	00050663          	beqz	a0,80003a7c <_ZN16ProducerKeyborad3runEv+0x78>
class PeriodicThread : public Thread {
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	e68080e7          	jalr	-408(ra) # 800018dc <_Z10sem_signalP10_semaphore>
    }
    80003a7c:	01813083          	ld	ra,24(sp)
    80003a80:	01013403          	ld	s0,16(sp)
    80003a84:	00813483          	ld	s1,8(sp)
    80003a88:	02010113          	addi	sp,sp,32
    80003a8c:	00008067          	ret

0000000080003a90 <_ZN8Producer3runEv>:
    void run() override {
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00113c23          	sd	ra,24(sp)
    80003a98:	00813823          	sd	s0,16(sp)
    80003a9c:	00913423          	sd	s1,8(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80003aa8:	00008797          	auipc	a5,0x8
    80003aac:	f5878793          	addi	a5,a5,-168 # 8000ba00 <_ZL9threadEnd>
    80003ab0:	0007a783          	lw	a5,0(a5)
    80003ab4:	0007879b          	sext.w	a5,a5
    80003ab8:	02079063          	bnez	a5,80003ad8 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    80003abc:	0204b783          	ld	a5,32(s1)
    80003ac0:	0007a583          	lw	a1,0(a5)
    80003ac4:	0305859b          	addiw	a1,a1,48
    80003ac8:	0087b503          	ld	a0,8(a5)
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	448080e7          	jalr	1096(ra) # 80005f14 <_ZN9BufferCPP3putEi>
        body(arg);
    80003ad4:	fd5ff06f          	j	80003aa8 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80003ad8:	0204b783          	ld	a5,32(s1)
    80003adc:	0107b783          	ld	a5,16(a5)
    sem_t myHandle;
    80003ae0:	0087b503          	ld	a0,8(a5)
    80003ae4:	00050663          	beqz	a0,80003af0 <_ZN8Producer3runEv+0x60>
class PeriodicThread : public Thread {
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	df4080e7          	jalr	-524(ra) # 800018dc <_Z10sem_signalP10_semaphore>
    }
    80003af0:	01813083          	ld	ra,24(sp)
    80003af4:	01013403          	ld	s0,16(sp)
    80003af8:	00813483          	ld	s1,8(sp)
    80003afc:	02010113          	addi	sp,sp,32
    80003b00:	00008067          	ret

0000000080003b04 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003b04:	fe010113          	addi	sp,sp,-32
    80003b08:	00113c23          	sd	ra,24(sp)
    80003b0c:	00813823          	sd	s0,16(sp)
    80003b10:	00913423          	sd	s1,8(sp)
    80003b14:	01213023          	sd	s2,0(sp)
    80003b18:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80003b1c:	00006517          	auipc	a0,0x6
    80003b20:	db450513          	addi	a0,a0,-588 # 800098d0 <_ZTV8Consumer+0x188>
    80003b24:	00002097          	auipc	ra,0x2
    80003b28:	a4c080e7          	jalr	-1460(ra) # 80005570 <_Z11printStringPKc>
    int test = getc() - '0';
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	e38080e7          	jalr	-456(ra) # 80001964 <_Z4getcv>
    80003b34:	00050913          	mv	s2,a0
    80003b38:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	e28080e7          	jalr	-472(ra) # 80001964 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80003b44:	fcb9091b          	addiw	s2,s2,-53
    80003b48:	00100793          	li	a5,1
    80003b4c:	0327f463          	bgeu	a5,s2,80003b74 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003b50:	00700793          	li	a5,7
    80003b54:	0e97e263          	bltu	a5,s1,80003c38 <_Z8userMainv+0x134>
    80003b58:	00249493          	slli	s1,s1,0x2
    80003b5c:	00006717          	auipc	a4,0x6
    80003b60:	d5070713          	addi	a4,a4,-688 # 800098ac <_ZTV8Consumer+0x164>
    80003b64:	00e484b3          	add	s1,s1,a4
    80003b68:	0004a783          	lw	a5,0(s1)
    80003b6c:	00e787b3          	add	a5,a5,a4
    80003b70:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80003b74:	00006517          	auipc	a0,0x6
    80003b78:	d7c50513          	addi	a0,a0,-644 # 800098f0 <_ZTV8Consumer+0x1a8>
    80003b7c:	00002097          	auipc	ra,0x2
    80003b80:	9f4080e7          	jalr	-1548(ra) # 80005570 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003b84:	01813083          	ld	ra,24(sp)
    80003b88:	01013403          	ld	s0,16(sp)
    80003b8c:	00813483          	ld	s1,8(sp)
    80003b90:	00013903          	ld	s2,0(sp)
    80003b94:	02010113          	addi	sp,sp,32
    80003b98:	00008067          	ret
            Threads_C_API_test();
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	e28080e7          	jalr	-472(ra) # 800049c4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003ba4:	00006517          	auipc	a0,0x6
    80003ba8:	d7c50513          	addi	a0,a0,-644 # 80009920 <_ZTV8Consumer+0x1d8>
    80003bac:	00002097          	auipc	ra,0x2
    80003bb0:	9c4080e7          	jalr	-1596(ra) # 80005570 <_Z11printStringPKc>
            break;
    80003bb4:	fd1ff06f          	j	80003b84 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	564080e7          	jalr	1380(ra) # 8000411c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003bc0:	00006517          	auipc	a0,0x6
    80003bc4:	da050513          	addi	a0,a0,-608 # 80009960 <_ZTV8Consumer+0x218>
    80003bc8:	00002097          	auipc	ra,0x2
    80003bcc:	9a8080e7          	jalr	-1624(ra) # 80005570 <_Z11printStringPKc>
            break;
    80003bd0:	fb5ff06f          	j	80003b84 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80003bd4:	00002097          	auipc	ra,0x2
    80003bd8:	ea8080e7          	jalr	-344(ra) # 80005a7c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80003bdc:	00006517          	auipc	a0,0x6
    80003be0:	dc450513          	addi	a0,a0,-572 # 800099a0 <_ZTV8Consumer+0x258>
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	98c080e7          	jalr	-1652(ra) # 80005570 <_Z11printStringPKc>
            break;
    80003bec:	f99ff06f          	j	80003b84 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	164080e7          	jalr	356(ra) # 80004d54 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80003bf8:	00006517          	auipc	a0,0x6
    80003bfc:	df850513          	addi	a0,a0,-520 # 800099f0 <_ZTV8Consumer+0x2a8>
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	970080e7          	jalr	-1680(ra) # 80005570 <_Z11printStringPKc>
            break;
    80003c08:	f7dff06f          	j	80003b84 <_Z8userMainv+0x80>
            System_Mode_test();
    80003c0c:	fffff097          	auipc	ra,0xfffff
    80003c10:	0ec080e7          	jalr	236(ra) # 80002cf8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003c14:	00006517          	auipc	a0,0x6
    80003c18:	e3450513          	addi	a0,a0,-460 # 80009a48 <_ZTV8Consumer+0x300>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	954080e7          	jalr	-1708(ra) # 80005570 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003c24:	00006517          	auipc	a0,0x6
    80003c28:	e4450513          	addi	a0,a0,-444 # 80009a68 <_ZTV8Consumer+0x320>
    80003c2c:	00002097          	auipc	ra,0x2
    80003c30:	944080e7          	jalr	-1724(ra) # 80005570 <_Z11printStringPKc>
            break;
    80003c34:	f51ff06f          	j	80003b84 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80003c38:	00006517          	auipc	a0,0x6
    80003c3c:	e8850513          	addi	a0,a0,-376 # 80009ac0 <_ZTV8Consumer+0x378>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	930080e7          	jalr	-1744(ra) # 80005570 <_Z11printStringPKc>
    80003c48:	f3dff06f          	j	80003b84 <_Z8userMainv+0x80>

0000000080003c4c <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80003c4c:	00100793          	li	a5,1
    80003c50:	06a7f863          	bgeu	a5,a0,80003cc0 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80003c54:	fe010113          	addi	sp,sp,-32
    80003c58:	00113c23          	sd	ra,24(sp)
    80003c5c:	00813823          	sd	s0,16(sp)
    80003c60:	00913423          	sd	s1,8(sp)
    80003c64:	01213023          	sd	s2,0(sp)
    80003c68:	02010413          	addi	s0,sp,32
    80003c6c:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80003c70:	00a00793          	li	a5,10
    80003c74:	02f577b3          	remu	a5,a0,a5
    80003c78:	02078e63          	beqz	a5,80003cb4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003c7c:	fff48513          	addi	a0,s1,-1
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	fcc080e7          	jalr	-52(ra) # 80003c4c <_ZL9fibonaccim>
    80003c88:	00050913          	mv	s2,a0
    80003c8c:	ffe48513          	addi	a0,s1,-2
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	fbc080e7          	jalr	-68(ra) # 80003c4c <_ZL9fibonaccim>
    80003c98:	00a90533          	add	a0,s2,a0
}
    80003c9c:	01813083          	ld	ra,24(sp)
    80003ca0:	01013403          	ld	s0,16(sp)
    80003ca4:	00813483          	ld	s1,8(sp)
    80003ca8:	00013903          	ld	s2,0(sp)
    80003cac:	02010113          	addi	sp,sp,32
    80003cb0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	a88080e7          	jalr	-1400(ra) # 8000173c <_Z15thread_dispatchv>
    80003cbc:	fc1ff06f          	j	80003c7c <_ZL9fibonaccim+0x30>
}
    80003cc0:	00008067          	ret

0000000080003cc4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003cc4:	fe010113          	addi	sp,sp,-32
    80003cc8:	00113c23          	sd	ra,24(sp)
    80003ccc:	00813823          	sd	s0,16(sp)
    80003cd0:	00913423          	sd	s1,8(sp)
    80003cd4:	01213023          	sd	s2,0(sp)
    80003cd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003cdc:	00000913          	li	s2,0
    80003ce0:	0300006f          	j	80003d10 <_ZN7WorkerA11workerBodyAEPv+0x4c>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003ce4:	00178793          	addi	a5,a5,1
    80003ce8:	01d00713          	li	a4,29
    80003cec:	fef77ce3          	bgeu	a4,a5,80003ce4 <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	a4c080e7          	jalr	-1460(ra) # 8000173c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003cf8:	00148493          	addi	s1,s1,1
    80003cfc:	00900793          	li	a5,9
    80003d00:	0097e663          	bltu	a5,s1,80003d0c <_ZN7WorkerA11workerBodyAEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003d04:	00000793          	li	a5,0
    80003d08:	fe1ff06f          	j	80003ce8 <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80003d0c:	00190913          	addi	s2,s2,1
    80003d10:	00900793          	li	a5,9
    80003d14:	0527e063          	bltu	a5,s2,80003d54 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80003d18:	00006517          	auipc	a0,0x6
    80003d1c:	91850513          	addi	a0,a0,-1768 # 80009630 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	850080e7          	jalr	-1968(ra) # 80005570 <_Z11printStringPKc>
    80003d28:	00000613          	li	a2,0
    80003d2c:	00a00593          	li	a1,10
    80003d30:	0009051b          	sext.w	a0,s2
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	9e8080e7          	jalr	-1560(ra) # 8000571c <_Z8printIntiii>
    80003d3c:	00005517          	auipc	a0,0x5
    80003d40:	5e450513          	addi	a0,a0,1508 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	82c080e7          	jalr	-2004(ra) # 80005570 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003d4c:	00000493          	li	s1,0
    80003d50:	fadff06f          	j	80003cfc <_ZN7WorkerA11workerBodyAEPv+0x38>
        }
    }
    printString("A finished!\n");
    80003d54:	00006517          	auipc	a0,0x6
    80003d58:	8b450513          	addi	a0,a0,-1868 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80003d5c:	00002097          	auipc	ra,0x2
    80003d60:	814080e7          	jalr	-2028(ra) # 80005570 <_Z11printStringPKc>
    finishedA = true;
    80003d64:	00100793          	li	a5,1
    80003d68:	00008717          	auipc	a4,0x8
    80003d6c:	caf705a3          	sb	a5,-853(a4) # 8000ba13 <_ZL9finishedA>
}
    80003d70:	01813083          	ld	ra,24(sp)
    80003d74:	01013403          	ld	s0,16(sp)
    80003d78:	00813483          	ld	s1,8(sp)
    80003d7c:	00013903          	ld	s2,0(sp)
    80003d80:	02010113          	addi	sp,sp,32
    80003d84:	00008067          	ret

0000000080003d88 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003d88:	fe010113          	addi	sp,sp,-32
    80003d8c:	00113c23          	sd	ra,24(sp)
    80003d90:	00813823          	sd	s0,16(sp)
    80003d94:	00913423          	sd	s1,8(sp)
    80003d98:	01213023          	sd	s2,0(sp)
    80003d9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003da0:	00000913          	li	s2,0
    80003da4:	0300006f          	j	80003dd4 <_ZN7WorkerB11workerBodyBEPv+0x4c>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003da8:	00178793          	addi	a5,a5,1
    80003dac:	01d00713          	li	a4,29
    80003db0:	fef77ce3          	bgeu	a4,a5,80003da8 <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    80003db4:	ffffe097          	auipc	ra,0xffffe
    80003db8:	988080e7          	jalr	-1656(ra) # 8000173c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003dbc:	00148493          	addi	s1,s1,1
    80003dc0:	00900793          	li	a5,9
    80003dc4:	0097e663          	bltu	a5,s1,80003dd0 <_ZN7WorkerB11workerBodyBEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003dc8:	00000793          	li	a5,0
    80003dcc:	fe1ff06f          	j	80003dac <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80003dd0:	00190913          	addi	s2,s2,1
    80003dd4:	00f00793          	li	a5,15
    80003dd8:	0527e063          	bltu	a5,s2,80003e18 <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80003ddc:	00006517          	auipc	a0,0x6
    80003de0:	83c50513          	addi	a0,a0,-1988 # 80009618 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80003de4:	00001097          	auipc	ra,0x1
    80003de8:	78c080e7          	jalr	1932(ra) # 80005570 <_Z11printStringPKc>
    80003dec:	00000613          	li	a2,0
    80003df0:	00a00593          	li	a1,10
    80003df4:	0009051b          	sext.w	a0,s2
    80003df8:	00002097          	auipc	ra,0x2
    80003dfc:	924080e7          	jalr	-1756(ra) # 8000571c <_Z8printIntiii>
    80003e00:	00005517          	auipc	a0,0x5
    80003e04:	52050513          	addi	a0,a0,1312 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003e08:	00001097          	auipc	ra,0x1
    80003e0c:	768080e7          	jalr	1896(ra) # 80005570 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003e10:	00000493          	li	s1,0
    80003e14:	fadff06f          	j	80003dc0 <_ZN7WorkerB11workerBodyBEPv+0x38>
        }
    }
    printString("B finished!\n");
    80003e18:	00006517          	auipc	a0,0x6
    80003e1c:	80850513          	addi	a0,a0,-2040 # 80009620 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	750080e7          	jalr	1872(ra) # 80005570 <_Z11printStringPKc>
    finishedB = true;
    80003e28:	00100793          	li	a5,1
    80003e2c:	00008717          	auipc	a4,0x8
    80003e30:	bef70323          	sb	a5,-1050(a4) # 8000ba12 <_ZL9finishedB>
    thread_dispatch();
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	908080e7          	jalr	-1784(ra) # 8000173c <_Z15thread_dispatchv>
}
    80003e3c:	01813083          	ld	ra,24(sp)
    80003e40:	01013403          	ld	s0,16(sp)
    80003e44:	00813483          	ld	s1,8(sp)
    80003e48:	00013903          	ld	s2,0(sp)
    80003e4c:	02010113          	addi	sp,sp,32
    80003e50:	00008067          	ret

0000000080003e54 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003e54:	fe010113          	addi	sp,sp,-32
    80003e58:	00113c23          	sd	ra,24(sp)
    80003e5c:	00813823          	sd	s0,16(sp)
    80003e60:	00913423          	sd	s1,8(sp)
    80003e64:	01213023          	sd	s2,0(sp)
    80003e68:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003e6c:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80003e70:	00200793          	li	a5,2
    80003e74:	0497e263          	bltu	a5,s1,80003eb8 <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80003e78:	00005517          	auipc	a0,0x5
    80003e7c:	76050513          	addi	a0,a0,1888 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80003e80:	00001097          	auipc	ra,0x1
    80003e84:	6f0080e7          	jalr	1776(ra) # 80005570 <_Z11printStringPKc>
    80003e88:	00000613          	li	a2,0
    80003e8c:	00a00593          	li	a1,10
    80003e90:	00048513          	mv	a0,s1
    80003e94:	00002097          	auipc	ra,0x2
    80003e98:	888080e7          	jalr	-1912(ra) # 8000571c <_Z8printIntiii>
    80003e9c:	00005517          	auipc	a0,0x5
    80003ea0:	48450513          	addi	a0,a0,1156 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	6cc080e7          	jalr	1740(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003eac:	0014849b          	addiw	s1,s1,1
    80003eb0:	0ff4f493          	andi	s1,s1,255
    80003eb4:	fbdff06f          	j	80003e70 <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    80003eb8:	00005517          	auipc	a0,0x5
    80003ebc:	72850513          	addi	a0,a0,1832 # 800095e0 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80003ec0:	00001097          	auipc	ra,0x1
    80003ec4:	6b0080e7          	jalr	1712(ra) # 80005570 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003ec8:	00700313          	li	t1,7
    thread_dispatch();
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	870080e7          	jalr	-1936(ra) # 8000173c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003ed4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003ed8:	00005517          	auipc	a0,0x5
    80003edc:	71850513          	addi	a0,a0,1816 # 800095f0 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	690080e7          	jalr	1680(ra) # 80005570 <_Z11printStringPKc>
    80003ee8:	00000613          	li	a2,0
    80003eec:	00a00593          	li	a1,10
    80003ef0:	0009051b          	sext.w	a0,s2
    80003ef4:	00002097          	auipc	ra,0x2
    80003ef8:	828080e7          	jalr	-2008(ra) # 8000571c <_Z8printIntiii>
    80003efc:	00005517          	auipc	a0,0x5
    80003f00:	42450513          	addi	a0,a0,1060 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	66c080e7          	jalr	1644(ra) # 80005570 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003f0c:	00c00513          	li	a0,12
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	d3c080e7          	jalr	-708(ra) # 80003c4c <_ZL9fibonaccim>
    80003f18:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003f1c:	00005517          	auipc	a0,0x5
    80003f20:	6dc50513          	addi	a0,a0,1756 # 800095f8 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	64c080e7          	jalr	1612(ra) # 80005570 <_Z11printStringPKc>
    80003f2c:	00000613          	li	a2,0
    80003f30:	00a00593          	li	a1,10
    80003f34:	0009051b          	sext.w	a0,s2
    80003f38:	00001097          	auipc	ra,0x1
    80003f3c:	7e4080e7          	jalr	2020(ra) # 8000571c <_Z8printIntiii>
    80003f40:	00005517          	auipc	a0,0x5
    80003f44:	3e050513          	addi	a0,a0,992 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	628080e7          	jalr	1576(ra) # 80005570 <_Z11printStringPKc>

    for (; i < 6; i++) {
    80003f50:	00500793          	li	a5,5
    80003f54:	0497e263          	bltu	a5,s1,80003f98 <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	68050513          	addi	a0,a0,1664 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80003f60:	00001097          	auipc	ra,0x1
    80003f64:	610080e7          	jalr	1552(ra) # 80005570 <_Z11printStringPKc>
    80003f68:	00000613          	li	a2,0
    80003f6c:	00a00593          	li	a1,10
    80003f70:	00048513          	mv	a0,s1
    80003f74:	00001097          	auipc	ra,0x1
    80003f78:	7a8080e7          	jalr	1960(ra) # 8000571c <_Z8printIntiii>
    80003f7c:	00005517          	auipc	a0,0x5
    80003f80:	3a450513          	addi	a0,a0,932 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003f84:	00001097          	auipc	ra,0x1
    80003f88:	5ec080e7          	jalr	1516(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f8c:	0014849b          	addiw	s1,s1,1
    80003f90:	0ff4f493          	andi	s1,s1,255
    80003f94:	fbdff06f          	j	80003f50 <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    80003f98:	00005517          	auipc	a0,0x5
    80003f9c:	67050513          	addi	a0,a0,1648 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80003fa0:	00001097          	auipc	ra,0x1
    80003fa4:	5d0080e7          	jalr	1488(ra) # 80005570 <_Z11printStringPKc>
    finishedC = true;
    80003fa8:	00100793          	li	a5,1
    80003fac:	00008717          	auipc	a4,0x8
    80003fb0:	a6f702a3          	sb	a5,-1435(a4) # 8000ba11 <_ZL9finishedC>
    thread_dispatch();
    80003fb4:	ffffd097          	auipc	ra,0xffffd
    80003fb8:	788080e7          	jalr	1928(ra) # 8000173c <_Z15thread_dispatchv>
}
    80003fbc:	01813083          	ld	ra,24(sp)
    80003fc0:	01013403          	ld	s0,16(sp)
    80003fc4:	00813483          	ld	s1,8(sp)
    80003fc8:	00013903          	ld	s2,0(sp)
    80003fcc:	02010113          	addi	sp,sp,32
    80003fd0:	00008067          	ret

0000000080003fd4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003fd4:	fe010113          	addi	sp,sp,-32
    80003fd8:	00113c23          	sd	ra,24(sp)
    80003fdc:	00813823          	sd	s0,16(sp)
    80003fe0:	00913423          	sd	s1,8(sp)
    80003fe4:	01213023          	sd	s2,0(sp)
    80003fe8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003fec:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80003ff0:	00c00793          	li	a5,12
    80003ff4:	0497e263          	bltu	a5,s1,80004038 <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80003ff8:	00005517          	auipc	a0,0x5
    80003ffc:	5a850513          	addi	a0,a0,1448 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80004000:	00001097          	auipc	ra,0x1
    80004004:	570080e7          	jalr	1392(ra) # 80005570 <_Z11printStringPKc>
    80004008:	00000613          	li	a2,0
    8000400c:	00a00593          	li	a1,10
    80004010:	00048513          	mv	a0,s1
    80004014:	00001097          	auipc	ra,0x1
    80004018:	708080e7          	jalr	1800(ra) # 8000571c <_Z8printIntiii>
    8000401c:	00005517          	auipc	a0,0x5
    80004020:	30450513          	addi	a0,a0,772 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004024:	00001097          	auipc	ra,0x1
    80004028:	54c080e7          	jalr	1356(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000402c:	0014849b          	addiw	s1,s1,1
    80004030:	0ff4f493          	andi	s1,s1,255
    80004034:	fbdff06f          	j	80003ff0 <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    80004038:	00005517          	auipc	a0,0x5
    8000403c:	57050513          	addi	a0,a0,1392 # 800095a8 <_ZZ24debug_print_internal_intmE6digits+0x330>
    80004040:	00001097          	auipc	ra,0x1
    80004044:	530080e7          	jalr	1328(ra) # 80005570 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004048:	00500313          	li	t1,5
    thread_dispatch();
    8000404c:	ffffd097          	auipc	ra,0xffffd
    80004050:	6f0080e7          	jalr	1776(ra) # 8000173c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004054:	01000513          	li	a0,16
    80004058:	00000097          	auipc	ra,0x0
    8000405c:	bf4080e7          	jalr	-1036(ra) # 80003c4c <_ZL9fibonaccim>
    80004060:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004064:	00005517          	auipc	a0,0x5
    80004068:	55450513          	addi	a0,a0,1364 # 800095b8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    8000406c:	00001097          	auipc	ra,0x1
    80004070:	504080e7          	jalr	1284(ra) # 80005570 <_Z11printStringPKc>
    80004074:	00000613          	li	a2,0
    80004078:	00a00593          	li	a1,10
    8000407c:	0009051b          	sext.w	a0,s2
    80004080:	00001097          	auipc	ra,0x1
    80004084:	69c080e7          	jalr	1692(ra) # 8000571c <_Z8printIntiii>
    80004088:	00005517          	auipc	a0,0x5
    8000408c:	29850513          	addi	a0,a0,664 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004090:	00001097          	auipc	ra,0x1
    80004094:	4e0080e7          	jalr	1248(ra) # 80005570 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80004098:	00f00793          	li	a5,15
    8000409c:	0497e263          	bltu	a5,s1,800040e0 <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    800040a0:	00005517          	auipc	a0,0x5
    800040a4:	50050513          	addi	a0,a0,1280 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	4c8080e7          	jalr	1224(ra) # 80005570 <_Z11printStringPKc>
    800040b0:	00000613          	li	a2,0
    800040b4:	00a00593          	li	a1,10
    800040b8:	00048513          	mv	a0,s1
    800040bc:	00001097          	auipc	ra,0x1
    800040c0:	660080e7          	jalr	1632(ra) # 8000571c <_Z8printIntiii>
    800040c4:	00005517          	auipc	a0,0x5
    800040c8:	25c50513          	addi	a0,a0,604 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800040cc:	00001097          	auipc	ra,0x1
    800040d0:	4a4080e7          	jalr	1188(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800040d4:	0014849b          	addiw	s1,s1,1
    800040d8:	0ff4f493          	andi	s1,s1,255
    800040dc:	fbdff06f          	j	80004098 <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    800040e0:	00005517          	auipc	a0,0x5
    800040e4:	4e850513          	addi	a0,a0,1256 # 800095c8 <_ZZ24debug_print_internal_intmE6digits+0x350>
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	488080e7          	jalr	1160(ra) # 80005570 <_Z11printStringPKc>
    finishedD = true;
    800040f0:	00100793          	li	a5,1
    800040f4:	00008717          	auipc	a4,0x8
    800040f8:	90f70e23          	sb	a5,-1764(a4) # 8000ba10 <_ZL9finishedD>
    thread_dispatch();
    800040fc:	ffffd097          	auipc	ra,0xffffd
    80004100:	640080e7          	jalr	1600(ra) # 8000173c <_Z15thread_dispatchv>
}
    80004104:	01813083          	ld	ra,24(sp)
    80004108:	01013403          	ld	s0,16(sp)
    8000410c:	00813483          	ld	s1,8(sp)
    80004110:	00013903          	ld	s2,0(sp)
    80004114:	02010113          	addi	sp,sp,32
    80004118:	00008067          	ret

000000008000411c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000411c:	fc010113          	addi	sp,sp,-64
    80004120:	02113c23          	sd	ra,56(sp)
    80004124:	02813823          	sd	s0,48(sp)
    80004128:	02913423          	sd	s1,40(sp)
    8000412c:	03213023          	sd	s2,32(sp)
    80004130:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004134:	02000513          	li	a0,32
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	bc8080e7          	jalr	-1080(ra) # 80001d00 <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004140:	00053423          	sd	zero,8(a0)
    80004144:	00053823          	sd	zero,16(a0)
    80004148:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    8000414c:	00006797          	auipc	a5,0x6
    80004150:	9ac78793          	addi	a5,a5,-1620 # 80009af8 <_ZTV7WorkerA+0x10>
    80004154:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    80004158:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000415c:	00005517          	auipc	a0,0x5
    80004160:	4dc50513          	addi	a0,a0,1244 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    80004164:	00001097          	auipc	ra,0x1
    80004168:	40c080e7          	jalr	1036(ra) # 80005570 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000416c:	02000513          	li	a0,32
    80004170:	ffffe097          	auipc	ra,0xffffe
    80004174:	b90080e7          	jalr	-1136(ra) # 80001d00 <_Znwm>
    80004178:	00053423          	sd	zero,8(a0)
    8000417c:	00053823          	sd	zero,16(a0)
    80004180:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    80004184:	00006797          	auipc	a5,0x6
    80004188:	99c78793          	addi	a5,a5,-1636 # 80009b20 <_ZTV7WorkerB+0x10>
    8000418c:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80004190:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80004194:	00005517          	auipc	a0,0x5
    80004198:	4bc50513          	addi	a0,a0,1212 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	3d4080e7          	jalr	980(ra) # 80005570 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800041a4:	02000513          	li	a0,32
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	b58080e7          	jalr	-1192(ra) # 80001d00 <_Znwm>
    800041b0:	00053423          	sd	zero,8(a0)
    800041b4:	00053823          	sd	zero,16(a0)
    800041b8:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    800041bc:	00006797          	auipc	a5,0x6
    800041c0:	98c78793          	addi	a5,a5,-1652 # 80009b48 <_ZTV7WorkerC+0x10>
    800041c4:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    800041c8:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800041cc:	00005517          	auipc	a0,0x5
    800041d0:	49c50513          	addi	a0,a0,1180 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    800041d4:	00001097          	auipc	ra,0x1
    800041d8:	39c080e7          	jalr	924(ra) # 80005570 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800041dc:	02000513          	li	a0,32
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	b20080e7          	jalr	-1248(ra) # 80001d00 <_Znwm>
    800041e8:	00053423          	sd	zero,8(a0)
    800041ec:	00053823          	sd	zero,16(a0)
    800041f0:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    800041f4:	00006797          	auipc	a5,0x6
    800041f8:	97c78793          	addi	a5,a5,-1668 # 80009b70 <_ZTV7WorkerD+0x10>
    800041fc:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    80004200:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80004204:	00005517          	auipc	a0,0x5
    80004208:	47c50513          	addi	a0,a0,1148 # 80009680 <_ZZ24debug_print_internal_intmE6digits+0x408>
    8000420c:	00001097          	auipc	ra,0x1
    80004210:	364080e7          	jalr	868(ra) # 80005570 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004214:	00000493          	li	s1,0
    80004218:	00c0006f          	j	80004224 <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    8000421c:	00093423          	sd	zero,8(s2)
    80004220:	0014849b          	addiw	s1,s1,1
    80004224:	00300793          	li	a5,3
    80004228:	0897c463          	blt	a5,s1,800042b0 <_Z20Threads_CPP_API_testv+0x194>
        threads[i]->start();
    8000422c:	00349793          	slli	a5,s1,0x3
    80004230:	fe040713          	addi	a4,s0,-32
    80004234:	00f707b3          	add	a5,a4,a5
    80004238:	fe07b903          	ld	s2,-32(a5)
        debug_print("CPP API: Starting thread\n");
    8000423c:	00005517          	auipc	a0,0x5
    80004240:	61c50513          	addi	a0,a0,1564 # 80009858 <_ZTV8Consumer+0x110>
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	c2c080e7          	jalr	-980(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    8000424c:	00005517          	auipc	a0,0x5
    80004250:	62c50513          	addi	a0,a0,1580 # 80009878 <_ZTV8Consumer+0x130>
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	c1c080e7          	jalr	-996(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print((uint64)this);
    8000425c:	00090513          	mv	a0,s2
    80004260:	ffffe097          	auipc	ra,0xffffe
    80004264:	d58080e7          	jalr	-680(ra) # 80001fb8 <_Z11debug_printm>
        debug_print("\n");
    80004268:	00005517          	auipc	a0,0x5
    8000426c:	0b850513          	addi	a0,a0,184 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	c00080e7          	jalr	-1024(ra) # 80001e70 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80004278:	00090613          	mv	a2,s2
    8000427c:	ffffd597          	auipc	a1,0xffffd
    80004280:	01858593          	addi	a1,a1,24 # 80001294 <_ZN6Thread9body_execEPv>
    80004284:	00890513          	addi	a0,s2,8
    80004288:	ffffd097          	auipc	ra,0xffffd
    8000428c:	404080e7          	jalr	1028(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    80004290:	f80516e3          	bnez	a0,8000421c <_Z20Threads_CPP_API_testv+0x100>
        debug_print("CPP API: Thread started\n");
    80004294:	00005517          	auipc	a0,0x5
    80004298:	5fc50513          	addi	a0,a0,1532 # 80009890 <_ZTV8Consumer+0x148>
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	bd4080e7          	jalr	-1068(ra) # 80001e70 <_Z11debug_printPKc>
        return 0;
    800042a4:	f7dff06f          	j	80004220 <_Z20Threads_CPP_API_testv+0x104>
        thread_dispatch();
    800042a8:	ffffd097          	auipc	ra,0xffffd
    800042ac:	494080e7          	jalr	1172(ra) # 8000173c <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800042b0:	00007797          	auipc	a5,0x7
    800042b4:	76378793          	addi	a5,a5,1891 # 8000ba13 <_ZL9finishedA>
    800042b8:	0007c783          	lbu	a5,0(a5)
    800042bc:	0ff7f793          	andi	a5,a5,255
    800042c0:	fe0784e3          	beqz	a5,800042a8 <_Z20Threads_CPP_API_testv+0x18c>
    800042c4:	00007797          	auipc	a5,0x7
    800042c8:	74e78793          	addi	a5,a5,1870 # 8000ba12 <_ZL9finishedB>
    800042cc:	0007c783          	lbu	a5,0(a5)
    800042d0:	0ff7f793          	andi	a5,a5,255
    800042d4:	fc078ae3          	beqz	a5,800042a8 <_Z20Threads_CPP_API_testv+0x18c>
    800042d8:	00007797          	auipc	a5,0x7
    800042dc:	73978793          	addi	a5,a5,1849 # 8000ba11 <_ZL9finishedC>
    800042e0:	0007c783          	lbu	a5,0(a5)
    800042e4:	0ff7f793          	andi	a5,a5,255
    800042e8:	fc0780e3          	beqz	a5,800042a8 <_Z20Threads_CPP_API_testv+0x18c>
    800042ec:	00007797          	auipc	a5,0x7
    800042f0:	72478793          	addi	a5,a5,1828 # 8000ba10 <_ZL9finishedD>
    800042f4:	0007c783          	lbu	a5,0(a5)
    800042f8:	0ff7f793          	andi	a5,a5,255
    800042fc:	fa0786e3          	beqz	a5,800042a8 <_Z20Threads_CPP_API_testv+0x18c>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    80004300:	fc040493          	addi	s1,s0,-64
    80004304:	0080006f          	j	8000430c <_Z20Threads_CPP_API_testv+0x1f0>
    80004308:	00848493          	addi	s1,s1,8
    8000430c:	fe040793          	addi	a5,s0,-32
    80004310:	00f48e63          	beq	s1,a5,8000432c <_Z20Threads_CPP_API_testv+0x210>
    80004314:	0004b503          	ld	a0,0(s1)
    80004318:	fe0508e3          	beqz	a0,80004308 <_Z20Threads_CPP_API_testv+0x1ec>
    8000431c:	00053783          	ld	a5,0(a0)
    80004320:	0087b783          	ld	a5,8(a5)
    80004324:	000780e7          	jalr	a5
    80004328:	fe1ff06f          	j	80004308 <_Z20Threads_CPP_API_testv+0x1ec>
}
    8000432c:	03813083          	ld	ra,56(sp)
    80004330:	03013403          	ld	s0,48(sp)
    80004334:	02813483          	ld	s1,40(sp)
    80004338:	02013903          	ld	s2,32(sp)
    8000433c:	04010113          	addi	sp,sp,64
    80004340:	00008067          	ret

0000000080004344 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004344:	ff010113          	addi	sp,sp,-16
    80004348:	00813423          	sd	s0,8(sp)
    8000434c:	01010413          	addi	s0,sp,16
    80004350:	00813403          	ld	s0,8(sp)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret

000000008000435c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000435c:	ff010113          	addi	sp,sp,-16
    80004360:	00813423          	sd	s0,8(sp)
    80004364:	01010413          	addi	s0,sp,16
    80004368:	00813403          	ld	s0,8(sp)
    8000436c:	01010113          	addi	sp,sp,16
    80004370:	00008067          	ret

0000000080004374 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004374:	ff010113          	addi	sp,sp,-16
    80004378:	00813423          	sd	s0,8(sp)
    8000437c:	01010413          	addi	s0,sp,16
    80004380:	00813403          	ld	s0,8(sp)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000438c:	ff010113          	addi	sp,sp,-16
    80004390:	00813423          	sd	s0,8(sp)
    80004394:	01010413          	addi	s0,sp,16
    80004398:	00813403          	ld	s0,8(sp)
    8000439c:	01010113          	addi	sp,sp,16
    800043a0:	00008067          	ret

00000000800043a4 <_ZN7WorkerAD0Ev>:
    800043a4:	ff010113          	addi	sp,sp,-16
    800043a8:	00113423          	sd	ra,8(sp)
    800043ac:	00813023          	sd	s0,0(sp)
    800043b0:	01010413          	addi	s0,sp,16
    800043b4:	ffffe097          	auipc	ra,0xffffe
    800043b8:	9cc080e7          	jalr	-1588(ra) # 80001d80 <_ZdlPv>
    800043bc:	00813083          	ld	ra,8(sp)
    800043c0:	00013403          	ld	s0,0(sp)
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret

00000000800043cc <_ZN7WorkerBD0Ev>:
class WorkerB: public Thread {
    800043cc:	ff010113          	addi	sp,sp,-16
    800043d0:	00113423          	sd	ra,8(sp)
    800043d4:	00813023          	sd	s0,0(sp)
    800043d8:	01010413          	addi	s0,sp,16
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	9a4080e7          	jalr	-1628(ra) # 80001d80 <_ZdlPv>
    800043e4:	00813083          	ld	ra,8(sp)
    800043e8:	00013403          	ld	s0,0(sp)
    800043ec:	01010113          	addi	sp,sp,16
    800043f0:	00008067          	ret

00000000800043f4 <_ZN7WorkerCD0Ev>:
class WorkerC: public Thread {
    800043f4:	ff010113          	addi	sp,sp,-16
    800043f8:	00113423          	sd	ra,8(sp)
    800043fc:	00813023          	sd	s0,0(sp)
    80004400:	01010413          	addi	s0,sp,16
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	97c080e7          	jalr	-1668(ra) # 80001d80 <_ZdlPv>
    8000440c:	00813083          	ld	ra,8(sp)
    80004410:	00013403          	ld	s0,0(sp)
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00008067          	ret

000000008000441c <_ZN7WorkerDD0Ev>:
class WorkerD: public Thread {
    8000441c:	ff010113          	addi	sp,sp,-16
    80004420:	00113423          	sd	ra,8(sp)
    80004424:	00813023          	sd	s0,0(sp)
    80004428:	01010413          	addi	s0,sp,16
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	954080e7          	jalr	-1708(ra) # 80001d80 <_ZdlPv>
    80004434:	00813083          	ld	ra,8(sp)
    80004438:	00013403          	ld	s0,0(sp)
    8000443c:	01010113          	addi	sp,sp,16
    80004440:	00008067          	ret

0000000080004444 <_ZN7WorkerA3runEv>:
    void run() override {
    80004444:	ff010113          	addi	sp,sp,-16
    80004448:	00113423          	sd	ra,8(sp)
    8000444c:	00813023          	sd	s0,0(sp)
    80004450:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004454:	00000593          	li	a1,0
    80004458:	00000097          	auipc	ra,0x0
    8000445c:	86c080e7          	jalr	-1940(ra) # 80003cc4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004460:	00813083          	ld	ra,8(sp)
    80004464:	00013403          	ld	s0,0(sp)
    80004468:	01010113          	addi	sp,sp,16
    8000446c:	00008067          	ret

0000000080004470 <_ZN7WorkerB3runEv>:
    void run() override {
    80004470:	ff010113          	addi	sp,sp,-16
    80004474:	00113423          	sd	ra,8(sp)
    80004478:	00813023          	sd	s0,0(sp)
    8000447c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004480:	00000593          	li	a1,0
    80004484:	00000097          	auipc	ra,0x0
    80004488:	904080e7          	jalr	-1788(ra) # 80003d88 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000448c:	00813083          	ld	ra,8(sp)
    80004490:	00013403          	ld	s0,0(sp)
    80004494:	01010113          	addi	sp,sp,16
    80004498:	00008067          	ret

000000008000449c <_ZN7WorkerC3runEv>:
    void run() override {
    8000449c:	ff010113          	addi	sp,sp,-16
    800044a0:	00113423          	sd	ra,8(sp)
    800044a4:	00813023          	sd	s0,0(sp)
    800044a8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800044ac:	00000593          	li	a1,0
    800044b0:	00000097          	auipc	ra,0x0
    800044b4:	9a4080e7          	jalr	-1628(ra) # 80003e54 <_ZN7WorkerC11workerBodyCEPv>
    }
    800044b8:	00813083          	ld	ra,8(sp)
    800044bc:	00013403          	ld	s0,0(sp)
    800044c0:	01010113          	addi	sp,sp,16
    800044c4:	00008067          	ret

00000000800044c8 <_ZN7WorkerD3runEv>:
    void run() override {
    800044c8:	ff010113          	addi	sp,sp,-16
    800044cc:	00113423          	sd	ra,8(sp)
    800044d0:	00813023          	sd	s0,0(sp)
    800044d4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800044d8:	00000593          	li	a1,0
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	af8080e7          	jalr	-1288(ra) # 80003fd4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800044e4:	00813083          	ld	ra,8(sp)
    800044e8:	00013403          	ld	s0,0(sp)
    800044ec:	01010113          	addi	sp,sp,16
    800044f0:	00008067          	ret

00000000800044f4 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800044f4:	00100793          	li	a5,1
    800044f8:	06a7f863          	bgeu	a5,a0,80004568 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800044fc:	fe010113          	addi	sp,sp,-32
    80004500:	00113c23          	sd	ra,24(sp)
    80004504:	00813823          	sd	s0,16(sp)
    80004508:	00913423          	sd	s1,8(sp)
    8000450c:	01213023          	sd	s2,0(sp)
    80004510:	02010413          	addi	s0,sp,32
    80004514:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80004518:	00a00793          	li	a5,10
    8000451c:	02f577b3          	remu	a5,a0,a5
    80004520:	02078e63          	beqz	a5,8000455c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004524:	fff48513          	addi	a0,s1,-1
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	fcc080e7          	jalr	-52(ra) # 800044f4 <_ZL9fibonaccim>
    80004530:	00050913          	mv	s2,a0
    80004534:	ffe48513          	addi	a0,s1,-2
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	fbc080e7          	jalr	-68(ra) # 800044f4 <_ZL9fibonaccim>
    80004540:	00a90533          	add	a0,s2,a0
}
    80004544:	01813083          	ld	ra,24(sp)
    80004548:	01013403          	ld	s0,16(sp)
    8000454c:	00813483          	ld	s1,8(sp)
    80004550:	00013903          	ld	s2,0(sp)
    80004554:	02010113          	addi	sp,sp,32
    80004558:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000455c:	ffffd097          	auipc	ra,0xffffd
    80004560:	1e0080e7          	jalr	480(ra) # 8000173c <_Z15thread_dispatchv>
    80004564:	fc1ff06f          	j	80004524 <_ZL9fibonaccim+0x30>
}
    80004568:	00008067          	ret

000000008000456c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000456c:	fe010113          	addi	sp,sp,-32
    80004570:	00113c23          	sd	ra,24(sp)
    80004574:	00813823          	sd	s0,16(sp)
    80004578:	00913423          	sd	s1,8(sp)
    8000457c:	01213023          	sd	s2,0(sp)
    80004580:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004584:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80004588:	00c00793          	li	a5,12
    8000458c:	0497e263          	bltu	a5,s1,800045d0 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80004590:	00005517          	auipc	a0,0x5
    80004594:	01050513          	addi	a0,a0,16 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	fd8080e7          	jalr	-40(ra) # 80005570 <_Z11printStringPKc>
    800045a0:	00000613          	li	a2,0
    800045a4:	00a00593          	li	a1,10
    800045a8:	00048513          	mv	a0,s1
    800045ac:	00001097          	auipc	ra,0x1
    800045b0:	170080e7          	jalr	368(ra) # 8000571c <_Z8printIntiii>
    800045b4:	00005517          	auipc	a0,0x5
    800045b8:	d6c50513          	addi	a0,a0,-660 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	fb4080e7          	jalr	-76(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800045c4:	0014849b          	addiw	s1,s1,1
    800045c8:	0ff4f493          	andi	s1,s1,255
    800045cc:	fbdff06f          	j	80004588 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    800045d0:	00005517          	auipc	a0,0x5
    800045d4:	fd850513          	addi	a0,a0,-40 # 800095a8 <_ZZ24debug_print_internal_intmE6digits+0x330>
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	f98080e7          	jalr	-104(ra) # 80005570 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800045e0:	00500313          	li	t1,5
    thread_dispatch();
    800045e4:	ffffd097          	auipc	ra,0xffffd
    800045e8:	158080e7          	jalr	344(ra) # 8000173c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800045ec:	01000513          	li	a0,16
    800045f0:	00000097          	auipc	ra,0x0
    800045f4:	f04080e7          	jalr	-252(ra) # 800044f4 <_ZL9fibonaccim>
    800045f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800045fc:	00005517          	auipc	a0,0x5
    80004600:	fbc50513          	addi	a0,a0,-68 # 800095b8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004604:	00001097          	auipc	ra,0x1
    80004608:	f6c080e7          	jalr	-148(ra) # 80005570 <_Z11printStringPKc>
    8000460c:	00000613          	li	a2,0
    80004610:	00a00593          	li	a1,10
    80004614:	0009051b          	sext.w	a0,s2
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	104080e7          	jalr	260(ra) # 8000571c <_Z8printIntiii>
    80004620:	00005517          	auipc	a0,0x5
    80004624:	d0050513          	addi	a0,a0,-768 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	f48080e7          	jalr	-184(ra) # 80005570 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80004630:	00f00793          	li	a5,15
    80004634:	0497e263          	bltu	a5,s1,80004678 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80004638:	00005517          	auipc	a0,0x5
    8000463c:	f6850513          	addi	a0,a0,-152 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80004640:	00001097          	auipc	ra,0x1
    80004644:	f30080e7          	jalr	-208(ra) # 80005570 <_Z11printStringPKc>
    80004648:	00000613          	li	a2,0
    8000464c:	00a00593          	li	a1,10
    80004650:	00048513          	mv	a0,s1
    80004654:	00001097          	auipc	ra,0x1
    80004658:	0c8080e7          	jalr	200(ra) # 8000571c <_Z8printIntiii>
    8000465c:	00005517          	auipc	a0,0x5
    80004660:	cc450513          	addi	a0,a0,-828 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004664:	00001097          	auipc	ra,0x1
    80004668:	f0c080e7          	jalr	-244(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000466c:	0014849b          	addiw	s1,s1,1
    80004670:	0ff4f493          	andi	s1,s1,255
    80004674:	fbdff06f          	j	80004630 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80004678:	00005517          	auipc	a0,0x5
    8000467c:	f5050513          	addi	a0,a0,-176 # 800095c8 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80004680:	00001097          	auipc	ra,0x1
    80004684:	ef0080e7          	jalr	-272(ra) # 80005570 <_Z11printStringPKc>
    finishedD = true;
    80004688:	00100793          	li	a5,1
    8000468c:	00007717          	auipc	a4,0x7
    80004690:	38f70423          	sb	a5,904(a4) # 8000ba14 <_ZL9finishedD>
    thread_dispatch();
    80004694:	ffffd097          	auipc	ra,0xffffd
    80004698:	0a8080e7          	jalr	168(ra) # 8000173c <_Z15thread_dispatchv>
}
    8000469c:	01813083          	ld	ra,24(sp)
    800046a0:	01013403          	ld	s0,16(sp)
    800046a4:	00813483          	ld	s1,8(sp)
    800046a8:	00013903          	ld	s2,0(sp)
    800046ac:	02010113          	addi	sp,sp,32
    800046b0:	00008067          	ret

00000000800046b4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800046b4:	fe010113          	addi	sp,sp,-32
    800046b8:	00113c23          	sd	ra,24(sp)
    800046bc:	00813823          	sd	s0,16(sp)
    800046c0:	00913423          	sd	s1,8(sp)
    800046c4:	01213023          	sd	s2,0(sp)
    800046c8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800046cc:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800046d0:	00200793          	li	a5,2
    800046d4:	0497e263          	bltu	a5,s1,80004718 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	f0050513          	addi	a0,a0,-256 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	e90080e7          	jalr	-368(ra) # 80005570 <_Z11printStringPKc>
    800046e8:	00000613          	li	a2,0
    800046ec:	00a00593          	li	a1,10
    800046f0:	00048513          	mv	a0,s1
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	028080e7          	jalr	40(ra) # 8000571c <_Z8printIntiii>
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	c2450513          	addi	a0,a0,-988 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004704:	00001097          	auipc	ra,0x1
    80004708:	e6c080e7          	jalr	-404(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000470c:	0014849b          	addiw	s1,s1,1
    80004710:	0ff4f493          	andi	s1,s1,255
    80004714:	fbdff06f          	j	800046d0 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80004718:	00005517          	auipc	a0,0x5
    8000471c:	ec850513          	addi	a0,a0,-312 # 800095e0 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80004720:	00001097          	auipc	ra,0x1
    80004724:	e50080e7          	jalr	-432(ra) # 80005570 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004728:	00700313          	li	t1,7
    thread_dispatch();
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	010080e7          	jalr	16(ra) # 8000173c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004734:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	eb850513          	addi	a0,a0,-328 # 800095f0 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	e30080e7          	jalr	-464(ra) # 80005570 <_Z11printStringPKc>
    80004748:	00000613          	li	a2,0
    8000474c:	00a00593          	li	a1,10
    80004750:	0009051b          	sext.w	a0,s2
    80004754:	00001097          	auipc	ra,0x1
    80004758:	fc8080e7          	jalr	-56(ra) # 8000571c <_Z8printIntiii>
    8000475c:	00005517          	auipc	a0,0x5
    80004760:	bc450513          	addi	a0,a0,-1084 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	e0c080e7          	jalr	-500(ra) # 80005570 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000476c:	00c00513          	li	a0,12
    80004770:	00000097          	auipc	ra,0x0
    80004774:	d84080e7          	jalr	-636(ra) # 800044f4 <_ZL9fibonaccim>
    80004778:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000477c:	00005517          	auipc	a0,0x5
    80004780:	e7c50513          	addi	a0,a0,-388 # 800095f8 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80004784:	00001097          	auipc	ra,0x1
    80004788:	dec080e7          	jalr	-532(ra) # 80005570 <_Z11printStringPKc>
    8000478c:	00000613          	li	a2,0
    80004790:	00a00593          	li	a1,10
    80004794:	0009051b          	sext.w	a0,s2
    80004798:	00001097          	auipc	ra,0x1
    8000479c:	f84080e7          	jalr	-124(ra) # 8000571c <_Z8printIntiii>
    800047a0:	00005517          	auipc	a0,0x5
    800047a4:	b8050513          	addi	a0,a0,-1152 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	dc8080e7          	jalr	-568(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800047b0:	00500793          	li	a5,5
    800047b4:	0497e263          	bltu	a5,s1,800047f8 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	e2050513          	addi	a0,a0,-480 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	db0080e7          	jalr	-592(ra) # 80005570 <_Z11printStringPKc>
    800047c8:	00000613          	li	a2,0
    800047cc:	00a00593          	li	a1,10
    800047d0:	00048513          	mv	a0,s1
    800047d4:	00001097          	auipc	ra,0x1
    800047d8:	f48080e7          	jalr	-184(ra) # 8000571c <_Z8printIntiii>
    800047dc:	00005517          	auipc	a0,0x5
    800047e0:	b4450513          	addi	a0,a0,-1212 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800047e4:	00001097          	auipc	ra,0x1
    800047e8:	d8c080e7          	jalr	-628(ra) # 80005570 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800047ec:	0014849b          	addiw	s1,s1,1
    800047f0:	0ff4f493          	andi	s1,s1,255
    800047f4:	fbdff06f          	j	800047b0 <_ZL11workerBodyCPv+0xfc>
    printString("C finished!\n");
    800047f8:	00005517          	auipc	a0,0x5
    800047fc:	39050513          	addi	a0,a0,912 # 80009b88 <_ZTV7WorkerD+0x28>
    80004800:	00001097          	auipc	ra,0x1
    80004804:	d70080e7          	jalr	-656(ra) # 80005570 <_Z11printStringPKc>
    finishedC = true;
    80004808:	00100793          	li	a5,1
    8000480c:	00007717          	auipc	a4,0x7
    80004810:	20f704a3          	sb	a5,521(a4) # 8000ba15 <_ZL9finishedC>
    thread_dispatch();
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	f28080e7          	jalr	-216(ra) # 8000173c <_Z15thread_dispatchv>
}
    8000481c:	01813083          	ld	ra,24(sp)
    80004820:	01013403          	ld	s0,16(sp)
    80004824:	00813483          	ld	s1,8(sp)
    80004828:	00013903          	ld	s2,0(sp)
    8000482c:	02010113          	addi	sp,sp,32
    80004830:	00008067          	ret

0000000080004834 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004834:	fe010113          	addi	sp,sp,-32
    80004838:	00113c23          	sd	ra,24(sp)
    8000483c:	00813823          	sd	s0,16(sp)
    80004840:	00913423          	sd	s1,8(sp)
    80004844:	01213023          	sd	s2,0(sp)
    80004848:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000484c:	00000913          	li	s2,0
    80004850:	0300006f          	j	80004880 <_ZL11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004854:	00178793          	addi	a5,a5,1
    80004858:	01d00713          	li	a4,29
    8000485c:	fef77ce3          	bgeu	a4,a5,80004854 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	edc080e7          	jalr	-292(ra) # 8000173c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004868:	00148493          	addi	s1,s1,1
    8000486c:	00900793          	li	a5,9
    80004870:	0097e663          	bltu	a5,s1,8000487c <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004874:	00000793          	li	a5,0
    80004878:	fe1ff06f          	j	80004858 <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    8000487c:	00190913          	addi	s2,s2,1
    80004880:	00f00793          	li	a5,15
    80004884:	0527e063          	bltu	a5,s2,800048c4 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80004888:	00005517          	auipc	a0,0x5
    8000488c:	d9050513          	addi	a0,a0,-624 # 80009618 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80004890:	00001097          	auipc	ra,0x1
    80004894:	ce0080e7          	jalr	-800(ra) # 80005570 <_Z11printStringPKc>
    80004898:	00000613          	li	a2,0
    8000489c:	00a00593          	li	a1,10
    800048a0:	0009051b          	sext.w	a0,s2
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	e78080e7          	jalr	-392(ra) # 8000571c <_Z8printIntiii>
    800048ac:	00005517          	auipc	a0,0x5
    800048b0:	a7450513          	addi	a0,a0,-1420 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	cbc080e7          	jalr	-836(ra) # 80005570 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    800048bc:	00000493          	li	s1,0
    800048c0:	fadff06f          	j	8000486c <_ZL11workerBodyBPv+0x38>
    printString("B finished!\n");
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	d5c50513          	addi	a0,a0,-676 # 80009620 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	ca4080e7          	jalr	-860(ra) # 80005570 <_Z11printStringPKc>
    finishedB = true;
    800048d4:	00100793          	li	a5,1
    800048d8:	00007717          	auipc	a4,0x7
    800048dc:	12f70f23          	sb	a5,318(a4) # 8000ba16 <_ZL9finishedB>
    thread_dispatch();
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	e5c080e7          	jalr	-420(ra) # 8000173c <_Z15thread_dispatchv>
}
    800048e8:	01813083          	ld	ra,24(sp)
    800048ec:	01013403          	ld	s0,16(sp)
    800048f0:	00813483          	ld	s1,8(sp)
    800048f4:	00013903          	ld	s2,0(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00113c23          	sd	ra,24(sp)
    80004908:	00813823          	sd	s0,16(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	01213023          	sd	s2,0(sp)
    80004914:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004918:	00000913          	li	s2,0
    8000491c:	0300006f          	j	8000494c <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004920:	00178793          	addi	a5,a5,1
    80004924:	01d00713          	li	a4,29
    80004928:	fef77ce3          	bgeu	a4,a5,80004920 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	e10080e7          	jalr	-496(ra) # 8000173c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004934:	00148493          	addi	s1,s1,1
    80004938:	00900793          	li	a5,9
    8000493c:	0097e663          	bltu	a5,s1,80004948 <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004940:	00000793          	li	a5,0
    80004944:	fe1ff06f          	j	80004924 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80004948:	00190913          	addi	s2,s2,1
    8000494c:	00900793          	li	a5,9
    80004950:	0527e063          	bltu	a5,s2,80004990 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80004954:	00005517          	auipc	a0,0x5
    80004958:	cdc50513          	addi	a0,a0,-804 # 80009630 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	c14080e7          	jalr	-1004(ra) # 80005570 <_Z11printStringPKc>
    80004964:	00000613          	li	a2,0
    80004968:	00a00593          	li	a1,10
    8000496c:	0009051b          	sext.w	a0,s2
    80004970:	00001097          	auipc	ra,0x1
    80004974:	dac080e7          	jalr	-596(ra) # 8000571c <_Z8printIntiii>
    80004978:	00005517          	auipc	a0,0x5
    8000497c:	9a850513          	addi	a0,a0,-1624 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004980:	00001097          	auipc	ra,0x1
    80004984:	bf0080e7          	jalr	-1040(ra) # 80005570 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004988:	00000493          	li	s1,0
    8000498c:	fadff06f          	j	80004938 <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    80004990:	00005517          	auipc	a0,0x5
    80004994:	c7850513          	addi	a0,a0,-904 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	bd8080e7          	jalr	-1064(ra) # 80005570 <_Z11printStringPKc>
    finishedA = true;
    800049a0:	00100793          	li	a5,1
    800049a4:	00007717          	auipc	a4,0x7
    800049a8:	06f709a3          	sb	a5,115(a4) # 8000ba17 <_ZL9finishedA>
}
    800049ac:	01813083          	ld	ra,24(sp)
    800049b0:	01013403          	ld	s0,16(sp)
    800049b4:	00813483          	ld	s1,8(sp)
    800049b8:	00013903          	ld	s2,0(sp)
    800049bc:	02010113          	addi	sp,sp,32
    800049c0:	00008067          	ret

00000000800049c4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800049c4:	fd010113          	addi	sp,sp,-48
    800049c8:	02113423          	sd	ra,40(sp)
    800049cc:	02813023          	sd	s0,32(sp)
    800049d0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800049d4:	00000613          	li	a2,0
    800049d8:	00000597          	auipc	a1,0x0
    800049dc:	f2858593          	addi	a1,a1,-216 # 80004900 <_ZL11workerBodyAPv>
    800049e0:	fd040513          	addi	a0,s0,-48
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	ca8080e7          	jalr	-856(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	c4c50513          	addi	a0,a0,-948 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    800049f4:	00001097          	auipc	ra,0x1
    800049f8:	b7c080e7          	jalr	-1156(ra) # 80005570 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049fc:	00000613          	li	a2,0
    80004a00:	00000597          	auipc	a1,0x0
    80004a04:	e3458593          	addi	a1,a1,-460 # 80004834 <_ZL11workerBodyBPv>
    80004a08:	fd840513          	addi	a0,s0,-40
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	c80080e7          	jalr	-896(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004a14:	00005517          	auipc	a0,0x5
    80004a18:	c3c50513          	addi	a0,a0,-964 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	b54080e7          	jalr	-1196(ra) # 80005570 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004a24:	00000613          	li	a2,0
    80004a28:	00000597          	auipc	a1,0x0
    80004a2c:	c8c58593          	addi	a1,a1,-884 # 800046b4 <_ZL11workerBodyCPv>
    80004a30:	fe040513          	addi	a0,s0,-32
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	c58080e7          	jalr	-936(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004a3c:	00005517          	auipc	a0,0x5
    80004a40:	c2c50513          	addi	a0,a0,-980 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	b2c080e7          	jalr	-1236(ra) # 80005570 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004a4c:	00000613          	li	a2,0
    80004a50:	00000597          	auipc	a1,0x0
    80004a54:	b1c58593          	addi	a1,a1,-1252 # 8000456c <_ZL11workerBodyDPv>
    80004a58:	fe840513          	addi	a0,s0,-24
    80004a5c:	ffffd097          	auipc	ra,0xffffd
    80004a60:	c30080e7          	jalr	-976(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a64:	00005517          	auipc	a0,0x5
    80004a68:	c1c50513          	addi	a0,a0,-996 # 80009680 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	b04080e7          	jalr	-1276(ra) # 80005570 <_Z11printStringPKc>
    80004a74:	00c0006f          	j	80004a80 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	cc4080e7          	jalr	-828(ra) # 8000173c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a80:	00007797          	auipc	a5,0x7
    80004a84:	f9778793          	addi	a5,a5,-105 # 8000ba17 <_ZL9finishedA>
    80004a88:	0007c783          	lbu	a5,0(a5)
    80004a8c:	0ff7f793          	andi	a5,a5,255
    80004a90:	fe0784e3          	beqz	a5,80004a78 <_Z18Threads_C_API_testv+0xb4>
    80004a94:	00007797          	auipc	a5,0x7
    80004a98:	f8278793          	addi	a5,a5,-126 # 8000ba16 <_ZL9finishedB>
    80004a9c:	0007c783          	lbu	a5,0(a5)
    80004aa0:	0ff7f793          	andi	a5,a5,255
    80004aa4:	fc078ae3          	beqz	a5,80004a78 <_Z18Threads_C_API_testv+0xb4>
    80004aa8:	00007797          	auipc	a5,0x7
    80004aac:	f6d78793          	addi	a5,a5,-147 # 8000ba15 <_ZL9finishedC>
    80004ab0:	0007c783          	lbu	a5,0(a5)
    80004ab4:	0ff7f793          	andi	a5,a5,255
    80004ab8:	fc0780e3          	beqz	a5,80004a78 <_Z18Threads_C_API_testv+0xb4>
    80004abc:	00007797          	auipc	a5,0x7
    80004ac0:	f5878793          	addi	a5,a5,-168 # 8000ba14 <_ZL9finishedD>
    80004ac4:	0007c783          	lbu	a5,0(a5)
    80004ac8:	0ff7f793          	andi	a5,a5,255
    80004acc:	fa0786e3          	beqz	a5,80004a78 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004ad0:	02813083          	ld	ra,40(sp)
    80004ad4:	02013403          	ld	s0,32(sp)
    80004ad8:	03010113          	addi	sp,sp,48
    80004adc:	00008067          	ret

0000000080004ae0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004ae0:	fd010113          	addi	sp,sp,-48
    80004ae4:	02113423          	sd	ra,40(sp)
    80004ae8:	02813023          	sd	s0,32(sp)
    80004aec:	00913c23          	sd	s1,24(sp)
    80004af0:	01213823          	sd	s2,16(sp)
    80004af4:	01313423          	sd	s3,8(sp)
    80004af8:	03010413          	addi	s0,sp,48
    80004afc:	00050993          	mv	s3,a0
    80004b00:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004b04:	00000913          	li	s2,0
    80004b08:	00c0006f          	j	80004b14 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004b0c:	ffffd097          	auipc	ra,0xffffd
    80004b10:	c30080e7          	jalr	-976(ra) # 8000173c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80004b14:	ffffd097          	auipc	ra,0xffffd
    80004b18:	e50080e7          	jalr	-432(ra) # 80001964 <_Z4getcv>
    80004b1c:	0005059b          	sext.w	a1,a0
    80004b20:	01b00793          	li	a5,27
    80004b24:	02f58a63          	beq	a1,a5,80004b58 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004b28:	0084b503          	ld	a0,8(s1)
    80004b2c:	00001097          	auipc	ra,0x1
    80004b30:	3e8080e7          	jalr	1000(ra) # 80005f14 <_ZN9BufferCPP3putEi>
        i++;
    80004b34:	0019079b          	addiw	a5,s2,1
    80004b38:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004b3c:	0004a683          	lw	a3,0(s1)
    80004b40:	0026971b          	slliw	a4,a3,0x2
    80004b44:	00d7073b          	addw	a4,a4,a3
    80004b48:	0017169b          	slliw	a3,a4,0x1
    80004b4c:	02d7e7bb          	remw	a5,a5,a3
    80004b50:	fc0792e3          	bnez	a5,80004b14 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004b54:	fb9ff06f          	j	80004b0c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    80004b58:	00100793          	li	a5,1
    80004b5c:	00007717          	auipc	a4,0x7
    80004b60:	eaf72e23          	sw	a5,-324(a4) # 8000ba18 <_ZL9threadEnd>
    td->buffer->put('!');
    80004b64:	0209b783          	ld	a5,32(s3)
    80004b68:	02100593          	li	a1,33
    80004b6c:	0087b503          	ld	a0,8(a5)
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	3a4080e7          	jalr	932(ra) # 80005f14 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004b78:	0104b783          	ld	a5,16(s1)
    sem_t myHandle;
    80004b7c:	0087b503          	ld	a0,8(a5)
    80004b80:	00050663          	beqz	a0,80004b8c <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
class PeriodicThread : public Thread {
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	d58080e7          	jalr	-680(ra) # 800018dc <_Z10sem_signalP10_semaphore>
}
    80004b8c:	02813083          	ld	ra,40(sp)
    80004b90:	02013403          	ld	s0,32(sp)
    80004b94:	01813483          	ld	s1,24(sp)
    80004b98:	01013903          	ld	s2,16(sp)
    80004b9c:	00813983          	ld	s3,8(sp)
    80004ba0:	03010113          	addi	sp,sp,48
    80004ba4:	00008067          	ret

0000000080004ba8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004ba8:	fe010113          	addi	sp,sp,-32
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	00813823          	sd	s0,16(sp)
    80004bb4:	00913423          	sd	s1,8(sp)
    80004bb8:	01213023          	sd	s2,0(sp)
    80004bbc:	02010413          	addi	s0,sp,32
    80004bc0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004bc4:	00000913          	li	s2,0
    80004bc8:	00c0006f          	j	80004bd4 <_ZN12ProducerSync8producerEPv+0x2c>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004bcc:	ffffd097          	auipc	ra,0xffffd
    80004bd0:	b70080e7          	jalr	-1168(ra) # 8000173c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80004bd4:	00007797          	auipc	a5,0x7
    80004bd8:	e4478793          	addi	a5,a5,-444 # 8000ba18 <_ZL9threadEnd>
    80004bdc:	0007a783          	lw	a5,0(a5)
    80004be0:	0007879b          	sext.w	a5,a5
    80004be4:	02079e63          	bnez	a5,80004c20 <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80004be8:	0004a583          	lw	a1,0(s1)
    80004bec:	0305859b          	addiw	a1,a1,48
    80004bf0:	0084b503          	ld	a0,8(s1)
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	320080e7          	jalr	800(ra) # 80005f14 <_ZN9BufferCPP3putEi>
        i++;
    80004bfc:	0019079b          	addiw	a5,s2,1
    80004c00:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004c04:	0004a683          	lw	a3,0(s1)
    80004c08:	0026971b          	slliw	a4,a3,0x2
    80004c0c:	00d7073b          	addw	a4,a4,a3
    80004c10:	0017169b          	slliw	a3,a4,0x1
    80004c14:	02d7e7bb          	remw	a5,a5,a3
    80004c18:	fa079ee3          	bnez	a5,80004bd4 <_ZN12ProducerSync8producerEPv+0x2c>
    80004c1c:	fb1ff06f          	j	80004bcc <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80004c20:	0104b783          	ld	a5,16(s1)
    sem_t myHandle;
    80004c24:	0087b503          	ld	a0,8(a5)
    80004c28:	00050663          	beqz	a0,80004c34 <_ZN12ProducerSync8producerEPv+0x8c>
class PeriodicThread : public Thread {
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	cb0080e7          	jalr	-848(ra) # 800018dc <_Z10sem_signalP10_semaphore>
}
    80004c34:	01813083          	ld	ra,24(sp)
    80004c38:	01013403          	ld	s0,16(sp)
    80004c3c:	00813483          	ld	s1,8(sp)
    80004c40:	00013903          	ld	s2,0(sp)
    80004c44:	02010113          	addi	sp,sp,32
    80004c48:	00008067          	ret

0000000080004c4c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004c4c:	fd010113          	addi	sp,sp,-48
    80004c50:	02113423          	sd	ra,40(sp)
    80004c54:	02813023          	sd	s0,32(sp)
    80004c58:	00913c23          	sd	s1,24(sp)
    80004c5c:	01213823          	sd	s2,16(sp)
    80004c60:	01313423          	sd	s3,8(sp)
    80004c64:	01413023          	sd	s4,0(sp)
    80004c68:	03010413          	addi	s0,sp,48
    80004c6c:	00050993          	mv	s3,a0
    80004c70:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004c74:	00000a13          	li	s4,0
    80004c78:	01c0006f          	j	80004c94 <_ZN12ConsumerSync8consumerEPv+0x48>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	ac0080e7          	jalr	-1344(ra) # 8000173c <_Z15thread_dispatchv>
    80004c84:	0580006f          	j	80004cdc <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    80004c88:	00a00513          	li	a0,10
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	d28080e7          	jalr	-728(ra) # 800019b4 <_Z4putcc>
    while (!threadEnd) {
    80004c94:	00007797          	auipc	a5,0x7
    80004c98:	d8478793          	addi	a5,a5,-636 # 8000ba18 <_ZL9threadEnd>
    80004c9c:	0007a783          	lw	a5,0(a5)
    80004ca0:	0007879b          	sext.w	a5,a5
    80004ca4:	04079463          	bnez	a5,80004cec <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    80004ca8:	00893503          	ld	a0,8(s2)
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	318080e7          	jalr	792(ra) # 80005fc4 <_ZN9BufferCPP3getEv>
        i++;
    80004cb4:	001a049b          	addiw	s1,s4,1
    80004cb8:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004cbc:	0ff57513          	andi	a0,a0,255
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	cf4080e7          	jalr	-780(ra) # 800019b4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004cc8:	00092703          	lw	a4,0(s2)
    80004ccc:	0027179b          	slliw	a5,a4,0x2
    80004cd0:	00e787bb          	addw	a5,a5,a4
    80004cd4:	02f4e7bb          	remw	a5,s1,a5
    80004cd8:	fa0782e3          	beqz	a5,80004c7c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004cdc:	05000793          	li	a5,80
    80004ce0:	02f4e4bb          	remw	s1,s1,a5
    80004ce4:	fa0498e3          	bnez	s1,80004c94 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004ce8:	fa1ff06f          	j	80004c88 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    80004cec:	0209b783          	ld	a5,32(s3)
    80004cf0:	0087b503          	ld	a0,8(a5)
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	37c080e7          	jalr	892(ra) # 80006070 <_ZN9BufferCPP6getCntEv>
    80004cfc:	02a05263          	blez	a0,80004d20 <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    80004d00:	0209b783          	ld	a5,32(s3)
    80004d04:	0087b503          	ld	a0,8(a5)
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	2bc080e7          	jalr	700(ra) # 80005fc4 <_ZN9BufferCPP3getEv>
    80004d10:	0ff57513          	andi	a0,a0,255
    80004d14:	00003097          	auipc	ra,0x3
    80004d18:	5c8080e7          	jalr	1480(ra) # 800082dc <__putc>
    80004d1c:	fd1ff06f          	j	80004cec <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    80004d20:	01093783          	ld	a5,16(s2)
    sem_t myHandle;
    80004d24:	0087b503          	ld	a0,8(a5)
    80004d28:	00050663          	beqz	a0,80004d34 <_ZN12ConsumerSync8consumerEPv+0xe8>
class PeriodicThread : public Thread {
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	bb0080e7          	jalr	-1104(ra) # 800018dc <_Z10sem_signalP10_semaphore>
}
    80004d34:	02813083          	ld	ra,40(sp)
    80004d38:	02013403          	ld	s0,32(sp)
    80004d3c:	01813483          	ld	s1,24(sp)
    80004d40:	01013903          	ld	s2,16(sp)
    80004d44:	00813983          	ld	s3,8(sp)
    80004d48:	00013a03          	ld	s4,0(sp)
    80004d4c:	03010113          	addi	sp,sp,48
    80004d50:	00008067          	ret

0000000080004d54 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004d54:	f9010113          	addi	sp,sp,-112
    80004d58:	06113423          	sd	ra,104(sp)
    80004d5c:	06813023          	sd	s0,96(sp)
    80004d60:	04913c23          	sd	s1,88(sp)
    80004d64:	05213823          	sd	s2,80(sp)
    80004d68:	05313423          	sd	s3,72(sp)
    80004d6c:	05413023          	sd	s4,64(sp)
    80004d70:	03513c23          	sd	s5,56(sp)
    80004d74:	03613823          	sd	s6,48(sp)
    80004d78:	03713423          	sd	s7,40(sp)
    80004d7c:	03813023          	sd	s8,32(sp)
    80004d80:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004d84:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004d88:	00005517          	auipc	a0,0x5
    80004d8c:	9e850513          	addi	a0,a0,-1560 # 80009770 <_ZTV8Consumer+0x28>
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	7e0080e7          	jalr	2016(ra) # 80005570 <_Z11printStringPKc>
    getString(input, 30);
    80004d98:	01e00593          	li	a1,30
    80004d9c:	f9040513          	addi	a0,s0,-112
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	858080e7          	jalr	-1960(ra) # 800055f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004da8:	f9040513          	addi	a0,s0,-112
    80004dac:	00001097          	auipc	ra,0x1
    80004db0:	920080e7          	jalr	-1760(ra) # 800056cc <_Z11stringToIntPKc>
    80004db4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004db8:	00005517          	auipc	a0,0x5
    80004dbc:	9d850513          	addi	a0,a0,-1576 # 80009790 <_ZTV8Consumer+0x48>
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	7b0080e7          	jalr	1968(ra) # 80005570 <_Z11printStringPKc>
    getString(input, 30);
    80004dc8:	01e00593          	li	a1,30
    80004dcc:	f9040513          	addi	a0,s0,-112
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	828080e7          	jalr	-2008(ra) # 800055f8 <_Z9getStringPci>
    n = stringToInt(input);
    80004dd8:	f9040513          	addi	a0,s0,-112
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	8f0080e7          	jalr	-1808(ra) # 800056cc <_Z11stringToIntPKc>
    80004de4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004de8:	00005517          	auipc	a0,0x5
    80004dec:	9c850513          	addi	a0,a0,-1592 # 800097b0 <_ZTV8Consumer+0x68>
    80004df0:	00000097          	auipc	ra,0x0
    80004df4:	780080e7          	jalr	1920(ra) # 80005570 <_Z11printStringPKc>
    80004df8:	00000613          	li	a2,0
    80004dfc:	00a00593          	li	a1,10
    80004e00:	00090513          	mv	a0,s2
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	918080e7          	jalr	-1768(ra) # 8000571c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004e0c:	00005517          	auipc	a0,0x5
    80004e10:	9bc50513          	addi	a0,a0,-1604 # 800097c8 <_ZTV8Consumer+0x80>
    80004e14:	00000097          	auipc	ra,0x0
    80004e18:	75c080e7          	jalr	1884(ra) # 80005570 <_Z11printStringPKc>
    80004e1c:	00000613          	li	a2,0
    80004e20:	00a00593          	li	a1,10
    80004e24:	00048513          	mv	a0,s1
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	8f4080e7          	jalr	-1804(ra) # 8000571c <_Z8printIntiii>
    printString(".\n");
    80004e30:	00005517          	auipc	a0,0x5
    80004e34:	9b050513          	addi	a0,a0,-1616 # 800097e0 <_ZTV8Consumer+0x98>
    80004e38:	00000097          	auipc	ra,0x0
    80004e3c:	738080e7          	jalr	1848(ra) # 80005570 <_Z11printStringPKc>
    if(threadNum > n) {
    80004e40:	0324c463          	blt	s1,s2,80004e68 <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80004e44:	03205c63          	blez	s2,80004e7c <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    80004e48:	03800513          	li	a0,56
    80004e4c:	ffffd097          	auipc	ra,0xffffd
    80004e50:	eb4080e7          	jalr	-332(ra) # 80001d00 <_Znwm>
    80004e54:	00050a93          	mv	s5,a0
    80004e58:	00048593          	mv	a1,s1
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	f04080e7          	jalr	-252(ra) # 80005d60 <_ZN9BufferCPPC1Ei>
    80004e64:	0300006f          	j	80004e94 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004e68:	00005517          	auipc	a0,0x5
    80004e6c:	98050513          	addi	a0,a0,-1664 # 800097e8 <_ZTV8Consumer+0xa0>
    80004e70:	00000097          	auipc	ra,0x0
    80004e74:	700080e7          	jalr	1792(ra) # 80005570 <_Z11printStringPKc>
        return;
    80004e78:	0140006f          	j	80004e8c <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004e7c:	00005517          	auipc	a0,0x5
    80004e80:	9ac50513          	addi	a0,a0,-1620 # 80009828 <_ZTV8Consumer+0xe0>
    80004e84:	00000097          	auipc	ra,0x0
    80004e88:	6ec080e7          	jalr	1772(ra) # 80005570 <_Z11printStringPKc>
        return;
    80004e8c:	000b8113          	mv	sp,s7
    80004e90:	3340006f          	j	800051c4 <_Z29producerConsumer_CPP_Sync_APIv+0x470>
    waitForAll = new Semaphore(0);
    80004e94:	01000513          	li	a0,16
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	e68080e7          	jalr	-408(ra) # 80001d00 <_Znwm>
    80004ea0:	00050493          	mv	s1,a0
            sem_close(myHandle);
    80004ea4:	00005797          	auipc	a5,0x5
    80004ea8:	84478793          	addi	a5,a5,-1980 # 800096e8 <_ZTV9Semaphore+0x10>
    80004eac:	00f53023          	sd	a5,0(a0)
        }
    80004eb0:	00000593          	li	a1,0
    80004eb4:	00850513          	addi	a0,a0,8
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	8d0080e7          	jalr	-1840(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    80004ec0:	00050463          	beqz	a0,80004ec8 <_Z29producerConsumer_CPP_Sync_APIv+0x174>
    }
    80004ec4:	0004b423          	sd	zero,8(s1)
    80004ec8:	00007797          	auipc	a5,0x7
    80004ecc:	b497bc23          	sd	s1,-1192(a5) # 8000ba20 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004ed0:	00391793          	slli	a5,s2,0x3
    80004ed4:	00f78793          	addi	a5,a5,15
    80004ed8:	ff07f793          	andi	a5,a5,-16
    80004edc:	40f10133          	sub	sp,sp,a5
    80004ee0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004ee4:	0019079b          	addiw	a5,s2,1
    80004ee8:	00179713          	slli	a4,a5,0x1
    80004eec:	00f70733          	add	a4,a4,a5
    80004ef0:	00371793          	slli	a5,a4,0x3
    80004ef4:	00f78793          	addi	a5,a5,15
    80004ef8:	ff07f793          	andi	a5,a5,-16
    80004efc:	40f10133          	sub	sp,sp,a5
    80004f00:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004f04:	00191c13          	slli	s8,s2,0x1
    80004f08:	012c0733          	add	a4,s8,s2
    80004f0c:	00371793          	slli	a5,a4,0x3
    80004f10:	00fa07b3          	add	a5,s4,a5
    80004f14:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004f18:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004f1c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004f20:	02800513          	li	a0,40
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	ddc080e7          	jalr	-548(ra) # 80001d00 <_Znwm>
    80004f2c:	00050b13          	mv	s6,a0
    80004f30:	012c0c33          	add	s8,s8,s2
    80004f34:	003c1793          	slli	a5,s8,0x3
    80004f38:	00fa07b3          	add	a5,s4,a5
    static void body_exec (void* thread);
    80004f3c:	00053423          	sd	zero,8(a0)
    80004f40:	00053823          	sd	zero,16(a0)
    80004f44:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004f48:	00005717          	auipc	a4,0x5
    80004f4c:	cb070713          	addi	a4,a4,-848 # 80009bf8 <_ZTV12ConsumerSync+0x10>
    80004f50:	00e53023          	sd	a4,0(a0)
    80004f54:	02f53023          	sd	a5,32(a0)
            return -1;
    80004f58:	00005517          	auipc	a0,0x5
    80004f5c:	90050513          	addi	a0,a0,-1792 # 80009858 <_ZTV8Consumer+0x110>
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	f10080e7          	jalr	-240(ra) # 80001e70 <_Z11debug_printPKc>
        }
    80004f68:	00005517          	auipc	a0,0x5
    80004f6c:	91050513          	addi	a0,a0,-1776 # 80009878 <_ZTV8Consumer+0x130>
    80004f70:	ffffd097          	auipc	ra,0xffffd
    80004f74:	f00080e7          	jalr	-256(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("CPP API: Thread started\n");
    80004f78:	000b0513          	mv	a0,s6
    80004f7c:	ffffd097          	auipc	ra,0xffffd
    80004f80:	03c080e7          	jalr	60(ra) # 80001fb8 <_Z11debug_printm>
        return 0;
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	39c50513          	addi	a0,a0,924 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	ee4080e7          	jalr	-284(ra) # 80001e70 <_Z11debug_printPKc>
    static void dispatch() {
    80004f94:	000b0613          	mv	a2,s6
    80004f98:	ffffc597          	auipc	a1,0xffffc
    80004f9c:	2fc58593          	addi	a1,a1,764 # 80001294 <_ZN6Thread9body_execEPv>
    80004fa0:	008b0513          	addi	a0,s6,8
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	6e8080e7          	jalr	1768(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    80004fac:	00051e63          	bnez	a0,80004fc8 <_Z29producerConsumer_CPP_Sync_APIv+0x274>
        return 0;
    80004fb0:	00005517          	auipc	a0,0x5
    80004fb4:	8e050513          	addi	a0,a0,-1824 # 80009890 <_ZTV8Consumer+0x148>
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	eb8080e7          	jalr	-328(ra) # 80001e70 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    80004fc0:	00000493          	li	s1,0
    80004fc4:	0c80006f          	j	8000508c <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        thread_dispatch();
    80004fc8:	000b3423          	sd	zero,8(s6)
    }
    80004fcc:	ff5ff06f          	j	80004fc0 <_Z29producerConsumer_CPP_Sync_APIv+0x26c>
            threads[i] = new ProducerSync(data+i);
    80004fd0:	02800513          	li	a0,40
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	d2c080e7          	jalr	-724(ra) # 80001d00 <_Znwm>
    80004fdc:	00149713          	slli	a4,s1,0x1
    80004fe0:	00970733          	add	a4,a4,s1
    80004fe4:	00371793          	slli	a5,a4,0x3
    80004fe8:	00fa07b3          	add	a5,s4,a5
    static void body_exec (void* thread);
    80004fec:	00053423          	sd	zero,8(a0)
    80004ff0:	00053823          	sd	zero,16(a0)
    80004ff4:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ff8:	00005717          	auipc	a4,0x5
    80004ffc:	bd870713          	addi	a4,a4,-1064 # 80009bd0 <_ZTV12ProducerSync+0x10>
    80005000:	00e53023          	sd	a4,0(a0)
    80005004:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    80005008:	00349793          	slli	a5,s1,0x3
    8000500c:	00f987b3          	add	a5,s3,a5
    80005010:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80005014:	00349793          	slli	a5,s1,0x3
    80005018:	00f987b3          	add	a5,s3,a5
    8000501c:	0007bc03          	ld	s8,0(a5)
            return -1;
    80005020:	00005517          	auipc	a0,0x5
    80005024:	83850513          	addi	a0,a0,-1992 # 80009858 <_ZTV8Consumer+0x110>
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	e48080e7          	jalr	-440(ra) # 80001e70 <_Z11debug_printPKc>
        }
    80005030:	00005517          	auipc	a0,0x5
    80005034:	84850513          	addi	a0,a0,-1976 # 80009878 <_ZTV8Consumer+0x130>
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	e38080e7          	jalr	-456(ra) # 80001e70 <_Z11debug_printPKc>
        debug_print("CPP API: Thread started\n");
    80005040:	000c0513          	mv	a0,s8
    80005044:	ffffd097          	auipc	ra,0xffffd
    80005048:	f74080e7          	jalr	-140(ra) # 80001fb8 <_Z11debug_printm>
        return 0;
    8000504c:	00004517          	auipc	a0,0x4
    80005050:	2d450513          	addi	a0,a0,724 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	e1c080e7          	jalr	-484(ra) # 80001e70 <_Z11debug_printPKc>
    static void dispatch() {
    8000505c:	000c0613          	mv	a2,s8
    80005060:	ffffc597          	auipc	a1,0xffffc
    80005064:	23458593          	addi	a1,a1,564 # 80001294 <_ZN6Thread9body_execEPv>
    80005068:	008c0513          	addi	a0,s8,8
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	620080e7          	jalr	1568(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    80005074:	08051863          	bnez	a0,80005104 <_Z29producerConsumer_CPP_Sync_APIv+0x3b0>
        return 0;
    80005078:	00005517          	auipc	a0,0x5
    8000507c:	81850513          	addi	a0,a0,-2024 # 80009890 <_ZTV8Consumer+0x148>
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	df0080e7          	jalr	-528(ra) # 80001e70 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    80005088:	0014849b          	addiw	s1,s1,1
    8000508c:	0924d063          	bge	s1,s2,8000510c <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
        data[i].id = i;
    80005090:	00149713          	slli	a4,s1,0x1
    80005094:	00970733          	add	a4,a4,s1
    80005098:	00371793          	slli	a5,a4,0x3
    8000509c:	00fa07b3          	add	a5,s4,a5
    800050a0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800050a4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800050a8:	00007717          	auipc	a4,0x7
    800050ac:	97870713          	addi	a4,a4,-1672 # 8000ba20 <_ZL10waitForAll>
    800050b0:	00073703          	ld	a4,0(a4)
    800050b4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800050b8:	f0904ce3          	bgtz	s1,80004fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x27c>
            threads[i] = new ProducerKeyboard(data+i);
    800050bc:	02800513          	li	a0,40
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	c40080e7          	jalr	-960(ra) # 80001d00 <_Znwm>
    800050c8:	00149713          	slli	a4,s1,0x1
    800050cc:	00970733          	add	a4,a4,s1
    800050d0:	00371793          	slli	a5,a4,0x3
    800050d4:	00fa07b3          	add	a5,s4,a5
    static void body_exec (void* thread);
    800050d8:	00053423          	sd	zero,8(a0)
    800050dc:	00053823          	sd	zero,16(a0)
    800050e0:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800050e4:	00005717          	auipc	a4,0x5
    800050e8:	ac470713          	addi	a4,a4,-1340 # 80009ba8 <_ZTV16ProducerKeyboard+0x10>
    800050ec:	00e53023          	sd	a4,0(a0)
    800050f0:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    800050f4:	00349793          	slli	a5,s1,0x3
    800050f8:	00f987b3          	add	a5,s3,a5
    800050fc:	00a7b023          	sd	a0,0(a5)
    80005100:	f15ff06f          	j	80005014 <_Z29producerConsumer_CPP_Sync_APIv+0x2c0>
        thread_dispatch();
    80005104:	000c3423          	sd	zero,8(s8)
    }
    80005108:	f81ff06f          	j	80005088 <_Z29producerConsumer_CPP_Sync_APIv+0x334>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    8000510c:	ffffc097          	auipc	ra,0xffffc
    80005110:	630080e7          	jalr	1584(ra) # 8000173c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005114:	00000493          	li	s1,0
    80005118:	0080006f          	j	80005120 <_Z29producerConsumer_CPP_Sync_APIv+0x3cc>
    8000511c:	0014849b          	addiw	s1,s1,1
    80005120:	02994263          	blt	s2,s1,80005144 <_Z29producerConsumer_CPP_Sync_APIv+0x3f0>
        waitForAll->wait();
    80005124:	00007797          	auipc	a5,0x7
    80005128:	8fc78793          	addi	a5,a5,-1796 # 8000ba20 <_ZL10waitForAll>
    8000512c:	0007b783          	ld	a5,0(a5)
            return -1;
    80005130:	0087b503          	ld	a0,8(a5)
    80005134:	fe0504e3          	beqz	a0,8000511c <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
    }
    80005138:	ffffc097          	auipc	ra,0xffffc
    8000513c:	738080e7          	jalr	1848(ra) # 80001870 <_Z8sem_waitP10_semaphore>
    80005140:	fddff06f          	j	8000511c <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
    for (int i = 0; i < threadNum; i++) {
    80005144:	00000493          	li	s1,0
    80005148:	0080006f          	j	80005150 <_Z29producerConsumer_CPP_Sync_APIv+0x3fc>
    8000514c:	0014849b          	addiw	s1,s1,1
    80005150:	0324d263          	bge	s1,s2,80005174 <_Z29producerConsumer_CPP_Sync_APIv+0x420>
        delete threads[i];
    80005154:	00349793          	slli	a5,s1,0x3
    80005158:	00f987b3          	add	a5,s3,a5
    8000515c:	0007b503          	ld	a0,0(a5)
    80005160:	fe0506e3          	beqz	a0,8000514c <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    80005164:	00053783          	ld	a5,0(a0)
    80005168:	0087b783          	ld	a5,8(a5)
    8000516c:	000780e7          	jalr	a5
    80005170:	fddff06f          	j	8000514c <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    delete consumerThread;
    80005174:	000b0a63          	beqz	s6,80005188 <_Z29producerConsumer_CPP_Sync_APIv+0x434>
    80005178:	000b3783          	ld	a5,0(s6)
    8000517c:	0087b783          	ld	a5,8(a5)
    80005180:	000b0513          	mv	a0,s6
    80005184:	000780e7          	jalr	a5
    delete waitForAll;
    80005188:	00007797          	auipc	a5,0x7
    8000518c:	89878793          	addi	a5,a5,-1896 # 8000ba20 <_ZL10waitForAll>
    80005190:	0007b503          	ld	a0,0(a5)
    80005194:	00050863          	beqz	a0,800051a4 <_Z29producerConsumer_CPP_Sync_APIv+0x450>
    80005198:	00053783          	ld	a5,0(a0)
    8000519c:	0087b783          	ld	a5,8(a5)
    800051a0:	000780e7          	jalr	a5
    delete buffer;
    800051a4:	000a8e63          	beqz	s5,800051c0 <_Z29producerConsumer_CPP_Sync_APIv+0x46c>
    800051a8:	000a8513          	mv	a0,s5
    800051ac:	00001097          	auipc	ra,0x1
    800051b0:	f6c080e7          	jalr	-148(ra) # 80006118 <_ZN9BufferCPPD1Ev>
    800051b4:	000a8513          	mv	a0,s5
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	bc8080e7          	jalr	-1080(ra) # 80001d80 <_ZdlPv>
    800051c0:	000b8113          	mv	sp,s7

}
    800051c4:	f9040113          	addi	sp,s0,-112
    800051c8:	06813083          	ld	ra,104(sp)
    800051cc:	06013403          	ld	s0,96(sp)
    800051d0:	05813483          	ld	s1,88(sp)
    800051d4:	05013903          	ld	s2,80(sp)
    800051d8:	04813983          	ld	s3,72(sp)
    800051dc:	04013a03          	ld	s4,64(sp)
    800051e0:	03813a83          	ld	s5,56(sp)
    800051e4:	03013b03          	ld	s6,48(sp)
    800051e8:	02813b83          	ld	s7,40(sp)
    800051ec:	02013c03          	ld	s8,32(sp)
    800051f0:	07010113          	addi	sp,sp,112
    800051f4:	00008067          	ret
    800051f8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800051fc:	000a8513          	mv	a0,s5
    80005200:	ffffd097          	auipc	ra,0xffffd
    80005204:	b80080e7          	jalr	-1152(ra) # 80001d80 <_ZdlPv>
    80005208:	00048513          	mv	a0,s1
    8000520c:	00008097          	auipc	ra,0x8
    80005210:	93c080e7          	jalr	-1732(ra) # 8000cb48 <_Unwind_Resume>
    80005214:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005218:	00048513          	mv	a0,s1
    8000521c:	ffffd097          	auipc	ra,0xffffd
    80005220:	b64080e7          	jalr	-1180(ra) # 80001d80 <_ZdlPv>
    80005224:	00090513          	mv	a0,s2
    80005228:	00008097          	auipc	ra,0x8
    8000522c:	920080e7          	jalr	-1760(ra) # 8000cb48 <_Unwind_Resume>

0000000080005230 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005230:	ff010113          	addi	sp,sp,-16
    80005234:	00113423          	sd	ra,8(sp)
    80005238:	00813023          	sd	s0,0(sp)
    8000523c:	01010413          	addi	s0,sp,16
    virtual ~Thread() {}
    80005240:	00004797          	auipc	a5,0x4
    80005244:	48078793          	addi	a5,a5,1152 # 800096c0 <_ZTV6Thread+0x10>
    80005248:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    8000524c:	ffffc097          	auipc	ra,0xffffc
    80005250:	490080e7          	jalr	1168(ra) # 800016dc <_Z11thread_exitv>
    80005254:	00813083          	ld	ra,8(sp)
    80005258:	00013403          	ld	s0,0(sp)
    8000525c:	01010113          	addi	sp,sp,16
    80005260:	00008067          	ret

0000000080005264 <_ZN12ConsumerSyncD0Ev>:
    80005264:	fe010113          	addi	sp,sp,-32
    80005268:	00113c23          	sd	ra,24(sp)
    8000526c:	00813823          	sd	s0,16(sp)
    80005270:	00913423          	sd	s1,8(sp)
    80005274:	02010413          	addi	s0,sp,32
    80005278:	00050493          	mv	s1,a0
    virtual ~Thread() {}
    8000527c:	00004797          	auipc	a5,0x4
    80005280:	44478793          	addi	a5,a5,1092 # 800096c0 <_ZTV6Thread+0x10>
    80005284:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    80005288:	ffffc097          	auipc	ra,0xffffc
    8000528c:	454080e7          	jalr	1108(ra) # 800016dc <_Z11thread_exitv>
    80005290:	00048513          	mv	a0,s1
    80005294:	ffffd097          	auipc	ra,0xffffd
    80005298:	aec080e7          	jalr	-1300(ra) # 80001d80 <_ZdlPv>
    8000529c:	01813083          	ld	ra,24(sp)
    800052a0:	01013403          	ld	s0,16(sp)
    800052a4:	00813483          	ld	s1,8(sp)
    800052a8:	02010113          	addi	sp,sp,32
    800052ac:	00008067          	ret

00000000800052b0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800052b0:	ff010113          	addi	sp,sp,-16
    800052b4:	00113423          	sd	ra,8(sp)
    800052b8:	00813023          	sd	s0,0(sp)
    800052bc:	01010413          	addi	s0,sp,16
    virtual ~Thread() {}
    800052c0:	00004797          	auipc	a5,0x4
    800052c4:	40078793          	addi	a5,a5,1024 # 800096c0 <_ZTV6Thread+0x10>
    800052c8:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    800052cc:	ffffc097          	auipc	ra,0xffffc
    800052d0:	410080e7          	jalr	1040(ra) # 800016dc <_Z11thread_exitv>
    800052d4:	00813083          	ld	ra,8(sp)
    800052d8:	00013403          	ld	s0,0(sp)
    800052dc:	01010113          	addi	sp,sp,16
    800052e0:	00008067          	ret

00000000800052e4 <_ZN12ProducerSyncD0Ev>:
    800052e4:	fe010113          	addi	sp,sp,-32
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00913423          	sd	s1,8(sp)
    800052f4:	02010413          	addi	s0,sp,32
    800052f8:	00050493          	mv	s1,a0
    virtual ~Thread() {}
    800052fc:	00004797          	auipc	a5,0x4
    80005300:	3c478793          	addi	a5,a5,964 # 800096c0 <_ZTV6Thread+0x10>
    80005304:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	3d4080e7          	jalr	980(ra) # 800016dc <_Z11thread_exitv>
    80005310:	00048513          	mv	a0,s1
    80005314:	ffffd097          	auipc	ra,0xffffd
    80005318:	a6c080e7          	jalr	-1428(ra) # 80001d80 <_ZdlPv>
    8000531c:	01813083          	ld	ra,24(sp)
    80005320:	01013403          	ld	s0,16(sp)
    80005324:	00813483          	ld	s1,8(sp)
    80005328:	02010113          	addi	sp,sp,32
    8000532c:	00008067          	ret

0000000080005330 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005330:	ff010113          	addi	sp,sp,-16
    80005334:	00113423          	sd	ra,8(sp)
    80005338:	00813023          	sd	s0,0(sp)
    8000533c:	01010413          	addi	s0,sp,16
    virtual ~Thread() {}
    80005340:	00004797          	auipc	a5,0x4
    80005344:	38078793          	addi	a5,a5,896 # 800096c0 <_ZTV6Thread+0x10>
    80005348:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    8000534c:	ffffc097          	auipc	ra,0xffffc
    80005350:	390080e7          	jalr	912(ra) # 800016dc <_Z11thread_exitv>
    80005354:	00813083          	ld	ra,8(sp)
    80005358:	00013403          	ld	s0,0(sp)
    8000535c:	01010113          	addi	sp,sp,16
    80005360:	00008067          	ret

0000000080005364 <_ZN16ProducerKeyboardD0Ev>:
    80005364:	fe010113          	addi	sp,sp,-32
    80005368:	00113c23          	sd	ra,24(sp)
    8000536c:	00813823          	sd	s0,16(sp)
    80005370:	00913423          	sd	s1,8(sp)
    80005374:	02010413          	addi	s0,sp,32
    80005378:	00050493          	mv	s1,a0
    virtual ~Thread() {}
    8000537c:	00004797          	auipc	a5,0x4
    80005380:	34478793          	addi	a5,a5,836 # 800096c0 <_ZTV6Thread+0x10>
    80005384:	00f53023          	sd	a5,0(a0)
        debug_print("CPP API: THIS POINTER: ");
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	354080e7          	jalr	852(ra) # 800016dc <_Z11thread_exitv>
    80005390:	00048513          	mv	a0,s1
    80005394:	ffffd097          	auipc	ra,0xffffd
    80005398:	9ec080e7          	jalr	-1556(ra) # 80001d80 <_ZdlPv>
    8000539c:	01813083          	ld	ra,24(sp)
    800053a0:	01013403          	ld	s0,16(sp)
    800053a4:	00813483          	ld	s1,8(sp)
    800053a8:	02010113          	addi	sp,sp,32
    800053ac:	00008067          	ret

00000000800053b0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800053b0:	ff010113          	addi	sp,sp,-16
    800053b4:	00113423          	sd	ra,8(sp)
    800053b8:	00813023          	sd	s0,0(sp)
    800053bc:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800053c0:	02053583          	ld	a1,32(a0)
    800053c4:	fffff097          	auipc	ra,0xfffff
    800053c8:	71c080e7          	jalr	1820(ra) # 80004ae0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800053cc:	00813083          	ld	ra,8(sp)
    800053d0:	00013403          	ld	s0,0(sp)
    800053d4:	01010113          	addi	sp,sp,16
    800053d8:	00008067          	ret

00000000800053dc <_ZN12ProducerSync3runEv>:
    void run() override {
    800053dc:	ff010113          	addi	sp,sp,-16
    800053e0:	00113423          	sd	ra,8(sp)
    800053e4:	00813023          	sd	s0,0(sp)
    800053e8:	01010413          	addi	s0,sp,16
        producer(td);
    800053ec:	02053583          	ld	a1,32(a0)
    800053f0:	fffff097          	auipc	ra,0xfffff
    800053f4:	7b8080e7          	jalr	1976(ra) # 80004ba8 <_ZN12ProducerSync8producerEPv>
    }
    800053f8:	00813083          	ld	ra,8(sp)
    800053fc:	00013403          	ld	s0,0(sp)
    80005400:	01010113          	addi	sp,sp,16
    80005404:	00008067          	ret

0000000080005408 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005408:	ff010113          	addi	sp,sp,-16
    8000540c:	00113423          	sd	ra,8(sp)
    80005410:	00813023          	sd	s0,0(sp)
    80005414:	01010413          	addi	s0,sp,16
        consumer(td);
    80005418:	02053583          	ld	a1,32(a0)
    8000541c:	00000097          	auipc	ra,0x0
    80005420:	830080e7          	jalr	-2000(ra) # 80004c4c <_ZN12ConsumerSync8consumerEPv>
    }
    80005424:	00813083          	ld	ra,8(sp)
    80005428:	00013403          	ld	s0,0(sp)
    8000542c:	01010113          	addi	sp,sp,16
    80005430:	00008067          	ret

0000000080005434 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005434:	fe010113          	addi	sp,sp,-32
    80005438:	00113c23          	sd	ra,24(sp)
    8000543c:	00813823          	sd	s0,16(sp)
    80005440:	00913423          	sd	s1,8(sp)
    80005444:	01213023          	sd	s2,0(sp)
    80005448:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000544c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005450:	00600493          	li	s1,6
    while (--i > 0) {
    80005454:	fff4849b          	addiw	s1,s1,-1
    80005458:	04905463          	blez	s1,800054a0 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000545c:	00004517          	auipc	a0,0x4
    80005460:	7b450513          	addi	a0,a0,1972 # 80009c10 <_ZTV12ConsumerSync+0x28>
    80005464:	00000097          	auipc	ra,0x0
    80005468:	10c080e7          	jalr	268(ra) # 80005570 <_Z11printStringPKc>
        printInt(sleep_time);
    8000546c:	00000613          	li	a2,0
    80005470:	00a00593          	li	a1,10
    80005474:	0009051b          	sext.w	a0,s2
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	2a4080e7          	jalr	676(ra) # 8000571c <_Z8printIntiii>
        printString(" !\n");
    80005480:	00004517          	auipc	a0,0x4
    80005484:	79850513          	addi	a0,a0,1944 # 80009c18 <_ZTV12ConsumerSync+0x30>
    80005488:	00000097          	auipc	ra,0x0
    8000548c:	0e8080e7          	jalr	232(ra) # 80005570 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005490:	00090513          	mv	a0,s2
    80005494:	ffffc097          	auipc	ra,0xffffc
    80005498:	4b4080e7          	jalr	1204(ra) # 80001948 <_Z10time_sleepm>
    while (--i > 0) {
    8000549c:	fb9ff06f          	j	80005454 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800054a0:	00a00793          	li	a5,10
    800054a4:	02f95933          	divu	s2,s2,a5
    800054a8:	fff90913          	addi	s2,s2,-1
    800054ac:	00006797          	auipc	a5,0x6
    800054b0:	57c78793          	addi	a5,a5,1404 # 8000ba28 <_ZL8finished>
    800054b4:	01278933          	add	s2,a5,s2
    800054b8:	00100793          	li	a5,1
    800054bc:	00f90023          	sb	a5,0(s2)
}
    800054c0:	01813083          	ld	ra,24(sp)
    800054c4:	01013403          	ld	s0,16(sp)
    800054c8:	00813483          	ld	s1,8(sp)
    800054cc:	00013903          	ld	s2,0(sp)
    800054d0:	02010113          	addi	sp,sp,32
    800054d4:	00008067          	ret

00000000800054d8 <_Z12testSleepingv>:

void testSleeping() {
    800054d8:	fc010113          	addi	sp,sp,-64
    800054dc:	02113c23          	sd	ra,56(sp)
    800054e0:	02813823          	sd	s0,48(sp)
    800054e4:	02913423          	sd	s1,40(sp)
    800054e8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800054ec:	00a00793          	li	a5,10
    800054f0:	fcf43823          	sd	a5,-48(s0)
    800054f4:	01400793          	li	a5,20
    800054f8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800054fc:	00000493          	li	s1,0
    80005500:	00100793          	li	a5,1
    80005504:	0297c863          	blt	a5,s1,80005534 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005508:	00349513          	slli	a0,s1,0x3
    8000550c:	fd040793          	addi	a5,s0,-48
    80005510:	00a78633          	add	a2,a5,a0
    80005514:	00000597          	auipc	a1,0x0
    80005518:	f2058593          	addi	a1,a1,-224 # 80005434 <_ZL9sleepyRunPv>
    8000551c:	fc040793          	addi	a5,s0,-64
    80005520:	00a78533          	add	a0,a5,a0
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	168080e7          	jalr	360(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000552c:	0014849b          	addiw	s1,s1,1
    80005530:	fd1ff06f          	j	80005500 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    80005534:	00006797          	auipc	a5,0x6
    80005538:	4f478793          	addi	a5,a5,1268 # 8000ba28 <_ZL8finished>
    8000553c:	0007c783          	lbu	a5,0(a5)
    80005540:	0ff7f793          	andi	a5,a5,255
    80005544:	fe0788e3          	beqz	a5,80005534 <_Z12testSleepingv+0x5c>
    80005548:	00006797          	auipc	a5,0x6
    8000554c:	4e078793          	addi	a5,a5,1248 # 8000ba28 <_ZL8finished>
    80005550:	0017c783          	lbu	a5,1(a5)
    80005554:	0ff7f793          	andi	a5,a5,255
    80005558:	fc078ee3          	beqz	a5,80005534 <_Z12testSleepingv+0x5c>
}
    8000555c:	03813083          	ld	ra,56(sp)
    80005560:	03013403          	ld	s0,48(sp)
    80005564:	02813483          	ld	s1,40(sp)
    80005568:	04010113          	addi	sp,sp,64
    8000556c:	00008067          	ret

0000000080005570 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005570:	fe010113          	addi	sp,sp,-32
    80005574:	00113c23          	sd	ra,24(sp)
    80005578:	00813823          	sd	s0,16(sp)
    8000557c:	00913423          	sd	s1,8(sp)
    80005580:	02010413          	addi	s0,sp,32
    80005584:	00050493          	mv	s1,a0
    LOCK();
    80005588:	00100613          	li	a2,1
    8000558c:	00000593          	li	a1,0
    80005590:	00006517          	auipc	a0,0x6
    80005594:	4a050513          	addi	a0,a0,1184 # 8000ba30 <lockPrint>
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	b8c080e7          	jalr	-1140(ra) # 80001124 <copy_and_swap>
    800055a0:	00050863          	beqz	a0,800055b0 <_Z11printStringPKc+0x40>
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	198080e7          	jalr	408(ra) # 8000173c <_Z15thread_dispatchv>
    800055ac:	fddff06f          	j	80005588 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800055b0:	0004c503          	lbu	a0,0(s1)
    800055b4:	00050a63          	beqz	a0,800055c8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800055b8:	ffffc097          	auipc	ra,0xffffc
    800055bc:	3fc080e7          	jalr	1020(ra) # 800019b4 <_Z4putcc>
        string++;
    800055c0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800055c4:	fedff06f          	j	800055b0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800055c8:	00000613          	li	a2,0
    800055cc:	00100593          	li	a1,1
    800055d0:	00006517          	auipc	a0,0x6
    800055d4:	46050513          	addi	a0,a0,1120 # 8000ba30 <lockPrint>
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	b4c080e7          	jalr	-1204(ra) # 80001124 <copy_and_swap>
    800055e0:	fe0514e3          	bnez	a0,800055c8 <_Z11printStringPKc+0x58>
}
    800055e4:	01813083          	ld	ra,24(sp)
    800055e8:	01013403          	ld	s0,16(sp)
    800055ec:	00813483          	ld	s1,8(sp)
    800055f0:	02010113          	addi	sp,sp,32
    800055f4:	00008067          	ret

00000000800055f8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800055f8:	fd010113          	addi	sp,sp,-48
    800055fc:	02113423          	sd	ra,40(sp)
    80005600:	02813023          	sd	s0,32(sp)
    80005604:	00913c23          	sd	s1,24(sp)
    80005608:	01213823          	sd	s2,16(sp)
    8000560c:	01313423          	sd	s3,8(sp)
    80005610:	01413023          	sd	s4,0(sp)
    80005614:	03010413          	addi	s0,sp,48
    80005618:	00050993          	mv	s3,a0
    8000561c:	00058a13          	mv	s4,a1
    LOCK();
    80005620:	00100613          	li	a2,1
    80005624:	00000593          	li	a1,0
    80005628:	00006517          	auipc	a0,0x6
    8000562c:	40850513          	addi	a0,a0,1032 # 8000ba30 <lockPrint>
    80005630:	ffffc097          	auipc	ra,0xffffc
    80005634:	af4080e7          	jalr	-1292(ra) # 80001124 <copy_and_swap>
    80005638:	00050863          	beqz	a0,80005648 <_Z9getStringPci+0x50>
    8000563c:	ffffc097          	auipc	ra,0xffffc
    80005640:	100080e7          	jalr	256(ra) # 8000173c <_Z15thread_dispatchv>
    80005644:	fddff06f          	j	80005620 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005648:	00000493          	li	s1,0
    8000564c:	0014891b          	addiw	s2,s1,1
    80005650:	03495a63          	bge	s2,s4,80005684 <_Z9getStringPci+0x8c>
        cc = getc();
    80005654:	ffffc097          	auipc	ra,0xffffc
    80005658:	310080e7          	jalr	784(ra) # 80001964 <_Z4getcv>
        if(cc < 1)
    8000565c:	02050463          	beqz	a0,80005684 <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    80005660:	009984b3          	add	s1,s3,s1
    80005664:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005668:	00a00793          	li	a5,10
    8000566c:	00f50a63          	beq	a0,a5,80005680 <_Z9getStringPci+0x88>
        buf[i++] = c;
    80005670:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    80005674:	00d00793          	li	a5,13
    80005678:	fcf51ae3          	bne	a0,a5,8000564c <_Z9getStringPci+0x54>
    8000567c:	0080006f          	j	80005684 <_Z9getStringPci+0x8c>
        buf[i++] = c;
    80005680:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005684:	009984b3          	add	s1,s3,s1
    80005688:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000568c:	00000613          	li	a2,0
    80005690:	00100593          	li	a1,1
    80005694:	00006517          	auipc	a0,0x6
    80005698:	39c50513          	addi	a0,a0,924 # 8000ba30 <lockPrint>
    8000569c:	ffffc097          	auipc	ra,0xffffc
    800056a0:	a88080e7          	jalr	-1400(ra) # 80001124 <copy_and_swap>
    800056a4:	fe0514e3          	bnez	a0,8000568c <_Z9getStringPci+0x94>
    return buf;
}
    800056a8:	00098513          	mv	a0,s3
    800056ac:	02813083          	ld	ra,40(sp)
    800056b0:	02013403          	ld	s0,32(sp)
    800056b4:	01813483          	ld	s1,24(sp)
    800056b8:	01013903          	ld	s2,16(sp)
    800056bc:	00813983          	ld	s3,8(sp)
    800056c0:	00013a03          	ld	s4,0(sp)
    800056c4:	03010113          	addi	sp,sp,48
    800056c8:	00008067          	ret

00000000800056cc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800056cc:	ff010113          	addi	sp,sp,-16
    800056d0:	00813423          	sd	s0,8(sp)
    800056d4:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    800056d8:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    800056dc:	00054603          	lbu	a2,0(a0)
    800056e0:	fd06069b          	addiw	a3,a2,-48
    800056e4:	0ff6f693          	andi	a3,a3,255
    800056e8:	00900713          	li	a4,9
    800056ec:	02d76063          	bltu	a4,a3,8000570c <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    800056f0:	0027969b          	slliw	a3,a5,0x2
    800056f4:	00f687bb          	addw	a5,a3,a5
    800056f8:	0017971b          	slliw	a4,a5,0x1
    800056fc:	00150513          	addi	a0,a0,1
    80005700:	00c707bb          	addw	a5,a4,a2
    80005704:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    80005708:	fd5ff06f          	j	800056dc <_Z11stringToIntPKc+0x10>
    return n;
}
    8000570c:	00078513          	mv	a0,a5
    80005710:	00813403          	ld	s0,8(sp)
    80005714:	01010113          	addi	sp,sp,16
    80005718:	00008067          	ret

000000008000571c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000571c:	fc010113          	addi	sp,sp,-64
    80005720:	02113c23          	sd	ra,56(sp)
    80005724:	02813823          	sd	s0,48(sp)
    80005728:	02913423          	sd	s1,40(sp)
    8000572c:	03213023          	sd	s2,32(sp)
    80005730:	01313c23          	sd	s3,24(sp)
    80005734:	04010413          	addi	s0,sp,64
    80005738:	00050493          	mv	s1,a0
    8000573c:	00058913          	mv	s2,a1
    80005740:	00060993          	mv	s3,a2
    LOCK();
    80005744:	00100613          	li	a2,1
    80005748:	00000593          	li	a1,0
    8000574c:	00006517          	auipc	a0,0x6
    80005750:	2e450513          	addi	a0,a0,740 # 8000ba30 <lockPrint>
    80005754:	ffffc097          	auipc	ra,0xffffc
    80005758:	9d0080e7          	jalr	-1584(ra) # 80001124 <copy_and_swap>
    8000575c:	00050863          	beqz	a0,8000576c <_Z8printIntiii+0x50>
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	fdc080e7          	jalr	-36(ra) # 8000173c <_Z15thread_dispatchv>
    80005768:	fddff06f          	j	80005744 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000576c:	00098463          	beqz	s3,80005774 <_Z8printIntiii+0x58>
    80005770:	0004ca63          	bltz	s1,80005784 <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005774:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005778:	00000593          	li	a1,0
    }

    i = 0;
    8000577c:	00000613          	li	a2,0
    80005780:	0180006f          	j	80005798 <_Z8printIntiii+0x7c>
        x = -xx;
    80005784:	4090053b          	negw	a0,s1
        neg = 1;
    80005788:	00100593          	li	a1,1
        x = -xx;
    8000578c:	ff1ff06f          	j	8000577c <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    80005790:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    80005794:	00048613          	mv	a2,s1
    80005798:	0009079b          	sext.w	a5,s2
    8000579c:	02f5773b          	remuw	a4,a0,a5
    800057a0:	0016049b          	addiw	s1,a2,1
    800057a4:	02071693          	slli	a3,a4,0x20
    800057a8:	0206d693          	srli	a3,a3,0x20
    800057ac:	00006717          	auipc	a4,0x6
    800057b0:	04470713          	addi	a4,a4,68 # 8000b7f0 <digits>
    800057b4:	00d70733          	add	a4,a4,a3
    800057b8:	00074683          	lbu	a3,0(a4)
    800057bc:	fd040713          	addi	a4,s0,-48
    800057c0:	00c70733          	add	a4,a4,a2
    800057c4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800057c8:	02f5573b          	divuw	a4,a0,a5
    800057cc:	0007069b          	sext.w	a3,a4
    800057d0:	fcf570e3          	bgeu	a0,a5,80005790 <_Z8printIntiii+0x74>
    if(neg)
    800057d4:	00058c63          	beqz	a1,800057ec <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    800057d8:	fd040793          	addi	a5,s0,-48
    800057dc:	009784b3          	add	s1,a5,s1
    800057e0:	02d00793          	li	a5,45
    800057e4:	fef48823          	sb	a5,-16(s1)
    800057e8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800057ec:	fff4849b          	addiw	s1,s1,-1
    800057f0:	0004ce63          	bltz	s1,8000580c <_Z8printIntiii+0xf0>
        putc(buf[i]);
    800057f4:	fd040793          	addi	a5,s0,-48
    800057f8:	009787b3          	add	a5,a5,s1
    800057fc:	ff07c503          	lbu	a0,-16(a5)
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	1b4080e7          	jalr	436(ra) # 800019b4 <_Z4putcc>
    80005808:	fe5ff06f          	j	800057ec <_Z8printIntiii+0xd0>

    UNLOCK();
    8000580c:	00000613          	li	a2,0
    80005810:	00100593          	li	a1,1
    80005814:	00006517          	auipc	a0,0x6
    80005818:	21c50513          	addi	a0,a0,540 # 8000ba30 <lockPrint>
    8000581c:	ffffc097          	auipc	ra,0xffffc
    80005820:	908080e7          	jalr	-1784(ra) # 80001124 <copy_and_swap>
    80005824:	fe0514e3          	bnez	a0,8000580c <_Z8printIntiii+0xf0>
    80005828:	03813083          	ld	ra,56(sp)
    8000582c:	03013403          	ld	s0,48(sp)
    80005830:	02813483          	ld	s1,40(sp)
    80005834:	02013903          	ld	s2,32(sp)
    80005838:	01813983          	ld	s3,24(sp)
    8000583c:	04010113          	addi	sp,sp,64
    80005840:	00008067          	ret

0000000080005844 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80005844:	fe010113          	addi	sp,sp,-32
    80005848:	00113c23          	sd	ra,24(sp)
    8000584c:	00813823          	sd	s0,16(sp)
    80005850:	00913423          	sd	s1,8(sp)
    80005854:	01213023          	sd	s2,0(sp)
    80005858:	02010413          	addi	s0,sp,32
    8000585c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005860:	00000913          	li	s2,0
    80005864:	00c0006f          	j	80005870 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005868:	ffffc097          	auipc	ra,0xffffc
    8000586c:	ed4080e7          	jalr	-300(ra) # 8000173c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	0f4080e7          	jalr	244(ra) # 80001964 <_Z4getcv>
    80005878:	0005059b          	sext.w	a1,a0
    8000587c:	01b00793          	li	a5,27
    80005880:	02f58a63          	beq	a1,a5,800058b4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80005884:	0084b503          	ld	a0,8(s1)
    80005888:	ffffd097          	auipc	ra,0xffffd
    8000588c:	628080e7          	jalr	1576(ra) # 80002eb0 <_ZN6Buffer3putEi>
        i++;
    80005890:	0019079b          	addiw	a5,s2,1
    80005894:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005898:	0004a683          	lw	a3,0(s1)
    8000589c:	0026971b          	slliw	a4,a3,0x2
    800058a0:	00d7073b          	addw	a4,a4,a3
    800058a4:	0017169b          	slliw	a3,a4,0x1
    800058a8:	02d7e7bb          	remw	a5,a5,a3
    800058ac:	fc0792e3          	bnez	a5,80005870 <_ZL16producerKeyboardPv+0x2c>
    800058b0:	fb9ff06f          	j	80005868 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800058b4:	00100793          	li	a5,1
    800058b8:	00006717          	auipc	a4,0x6
    800058bc:	18f72023          	sw	a5,384(a4) # 8000ba38 <_ZL9threadEnd>
    data->buffer->put('!');
    800058c0:	02100593          	li	a1,33
    800058c4:	0084b503          	ld	a0,8(s1)
    800058c8:	ffffd097          	auipc	ra,0xffffd
    800058cc:	5e8080e7          	jalr	1512(ra) # 80002eb0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800058d0:	0104b503          	ld	a0,16(s1)
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	008080e7          	jalr	8(ra) # 800018dc <_Z10sem_signalP10_semaphore>
}
    800058dc:	01813083          	ld	ra,24(sp)
    800058e0:	01013403          	ld	s0,16(sp)
    800058e4:	00813483          	ld	s1,8(sp)
    800058e8:	00013903          	ld	s2,0(sp)
    800058ec:	02010113          	addi	sp,sp,32
    800058f0:	00008067          	ret

00000000800058f4 <_ZL8producerPv>:

static void producer(void *arg) {
    800058f4:	fe010113          	addi	sp,sp,-32
    800058f8:	00113c23          	sd	ra,24(sp)
    800058fc:	00813823          	sd	s0,16(sp)
    80005900:	00913423          	sd	s1,8(sp)
    80005904:	01213023          	sd	s2,0(sp)
    80005908:	02010413          	addi	s0,sp,32
    8000590c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005910:	00000913          	li	s2,0
    80005914:	00c0006f          	j	80005920 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005918:	ffffc097          	auipc	ra,0xffffc
    8000591c:	e24080e7          	jalr	-476(ra) # 8000173c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80005920:	00006797          	auipc	a5,0x6
    80005924:	11878793          	addi	a5,a5,280 # 8000ba38 <_ZL9threadEnd>
    80005928:	0007a783          	lw	a5,0(a5)
    8000592c:	0007879b          	sext.w	a5,a5
    80005930:	02079e63          	bnez	a5,8000596c <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    80005934:	0004a583          	lw	a1,0(s1)
    80005938:	0305859b          	addiw	a1,a1,48
    8000593c:	0084b503          	ld	a0,8(s1)
    80005940:	ffffd097          	auipc	ra,0xffffd
    80005944:	570080e7          	jalr	1392(ra) # 80002eb0 <_ZN6Buffer3putEi>
        i++;
    80005948:	0019079b          	addiw	a5,s2,1
    8000594c:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005950:	0004a683          	lw	a3,0(s1)
    80005954:	0026971b          	slliw	a4,a3,0x2
    80005958:	00d7073b          	addw	a4,a4,a3
    8000595c:	0017169b          	slliw	a3,a4,0x1
    80005960:	02d7e7bb          	remw	a5,a5,a3
    80005964:	fa079ee3          	bnez	a5,80005920 <_ZL8producerPv+0x2c>
    80005968:	fb1ff06f          	j	80005918 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000596c:	0104b503          	ld	a0,16(s1)
    80005970:	ffffc097          	auipc	ra,0xffffc
    80005974:	f6c080e7          	jalr	-148(ra) # 800018dc <_Z10sem_signalP10_semaphore>
}
    80005978:	01813083          	ld	ra,24(sp)
    8000597c:	01013403          	ld	s0,16(sp)
    80005980:	00813483          	ld	s1,8(sp)
    80005984:	00013903          	ld	s2,0(sp)
    80005988:	02010113          	addi	sp,sp,32
    8000598c:	00008067          	ret

0000000080005990 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80005990:	fd010113          	addi	sp,sp,-48
    80005994:	02113423          	sd	ra,40(sp)
    80005998:	02813023          	sd	s0,32(sp)
    8000599c:	00913c23          	sd	s1,24(sp)
    800059a0:	01213823          	sd	s2,16(sp)
    800059a4:	01313423          	sd	s3,8(sp)
    800059a8:	03010413          	addi	s0,sp,48
    800059ac:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800059b0:	00000993          	li	s3,0
    800059b4:	01c0006f          	j	800059d0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	d84080e7          	jalr	-636(ra) # 8000173c <_Z15thread_dispatchv>
    800059c0:	0580006f          	j	80005a18 <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800059c4:	00a00513          	li	a0,10
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	fec080e7          	jalr	-20(ra) # 800019b4 <_Z4putcc>
    while (!threadEnd) {
    800059d0:	00006797          	auipc	a5,0x6
    800059d4:	06878793          	addi	a5,a5,104 # 8000ba38 <_ZL9threadEnd>
    800059d8:	0007a783          	lw	a5,0(a5)
    800059dc:	0007879b          	sext.w	a5,a5
    800059e0:	04079463          	bnez	a5,80005a28 <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    800059e4:	00893503          	ld	a0,8(s2)
    800059e8:	ffffd097          	auipc	ra,0xffffd
    800059ec:	558080e7          	jalr	1368(ra) # 80002f40 <_ZN6Buffer3getEv>
        i++;
    800059f0:	0019849b          	addiw	s1,s3,1
    800059f4:	0004899b          	sext.w	s3,s1
        putc(key);
    800059f8:	0ff57513          	andi	a0,a0,255
    800059fc:	ffffc097          	auipc	ra,0xffffc
    80005a00:	fb8080e7          	jalr	-72(ra) # 800019b4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005a04:	00092703          	lw	a4,0(s2)
    80005a08:	0027179b          	slliw	a5,a4,0x2
    80005a0c:	00e787bb          	addw	a5,a5,a4
    80005a10:	02f4e7bb          	remw	a5,s1,a5
    80005a14:	fa0782e3          	beqz	a5,800059b8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80005a18:	05000793          	li	a5,80
    80005a1c:	02f4e4bb          	remw	s1,s1,a5
    80005a20:	fa0498e3          	bnez	s1,800059d0 <_ZL8consumerPv+0x40>
    80005a24:	fa1ff06f          	j	800059c4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    80005a28:	00893503          	ld	a0,8(s2)
    80005a2c:	ffffd097          	auipc	ra,0xffffd
    80005a30:	5a0080e7          	jalr	1440(ra) # 80002fcc <_ZN6Buffer6getCntEv>
    80005a34:	02a05063          	blez	a0,80005a54 <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    80005a38:	00893503          	ld	a0,8(s2)
    80005a3c:	ffffd097          	auipc	ra,0xffffd
    80005a40:	504080e7          	jalr	1284(ra) # 80002f40 <_ZN6Buffer3getEv>
        putc(key);
    80005a44:	0ff57513          	andi	a0,a0,255
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	f6c080e7          	jalr	-148(ra) # 800019b4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80005a50:	fd9ff06f          	j	80005a28 <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    80005a54:	01093503          	ld	a0,16(s2)
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	e84080e7          	jalr	-380(ra) # 800018dc <_Z10sem_signalP10_semaphore>
}
    80005a60:	02813083          	ld	ra,40(sp)
    80005a64:	02013403          	ld	s0,32(sp)
    80005a68:	01813483          	ld	s1,24(sp)
    80005a6c:	01013903          	ld	s2,16(sp)
    80005a70:	00813983          	ld	s3,8(sp)
    80005a74:	03010113          	addi	sp,sp,48
    80005a78:	00008067          	ret

0000000080005a7c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80005a7c:	f9010113          	addi	sp,sp,-112
    80005a80:	06113423          	sd	ra,104(sp)
    80005a84:	06813023          	sd	s0,96(sp)
    80005a88:	04913c23          	sd	s1,88(sp)
    80005a8c:	05213823          	sd	s2,80(sp)
    80005a90:	05313423          	sd	s3,72(sp)
    80005a94:	05413023          	sd	s4,64(sp)
    80005a98:	03513c23          	sd	s5,56(sp)
    80005a9c:	03613823          	sd	s6,48(sp)
    80005aa0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80005aa4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80005aa8:	00004517          	auipc	a0,0x4
    80005aac:	cc850513          	addi	a0,a0,-824 # 80009770 <_ZTV8Consumer+0x28>
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	ac0080e7          	jalr	-1344(ra) # 80005570 <_Z11printStringPKc>
    getString(input, 30);
    80005ab8:	01e00593          	li	a1,30
    80005abc:	fa040513          	addi	a0,s0,-96
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	b38080e7          	jalr	-1224(ra) # 800055f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005ac8:	fa040513          	addi	a0,s0,-96
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	c00080e7          	jalr	-1024(ra) # 800056cc <_Z11stringToIntPKc>
    80005ad4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	cb850513          	addi	a0,a0,-840 # 80009790 <_ZTV8Consumer+0x48>
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	a90080e7          	jalr	-1392(ra) # 80005570 <_Z11printStringPKc>
    getString(input, 30);
    80005ae8:	01e00593          	li	a1,30
    80005aec:	fa040513          	addi	a0,s0,-96
    80005af0:	00000097          	auipc	ra,0x0
    80005af4:	b08080e7          	jalr	-1272(ra) # 800055f8 <_Z9getStringPci>
    n = stringToInt(input);
    80005af8:	fa040513          	addi	a0,s0,-96
    80005afc:	00000097          	auipc	ra,0x0
    80005b00:	bd0080e7          	jalr	-1072(ra) # 800056cc <_Z11stringToIntPKc>
    80005b04:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005b08:	00004517          	auipc	a0,0x4
    80005b0c:	ca850513          	addi	a0,a0,-856 # 800097b0 <_ZTV8Consumer+0x68>
    80005b10:	00000097          	auipc	ra,0x0
    80005b14:	a60080e7          	jalr	-1440(ra) # 80005570 <_Z11printStringPKc>
    80005b18:	00000613          	li	a2,0
    80005b1c:	00a00593          	li	a1,10
    80005b20:	00090513          	mv	a0,s2
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	bf8080e7          	jalr	-1032(ra) # 8000571c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005b2c:	00004517          	auipc	a0,0x4
    80005b30:	c9c50513          	addi	a0,a0,-868 # 800097c8 <_ZTV8Consumer+0x80>
    80005b34:	00000097          	auipc	ra,0x0
    80005b38:	a3c080e7          	jalr	-1476(ra) # 80005570 <_Z11printStringPKc>
    80005b3c:	00000613          	li	a2,0
    80005b40:	00a00593          	li	a1,10
    80005b44:	00048513          	mv	a0,s1
    80005b48:	00000097          	auipc	ra,0x0
    80005b4c:	bd4080e7          	jalr	-1068(ra) # 8000571c <_Z8printIntiii>
    printString(".\n");
    80005b50:	00004517          	auipc	a0,0x4
    80005b54:	c9050513          	addi	a0,a0,-880 # 800097e0 <_ZTV8Consumer+0x98>
    80005b58:	00000097          	auipc	ra,0x0
    80005b5c:	a18080e7          	jalr	-1512(ra) # 80005570 <_Z11printStringPKc>
    if(threadNum > n) {
    80005b60:	0324c463          	blt	s1,s2,80005b88 <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    80005b64:	03205c63          	blez	s2,80005b9c <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    80005b68:	03800513          	li	a0,56
    80005b6c:	ffffc097          	auipc	ra,0xffffc
    80005b70:	194080e7          	jalr	404(ra) # 80001d00 <_Znwm>
    80005b74:	00050a13          	mv	s4,a0
    80005b78:	00048593          	mv	a1,s1
    80005b7c:	ffffd097          	auipc	ra,0xffffd
    80005b80:	298080e7          	jalr	664(ra) # 80002e14 <_ZN6BufferC1Ei>
    80005b84:	0300006f          	j	80005bb4 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005b88:	00004517          	auipc	a0,0x4
    80005b8c:	c6050513          	addi	a0,a0,-928 # 800097e8 <_ZTV8Consumer+0xa0>
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	9e0080e7          	jalr	-1568(ra) # 80005570 <_Z11printStringPKc>
        return;
    80005b98:	0140006f          	j	80005bac <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005b9c:	00004517          	auipc	a0,0x4
    80005ba0:	c8c50513          	addi	a0,a0,-884 # 80009828 <_ZTV8Consumer+0xe0>
    80005ba4:	00000097          	auipc	ra,0x0
    80005ba8:	9cc080e7          	jalr	-1588(ra) # 80005570 <_Z11printStringPKc>
        return;
    80005bac:	000b0113          	mv	sp,s6
    80005bb0:	1680006f          	j	80005d18 <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80005bb4:	00000593          	li	a1,0
    80005bb8:	00006517          	auipc	a0,0x6
    80005bbc:	e8850513          	addi	a0,a0,-376 # 8000ba40 <_ZL10waitForAll>
    80005bc0:	ffffc097          	auipc	ra,0xffffc
    80005bc4:	bc8080e7          	jalr	-1080(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    80005bc8:	00391793          	slli	a5,s2,0x3
    80005bcc:	00f78793          	addi	a5,a5,15
    80005bd0:	ff07f793          	andi	a5,a5,-16
    80005bd4:	40f10133          	sub	sp,sp,a5
    80005bd8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80005bdc:	0019079b          	addiw	a5,s2,1
    80005be0:	00179713          	slli	a4,a5,0x1
    80005be4:	00f70733          	add	a4,a4,a5
    80005be8:	00371793          	slli	a5,a4,0x3
    80005bec:	00f78793          	addi	a5,a5,15
    80005bf0:	ff07f793          	andi	a5,a5,-16
    80005bf4:	40f10133          	sub	sp,sp,a5
    80005bf8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80005bfc:	00191713          	slli	a4,s2,0x1
    80005c00:	012706b3          	add	a3,a4,s2
    80005c04:	00369793          	slli	a5,a3,0x3
    80005c08:	00f987b3          	add	a5,s3,a5
    80005c0c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005c10:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80005c14:	00006697          	auipc	a3,0x6
    80005c18:	e2c68693          	addi	a3,a3,-468 # 8000ba40 <_ZL10waitForAll>
    80005c1c:	0006b683          	ld	a3,0(a3)
    80005c20:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80005c24:	012707b3          	add	a5,a4,s2
    80005c28:	00379613          	slli	a2,a5,0x3
    80005c2c:	00c98633          	add	a2,s3,a2
    80005c30:	00000597          	auipc	a1,0x0
    80005c34:	d6058593          	addi	a1,a1,-672 # 80005990 <_ZL8consumerPv>
    80005c38:	f9840513          	addi	a0,s0,-104
    80005c3c:	ffffc097          	auipc	ra,0xffffc
    80005c40:	a50080e7          	jalr	-1456(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005c44:	00000493          	li	s1,0
    80005c48:	0280006f          	j	80005c70 <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    80005c4c:	00000597          	auipc	a1,0x0
    80005c50:	bf858593          	addi	a1,a1,-1032 # 80005844 <_ZL16producerKeyboardPv>
                      data + i);
    80005c54:	00171793          	slli	a5,a4,0x1
    80005c58:	00e787b3          	add	a5,a5,a4
    80005c5c:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    80005c60:	00c98633          	add	a2,s3,a2
    80005c64:	ffffc097          	auipc	ra,0xffffc
    80005c68:	a28080e7          	jalr	-1496(ra) # 8000168c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005c6c:	0014849b          	addiw	s1,s1,1
    80005c70:	0524d463          	bge	s1,s2,80005cb8 <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    80005c74:	00149713          	slli	a4,s1,0x1
    80005c78:	00970733          	add	a4,a4,s1
    80005c7c:	00371793          	slli	a5,a4,0x3
    80005c80:	00f987b3          	add	a5,s3,a5
    80005c84:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005c88:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80005c8c:	00006717          	auipc	a4,0x6
    80005c90:	db470713          	addi	a4,a4,-588 # 8000ba40 <_ZL10waitForAll>
    80005c94:	00073703          	ld	a4,0(a4)
    80005c98:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80005c9c:	00048713          	mv	a4,s1
    80005ca0:	00349513          	slli	a0,s1,0x3
    80005ca4:	00aa8533          	add	a0,s5,a0
    80005ca8:	fa9052e3          	blez	s1,80005c4c <_Z22producerConsumer_C_APIv+0x1d0>
    80005cac:	00000597          	auipc	a1,0x0
    80005cb0:	c4858593          	addi	a1,a1,-952 # 800058f4 <_ZL8producerPv>
    80005cb4:	fa1ff06f          	j	80005c54 <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	a84080e7          	jalr	-1404(ra) # 8000173c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005cc0:	00000493          	li	s1,0
    80005cc4:	02994063          	blt	s2,s1,80005ce4 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    80005cc8:	00006797          	auipc	a5,0x6
    80005ccc:	d7878793          	addi	a5,a5,-648 # 8000ba40 <_ZL10waitForAll>
    80005cd0:	0007b503          	ld	a0,0(a5)
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	b9c080e7          	jalr	-1124(ra) # 80001870 <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80005cdc:	0014849b          	addiw	s1,s1,1
    80005ce0:	fe5ff06f          	j	80005cc4 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    80005ce4:	00006797          	auipc	a5,0x6
    80005ce8:	d5c78793          	addi	a5,a5,-676 # 8000ba40 <_ZL10waitForAll>
    80005cec:	0007b503          	ld	a0,0(a5)
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	b14080e7          	jalr	-1260(ra) # 80001804 <_Z9sem_closeP10_semaphore>
    delete buffer;
    80005cf8:	000a0e63          	beqz	s4,80005d14 <_Z22producerConsumer_C_APIv+0x298>
    80005cfc:	000a0513          	mv	a0,s4
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	354080e7          	jalr	852(ra) # 80003054 <_ZN6BufferD1Ev>
    80005d08:	000a0513          	mv	a0,s4
    80005d0c:	ffffc097          	auipc	ra,0xffffc
    80005d10:	074080e7          	jalr	116(ra) # 80001d80 <_ZdlPv>
    80005d14:	000b0113          	mv	sp,s6

}
    80005d18:	f9040113          	addi	sp,s0,-112
    80005d1c:	06813083          	ld	ra,104(sp)
    80005d20:	06013403          	ld	s0,96(sp)
    80005d24:	05813483          	ld	s1,88(sp)
    80005d28:	05013903          	ld	s2,80(sp)
    80005d2c:	04813983          	ld	s3,72(sp)
    80005d30:	04013a03          	ld	s4,64(sp)
    80005d34:	03813a83          	ld	s5,56(sp)
    80005d38:	03013b03          	ld	s6,48(sp)
    80005d3c:	07010113          	addi	sp,sp,112
    80005d40:	00008067          	ret
    80005d44:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80005d48:	000a0513          	mv	a0,s4
    80005d4c:	ffffc097          	auipc	ra,0xffffc
    80005d50:	034080e7          	jalr	52(ra) # 80001d80 <_ZdlPv>
    80005d54:	00048513          	mv	a0,s1
    80005d58:	00007097          	auipc	ra,0x7
    80005d5c:	df0080e7          	jalr	-528(ra) # 8000cb48 <_Unwind_Resume>

0000000080005d60 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d60:	fd010113          	addi	sp,sp,-48
    80005d64:	02113423          	sd	ra,40(sp)
    80005d68:	02813023          	sd	s0,32(sp)
    80005d6c:	00913c23          	sd	s1,24(sp)
    80005d70:	01213823          	sd	s2,16(sp)
    80005d74:	01313423          	sd	s3,8(sp)
    80005d78:	03010413          	addi	s0,sp,48
    80005d7c:	00050493          	mv	s1,a0
    80005d80:	00058993          	mv	s3,a1
    80005d84:	0015879b          	addiw	a5,a1,1
    80005d88:	0007851b          	sext.w	a0,a5
    80005d8c:	00f4a023          	sw	a5,0(s1)
    80005d90:	0004a823          	sw	zero,16(s1)
    80005d94:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d98:	00251513          	slli	a0,a0,0x2
    80005d9c:	ffffb097          	auipc	ra,0xffffb
    80005da0:	764080e7          	jalr	1892(ra) # 80001500 <_Z9mem_allocm>
    80005da4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005da8:	01000513          	li	a0,16
    80005dac:	ffffc097          	auipc	ra,0xffffc
    80005db0:	f54080e7          	jalr	-172(ra) # 80001d00 <_Znwm>
    80005db4:	00050913          	mv	s2,a0
            sem_close(myHandle);
    80005db8:	00004797          	auipc	a5,0x4
    80005dbc:	93078793          	addi	a5,a5,-1744 # 800096e8 <_ZTV9Semaphore+0x10>
    80005dc0:	00f53023          	sd	a5,0(a0)
        }
    80005dc4:	00000593          	li	a1,0
    80005dc8:	00850513          	addi	a0,a0,8
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	9bc080e7          	jalr	-1604(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    80005dd4:	00050463          	beqz	a0,80005ddc <_ZN9BufferCPPC1Ei+0x7c>
    }
    80005dd8:	00093423          	sd	zero,8(s2)
    80005ddc:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005de0:	01000513          	li	a0,16
    80005de4:	ffffc097          	auipc	ra,0xffffc
    80005de8:	f1c080e7          	jalr	-228(ra) # 80001d00 <_Znwm>
    80005dec:	00050913          	mv	s2,a0
            sem_close(myHandle);
    80005df0:	00004797          	auipc	a5,0x4
    80005df4:	8f878793          	addi	a5,a5,-1800 # 800096e8 <_ZTV9Semaphore+0x10>
    80005df8:	00f53023          	sd	a5,0(a0)
        }
    80005dfc:	00098593          	mv	a1,s3
    80005e00:	00850513          	addi	a0,a0,8
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	984080e7          	jalr	-1660(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    80005e0c:	00050463          	beqz	a0,80005e14 <_ZN9BufferCPPC1Ei+0xb4>
    }
    80005e10:	00093423          	sd	zero,8(s2)
    80005e14:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005e18:	01000513          	li	a0,16
    80005e1c:	ffffc097          	auipc	ra,0xffffc
    80005e20:	ee4080e7          	jalr	-284(ra) # 80001d00 <_Znwm>
    80005e24:	00050913          	mv	s2,a0
            sem_close(myHandle);
    80005e28:	00004797          	auipc	a5,0x4
    80005e2c:	8c078793          	addi	a5,a5,-1856 # 800096e8 <_ZTV9Semaphore+0x10>
    80005e30:	00f53023          	sd	a5,0(a0)
        }
    80005e34:	00100593          	li	a1,1
    80005e38:	00850513          	addi	a0,a0,8
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	94c080e7          	jalr	-1716(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    80005e44:	00050463          	beqz	a0,80005e4c <_ZN9BufferCPPC1Ei+0xec>
    }
    80005e48:	00093423          	sd	zero,8(s2)
    80005e4c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005e50:	01000513          	li	a0,16
    80005e54:	ffffc097          	auipc	ra,0xffffc
    80005e58:	eac080e7          	jalr	-340(ra) # 80001d00 <_Znwm>
    80005e5c:	00050913          	mv	s2,a0
            sem_close(myHandle);
    80005e60:	00004797          	auipc	a5,0x4
    80005e64:	88878793          	addi	a5,a5,-1912 # 800096e8 <_ZTV9Semaphore+0x10>
    80005e68:	00f53023          	sd	a5,0(a0)
        }
    80005e6c:	00100593          	li	a1,1
    80005e70:	00850513          	addi	a0,a0,8
    80005e74:	ffffc097          	auipc	ra,0xffffc
    80005e78:	914080e7          	jalr	-1772(ra) # 80001788 <_Z8sem_openPP10_semaphorej>
    80005e7c:	00050463          	beqz	a0,80005e84 <_ZN9BufferCPPC1Ei+0x124>
    }
    80005e80:	00093423          	sd	zero,8(s2)
    80005e84:	0324b823          	sd	s2,48(s1)
}
    80005e88:	02813083          	ld	ra,40(sp)
    80005e8c:	02013403          	ld	s0,32(sp)
    80005e90:	01813483          	ld	s1,24(sp)
    80005e94:	01013903          	ld	s2,16(sp)
    80005e98:	00813983          	ld	s3,8(sp)
    80005e9c:	03010113          	addi	sp,sp,48
    80005ea0:	00008067          	ret
    80005ea4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ea8:	00090513          	mv	a0,s2
    80005eac:	ffffc097          	auipc	ra,0xffffc
    80005eb0:	ed4080e7          	jalr	-300(ra) # 80001d80 <_ZdlPv>
    80005eb4:	00048513          	mv	a0,s1
    80005eb8:	00007097          	auipc	ra,0x7
    80005ebc:	c90080e7          	jalr	-880(ra) # 8000cb48 <_Unwind_Resume>
    80005ec0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005ec4:	00090513          	mv	a0,s2
    80005ec8:	ffffc097          	auipc	ra,0xffffc
    80005ecc:	eb8080e7          	jalr	-328(ra) # 80001d80 <_ZdlPv>
    80005ed0:	00048513          	mv	a0,s1
    80005ed4:	00007097          	auipc	ra,0x7
    80005ed8:	c74080e7          	jalr	-908(ra) # 8000cb48 <_Unwind_Resume>
    80005edc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005ee0:	00090513          	mv	a0,s2
    80005ee4:	ffffc097          	auipc	ra,0xffffc
    80005ee8:	e9c080e7          	jalr	-356(ra) # 80001d80 <_ZdlPv>
    80005eec:	00048513          	mv	a0,s1
    80005ef0:	00007097          	auipc	ra,0x7
    80005ef4:	c58080e7          	jalr	-936(ra) # 8000cb48 <_Unwind_Resume>
    80005ef8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005efc:	00090513          	mv	a0,s2
    80005f00:	ffffc097          	auipc	ra,0xffffc
    80005f04:	e80080e7          	jalr	-384(ra) # 80001d80 <_ZdlPv>
    80005f08:	00048513          	mv	a0,s1
    80005f0c:	00007097          	auipc	ra,0x7
    80005f10:	c3c080e7          	jalr	-964(ra) # 8000cb48 <_Unwind_Resume>

0000000080005f14 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005f14:	fe010113          	addi	sp,sp,-32
    80005f18:	00113c23          	sd	ra,24(sp)
    80005f1c:	00813823          	sd	s0,16(sp)
    80005f20:	00913423          	sd	s1,8(sp)
    80005f24:	01213023          	sd	s2,0(sp)
    80005f28:	02010413          	addi	s0,sp,32
    80005f2c:	00050493          	mv	s1,a0
    80005f30:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005f34:	01853783          	ld	a5,24(a0)
            return -1;
    80005f38:	0087b503          	ld	a0,8(a5)
    80005f3c:	00050663          	beqz	a0,80005f48 <_ZN9BufferCPP3putEi+0x34>
    }
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	930080e7          	jalr	-1744(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    80005f48:	0304b783          	ld	a5,48(s1)
            return -1;
    80005f4c:	0087b503          	ld	a0,8(a5)
    80005f50:	00050663          	beqz	a0,80005f5c <_ZN9BufferCPP3putEi+0x48>
    }
    80005f54:	ffffc097          	auipc	ra,0xffffc
    80005f58:	91c080e7          	jalr	-1764(ra) # 80001870 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80005f5c:	0084b783          	ld	a5,8(s1)
    80005f60:	0144a703          	lw	a4,20(s1)
    80005f64:	00271713          	slli	a4,a4,0x2
    80005f68:	00e787b3          	add	a5,a5,a4
    80005f6c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005f70:	0144a783          	lw	a5,20(s1)
    80005f74:	0017879b          	addiw	a5,a5,1
    80005f78:	0004a703          	lw	a4,0(s1)
    80005f7c:	02e7e7bb          	remw	a5,a5,a4
    80005f80:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005f84:	0304b783          	ld	a5,48(s1)
    sem_t myHandle;
    80005f88:	0087b503          	ld	a0,8(a5)
    80005f8c:	00050663          	beqz	a0,80005f98 <_ZN9BufferCPP3putEi+0x84>
class PeriodicThread : public Thread {
    80005f90:	ffffc097          	auipc	ra,0xffffc
    80005f94:	94c080e7          	jalr	-1716(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    80005f98:	0204b783          	ld	a5,32(s1)
    sem_t myHandle;
    80005f9c:	0087b503          	ld	a0,8(a5)
    80005fa0:	00050663          	beqz	a0,80005fac <_ZN9BufferCPP3putEi+0x98>
class PeriodicThread : public Thread {
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	938080e7          	jalr	-1736(ra) # 800018dc <_Z10sem_signalP10_semaphore>

}
    80005fac:	01813083          	ld	ra,24(sp)
    80005fb0:	01013403          	ld	s0,16(sp)
    80005fb4:	00813483          	ld	s1,8(sp)
    80005fb8:	00013903          	ld	s2,0(sp)
    80005fbc:	02010113          	addi	sp,sp,32
    80005fc0:	00008067          	ret

0000000080005fc4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005fc4:	fe010113          	addi	sp,sp,-32
    80005fc8:	00113c23          	sd	ra,24(sp)
    80005fcc:	00813823          	sd	s0,16(sp)
    80005fd0:	00913423          	sd	s1,8(sp)
    80005fd4:	01213023          	sd	s2,0(sp)
    80005fd8:	02010413          	addi	s0,sp,32
    80005fdc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005fe0:	02053783          	ld	a5,32(a0)
            return -1;
    80005fe4:	0087b503          	ld	a0,8(a5)
    80005fe8:	00050663          	beqz	a0,80005ff4 <_ZN9BufferCPP3getEv+0x30>
    }
    80005fec:	ffffc097          	auipc	ra,0xffffc
    80005ff0:	884080e7          	jalr	-1916(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    80005ff4:	0284b783          	ld	a5,40(s1)
            return -1;
    80005ff8:	0087b503          	ld	a0,8(a5)
    80005ffc:	00050663          	beqz	a0,80006008 <_ZN9BufferCPP3getEv+0x44>
    }
    80006000:	ffffc097          	auipc	ra,0xffffc
    80006004:	870080e7          	jalr	-1936(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80006008:	0084b703          	ld	a4,8(s1)
    8000600c:	0104a783          	lw	a5,16(s1)
    80006010:	00279693          	slli	a3,a5,0x2
    80006014:	00d70733          	add	a4,a4,a3
    80006018:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000601c:	0017879b          	addiw	a5,a5,1
    80006020:	0004a703          	lw	a4,0(s1)
    80006024:	02e7e7bb          	remw	a5,a5,a4
    80006028:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000602c:	0284b783          	ld	a5,40(s1)
    sem_t myHandle;
    80006030:	0087b503          	ld	a0,8(a5)
    80006034:	00050663          	beqz	a0,80006040 <_ZN9BufferCPP3getEv+0x7c>
class PeriodicThread : public Thread {
    80006038:	ffffc097          	auipc	ra,0xffffc
    8000603c:	8a4080e7          	jalr	-1884(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    80006040:	0184b783          	ld	a5,24(s1)
    sem_t myHandle;
    80006044:	0087b503          	ld	a0,8(a5)
    80006048:	00050663          	beqz	a0,80006054 <_ZN9BufferCPP3getEv+0x90>
class PeriodicThread : public Thread {
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	890080e7          	jalr	-1904(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    return ret;
}
    80006054:	00090513          	mv	a0,s2
    80006058:	01813083          	ld	ra,24(sp)
    8000605c:	01013403          	ld	s0,16(sp)
    80006060:	00813483          	ld	s1,8(sp)
    80006064:	00013903          	ld	s2,0(sp)
    80006068:	02010113          	addi	sp,sp,32
    8000606c:	00008067          	ret

0000000080006070 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006070:	fe010113          	addi	sp,sp,-32
    80006074:	00113c23          	sd	ra,24(sp)
    80006078:	00813823          	sd	s0,16(sp)
    8000607c:	00913423          	sd	s1,8(sp)
    80006080:	01213023          	sd	s2,0(sp)
    80006084:	02010413          	addi	s0,sp,32
    80006088:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000608c:	02853783          	ld	a5,40(a0)
            return -1;
    80006090:	0087b503          	ld	a0,8(a5)
    80006094:	00050663          	beqz	a0,800060a0 <_ZN9BufferCPP6getCntEv+0x30>
    }
    80006098:	ffffb097          	auipc	ra,0xffffb
    8000609c:	7d8080e7          	jalr	2008(ra) # 80001870 <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    800060a0:	0304b783          	ld	a5,48(s1)
            return -1;
    800060a4:	0087b503          	ld	a0,8(a5)
    800060a8:	00050663          	beqz	a0,800060b4 <_ZN9BufferCPP6getCntEv+0x44>
    }
    800060ac:	ffffb097          	auipc	ra,0xffffb
    800060b0:	7c4080e7          	jalr	1988(ra) # 80001870 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    800060b4:	0144a783          	lw	a5,20(s1)
    800060b8:	0104a903          	lw	s2,16(s1)
    800060bc:	0527c663          	blt	a5,s2,80006108 <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    800060c0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800060c4:	0304b783          	ld	a5,48(s1)
    sem_t myHandle;
    800060c8:	0087b503          	ld	a0,8(a5)
    800060cc:	00050663          	beqz	a0,800060d8 <_ZN9BufferCPP6getCntEv+0x68>
class PeriodicThread : public Thread {
    800060d0:	ffffc097          	auipc	ra,0xffffc
    800060d4:	80c080e7          	jalr	-2036(ra) # 800018dc <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    800060d8:	0284b783          	ld	a5,40(s1)
    sem_t myHandle;
    800060dc:	0087b503          	ld	a0,8(a5)
    800060e0:	00050663          	beqz	a0,800060ec <_ZN9BufferCPP6getCntEv+0x7c>
class PeriodicThread : public Thread {
    800060e4:	ffffb097          	auipc	ra,0xffffb
    800060e8:	7f8080e7          	jalr	2040(ra) # 800018dc <_Z10sem_signalP10_semaphore>

    return ret;
}
    800060ec:	00090513          	mv	a0,s2
    800060f0:	01813083          	ld	ra,24(sp)
    800060f4:	01013403          	ld	s0,16(sp)
    800060f8:	00813483          	ld	s1,8(sp)
    800060fc:	00013903          	ld	s2,0(sp)
    80006100:	02010113          	addi	sp,sp,32
    80006104:	00008067          	ret
        ret = cap - head + tail;
    80006108:	0004a703          	lw	a4,0(s1)
    8000610c:	4127093b          	subw	s2,a4,s2
    80006110:	00f9093b          	addw	s2,s2,a5
    80006114:	fb1ff06f          	j	800060c4 <_ZN9BufferCPP6getCntEv+0x54>

0000000080006118 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006118:	fe010113          	addi	sp,sp,-32
    8000611c:	00113c23          	sd	ra,24(sp)
    80006120:	00813823          	sd	s0,16(sp)
    80006124:	00913423          	sd	s1,8(sp)
    80006128:	02010413          	addi	s0,sp,32
    8000612c:	00050493          	mv	s1,a0
    80006130:	00a00513          	li	a0,10
    80006134:	00002097          	auipc	ra,0x2
    80006138:	1a8080e7          	jalr	424(ra) # 800082dc <__putc>
    printString("Buffer deleted!\n");
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	55c50513          	addi	a0,a0,1372 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x420>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	42c080e7          	jalr	1068(ra) # 80005570 <_Z11printStringPKc>
    while (getCnt()) {
    8000614c:	00048513          	mv	a0,s1
    80006150:	00000097          	auipc	ra,0x0
    80006154:	f20080e7          	jalr	-224(ra) # 80006070 <_ZN9BufferCPP6getCntEv>
    80006158:	02050c63          	beqz	a0,80006190 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000615c:	0084b783          	ld	a5,8(s1)
    80006160:	0104a703          	lw	a4,16(s1)
    80006164:	00271713          	slli	a4,a4,0x2
    80006168:	00e787b3          	add	a5,a5,a4
    8000616c:	0007c503          	lbu	a0,0(a5)
    80006170:	00002097          	auipc	ra,0x2
    80006174:	16c080e7          	jalr	364(ra) # 800082dc <__putc>
        head = (head + 1) % cap;
    80006178:	0104a783          	lw	a5,16(s1)
    8000617c:	0017879b          	addiw	a5,a5,1
    80006180:	0004a703          	lw	a4,0(s1)
    80006184:	02e7e7bb          	remw	a5,a5,a4
    80006188:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000618c:	fc1ff06f          	j	8000614c <_ZN9BufferCPPD1Ev+0x34>
    80006190:	02100513          	li	a0,33
    80006194:	00002097          	auipc	ra,0x2
    80006198:	148080e7          	jalr	328(ra) # 800082dc <__putc>
    8000619c:	00a00513          	li	a0,10
    800061a0:	00002097          	auipc	ra,0x2
    800061a4:	13c080e7          	jalr	316(ra) # 800082dc <__putc>
    mem_free(buffer);
    800061a8:	0084b503          	ld	a0,8(s1)
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	3bc080e7          	jalr	956(ra) # 80001568 <_Z8mem_freePv>
    delete itemAvailable;
    800061b4:	0204b503          	ld	a0,32(s1)
    800061b8:	00050863          	beqz	a0,800061c8 <_ZN9BufferCPPD1Ev+0xb0>
    800061bc:	00053783          	ld	a5,0(a0)
    800061c0:	0087b783          	ld	a5,8(a5)
    800061c4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800061c8:	0184b503          	ld	a0,24(s1)
    800061cc:	00050863          	beqz	a0,800061dc <_ZN9BufferCPPD1Ev+0xc4>
    800061d0:	00053783          	ld	a5,0(a0)
    800061d4:	0087b783          	ld	a5,8(a5)
    800061d8:	000780e7          	jalr	a5
    delete mutexTail;
    800061dc:	0304b503          	ld	a0,48(s1)
    800061e0:	00050863          	beqz	a0,800061f0 <_ZN9BufferCPPD1Ev+0xd8>
    800061e4:	00053783          	ld	a5,0(a0)
    800061e8:	0087b783          	ld	a5,8(a5)
    800061ec:	000780e7          	jalr	a5
    delete mutexHead;
    800061f0:	0284b503          	ld	a0,40(s1)
    800061f4:	00050863          	beqz	a0,80006204 <_ZN9BufferCPPD1Ev+0xec>
    800061f8:	00053783          	ld	a5,0(a0)
    800061fc:	0087b783          	ld	a5,8(a5)
    80006200:	000780e7          	jalr	a5
}
    80006204:	01813083          	ld	ra,24(sp)
    80006208:	01013403          	ld	s0,16(sp)
    8000620c:	00813483          	ld	s1,8(sp)
    80006210:	02010113          	addi	sp,sp,32
    80006214:	00008067          	ret

0000000080006218 <start>:
    80006218:	ff010113          	addi	sp,sp,-16
    8000621c:	00813423          	sd	s0,8(sp)
    80006220:	01010413          	addi	s0,sp,16
    80006224:	300027f3          	csrr	a5,mstatus
    80006228:	ffffe737          	lui	a4,0xffffe
    8000622c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1b1f>
    80006230:	00e7f7b3          	and	a5,a5,a4
    80006234:	00001737          	lui	a4,0x1
    80006238:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000623c:	00e7e7b3          	or	a5,a5,a4
    80006240:	30079073          	csrw	mstatus,a5
    80006244:	00000797          	auipc	a5,0x0
    80006248:	16078793          	addi	a5,a5,352 # 800063a4 <system_main>
    8000624c:	34179073          	csrw	mepc,a5
    80006250:	00000793          	li	a5,0
    80006254:	18079073          	csrw	satp,a5
    80006258:	000107b7          	lui	a5,0x10
    8000625c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006260:	30279073          	csrw	medeleg,a5
    80006264:	30379073          	csrw	mideleg,a5
    80006268:	104027f3          	csrr	a5,sie
    8000626c:	2227e793          	ori	a5,a5,546
    80006270:	10479073          	csrw	sie,a5
    80006274:	fff00793          	li	a5,-1
    80006278:	00a7d793          	srli	a5,a5,0xa
    8000627c:	3b079073          	csrw	pmpaddr0,a5
    80006280:	00f00793          	li	a5,15
    80006284:	3a079073          	csrw	pmpcfg0,a5
    80006288:	f14027f3          	csrr	a5,mhartid
    8000628c:	0200c737          	lui	a4,0x200c
    80006290:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006294:	0007869b          	sext.w	a3,a5
    80006298:	00269713          	slli	a4,a3,0x2
    8000629c:	000f4637          	lui	a2,0xf4
    800062a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800062a4:	00d70733          	add	a4,a4,a3
    800062a8:	0037979b          	slliw	a5,a5,0x3
    800062ac:	020046b7          	lui	a3,0x2004
    800062b0:	00d787b3          	add	a5,a5,a3
    800062b4:	00c585b3          	add	a1,a1,a2
    800062b8:	00371693          	slli	a3,a4,0x3
    800062bc:	00005717          	auipc	a4,0x5
    800062c0:	7c470713          	addi	a4,a4,1988 # 8000ba80 <timer_scratch>
    800062c4:	00b7b023          	sd	a1,0(a5)
    800062c8:	00d70733          	add	a4,a4,a3
    800062cc:	00f73c23          	sd	a5,24(a4)
    800062d0:	02c73023          	sd	a2,32(a4)
    800062d4:	34071073          	csrw	mscratch,a4
    800062d8:	00000797          	auipc	a5,0x0
    800062dc:	6e878793          	addi	a5,a5,1768 # 800069c0 <timervec>
    800062e0:	30579073          	csrw	mtvec,a5
    800062e4:	300027f3          	csrr	a5,mstatus
    800062e8:	0087e793          	ori	a5,a5,8
    800062ec:	30079073          	csrw	mstatus,a5
    800062f0:	304027f3          	csrr	a5,mie
    800062f4:	0807e793          	ori	a5,a5,128
    800062f8:	30479073          	csrw	mie,a5
    800062fc:	f14027f3          	csrr	a5,mhartid
    80006300:	0007879b          	sext.w	a5,a5
    80006304:	00078213          	mv	tp,a5
    80006308:	30200073          	mret
    8000630c:	00813403          	ld	s0,8(sp)
    80006310:	01010113          	addi	sp,sp,16
    80006314:	00008067          	ret

0000000080006318 <timerinit>:
    80006318:	ff010113          	addi	sp,sp,-16
    8000631c:	00813423          	sd	s0,8(sp)
    80006320:	01010413          	addi	s0,sp,16
    80006324:	f14027f3          	csrr	a5,mhartid
    80006328:	0200c737          	lui	a4,0x200c
    8000632c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006330:	0007869b          	sext.w	a3,a5
    80006334:	00269713          	slli	a4,a3,0x2
    80006338:	000f4637          	lui	a2,0xf4
    8000633c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006340:	00d70733          	add	a4,a4,a3
    80006344:	0037979b          	slliw	a5,a5,0x3
    80006348:	020046b7          	lui	a3,0x2004
    8000634c:	00d787b3          	add	a5,a5,a3
    80006350:	00c585b3          	add	a1,a1,a2
    80006354:	00371693          	slli	a3,a4,0x3
    80006358:	00005717          	auipc	a4,0x5
    8000635c:	72870713          	addi	a4,a4,1832 # 8000ba80 <timer_scratch>
    80006360:	00b7b023          	sd	a1,0(a5)
    80006364:	00d70733          	add	a4,a4,a3
    80006368:	00f73c23          	sd	a5,24(a4)
    8000636c:	02c73023          	sd	a2,32(a4)
    80006370:	34071073          	csrw	mscratch,a4
    80006374:	00000797          	auipc	a5,0x0
    80006378:	64c78793          	addi	a5,a5,1612 # 800069c0 <timervec>
    8000637c:	30579073          	csrw	mtvec,a5
    80006380:	300027f3          	csrr	a5,mstatus
    80006384:	0087e793          	ori	a5,a5,8
    80006388:	30079073          	csrw	mstatus,a5
    8000638c:	304027f3          	csrr	a5,mie
    80006390:	0807e793          	ori	a5,a5,128
    80006394:	30479073          	csrw	mie,a5
    80006398:	00813403          	ld	s0,8(sp)
    8000639c:	01010113          	addi	sp,sp,16
    800063a0:	00008067          	ret

00000000800063a4 <system_main>:
    800063a4:	fe010113          	addi	sp,sp,-32
    800063a8:	00813823          	sd	s0,16(sp)
    800063ac:	00913423          	sd	s1,8(sp)
    800063b0:	00113c23          	sd	ra,24(sp)
    800063b4:	02010413          	addi	s0,sp,32
    800063b8:	00000097          	auipc	ra,0x0
    800063bc:	0c4080e7          	jalr	196(ra) # 8000647c <cpuid>
    800063c0:	00005497          	auipc	s1,0x5
    800063c4:	68848493          	addi	s1,s1,1672 # 8000ba48 <started>
    800063c8:	02050263          	beqz	a0,800063ec <system_main+0x48>
    800063cc:	0004a783          	lw	a5,0(s1)
    800063d0:	0007879b          	sext.w	a5,a5
    800063d4:	fe078ce3          	beqz	a5,800063cc <system_main+0x28>
    800063d8:	0ff0000f          	fence
    800063dc:	00004517          	auipc	a0,0x4
    800063e0:	87450513          	addi	a0,a0,-1932 # 80009c50 <_ZTV12ConsumerSync+0x68>
    800063e4:	00001097          	auipc	ra,0x1
    800063e8:	a78080e7          	jalr	-1416(ra) # 80006e5c <panic>
    800063ec:	00001097          	auipc	ra,0x1
    800063f0:	9cc080e7          	jalr	-1588(ra) # 80006db8 <consoleinit>
    800063f4:	00001097          	auipc	ra,0x1
    800063f8:	158080e7          	jalr	344(ra) # 8000754c <printfinit>
    800063fc:	00003517          	auipc	a0,0x3
    80006400:	f2450513          	addi	a0,a0,-220 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006404:	00001097          	auipc	ra,0x1
    80006408:	ab4080e7          	jalr	-1356(ra) # 80006eb8 <__printf>
    8000640c:	00004517          	auipc	a0,0x4
    80006410:	81450513          	addi	a0,a0,-2028 # 80009c20 <_ZTV12ConsumerSync+0x38>
    80006414:	00001097          	auipc	ra,0x1
    80006418:	aa4080e7          	jalr	-1372(ra) # 80006eb8 <__printf>
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	f0450513          	addi	a0,a0,-252 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006424:	00001097          	auipc	ra,0x1
    80006428:	a94080e7          	jalr	-1388(ra) # 80006eb8 <__printf>
    8000642c:	00001097          	auipc	ra,0x1
    80006430:	4ac080e7          	jalr	1196(ra) # 800078d8 <kinit>
    80006434:	00000097          	auipc	ra,0x0
    80006438:	148080e7          	jalr	328(ra) # 8000657c <trapinit>
    8000643c:	00000097          	auipc	ra,0x0
    80006440:	16c080e7          	jalr	364(ra) # 800065a8 <trapinithart>
    80006444:	00000097          	auipc	ra,0x0
    80006448:	5bc080e7          	jalr	1468(ra) # 80006a00 <plicinit>
    8000644c:	00000097          	auipc	ra,0x0
    80006450:	5dc080e7          	jalr	1500(ra) # 80006a28 <plicinithart>
    80006454:	00000097          	auipc	ra,0x0
    80006458:	078080e7          	jalr	120(ra) # 800064cc <userinit>
    8000645c:	0ff0000f          	fence
    80006460:	00100793          	li	a5,1
    80006464:	00003517          	auipc	a0,0x3
    80006468:	7d450513          	addi	a0,a0,2004 # 80009c38 <_ZTV12ConsumerSync+0x50>
    8000646c:	00f4a023          	sw	a5,0(s1)
    80006470:	00001097          	auipc	ra,0x1
    80006474:	a48080e7          	jalr	-1464(ra) # 80006eb8 <__printf>
    80006478:	0000006f          	j	80006478 <system_main+0xd4>

000000008000647c <cpuid>:
    8000647c:	ff010113          	addi	sp,sp,-16
    80006480:	00813423          	sd	s0,8(sp)
    80006484:	01010413          	addi	s0,sp,16
    80006488:	00020513          	mv	a0,tp
    8000648c:	00813403          	ld	s0,8(sp)
    80006490:	0005051b          	sext.w	a0,a0
    80006494:	01010113          	addi	sp,sp,16
    80006498:	00008067          	ret

000000008000649c <mycpu>:
    8000649c:	ff010113          	addi	sp,sp,-16
    800064a0:	00813423          	sd	s0,8(sp)
    800064a4:	01010413          	addi	s0,sp,16
    800064a8:	00020793          	mv	a5,tp
    800064ac:	00813403          	ld	s0,8(sp)
    800064b0:	0007879b          	sext.w	a5,a5
    800064b4:	00779793          	slli	a5,a5,0x7
    800064b8:	00006517          	auipc	a0,0x6
    800064bc:	5f850513          	addi	a0,a0,1528 # 8000cab0 <cpus>
    800064c0:	00f50533          	add	a0,a0,a5
    800064c4:	01010113          	addi	sp,sp,16
    800064c8:	00008067          	ret

00000000800064cc <userinit>:
    800064cc:	ff010113          	addi	sp,sp,-16
    800064d0:	00813423          	sd	s0,8(sp)
    800064d4:	01010413          	addi	s0,sp,16
    800064d8:	00813403          	ld	s0,8(sp)
    800064dc:	01010113          	addi	sp,sp,16
    800064e0:	ffffc317          	auipc	t1,0xffffc
    800064e4:	b3830067          	jr	-1224(t1) # 80002018 <main>

00000000800064e8 <either_copyout>:
    800064e8:	ff010113          	addi	sp,sp,-16
    800064ec:	00813023          	sd	s0,0(sp)
    800064f0:	00113423          	sd	ra,8(sp)
    800064f4:	01010413          	addi	s0,sp,16
    800064f8:	02051663          	bnez	a0,80006524 <either_copyout+0x3c>
    800064fc:	00058513          	mv	a0,a1
    80006500:	00060593          	mv	a1,a2
    80006504:	0006861b          	sext.w	a2,a3
    80006508:	00002097          	auipc	ra,0x2
    8000650c:	c5c080e7          	jalr	-932(ra) # 80008164 <__memmove>
    80006510:	00813083          	ld	ra,8(sp)
    80006514:	00013403          	ld	s0,0(sp)
    80006518:	00000513          	li	a0,0
    8000651c:	01010113          	addi	sp,sp,16
    80006520:	00008067          	ret
    80006524:	00003517          	auipc	a0,0x3
    80006528:	75450513          	addi	a0,a0,1876 # 80009c78 <_ZTV12ConsumerSync+0x90>
    8000652c:	00001097          	auipc	ra,0x1
    80006530:	930080e7          	jalr	-1744(ra) # 80006e5c <panic>

0000000080006534 <either_copyin>:
    80006534:	ff010113          	addi	sp,sp,-16
    80006538:	00813023          	sd	s0,0(sp)
    8000653c:	00113423          	sd	ra,8(sp)
    80006540:	01010413          	addi	s0,sp,16
    80006544:	02059463          	bnez	a1,8000656c <either_copyin+0x38>
    80006548:	00060593          	mv	a1,a2
    8000654c:	0006861b          	sext.w	a2,a3
    80006550:	00002097          	auipc	ra,0x2
    80006554:	c14080e7          	jalr	-1004(ra) # 80008164 <__memmove>
    80006558:	00813083          	ld	ra,8(sp)
    8000655c:	00013403          	ld	s0,0(sp)
    80006560:	00000513          	li	a0,0
    80006564:	01010113          	addi	sp,sp,16
    80006568:	00008067          	ret
    8000656c:	00003517          	auipc	a0,0x3
    80006570:	73450513          	addi	a0,a0,1844 # 80009ca0 <_ZTV12ConsumerSync+0xb8>
    80006574:	00001097          	auipc	ra,0x1
    80006578:	8e8080e7          	jalr	-1816(ra) # 80006e5c <panic>

000000008000657c <trapinit>:
    8000657c:	ff010113          	addi	sp,sp,-16
    80006580:	00813423          	sd	s0,8(sp)
    80006584:	01010413          	addi	s0,sp,16
    80006588:	00813403          	ld	s0,8(sp)
    8000658c:	00003597          	auipc	a1,0x3
    80006590:	73c58593          	addi	a1,a1,1852 # 80009cc8 <_ZTV12ConsumerSync+0xe0>
    80006594:	00006517          	auipc	a0,0x6
    80006598:	59c50513          	addi	a0,a0,1436 # 8000cb30 <tickslock>
    8000659c:	01010113          	addi	sp,sp,16
    800065a0:	00001317          	auipc	t1,0x1
    800065a4:	5c830067          	jr	1480(t1) # 80007b68 <initlock>

00000000800065a8 <trapinithart>:
    800065a8:	ff010113          	addi	sp,sp,-16
    800065ac:	00813423          	sd	s0,8(sp)
    800065b0:	01010413          	addi	s0,sp,16
    800065b4:	00000797          	auipc	a5,0x0
    800065b8:	2fc78793          	addi	a5,a5,764 # 800068b0 <kernelvec>
    800065bc:	10579073          	csrw	stvec,a5
    800065c0:	00813403          	ld	s0,8(sp)
    800065c4:	01010113          	addi	sp,sp,16
    800065c8:	00008067          	ret

00000000800065cc <usertrap>:
    800065cc:	ff010113          	addi	sp,sp,-16
    800065d0:	00813423          	sd	s0,8(sp)
    800065d4:	01010413          	addi	s0,sp,16
    800065d8:	00813403          	ld	s0,8(sp)
    800065dc:	01010113          	addi	sp,sp,16
    800065e0:	00008067          	ret

00000000800065e4 <usertrapret>:
    800065e4:	ff010113          	addi	sp,sp,-16
    800065e8:	00813423          	sd	s0,8(sp)
    800065ec:	01010413          	addi	s0,sp,16
    800065f0:	00813403          	ld	s0,8(sp)
    800065f4:	01010113          	addi	sp,sp,16
    800065f8:	00008067          	ret

00000000800065fc <kerneltrap>:
    800065fc:	fe010113          	addi	sp,sp,-32
    80006600:	00813823          	sd	s0,16(sp)
    80006604:	00113c23          	sd	ra,24(sp)
    80006608:	00913423          	sd	s1,8(sp)
    8000660c:	02010413          	addi	s0,sp,32
    80006610:	142025f3          	csrr	a1,scause
    80006614:	100027f3          	csrr	a5,sstatus
    80006618:	0027f793          	andi	a5,a5,2
    8000661c:	10079c63          	bnez	a5,80006734 <kerneltrap+0x138>
    80006620:	142027f3          	csrr	a5,scause
    80006624:	0207ce63          	bltz	a5,80006660 <kerneltrap+0x64>
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	6e850513          	addi	a0,a0,1768 # 80009d10 <_ZTV12ConsumerSync+0x128>
    80006630:	00001097          	auipc	ra,0x1
    80006634:	888080e7          	jalr	-1912(ra) # 80006eb8 <__printf>
    80006638:	141025f3          	csrr	a1,sepc
    8000663c:	14302673          	csrr	a2,stval
    80006640:	00003517          	auipc	a0,0x3
    80006644:	6e050513          	addi	a0,a0,1760 # 80009d20 <_ZTV12ConsumerSync+0x138>
    80006648:	00001097          	auipc	ra,0x1
    8000664c:	870080e7          	jalr	-1936(ra) # 80006eb8 <__printf>
    80006650:	00003517          	auipc	a0,0x3
    80006654:	6e850513          	addi	a0,a0,1768 # 80009d38 <_ZTV12ConsumerSync+0x150>
    80006658:	00001097          	auipc	ra,0x1
    8000665c:	804080e7          	jalr	-2044(ra) # 80006e5c <panic>
    80006660:	0ff7f713          	andi	a4,a5,255
    80006664:	00900693          	li	a3,9
    80006668:	04d70063          	beq	a4,a3,800066a8 <kerneltrap+0xac>
    8000666c:	fff00713          	li	a4,-1
    80006670:	03f71713          	slli	a4,a4,0x3f
    80006674:	00170713          	addi	a4,a4,1
    80006678:	fae798e3          	bne	a5,a4,80006628 <kerneltrap+0x2c>
    8000667c:	00000097          	auipc	ra,0x0
    80006680:	e00080e7          	jalr	-512(ra) # 8000647c <cpuid>
    80006684:	06050663          	beqz	a0,800066f0 <kerneltrap+0xf4>
    80006688:	144027f3          	csrr	a5,sip
    8000668c:	ffd7f793          	andi	a5,a5,-3
    80006690:	14479073          	csrw	sip,a5
    80006694:	01813083          	ld	ra,24(sp)
    80006698:	01013403          	ld	s0,16(sp)
    8000669c:	00813483          	ld	s1,8(sp)
    800066a0:	02010113          	addi	sp,sp,32
    800066a4:	00008067          	ret
    800066a8:	00000097          	auipc	ra,0x0
    800066ac:	3cc080e7          	jalr	972(ra) # 80006a74 <plic_claim>
    800066b0:	00a00793          	li	a5,10
    800066b4:	00050493          	mv	s1,a0
    800066b8:	06f50863          	beq	a0,a5,80006728 <kerneltrap+0x12c>
    800066bc:	fc050ce3          	beqz	a0,80006694 <kerneltrap+0x98>
    800066c0:	00050593          	mv	a1,a0
    800066c4:	00003517          	auipc	a0,0x3
    800066c8:	62c50513          	addi	a0,a0,1580 # 80009cf0 <_ZTV12ConsumerSync+0x108>
    800066cc:	00000097          	auipc	ra,0x0
    800066d0:	7ec080e7          	jalr	2028(ra) # 80006eb8 <__printf>
    800066d4:	01013403          	ld	s0,16(sp)
    800066d8:	01813083          	ld	ra,24(sp)
    800066dc:	00048513          	mv	a0,s1
    800066e0:	00813483          	ld	s1,8(sp)
    800066e4:	02010113          	addi	sp,sp,32
    800066e8:	00000317          	auipc	t1,0x0
    800066ec:	3c430067          	jr	964(t1) # 80006aac <plic_complete>
    800066f0:	00006517          	auipc	a0,0x6
    800066f4:	44050513          	addi	a0,a0,1088 # 8000cb30 <tickslock>
    800066f8:	00001097          	auipc	ra,0x1
    800066fc:	494080e7          	jalr	1172(ra) # 80007b8c <acquire>
    80006700:	00005717          	auipc	a4,0x5
    80006704:	34c70713          	addi	a4,a4,844 # 8000ba4c <ticks>
    80006708:	00072783          	lw	a5,0(a4)
    8000670c:	00006517          	auipc	a0,0x6
    80006710:	42450513          	addi	a0,a0,1060 # 8000cb30 <tickslock>
    80006714:	0017879b          	addiw	a5,a5,1
    80006718:	00f72023          	sw	a5,0(a4)
    8000671c:	00001097          	auipc	ra,0x1
    80006720:	53c080e7          	jalr	1340(ra) # 80007c58 <release>
    80006724:	f65ff06f          	j	80006688 <kerneltrap+0x8c>
    80006728:	00001097          	auipc	ra,0x1
    8000672c:	098080e7          	jalr	152(ra) # 800077c0 <uartintr>
    80006730:	fa5ff06f          	j	800066d4 <kerneltrap+0xd8>
    80006734:	00003517          	auipc	a0,0x3
    80006738:	59c50513          	addi	a0,a0,1436 # 80009cd0 <_ZTV12ConsumerSync+0xe8>
    8000673c:	00000097          	auipc	ra,0x0
    80006740:	720080e7          	jalr	1824(ra) # 80006e5c <panic>

0000000080006744 <clockintr>:
    80006744:	fe010113          	addi	sp,sp,-32
    80006748:	00813823          	sd	s0,16(sp)
    8000674c:	00913423          	sd	s1,8(sp)
    80006750:	00113c23          	sd	ra,24(sp)
    80006754:	02010413          	addi	s0,sp,32
    80006758:	00006497          	auipc	s1,0x6
    8000675c:	3d848493          	addi	s1,s1,984 # 8000cb30 <tickslock>
    80006760:	00048513          	mv	a0,s1
    80006764:	00001097          	auipc	ra,0x1
    80006768:	428080e7          	jalr	1064(ra) # 80007b8c <acquire>
    8000676c:	00005717          	auipc	a4,0x5
    80006770:	2e070713          	addi	a4,a4,736 # 8000ba4c <ticks>
    80006774:	00072783          	lw	a5,0(a4)
    80006778:	01013403          	ld	s0,16(sp)
    8000677c:	01813083          	ld	ra,24(sp)
    80006780:	00048513          	mv	a0,s1
    80006784:	0017879b          	addiw	a5,a5,1
    80006788:	00813483          	ld	s1,8(sp)
    8000678c:	00f72023          	sw	a5,0(a4)
    80006790:	02010113          	addi	sp,sp,32
    80006794:	00001317          	auipc	t1,0x1
    80006798:	4c430067          	jr	1220(t1) # 80007c58 <release>

000000008000679c <devintr>:
    8000679c:	142027f3          	csrr	a5,scause
    800067a0:	00000513          	li	a0,0
    800067a4:	0007c463          	bltz	a5,800067ac <devintr+0x10>
    800067a8:	00008067          	ret
    800067ac:	fe010113          	addi	sp,sp,-32
    800067b0:	00813823          	sd	s0,16(sp)
    800067b4:	00113c23          	sd	ra,24(sp)
    800067b8:	00913423          	sd	s1,8(sp)
    800067bc:	02010413          	addi	s0,sp,32
    800067c0:	0ff7f713          	andi	a4,a5,255
    800067c4:	00900693          	li	a3,9
    800067c8:	04d70c63          	beq	a4,a3,80006820 <devintr+0x84>
    800067cc:	fff00713          	li	a4,-1
    800067d0:	03f71713          	slli	a4,a4,0x3f
    800067d4:	00170713          	addi	a4,a4,1
    800067d8:	00e78c63          	beq	a5,a4,800067f0 <devintr+0x54>
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	00813483          	ld	s1,8(sp)
    800067e8:	02010113          	addi	sp,sp,32
    800067ec:	00008067          	ret
    800067f0:	00000097          	auipc	ra,0x0
    800067f4:	c8c080e7          	jalr	-884(ra) # 8000647c <cpuid>
    800067f8:	06050663          	beqz	a0,80006864 <devintr+0xc8>
    800067fc:	144027f3          	csrr	a5,sip
    80006800:	ffd7f793          	andi	a5,a5,-3
    80006804:	14479073          	csrw	sip,a5
    80006808:	01813083          	ld	ra,24(sp)
    8000680c:	01013403          	ld	s0,16(sp)
    80006810:	00813483          	ld	s1,8(sp)
    80006814:	00200513          	li	a0,2
    80006818:	02010113          	addi	sp,sp,32
    8000681c:	00008067          	ret
    80006820:	00000097          	auipc	ra,0x0
    80006824:	254080e7          	jalr	596(ra) # 80006a74 <plic_claim>
    80006828:	00a00793          	li	a5,10
    8000682c:	00050493          	mv	s1,a0
    80006830:	06f50663          	beq	a0,a5,8000689c <devintr+0x100>
    80006834:	00100513          	li	a0,1
    80006838:	fa0482e3          	beqz	s1,800067dc <devintr+0x40>
    8000683c:	00048593          	mv	a1,s1
    80006840:	00003517          	auipc	a0,0x3
    80006844:	4b050513          	addi	a0,a0,1200 # 80009cf0 <_ZTV12ConsumerSync+0x108>
    80006848:	00000097          	auipc	ra,0x0
    8000684c:	670080e7          	jalr	1648(ra) # 80006eb8 <__printf>
    80006850:	00048513          	mv	a0,s1
    80006854:	00000097          	auipc	ra,0x0
    80006858:	258080e7          	jalr	600(ra) # 80006aac <plic_complete>
    8000685c:	00100513          	li	a0,1
    80006860:	f7dff06f          	j	800067dc <devintr+0x40>
    80006864:	00006517          	auipc	a0,0x6
    80006868:	2cc50513          	addi	a0,a0,716 # 8000cb30 <tickslock>
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	320080e7          	jalr	800(ra) # 80007b8c <acquire>
    80006874:	00005717          	auipc	a4,0x5
    80006878:	1d870713          	addi	a4,a4,472 # 8000ba4c <ticks>
    8000687c:	00072783          	lw	a5,0(a4)
    80006880:	00006517          	auipc	a0,0x6
    80006884:	2b050513          	addi	a0,a0,688 # 8000cb30 <tickslock>
    80006888:	0017879b          	addiw	a5,a5,1
    8000688c:	00f72023          	sw	a5,0(a4)
    80006890:	00001097          	auipc	ra,0x1
    80006894:	3c8080e7          	jalr	968(ra) # 80007c58 <release>
    80006898:	f65ff06f          	j	800067fc <devintr+0x60>
    8000689c:	00001097          	auipc	ra,0x1
    800068a0:	f24080e7          	jalr	-220(ra) # 800077c0 <uartintr>
    800068a4:	fadff06f          	j	80006850 <devintr+0xb4>
	...

00000000800068b0 <kernelvec>:
    800068b0:	f0010113          	addi	sp,sp,-256
    800068b4:	00113023          	sd	ra,0(sp)
    800068b8:	00213423          	sd	sp,8(sp)
    800068bc:	00313823          	sd	gp,16(sp)
    800068c0:	00413c23          	sd	tp,24(sp)
    800068c4:	02513023          	sd	t0,32(sp)
    800068c8:	02613423          	sd	t1,40(sp)
    800068cc:	02713823          	sd	t2,48(sp)
    800068d0:	02813c23          	sd	s0,56(sp)
    800068d4:	04913023          	sd	s1,64(sp)
    800068d8:	04a13423          	sd	a0,72(sp)
    800068dc:	04b13823          	sd	a1,80(sp)
    800068e0:	04c13c23          	sd	a2,88(sp)
    800068e4:	06d13023          	sd	a3,96(sp)
    800068e8:	06e13423          	sd	a4,104(sp)
    800068ec:	06f13823          	sd	a5,112(sp)
    800068f0:	07013c23          	sd	a6,120(sp)
    800068f4:	09113023          	sd	a7,128(sp)
    800068f8:	09213423          	sd	s2,136(sp)
    800068fc:	09313823          	sd	s3,144(sp)
    80006900:	09413c23          	sd	s4,152(sp)
    80006904:	0b513023          	sd	s5,160(sp)
    80006908:	0b613423          	sd	s6,168(sp)
    8000690c:	0b713823          	sd	s7,176(sp)
    80006910:	0b813c23          	sd	s8,184(sp)
    80006914:	0d913023          	sd	s9,192(sp)
    80006918:	0da13423          	sd	s10,200(sp)
    8000691c:	0db13823          	sd	s11,208(sp)
    80006920:	0dc13c23          	sd	t3,216(sp)
    80006924:	0fd13023          	sd	t4,224(sp)
    80006928:	0fe13423          	sd	t5,232(sp)
    8000692c:	0ff13823          	sd	t6,240(sp)
    80006930:	ccdff0ef          	jal	ra,800065fc <kerneltrap>
    80006934:	00013083          	ld	ra,0(sp)
    80006938:	00813103          	ld	sp,8(sp)
    8000693c:	01013183          	ld	gp,16(sp)
    80006940:	02013283          	ld	t0,32(sp)
    80006944:	02813303          	ld	t1,40(sp)
    80006948:	03013383          	ld	t2,48(sp)
    8000694c:	03813403          	ld	s0,56(sp)
    80006950:	04013483          	ld	s1,64(sp)
    80006954:	04813503          	ld	a0,72(sp)
    80006958:	05013583          	ld	a1,80(sp)
    8000695c:	05813603          	ld	a2,88(sp)
    80006960:	06013683          	ld	a3,96(sp)
    80006964:	06813703          	ld	a4,104(sp)
    80006968:	07013783          	ld	a5,112(sp)
    8000696c:	07813803          	ld	a6,120(sp)
    80006970:	08013883          	ld	a7,128(sp)
    80006974:	08813903          	ld	s2,136(sp)
    80006978:	09013983          	ld	s3,144(sp)
    8000697c:	09813a03          	ld	s4,152(sp)
    80006980:	0a013a83          	ld	s5,160(sp)
    80006984:	0a813b03          	ld	s6,168(sp)
    80006988:	0b013b83          	ld	s7,176(sp)
    8000698c:	0b813c03          	ld	s8,184(sp)
    80006990:	0c013c83          	ld	s9,192(sp)
    80006994:	0c813d03          	ld	s10,200(sp)
    80006998:	0d013d83          	ld	s11,208(sp)
    8000699c:	0d813e03          	ld	t3,216(sp)
    800069a0:	0e013e83          	ld	t4,224(sp)
    800069a4:	0e813f03          	ld	t5,232(sp)
    800069a8:	0f013f83          	ld	t6,240(sp)
    800069ac:	10010113          	addi	sp,sp,256
    800069b0:	10200073          	sret
    800069b4:	00000013          	nop
    800069b8:	00000013          	nop
    800069bc:	00000013          	nop

00000000800069c0 <timervec>:
    800069c0:	34051573          	csrrw	a0,mscratch,a0
    800069c4:	00b53023          	sd	a1,0(a0)
    800069c8:	00c53423          	sd	a2,8(a0)
    800069cc:	00d53823          	sd	a3,16(a0)
    800069d0:	01853583          	ld	a1,24(a0)
    800069d4:	02053603          	ld	a2,32(a0)
    800069d8:	0005b683          	ld	a3,0(a1)
    800069dc:	00c686b3          	add	a3,a3,a2
    800069e0:	00d5b023          	sd	a3,0(a1)
    800069e4:	00200593          	li	a1,2
    800069e8:	14459073          	csrw	sip,a1
    800069ec:	01053683          	ld	a3,16(a0)
    800069f0:	00853603          	ld	a2,8(a0)
    800069f4:	00053583          	ld	a1,0(a0)
    800069f8:	34051573          	csrrw	a0,mscratch,a0
    800069fc:	30200073          	mret

0000000080006a00 <plicinit>:
    80006a00:	ff010113          	addi	sp,sp,-16
    80006a04:	00813423          	sd	s0,8(sp)
    80006a08:	01010413          	addi	s0,sp,16
    80006a0c:	00813403          	ld	s0,8(sp)
    80006a10:	0c0007b7          	lui	a5,0xc000
    80006a14:	00100713          	li	a4,1
    80006a18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a1c:	00e7a223          	sw	a4,4(a5)
    80006a20:	01010113          	addi	sp,sp,16
    80006a24:	00008067          	ret

0000000080006a28 <plicinithart>:
    80006a28:	ff010113          	addi	sp,sp,-16
    80006a2c:	00813023          	sd	s0,0(sp)
    80006a30:	00113423          	sd	ra,8(sp)
    80006a34:	01010413          	addi	s0,sp,16
    80006a38:	00000097          	auipc	ra,0x0
    80006a3c:	a44080e7          	jalr	-1468(ra) # 8000647c <cpuid>
    80006a40:	0085171b          	slliw	a4,a0,0x8
    80006a44:	0c0027b7          	lui	a5,0xc002
    80006a48:	00e787b3          	add	a5,a5,a4
    80006a4c:	40200713          	li	a4,1026
    80006a50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006a54:	00813083          	ld	ra,8(sp)
    80006a58:	00013403          	ld	s0,0(sp)
    80006a5c:	00d5151b          	slliw	a0,a0,0xd
    80006a60:	0c2017b7          	lui	a5,0xc201
    80006a64:	00a78533          	add	a0,a5,a0
    80006a68:	00052023          	sw	zero,0(a0)
    80006a6c:	01010113          	addi	sp,sp,16
    80006a70:	00008067          	ret

0000000080006a74 <plic_claim>:
    80006a74:	ff010113          	addi	sp,sp,-16
    80006a78:	00813023          	sd	s0,0(sp)
    80006a7c:	00113423          	sd	ra,8(sp)
    80006a80:	01010413          	addi	s0,sp,16
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	9f8080e7          	jalr	-1544(ra) # 8000647c <cpuid>
    80006a8c:	00813083          	ld	ra,8(sp)
    80006a90:	00013403          	ld	s0,0(sp)
    80006a94:	00d5151b          	slliw	a0,a0,0xd
    80006a98:	0c2017b7          	lui	a5,0xc201
    80006a9c:	00a78533          	add	a0,a5,a0
    80006aa0:	00452503          	lw	a0,4(a0)
    80006aa4:	01010113          	addi	sp,sp,16
    80006aa8:	00008067          	ret

0000000080006aac <plic_complete>:
    80006aac:	fe010113          	addi	sp,sp,-32
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00913423          	sd	s1,8(sp)
    80006ab8:	00113c23          	sd	ra,24(sp)
    80006abc:	02010413          	addi	s0,sp,32
    80006ac0:	00050493          	mv	s1,a0
    80006ac4:	00000097          	auipc	ra,0x0
    80006ac8:	9b8080e7          	jalr	-1608(ra) # 8000647c <cpuid>
    80006acc:	01813083          	ld	ra,24(sp)
    80006ad0:	01013403          	ld	s0,16(sp)
    80006ad4:	00d5179b          	slliw	a5,a0,0xd
    80006ad8:	0c201737          	lui	a4,0xc201
    80006adc:	00f707b3          	add	a5,a4,a5
    80006ae0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ae4:	00813483          	ld	s1,8(sp)
    80006ae8:	02010113          	addi	sp,sp,32
    80006aec:	00008067          	ret

0000000080006af0 <consolewrite>:
    80006af0:	fb010113          	addi	sp,sp,-80
    80006af4:	04813023          	sd	s0,64(sp)
    80006af8:	04113423          	sd	ra,72(sp)
    80006afc:	02913c23          	sd	s1,56(sp)
    80006b00:	03213823          	sd	s2,48(sp)
    80006b04:	03313423          	sd	s3,40(sp)
    80006b08:	03413023          	sd	s4,32(sp)
    80006b0c:	01513c23          	sd	s5,24(sp)
    80006b10:	05010413          	addi	s0,sp,80
    80006b14:	06c05c63          	blez	a2,80006b8c <consolewrite+0x9c>
    80006b18:	00060993          	mv	s3,a2
    80006b1c:	00050a13          	mv	s4,a0
    80006b20:	00058493          	mv	s1,a1
    80006b24:	00000913          	li	s2,0
    80006b28:	fff00a93          	li	s5,-1
    80006b2c:	01c0006f          	j	80006b48 <consolewrite+0x58>
    80006b30:	fbf44503          	lbu	a0,-65(s0)
    80006b34:	0019091b          	addiw	s2,s2,1
    80006b38:	00148493          	addi	s1,s1,1
    80006b3c:	00001097          	auipc	ra,0x1
    80006b40:	a9c080e7          	jalr	-1380(ra) # 800075d8 <uartputc>
    80006b44:	03298063          	beq	s3,s2,80006b64 <consolewrite+0x74>
    80006b48:	00048613          	mv	a2,s1
    80006b4c:	00100693          	li	a3,1
    80006b50:	000a0593          	mv	a1,s4
    80006b54:	fbf40513          	addi	a0,s0,-65
    80006b58:	00000097          	auipc	ra,0x0
    80006b5c:	9dc080e7          	jalr	-1572(ra) # 80006534 <either_copyin>
    80006b60:	fd5518e3          	bne	a0,s5,80006b30 <consolewrite+0x40>
    80006b64:	04813083          	ld	ra,72(sp)
    80006b68:	04013403          	ld	s0,64(sp)
    80006b6c:	03813483          	ld	s1,56(sp)
    80006b70:	02813983          	ld	s3,40(sp)
    80006b74:	02013a03          	ld	s4,32(sp)
    80006b78:	01813a83          	ld	s5,24(sp)
    80006b7c:	00090513          	mv	a0,s2
    80006b80:	03013903          	ld	s2,48(sp)
    80006b84:	05010113          	addi	sp,sp,80
    80006b88:	00008067          	ret
    80006b8c:	00000913          	li	s2,0
    80006b90:	fd5ff06f          	j	80006b64 <consolewrite+0x74>

0000000080006b94 <consoleread>:
    80006b94:	f9010113          	addi	sp,sp,-112
    80006b98:	06813023          	sd	s0,96(sp)
    80006b9c:	04913c23          	sd	s1,88(sp)
    80006ba0:	05213823          	sd	s2,80(sp)
    80006ba4:	05313423          	sd	s3,72(sp)
    80006ba8:	05413023          	sd	s4,64(sp)
    80006bac:	03513c23          	sd	s5,56(sp)
    80006bb0:	03613823          	sd	s6,48(sp)
    80006bb4:	03713423          	sd	s7,40(sp)
    80006bb8:	03813023          	sd	s8,32(sp)
    80006bbc:	06113423          	sd	ra,104(sp)
    80006bc0:	01913c23          	sd	s9,24(sp)
    80006bc4:	07010413          	addi	s0,sp,112
    80006bc8:	00060b93          	mv	s7,a2
    80006bcc:	00050913          	mv	s2,a0
    80006bd0:	00058c13          	mv	s8,a1
    80006bd4:	00060b1b          	sext.w	s6,a2
    80006bd8:	00006497          	auipc	s1,0x6
    80006bdc:	f8048493          	addi	s1,s1,-128 # 8000cb58 <cons>
    80006be0:	00400993          	li	s3,4
    80006be4:	fff00a13          	li	s4,-1
    80006be8:	00a00a93          	li	s5,10
    80006bec:	05705e63          	blez	s7,80006c48 <consoleread+0xb4>
    80006bf0:	09c4a703          	lw	a4,156(s1)
    80006bf4:	0984a783          	lw	a5,152(s1)
    80006bf8:	0007071b          	sext.w	a4,a4
    80006bfc:	08e78463          	beq	a5,a4,80006c84 <consoleread+0xf0>
    80006c00:	07f7f713          	andi	a4,a5,127
    80006c04:	00e48733          	add	a4,s1,a4
    80006c08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c0c:	0017869b          	addiw	a3,a5,1
    80006c10:	08d4ac23          	sw	a3,152(s1)
    80006c14:	00070c9b          	sext.w	s9,a4
    80006c18:	0b370663          	beq	a4,s3,80006cc4 <consoleread+0x130>
    80006c1c:	00100693          	li	a3,1
    80006c20:	f9f40613          	addi	a2,s0,-97
    80006c24:	000c0593          	mv	a1,s8
    80006c28:	00090513          	mv	a0,s2
    80006c2c:	f8e40fa3          	sb	a4,-97(s0)
    80006c30:	00000097          	auipc	ra,0x0
    80006c34:	8b8080e7          	jalr	-1864(ra) # 800064e8 <either_copyout>
    80006c38:	01450863          	beq	a0,s4,80006c48 <consoleread+0xb4>
    80006c3c:	001c0c13          	addi	s8,s8,1
    80006c40:	fffb8b9b          	addiw	s7,s7,-1
    80006c44:	fb5c94e3          	bne	s9,s5,80006bec <consoleread+0x58>
    80006c48:	000b851b          	sext.w	a0,s7
    80006c4c:	06813083          	ld	ra,104(sp)
    80006c50:	06013403          	ld	s0,96(sp)
    80006c54:	05813483          	ld	s1,88(sp)
    80006c58:	05013903          	ld	s2,80(sp)
    80006c5c:	04813983          	ld	s3,72(sp)
    80006c60:	04013a03          	ld	s4,64(sp)
    80006c64:	03813a83          	ld	s5,56(sp)
    80006c68:	02813b83          	ld	s7,40(sp)
    80006c6c:	02013c03          	ld	s8,32(sp)
    80006c70:	01813c83          	ld	s9,24(sp)
    80006c74:	40ab053b          	subw	a0,s6,a0
    80006c78:	03013b03          	ld	s6,48(sp)
    80006c7c:	07010113          	addi	sp,sp,112
    80006c80:	00008067          	ret
    80006c84:	00001097          	auipc	ra,0x1
    80006c88:	1d8080e7          	jalr	472(ra) # 80007e5c <push_on>
    80006c8c:	0984a703          	lw	a4,152(s1)
    80006c90:	09c4a783          	lw	a5,156(s1)
    80006c94:	0007879b          	sext.w	a5,a5
    80006c98:	fef70ce3          	beq	a4,a5,80006c90 <consoleread+0xfc>
    80006c9c:	00001097          	auipc	ra,0x1
    80006ca0:	234080e7          	jalr	564(ra) # 80007ed0 <pop_on>
    80006ca4:	0984a783          	lw	a5,152(s1)
    80006ca8:	07f7f713          	andi	a4,a5,127
    80006cac:	00e48733          	add	a4,s1,a4
    80006cb0:	01874703          	lbu	a4,24(a4)
    80006cb4:	0017869b          	addiw	a3,a5,1
    80006cb8:	08d4ac23          	sw	a3,152(s1)
    80006cbc:	00070c9b          	sext.w	s9,a4
    80006cc0:	f5371ee3          	bne	a4,s3,80006c1c <consoleread+0x88>
    80006cc4:	000b851b          	sext.w	a0,s7
    80006cc8:	f96bf2e3          	bgeu	s7,s6,80006c4c <consoleread+0xb8>
    80006ccc:	08f4ac23          	sw	a5,152(s1)
    80006cd0:	f7dff06f          	j	80006c4c <consoleread+0xb8>

0000000080006cd4 <consputc>:
    80006cd4:	10000793          	li	a5,256
    80006cd8:	00f50663          	beq	a0,a5,80006ce4 <consputc+0x10>
    80006cdc:	00001317          	auipc	t1,0x1
    80006ce0:	9f430067          	jr	-1548(t1) # 800076d0 <uartputc_sync>
    80006ce4:	ff010113          	addi	sp,sp,-16
    80006ce8:	00113423          	sd	ra,8(sp)
    80006cec:	00813023          	sd	s0,0(sp)
    80006cf0:	01010413          	addi	s0,sp,16
    80006cf4:	00800513          	li	a0,8
    80006cf8:	00001097          	auipc	ra,0x1
    80006cfc:	9d8080e7          	jalr	-1576(ra) # 800076d0 <uartputc_sync>
    80006d00:	02000513          	li	a0,32
    80006d04:	00001097          	auipc	ra,0x1
    80006d08:	9cc080e7          	jalr	-1588(ra) # 800076d0 <uartputc_sync>
    80006d0c:	00013403          	ld	s0,0(sp)
    80006d10:	00813083          	ld	ra,8(sp)
    80006d14:	00800513          	li	a0,8
    80006d18:	01010113          	addi	sp,sp,16
    80006d1c:	00001317          	auipc	t1,0x1
    80006d20:	9b430067          	jr	-1612(t1) # 800076d0 <uartputc_sync>

0000000080006d24 <consoleintr>:
    80006d24:	fe010113          	addi	sp,sp,-32
    80006d28:	00813823          	sd	s0,16(sp)
    80006d2c:	00913423          	sd	s1,8(sp)
    80006d30:	01213023          	sd	s2,0(sp)
    80006d34:	00113c23          	sd	ra,24(sp)
    80006d38:	02010413          	addi	s0,sp,32
    80006d3c:	00006917          	auipc	s2,0x6
    80006d40:	e1c90913          	addi	s2,s2,-484 # 8000cb58 <cons>
    80006d44:	00050493          	mv	s1,a0
    80006d48:	00090513          	mv	a0,s2
    80006d4c:	00001097          	auipc	ra,0x1
    80006d50:	e40080e7          	jalr	-448(ra) # 80007b8c <acquire>
    80006d54:	02048c63          	beqz	s1,80006d8c <consoleintr+0x68>
    80006d58:	0a092783          	lw	a5,160(s2)
    80006d5c:	09892703          	lw	a4,152(s2)
    80006d60:	07f00693          	li	a3,127
    80006d64:	40e7873b          	subw	a4,a5,a4
    80006d68:	02e6e263          	bltu	a3,a4,80006d8c <consoleintr+0x68>
    80006d6c:	00d00713          	li	a4,13
    80006d70:	04e48063          	beq	s1,a4,80006db0 <consoleintr+0x8c>
    80006d74:	07f7f713          	andi	a4,a5,127
    80006d78:	00e90733          	add	a4,s2,a4
    80006d7c:	0017879b          	addiw	a5,a5,1
    80006d80:	0af92023          	sw	a5,160(s2)
    80006d84:	00970c23          	sb	s1,24(a4)
    80006d88:	08f92e23          	sw	a5,156(s2)
    80006d8c:	01013403          	ld	s0,16(sp)
    80006d90:	01813083          	ld	ra,24(sp)
    80006d94:	00813483          	ld	s1,8(sp)
    80006d98:	00013903          	ld	s2,0(sp)
    80006d9c:	00006517          	auipc	a0,0x6
    80006da0:	dbc50513          	addi	a0,a0,-580 # 8000cb58 <cons>
    80006da4:	02010113          	addi	sp,sp,32
    80006da8:	00001317          	auipc	t1,0x1
    80006dac:	eb030067          	jr	-336(t1) # 80007c58 <release>
    80006db0:	00a00493          	li	s1,10
    80006db4:	fc1ff06f          	j	80006d74 <consoleintr+0x50>

0000000080006db8 <consoleinit>:
    80006db8:	fe010113          	addi	sp,sp,-32
    80006dbc:	00113c23          	sd	ra,24(sp)
    80006dc0:	00813823          	sd	s0,16(sp)
    80006dc4:	00913423          	sd	s1,8(sp)
    80006dc8:	02010413          	addi	s0,sp,32
    80006dcc:	00006497          	auipc	s1,0x6
    80006dd0:	d8c48493          	addi	s1,s1,-628 # 8000cb58 <cons>
    80006dd4:	00048513          	mv	a0,s1
    80006dd8:	00003597          	auipc	a1,0x3
    80006ddc:	f7058593          	addi	a1,a1,-144 # 80009d48 <_ZTV12ConsumerSync+0x160>
    80006de0:	00001097          	auipc	ra,0x1
    80006de4:	d88080e7          	jalr	-632(ra) # 80007b68 <initlock>
    80006de8:	00000097          	auipc	ra,0x0
    80006dec:	7ac080e7          	jalr	1964(ra) # 80007594 <uartinit>
    80006df0:	01813083          	ld	ra,24(sp)
    80006df4:	01013403          	ld	s0,16(sp)
    80006df8:	00000797          	auipc	a5,0x0
    80006dfc:	d9c78793          	addi	a5,a5,-612 # 80006b94 <consoleread>
    80006e00:	0af4bc23          	sd	a5,184(s1)
    80006e04:	00000797          	auipc	a5,0x0
    80006e08:	cec78793          	addi	a5,a5,-788 # 80006af0 <consolewrite>
    80006e0c:	0cf4b023          	sd	a5,192(s1)
    80006e10:	00813483          	ld	s1,8(sp)
    80006e14:	02010113          	addi	sp,sp,32
    80006e18:	00008067          	ret

0000000080006e1c <console_read>:
    80006e1c:	ff010113          	addi	sp,sp,-16
    80006e20:	00813423          	sd	s0,8(sp)
    80006e24:	01010413          	addi	s0,sp,16
    80006e28:	00813403          	ld	s0,8(sp)
    80006e2c:	00006317          	auipc	t1,0x6
    80006e30:	de433303          	ld	t1,-540(t1) # 8000cc10 <devsw+0x10>
    80006e34:	01010113          	addi	sp,sp,16
    80006e38:	00030067          	jr	t1

0000000080006e3c <console_write>:
    80006e3c:	ff010113          	addi	sp,sp,-16
    80006e40:	00813423          	sd	s0,8(sp)
    80006e44:	01010413          	addi	s0,sp,16
    80006e48:	00813403          	ld	s0,8(sp)
    80006e4c:	00006317          	auipc	t1,0x6
    80006e50:	dcc33303          	ld	t1,-564(t1) # 8000cc18 <devsw+0x18>
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00030067          	jr	t1

0000000080006e5c <panic>:
    80006e5c:	fe010113          	addi	sp,sp,-32
    80006e60:	00113c23          	sd	ra,24(sp)
    80006e64:	00813823          	sd	s0,16(sp)
    80006e68:	00913423          	sd	s1,8(sp)
    80006e6c:	02010413          	addi	s0,sp,32
    80006e70:	00050493          	mv	s1,a0
    80006e74:	00003517          	auipc	a0,0x3
    80006e78:	edc50513          	addi	a0,a0,-292 # 80009d50 <_ZTV12ConsumerSync+0x168>
    80006e7c:	00006797          	auipc	a5,0x6
    80006e80:	e207ae23          	sw	zero,-452(a5) # 8000ccb8 <pr+0x18>
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	034080e7          	jalr	52(ra) # 80006eb8 <__printf>
    80006e8c:	00048513          	mv	a0,s1
    80006e90:	00000097          	auipc	ra,0x0
    80006e94:	028080e7          	jalr	40(ra) # 80006eb8 <__printf>
    80006e98:	00002517          	auipc	a0,0x2
    80006e9c:	48850513          	addi	a0,a0,1160 # 80009320 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006ea0:	00000097          	auipc	ra,0x0
    80006ea4:	018080e7          	jalr	24(ra) # 80006eb8 <__printf>
    80006ea8:	00100793          	li	a5,1
    80006eac:	00005717          	auipc	a4,0x5
    80006eb0:	baf72223          	sw	a5,-1116(a4) # 8000ba50 <panicked>
    80006eb4:	0000006f          	j	80006eb4 <panic+0x58>

0000000080006eb8 <__printf>:
    80006eb8:	f3010113          	addi	sp,sp,-208
    80006ebc:	08813023          	sd	s0,128(sp)
    80006ec0:	07313423          	sd	s3,104(sp)
    80006ec4:	09010413          	addi	s0,sp,144
    80006ec8:	05813023          	sd	s8,64(sp)
    80006ecc:	08113423          	sd	ra,136(sp)
    80006ed0:	06913c23          	sd	s1,120(sp)
    80006ed4:	07213823          	sd	s2,112(sp)
    80006ed8:	07413023          	sd	s4,96(sp)
    80006edc:	05513c23          	sd	s5,88(sp)
    80006ee0:	05613823          	sd	s6,80(sp)
    80006ee4:	05713423          	sd	s7,72(sp)
    80006ee8:	03913c23          	sd	s9,56(sp)
    80006eec:	03a13823          	sd	s10,48(sp)
    80006ef0:	03b13423          	sd	s11,40(sp)
    80006ef4:	00006317          	auipc	t1,0x6
    80006ef8:	dac30313          	addi	t1,t1,-596 # 8000cca0 <pr>
    80006efc:	01832c03          	lw	s8,24(t1)
    80006f00:	00b43423          	sd	a1,8(s0)
    80006f04:	00c43823          	sd	a2,16(s0)
    80006f08:	00d43c23          	sd	a3,24(s0)
    80006f0c:	02e43023          	sd	a4,32(s0)
    80006f10:	02f43423          	sd	a5,40(s0)
    80006f14:	03043823          	sd	a6,48(s0)
    80006f18:	03143c23          	sd	a7,56(s0)
    80006f1c:	00050993          	mv	s3,a0
    80006f20:	4a0c1663          	bnez	s8,800073cc <__printf+0x514>
    80006f24:	60098c63          	beqz	s3,8000753c <__printf+0x684>
    80006f28:	0009c503          	lbu	a0,0(s3)
    80006f2c:	00840793          	addi	a5,s0,8
    80006f30:	f6f43c23          	sd	a5,-136(s0)
    80006f34:	00000493          	li	s1,0
    80006f38:	22050063          	beqz	a0,80007158 <__printf+0x2a0>
    80006f3c:	00002a37          	lui	s4,0x2
    80006f40:	00018ab7          	lui	s5,0x18
    80006f44:	000f4b37          	lui	s6,0xf4
    80006f48:	00989bb7          	lui	s7,0x989
    80006f4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006f50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006f54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006f58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006f5c:	00148c9b          	addiw	s9,s1,1
    80006f60:	02500793          	li	a5,37
    80006f64:	01998933          	add	s2,s3,s9
    80006f68:	38f51263          	bne	a0,a5,800072ec <__printf+0x434>
    80006f6c:	00094783          	lbu	a5,0(s2)
    80006f70:	00078c9b          	sext.w	s9,a5
    80006f74:	1e078263          	beqz	a5,80007158 <__printf+0x2a0>
    80006f78:	0024849b          	addiw	s1,s1,2
    80006f7c:	07000713          	li	a4,112
    80006f80:	00998933          	add	s2,s3,s1
    80006f84:	38e78a63          	beq	a5,a4,80007318 <__printf+0x460>
    80006f88:	20f76863          	bltu	a4,a5,80007198 <__printf+0x2e0>
    80006f8c:	42a78863          	beq	a5,a0,800073bc <__printf+0x504>
    80006f90:	06400713          	li	a4,100
    80006f94:	40e79663          	bne	a5,a4,800073a0 <__printf+0x4e8>
    80006f98:	f7843783          	ld	a5,-136(s0)
    80006f9c:	0007a603          	lw	a2,0(a5)
    80006fa0:	00878793          	addi	a5,a5,8
    80006fa4:	f6f43c23          	sd	a5,-136(s0)
    80006fa8:	42064a63          	bltz	a2,800073dc <__printf+0x524>
    80006fac:	00a00713          	li	a4,10
    80006fb0:	02e677bb          	remuw	a5,a2,a4
    80006fb4:	00003d97          	auipc	s11,0x3
    80006fb8:	dc4d8d93          	addi	s11,s11,-572 # 80009d78 <digits>
    80006fbc:	00900593          	li	a1,9
    80006fc0:	0006051b          	sext.w	a0,a2
    80006fc4:	00000c93          	li	s9,0
    80006fc8:	02079793          	slli	a5,a5,0x20
    80006fcc:	0207d793          	srli	a5,a5,0x20
    80006fd0:	00fd87b3          	add	a5,s11,a5
    80006fd4:	0007c783          	lbu	a5,0(a5)
    80006fd8:	02e656bb          	divuw	a3,a2,a4
    80006fdc:	f8f40023          	sb	a5,-128(s0)
    80006fe0:	14c5d863          	bge	a1,a2,80007130 <__printf+0x278>
    80006fe4:	06300593          	li	a1,99
    80006fe8:	00100c93          	li	s9,1
    80006fec:	02e6f7bb          	remuw	a5,a3,a4
    80006ff0:	02079793          	slli	a5,a5,0x20
    80006ff4:	0207d793          	srli	a5,a5,0x20
    80006ff8:	00fd87b3          	add	a5,s11,a5
    80006ffc:	0007c783          	lbu	a5,0(a5)
    80007000:	02e6d73b          	divuw	a4,a3,a4
    80007004:	f8f400a3          	sb	a5,-127(s0)
    80007008:	12a5f463          	bgeu	a1,a0,80007130 <__printf+0x278>
    8000700c:	00a00693          	li	a3,10
    80007010:	00900593          	li	a1,9
    80007014:	02d777bb          	remuw	a5,a4,a3
    80007018:	02079793          	slli	a5,a5,0x20
    8000701c:	0207d793          	srli	a5,a5,0x20
    80007020:	00fd87b3          	add	a5,s11,a5
    80007024:	0007c503          	lbu	a0,0(a5)
    80007028:	02d757bb          	divuw	a5,a4,a3
    8000702c:	f8a40123          	sb	a0,-126(s0)
    80007030:	48e5f263          	bgeu	a1,a4,800074b4 <__printf+0x5fc>
    80007034:	06300513          	li	a0,99
    80007038:	02d7f5bb          	remuw	a1,a5,a3
    8000703c:	02059593          	slli	a1,a1,0x20
    80007040:	0205d593          	srli	a1,a1,0x20
    80007044:	00bd85b3          	add	a1,s11,a1
    80007048:	0005c583          	lbu	a1,0(a1)
    8000704c:	02d7d7bb          	divuw	a5,a5,a3
    80007050:	f8b401a3          	sb	a1,-125(s0)
    80007054:	48e57263          	bgeu	a0,a4,800074d8 <__printf+0x620>
    80007058:	3e700513          	li	a0,999
    8000705c:	02d7f5bb          	remuw	a1,a5,a3
    80007060:	02059593          	slli	a1,a1,0x20
    80007064:	0205d593          	srli	a1,a1,0x20
    80007068:	00bd85b3          	add	a1,s11,a1
    8000706c:	0005c583          	lbu	a1,0(a1)
    80007070:	02d7d7bb          	divuw	a5,a5,a3
    80007074:	f8b40223          	sb	a1,-124(s0)
    80007078:	46e57663          	bgeu	a0,a4,800074e4 <__printf+0x62c>
    8000707c:	02d7f5bb          	remuw	a1,a5,a3
    80007080:	02059593          	slli	a1,a1,0x20
    80007084:	0205d593          	srli	a1,a1,0x20
    80007088:	00bd85b3          	add	a1,s11,a1
    8000708c:	0005c583          	lbu	a1,0(a1)
    80007090:	02d7d7bb          	divuw	a5,a5,a3
    80007094:	f8b402a3          	sb	a1,-123(s0)
    80007098:	46ea7863          	bgeu	s4,a4,80007508 <__printf+0x650>
    8000709c:	02d7f5bb          	remuw	a1,a5,a3
    800070a0:	02059593          	slli	a1,a1,0x20
    800070a4:	0205d593          	srli	a1,a1,0x20
    800070a8:	00bd85b3          	add	a1,s11,a1
    800070ac:	0005c583          	lbu	a1,0(a1)
    800070b0:	02d7d7bb          	divuw	a5,a5,a3
    800070b4:	f8b40323          	sb	a1,-122(s0)
    800070b8:	3eeaf863          	bgeu	s5,a4,800074a8 <__printf+0x5f0>
    800070bc:	02d7f5bb          	remuw	a1,a5,a3
    800070c0:	02059593          	slli	a1,a1,0x20
    800070c4:	0205d593          	srli	a1,a1,0x20
    800070c8:	00bd85b3          	add	a1,s11,a1
    800070cc:	0005c583          	lbu	a1,0(a1)
    800070d0:	02d7d7bb          	divuw	a5,a5,a3
    800070d4:	f8b403a3          	sb	a1,-121(s0)
    800070d8:	42eb7e63          	bgeu	s6,a4,80007514 <__printf+0x65c>
    800070dc:	02d7f5bb          	remuw	a1,a5,a3
    800070e0:	02059593          	slli	a1,a1,0x20
    800070e4:	0205d593          	srli	a1,a1,0x20
    800070e8:	00bd85b3          	add	a1,s11,a1
    800070ec:	0005c583          	lbu	a1,0(a1)
    800070f0:	02d7d7bb          	divuw	a5,a5,a3
    800070f4:	f8b40423          	sb	a1,-120(s0)
    800070f8:	42ebfc63          	bgeu	s7,a4,80007530 <__printf+0x678>
    800070fc:	02079793          	slli	a5,a5,0x20
    80007100:	0207d793          	srli	a5,a5,0x20
    80007104:	00fd8db3          	add	s11,s11,a5
    80007108:	000dc703          	lbu	a4,0(s11)
    8000710c:	00a00793          	li	a5,10
    80007110:	00900c93          	li	s9,9
    80007114:	f8e404a3          	sb	a4,-119(s0)
    80007118:	00065c63          	bgez	a2,80007130 <__printf+0x278>
    8000711c:	f9040713          	addi	a4,s0,-112
    80007120:	00f70733          	add	a4,a4,a5
    80007124:	02d00693          	li	a3,45
    80007128:	fed70823          	sb	a3,-16(a4)
    8000712c:	00078c93          	mv	s9,a5
    80007130:	f8040793          	addi	a5,s0,-128
    80007134:	01978cb3          	add	s9,a5,s9
    80007138:	f7f40d13          	addi	s10,s0,-129
    8000713c:	000cc503          	lbu	a0,0(s9)
    80007140:	fffc8c93          	addi	s9,s9,-1
    80007144:	00000097          	auipc	ra,0x0
    80007148:	b90080e7          	jalr	-1136(ra) # 80006cd4 <consputc>
    8000714c:	ffac98e3          	bne	s9,s10,8000713c <__printf+0x284>
    80007150:	00094503          	lbu	a0,0(s2)
    80007154:	e00514e3          	bnez	a0,80006f5c <__printf+0xa4>
    80007158:	1a0c1663          	bnez	s8,80007304 <__printf+0x44c>
    8000715c:	08813083          	ld	ra,136(sp)
    80007160:	08013403          	ld	s0,128(sp)
    80007164:	07813483          	ld	s1,120(sp)
    80007168:	07013903          	ld	s2,112(sp)
    8000716c:	06813983          	ld	s3,104(sp)
    80007170:	06013a03          	ld	s4,96(sp)
    80007174:	05813a83          	ld	s5,88(sp)
    80007178:	05013b03          	ld	s6,80(sp)
    8000717c:	04813b83          	ld	s7,72(sp)
    80007180:	04013c03          	ld	s8,64(sp)
    80007184:	03813c83          	ld	s9,56(sp)
    80007188:	03013d03          	ld	s10,48(sp)
    8000718c:	02813d83          	ld	s11,40(sp)
    80007190:	0d010113          	addi	sp,sp,208
    80007194:	00008067          	ret
    80007198:	07300713          	li	a4,115
    8000719c:	1ce78a63          	beq	a5,a4,80007370 <__printf+0x4b8>
    800071a0:	07800713          	li	a4,120
    800071a4:	1ee79e63          	bne	a5,a4,800073a0 <__printf+0x4e8>
    800071a8:	f7843783          	ld	a5,-136(s0)
    800071ac:	0007a703          	lw	a4,0(a5)
    800071b0:	00878793          	addi	a5,a5,8
    800071b4:	f6f43c23          	sd	a5,-136(s0)
    800071b8:	28074263          	bltz	a4,8000743c <__printf+0x584>
    800071bc:	00003d97          	auipc	s11,0x3
    800071c0:	bbcd8d93          	addi	s11,s11,-1092 # 80009d78 <digits>
    800071c4:	00f77793          	andi	a5,a4,15
    800071c8:	00fd87b3          	add	a5,s11,a5
    800071cc:	0007c683          	lbu	a3,0(a5)
    800071d0:	00f00613          	li	a2,15
    800071d4:	0007079b          	sext.w	a5,a4
    800071d8:	f8d40023          	sb	a3,-128(s0)
    800071dc:	0047559b          	srliw	a1,a4,0x4
    800071e0:	0047569b          	srliw	a3,a4,0x4
    800071e4:	00000c93          	li	s9,0
    800071e8:	0ee65063          	bge	a2,a4,800072c8 <__printf+0x410>
    800071ec:	00f6f693          	andi	a3,a3,15
    800071f0:	00dd86b3          	add	a3,s11,a3
    800071f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800071f8:	0087d79b          	srliw	a5,a5,0x8
    800071fc:	00100c93          	li	s9,1
    80007200:	f8d400a3          	sb	a3,-127(s0)
    80007204:	0cb67263          	bgeu	a2,a1,800072c8 <__printf+0x410>
    80007208:	00f7f693          	andi	a3,a5,15
    8000720c:	00dd86b3          	add	a3,s11,a3
    80007210:	0006c583          	lbu	a1,0(a3)
    80007214:	00f00613          	li	a2,15
    80007218:	0047d69b          	srliw	a3,a5,0x4
    8000721c:	f8b40123          	sb	a1,-126(s0)
    80007220:	0047d593          	srli	a1,a5,0x4
    80007224:	28f67e63          	bgeu	a2,a5,800074c0 <__printf+0x608>
    80007228:	00f6f693          	andi	a3,a3,15
    8000722c:	00dd86b3          	add	a3,s11,a3
    80007230:	0006c503          	lbu	a0,0(a3)
    80007234:	0087d813          	srli	a6,a5,0x8
    80007238:	0087d69b          	srliw	a3,a5,0x8
    8000723c:	f8a401a3          	sb	a0,-125(s0)
    80007240:	28b67663          	bgeu	a2,a1,800074cc <__printf+0x614>
    80007244:	00f6f693          	andi	a3,a3,15
    80007248:	00dd86b3          	add	a3,s11,a3
    8000724c:	0006c583          	lbu	a1,0(a3)
    80007250:	00c7d513          	srli	a0,a5,0xc
    80007254:	00c7d69b          	srliw	a3,a5,0xc
    80007258:	f8b40223          	sb	a1,-124(s0)
    8000725c:	29067a63          	bgeu	a2,a6,800074f0 <__printf+0x638>
    80007260:	00f6f693          	andi	a3,a3,15
    80007264:	00dd86b3          	add	a3,s11,a3
    80007268:	0006c583          	lbu	a1,0(a3)
    8000726c:	0107d813          	srli	a6,a5,0x10
    80007270:	0107d69b          	srliw	a3,a5,0x10
    80007274:	f8b402a3          	sb	a1,-123(s0)
    80007278:	28a67263          	bgeu	a2,a0,800074fc <__printf+0x644>
    8000727c:	00f6f693          	andi	a3,a3,15
    80007280:	00dd86b3          	add	a3,s11,a3
    80007284:	0006c683          	lbu	a3,0(a3)
    80007288:	0147d79b          	srliw	a5,a5,0x14
    8000728c:	f8d40323          	sb	a3,-122(s0)
    80007290:	21067663          	bgeu	a2,a6,8000749c <__printf+0x5e4>
    80007294:	02079793          	slli	a5,a5,0x20
    80007298:	0207d793          	srli	a5,a5,0x20
    8000729c:	00fd8db3          	add	s11,s11,a5
    800072a0:	000dc683          	lbu	a3,0(s11)
    800072a4:	00800793          	li	a5,8
    800072a8:	00700c93          	li	s9,7
    800072ac:	f8d403a3          	sb	a3,-121(s0)
    800072b0:	00075c63          	bgez	a4,800072c8 <__printf+0x410>
    800072b4:	f9040713          	addi	a4,s0,-112
    800072b8:	00f70733          	add	a4,a4,a5
    800072bc:	02d00693          	li	a3,45
    800072c0:	fed70823          	sb	a3,-16(a4)
    800072c4:	00078c93          	mv	s9,a5
    800072c8:	f8040793          	addi	a5,s0,-128
    800072cc:	01978cb3          	add	s9,a5,s9
    800072d0:	f7f40d13          	addi	s10,s0,-129
    800072d4:	000cc503          	lbu	a0,0(s9)
    800072d8:	fffc8c93          	addi	s9,s9,-1
    800072dc:	00000097          	auipc	ra,0x0
    800072e0:	9f8080e7          	jalr	-1544(ra) # 80006cd4 <consputc>
    800072e4:	ff9d18e3          	bne	s10,s9,800072d4 <__printf+0x41c>
    800072e8:	0100006f          	j	800072f8 <__printf+0x440>
    800072ec:	00000097          	auipc	ra,0x0
    800072f0:	9e8080e7          	jalr	-1560(ra) # 80006cd4 <consputc>
    800072f4:	000c8493          	mv	s1,s9
    800072f8:	00094503          	lbu	a0,0(s2)
    800072fc:	c60510e3          	bnez	a0,80006f5c <__printf+0xa4>
    80007300:	e40c0ee3          	beqz	s8,8000715c <__printf+0x2a4>
    80007304:	00006517          	auipc	a0,0x6
    80007308:	99c50513          	addi	a0,a0,-1636 # 8000cca0 <pr>
    8000730c:	00001097          	auipc	ra,0x1
    80007310:	94c080e7          	jalr	-1716(ra) # 80007c58 <release>
    80007314:	e49ff06f          	j	8000715c <__printf+0x2a4>
    80007318:	f7843783          	ld	a5,-136(s0)
    8000731c:	03000513          	li	a0,48
    80007320:	01000d13          	li	s10,16
    80007324:	00878713          	addi	a4,a5,8
    80007328:	0007bc83          	ld	s9,0(a5)
    8000732c:	f6e43c23          	sd	a4,-136(s0)
    80007330:	00000097          	auipc	ra,0x0
    80007334:	9a4080e7          	jalr	-1628(ra) # 80006cd4 <consputc>
    80007338:	07800513          	li	a0,120
    8000733c:	00000097          	auipc	ra,0x0
    80007340:	998080e7          	jalr	-1640(ra) # 80006cd4 <consputc>
    80007344:	00003d97          	auipc	s11,0x3
    80007348:	a34d8d93          	addi	s11,s11,-1484 # 80009d78 <digits>
    8000734c:	03ccd793          	srli	a5,s9,0x3c
    80007350:	00fd87b3          	add	a5,s11,a5
    80007354:	0007c503          	lbu	a0,0(a5)
    80007358:	fffd0d1b          	addiw	s10,s10,-1
    8000735c:	004c9c93          	slli	s9,s9,0x4
    80007360:	00000097          	auipc	ra,0x0
    80007364:	974080e7          	jalr	-1676(ra) # 80006cd4 <consputc>
    80007368:	fe0d12e3          	bnez	s10,8000734c <__printf+0x494>
    8000736c:	f8dff06f          	j	800072f8 <__printf+0x440>
    80007370:	f7843783          	ld	a5,-136(s0)
    80007374:	0007bc83          	ld	s9,0(a5)
    80007378:	00878793          	addi	a5,a5,8
    8000737c:	f6f43c23          	sd	a5,-136(s0)
    80007380:	000c9a63          	bnez	s9,80007394 <__printf+0x4dc>
    80007384:	1080006f          	j	8000748c <__printf+0x5d4>
    80007388:	001c8c93          	addi	s9,s9,1
    8000738c:	00000097          	auipc	ra,0x0
    80007390:	948080e7          	jalr	-1720(ra) # 80006cd4 <consputc>
    80007394:	000cc503          	lbu	a0,0(s9)
    80007398:	fe0518e3          	bnez	a0,80007388 <__printf+0x4d0>
    8000739c:	f5dff06f          	j	800072f8 <__printf+0x440>
    800073a0:	02500513          	li	a0,37
    800073a4:	00000097          	auipc	ra,0x0
    800073a8:	930080e7          	jalr	-1744(ra) # 80006cd4 <consputc>
    800073ac:	000c8513          	mv	a0,s9
    800073b0:	00000097          	auipc	ra,0x0
    800073b4:	924080e7          	jalr	-1756(ra) # 80006cd4 <consputc>
    800073b8:	f41ff06f          	j	800072f8 <__printf+0x440>
    800073bc:	02500513          	li	a0,37
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	914080e7          	jalr	-1772(ra) # 80006cd4 <consputc>
    800073c8:	f31ff06f          	j	800072f8 <__printf+0x440>
    800073cc:	00030513          	mv	a0,t1
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	7bc080e7          	jalr	1980(ra) # 80007b8c <acquire>
    800073d8:	b4dff06f          	j	80006f24 <__printf+0x6c>
    800073dc:	40c0053b          	negw	a0,a2
    800073e0:	00a00713          	li	a4,10
    800073e4:	02e576bb          	remuw	a3,a0,a4
    800073e8:	00003d97          	auipc	s11,0x3
    800073ec:	990d8d93          	addi	s11,s11,-1648 # 80009d78 <digits>
    800073f0:	ff700593          	li	a1,-9
    800073f4:	02069693          	slli	a3,a3,0x20
    800073f8:	0206d693          	srli	a3,a3,0x20
    800073fc:	00dd86b3          	add	a3,s11,a3
    80007400:	0006c683          	lbu	a3,0(a3)
    80007404:	02e557bb          	divuw	a5,a0,a4
    80007408:	f8d40023          	sb	a3,-128(s0)
    8000740c:	10b65e63          	bge	a2,a1,80007528 <__printf+0x670>
    80007410:	06300593          	li	a1,99
    80007414:	02e7f6bb          	remuw	a3,a5,a4
    80007418:	02069693          	slli	a3,a3,0x20
    8000741c:	0206d693          	srli	a3,a3,0x20
    80007420:	00dd86b3          	add	a3,s11,a3
    80007424:	0006c683          	lbu	a3,0(a3)
    80007428:	02e7d73b          	divuw	a4,a5,a4
    8000742c:	00200793          	li	a5,2
    80007430:	f8d400a3          	sb	a3,-127(s0)
    80007434:	bca5ece3          	bltu	a1,a0,8000700c <__printf+0x154>
    80007438:	ce5ff06f          	j	8000711c <__printf+0x264>
    8000743c:	40e007bb          	negw	a5,a4
    80007440:	00003d97          	auipc	s11,0x3
    80007444:	938d8d93          	addi	s11,s11,-1736 # 80009d78 <digits>
    80007448:	00f7f693          	andi	a3,a5,15
    8000744c:	00dd86b3          	add	a3,s11,a3
    80007450:	0006c583          	lbu	a1,0(a3)
    80007454:	ff100613          	li	a2,-15
    80007458:	0047d69b          	srliw	a3,a5,0x4
    8000745c:	f8b40023          	sb	a1,-128(s0)
    80007460:	0047d59b          	srliw	a1,a5,0x4
    80007464:	0ac75e63          	bge	a4,a2,80007520 <__printf+0x668>
    80007468:	00f6f693          	andi	a3,a3,15
    8000746c:	00dd86b3          	add	a3,s11,a3
    80007470:	0006c603          	lbu	a2,0(a3)
    80007474:	00f00693          	li	a3,15
    80007478:	0087d79b          	srliw	a5,a5,0x8
    8000747c:	f8c400a3          	sb	a2,-127(s0)
    80007480:	d8b6e4e3          	bltu	a3,a1,80007208 <__printf+0x350>
    80007484:	00200793          	li	a5,2
    80007488:	e2dff06f          	j	800072b4 <__printf+0x3fc>
    8000748c:	00003c97          	auipc	s9,0x3
    80007490:	8ccc8c93          	addi	s9,s9,-1844 # 80009d58 <_ZTV12ConsumerSync+0x170>
    80007494:	02800513          	li	a0,40
    80007498:	ef1ff06f          	j	80007388 <__printf+0x4d0>
    8000749c:	00700793          	li	a5,7
    800074a0:	00600c93          	li	s9,6
    800074a4:	e0dff06f          	j	800072b0 <__printf+0x3f8>
    800074a8:	00700793          	li	a5,7
    800074ac:	00600c93          	li	s9,6
    800074b0:	c69ff06f          	j	80007118 <__printf+0x260>
    800074b4:	00300793          	li	a5,3
    800074b8:	00200c93          	li	s9,2
    800074bc:	c5dff06f          	j	80007118 <__printf+0x260>
    800074c0:	00300793          	li	a5,3
    800074c4:	00200c93          	li	s9,2
    800074c8:	de9ff06f          	j	800072b0 <__printf+0x3f8>
    800074cc:	00400793          	li	a5,4
    800074d0:	00300c93          	li	s9,3
    800074d4:	dddff06f          	j	800072b0 <__printf+0x3f8>
    800074d8:	00400793          	li	a5,4
    800074dc:	00300c93          	li	s9,3
    800074e0:	c39ff06f          	j	80007118 <__printf+0x260>
    800074e4:	00500793          	li	a5,5
    800074e8:	00400c93          	li	s9,4
    800074ec:	c2dff06f          	j	80007118 <__printf+0x260>
    800074f0:	00500793          	li	a5,5
    800074f4:	00400c93          	li	s9,4
    800074f8:	db9ff06f          	j	800072b0 <__printf+0x3f8>
    800074fc:	00600793          	li	a5,6
    80007500:	00500c93          	li	s9,5
    80007504:	dadff06f          	j	800072b0 <__printf+0x3f8>
    80007508:	00600793          	li	a5,6
    8000750c:	00500c93          	li	s9,5
    80007510:	c09ff06f          	j	80007118 <__printf+0x260>
    80007514:	00800793          	li	a5,8
    80007518:	00700c93          	li	s9,7
    8000751c:	bfdff06f          	j	80007118 <__printf+0x260>
    80007520:	00100793          	li	a5,1
    80007524:	d91ff06f          	j	800072b4 <__printf+0x3fc>
    80007528:	00100793          	li	a5,1
    8000752c:	bf1ff06f          	j	8000711c <__printf+0x264>
    80007530:	00900793          	li	a5,9
    80007534:	00800c93          	li	s9,8
    80007538:	be1ff06f          	j	80007118 <__printf+0x260>
    8000753c:	00003517          	auipc	a0,0x3
    80007540:	82450513          	addi	a0,a0,-2012 # 80009d60 <_ZTV12ConsumerSync+0x178>
    80007544:	00000097          	auipc	ra,0x0
    80007548:	918080e7          	jalr	-1768(ra) # 80006e5c <panic>

000000008000754c <printfinit>:
    8000754c:	fe010113          	addi	sp,sp,-32
    80007550:	00813823          	sd	s0,16(sp)
    80007554:	00913423          	sd	s1,8(sp)
    80007558:	00113c23          	sd	ra,24(sp)
    8000755c:	02010413          	addi	s0,sp,32
    80007560:	00005497          	auipc	s1,0x5
    80007564:	74048493          	addi	s1,s1,1856 # 8000cca0 <pr>
    80007568:	00048513          	mv	a0,s1
    8000756c:	00003597          	auipc	a1,0x3
    80007570:	80458593          	addi	a1,a1,-2044 # 80009d70 <_ZTV12ConsumerSync+0x188>
    80007574:	00000097          	auipc	ra,0x0
    80007578:	5f4080e7          	jalr	1524(ra) # 80007b68 <initlock>
    8000757c:	01813083          	ld	ra,24(sp)
    80007580:	01013403          	ld	s0,16(sp)
    80007584:	0004ac23          	sw	zero,24(s1)
    80007588:	00813483          	ld	s1,8(sp)
    8000758c:	02010113          	addi	sp,sp,32
    80007590:	00008067          	ret

0000000080007594 <uartinit>:
    80007594:	ff010113          	addi	sp,sp,-16
    80007598:	00813423          	sd	s0,8(sp)
    8000759c:	01010413          	addi	s0,sp,16
    800075a0:	100007b7          	lui	a5,0x10000
    800075a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800075a8:	f8000713          	li	a4,-128
    800075ac:	00e781a3          	sb	a4,3(a5)
    800075b0:	00300713          	li	a4,3
    800075b4:	00e78023          	sb	a4,0(a5)
    800075b8:	000780a3          	sb	zero,1(a5)
    800075bc:	00e781a3          	sb	a4,3(a5)
    800075c0:	00700693          	li	a3,7
    800075c4:	00d78123          	sb	a3,2(a5)
    800075c8:	00e780a3          	sb	a4,1(a5)
    800075cc:	00813403          	ld	s0,8(sp)
    800075d0:	01010113          	addi	sp,sp,16
    800075d4:	00008067          	ret

00000000800075d8 <uartputc>:
    800075d8:	00004797          	auipc	a5,0x4
    800075dc:	4787a783          	lw	a5,1144(a5) # 8000ba50 <panicked>
    800075e0:	00078463          	beqz	a5,800075e8 <uartputc+0x10>
    800075e4:	0000006f          	j	800075e4 <uartputc+0xc>
    800075e8:	fd010113          	addi	sp,sp,-48
    800075ec:	02813023          	sd	s0,32(sp)
    800075f0:	00913c23          	sd	s1,24(sp)
    800075f4:	01213823          	sd	s2,16(sp)
    800075f8:	01313423          	sd	s3,8(sp)
    800075fc:	02113423          	sd	ra,40(sp)
    80007600:	03010413          	addi	s0,sp,48
    80007604:	00004917          	auipc	s2,0x4
    80007608:	45490913          	addi	s2,s2,1108 # 8000ba58 <uart_tx_r>
    8000760c:	00093783          	ld	a5,0(s2)
    80007610:	00004497          	auipc	s1,0x4
    80007614:	45048493          	addi	s1,s1,1104 # 8000ba60 <uart_tx_w>
    80007618:	0004b703          	ld	a4,0(s1)
    8000761c:	02078693          	addi	a3,a5,32
    80007620:	00050993          	mv	s3,a0
    80007624:	02e69c63          	bne	a3,a4,8000765c <uartputc+0x84>
    80007628:	00001097          	auipc	ra,0x1
    8000762c:	834080e7          	jalr	-1996(ra) # 80007e5c <push_on>
    80007630:	00093783          	ld	a5,0(s2)
    80007634:	0004b703          	ld	a4,0(s1)
    80007638:	02078793          	addi	a5,a5,32
    8000763c:	00e79463          	bne	a5,a4,80007644 <uartputc+0x6c>
    80007640:	0000006f          	j	80007640 <uartputc+0x68>
    80007644:	00001097          	auipc	ra,0x1
    80007648:	88c080e7          	jalr	-1908(ra) # 80007ed0 <pop_on>
    8000764c:	00093783          	ld	a5,0(s2)
    80007650:	0004b703          	ld	a4,0(s1)
    80007654:	02078693          	addi	a3,a5,32
    80007658:	fce688e3          	beq	a3,a4,80007628 <uartputc+0x50>
    8000765c:	01f77693          	andi	a3,a4,31
    80007660:	00005597          	auipc	a1,0x5
    80007664:	66058593          	addi	a1,a1,1632 # 8000ccc0 <uart_tx_buf>
    80007668:	00d586b3          	add	a3,a1,a3
    8000766c:	00170713          	addi	a4,a4,1
    80007670:	01368023          	sb	s3,0(a3)
    80007674:	00e4b023          	sd	a4,0(s1)
    80007678:	10000637          	lui	a2,0x10000
    8000767c:	02f71063          	bne	a4,a5,8000769c <uartputc+0xc4>
    80007680:	0340006f          	j	800076b4 <uartputc+0xdc>
    80007684:	00074703          	lbu	a4,0(a4)
    80007688:	00f93023          	sd	a5,0(s2)
    8000768c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007690:	00093783          	ld	a5,0(s2)
    80007694:	0004b703          	ld	a4,0(s1)
    80007698:	00f70e63          	beq	a4,a5,800076b4 <uartputc+0xdc>
    8000769c:	00564683          	lbu	a3,5(a2)
    800076a0:	01f7f713          	andi	a4,a5,31
    800076a4:	00e58733          	add	a4,a1,a4
    800076a8:	0206f693          	andi	a3,a3,32
    800076ac:	00178793          	addi	a5,a5,1
    800076b0:	fc069ae3          	bnez	a3,80007684 <uartputc+0xac>
    800076b4:	02813083          	ld	ra,40(sp)
    800076b8:	02013403          	ld	s0,32(sp)
    800076bc:	01813483          	ld	s1,24(sp)
    800076c0:	01013903          	ld	s2,16(sp)
    800076c4:	00813983          	ld	s3,8(sp)
    800076c8:	03010113          	addi	sp,sp,48
    800076cc:	00008067          	ret

00000000800076d0 <uartputc_sync>:
    800076d0:	ff010113          	addi	sp,sp,-16
    800076d4:	00813423          	sd	s0,8(sp)
    800076d8:	01010413          	addi	s0,sp,16
    800076dc:	00004717          	auipc	a4,0x4
    800076e0:	37472703          	lw	a4,884(a4) # 8000ba50 <panicked>
    800076e4:	02071663          	bnez	a4,80007710 <uartputc_sync+0x40>
    800076e8:	00050793          	mv	a5,a0
    800076ec:	100006b7          	lui	a3,0x10000
    800076f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800076f4:	02077713          	andi	a4,a4,32
    800076f8:	fe070ce3          	beqz	a4,800076f0 <uartputc_sync+0x20>
    800076fc:	0ff7f793          	andi	a5,a5,255
    80007700:	00f68023          	sb	a5,0(a3)
    80007704:	00813403          	ld	s0,8(sp)
    80007708:	01010113          	addi	sp,sp,16
    8000770c:	00008067          	ret
    80007710:	0000006f          	j	80007710 <uartputc_sync+0x40>

0000000080007714 <uartstart>:
    80007714:	ff010113          	addi	sp,sp,-16
    80007718:	00813423          	sd	s0,8(sp)
    8000771c:	01010413          	addi	s0,sp,16
    80007720:	00004617          	auipc	a2,0x4
    80007724:	33860613          	addi	a2,a2,824 # 8000ba58 <uart_tx_r>
    80007728:	00004517          	auipc	a0,0x4
    8000772c:	33850513          	addi	a0,a0,824 # 8000ba60 <uart_tx_w>
    80007730:	00063783          	ld	a5,0(a2)
    80007734:	00053703          	ld	a4,0(a0)
    80007738:	04f70263          	beq	a4,a5,8000777c <uartstart+0x68>
    8000773c:	100005b7          	lui	a1,0x10000
    80007740:	00005817          	auipc	a6,0x5
    80007744:	58080813          	addi	a6,a6,1408 # 8000ccc0 <uart_tx_buf>
    80007748:	01c0006f          	j	80007764 <uartstart+0x50>
    8000774c:	0006c703          	lbu	a4,0(a3)
    80007750:	00f63023          	sd	a5,0(a2)
    80007754:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007758:	00063783          	ld	a5,0(a2)
    8000775c:	00053703          	ld	a4,0(a0)
    80007760:	00f70e63          	beq	a4,a5,8000777c <uartstart+0x68>
    80007764:	01f7f713          	andi	a4,a5,31
    80007768:	00e806b3          	add	a3,a6,a4
    8000776c:	0055c703          	lbu	a4,5(a1)
    80007770:	00178793          	addi	a5,a5,1
    80007774:	02077713          	andi	a4,a4,32
    80007778:	fc071ae3          	bnez	a4,8000774c <uartstart+0x38>
    8000777c:	00813403          	ld	s0,8(sp)
    80007780:	01010113          	addi	sp,sp,16
    80007784:	00008067          	ret

0000000080007788 <uartgetc>:
    80007788:	ff010113          	addi	sp,sp,-16
    8000778c:	00813423          	sd	s0,8(sp)
    80007790:	01010413          	addi	s0,sp,16
    80007794:	10000737          	lui	a4,0x10000
    80007798:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000779c:	0017f793          	andi	a5,a5,1
    800077a0:	00078c63          	beqz	a5,800077b8 <uartgetc+0x30>
    800077a4:	00074503          	lbu	a0,0(a4)
    800077a8:	0ff57513          	andi	a0,a0,255
    800077ac:	00813403          	ld	s0,8(sp)
    800077b0:	01010113          	addi	sp,sp,16
    800077b4:	00008067          	ret
    800077b8:	fff00513          	li	a0,-1
    800077bc:	ff1ff06f          	j	800077ac <uartgetc+0x24>

00000000800077c0 <uartintr>:
    800077c0:	100007b7          	lui	a5,0x10000
    800077c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800077c8:	0017f793          	andi	a5,a5,1
    800077cc:	0a078463          	beqz	a5,80007874 <uartintr+0xb4>
    800077d0:	fe010113          	addi	sp,sp,-32
    800077d4:	00813823          	sd	s0,16(sp)
    800077d8:	00913423          	sd	s1,8(sp)
    800077dc:	00113c23          	sd	ra,24(sp)
    800077e0:	02010413          	addi	s0,sp,32
    800077e4:	100004b7          	lui	s1,0x10000
    800077e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800077ec:	0ff57513          	andi	a0,a0,255
    800077f0:	fffff097          	auipc	ra,0xfffff
    800077f4:	534080e7          	jalr	1332(ra) # 80006d24 <consoleintr>
    800077f8:	0054c783          	lbu	a5,5(s1)
    800077fc:	0017f793          	andi	a5,a5,1
    80007800:	fe0794e3          	bnez	a5,800077e8 <uartintr+0x28>
    80007804:	00004617          	auipc	a2,0x4
    80007808:	25460613          	addi	a2,a2,596 # 8000ba58 <uart_tx_r>
    8000780c:	00004517          	auipc	a0,0x4
    80007810:	25450513          	addi	a0,a0,596 # 8000ba60 <uart_tx_w>
    80007814:	00063783          	ld	a5,0(a2)
    80007818:	00053703          	ld	a4,0(a0)
    8000781c:	04f70263          	beq	a4,a5,80007860 <uartintr+0xa0>
    80007820:	100005b7          	lui	a1,0x10000
    80007824:	00005817          	auipc	a6,0x5
    80007828:	49c80813          	addi	a6,a6,1180 # 8000ccc0 <uart_tx_buf>
    8000782c:	01c0006f          	j	80007848 <uartintr+0x88>
    80007830:	0006c703          	lbu	a4,0(a3)
    80007834:	00f63023          	sd	a5,0(a2)
    80007838:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000783c:	00063783          	ld	a5,0(a2)
    80007840:	00053703          	ld	a4,0(a0)
    80007844:	00f70e63          	beq	a4,a5,80007860 <uartintr+0xa0>
    80007848:	01f7f713          	andi	a4,a5,31
    8000784c:	00e806b3          	add	a3,a6,a4
    80007850:	0055c703          	lbu	a4,5(a1)
    80007854:	00178793          	addi	a5,a5,1
    80007858:	02077713          	andi	a4,a4,32
    8000785c:	fc071ae3          	bnez	a4,80007830 <uartintr+0x70>
    80007860:	01813083          	ld	ra,24(sp)
    80007864:	01013403          	ld	s0,16(sp)
    80007868:	00813483          	ld	s1,8(sp)
    8000786c:	02010113          	addi	sp,sp,32
    80007870:	00008067          	ret
    80007874:	00004617          	auipc	a2,0x4
    80007878:	1e460613          	addi	a2,a2,484 # 8000ba58 <uart_tx_r>
    8000787c:	00004517          	auipc	a0,0x4
    80007880:	1e450513          	addi	a0,a0,484 # 8000ba60 <uart_tx_w>
    80007884:	00063783          	ld	a5,0(a2)
    80007888:	00053703          	ld	a4,0(a0)
    8000788c:	04f70263          	beq	a4,a5,800078d0 <uartintr+0x110>
    80007890:	100005b7          	lui	a1,0x10000
    80007894:	00005817          	auipc	a6,0x5
    80007898:	42c80813          	addi	a6,a6,1068 # 8000ccc0 <uart_tx_buf>
    8000789c:	01c0006f          	j	800078b8 <uartintr+0xf8>
    800078a0:	0006c703          	lbu	a4,0(a3)
    800078a4:	00f63023          	sd	a5,0(a2)
    800078a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078ac:	00063783          	ld	a5,0(a2)
    800078b0:	00053703          	ld	a4,0(a0)
    800078b4:	02f70063          	beq	a4,a5,800078d4 <uartintr+0x114>
    800078b8:	01f7f713          	andi	a4,a5,31
    800078bc:	00e806b3          	add	a3,a6,a4
    800078c0:	0055c703          	lbu	a4,5(a1)
    800078c4:	00178793          	addi	a5,a5,1
    800078c8:	02077713          	andi	a4,a4,32
    800078cc:	fc071ae3          	bnez	a4,800078a0 <uartintr+0xe0>
    800078d0:	00008067          	ret
    800078d4:	00008067          	ret

00000000800078d8 <kinit>:
    800078d8:	fc010113          	addi	sp,sp,-64
    800078dc:	02913423          	sd	s1,40(sp)
    800078e0:	fffff7b7          	lui	a5,0xfffff
    800078e4:	00006497          	auipc	s1,0x6
    800078e8:	3fb48493          	addi	s1,s1,1019 # 8000dcdf <end+0xfff>
    800078ec:	02813823          	sd	s0,48(sp)
    800078f0:	01313c23          	sd	s3,24(sp)
    800078f4:	00f4f4b3          	and	s1,s1,a5
    800078f8:	02113c23          	sd	ra,56(sp)
    800078fc:	03213023          	sd	s2,32(sp)
    80007900:	01413823          	sd	s4,16(sp)
    80007904:	01513423          	sd	s5,8(sp)
    80007908:	04010413          	addi	s0,sp,64
    8000790c:	000017b7          	lui	a5,0x1
    80007910:	01100993          	li	s3,17
    80007914:	00f487b3          	add	a5,s1,a5
    80007918:	01b99993          	slli	s3,s3,0x1b
    8000791c:	06f9e063          	bltu	s3,a5,8000797c <kinit+0xa4>
    80007920:	00005a97          	auipc	s5,0x5
    80007924:	3c0a8a93          	addi	s5,s5,960 # 8000cce0 <end>
    80007928:	0754ec63          	bltu	s1,s5,800079a0 <kinit+0xc8>
    8000792c:	0734fa63          	bgeu	s1,s3,800079a0 <kinit+0xc8>
    80007930:	00088a37          	lui	s4,0x88
    80007934:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007938:	00004917          	auipc	s2,0x4
    8000793c:	13090913          	addi	s2,s2,304 # 8000ba68 <kmem>
    80007940:	00ca1a13          	slli	s4,s4,0xc
    80007944:	0140006f          	j	80007958 <kinit+0x80>
    80007948:	000017b7          	lui	a5,0x1
    8000794c:	00f484b3          	add	s1,s1,a5
    80007950:	0554e863          	bltu	s1,s5,800079a0 <kinit+0xc8>
    80007954:	0534f663          	bgeu	s1,s3,800079a0 <kinit+0xc8>
    80007958:	00001637          	lui	a2,0x1
    8000795c:	00100593          	li	a1,1
    80007960:	00048513          	mv	a0,s1
    80007964:	00000097          	auipc	ra,0x0
    80007968:	5e4080e7          	jalr	1508(ra) # 80007f48 <__memset>
    8000796c:	00093783          	ld	a5,0(s2)
    80007970:	00f4b023          	sd	a5,0(s1)
    80007974:	00993023          	sd	s1,0(s2)
    80007978:	fd4498e3          	bne	s1,s4,80007948 <kinit+0x70>
    8000797c:	03813083          	ld	ra,56(sp)
    80007980:	03013403          	ld	s0,48(sp)
    80007984:	02813483          	ld	s1,40(sp)
    80007988:	02013903          	ld	s2,32(sp)
    8000798c:	01813983          	ld	s3,24(sp)
    80007990:	01013a03          	ld	s4,16(sp)
    80007994:	00813a83          	ld	s5,8(sp)
    80007998:	04010113          	addi	sp,sp,64
    8000799c:	00008067          	ret
    800079a0:	00002517          	auipc	a0,0x2
    800079a4:	3f050513          	addi	a0,a0,1008 # 80009d90 <digits+0x18>
    800079a8:	fffff097          	auipc	ra,0xfffff
    800079ac:	4b4080e7          	jalr	1204(ra) # 80006e5c <panic>

00000000800079b0 <freerange>:
    800079b0:	fc010113          	addi	sp,sp,-64
    800079b4:	000017b7          	lui	a5,0x1
    800079b8:	02913423          	sd	s1,40(sp)
    800079bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800079c0:	009504b3          	add	s1,a0,s1
    800079c4:	fffff537          	lui	a0,0xfffff
    800079c8:	02813823          	sd	s0,48(sp)
    800079cc:	02113c23          	sd	ra,56(sp)
    800079d0:	03213023          	sd	s2,32(sp)
    800079d4:	01313c23          	sd	s3,24(sp)
    800079d8:	01413823          	sd	s4,16(sp)
    800079dc:	01513423          	sd	s5,8(sp)
    800079e0:	01613023          	sd	s6,0(sp)
    800079e4:	04010413          	addi	s0,sp,64
    800079e8:	00a4f4b3          	and	s1,s1,a0
    800079ec:	00f487b3          	add	a5,s1,a5
    800079f0:	06f5e463          	bltu	a1,a5,80007a58 <freerange+0xa8>
    800079f4:	00005a97          	auipc	s5,0x5
    800079f8:	2eca8a93          	addi	s5,s5,748 # 8000cce0 <end>
    800079fc:	0954e263          	bltu	s1,s5,80007a80 <freerange+0xd0>
    80007a00:	01100993          	li	s3,17
    80007a04:	01b99993          	slli	s3,s3,0x1b
    80007a08:	0734fc63          	bgeu	s1,s3,80007a80 <freerange+0xd0>
    80007a0c:	00058a13          	mv	s4,a1
    80007a10:	00004917          	auipc	s2,0x4
    80007a14:	05890913          	addi	s2,s2,88 # 8000ba68 <kmem>
    80007a18:	00002b37          	lui	s6,0x2
    80007a1c:	0140006f          	j	80007a30 <freerange+0x80>
    80007a20:	000017b7          	lui	a5,0x1
    80007a24:	00f484b3          	add	s1,s1,a5
    80007a28:	0554ec63          	bltu	s1,s5,80007a80 <freerange+0xd0>
    80007a2c:	0534fa63          	bgeu	s1,s3,80007a80 <freerange+0xd0>
    80007a30:	00001637          	lui	a2,0x1
    80007a34:	00100593          	li	a1,1
    80007a38:	00048513          	mv	a0,s1
    80007a3c:	00000097          	auipc	ra,0x0
    80007a40:	50c080e7          	jalr	1292(ra) # 80007f48 <__memset>
    80007a44:	00093703          	ld	a4,0(s2)
    80007a48:	016487b3          	add	a5,s1,s6
    80007a4c:	00e4b023          	sd	a4,0(s1)
    80007a50:	00993023          	sd	s1,0(s2)
    80007a54:	fcfa76e3          	bgeu	s4,a5,80007a20 <freerange+0x70>
    80007a58:	03813083          	ld	ra,56(sp)
    80007a5c:	03013403          	ld	s0,48(sp)
    80007a60:	02813483          	ld	s1,40(sp)
    80007a64:	02013903          	ld	s2,32(sp)
    80007a68:	01813983          	ld	s3,24(sp)
    80007a6c:	01013a03          	ld	s4,16(sp)
    80007a70:	00813a83          	ld	s5,8(sp)
    80007a74:	00013b03          	ld	s6,0(sp)
    80007a78:	04010113          	addi	sp,sp,64
    80007a7c:	00008067          	ret
    80007a80:	00002517          	auipc	a0,0x2
    80007a84:	31050513          	addi	a0,a0,784 # 80009d90 <digits+0x18>
    80007a88:	fffff097          	auipc	ra,0xfffff
    80007a8c:	3d4080e7          	jalr	980(ra) # 80006e5c <panic>

0000000080007a90 <kfree>:
    80007a90:	fe010113          	addi	sp,sp,-32
    80007a94:	00813823          	sd	s0,16(sp)
    80007a98:	00113c23          	sd	ra,24(sp)
    80007a9c:	00913423          	sd	s1,8(sp)
    80007aa0:	02010413          	addi	s0,sp,32
    80007aa4:	03451793          	slli	a5,a0,0x34
    80007aa8:	04079c63          	bnez	a5,80007b00 <kfree+0x70>
    80007aac:	00005797          	auipc	a5,0x5
    80007ab0:	23478793          	addi	a5,a5,564 # 8000cce0 <end>
    80007ab4:	00050493          	mv	s1,a0
    80007ab8:	04f56463          	bltu	a0,a5,80007b00 <kfree+0x70>
    80007abc:	01100793          	li	a5,17
    80007ac0:	01b79793          	slli	a5,a5,0x1b
    80007ac4:	02f57e63          	bgeu	a0,a5,80007b00 <kfree+0x70>
    80007ac8:	00001637          	lui	a2,0x1
    80007acc:	00100593          	li	a1,1
    80007ad0:	00000097          	auipc	ra,0x0
    80007ad4:	478080e7          	jalr	1144(ra) # 80007f48 <__memset>
    80007ad8:	00004797          	auipc	a5,0x4
    80007adc:	f9078793          	addi	a5,a5,-112 # 8000ba68 <kmem>
    80007ae0:	0007b703          	ld	a4,0(a5)
    80007ae4:	01813083          	ld	ra,24(sp)
    80007ae8:	01013403          	ld	s0,16(sp)
    80007aec:	00e4b023          	sd	a4,0(s1)
    80007af0:	0097b023          	sd	s1,0(a5)
    80007af4:	00813483          	ld	s1,8(sp)
    80007af8:	02010113          	addi	sp,sp,32
    80007afc:	00008067          	ret
    80007b00:	00002517          	auipc	a0,0x2
    80007b04:	29050513          	addi	a0,a0,656 # 80009d90 <digits+0x18>
    80007b08:	fffff097          	auipc	ra,0xfffff
    80007b0c:	354080e7          	jalr	852(ra) # 80006e5c <panic>

0000000080007b10 <kalloc>:
    80007b10:	fe010113          	addi	sp,sp,-32
    80007b14:	00813823          	sd	s0,16(sp)
    80007b18:	00913423          	sd	s1,8(sp)
    80007b1c:	00113c23          	sd	ra,24(sp)
    80007b20:	02010413          	addi	s0,sp,32
    80007b24:	00004797          	auipc	a5,0x4
    80007b28:	f4478793          	addi	a5,a5,-188 # 8000ba68 <kmem>
    80007b2c:	0007b483          	ld	s1,0(a5)
    80007b30:	02048063          	beqz	s1,80007b50 <kalloc+0x40>
    80007b34:	0004b703          	ld	a4,0(s1)
    80007b38:	00001637          	lui	a2,0x1
    80007b3c:	00500593          	li	a1,5
    80007b40:	00048513          	mv	a0,s1
    80007b44:	00e7b023          	sd	a4,0(a5)
    80007b48:	00000097          	auipc	ra,0x0
    80007b4c:	400080e7          	jalr	1024(ra) # 80007f48 <__memset>
    80007b50:	01813083          	ld	ra,24(sp)
    80007b54:	01013403          	ld	s0,16(sp)
    80007b58:	00048513          	mv	a0,s1
    80007b5c:	00813483          	ld	s1,8(sp)
    80007b60:	02010113          	addi	sp,sp,32
    80007b64:	00008067          	ret

0000000080007b68 <initlock>:
    80007b68:	ff010113          	addi	sp,sp,-16
    80007b6c:	00813423          	sd	s0,8(sp)
    80007b70:	01010413          	addi	s0,sp,16
    80007b74:	00813403          	ld	s0,8(sp)
    80007b78:	00b53423          	sd	a1,8(a0)
    80007b7c:	00052023          	sw	zero,0(a0)
    80007b80:	00053823          	sd	zero,16(a0)
    80007b84:	01010113          	addi	sp,sp,16
    80007b88:	00008067          	ret

0000000080007b8c <acquire>:
    80007b8c:	fe010113          	addi	sp,sp,-32
    80007b90:	00813823          	sd	s0,16(sp)
    80007b94:	00913423          	sd	s1,8(sp)
    80007b98:	00113c23          	sd	ra,24(sp)
    80007b9c:	01213023          	sd	s2,0(sp)
    80007ba0:	02010413          	addi	s0,sp,32
    80007ba4:	00050493          	mv	s1,a0
    80007ba8:	10002973          	csrr	s2,sstatus
    80007bac:	100027f3          	csrr	a5,sstatus
    80007bb0:	ffd7f793          	andi	a5,a5,-3
    80007bb4:	10079073          	csrw	sstatus,a5
    80007bb8:	fffff097          	auipc	ra,0xfffff
    80007bbc:	8e4080e7          	jalr	-1820(ra) # 8000649c <mycpu>
    80007bc0:	07852783          	lw	a5,120(a0)
    80007bc4:	06078e63          	beqz	a5,80007c40 <acquire+0xb4>
    80007bc8:	fffff097          	auipc	ra,0xfffff
    80007bcc:	8d4080e7          	jalr	-1836(ra) # 8000649c <mycpu>
    80007bd0:	07852783          	lw	a5,120(a0)
    80007bd4:	0004a703          	lw	a4,0(s1)
    80007bd8:	0017879b          	addiw	a5,a5,1
    80007bdc:	06f52c23          	sw	a5,120(a0)
    80007be0:	04071063          	bnez	a4,80007c20 <acquire+0x94>
    80007be4:	00100713          	li	a4,1
    80007be8:	00070793          	mv	a5,a4
    80007bec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007bf0:	0007879b          	sext.w	a5,a5
    80007bf4:	fe079ae3          	bnez	a5,80007be8 <acquire+0x5c>
    80007bf8:	0ff0000f          	fence
    80007bfc:	fffff097          	auipc	ra,0xfffff
    80007c00:	8a0080e7          	jalr	-1888(ra) # 8000649c <mycpu>
    80007c04:	01813083          	ld	ra,24(sp)
    80007c08:	01013403          	ld	s0,16(sp)
    80007c0c:	00a4b823          	sd	a0,16(s1)
    80007c10:	00013903          	ld	s2,0(sp)
    80007c14:	00813483          	ld	s1,8(sp)
    80007c18:	02010113          	addi	sp,sp,32
    80007c1c:	00008067          	ret
    80007c20:	0104b903          	ld	s2,16(s1)
    80007c24:	fffff097          	auipc	ra,0xfffff
    80007c28:	878080e7          	jalr	-1928(ra) # 8000649c <mycpu>
    80007c2c:	faa91ce3          	bne	s2,a0,80007be4 <acquire+0x58>
    80007c30:	00002517          	auipc	a0,0x2
    80007c34:	16850513          	addi	a0,a0,360 # 80009d98 <digits+0x20>
    80007c38:	fffff097          	auipc	ra,0xfffff
    80007c3c:	224080e7          	jalr	548(ra) # 80006e5c <panic>
    80007c40:	00195913          	srli	s2,s2,0x1
    80007c44:	fffff097          	auipc	ra,0xfffff
    80007c48:	858080e7          	jalr	-1960(ra) # 8000649c <mycpu>
    80007c4c:	00197913          	andi	s2,s2,1
    80007c50:	07252e23          	sw	s2,124(a0)
    80007c54:	f75ff06f          	j	80007bc8 <acquire+0x3c>

0000000080007c58 <release>:
    80007c58:	fe010113          	addi	sp,sp,-32
    80007c5c:	00813823          	sd	s0,16(sp)
    80007c60:	00113c23          	sd	ra,24(sp)
    80007c64:	00913423          	sd	s1,8(sp)
    80007c68:	01213023          	sd	s2,0(sp)
    80007c6c:	02010413          	addi	s0,sp,32
    80007c70:	00052783          	lw	a5,0(a0)
    80007c74:	00079a63          	bnez	a5,80007c88 <release+0x30>
    80007c78:	00002517          	auipc	a0,0x2
    80007c7c:	12850513          	addi	a0,a0,296 # 80009da0 <digits+0x28>
    80007c80:	fffff097          	auipc	ra,0xfffff
    80007c84:	1dc080e7          	jalr	476(ra) # 80006e5c <panic>
    80007c88:	01053903          	ld	s2,16(a0)
    80007c8c:	00050493          	mv	s1,a0
    80007c90:	fffff097          	auipc	ra,0xfffff
    80007c94:	80c080e7          	jalr	-2036(ra) # 8000649c <mycpu>
    80007c98:	fea910e3          	bne	s2,a0,80007c78 <release+0x20>
    80007c9c:	0004b823          	sd	zero,16(s1)
    80007ca0:	0ff0000f          	fence
    80007ca4:	0f50000f          	fence	iorw,ow
    80007ca8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007cac:	ffffe097          	auipc	ra,0xffffe
    80007cb0:	7f0080e7          	jalr	2032(ra) # 8000649c <mycpu>
    80007cb4:	100027f3          	csrr	a5,sstatus
    80007cb8:	0027f793          	andi	a5,a5,2
    80007cbc:	04079a63          	bnez	a5,80007d10 <release+0xb8>
    80007cc0:	07852783          	lw	a5,120(a0)
    80007cc4:	02f05e63          	blez	a5,80007d00 <release+0xa8>
    80007cc8:	fff7871b          	addiw	a4,a5,-1
    80007ccc:	06e52c23          	sw	a4,120(a0)
    80007cd0:	00071c63          	bnez	a4,80007ce8 <release+0x90>
    80007cd4:	07c52783          	lw	a5,124(a0)
    80007cd8:	00078863          	beqz	a5,80007ce8 <release+0x90>
    80007cdc:	100027f3          	csrr	a5,sstatus
    80007ce0:	0027e793          	ori	a5,a5,2
    80007ce4:	10079073          	csrw	sstatus,a5
    80007ce8:	01813083          	ld	ra,24(sp)
    80007cec:	01013403          	ld	s0,16(sp)
    80007cf0:	00813483          	ld	s1,8(sp)
    80007cf4:	00013903          	ld	s2,0(sp)
    80007cf8:	02010113          	addi	sp,sp,32
    80007cfc:	00008067          	ret
    80007d00:	00002517          	auipc	a0,0x2
    80007d04:	0c050513          	addi	a0,a0,192 # 80009dc0 <digits+0x48>
    80007d08:	fffff097          	auipc	ra,0xfffff
    80007d0c:	154080e7          	jalr	340(ra) # 80006e5c <panic>
    80007d10:	00002517          	auipc	a0,0x2
    80007d14:	09850513          	addi	a0,a0,152 # 80009da8 <digits+0x30>
    80007d18:	fffff097          	auipc	ra,0xfffff
    80007d1c:	144080e7          	jalr	324(ra) # 80006e5c <panic>

0000000080007d20 <holding>:
    80007d20:	00052783          	lw	a5,0(a0)
    80007d24:	00079663          	bnez	a5,80007d30 <holding+0x10>
    80007d28:	00000513          	li	a0,0
    80007d2c:	00008067          	ret
    80007d30:	fe010113          	addi	sp,sp,-32
    80007d34:	00813823          	sd	s0,16(sp)
    80007d38:	00913423          	sd	s1,8(sp)
    80007d3c:	00113c23          	sd	ra,24(sp)
    80007d40:	02010413          	addi	s0,sp,32
    80007d44:	01053483          	ld	s1,16(a0)
    80007d48:	ffffe097          	auipc	ra,0xffffe
    80007d4c:	754080e7          	jalr	1876(ra) # 8000649c <mycpu>
    80007d50:	01813083          	ld	ra,24(sp)
    80007d54:	01013403          	ld	s0,16(sp)
    80007d58:	40a48533          	sub	a0,s1,a0
    80007d5c:	00153513          	seqz	a0,a0
    80007d60:	00813483          	ld	s1,8(sp)
    80007d64:	02010113          	addi	sp,sp,32
    80007d68:	00008067          	ret

0000000080007d6c <push_off>:
    80007d6c:	fe010113          	addi	sp,sp,-32
    80007d70:	00813823          	sd	s0,16(sp)
    80007d74:	00113c23          	sd	ra,24(sp)
    80007d78:	00913423          	sd	s1,8(sp)
    80007d7c:	02010413          	addi	s0,sp,32
    80007d80:	100024f3          	csrr	s1,sstatus
    80007d84:	100027f3          	csrr	a5,sstatus
    80007d88:	ffd7f793          	andi	a5,a5,-3
    80007d8c:	10079073          	csrw	sstatus,a5
    80007d90:	ffffe097          	auipc	ra,0xffffe
    80007d94:	70c080e7          	jalr	1804(ra) # 8000649c <mycpu>
    80007d98:	07852783          	lw	a5,120(a0)
    80007d9c:	02078663          	beqz	a5,80007dc8 <push_off+0x5c>
    80007da0:	ffffe097          	auipc	ra,0xffffe
    80007da4:	6fc080e7          	jalr	1788(ra) # 8000649c <mycpu>
    80007da8:	07852783          	lw	a5,120(a0)
    80007dac:	01813083          	ld	ra,24(sp)
    80007db0:	01013403          	ld	s0,16(sp)
    80007db4:	0017879b          	addiw	a5,a5,1
    80007db8:	06f52c23          	sw	a5,120(a0)
    80007dbc:	00813483          	ld	s1,8(sp)
    80007dc0:	02010113          	addi	sp,sp,32
    80007dc4:	00008067          	ret
    80007dc8:	0014d493          	srli	s1,s1,0x1
    80007dcc:	ffffe097          	auipc	ra,0xffffe
    80007dd0:	6d0080e7          	jalr	1744(ra) # 8000649c <mycpu>
    80007dd4:	0014f493          	andi	s1,s1,1
    80007dd8:	06952e23          	sw	s1,124(a0)
    80007ddc:	fc5ff06f          	j	80007da0 <push_off+0x34>

0000000080007de0 <pop_off>:
    80007de0:	ff010113          	addi	sp,sp,-16
    80007de4:	00813023          	sd	s0,0(sp)
    80007de8:	00113423          	sd	ra,8(sp)
    80007dec:	01010413          	addi	s0,sp,16
    80007df0:	ffffe097          	auipc	ra,0xffffe
    80007df4:	6ac080e7          	jalr	1708(ra) # 8000649c <mycpu>
    80007df8:	100027f3          	csrr	a5,sstatus
    80007dfc:	0027f793          	andi	a5,a5,2
    80007e00:	04079663          	bnez	a5,80007e4c <pop_off+0x6c>
    80007e04:	07852783          	lw	a5,120(a0)
    80007e08:	02f05a63          	blez	a5,80007e3c <pop_off+0x5c>
    80007e0c:	fff7871b          	addiw	a4,a5,-1
    80007e10:	06e52c23          	sw	a4,120(a0)
    80007e14:	00071c63          	bnez	a4,80007e2c <pop_off+0x4c>
    80007e18:	07c52783          	lw	a5,124(a0)
    80007e1c:	00078863          	beqz	a5,80007e2c <pop_off+0x4c>
    80007e20:	100027f3          	csrr	a5,sstatus
    80007e24:	0027e793          	ori	a5,a5,2
    80007e28:	10079073          	csrw	sstatus,a5
    80007e2c:	00813083          	ld	ra,8(sp)
    80007e30:	00013403          	ld	s0,0(sp)
    80007e34:	01010113          	addi	sp,sp,16
    80007e38:	00008067          	ret
    80007e3c:	00002517          	auipc	a0,0x2
    80007e40:	f8450513          	addi	a0,a0,-124 # 80009dc0 <digits+0x48>
    80007e44:	fffff097          	auipc	ra,0xfffff
    80007e48:	018080e7          	jalr	24(ra) # 80006e5c <panic>
    80007e4c:	00002517          	auipc	a0,0x2
    80007e50:	f5c50513          	addi	a0,a0,-164 # 80009da8 <digits+0x30>
    80007e54:	fffff097          	auipc	ra,0xfffff
    80007e58:	008080e7          	jalr	8(ra) # 80006e5c <panic>

0000000080007e5c <push_on>:
    80007e5c:	fe010113          	addi	sp,sp,-32
    80007e60:	00813823          	sd	s0,16(sp)
    80007e64:	00113c23          	sd	ra,24(sp)
    80007e68:	00913423          	sd	s1,8(sp)
    80007e6c:	02010413          	addi	s0,sp,32
    80007e70:	100024f3          	csrr	s1,sstatus
    80007e74:	100027f3          	csrr	a5,sstatus
    80007e78:	0027e793          	ori	a5,a5,2
    80007e7c:	10079073          	csrw	sstatus,a5
    80007e80:	ffffe097          	auipc	ra,0xffffe
    80007e84:	61c080e7          	jalr	1564(ra) # 8000649c <mycpu>
    80007e88:	07852783          	lw	a5,120(a0)
    80007e8c:	02078663          	beqz	a5,80007eb8 <push_on+0x5c>
    80007e90:	ffffe097          	auipc	ra,0xffffe
    80007e94:	60c080e7          	jalr	1548(ra) # 8000649c <mycpu>
    80007e98:	07852783          	lw	a5,120(a0)
    80007e9c:	01813083          	ld	ra,24(sp)
    80007ea0:	01013403          	ld	s0,16(sp)
    80007ea4:	0017879b          	addiw	a5,a5,1
    80007ea8:	06f52c23          	sw	a5,120(a0)
    80007eac:	00813483          	ld	s1,8(sp)
    80007eb0:	02010113          	addi	sp,sp,32
    80007eb4:	00008067          	ret
    80007eb8:	0014d493          	srli	s1,s1,0x1
    80007ebc:	ffffe097          	auipc	ra,0xffffe
    80007ec0:	5e0080e7          	jalr	1504(ra) # 8000649c <mycpu>
    80007ec4:	0014f493          	andi	s1,s1,1
    80007ec8:	06952e23          	sw	s1,124(a0)
    80007ecc:	fc5ff06f          	j	80007e90 <push_on+0x34>

0000000080007ed0 <pop_on>:
    80007ed0:	ff010113          	addi	sp,sp,-16
    80007ed4:	00813023          	sd	s0,0(sp)
    80007ed8:	00113423          	sd	ra,8(sp)
    80007edc:	01010413          	addi	s0,sp,16
    80007ee0:	ffffe097          	auipc	ra,0xffffe
    80007ee4:	5bc080e7          	jalr	1468(ra) # 8000649c <mycpu>
    80007ee8:	100027f3          	csrr	a5,sstatus
    80007eec:	0027f793          	andi	a5,a5,2
    80007ef0:	04078463          	beqz	a5,80007f38 <pop_on+0x68>
    80007ef4:	07852783          	lw	a5,120(a0)
    80007ef8:	02f05863          	blez	a5,80007f28 <pop_on+0x58>
    80007efc:	fff7879b          	addiw	a5,a5,-1
    80007f00:	06f52c23          	sw	a5,120(a0)
    80007f04:	07853783          	ld	a5,120(a0)
    80007f08:	00079863          	bnez	a5,80007f18 <pop_on+0x48>
    80007f0c:	100027f3          	csrr	a5,sstatus
    80007f10:	ffd7f793          	andi	a5,a5,-3
    80007f14:	10079073          	csrw	sstatus,a5
    80007f18:	00813083          	ld	ra,8(sp)
    80007f1c:	00013403          	ld	s0,0(sp)
    80007f20:	01010113          	addi	sp,sp,16
    80007f24:	00008067          	ret
    80007f28:	00002517          	auipc	a0,0x2
    80007f2c:	ec050513          	addi	a0,a0,-320 # 80009de8 <digits+0x70>
    80007f30:	fffff097          	auipc	ra,0xfffff
    80007f34:	f2c080e7          	jalr	-212(ra) # 80006e5c <panic>
    80007f38:	00002517          	auipc	a0,0x2
    80007f3c:	e9050513          	addi	a0,a0,-368 # 80009dc8 <digits+0x50>
    80007f40:	fffff097          	auipc	ra,0xfffff
    80007f44:	f1c080e7          	jalr	-228(ra) # 80006e5c <panic>

0000000080007f48 <__memset>:
    80007f48:	ff010113          	addi	sp,sp,-16
    80007f4c:	00813423          	sd	s0,8(sp)
    80007f50:	01010413          	addi	s0,sp,16
    80007f54:	1a060e63          	beqz	a2,80008110 <__memset+0x1c8>
    80007f58:	40a007b3          	neg	a5,a0
    80007f5c:	0077f793          	andi	a5,a5,7
    80007f60:	00778693          	addi	a3,a5,7
    80007f64:	00b00813          	li	a6,11
    80007f68:	0ff5f593          	andi	a1,a1,255
    80007f6c:	fff6071b          	addiw	a4,a2,-1
    80007f70:	1b06e663          	bltu	a3,a6,8000811c <__memset+0x1d4>
    80007f74:	1cd76463          	bltu	a4,a3,8000813c <__memset+0x1f4>
    80007f78:	1a078e63          	beqz	a5,80008134 <__memset+0x1ec>
    80007f7c:	00b50023          	sb	a1,0(a0)
    80007f80:	00100713          	li	a4,1
    80007f84:	1ae78463          	beq	a5,a4,8000812c <__memset+0x1e4>
    80007f88:	00b500a3          	sb	a1,1(a0)
    80007f8c:	00200713          	li	a4,2
    80007f90:	1ae78a63          	beq	a5,a4,80008144 <__memset+0x1fc>
    80007f94:	00b50123          	sb	a1,2(a0)
    80007f98:	00300713          	li	a4,3
    80007f9c:	18e78463          	beq	a5,a4,80008124 <__memset+0x1dc>
    80007fa0:	00b501a3          	sb	a1,3(a0)
    80007fa4:	00400713          	li	a4,4
    80007fa8:	1ae78263          	beq	a5,a4,8000814c <__memset+0x204>
    80007fac:	00b50223          	sb	a1,4(a0)
    80007fb0:	00500713          	li	a4,5
    80007fb4:	1ae78063          	beq	a5,a4,80008154 <__memset+0x20c>
    80007fb8:	00b502a3          	sb	a1,5(a0)
    80007fbc:	00700713          	li	a4,7
    80007fc0:	18e79e63          	bne	a5,a4,8000815c <__memset+0x214>
    80007fc4:	00b50323          	sb	a1,6(a0)
    80007fc8:	00700e93          	li	t4,7
    80007fcc:	00859713          	slli	a4,a1,0x8
    80007fd0:	00e5e733          	or	a4,a1,a4
    80007fd4:	01059e13          	slli	t3,a1,0x10
    80007fd8:	01c76e33          	or	t3,a4,t3
    80007fdc:	01859313          	slli	t1,a1,0x18
    80007fe0:	006e6333          	or	t1,t3,t1
    80007fe4:	02059893          	slli	a7,a1,0x20
    80007fe8:	40f60e3b          	subw	t3,a2,a5
    80007fec:	011368b3          	or	a7,t1,a7
    80007ff0:	02859813          	slli	a6,a1,0x28
    80007ff4:	0108e833          	or	a6,a7,a6
    80007ff8:	03059693          	slli	a3,a1,0x30
    80007ffc:	003e589b          	srliw	a7,t3,0x3
    80008000:	00d866b3          	or	a3,a6,a3
    80008004:	03859713          	slli	a4,a1,0x38
    80008008:	00389813          	slli	a6,a7,0x3
    8000800c:	00f507b3          	add	a5,a0,a5
    80008010:	00e6e733          	or	a4,a3,a4
    80008014:	000e089b          	sext.w	a7,t3
    80008018:	00f806b3          	add	a3,a6,a5
    8000801c:	00e7b023          	sd	a4,0(a5)
    80008020:	00878793          	addi	a5,a5,8
    80008024:	fed79ce3          	bne	a5,a3,8000801c <__memset+0xd4>
    80008028:	ff8e7793          	andi	a5,t3,-8
    8000802c:	0007871b          	sext.w	a4,a5
    80008030:	01d787bb          	addw	a5,a5,t4
    80008034:	0ce88e63          	beq	a7,a4,80008110 <__memset+0x1c8>
    80008038:	00f50733          	add	a4,a0,a5
    8000803c:	00b70023          	sb	a1,0(a4)
    80008040:	0017871b          	addiw	a4,a5,1
    80008044:	0cc77663          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    80008048:	00e50733          	add	a4,a0,a4
    8000804c:	00b70023          	sb	a1,0(a4)
    80008050:	0027871b          	addiw	a4,a5,2
    80008054:	0ac77e63          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    80008058:	00e50733          	add	a4,a0,a4
    8000805c:	00b70023          	sb	a1,0(a4)
    80008060:	0037871b          	addiw	a4,a5,3
    80008064:	0ac77663          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    80008068:	00e50733          	add	a4,a0,a4
    8000806c:	00b70023          	sb	a1,0(a4)
    80008070:	0047871b          	addiw	a4,a5,4
    80008074:	08c77e63          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    80008078:	00e50733          	add	a4,a0,a4
    8000807c:	00b70023          	sb	a1,0(a4)
    80008080:	0057871b          	addiw	a4,a5,5
    80008084:	08c77663          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    80008088:	00e50733          	add	a4,a0,a4
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	0067871b          	addiw	a4,a5,6
    80008094:	06c77e63          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    80008098:	00e50733          	add	a4,a0,a4
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	0077871b          	addiw	a4,a5,7
    800080a4:	06c77663          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0087871b          	addiw	a4,a5,8
    800080b4:	04c77e63          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0097871b          	addiw	a4,a5,9
    800080c4:	04c77663          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	00a7871b          	addiw	a4,a5,10
    800080d4:	02c77e63          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	00b7871b          	addiw	a4,a5,11
    800080e4:	02c77663          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	00c7871b          	addiw	a4,a5,12
    800080f4:	00c77e63          	bgeu	a4,a2,80008110 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	00d7879b          	addiw	a5,a5,13
    80008104:	00c7f663          	bgeu	a5,a2,80008110 <__memset+0x1c8>
    80008108:	00f507b3          	add	a5,a0,a5
    8000810c:	00b78023          	sb	a1,0(a5)
    80008110:	00813403          	ld	s0,8(sp)
    80008114:	01010113          	addi	sp,sp,16
    80008118:	00008067          	ret
    8000811c:	00b00693          	li	a3,11
    80008120:	e55ff06f          	j	80007f74 <__memset+0x2c>
    80008124:	00300e93          	li	t4,3
    80008128:	ea5ff06f          	j	80007fcc <__memset+0x84>
    8000812c:	00100e93          	li	t4,1
    80008130:	e9dff06f          	j	80007fcc <__memset+0x84>
    80008134:	00000e93          	li	t4,0
    80008138:	e95ff06f          	j	80007fcc <__memset+0x84>
    8000813c:	00000793          	li	a5,0
    80008140:	ef9ff06f          	j	80008038 <__memset+0xf0>
    80008144:	00200e93          	li	t4,2
    80008148:	e85ff06f          	j	80007fcc <__memset+0x84>
    8000814c:	00400e93          	li	t4,4
    80008150:	e7dff06f          	j	80007fcc <__memset+0x84>
    80008154:	00500e93          	li	t4,5
    80008158:	e75ff06f          	j	80007fcc <__memset+0x84>
    8000815c:	00600e93          	li	t4,6
    80008160:	e6dff06f          	j	80007fcc <__memset+0x84>

0000000080008164 <__memmove>:
    80008164:	ff010113          	addi	sp,sp,-16
    80008168:	00813423          	sd	s0,8(sp)
    8000816c:	01010413          	addi	s0,sp,16
    80008170:	0e060863          	beqz	a2,80008260 <__memmove+0xfc>
    80008174:	fff6069b          	addiw	a3,a2,-1
    80008178:	0006881b          	sext.w	a6,a3
    8000817c:	0ea5e863          	bltu	a1,a0,8000826c <__memmove+0x108>
    80008180:	00758713          	addi	a4,a1,7
    80008184:	00a5e7b3          	or	a5,a1,a0
    80008188:	40a70733          	sub	a4,a4,a0
    8000818c:	0077f793          	andi	a5,a5,7
    80008190:	00f73713          	sltiu	a4,a4,15
    80008194:	00174713          	xori	a4,a4,1
    80008198:	0017b793          	seqz	a5,a5
    8000819c:	00e7f7b3          	and	a5,a5,a4
    800081a0:	10078863          	beqz	a5,800082b0 <__memmove+0x14c>
    800081a4:	00900793          	li	a5,9
    800081a8:	1107f463          	bgeu	a5,a6,800082b0 <__memmove+0x14c>
    800081ac:	0036581b          	srliw	a6,a2,0x3
    800081b0:	fff8081b          	addiw	a6,a6,-1
    800081b4:	02081813          	slli	a6,a6,0x20
    800081b8:	01d85893          	srli	a7,a6,0x1d
    800081bc:	00858813          	addi	a6,a1,8
    800081c0:	00058793          	mv	a5,a1
    800081c4:	00050713          	mv	a4,a0
    800081c8:	01088833          	add	a6,a7,a6
    800081cc:	0007b883          	ld	a7,0(a5)
    800081d0:	00878793          	addi	a5,a5,8
    800081d4:	00870713          	addi	a4,a4,8
    800081d8:	ff173c23          	sd	a7,-8(a4)
    800081dc:	ff0798e3          	bne	a5,a6,800081cc <__memmove+0x68>
    800081e0:	ff867713          	andi	a4,a2,-8
    800081e4:	02071793          	slli	a5,a4,0x20
    800081e8:	0207d793          	srli	a5,a5,0x20
    800081ec:	00f585b3          	add	a1,a1,a5
    800081f0:	40e686bb          	subw	a3,a3,a4
    800081f4:	00f507b3          	add	a5,a0,a5
    800081f8:	06e60463          	beq	a2,a4,80008260 <__memmove+0xfc>
    800081fc:	0005c703          	lbu	a4,0(a1)
    80008200:	00e78023          	sb	a4,0(a5)
    80008204:	04068e63          	beqz	a3,80008260 <__memmove+0xfc>
    80008208:	0015c603          	lbu	a2,1(a1)
    8000820c:	00100713          	li	a4,1
    80008210:	00c780a3          	sb	a2,1(a5)
    80008214:	04e68663          	beq	a3,a4,80008260 <__memmove+0xfc>
    80008218:	0025c603          	lbu	a2,2(a1)
    8000821c:	00200713          	li	a4,2
    80008220:	00c78123          	sb	a2,2(a5)
    80008224:	02e68e63          	beq	a3,a4,80008260 <__memmove+0xfc>
    80008228:	0035c603          	lbu	a2,3(a1)
    8000822c:	00300713          	li	a4,3
    80008230:	00c781a3          	sb	a2,3(a5)
    80008234:	02e68663          	beq	a3,a4,80008260 <__memmove+0xfc>
    80008238:	0045c603          	lbu	a2,4(a1)
    8000823c:	00400713          	li	a4,4
    80008240:	00c78223          	sb	a2,4(a5)
    80008244:	00e68e63          	beq	a3,a4,80008260 <__memmove+0xfc>
    80008248:	0055c603          	lbu	a2,5(a1)
    8000824c:	00500713          	li	a4,5
    80008250:	00c782a3          	sb	a2,5(a5)
    80008254:	00e68663          	beq	a3,a4,80008260 <__memmove+0xfc>
    80008258:	0065c703          	lbu	a4,6(a1)
    8000825c:	00e78323          	sb	a4,6(a5)
    80008260:	00813403          	ld	s0,8(sp)
    80008264:	01010113          	addi	sp,sp,16
    80008268:	00008067          	ret
    8000826c:	02061713          	slli	a4,a2,0x20
    80008270:	02075713          	srli	a4,a4,0x20
    80008274:	00e587b3          	add	a5,a1,a4
    80008278:	f0f574e3          	bgeu	a0,a5,80008180 <__memmove+0x1c>
    8000827c:	02069613          	slli	a2,a3,0x20
    80008280:	02065613          	srli	a2,a2,0x20
    80008284:	fff64613          	not	a2,a2
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00c78633          	add	a2,a5,a2
    80008290:	fff7c683          	lbu	a3,-1(a5)
    80008294:	fff78793          	addi	a5,a5,-1
    80008298:	fff70713          	addi	a4,a4,-1
    8000829c:	00d70023          	sb	a3,0(a4)
    800082a0:	fec798e3          	bne	a5,a2,80008290 <__memmove+0x12c>
    800082a4:	00813403          	ld	s0,8(sp)
    800082a8:	01010113          	addi	sp,sp,16
    800082ac:	00008067          	ret
    800082b0:	02069713          	slli	a4,a3,0x20
    800082b4:	02075713          	srli	a4,a4,0x20
    800082b8:	00170713          	addi	a4,a4,1
    800082bc:	00e50733          	add	a4,a0,a4
    800082c0:	00050793          	mv	a5,a0
    800082c4:	0005c683          	lbu	a3,0(a1)
    800082c8:	00178793          	addi	a5,a5,1
    800082cc:	00158593          	addi	a1,a1,1
    800082d0:	fed78fa3          	sb	a3,-1(a5)
    800082d4:	fee798e3          	bne	a5,a4,800082c4 <__memmove+0x160>
    800082d8:	f89ff06f          	j	80008260 <__memmove+0xfc>

00000000800082dc <__putc>:
    800082dc:	fe010113          	addi	sp,sp,-32
    800082e0:	00813823          	sd	s0,16(sp)
    800082e4:	00113c23          	sd	ra,24(sp)
    800082e8:	02010413          	addi	s0,sp,32
    800082ec:	00050793          	mv	a5,a0
    800082f0:	fef40593          	addi	a1,s0,-17
    800082f4:	00100613          	li	a2,1
    800082f8:	00000513          	li	a0,0
    800082fc:	fef407a3          	sb	a5,-17(s0)
    80008300:	fffff097          	auipc	ra,0xfffff
    80008304:	b3c080e7          	jalr	-1220(ra) # 80006e3c <console_write>
    80008308:	01813083          	ld	ra,24(sp)
    8000830c:	01013403          	ld	s0,16(sp)
    80008310:	02010113          	addi	sp,sp,32
    80008314:	00008067          	ret

0000000080008318 <__getc>:
    80008318:	fe010113          	addi	sp,sp,-32
    8000831c:	00813823          	sd	s0,16(sp)
    80008320:	00113c23          	sd	ra,24(sp)
    80008324:	02010413          	addi	s0,sp,32
    80008328:	fe840593          	addi	a1,s0,-24
    8000832c:	00100613          	li	a2,1
    80008330:	00000513          	li	a0,0
    80008334:	fffff097          	auipc	ra,0xfffff
    80008338:	ae8080e7          	jalr	-1304(ra) # 80006e1c <console_read>
    8000833c:	fe844503          	lbu	a0,-24(s0)
    80008340:	01813083          	ld	ra,24(sp)
    80008344:	01013403          	ld	s0,16(sp)
    80008348:	02010113          	addi	sp,sp,32
    8000834c:	00008067          	ret

0000000080008350 <console_handler>:
    80008350:	fe010113          	addi	sp,sp,-32
    80008354:	00813823          	sd	s0,16(sp)
    80008358:	00113c23          	sd	ra,24(sp)
    8000835c:	00913423          	sd	s1,8(sp)
    80008360:	02010413          	addi	s0,sp,32
    80008364:	14202773          	csrr	a4,scause
    80008368:	100027f3          	csrr	a5,sstatus
    8000836c:	0027f793          	andi	a5,a5,2
    80008370:	06079e63          	bnez	a5,800083ec <console_handler+0x9c>
    80008374:	00074c63          	bltz	a4,8000838c <console_handler+0x3c>
    80008378:	01813083          	ld	ra,24(sp)
    8000837c:	01013403          	ld	s0,16(sp)
    80008380:	00813483          	ld	s1,8(sp)
    80008384:	02010113          	addi	sp,sp,32
    80008388:	00008067          	ret
    8000838c:	0ff77713          	andi	a4,a4,255
    80008390:	00900793          	li	a5,9
    80008394:	fef712e3          	bne	a4,a5,80008378 <console_handler+0x28>
    80008398:	ffffe097          	auipc	ra,0xffffe
    8000839c:	6dc080e7          	jalr	1756(ra) # 80006a74 <plic_claim>
    800083a0:	00a00793          	li	a5,10
    800083a4:	00050493          	mv	s1,a0
    800083a8:	02f50c63          	beq	a0,a5,800083e0 <console_handler+0x90>
    800083ac:	fc0506e3          	beqz	a0,80008378 <console_handler+0x28>
    800083b0:	00050593          	mv	a1,a0
    800083b4:	00002517          	auipc	a0,0x2
    800083b8:	93c50513          	addi	a0,a0,-1732 # 80009cf0 <_ZTV12ConsumerSync+0x108>
    800083bc:	fffff097          	auipc	ra,0xfffff
    800083c0:	afc080e7          	jalr	-1284(ra) # 80006eb8 <__printf>
    800083c4:	01013403          	ld	s0,16(sp)
    800083c8:	01813083          	ld	ra,24(sp)
    800083cc:	00048513          	mv	a0,s1
    800083d0:	00813483          	ld	s1,8(sp)
    800083d4:	02010113          	addi	sp,sp,32
    800083d8:	ffffe317          	auipc	t1,0xffffe
    800083dc:	6d430067          	jr	1748(t1) # 80006aac <plic_complete>
    800083e0:	fffff097          	auipc	ra,0xfffff
    800083e4:	3e0080e7          	jalr	992(ra) # 800077c0 <uartintr>
    800083e8:	fddff06f          	j	800083c4 <console_handler+0x74>
    800083ec:	00002517          	auipc	a0,0x2
    800083f0:	a0450513          	addi	a0,a0,-1532 # 80009df0 <digits+0x78>
    800083f4:	fffff097          	auipc	ra,0xfffff
    800083f8:	a68080e7          	jalr	-1432(ra) # 80006e5c <panic>
	...
