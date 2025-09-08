
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	88013103          	ld	sp,-1920(sp) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	340060ef          	jal	ra,8000635c <start>

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
    80001084:	475000ef          	jal	ra,80001cf8 <_ZN5Riscv20handleSupervisorTrapEv>

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
        // Delete the sleeping thread object we created.
        delete st;

        st = sleepingThreadQueue.peekFirst();
    }
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
    80001174:	94078793          	addi	a5,a5,-1728 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    80001178:	0007b023          	sd	zero,0(a5)
    8000117c:	0007b423          	sd	zero,8(a5)
    80001180:	0007b823          	sd	zero,16(a5)
    80001184:	0007bc23          	sd	zero,24(a5)
    80001188:	fd1ff06f          	j	80001158 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000118c <_ZN9Scheduler3getEv>:
{
    8000118c:	fe010113          	addi	sp,sp,-32
    80001190:	00113c23          	sd	ra,24(sp)
    80001194:	00813823          	sd	s0,16(sp)
    80001198:	00913423          	sd	s1,8(sp)
    8000119c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800011a0:	0000b797          	auipc	a5,0xb
    800011a4:	91078793          	addi	a5,a5,-1776 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    800011a8:	0007b503          	ld	a0,0(a5)
    800011ac:	04050263          	beqz	a0,800011f0 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011b0:	00853783          	ld	a5,8(a0)
    800011b4:	0000b717          	auipc	a4,0xb
    800011b8:	8ef73e23          	sd	a5,-1796(a4) # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011bc:	02078463          	beqz	a5,800011e4 <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800011c4:	00001097          	auipc	ra,0x1
    800011c8:	f24080e7          	jalr	-220(ra) # 800020e8 <_ZdlPv>
}
    800011cc:	00048513          	mv	a0,s1
    800011d0:	01813083          	ld	ra,24(sp)
    800011d4:	01013403          	ld	s0,16(sp)
    800011d8:	00813483          	ld	s1,8(sp)
    800011dc:	02010113          	addi	sp,sp,32
    800011e0:	00008067          	ret
        if (!head) { tail = 0; }
    800011e4:	0000b797          	auipc	a5,0xb
    800011e8:	8c07ba23          	sd	zero,-1836(a5) # 8000bab8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800011ec:	fd5ff06f          	j	800011c0 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    800011f0:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800011f4:	fd9ff06f          	j	800011cc <_ZN9Scheduler3getEv+0x40>

00000000800011f8 <_ZN9Scheduler3putEP3TCB>:
{
    800011f8:	fe010113          	addi	sp,sp,-32
    800011fc:	00113c23          	sd	ra,24(sp)
    80001200:	00813823          	sd	s0,16(sp)
    80001204:	00913423          	sd	s1,8(sp)
    80001208:	02010413          	addi	s0,sp,32
    8000120c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001210:	01000513          	li	a0,16
    80001214:	00001097          	auipc	ra,0x1
    80001218:	e54080e7          	jalr	-428(ra) # 80002068 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000121c:	00953023          	sd	s1,0(a0)
    80001220:	00053423          	sd	zero,8(a0)
        if (tail)
    80001224:	0000b797          	auipc	a5,0xb
    80001228:	88c78793          	addi	a5,a5,-1908 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    8000122c:	0087b783          	ld	a5,8(a5)
    80001230:	02078263          	beqz	a5,80001254 <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    80001234:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001238:	0000b797          	auipc	a5,0xb
    8000123c:	88a7b023          	sd	a0,-1920(a5) # 8000bab8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001240:	01813083          	ld	ra,24(sp)
    80001244:	01013403          	ld	s0,16(sp)
    80001248:	00813483          	ld	s1,8(sp)
    8000124c:	02010113          	addi	sp,sp,32
    80001250:	00008067          	ret
            head = tail = elem;
    80001254:	0000b797          	auipc	a5,0xb
    80001258:	85c78793          	addi	a5,a5,-1956 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    8000125c:	00a7b423          	sd	a0,8(a5)
    80001260:	00a7b023          	sd	a0,0(a5)
    80001264:	fddff06f          	j	80001240 <_ZN9Scheduler3putEP3TCB+0x48>

0000000080001268 <_ZN9Scheduler10putToSleepEm>:
{
    80001268:	fc010113          	addi	sp,sp,-64
    8000126c:	02113c23          	sd	ra,56(sp)
    80001270:	02813823          	sd	s0,48(sp)
    80001274:	02913423          	sd	s1,40(sp)
    80001278:	03213023          	sd	s2,32(sp)
    8000127c:	01313c23          	sd	s3,24(sp)
    80001280:	04010413          	addi	s0,sp,64
    80001284:	00050993          	mv	s3,a0
    thread_t t = TCB::running;
    80001288:	0000a797          	auipc	a5,0xa
    8000128c:	7a078793          	addi	a5,a5,1952 # 8000ba28 <_ZN3TCB7runningE>
    80001290:	0007b483          	ld	s1,0(a5)

    void unblock() { blocked_ = false; }

    bool isBlocked() { return blocked_; }

    void setSleeping(bool value) { sleeping_ = value; }
    80001294:	00100793          	li	a5,1
    80001298:	02f48923          	sb	a5,50(s1)
    sleepingThreadQueue.addByRule(new SleepingThread(t, time_slices_left), SleepingThread::_scheduler_rule, 0);
    8000129c:	01000513          	li	a0,16
    800012a0:	00001097          	auipc	ra,0x1
    800012a4:	dc8080e7          	jalr	-568(ra) # 80002068 <_Znwm>
    800012a8:	00050913          	mv	s2,a0
typedef TCB* thread_t;

struct SleepingThread {
    thread_t tcb_;
    uint64 time_slices_left_;
    SleepingThread(TCB *tcb, uint64 time_slices_left) : tcb_(tcb), time_slices_left_(time_slices_left) {}
    800012ac:	00953023          	sd	s1,0(a0)
    800012b0:	01353423          	sd	s3,8(a0)
    800012b4:	fc043423          	sd	zero,-56(s0)
        return tail->data;
    }

    // Rule defines ordering. rule(prev, curr) and rule(curr, next) should be true.
    void addByRule(T *data, bool (*rule)(T *, T *, uint64&), uint64 counter) {
        Elem* prev = nullptr, *curr = head;
    800012b8:	0000a797          	auipc	a5,0xa
    800012bc:	7f878793          	addi	a5,a5,2040 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    800012c0:	0107b483          	ld	s1,16(a5)
    800012c4:	00000993          	li	s3,0
        while (curr && !rule(curr->data, data, counter)) {
    800012c8:	02048463          	beqz	s1,800012f0 <_ZN9Scheduler10putToSleepEm+0x88>
    800012cc:	fc840613          	addi	a2,s0,-56
    800012d0:	00090593          	mv	a1,s2
    800012d4:	0004b503          	ld	a0,0(s1)
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	1c4080e7          	jalr	452(ra) # 8000149c <_ZN14SleepingThread15_scheduler_ruleEPS_S0_Rm>
    800012e0:	00051863          	bnez	a0,800012f0 <_ZN9Scheduler10putToSleepEm+0x88>
            prev = curr;
    800012e4:	00048993          	mv	s3,s1
            curr = curr->next;
    800012e8:	0084b483          	ld	s1,8(s1)
    800012ec:	fddff06f          	j	800012c8 <_ZN9Scheduler10putToSleepEm+0x60>
        }
        Elem* elem = new Elem(data, curr);
    800012f0:	01000513          	li	a0,16
    800012f4:	00001097          	auipc	ra,0x1
    800012f8:	d74080e7          	jalr	-652(ra) # 80002068 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800012fc:	01253023          	sd	s2,0(a0)
    80001300:	00953423          	sd	s1,8(a0)
        if (prev) { prev->next = elem; }
    80001304:	02098863          	beqz	s3,80001334 <_ZN9Scheduler10putToSleepEm+0xcc>
    80001308:	00a9b423          	sd	a0,8(s3)
        else { head = elem; }
        if (!curr) { tail = elem; }
    8000130c:	02048a63          	beqz	s1,80001340 <_ZN9Scheduler10putToSleepEm+0xd8>
    TCB::yield();
    80001310:	00001097          	auipc	ra,0x1
    80001314:	3c4080e7          	jalr	964(ra) # 800026d4 <_ZN3TCB5yieldEv>
}
    80001318:	03813083          	ld	ra,56(sp)
    8000131c:	03013403          	ld	s0,48(sp)
    80001320:	02813483          	ld	s1,40(sp)
    80001324:	02013903          	ld	s2,32(sp)
    80001328:	01813983          	ld	s3,24(sp)
    8000132c:	04010113          	addi	sp,sp,64
    80001330:	00008067          	ret
        else { head = elem; }
    80001334:	0000a797          	auipc	a5,0xa
    80001338:	78a7b623          	sd	a0,1932(a5) # 8000bac0 <_ZN9Scheduler19sleepingThreadQueueE>
    8000133c:	fd1ff06f          	j	8000130c <_ZN9Scheduler10putToSleepEm+0xa4>
        if (!curr) { tail = elem; }
    80001340:	0000a797          	auipc	a5,0xa
    80001344:	78a7b423          	sd	a0,1928(a5) # 8000bac8 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    80001348:	fc9ff06f          	j	80001310 <_ZN9Scheduler10putToSleepEm+0xa8>

000000008000134c <_ZN9Scheduler16maybeWakeThreadsEv>:
void Scheduler::maybeWakeThreads() {
    8000134c:	fe010113          	addi	sp,sp,-32
    80001350:	00113c23          	sd	ra,24(sp)
    80001354:	00813823          	sd	s0,16(sp)
    80001358:	00913423          	sd	s1,8(sp)
    8000135c:	01213023          	sd	s2,0(sp)
    80001360:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001364:	0000a797          	auipc	a5,0xa
    80001368:	74c78793          	addi	a5,a5,1868 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    8000136c:	0107b483          	ld	s1,16(a5)
    80001370:	08048e63          	beqz	s1,8000140c <_ZN9Scheduler16maybeWakeThreadsEv+0xc0>
        return head->data;
    80001374:	0004b483          	ld	s1,0(s1)
    if (st) {
    80001378:	08048a63          	beqz	s1,8000140c <_ZN9Scheduler16maybeWakeThreadsEv+0xc0>
        st->time_slices_left_--;
    8000137c:	0084b783          	ld	a5,8(s1)
    80001380:	fff78793          	addi	a5,a5,-1
    80001384:	00f4b423          	sd	a5,8(s1)
        assert(st->time_slices_left_ >= 0, "Thread should already be out of sleep.");
    80001388:	00008597          	auipc	a1,0x8
    8000138c:	c9858593          	addi	a1,a1,-872 # 80009020 <CONSOLE_STATUS+0x10>
    80001390:	00100513          	li	a0,1
    80001394:	00001097          	auipc	ra,0x1
    80001398:	e6c080e7          	jalr	-404(ra) # 80002200 <_Z6assertbPKc>
    8000139c:	0700006f          	j	8000140c <_ZN9Scheduler16maybeWakeThreadsEv+0xc0>
        if (!head) { tail = 0; }
    800013a0:	0000a797          	auipc	a5,0xa
    800013a4:	7207b423          	sd	zero,1832(a5) # 8000bac8 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
        delete elem;
    800013a8:	00001097          	auipc	ra,0x1
    800013ac:	d40080e7          	jalr	-704(ra) # 800020e8 <_ZdlPv>
        st->tcb_->setSleeping(false);
    800013b0:	0004b783          	ld	a5,0(s1)
    800013b4:	02078923          	sb	zero,50(a5)
        readyThreadQueue.addLast(st->tcb_);
    800013b8:	0004b903          	ld	s2,0(s1)
        Elem *elem = new Elem(data, 0);
    800013bc:	01000513          	li	a0,16
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	ca8080e7          	jalr	-856(ra) # 80002068 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800013c8:	01253023          	sd	s2,0(a0)
    800013cc:	00053423          	sd	zero,8(a0)
        if (tail)
    800013d0:	0000a797          	auipc	a5,0xa
    800013d4:	6e078793          	addi	a5,a5,1760 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    800013d8:	0087b783          	ld	a5,8(a5)
    800013dc:	06078063          	beqz	a5,8000143c <_ZN9Scheduler16maybeWakeThreadsEv+0xf0>
            tail->next = elem;
    800013e0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800013e4:	0000a797          	auipc	a5,0xa
    800013e8:	6ca7ba23          	sd	a0,1748(a5) # 8000bab8 <_ZN9Scheduler16readyThreadQueueE+0x8>
        delete st;
    800013ec:	00048513          	mv	a0,s1
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	cf8080e7          	jalr	-776(ra) # 800020e8 <_ZdlPv>
        if (!head) { return 0; }
    800013f8:	0000a797          	auipc	a5,0xa
    800013fc:	6b878793          	addi	a5,a5,1720 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    80001400:	0107b783          	ld	a5,16(a5)
    80001404:	04078663          	beqz	a5,80001450 <_ZN9Scheduler16maybeWakeThreadsEv+0x104>
        return head->data;
    80001408:	0007b483          	ld	s1,0(a5)
    while (st && st->time_slices_left_ == 0) {
    8000140c:	04048263          	beqz	s1,80001450 <_ZN9Scheduler16maybeWakeThreadsEv+0x104>
    80001410:	0084b783          	ld	a5,8(s1)
    80001414:	02079e63          	bnez	a5,80001450 <_ZN9Scheduler16maybeWakeThreadsEv+0x104>
        if (!head) { return 0; }
    80001418:	0000a797          	auipc	a5,0xa
    8000141c:	69878793          	addi	a5,a5,1688 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    80001420:	0107b503          	ld	a0,16(a5)
    80001424:	f80506e3          	beqz	a0,800013b0 <_ZN9Scheduler16maybeWakeThreadsEv+0x64>
        head = head->next;
    80001428:	00853783          	ld	a5,8(a0)
    8000142c:	0000a717          	auipc	a4,0xa
    80001430:	68f73a23          	sd	a5,1684(a4) # 8000bac0 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    80001434:	f6079ae3          	bnez	a5,800013a8 <_ZN9Scheduler16maybeWakeThreadsEv+0x5c>
    80001438:	f69ff06f          	j	800013a0 <_ZN9Scheduler16maybeWakeThreadsEv+0x54>
            head = tail = elem;
    8000143c:	0000a797          	auipc	a5,0xa
    80001440:	67478793          	addi	a5,a5,1652 # 8000bab0 <_ZN9Scheduler16readyThreadQueueE>
    80001444:	00a7b423          	sd	a0,8(a5)
    80001448:	00a7b023          	sd	a0,0(a5)
    8000144c:	fa1ff06f          	j	800013ec <_ZN9Scheduler16maybeWakeThreadsEv+0xa0>
    80001450:	01813083          	ld	ra,24(sp)
    80001454:	01013403          	ld	s0,16(sp)
    80001458:	00813483          	ld	s1,8(sp)
    8000145c:	00013903          	ld	s2,0(sp)
    80001460:	02010113          	addi	sp,sp,32
    80001464:	00008067          	ret

0000000080001468 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00113423          	sd	ra,8(sp)
    80001470:	00813023          	sd	s0,0(sp)
    80001474:	01010413          	addi	s0,sp,16
    80001478:	000105b7          	lui	a1,0x10
    8000147c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001480:	00100513          	li	a0,1
    80001484:	00000097          	auipc	ra,0x0
    80001488:	cc0080e7          	jalr	-832(ra) # 80001144 <_Z41__static_initialization_and_destruction_0ii>
    8000148c:	00813083          	ld	ra,8(sp)
    80001490:	00013403          	ld	s0,0(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_ZN14SleepingThread15_scheduler_ruleEPS_S0_Rm>:

    static bool _scheduler_rule(SleepingThread *prev, SleepingThread *curr, uint64& counter) {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00813423          	sd	s0,8(sp)
    800014a4:	01010413          	addi	s0,sp,16
        counter += prev->time_slices_left_;
    800014a8:	00853503          	ld	a0,8(a0)
    800014ac:	00063783          	ld	a5,0(a2)
    800014b0:	00f50533          	add	a0,a0,a5
    800014b4:	00a63023          	sd	a0,0(a2)
        return counter >= curr->time_slices_left_;
    800014b8:	0085b783          	ld	a5,8(a1)
    800014bc:	00f53533          	sltu	a0,a0,a5
    }
    800014c0:	00154513          	xori	a0,a0,1
    800014c4:	00813403          	ld	s0,8(sp)
    800014c8:	01010113          	addi	sp,sp,16
    800014cc:	00008067          	ret

00000000800014d0 <_ZN6Thread9body_execEPv>:
// Out-of-line implementation for the C++ syscall trampoline.
#include "../h/syscall_cpp.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void Thread::body_exec(void* thread) {
    800014d0:	ff010113          	addi	sp,sp,-16
    800014d4:	00113423          	sd	ra,8(sp)
    800014d8:	00813023          	sd	s0,0(sp)
    800014dc:	01010413          	addi	s0,sp,16
    static_cast<Thread*>(thread)->run();
    800014e0:	00053783          	ld	a5,0(a0)
    800014e4:	0107b783          	ld	a5,16(a5)
    800014e8:	000780e7          	jalr	a5
}
    800014ec:	00813083          	ld	ra,8(sp)
    800014f0:	00013403          	ld	s0,0(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret

00000000800014fc <_ZN10_semaphore5closeEv>:
    debug_print("\n");
    return new _semaphore((int)init);
}

void _semaphore::close()
{
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	01213023          	sd	s2,0(sp)
    80001510:	02010413          	addi	s0,sp,32
    80001514:	00050913          	mv	s2,a0
    debug_print("Semaphore close: Closing semaphore\n");
    80001518:	00008517          	auipc	a0,0x8
    8000151c:	b3050513          	addi	a0,a0,-1232 # 80009048 <CONSOLE_STATUS+0x38>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	cb8080e7          	jalr	-840(ra) # 800021d8 <_Z11debug_printPKc>
    closed_ = true;
    80001528:	00100793          	li	a5,1
    8000152c:	00f90223          	sb	a5,4(s2)
    80001530:	0280006f          	j	80001558 <_ZN10_semaphore5closeEv+0x5c>
        if (!head) { tail = 0; }
    80001534:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    80001538:	00053483          	ld	s1,0(a0)
        delete elem;
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	bac080e7          	jalr	-1108(ra) # 800020e8 <_ZdlPv>
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    80001544:	02048663          	beqz	s1,80001570 <_ZN10_semaphore5closeEv+0x74>
    void unblock() { blocked_ = false; }
    80001548:	020488a3          	sb	zero,49(s1)
    {
        t->unblock();
        Scheduler::put(t);
    8000154c:	00048513          	mv	a0,s1
    80001550:	00000097          	auipc	ra,0x0
    80001554:	ca8080e7          	jalr	-856(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001558:	00893503          	ld	a0,8(s2)
    8000155c:	00050a63          	beqz	a0,80001570 <_ZN10_semaphore5closeEv+0x74>
        head = head->next;
    80001560:	00853783          	ld	a5,8(a0)
    80001564:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    80001568:	fc0798e3          	bnez	a5,80001538 <_ZN10_semaphore5closeEv+0x3c>
    8000156c:	fc9ff06f          	j	80001534 <_ZN10_semaphore5closeEv+0x38>
    }
}
    80001570:	01813083          	ld	ra,24(sp)
    80001574:	01013403          	ld	s0,16(sp)
    80001578:	00813483          	ld	s1,8(sp)
    8000157c:	00013903          	ld	s2,0(sp)
    80001580:	02010113          	addi	sp,sp,32
    80001584:	00008067          	ret

0000000080001588 <_ZN10_semaphore4waitEv>:

int _semaphore::wait()
{
    // Cannot wait on a closed semaphore.
    if (closed_)
    80001588:	00454783          	lbu	a5,4(a0)
    8000158c:	0a079063          	bnez	a5,8000162c <_ZN10_semaphore4waitEv+0xa4>
    {
        return -1;
    }

    if (value_ > 0)
    80001590:	00052783          	lw	a5,0(a0)
    80001594:	00f05a63          	blez	a5,800015a8 <_ZN10_semaphore4waitEv+0x20>
    {
        value_ -= 1;
    80001598:	fff7879b          	addiw	a5,a5,-1
    8000159c:	00f52023          	sw	a5,0(a0)
        return 0;
    800015a0:	00000513          	li	a0,0
    800015a4:	00008067          	ret
{
    800015a8:	fe010113          	addi	sp,sp,-32
    800015ac:	00113c23          	sd	ra,24(sp)
    800015b0:	00813823          	sd	s0,16(sp)
    800015b4:	00913423          	sd	s1,8(sp)
    800015b8:	01213023          	sd	s2,0(sp)
    800015bc:	02010413          	addi	s0,sp,32
    800015c0:	00050493          	mv	s1,a0
    }

    // We do not need to remove the thread from the scheduler, just block it, 
    // and add it to the blocked list (waiting queue), then dispatch.
    TCB* old = TCB::running;
    800015c4:	0000a797          	auipc	a5,0xa
    800015c8:	46478793          	addi	a5,a5,1124 # 8000ba28 <_ZN3TCB7runningE>
    800015cc:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    800015d0:	00100793          	li	a5,1
    800015d4:	02f908a3          	sb	a5,49(s2)
        Elem *elem = new Elem(data, 0);
    800015d8:	01000513          	li	a0,16
    800015dc:	00001097          	auipc	ra,0x1
    800015e0:	a8c080e7          	jalr	-1396(ra) # 80002068 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800015e4:	01253023          	sd	s2,0(a0)
    800015e8:	00053423          	sd	zero,8(a0)
        if (tail)
    800015ec:	0104b783          	ld	a5,16(s1)
    800015f0:	02078863          	beqz	a5,80001620 <_ZN10_semaphore4waitEv+0x98>
            tail->next = elem;
    800015f4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015f8:	00a4b823          	sd	a0,16(s1)
    old->block();
    blocked_.addLast(old);
    TCB::yield();
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	0d8080e7          	jalr	216(ra) # 800026d4 <_ZN3TCB5yieldEv>

    // TODO: Check if this works as a way of detecting closed semaphores.
    return 0;
    80001604:	00000513          	li	a0,0
}
    80001608:	01813083          	ld	ra,24(sp)
    8000160c:	01013403          	ld	s0,16(sp)
    80001610:	00813483          	ld	s1,8(sp)
    80001614:	00013903          	ld	s2,0(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret
            head = tail = elem;
    80001620:	00a4b823          	sd	a0,16(s1)
    80001624:	00a4b423          	sd	a0,8(s1)
    80001628:	fd5ff06f          	j	800015fc <_ZN10_semaphore4waitEv+0x74>
        return -1;
    8000162c:	fff00513          	li	a0,-1
}
    80001630:	00008067          	ret

0000000080001634 <_ZN10_semaphore6signalEv>:

void _semaphore::signal()
{
    80001634:	fe010113          	addi	sp,sp,-32
    80001638:	00113c23          	sd	ra,24(sp)
    8000163c:	00813823          	sd	s0,16(sp)
    80001640:	00913423          	sd	s1,8(sp)
    80001644:	01213023          	sd	s2,0(sp)
    80001648:	02010413          	addi	s0,sp,32
    8000164c:	00050493          	mv	s1,a0
        if (!head) { return 0; }
    80001650:	00853503          	ld	a0,8(a0)
    80001654:	02050e63          	beqz	a0,80001690 <_ZN10_semaphore6signalEv+0x5c>
        head = head->next;
    80001658:	00853783          	ld	a5,8(a0)
    8000165c:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001660:	02078463          	beqz	a5,80001688 <_ZN10_semaphore6signalEv+0x54>
        T *ret = elem->data;
    80001664:	00053903          	ld	s2,0(a0)
        delete elem;
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	a80080e7          	jalr	-1408(ra) # 800020e8 <_ZdlPv>
    if (TCB *t = blocked_.removeFirst())
    80001670:	02090063          	beqz	s2,80001690 <_ZN10_semaphore6signalEv+0x5c>
    void unblock() { blocked_ = false; }
    80001674:	020908a3          	sb	zero,49(s2)
    {
        t->unblock();
        Scheduler::put(t);
    80001678:	00090513          	mv	a0,s2
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	b7c080e7          	jalr	-1156(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
    80001684:	0180006f          	j	8000169c <_ZN10_semaphore6signalEv+0x68>
        if (!head) { tail = 0; }
    80001688:	0004b823          	sd	zero,16(s1)
    8000168c:	fd9ff06f          	j	80001664 <_ZN10_semaphore6signalEv+0x30>
    }
    else
    {
        value_ += 1;
    80001690:	0004a783          	lw	a5,0(s1)
    80001694:	0017879b          	addiw	a5,a5,1
    80001698:	00f4a023          	sw	a5,0(s1)
    }
}
    8000169c:	01813083          	ld	ra,24(sp)
    800016a0:	01013403          	ld	s0,16(sp)
    800016a4:	00813483          	ld	s1,8(sp)
    800016a8:	00013903          	ld	s2,0(sp)
    800016ac:	02010113          	addi	sp,sp,32
    800016b0:	00008067          	ret

00000000800016b4 <_ZN10_semaphoreC1Ei>:

    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00813423          	sd	s0,8(sp)
    800016bc:	01010413          	addi	s0,sp,16
    800016c0:	00b52023          	sw	a1,0(a0)
    800016c4:	00050223          	sb	zero,4(a0)
    List() : head(0), tail(0) {}
    800016c8:	00053423          	sd	zero,8(a0)
    800016cc:	00053823          	sd	zero,16(a0)
    800016d0:	00813403          	ld	s0,8(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN10_semaphore4openEj>:
{
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	01213023          	sd	s2,0(sp)
    800016f0:	02010413          	addi	s0,sp,32
    800016f4:	00050493          	mv	s1,a0
    debug_print("Semaphore open: Initializing semaphore with value: ");
    800016f8:	00008517          	auipc	a0,0x8
    800016fc:	97850513          	addi	a0,a0,-1672 # 80009070 <CONSOLE_STATUS+0x60>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	ad8080e7          	jalr	-1320(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001708:	02049513          	slli	a0,s1,0x20
    8000170c:	02055513          	srli	a0,a0,0x20
    80001710:	00001097          	auipc	ra,0x1
    80001714:	c10080e7          	jalr	-1008(ra) # 80002320 <_Z11debug_printm>
    debug_print("\n");
    80001718:	00008517          	auipc	a0,0x8
    8000171c:	cc850513          	addi	a0,a0,-824 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001720:	00001097          	auipc	ra,0x1
    80001724:	ab8080e7          	jalr	-1352(ra) # 800021d8 <_Z11debug_printPKc>
    return new _semaphore((int)init);
    80001728:	01800513          	li	a0,24
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	93c080e7          	jalr	-1732(ra) # 80002068 <_Znwm>
    80001734:	00050913          	mv	s2,a0
    80001738:	00048593          	mv	a1,s1
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	f78080e7          	jalr	-136(ra) # 800016b4 <_ZN10_semaphoreC1Ei>
}
    80001744:	00090513          	mv	a0,s2
    80001748:	01813083          	ld	ra,24(sp)
    8000174c:	01013403          	ld	s0,16(sp)
    80001750:	00813483          	ld	s1,8(sp)
    80001754:	00013903          	ld	s2,0(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret

0000000080001760 <_Z7syscall11SyscallCodemmmmmmmm>:
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/print.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    8000176c:	00000073          	ecall
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    80001770:	00050513          	mv	a0,a0
    return result;
}
    80001774:	00813403          	ld	s0,8(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <_Z9mem_allocm>:

// TODO: Do this with number of blocks instead of size.
void* mem_alloc (size_t size) {
    80001780:	fd010113          	addi	sp,sp,-48
    80001784:	02113423          	sd	ra,40(sp)
    80001788:	02813023          	sd	s0,32(sp)
    8000178c:	00913c23          	sd	s1,24(sp)
    80001790:	03010413          	addi	s0,sp,48
    80001794:	00050493          	mv	s1,a0
    debug_print("Syscall malloc called\n");
    80001798:	00008517          	auipc	a0,0x8
    8000179c:	91050513          	addi	a0,a0,-1776 # 800090a8 <CONSOLE_STATUS+0x98>
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	a38080e7          	jalr	-1480(ra) # 800021d8 <_Z11debug_printPKc>
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    800017a8:	00013023          	sd	zero,0(sp)
    800017ac:	00000893          	li	a7,0
    800017b0:	00000813          	li	a6,0
    800017b4:	00000793          	li	a5,0
    800017b8:	00000713          	li	a4,0
    800017bc:	00000693          	li	a3,0
    800017c0:	00000613          	li	a2,0
    800017c4:	00048593          	mv	a1,s1
    800017c8:	00100513          	li	a0,1
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	f94080e7          	jalr	-108(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800017d4:	02813083          	ld	ra,40(sp)
    800017d8:	02013403          	ld	s0,32(sp)
    800017dc:	01813483          	ld	s1,24(sp)
    800017e0:	03010113          	addi	sp,sp,48
    800017e4:	00008067          	ret

00000000800017e8 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    800017e8:	fd010113          	addi	sp,sp,-48
    800017ec:	02113423          	sd	ra,40(sp)
    800017f0:	02813023          	sd	s0,32(sp)
    800017f4:	00913c23          	sd	s1,24(sp)
    800017f8:	03010413          	addi	s0,sp,48
    800017fc:	00050493          	mv	s1,a0
    debug_print("Syscall free called\n");
    80001800:	00008517          	auipc	a0,0x8
    80001804:	8c050513          	addi	a0,a0,-1856 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	9d0080e7          	jalr	-1584(ra) # 800021d8 <_Z11debug_printPKc>
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    80001810:	00013023          	sd	zero,0(sp)
    80001814:	00000893          	li	a7,0
    80001818:	00000813          	li	a6,0
    8000181c:	00000793          	li	a5,0
    80001820:	00000713          	li	a4,0
    80001824:	00000693          	li	a3,0
    80001828:	00000613          	li	a2,0
    8000182c:	00048593          	mv	a1,s1
    80001830:	00200513          	li	a0,2
    80001834:	00000097          	auipc	ra,0x0
    80001838:	f2c080e7          	jalr	-212(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000183c:	0005051b          	sext.w	a0,a0
    80001840:	02813083          	ld	ra,40(sp)
    80001844:	02013403          	ld	s0,32(sp)
    80001848:	01813483          	ld	s1,24(sp)
    8000184c:	03010113          	addi	sp,sp,48
    80001850:	00008067          	ret

0000000080001854 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001854:	fe010113          	addi	sp,sp,-32
    80001858:	00113c23          	sd	ra,24(sp)
    8000185c:	00813823          	sd	s0,16(sp)
    80001860:	02010413          	addi	s0,sp,32
    debug_print("Syscall get free space called\n");
    80001864:	00008517          	auipc	a0,0x8
    80001868:	87450513          	addi	a0,a0,-1932 # 800090d8 <CONSOLE_STATUS+0xc8>
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	96c080e7          	jalr	-1684(ra) # 800021d8 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    80001874:	00013023          	sd	zero,0(sp)
    80001878:	00000893          	li	a7,0
    8000187c:	00000813          	li	a6,0
    80001880:	00000793          	li	a5,0
    80001884:	00000713          	li	a4,0
    80001888:	00000693          	li	a3,0
    8000188c:	00000613          	li	a2,0
    80001890:	00000593          	li	a1,0
    80001894:	00300513          	li	a0,3
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	ec8080e7          	jalr	-312(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800018a0:	01813083          	ld	ra,24(sp)
    800018a4:	01013403          	ld	s0,16(sp)
    800018a8:	02010113          	addi	sp,sp,32
    800018ac:	00008067          	ret

00000000800018b0 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800018b0:	fe010113          	addi	sp,sp,-32
    800018b4:	00113c23          	sd	ra,24(sp)
    800018b8:	00813823          	sd	s0,16(sp)
    800018bc:	02010413          	addi	s0,sp,32
    debug_print("Syscall get largest free block called\n");
    800018c0:	00008517          	auipc	a0,0x8
    800018c4:	83850513          	addi	a0,a0,-1992 # 800090f8 <CONSOLE_STATUS+0xe8>
    800018c8:	00001097          	auipc	ra,0x1
    800018cc:	910080e7          	jalr	-1776(ra) # 800021d8 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    800018d0:	00013023          	sd	zero,0(sp)
    800018d4:	00000893          	li	a7,0
    800018d8:	00000813          	li	a6,0
    800018dc:	00000793          	li	a5,0
    800018e0:	00000713          	li	a4,0
    800018e4:	00000693          	li	a3,0
    800018e8:	00000613          	li	a2,0
    800018ec:	00000593          	li	a1,0
    800018f0:	00400513          	li	a0,4
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	e6c080e7          	jalr	-404(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800018fc:	01813083          	ld	ra,24(sp)
    80001900:	01013403          	ld	s0,16(sp)
    80001904:	02010113          	addi	sp,sp,32
    80001908:	00008067          	ret

000000008000190c <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    8000190c:	fe010113          	addi	sp,sp,-32
    80001910:	00113c23          	sd	ra,24(sp)
    80001914:	00813823          	sd	s0,16(sp)
    80001918:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    8000191c:	00013023          	sd	zero,0(sp)
    80001920:	00000893          	li	a7,0
    80001924:	00000813          	li	a6,0
    80001928:	00000793          	li	a5,0
    8000192c:	00000713          	li	a4,0
    80001930:	00060693          	mv	a3,a2
    80001934:	00058613          	mv	a2,a1
    80001938:	00050593          	mv	a1,a0
    8000193c:	01100513          	li	a0,17
    80001940:	00000097          	auipc	ra,0x0
    80001944:	e20080e7          	jalr	-480(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001948:	0005051b          	sext.w	a0,a0
    8000194c:	01813083          	ld	ra,24(sp)
    80001950:	01013403          	ld	s0,16(sp)
    80001954:	02010113          	addi	sp,sp,32
    80001958:	00008067          	ret

000000008000195c <_Z11thread_exitv>:

int thread_exit () {
    8000195c:	fe010113          	addi	sp,sp,-32
    80001960:	00113c23          	sd	ra,24(sp)
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	02010413          	addi	s0,sp,32
    debug_print("Syscall thread exit called\n");
    8000196c:	00007517          	auipc	a0,0x7
    80001970:	7b450513          	addi	a0,a0,1972 # 80009120 <CONSOLE_STATUS+0x110>
    80001974:	00001097          	auipc	ra,0x1
    80001978:	864080e7          	jalr	-1948(ra) # 800021d8 <_Z11debug_printPKc>
    return syscall(SyscallCode::THREAD_EXIT);
    8000197c:	00013023          	sd	zero,0(sp)
    80001980:	00000893          	li	a7,0
    80001984:	00000813          	li	a6,0
    80001988:	00000793          	li	a5,0
    8000198c:	00000713          	li	a4,0
    80001990:	00000693          	li	a3,0
    80001994:	00000613          	li	a2,0
    80001998:	00000593          	li	a1,0
    8000199c:	01200513          	li	a0,18
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	dc0080e7          	jalr	-576(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800019a8:	0005051b          	sext.w	a0,a0
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	02010113          	addi	sp,sp,32
    800019b8:	00008067          	ret

00000000800019bc <_Z15thread_dispatchv>:

void thread_dispatch () {
    800019bc:	fe010113          	addi	sp,sp,-32
    800019c0:	00113c23          	sd	ra,24(sp)
    800019c4:	00813823          	sd	s0,16(sp)
    800019c8:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_DISPATCH);
    800019cc:	00013023          	sd	zero,0(sp)
    800019d0:	00000893          	li	a7,0
    800019d4:	00000813          	li	a6,0
    800019d8:	00000793          	li	a5,0
    800019dc:	00000713          	li	a4,0
    800019e0:	00000693          	li	a3,0
    800019e4:	00000613          	li	a2,0
    800019e8:	00000593          	li	a1,0
    800019ec:	01300513          	li	a0,19
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	d70080e7          	jalr	-656(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800019f8:	01813083          	ld	ra,24(sp)
    800019fc:	01013403          	ld	s0,16(sp)
    80001a00:	02010113          	addi	sp,sp,32
    80001a04:	00008067          	ret

0000000080001a08 <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init) {
    80001a08:	fd010113          	addi	sp,sp,-48
    80001a0c:	02113423          	sd	ra,40(sp)
    80001a10:	02813023          	sd	s0,32(sp)
    80001a14:	00913c23          	sd	s1,24(sp)
    80001a18:	01213823          	sd	s2,16(sp)
    80001a1c:	03010413          	addi	s0,sp,48
    80001a20:	00050913          	mv	s2,a0
    80001a24:	00058493          	mv	s1,a1
    debug_print("Syscall sem open called\n");
    80001a28:	00007517          	auipc	a0,0x7
    80001a2c:	71850513          	addi	a0,a0,1816 # 80009140 <CONSOLE_STATUS+0x130>
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	7a8080e7          	jalr	1960(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Handle: ");
    80001a38:	00007517          	auipc	a0,0x7
    80001a3c:	72850513          	addi	a0,a0,1832 # 80009160 <CONSOLE_STATUS+0x150>
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	798080e7          	jalr	1944(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)handle);
    80001a48:	00090513          	mv	a0,s2
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	8d4080e7          	jalr	-1836(ra) # 80002320 <_Z11debug_printm>
    debug_print("\n");
    80001a54:	00008517          	auipc	a0,0x8
    80001a58:	98c50513          	addi	a0,a0,-1652 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	77c080e7          	jalr	1916(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Init: ");
    80001a64:	00007517          	auipc	a0,0x7
    80001a68:	71c50513          	addi	a0,a0,1820 # 80009180 <CONSOLE_STATUS+0x170>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	76c080e7          	jalr	1900(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001a74:	02049493          	slli	s1,s1,0x20
    80001a78:	0204d493          	srli	s1,s1,0x20
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	8a0080e7          	jalr	-1888(ra) # 80002320 <_Z11debug_printm>
    debug_print("\n");
    80001a88:	00008517          	auipc	a0,0x8
    80001a8c:	95850513          	addi	a0,a0,-1704 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	748080e7          	jalr	1864(ra) # 800021d8 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
    80001a98:	00013023          	sd	zero,0(sp)
    80001a9c:	00000893          	li	a7,0
    80001aa0:	00000813          	li	a6,0
    80001aa4:	00000793          	li	a5,0
    80001aa8:	00000713          	li	a4,0
    80001aac:	00000693          	li	a3,0
    80001ab0:	00048613          	mv	a2,s1
    80001ab4:	00090593          	mv	a1,s2
    80001ab8:	02100513          	li	a0,33
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	ca4080e7          	jalr	-860(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001ac4:	0005051b          	sext.w	a0,a0
    80001ac8:	02813083          	ld	ra,40(sp)
    80001acc:	02013403          	ld	s0,32(sp)
    80001ad0:	01813483          	ld	s1,24(sp)
    80001ad4:	01013903          	ld	s2,16(sp)
    80001ad8:	03010113          	addi	sp,sp,48
    80001adc:	00008067          	ret

0000000080001ae0 <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle) {
    80001ae0:	fd010113          	addi	sp,sp,-48
    80001ae4:	02113423          	sd	ra,40(sp)
    80001ae8:	02813023          	sd	s0,32(sp)
    80001aec:	00913c23          	sd	s1,24(sp)
    80001af0:	03010413          	addi	s0,sp,48
    80001af4:	00050493          	mv	s1,a0
    debug_print("Syscall sem close called\n");
    80001af8:	00007517          	auipc	a0,0x7
    80001afc:	6a850513          	addi	a0,a0,1704 # 800091a0 <CONSOLE_STATUS+0x190>
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	6d8080e7          	jalr	1752(ra) # 800021d8 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
    80001b08:	00013023          	sd	zero,0(sp)
    80001b0c:	00000893          	li	a7,0
    80001b10:	00000813          	li	a6,0
    80001b14:	00000793          	li	a5,0
    80001b18:	00000713          	li	a4,0
    80001b1c:	00000693          	li	a3,0
    80001b20:	00000613          	li	a2,0
    80001b24:	00048593          	mv	a1,s1
    80001b28:	02200513          	li	a0,34
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	c34080e7          	jalr	-972(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001b34:	0005051b          	sext.w	a0,a0
    80001b38:	02813083          	ld	ra,40(sp)
    80001b3c:	02013403          	ld	s0,32(sp)
    80001b40:	01813483          	ld	s1,24(sp)
    80001b44:	03010113          	addi	sp,sp,48
    80001b48:	00008067          	ret

0000000080001b4c <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id) {
    80001b4c:	fe010113          	addi	sp,sp,-32
    80001b50:	00113c23          	sd	ra,24(sp)
    80001b54:	00813823          	sd	s0,16(sp)
    80001b58:	02010413          	addi	s0,sp,32

    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
    80001b5c:	00013023          	sd	zero,0(sp)
    80001b60:	00000893          	li	a7,0
    80001b64:	00000813          	li	a6,0
    80001b68:	00000793          	li	a5,0
    80001b6c:	00000713          	li	a4,0
    80001b70:	00000693          	li	a3,0
    80001b74:	00000613          	li	a2,0
    80001b78:	00050593          	mv	a1,a0
    80001b7c:	02300513          	li	a0,35
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	be0080e7          	jalr	-1056(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001b88:	0005051b          	sext.w	a0,a0
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	02010113          	addi	sp,sp,32
    80001b98:	00008067          	ret

0000000080001b9c <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id) {
    80001b9c:	fe010113          	addi	sp,sp,-32
    80001ba0:	00113c23          	sd	ra,24(sp)
    80001ba4:	00813823          	sd	s0,16(sp)
    80001ba8:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
    80001bac:	00013023          	sd	zero,0(sp)
    80001bb0:	00000893          	li	a7,0
    80001bb4:	00000813          	li	a6,0
    80001bb8:	00000793          	li	a5,0
    80001bbc:	00000713          	li	a4,0
    80001bc0:	00000693          	li	a3,0
    80001bc4:	00000613          	li	a2,0
    80001bc8:	00050593          	mv	a1,a0
    80001bcc:	02400513          	li	a0,36
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	b90080e7          	jalr	-1136(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001bd8:	0005051b          	sext.w	a0,a0
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	02010113          	addi	sp,sp,32
    80001be8:	00008067          	ret

0000000080001bec <_Z10time_sleepm>:

int time_sleep (time_t time) {
    80001bec:	fe010113          	addi	sp,sp,-32
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	00813823          	sd	s0,16(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::TIME_SLEEP, (uint64)time);
    80001bfc:	00013023          	sd	zero,0(sp)
    80001c00:	00000893          	li	a7,0
    80001c04:	00000813          	li	a6,0
    80001c08:	00000793          	li	a5,0
    80001c0c:	00000713          	li	a4,0
    80001c10:	00000693          	li	a3,0
    80001c14:	00000613          	li	a2,0
    80001c18:	00050593          	mv	a1,a0
    80001c1c:	03100513          	li	a0,49
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	b40080e7          	jalr	-1216(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001c28:	0005051b          	sext.w	a0,a0
    80001c2c:	01813083          	ld	ra,24(sp)
    80001c30:	01013403          	ld	s0,16(sp)
    80001c34:	02010113          	addi	sp,sp,32
    80001c38:	00008067          	ret

0000000080001c3c <_Z4getcv>:

char getc () {
    80001c3c:	fe010113          	addi	sp,sp,-32
    80001c40:	00113c23          	sd	ra,24(sp)
    80001c44:	00813823          	sd	s0,16(sp)
    80001c48:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::GETC);
    80001c4c:	00013023          	sd	zero,0(sp)
    80001c50:	00000893          	li	a7,0
    80001c54:	00000813          	li	a6,0
    80001c58:	00000793          	li	a5,0
    80001c5c:	00000713          	li	a4,0
    80001c60:	00000693          	li	a3,0
    80001c64:	00000613          	li	a2,0
    80001c68:	00000593          	li	a1,0
    80001c6c:	04100513          	li	a0,65
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	af0080e7          	jalr	-1296(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001c78:	0ff57513          	andi	a0,a0,255
    80001c7c:	01813083          	ld	ra,24(sp)
    80001c80:	01013403          	ld	s0,16(sp)
    80001c84:	02010113          	addi	sp,sp,32
    80001c88:	00008067          	ret

0000000080001c8c <_Z4putcc>:

void putc (char c) {
    80001c8c:	fe010113          	addi	sp,sp,-32
    80001c90:	00113c23          	sd	ra,24(sp)
    80001c94:	00813823          	sd	s0,16(sp)
    80001c98:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::PUTC, (uint64)c);
    80001c9c:	00013023          	sd	zero,0(sp)
    80001ca0:	00000893          	li	a7,0
    80001ca4:	00000813          	li	a6,0
    80001ca8:	00000793          	li	a5,0
    80001cac:	00000713          	li	a4,0
    80001cb0:	00000693          	li	a3,0
    80001cb4:	00000613          	li	a2,0
    80001cb8:	00050593          	mv	a1,a0
    80001cbc:	04200513          	li	a0,66
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	aa0080e7          	jalr	-1376(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
    80001cc8:	01813083          	ld	ra,24(sp)
    80001ccc:	01013403          	ld	s0,16(sp)
    80001cd0:	02010113          	addi	sp,sp,32
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00813423          	sd	s0,8(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001ce4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001ce8:	10200073          	sret
}
    80001cec:	00813403          	ld	s0,8(sp)
    80001cf0:	01010113          	addi	sp,sp,16
    80001cf4:	00008067          	ret

0000000080001cf8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001cf8:	f9010113          	addi	sp,sp,-112
    80001cfc:	06113423          	sd	ra,104(sp)
    80001d00:	06813023          	sd	s0,96(sp)
    80001d04:	04913c23          	sd	s1,88(sp)
    80001d08:	05213823          	sd	s2,80(sp)
    80001d0c:	07010413          	addi	s0,sp,112
    uint64 a0, a1, a2, a3, a4, a5, a6, a7;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001d10:	00050793          	mv	a5,a0
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001d14:	00058493          	mv	s1,a1
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001d18:	00060513          	mv	a0,a2
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001d1c:	00068593          	mv	a1,a3
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001d20:	00070713          	mv	a4,a4
    __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001d24:	00078713          	mv	a4,a5
    __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001d28:	00080713          	mv	a4,a6
    __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001d2c:	00088713          	mv	a4,a7
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001d30:	14202773          	csrr	a4,scause
    80001d34:	fae43c23          	sd	a4,-72(s0)
    return scause;
    80001d38:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001d3c:	ff870613          	addi	a2,a4,-8
    80001d40:	00100693          	li	a3,1
    80001d44:	02c6f863          	bgeu	a3,a2,80001d74 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001d48:	fff00793          	li	a5,-1
    80001d4c:	03f79793          	slli	a5,a5,0x3f
    80001d50:	00178793          	addi	a5,a5,1
    80001d54:	28f70a63          	beq	a4,a5,80001fe8 <_ZN5Riscv20handleSupervisorTrapEv+0x2f0>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001d58:	fff00793          	li	a5,-1
    80001d5c:	03f79793          	slli	a5,a5,0x3f
    80001d60:	00978793          	addi	a5,a5,9
    80001d64:	08f71463          	bne	a4,a5,80001dec <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    {
        // debug_print("Console handler called\n");
        console_handler();
    80001d68:	00006097          	auipc	ra,0x6
    80001d6c:	728080e7          	jalr	1832(ra) # 80008490 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001d70:	07c0006f          	j	80001dec <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d74:	14102773          	csrr	a4,sepc
    80001d78:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80001d7c:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001d80:	00470713          	addi	a4,a4,4
    80001d84:	f8e43c23          	sd	a4,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d88:	10002773          	csrr	a4,sstatus
    80001d8c:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80001d90:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d94:	fae43023          	sd	a4,-96(s0)
        switch (a0) {
    80001d98:	04200713          	li	a4,66
    80001d9c:	22f76a63          	bltu	a4,a5,80001fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
    80001da0:	00279793          	slli	a5,a5,0x2
    80001da4:	00007717          	auipc	a4,0x7
    80001da8:	41870713          	addi	a4,a4,1048 # 800091bc <CONSOLE_STATUS+0x1ac>
    80001dac:	00e787b3          	add	a5,a5,a4
    80001db0:	0007a783          	lw	a5,0(a5)
    80001db4:	00e787b3          	add	a5,a5,a4
    80001db8:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	9c8080e7          	jalr	-1592(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    80001dc4:	00048593          	mv	a1,s1
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	b20080e7          	jalr	-1248(ra) # 800028e8 <_ZN15MemoryAllocator9mem_allocEm>
    80001dd0:	00050913          	mv	s2,a0
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001dd4:	00090513          	mv	a0,s2
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    80001dd8:	05243823          	sd	s2,80(s0)
        w_sstatus(sstatus);
    80001ddc:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001de0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001de4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001de8:	14179073          	csrw	sepc,a5
    80001dec:	06813083          	ld	ra,104(sp)
    80001df0:	06013403          	ld	s0,96(sp)
    80001df4:	05813483          	ld	s1,88(sp)
    80001df8:	05013903          	ld	s2,80(sp)
    80001dfc:	07010113          	addi	sp,sp,112
    80001e00:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80001e04:	00001097          	auipc	ra,0x1
    80001e08:	980080e7          	jalr	-1664(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    80001e0c:	00048593          	mv	a1,s1
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	c58080e7          	jalr	-936(ra) # 80002a68 <_ZN15MemoryAllocator8mem_freeEPv>
    80001e18:	00050913          	mv	s2,a0
                break;
    80001e1c:	fb9ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	964080e7          	jalr	-1692(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	b94080e7          	jalr	-1132(ra) # 800029bc <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    80001e30:	00000913          	li	s2,0
                break;
    80001e34:	fa1ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	94c080e7          	jalr	-1716(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    80001e40:	00001097          	auipc	ra,0x1
    80001e44:	b48080e7          	jalr	-1208(ra) # 80002988 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001e48:	00000913          	li	s2,0
                break;
    80001e4c:	f89ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	718080e7          	jalr	1816(ra) # 80002568 <_ZN3TCB12createThreadEPFvPvES0_>
    80001e58:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001e5c:	16050e63          	beqz	a0,80001fd8 <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
        uint64 res = 0;
    80001e60:	00000913          	li	s2,0
    80001e64:	f71ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                TCB::exit();
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	894080e7          	jalr	-1900(ra) # 800026fc <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    80001e70:	0004b783          	ld	a5,0(s1)
    80001e74:	0000a717          	auipc	a4,0xa
    80001e78:	bb470713          	addi	a4,a4,-1100 # 8000ba28 <_ZN3TCB7runningE>
    80001e7c:	00073503          	ld	a0,0(a4)
    80001e80:	40f50533          	sub	a0,a0,a5
    80001e84:	00007597          	auipc	a1,0x7
    80001e88:	44458593          	addi	a1,a1,1092 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80001e8c:	00153513          	seqz	a0,a0
    80001e90:	00000097          	auipc	ra,0x0
    80001e94:	370080e7          	jalr	880(ra) # 80002200 <_Z6assertbPKc>
                delete *handle;
    80001e98:	0004b483          	ld	s1,0(s1)
    80001e9c:	14048263          	beqz	s1,80001fe0 <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
    ~TCB() { delete[] stack; }
    80001ea0:	0104b503          	ld	a0,16(s1)
    80001ea4:	00050663          	beqz	a0,80001eb0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	280080e7          	jalr	640(ra) # 80002128 <_ZdaPv>
    80001eb0:	00048513          	mv	a0,s1
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	234080e7          	jalr	564(ra) # 800020e8 <_ZdlPv>
        uint64 res = 0;
    80001ebc:	00000913          	li	s2,0
    80001ec0:	f15ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                TCB::dispatch();
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	794080e7          	jalr	1940(ra) # 80002658 <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001ecc:	00000913          	li	s2,0
                break;
    80001ed0:	f05ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                *handle = (sem_t)_semaphore::open(a2);
    80001ed4:	0005051b          	sext.w	a0,a0
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	804080e7          	jalr	-2044(ra) # 800016dc <_ZN10_semaphore4openEj>
    80001ee0:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001ee4:	06050263          	beqz	a0,80001f48 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
        uint64 res = 0;
    80001ee8:	00000913          	li	s2,0
                debug_print("Semaphore open: Handle: ");
    80001eec:	00007517          	auipc	a0,0x7
    80001ef0:	41450513          	addi	a0,a0,1044 # 80009300 <CONSOLE_STATUS+0x2f0>
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	2e4080e7          	jalr	740(ra) # 800021d8 <_Z11debug_printPKc>
                debug_print((uint64)*handle);
    80001efc:	0004b503          	ld	a0,0(s1)
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	420080e7          	jalr	1056(ra) # 80002320 <_Z11debug_printm>
                debug_print("\n");
    80001f08:	00007517          	auipc	a0,0x7
    80001f0c:	4d850513          	addi	a0,a0,1240 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	2c8080e7          	jalr	712(ra) # 800021d8 <_Z11debug_printPKc>
                debug_print("On handle addr: ");
    80001f18:	00007517          	auipc	a0,0x7
    80001f1c:	40850513          	addi	a0,a0,1032 # 80009320 <CONSOLE_STATUS+0x310>
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	2b8080e7          	jalr	696(ra) # 800021d8 <_Z11debug_printPKc>
                debug_print((uint64)handle);
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	3f4080e7          	jalr	1012(ra) # 80002320 <_Z11debug_printm>
                debug_print("\n");
    80001f34:	00007517          	auipc	a0,0x7
    80001f38:	4ac50513          	addi	a0,a0,1196 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	29c080e7          	jalr	668(ra) # 800021d8 <_Z11debug_printPKc>
                break;
    80001f44:	e91ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    res = -1;
    80001f48:	fff00913          	li	s2,-1
    80001f4c:	fa1ff06f          	j	80001eec <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                handle->close();
    80001f50:	00048513          	mv	a0,s1
    80001f54:	fffff097          	auipc	ra,0xfffff
    80001f58:	5a8080e7          	jalr	1448(ra) # 800014fc <_ZN10_semaphore5closeEv>
                delete handle;
    80001f5c:	00048513          	mv	a0,s1
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	188080e7          	jalr	392(ra) # 800020e8 <_ZdlPv>
        uint64 res = 0;
    80001f68:	00000913          	li	s2,0
                break;
    80001f6c:	e69ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                res = handle->wait();
    80001f70:	00048513          	mv	a0,s1
    80001f74:	fffff097          	auipc	ra,0xfffff
    80001f78:	614080e7          	jalr	1556(ra) # 80001588 <_ZN10_semaphore4waitEv>
    80001f7c:	00050913          	mv	s2,a0
                break;
    80001f80:	e55ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                handle->signal();
    80001f84:	00048513          	mv	a0,s1
    80001f88:	fffff097          	auipc	ra,0xfffff
    80001f8c:	6ac080e7          	jalr	1708(ra) # 80001634 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80001f90:	00000913          	li	s2,0
                break;
    80001f94:	e41ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                Scheduler::putToSleep(time_slices_left);
    80001f98:	0014d513          	srli	a0,s1,0x1
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	2cc080e7          	jalr	716(ra) # 80001268 <_ZN9Scheduler10putToSleepEm>
        uint64 res = 0;
    80001fa4:	00000913          	li	s2,0
                break;
    80001fa8:	e2dff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                res = __getc();
    80001fac:	00006097          	auipc	ra,0x6
    80001fb0:	4ac080e7          	jalr	1196(ra) # 80008458 <__getc>
    80001fb4:	00050913          	mv	s2,a0
                break;
    80001fb8:	e1dff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                __putc((char)a1);
    80001fbc:	0ff4f513          	andi	a0,s1,255
    80001fc0:	00006097          	auipc	ra,0x6
    80001fc4:	45c080e7          	jalr	1116(ra) # 8000841c <__putc>
        uint64 res = 0;
    80001fc8:	00000913          	li	s2,0
                break;
    80001fcc:	e09ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        uint64 res = 0;
    80001fd0:	00000913          	li	s2,0
    80001fd4:	e01ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    res = -1;
    80001fd8:	fff00913          	li	s2,-1
    80001fdc:	df9ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        uint64 res = 0;
    80001fe0:	00000913          	li	s2,0
    80001fe4:	df1ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001fe8:	00200793          	li	a5,2
    80001fec:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001ff0:	0000a497          	auipc	s1,0xa
    80001ff4:	a3048493          	addi	s1,s1,-1488 # 8000ba20 <_ZN3TCB16timeSliceCounterE>
    80001ff8:	0004b783          	ld	a5,0(s1)
    80001ffc:	00178793          	addi	a5,a5,1
    80002000:	00f4b023          	sd	a5,0(s1)
        Scheduler::maybeWakeThreads();
    80002004:	fffff097          	auipc	ra,0xfffff
    80002008:	348080e7          	jalr	840(ra) # 8000134c <_ZN9Scheduler16maybeWakeThreadsEv>
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    8000200c:	0000a797          	auipc	a5,0xa
    80002010:	a1c78793          	addi	a5,a5,-1508 # 8000ba28 <_ZN3TCB7runningE>
    80002014:	0007b783          	ld	a5,0(a5)

    bool isSleeping() { return sleeping_; }

    uint64 getTimeSlice() const { return timeSlice; }
    80002018:	0287b783          	ld	a5,40(a5)
    8000201c:	0004b703          	ld	a4,0(s1)
    80002020:	dcf766e3          	bltu	a4,a5,80001dec <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002024:	141027f3          	csrr	a5,sepc
    80002028:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000202c:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80002030:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002034:	100027f3          	csrr	a5,sstatus
    80002038:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000203c:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80002040:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80002044:	0000a797          	auipc	a5,0xa
    80002048:	9c07be23          	sd	zero,-1572(a5) # 8000ba20 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	60c080e7          	jalr	1548(ra) # 80002658 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002054:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002058:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000205c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002060:	14179073          	csrw	sepc,a5
    80002064:	d89ff06f          	j	80001dec <_ZN5Riscv20handleSupervisorTrapEv+0xf4>

0000000080002068 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002068:	fe010113          	addi	sp,sp,-32
    8000206c:	00113c23          	sd	ra,24(sp)
    80002070:	00813823          	sd	s0,16(sp)
    80002074:	00913423          	sd	s1,8(sp)
    80002078:	02010413          	addi	s0,sp,32
    8000207c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80002080:	00000097          	auipc	ra,0x0
    80002084:	704080e7          	jalr	1796(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    80002088:	00048593          	mv	a1,s1
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	85c080e7          	jalr	-1956(ra) # 800028e8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002094:	01813083          	ld	ra,24(sp)
    80002098:	01013403          	ld	s0,16(sp)
    8000209c:	00813483          	ld	s1,8(sp)
    800020a0:	02010113          	addi	sp,sp,32
    800020a4:	00008067          	ret

00000000800020a8 <_Znam>:

void *operator new[](size_t n)
{
    800020a8:	fe010113          	addi	sp,sp,-32
    800020ac:	00113c23          	sd	ra,24(sp)
    800020b0:	00813823          	sd	s0,16(sp)
    800020b4:	00913423          	sd	s1,8(sp)
    800020b8:	02010413          	addi	s0,sp,32
    800020bc:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	6c4080e7          	jalr	1732(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    800020c8:	00048593          	mv	a1,s1
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	81c080e7          	jalr	-2020(ra) # 800028e8 <_ZN15MemoryAllocator9mem_allocEm>
}
    800020d4:	01813083          	ld	ra,24(sp)
    800020d8:	01013403          	ld	s0,16(sp)
    800020dc:	00813483          	ld	s1,8(sp)
    800020e0:	02010113          	addi	sp,sp,32
    800020e4:	00008067          	ret

00000000800020e8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800020e8:	fe010113          	addi	sp,sp,-32
    800020ec:	00113c23          	sd	ra,24(sp)
    800020f0:	00813823          	sd	s0,16(sp)
    800020f4:	00913423          	sd	s1,8(sp)
    800020f8:	02010413          	addi	s0,sp,32
    800020fc:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80002100:	00000097          	auipc	ra,0x0
    80002104:	684080e7          	jalr	1668(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    80002108:	00048593          	mv	a1,s1
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	95c080e7          	jalr	-1700(ra) # 80002a68 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002114:	01813083          	ld	ra,24(sp)
    80002118:	01013403          	ld	s0,16(sp)
    8000211c:	00813483          	ld	s1,8(sp)
    80002120:	02010113          	addi	sp,sp,32
    80002124:	00008067          	ret

0000000080002128 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002128:	fe010113          	addi	sp,sp,-32
    8000212c:	00113c23          	sd	ra,24(sp)
    80002130:	00813823          	sd	s0,16(sp)
    80002134:	00913423          	sd	s1,8(sp)
    80002138:	02010413          	addi	s0,sp,32
    8000213c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80002140:	00000097          	auipc	ra,0x0
    80002144:	644080e7          	jalr	1604(ra) # 80002784 <_ZN15MemoryAllocator11getInstanceEv>
    80002148:	00048593          	mv	a1,s1
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	91c080e7          	jalr	-1764(ra) # 80002a68 <_ZN15MemoryAllocator8mem_freeEPv>
    80002154:	01813083          	ld	ra,24(sp)
    80002158:	01013403          	ld	s0,16(sp)
    8000215c:	00813483          	ld	s1,8(sp)
    80002160:	02010113          	addi	sp,sp,32
    80002164:	00008067          	ret

0000000080002168 <_Z27debug_print_internal_stringPKc>:
        debug_print("\n");
    }
}

void debug_print_internal_string(char const *string)
{
    80002168:	fd010113          	addi	sp,sp,-48
    8000216c:	02113423          	sd	ra,40(sp)
    80002170:	02813023          	sd	s0,32(sp)
    80002174:	00913c23          	sd	s1,24(sp)
    80002178:	01213823          	sd	s2,16(sp)
    8000217c:	03010413          	addi	s0,sp,48
    80002180:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002184:	100027f3          	csrr	a5,sstatus
    80002188:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000218c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002190:	00200793          	li	a5,2
    80002194:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002198:	0004c503          	lbu	a0,0(s1)
    8000219c:	00050a63          	beqz	a0,800021b0 <_Z27debug_print_internal_stringPKc+0x48>
    {
        __putc(*string);
    800021a0:	00006097          	auipc	ra,0x6
    800021a4:	27c080e7          	jalr	636(ra) # 8000841c <__putc>
        string++;
    800021a8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021ac:	fedff06f          	j	80002198 <_Z27debug_print_internal_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800021b0:	0009091b          	sext.w	s2,s2
    800021b4:	00297913          	andi	s2,s2,2
    800021b8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800021bc:	10092073          	csrs	sstatus,s2
}
    800021c0:	02813083          	ld	ra,40(sp)
    800021c4:	02013403          	ld	s0,32(sp)
    800021c8:	01813483          	ld	s1,24(sp)
    800021cc:	01013903          	ld	s2,16(sp)
    800021d0:	03010113          	addi	sp,sp,48
    800021d4:	00008067          	ret

00000000800021d8 <_Z11debug_printPKc>:
void debug_print(char const *string) {
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00113423          	sd	ra,8(sp)
    800021e0:	00813023          	sd	s0,0(sp)
    800021e4:	01010413          	addi	s0,sp,16
    debug_print_internal_string(string);
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	f80080e7          	jalr	-128(ra) # 80002168 <_Z27debug_print_internal_stringPKc>
}
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret

0000000080002200 <_Z6assertbPKc>:
    if (!condition) {
    80002200:	00050463          	beqz	a0,80002208 <_Z6assertbPKc+0x8>
    80002204:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80002208:	fe010113          	addi	sp,sp,-32
    8000220c:	00113c23          	sd	ra,24(sp)
    80002210:	00813823          	sd	s0,16(sp)
    80002214:	00913423          	sd	s1,8(sp)
    80002218:	02010413          	addi	s0,sp,32
    8000221c:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80002220:	00007517          	auipc	a0,0x7
    80002224:	12850513          	addi	a0,a0,296 # 80009348 <_ZZ24debug_print_internal_intmE6digits+0x10>
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	fb0080e7          	jalr	-80(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print(debug_message);
    80002230:	00048513          	mv	a0,s1
    80002234:	00000097          	auipc	ra,0x0
    80002238:	fa4080e7          	jalr	-92(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("\n");
    8000223c:	00007517          	auipc	a0,0x7
    80002240:	1a450513          	addi	a0,a0,420 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002244:	00000097          	auipc	ra,0x0
    80002248:	f94080e7          	jalr	-108(ra) # 800021d8 <_Z11debug_printPKc>
}
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	02010113          	addi	sp,sp,32
    8000225c:	00008067          	ret

0000000080002260 <_Z24debug_print_internal_intm>:

void debug_print_internal_int(uint64 integer)
{
    80002260:	fc010113          	addi	sp,sp,-64
    80002264:	02113c23          	sd	ra,56(sp)
    80002268:	02813823          	sd	s0,48(sp)
    8000226c:	02913423          	sd	s1,40(sp)
    80002270:	03213023          	sd	s2,32(sp)
    80002274:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002278:	100027f3          	csrr	a5,sstatus
    8000227c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002280:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002284:	00200793          	li	a5,2
    80002288:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    8000228c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002290:	00000713          	li	a4,0
    80002294:	0080006f          	j	8000229c <_Z24debug_print_internal_intm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80002298:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    8000229c:	00a00793          	li	a5,10
    800022a0:	02f5763b          	remuw	a2,a0,a5
    800022a4:	0017049b          	addiw	s1,a4,1
    800022a8:	00007697          	auipc	a3,0x7
    800022ac:	09068693          	addi	a3,a3,144 # 80009338 <_ZZ24debug_print_internal_intmE6digits>
    800022b0:	00c686b3          	add	a3,a3,a2
    800022b4:	0006c683          	lbu	a3,0(a3)
    800022b8:	fe040613          	addi	a2,s0,-32
    800022bc:	00e60733          	add	a4,a2,a4
    800022c0:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    800022c4:	02f557bb          	divuw	a5,a0,a5
    800022c8:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    800022cc:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    800022d0:	00900793          	li	a5,9
    800022d4:	fca7e2e3          	bltu	a5,a0,80002298 <_Z24debug_print_internal_intm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800022d8:	fff4849b          	addiw	s1,s1,-1
    800022dc:	0004ce63          	bltz	s1,800022f8 <_Z24debug_print_internal_intm+0x98>
    800022e0:	fe040793          	addi	a5,s0,-32
    800022e4:	009787b3          	add	a5,a5,s1
    800022e8:	ff07c503          	lbu	a0,-16(a5)
    800022ec:	00006097          	auipc	ra,0x6
    800022f0:	130080e7          	jalr	304(ra) # 8000841c <__putc>
    800022f4:	fe5ff06f          	j	800022d8 <_Z24debug_print_internal_intm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800022f8:	0009091b          	sext.w	s2,s2
    800022fc:	00297913          	andi	s2,s2,2
    80002300:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002304:	10092073          	csrs	sstatus,s2
    80002308:	03813083          	ld	ra,56(sp)
    8000230c:	03013403          	ld	s0,48(sp)
    80002310:	02813483          	ld	s1,40(sp)
    80002314:	02013903          	ld	s2,32(sp)
    80002318:	04010113          	addi	sp,sp,64
    8000231c:	00008067          	ret

0000000080002320 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00113423          	sd	ra,8(sp)
    80002328:	00813023          	sd	s0,0(sp)
    8000232c:	01010413          	addi	s0,sp,16
    debug_print_internal_int(integer);
    80002330:	00000097          	auipc	ra,0x0
    80002334:	f30080e7          	jalr	-208(ra) # 80002260 <_Z24debug_print_internal_intm>
}
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_Z15userMainWrapperPv>:
#include "../h/syscall_cpp.hpp"

void userMain();

void userMainWrapper(void* arg)
{
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00113423          	sd	ra,8(sp)
    80002350:	00813023          	sd	s0,0(sp)
    80002354:	01010413          	addi	s0,sp,16
    debug_print("Starting userMain\n");
    80002358:	00007517          	auipc	a0,0x7
    8000235c:	00850513          	addi	a0,a0,8 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0x28>
    80002360:	00000097          	auipc	ra,0x0
    80002364:	e78080e7          	jalr	-392(ra) # 800021d8 <_Z11debug_printPKc>
    userMain();
    80002368:	00002097          	auipc	ra,0x2
    8000236c:	994080e7          	jalr	-1644(ra) # 80003cfc <_Z8userMainv>
}
    80002370:	00813083          	ld	ra,8(sp)
    80002374:	00013403          	ld	s0,0(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <main>:
// void randomWrapper(void* arg) {
//     debug_print("Starting random\n");
// }

int main()
{
    80002380:	fe010113          	addi	sp,sp,-32
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	00813823          	sd	s0,16(sp)
    8000238c:	00913423          	sd	s1,8(sp)
    80002390:	01213023          	sd	s2,0(sp)
    80002394:	02010413          	addi	s0,sp,32
    thread_t main_handle;
    thread_t userMain_handle;

    // We create threads directly through TCB because we do not yet have
    // interrupts enabled.
    debug_print("Creating main thread\n");
    80002398:	00007517          	auipc	a0,0x7
    8000239c:	fe050513          	addi	a0,a0,-32 # 80009378 <_ZZ24debug_print_internal_intmE6digits+0x40>
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	e38080e7          	jalr	-456(ra) # 800021d8 <_Z11debug_printPKc>
    main_handle = TCB::createThread(nullptr, nullptr);
    800023a8:	00000593          	li	a1,0
    800023ac:	00000513          	li	a0,0
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	1b8080e7          	jalr	440(ra) # 80002568 <_ZN3TCB12createThreadEPFvPvES0_>
    800023b8:	00050913          	mv	s2,a0
    debug_print("Main thread handle: \n");
    800023bc:	00007517          	auipc	a0,0x7
    800023c0:	fd450513          	addi	a0,a0,-44 # 80009390 <_ZZ24debug_print_internal_intmE6digits+0x58>
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	e14080e7          	jalr	-492(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)main_handle);
    800023cc:	00090513          	mv	a0,s2
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	f50080e7          	jalr	-176(ra) # 80002320 <_Z11debug_printm>
    debug_print("\n");
    800023d8:	00007517          	auipc	a0,0x7
    800023dc:	00850513          	addi	a0,a0,8 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	df8080e7          	jalr	-520(ra) # 800021d8 <_Z11debug_printPKc>

    debug_print("Creating userMain thread\n");
    800023e8:	00007517          	auipc	a0,0x7
    800023ec:	fc050513          	addi	a0,a0,-64 # 800093a8 <_ZZ24debug_print_internal_intmE6digits+0x70>
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	de8080e7          	jalr	-536(ra) # 800021d8 <_Z11debug_printPKc>
    userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    800023f8:	00000593          	li	a1,0
    800023fc:	00000517          	auipc	a0,0x0
    80002400:	f4c50513          	addi	a0,a0,-180 # 80002348 <_Z15userMainWrapperPv>
    80002404:	00000097          	auipc	ra,0x0
    80002408:	164080e7          	jalr	356(ra) # 80002568 <_ZN3TCB12createThreadEPFvPvES0_>
    8000240c:	00050493          	mv	s1,a0
    debug_print("UserMain thread handle: \n");
    80002410:	00007517          	auipc	a0,0x7
    80002414:	fb850513          	addi	a0,a0,-72 # 800093c8 <_ZZ24debug_print_internal_intmE6digits+0x90>
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	dc0080e7          	jalr	-576(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)userMain_handle);
    80002420:	00048513          	mv	a0,s1
    80002424:	00000097          	auipc	ra,0x0
    80002428:	efc080e7          	jalr	-260(ra) # 80002320 <_Z11debug_printm>
    debug_print("\n");
    8000242c:	00007517          	auipc	a0,0x7
    80002430:	fb450513          	addi	a0,a0,-76 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002434:	00000097          	auipc	ra,0x0
    80002438:	da4080e7          	jalr	-604(ra) # 800021d8 <_Z11debug_printPKc>

    debug_print("Setting running to main thread\n");
    8000243c:	00007517          	auipc	a0,0x7
    80002440:	fac50513          	addi	a0,a0,-84 # 800093e8 <_ZZ24debug_print_internal_intmE6digits+0xb0>
    80002444:	00000097          	auipc	ra,0x0
    80002448:	d94080e7          	jalr	-620(ra) # 800021d8 <_Z11debug_printPKc>
    TCB::running = main_handle;
    8000244c:	00009797          	auipc	a5,0x9
    80002450:	5d27be23          	sd	s2,1500(a5) # 8000ba28 <_ZN3TCB7runningE>

    debug_print("Setting supervisor trap and enabling interrupts\n");
    80002454:	00007517          	auipc	a0,0x7
    80002458:	fb450513          	addi	a0,a0,-76 # 80009408 <_ZZ24debug_print_internal_intmE6digits+0xd0>
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	d7c080e7          	jalr	-644(ra) # 800021d8 <_Z11debug_printPKc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002464:	fffff797          	auipc	a5,0xfffff
    80002468:	b9c78793          	addi	a5,a5,-1124 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000246c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002470:	00200793          	li	a5,2
    80002474:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished_; }
    80002478:	0304c783          	lbu	a5,48(s1)
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Thread randomThread(randomWrapper, nullptr);
    // randomThread.start();

    while (!userMain_handle->isFinished()) {
    8000247c:	fe078ee3          	beqz	a5,80002478 <main+0xf8>
        // TCB::yield(); // This causes a lock???
    }

    debug_print("Finished\n");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	fc050513          	addi	a0,a0,-64 # 80009440 <_ZZ24debug_print_internal_intmE6digits+0x108>
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	d50080e7          	jalr	-688(ra) # 800021d8 <_Z11debug_printPKc>

    return 0;
}
    80002490:	00000513          	li	a0,0
    80002494:	01813083          	ld	ra,24(sp)
    80002498:	01013403          	ld	s0,16(sp)
    8000249c:	00813483          	ld	s1,8(sp)
    800024a0:	00013903          	ld	s2,0(sp)
    800024a4:	02010113          	addi	sp,sp,32
    800024a8:	00008067          	ret

00000000800024ac <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    800024ac:	fe010113          	addi	sp,sp,-32
    800024b0:	00113c23          	sd	ra,24(sp)
    800024b4:	00813823          	sd	s0,16(sp)
    800024b8:	00913423          	sd	s1,8(sp)
    800024bc:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	818080e7          	jalr	-2024(ra) # 80001cd8 <_ZN5Riscv10popSppSpieEv>
    debug_print("TCB: Starting thread body: ");
    800024c8:	00007517          	auipc	a0,0x7
    800024cc:	f8850513          	addi	a0,a0,-120 # 80009450 <_ZZ24debug_print_internal_intmE6digits+0x118>
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	d08080e7          	jalr	-760(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)running->body);
    800024d8:	00009497          	auipc	s1,0x9
    800024dc:	55048493          	addi	s1,s1,1360 # 8000ba28 <_ZN3TCB7runningE>
    800024e0:	0004b783          	ld	a5,0(s1)
    800024e4:	0007b503          	ld	a0,0(a5)
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	e38080e7          	jalr	-456(ra) # 80002320 <_Z11debug_printm>
    debug_print(" for thread: ");
    800024f0:	00007517          	auipc	a0,0x7
    800024f4:	f8050513          	addi	a0,a0,-128 # 80009470 <_ZZ24debug_print_internal_intmE6digits+0x138>
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	ce0080e7          	jalr	-800(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)running);
    80002500:	0004b503          	ld	a0,0(s1)
    80002504:	00000097          	auipc	ra,0x0
    80002508:	e1c080e7          	jalr	-484(ra) # 80002320 <_Z11debug_printm>
    debug_print(" and arg: ");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	f7450513          	addi	a0,a0,-140 # 80009480 <_ZZ24debug_print_internal_intmE6digits+0x148>
    80002514:	00000097          	auipc	ra,0x0
    80002518:	cc4080e7          	jalr	-828(ra) # 800021d8 <_Z11debug_printPKc>
    debug_print((uint64)running->arg_);
    8000251c:	0004b783          	ld	a5,0(s1)
    80002520:	0087b503          	ld	a0,8(a5)
    80002524:	00000097          	auipc	ra,0x0
    80002528:	dfc080e7          	jalr	-516(ra) # 80002320 <_Z11debug_printm>
    debug_print("\n");
    8000252c:	00007517          	auipc	a0,0x7
    80002530:	eb450513          	addi	a0,a0,-332 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002534:	00000097          	auipc	ra,0x0
    80002538:	ca4080e7          	jalr	-860(ra) # 800021d8 <_Z11debug_printPKc>
    
    running->body(running->arg_);
    8000253c:	0004b783          	ld	a5,0(s1)
    80002540:	0007b703          	ld	a4,0(a5)
    80002544:	0087b503          	ld	a0,8(a5)
    80002548:	000700e7          	jalr	a4
    thread_exit();
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	410080e7          	jalr	1040(ra) # 8000195c <_Z11thread_exitv>
}
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	02010113          	addi	sp,sp,32
    80002564:	00008067          	ret

0000000080002568 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80002568:	fd010113          	addi	sp,sp,-48
    8000256c:	02113423          	sd	ra,40(sp)
    80002570:	02813023          	sd	s0,32(sp)
    80002574:	00913c23          	sd	s1,24(sp)
    80002578:	01213823          	sd	s2,16(sp)
    8000257c:	01313423          	sd	s3,8(sp)
    80002580:	03010413          	addi	s0,sp,48
    80002584:	00050913          	mv	s2,a0
    80002588:	00058993          	mv	s3,a1
    debug_print("TCB: Creating TCB\n");
    8000258c:	00007517          	auipc	a0,0x7
    80002590:	f0450513          	addi	a0,a0,-252 # 80009490 <_ZZ24debug_print_internal_intmE6digits+0x158>
    80002594:	00000097          	auipc	ra,0x0
    80002598:	c44080e7          	jalr	-956(ra) # 800021d8 <_Z11debug_printPKc>
    return new TCB(body, arg, TIME_SLICE);
    8000259c:	03800513          	li	a0,56
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	ac8080e7          	jalr	-1336(ra) # 80002068 <_Znwm>
    800025a8:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished_(false),
            blocked_(false),
            sleeping_(false)
    800025ac:	01253023          	sd	s2,0(a0)
    800025b0:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800025b4:	00090a63          	beqz	s2,800025c8 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    800025b8:	00002537          	lui	a0,0x2
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	aec080e7          	jalr	-1300(ra) # 800020a8 <_Znam>
    800025c4:	0080006f          	j	800025cc <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    800025c8:	00000513          	li	a0,0
            sleeping_(false)
    800025cc:	00a4b823          	sd	a0,16(s1)
    800025d0:	00000797          	auipc	a5,0x0
    800025d4:	edc78793          	addi	a5,a5,-292 # 800024ac <_ZN3TCB13threadWrapperEv>
    800025d8:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800025dc:	02050c63          	beqz	a0,80002614 <_ZN3TCB12createThreadEPFvPvES0_+0xac>
    800025e0:	000027b7          	lui	a5,0x2
    800025e4:	00f50533          	add	a0,a0,a5
            sleeping_(false)
    800025e8:	02a4b023          	sd	a0,32(s1)
    800025ec:	00200793          	li	a5,2
    800025f0:	02f4b423          	sd	a5,40(s1)
    800025f4:	02048823          	sb	zero,48(s1)
    800025f8:	020488a3          	sb	zero,49(s1)
    800025fc:	02048923          	sb	zero,50(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80002600:	02090c63          	beqz	s2,80002638 <_ZN3TCB12createThreadEPFvPvES0_+0xd0>
    80002604:	00048513          	mv	a0,s1
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	bf0080e7          	jalr	-1040(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
    80002610:	0280006f          	j	80002638 <_ZN3TCB12createThreadEPFvPvES0_+0xd0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002614:	00000513          	li	a0,0
    80002618:	fd1ff06f          	j	800025e8 <_ZN3TCB12createThreadEPFvPvES0_+0x80>
    8000261c:	00050913          	mv	s2,a0
    80002620:	00048513          	mv	a0,s1
    80002624:	00000097          	auipc	ra,0x0
    80002628:	ac4080e7          	jalr	-1340(ra) # 800020e8 <_ZdlPv>
    8000262c:	00090513          	mv	a0,s2
    80002630:	0000a097          	auipc	ra,0xa
    80002634:	568080e7          	jalr	1384(ra) # 8000cb98 <_Unwind_Resume>
}
    80002638:	00048513          	mv	a0,s1
    8000263c:	02813083          	ld	ra,40(sp)
    80002640:	02013403          	ld	s0,32(sp)
    80002644:	01813483          	ld	s1,24(sp)
    80002648:	01013903          	ld	s2,16(sp)
    8000264c:	00813983          	ld	s3,8(sp)
    80002650:	03010113          	addi	sp,sp,48
    80002654:	00008067          	ret

0000000080002658 <_ZN3TCB8dispatchEv>:
{
    80002658:	fe010113          	addi	sp,sp,-32
    8000265c:	00113c23          	sd	ra,24(sp)
    80002660:	00813823          	sd	s0,16(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000266c:	00009797          	auipc	a5,0x9
    80002670:	3bc78793          	addi	a5,a5,956 # 8000ba28 <_ZN3TCB7runningE>
    80002674:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    80002678:	0314c783          	lbu	a5,49(s1)
    if (!old->isBlocked() && !old->isFinished() && !old->isSleeping()) { 
    8000267c:	00079a63          	bnez	a5,80002690 <_ZN3TCB8dispatchEv+0x38>
    bool isFinished() const { return finished_; }
    80002680:	0304c783          	lbu	a5,48(s1)
    80002684:	00079663          	bnez	a5,80002690 <_ZN3TCB8dispatchEv+0x38>
    bool isSleeping() { return sleeping_; }
    80002688:	0324c783          	lbu	a5,50(s1)
    8000268c:	02078c63          	beqz	a5,800026c4 <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	afc080e7          	jalr	-1284(ra) # 8000118c <_ZN9Scheduler3getEv>
    80002698:	00009797          	auipc	a5,0x9
    8000269c:	38a7b823          	sd	a0,912(a5) # 8000ba28 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800026a0:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    800026a4:	01848513          	addi	a0,s1,24
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	a68080e7          	jalr	-1432(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	01013403          	ld	s0,16(sp)
    800026b8:	00813483          	ld	s1,8(sp)
    800026bc:	02010113          	addi	sp,sp,32
    800026c0:	00008067          	ret
        Scheduler::put(old); 
    800026c4:	00048513          	mv	a0,s1
    800026c8:	fffff097          	auipc	ra,0xfffff
    800026cc:	b30080e7          	jalr	-1232(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
    800026d0:	fc1ff06f          	j	80002690 <_ZN3TCB8dispatchEv+0x38>

00000000800026d4 <_ZN3TCB5yieldEv>:
{
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00113423          	sd	ra,8(sp)
    800026dc:	00813023          	sd	s0,0(sp)
    800026e0:	01010413          	addi	s0,sp,16
    dispatch();
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	f74080e7          	jalr	-140(ra) # 80002658 <_ZN3TCB8dispatchEv>
}
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN3TCB4exitEv>:

void TCB::exit() {
    800026fc:	fe010113          	addi	sp,sp,-32
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00813823          	sd	s0,16(sp)
    80002708:	00913423          	sd	s1,8(sp)
    8000270c:	01213023          	sd	s2,0(sp)
    80002710:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    80002714:	00007517          	auipc	a0,0x7
    80002718:	d9450513          	addi	a0,a0,-620 # 800094a8 <_ZZ24debug_print_internal_intmE6digits+0x170>
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	abc080e7          	jalr	-1348(ra) # 800021d8 <_Z11debug_printPKc>
    TCB *old = running;
    80002724:	00009497          	auipc	s1,0x9
    80002728:	30448493          	addi	s1,s1,772 # 8000ba28 <_ZN3TCB7runningE>
    8000272c:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    80002730:	00100793          	li	a5,1
    80002734:	02f90823          	sb	a5,48(s2)
    old->setFinished(true);
    running = Scheduler::get();
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	a54080e7          	jalr	-1452(ra) # 8000118c <_ZN9Scheduler3getEv>
    80002740:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    80002744:	00007597          	auipc	a1,0x7
    80002748:	d7c58593          	addi	a1,a1,-644 # 800094c0 <_ZZ24debug_print_internal_intmE6digits+0x188>
    8000274c:	00a03533          	snez	a0,a0
    80002750:	00000097          	auipc	ra,0x0
    80002754:	ab0080e7          	jalr	-1360(ra) # 80002200 <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    80002758:	0004b583          	ld	a1,0(s1)
    8000275c:	01858593          	addi	a1,a1,24
    80002760:	01890513          	addi	a0,s2,24
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	9ac080e7          	jalr	-1620(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	00813483          	ld	s1,8(sp)
    80002778:	00013903          	ld	s2,0(sp)
    8000277c:	02010113          	addi	sp,sp,32
    80002780:	00008067          	ret

0000000080002784 <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    80002784:	00009797          	auipc	a5,0x9
    80002788:	2ac78793          	addi	a5,a5,684 # 8000ba30 <_ZN15MemoryAllocator9instance_E>
    8000278c:	0007b783          	ld	a5,0(a5)
    80002790:	00078a63          	beqz	a5,800027a4 <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    80002794:	00009797          	auipc	a5,0x9
    80002798:	29c78793          	addi	a5,a5,668 # 8000ba30 <_ZN15MemoryAllocator9instance_E>
    8000279c:	0007b503          	ld	a0,0(a5)
    800027a0:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    800027a4:	fd010113          	addi	sp,sp,-48
    800027a8:	02113423          	sd	ra,40(sp)
    800027ac:	02813023          	sd	s0,32(sp)
    800027b0:	00913c23          	sd	s1,24(sp)
    800027b4:	01213823          	sd	s2,16(sp)
    800027b8:	01313423          	sd	s3,8(sp)
    800027bc:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    800027c0:	00009997          	auipc	s3,0x9
    800027c4:	09098993          	addi	s3,s3,144 # 8000b850 <HEAP_START_ADDR>
    800027c8:	0009b783          	ld	a5,0(s3)
    800027cc:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    800027d0:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    800027d4:	00009497          	auipc	s1,0x9
    800027d8:	25c48493          	addi	s1,s1,604 # 8000ba30 <_ZN15MemoryAllocator9instance_E>
    800027dc:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    800027e0:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    800027e4:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    800027e8:	0004b783          	ld	a5,0(s1)
    800027ec:	0007b783          	ld	a5,0(a5)
    800027f0:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    800027f4:	0004b783          	ld	a5,0(s1)
    800027f8:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    800027fc:	00009917          	auipc	s2,0x9
    80002800:	04c90913          	addi	s2,s2,76 # 8000b848 <HEAP_END_ADDR>
    80002804:	00093783          	ld	a5,0(s2)
    80002808:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    8000280c:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80002810:	00007517          	auipc	a0,0x7
    80002814:	ce050513          	addi	a0,a0,-800 # 800094f0 <_ZZ24debug_print_internal_intmE6digits+0x1b8>
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	9c0080e7          	jalr	-1600(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80002820:	00007517          	auipc	a0,0x7
    80002824:	cf850513          	addi	a0,a0,-776 # 80009518 <_ZZ24debug_print_internal_intmE6digits+0x1e0>
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	9b0080e7          	jalr	-1616(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80002830:	04000513          	li	a0,64
    80002834:	00000097          	auipc	ra,0x0
    80002838:	aec080e7          	jalr	-1300(ra) # 80002320 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    8000283c:	00007517          	auipc	a0,0x7
    80002840:	cf450513          	addi	a0,a0,-780 # 80009530 <_ZZ24debug_print_internal_intmE6digits+0x1f8>
    80002844:	00000097          	auipc	ra,0x0
    80002848:	994080e7          	jalr	-1644(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    8000284c:	0009b503          	ld	a0,0(s3)
    80002850:	00000097          	auipc	ra,0x0
    80002854:	ad0080e7          	jalr	-1328(ra) # 80002320 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    80002858:	00007517          	auipc	a0,0x7
    8000285c:	cf050513          	addi	a0,a0,-784 # 80009548 <_ZZ24debug_print_internal_intmE6digits+0x210>
    80002860:	00000097          	auipc	ra,0x0
    80002864:	978080e7          	jalr	-1672(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    80002868:	00093503          	ld	a0,0(s2)
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	ab4080e7          	jalr	-1356(ra) # 80002320 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    80002874:	00007517          	auipc	a0,0x7
    80002878:	cec50513          	addi	a0,a0,-788 # 80009560 <_ZZ24debug_print_internal_intmE6digits+0x228>
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	95c080e7          	jalr	-1700(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    80002884:	0004b783          	ld	a5,0(s1)
    80002888:	0007b503          	ld	a0,0(a5)
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	a94080e7          	jalr	-1388(ra) # 80002320 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    80002894:	00007517          	auipc	a0,0x7
    80002898:	cec50513          	addi	a0,a0,-788 # 80009580 <_ZZ24debug_print_internal_intmE6digits+0x248>
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	93c080e7          	jalr	-1732(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    800028a4:	01000513          	li	a0,16
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	a78080e7          	jalr	-1416(ra) # 80002320 <_Z11debug_printm>
        debug_print("\n");
    800028b0:	00007517          	auipc	a0,0x7
    800028b4:	b3050513          	addi	a0,a0,-1232 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	920080e7          	jalr	-1760(ra) # 800021d8 <_Z11debug_printPKc>
}
    800028c0:	00009797          	auipc	a5,0x9
    800028c4:	17078793          	addi	a5,a5,368 # 8000ba30 <_ZN15MemoryAllocator9instance_E>
    800028c8:	0007b503          	ld	a0,0(a5)
    800028cc:	02813083          	ld	ra,40(sp)
    800028d0:	02013403          	ld	s0,32(sp)
    800028d4:	01813483          	ld	s1,24(sp)
    800028d8:	01013903          	ld	s2,16(sp)
    800028dc:	00813983          	ld	s3,8(sp)
    800028e0:	03010113          	addi	sp,sp,48
    800028e4:	00008067          	ret

00000000800028e8 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00813423          	sd	s0,8(sp)
    800028f0:	01010413          	addi	s0,sp,16
    // debug_print("Allocating memory of size: ");
    // debug_print(size);
    // debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    800028f4:	00053783          	ld	a5,0(a0)
    800028f8:	04078e63          	beqz	a5,80002954 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    800028fc:	04f58593          	addi	a1,a1,79
    80002900:	fc05f593          	andi	a1,a1,-64

    // debug_print("Aligned size: ");
    // debug_print(size);
    // debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002904:	00000693          	li	a3,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002908:	00078c63          	beqz	a5,80002920 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    8000290c:	0087b703          	ld	a4,8(a5)
    80002910:	00b77863          	bgeu	a4,a1,80002920 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        prev_free_block = free_block;
    80002914:	00078693          	mv	a3,a5
        free_block = free_block->next_;
    80002918:	0007b783          	ld	a5,0(a5)
    while (free_block && free_block->size_ < size) {
    8000291c:	fedff06f          	j	80002908 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80002920:	02078a63          	beqz	a5,80002954 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    80002924:	0087b703          	ld	a4,8(a5)
    80002928:	04e5f263          	bgeu	a1,a4,8000296c <_ZN15MemoryAllocator9mem_allocEm+0x84>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    8000292c:	00b78633          	add	a2,a5,a1
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80002930:	02068a63          	beqz	a3,80002964 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            prev_free_block->next_ = new_free_block;
    80002934:	00c6b023          	sd	a2,0(a3)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80002938:	0007b703          	ld	a4,0(a5)
    8000293c:	00e63023          	sd	a4,0(a2)
        new_free_block->size_ = free_block->size_ - size;
    80002940:	0087b703          	ld	a4,8(a5)
    80002944:	40b70733          	sub	a4,a4,a1
    80002948:	00e63423          	sd	a4,8(a2)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    8000294c:	00b7b423          	sd	a1,8(a5)
        // debug_print("Free block address: ");
        // debug_print((uint64)free_block);
        // debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002950:	01078793          	addi	a5,a5,16
}
    80002954:	00078513          	mv	a0,a5
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	01010113          	addi	sp,sp,16
    80002960:	00008067          	ret
            free_block_ptr_ = new_free_block;
    80002964:	00c53023          	sd	a2,0(a0)
    80002968:	fd1ff06f          	j	80002938 <_ZN15MemoryAllocator9mem_allocEm+0x50>
        if (prev_free_block) {
    8000296c:	00068863          	beqz	a3,8000297c <_ZN15MemoryAllocator9mem_allocEm+0x94>
            prev_free_block->next_ = free_block->next_;
    80002970:	0007b703          	ld	a4,0(a5)
    80002974:	00e6b023          	sd	a4,0(a3)
    80002978:	fd5ff06f          	j	8000294c <_ZN15MemoryAllocator9mem_allocEm+0x64>
            free_block_ptr_ = free_block->next_;
    8000297c:	0007b703          	ld	a4,0(a5)
    80002980:	00e53023          	sd	a4,0(a0)
    80002984:	fc9ff06f          	j	8000294c <_ZN15MemoryAllocator9mem_allocEm+0x64>

0000000080002988 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00813423          	sd	s0,8(sp)
    80002990:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    80002994:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    80002998:	00000513          	li	a0,0
    while (free_block_iter) {
    8000299c:	00078a63          	beqz	a5,800029b0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    800029a0:	0087b703          	ld	a4,8(a5)
    800029a4:	fee57ce3          	bgeu	a0,a4,8000299c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    800029a8:	00070513          	mv	a0,a4
    800029ac:	ff1ff06f          	j	8000299c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    800029b0:	00813403          	ld	s0,8(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    800029c8:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    800029cc:	00000513          	li	a0,0
    while (free_block_iter) {
    800029d0:	00078a63          	beqz	a5,800029e4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    800029d4:	0087b703          	ld	a4,8(a5)
    800029d8:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    800029dc:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    800029e0:	ff1ff06f          	j	800029d0 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    800029e4:	00813403          	ld	s0,8(sp)
    800029e8:	01010113          	addi	sp,sp,16
    800029ec:	00008067          	ret

00000000800029f0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    800029f0:	06058a63          	beqz	a1,80002a64 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    800029f4:	06060863          	beqz	a2,80002a64 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00113c23          	sd	ra,24(sp)
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	01213023          	sd	s2,0(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00060913          	mv	s2,a2
    80002a14:	00058493          	mv	s1,a1
        // debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    80002a18:	00007597          	auipc	a1,0x7
    80002a1c:	b8858593          	addi	a1,a1,-1144 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x268>
    80002a20:	00c4b533          	sltu	a0,s1,a2
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	7dc080e7          	jalr	2012(ra) # 80002200 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    80002a2c:	0084b783          	ld	a5,8(s1)
    80002a30:	00f48733          	add	a4,s1,a5
    80002a34:	00e91c63          	bne	s2,a4,80002a4c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        // debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002a38:	00893703          	ld	a4,8(s2)
    80002a3c:	00e787b3          	add	a5,a5,a4
    80002a40:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002a44:	00093783          	ld	a5,0(s2)
    80002a48:	00f4b023          	sd	a5,0(s1)
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	00013903          	ld	s2,0(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret
    80002a64:	00008067          	ret

0000000080002a68 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    80002a68:	fd010113          	addi	sp,sp,-48
    80002a6c:	02113423          	sd	ra,40(sp)
    80002a70:	02813023          	sd	s0,32(sp)
    80002a74:	00913c23          	sd	s1,24(sp)
    80002a78:	01213823          	sd	s2,16(sp)
    80002a7c:	01313423          	sd	s3,8(sp)
    80002a80:	03010413          	addi	s0,sp,48
    if (!free_block_addr) {
    80002a84:	04058263          	beqz	a1,80002ac8 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80002a88:	00050993          	mv	s3,a0
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    80002a8c:	ff058913          	addi	s2,a1,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    80002a90:	00090793          	mv	a5,s2
    80002a94:	03f97713          	andi	a4,s2,63
    80002a98:	04071463          	bnez	a4,80002ae0 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002a9c:	00009717          	auipc	a4,0x9
    80002aa0:	db470713          	addi	a4,a4,-588 # 8000b850 <HEAP_START_ADDR>
    80002aa4:	00073703          	ld	a4,0(a4)
    80002aa8:	04e96863          	bltu	s2,a4,80002af8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    80002aac:	00009717          	auipc	a4,0x9
    80002ab0:	d9c70713          	addi	a4,a4,-612 # 8000b848 <HEAP_END_ADDR>
    80002ab4:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002ab8:	04e97063          	bgeu	s2,a4,80002af8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    80002abc:	00053603          	ld	a2,0(a0)
    80002ac0:	00000493          	li	s1,0
    80002ac4:	0540006f          	j	80002b18 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        debug_print("Free block address is null.\n");
    80002ac8:	00007517          	auipc	a0,0x7
    80002acc:	b1850513          	addi	a0,a0,-1256 # 800095e0 <_ZZ24debug_print_internal_intmE6digits+0x2a8>
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	708080e7          	jalr	1800(ra) # 800021d8 <_Z11debug_printPKc>
        return -1;
    80002ad8:	fff00513          	li	a0,-1
    80002adc:	07c0006f          	j	80002b58 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    80002ae0:	00007517          	auipc	a0,0x7
    80002ae4:	b2050513          	addi	a0,a0,-1248 # 80009600 <_ZZ24debug_print_internal_intmE6digits+0x2c8>
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	6f0080e7          	jalr	1776(ra) # 800021d8 <_Z11debug_printPKc>
        return -2;
    80002af0:	ffe00513          	li	a0,-2
    80002af4:	0640006f          	j	80002b58 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not in the heap.\n");
    80002af8:	00007517          	auipc	a0,0x7
    80002afc:	b4050513          	addi	a0,a0,-1216 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x300>
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	6d8080e7          	jalr	1752(ra) # 800021d8 <_Z11debug_printPKc>
        return -3;
    80002b08:	ffd00513          	li	a0,-3
    80002b0c:	04c0006f          	j	80002b58 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        prev_free_block = next_free_block;
    80002b10:	00060493          	mv	s1,a2
        next_free_block = next_free_block->next_;
    80002b14:	00063603          	ld	a2,0(a2)
    while (next_free_block &&
    80002b18:	00060663          	beqz	a2,80002b24 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002b1c:	fec7fae3          	bgeu	a5,a2,80002b10 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
          !(((uint64)next_free_block > (uint64)block_info) &&
    80002b20:	fef4f8e3          	bgeu	s1,a5,80002b10 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if (!prev_free_block) {
    80002b24:	04048863          	beqz	s1,80002b74 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        prev_free_block->next_ = block_info;
    80002b28:	0124b023          	sd	s2,0(s1)
    block_info->next_ = next_free_block;
    80002b2c:	fec5b823          	sd	a2,-16(a1)
    maybe_consolidate(block_info, next_free_block);
    80002b30:	00090593          	mv	a1,s2
    80002b34:	00098513          	mv	a0,s3
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	eb8080e7          	jalr	-328(ra) # 800029f0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80002b40:	00090613          	mv	a2,s2
    80002b44:	00048593          	mv	a1,s1
    80002b48:	00098513          	mv	a0,s3
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	ea4080e7          	jalr	-348(ra) # 800029f0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    80002b54:	00000513          	li	a0,0
}
    80002b58:	02813083          	ld	ra,40(sp)
    80002b5c:	02013403          	ld	s0,32(sp)
    80002b60:	01813483          	ld	s1,24(sp)
    80002b64:	01013903          	ld	s2,16(sp)
    80002b68:	00813983          	ld	s3,8(sp)
    80002b6c:	03010113          	addi	sp,sp,48
    80002b70:	00008067          	ret
        free_block_ptr_ = block_info;
    80002b74:	0129b023          	sd	s2,0(s3)
    80002b78:	fb5ff06f          	j	80002b2c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>

0000000080002b7c <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80002b7c:	00100793          	li	a5,1
    80002b80:	06a7f863          	bgeu	a5,a0,80002bf0 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	00813823          	sd	s0,16(sp)
    80002b90:	00913423          	sd	s1,8(sp)
    80002b94:	01213023          	sd	s2,0(sp)
    80002b98:	02010413          	addi	s0,sp,32
    80002b9c:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80002ba0:	00a00793          	li	a5,10
    80002ba4:	02f577b3          	remu	a5,a0,a5
    80002ba8:	02078e63          	beqz	a5,80002be4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002bac:	fff48513          	addi	a0,s1,-1
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	fcc080e7          	jalr	-52(ra) # 80002b7c <_ZL9fibonaccim>
    80002bb8:	00050913          	mv	s2,a0
    80002bbc:	ffe48513          	addi	a0,s1,-2
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	fbc080e7          	jalr	-68(ra) # 80002b7c <_ZL9fibonaccim>
    80002bc8:	00a90533          	add	a0,s2,a0
}
    80002bcc:	01813083          	ld	ra,24(sp)
    80002bd0:	01013403          	ld	s0,16(sp)
    80002bd4:	00813483          	ld	s1,8(sp)
    80002bd8:	00013903          	ld	s2,0(sp)
    80002bdc:	02010113          	addi	sp,sp,32
    80002be0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	dd8080e7          	jalr	-552(ra) # 800019bc <_Z15thread_dispatchv>
    80002bec:	fc1ff06f          	j	80002bac <_ZL9fibonaccim+0x30>
}
    80002bf0:	00008067          	ret

0000000080002bf4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002bf4:	fe010113          	addi	sp,sp,-32
    80002bf8:	00113c23          	sd	ra,24(sp)
    80002bfc:	00813823          	sd	s0,16(sp)
    80002c00:	00913423          	sd	s1,8(sp)
    80002c04:	01213023          	sd	s2,0(sp)
    80002c08:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002c0c:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80002c10:	00c00793          	li	a5,12
    80002c14:	0497e263          	bltu	a5,s1,80002c58 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80002c18:	00007517          	auipc	a0,0x7
    80002c1c:	a4850513          	addi	a0,a0,-1464 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80002c20:	00003097          	auipc	ra,0x3
    80002c24:	a94080e7          	jalr	-1388(ra) # 800056b4 <_Z11printStringPKc>
    80002c28:	00000613          	li	a2,0
    80002c2c:	00a00593          	li	a1,10
    80002c30:	00048513          	mv	a0,s1
    80002c34:	00003097          	auipc	ra,0x3
    80002c38:	c2c080e7          	jalr	-980(ra) # 80005860 <_Z8printIntiii>
    80002c3c:	00006517          	auipc	a0,0x6
    80002c40:	7a450513          	addi	a0,a0,1956 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002c44:	00003097          	auipc	ra,0x3
    80002c48:	a70080e7          	jalr	-1424(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002c4c:	0014849b          	addiw	s1,s1,1
    80002c50:	0ff4f493          	andi	s1,s1,255
    80002c54:	fbdff06f          	j	80002c10 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80002c58:	00007517          	auipc	a0,0x7
    80002c5c:	a1050513          	addi	a0,a0,-1520 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x330>
    80002c60:	00003097          	auipc	ra,0x3
    80002c64:	a54080e7          	jalr	-1452(ra) # 800056b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002c68:	00500313          	li	t1,5
    thread_dispatch();
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	d50080e7          	jalr	-688(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002c74:	01000513          	li	a0,16
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	f04080e7          	jalr	-252(ra) # 80002b7c <_ZL9fibonaccim>
    80002c80:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002c84:	00007517          	auipc	a0,0x7
    80002c88:	9f450513          	addi	a0,a0,-1548 # 80009678 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80002c8c:	00003097          	auipc	ra,0x3
    80002c90:	a28080e7          	jalr	-1496(ra) # 800056b4 <_Z11printStringPKc>
    80002c94:	00000613          	li	a2,0
    80002c98:	00a00593          	li	a1,10
    80002c9c:	0009051b          	sext.w	a0,s2
    80002ca0:	00003097          	auipc	ra,0x3
    80002ca4:	bc0080e7          	jalr	-1088(ra) # 80005860 <_Z8printIntiii>
    80002ca8:	00006517          	auipc	a0,0x6
    80002cac:	73850513          	addi	a0,a0,1848 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002cb0:	00003097          	auipc	ra,0x3
    80002cb4:	a04080e7          	jalr	-1532(ra) # 800056b4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80002cb8:	00f00793          	li	a5,15
    80002cbc:	0497e263          	bltu	a5,s1,80002d00 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80002cc0:	00007517          	auipc	a0,0x7
    80002cc4:	9a050513          	addi	a0,a0,-1632 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80002cc8:	00003097          	auipc	ra,0x3
    80002ccc:	9ec080e7          	jalr	-1556(ra) # 800056b4 <_Z11printStringPKc>
    80002cd0:	00000613          	li	a2,0
    80002cd4:	00a00593          	li	a1,10
    80002cd8:	00048513          	mv	a0,s1
    80002cdc:	00003097          	auipc	ra,0x3
    80002ce0:	b84080e7          	jalr	-1148(ra) # 80005860 <_Z8printIntiii>
    80002ce4:	00006517          	auipc	a0,0x6
    80002ce8:	6fc50513          	addi	a0,a0,1788 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002cec:	00003097          	auipc	ra,0x3
    80002cf0:	9c8080e7          	jalr	-1592(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002cf4:	0014849b          	addiw	s1,s1,1
    80002cf8:	0ff4f493          	andi	s1,s1,255
    80002cfc:	fbdff06f          	j	80002cb8 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80002d00:	00007517          	auipc	a0,0x7
    80002d04:	98850513          	addi	a0,a0,-1656 # 80009688 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80002d08:	00003097          	auipc	ra,0x3
    80002d0c:	9ac080e7          	jalr	-1620(ra) # 800056b4 <_Z11printStringPKc>
    finishedD = true;
    80002d10:	00100793          	li	a5,1
    80002d14:	00009717          	auipc	a4,0x9
    80002d18:	d2f70223          	sb	a5,-732(a4) # 8000ba38 <_ZL9finishedD>
    thread_dispatch();
    80002d1c:	fffff097          	auipc	ra,0xfffff
    80002d20:	ca0080e7          	jalr	-864(ra) # 800019bc <_Z15thread_dispatchv>
}
    80002d24:	01813083          	ld	ra,24(sp)
    80002d28:	01013403          	ld	s0,16(sp)
    80002d2c:	00813483          	ld	s1,8(sp)
    80002d30:	00013903          	ld	s2,0(sp)
    80002d34:	02010113          	addi	sp,sp,32
    80002d38:	00008067          	ret

0000000080002d3c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002d3c:	fe010113          	addi	sp,sp,-32
    80002d40:	00113c23          	sd	ra,24(sp)
    80002d44:	00813823          	sd	s0,16(sp)
    80002d48:	00913423          	sd	s1,8(sp)
    80002d4c:	01213023          	sd	s2,0(sp)
    80002d50:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002d54:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80002d58:	00200793          	li	a5,2
    80002d5c:	0497e263          	bltu	a5,s1,80002da0 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80002d60:	00007517          	auipc	a0,0x7
    80002d64:	93850513          	addi	a0,a0,-1736 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80002d68:	00003097          	auipc	ra,0x3
    80002d6c:	94c080e7          	jalr	-1716(ra) # 800056b4 <_Z11printStringPKc>
    80002d70:	00000613          	li	a2,0
    80002d74:	00a00593          	li	a1,10
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	00003097          	auipc	ra,0x3
    80002d80:	ae4080e7          	jalr	-1308(ra) # 80005860 <_Z8printIntiii>
    80002d84:	00006517          	auipc	a0,0x6
    80002d88:	65c50513          	addi	a0,a0,1628 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002d8c:	00003097          	auipc	ra,0x3
    80002d90:	928080e7          	jalr	-1752(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002d94:	0014849b          	addiw	s1,s1,1
    80002d98:	0ff4f493          	andi	s1,s1,255
    80002d9c:	fbdff06f          	j	80002d58 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80002da0:	00007517          	auipc	a0,0x7
    80002da4:	90050513          	addi	a0,a0,-1792 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80002da8:	00003097          	auipc	ra,0x3
    80002dac:	90c080e7          	jalr	-1780(ra) # 800056b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002db0:	00700313          	li	t1,7
    thread_dispatch();
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	c08080e7          	jalr	-1016(ra) # 800019bc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002dbc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002dc0:	00007517          	auipc	a0,0x7
    80002dc4:	8f050513          	addi	a0,a0,-1808 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80002dc8:	00003097          	auipc	ra,0x3
    80002dcc:	8ec080e7          	jalr	-1812(ra) # 800056b4 <_Z11printStringPKc>
    80002dd0:	00000613          	li	a2,0
    80002dd4:	00a00593          	li	a1,10
    80002dd8:	0009051b          	sext.w	a0,s2
    80002ddc:	00003097          	auipc	ra,0x3
    80002de0:	a84080e7          	jalr	-1404(ra) # 80005860 <_Z8printIntiii>
    80002de4:	00006517          	auipc	a0,0x6
    80002de8:	5fc50513          	addi	a0,a0,1532 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002dec:	00003097          	auipc	ra,0x3
    80002df0:	8c8080e7          	jalr	-1848(ra) # 800056b4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002df4:	00c00513          	li	a0,12
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	d84080e7          	jalr	-636(ra) # 80002b7c <_ZL9fibonaccim>
    80002e00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002e04:	00007517          	auipc	a0,0x7
    80002e08:	8b450513          	addi	a0,a0,-1868 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80002e0c:	00003097          	auipc	ra,0x3
    80002e10:	8a8080e7          	jalr	-1880(ra) # 800056b4 <_Z11printStringPKc>
    80002e14:	00000613          	li	a2,0
    80002e18:	00a00593          	li	a1,10
    80002e1c:	0009051b          	sext.w	a0,s2
    80002e20:	00003097          	auipc	ra,0x3
    80002e24:	a40080e7          	jalr	-1472(ra) # 80005860 <_Z8printIntiii>
    80002e28:	00006517          	auipc	a0,0x6
    80002e2c:	5b850513          	addi	a0,a0,1464 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002e30:	00003097          	auipc	ra,0x3
    80002e34:	884080e7          	jalr	-1916(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e38:	00500793          	li	a5,5
    80002e3c:	0497e263          	bltu	a5,s1,80002e80 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80002e40:	00007517          	auipc	a0,0x7
    80002e44:	85850513          	addi	a0,a0,-1960 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80002e48:	00003097          	auipc	ra,0x3
    80002e4c:	86c080e7          	jalr	-1940(ra) # 800056b4 <_Z11printStringPKc>
    80002e50:	00000613          	li	a2,0
    80002e54:	00a00593          	li	a1,10
    80002e58:	00048513          	mv	a0,s1
    80002e5c:	00003097          	auipc	ra,0x3
    80002e60:	a04080e7          	jalr	-1532(ra) # 80005860 <_Z8printIntiii>
    80002e64:	00006517          	auipc	a0,0x6
    80002e68:	57c50513          	addi	a0,a0,1404 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002e6c:	00003097          	auipc	ra,0x3
    80002e70:	848080e7          	jalr	-1976(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e74:	0014849b          	addiw	s1,s1,1
    80002e78:	0ff4f493          	andi	s1,s1,255
    80002e7c:	fbdff06f          	j	80002e38 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    80002e80:	00007517          	auipc	a0,0x7
    80002e84:	84850513          	addi	a0,a0,-1976 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80002e88:	00003097          	auipc	ra,0x3
    80002e8c:	82c080e7          	jalr	-2004(ra) # 800056b4 <_Z11printStringPKc>
    finishedC = true;
    80002e90:	00100793          	li	a5,1
    80002e94:	00009717          	auipc	a4,0x9
    80002e98:	baf702a3          	sb	a5,-1115(a4) # 8000ba39 <_ZL9finishedC>
    thread_dispatch();
    80002e9c:	fffff097          	auipc	ra,0xfffff
    80002ea0:	b20080e7          	jalr	-1248(ra) # 800019bc <_Z15thread_dispatchv>
}
    80002ea4:	01813083          	ld	ra,24(sp)
    80002ea8:	01013403          	ld	s0,16(sp)
    80002eac:	00813483          	ld	s1,8(sp)
    80002eb0:	00013903          	ld	s2,0(sp)
    80002eb4:	02010113          	addi	sp,sp,32
    80002eb8:	00008067          	ret

0000000080002ebc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002ebc:	fe010113          	addi	sp,sp,-32
    80002ec0:	00113c23          	sd	ra,24(sp)
    80002ec4:	00813823          	sd	s0,16(sp)
    80002ec8:	00913423          	sd	s1,8(sp)
    80002ecc:	01213023          	sd	s2,0(sp)
    80002ed0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002ed4:	00000913          	li	s2,0
    80002ed8:	0380006f          	j	80002f10 <_ZL11workerBodyBPv+0x54>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002edc:	00178793          	addi	a5,a5,1
    80002ee0:	01d00713          	li	a4,29
    80002ee4:	fef77ce3          	bgeu	a4,a5,80002edc <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	ad4080e7          	jalr	-1324(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80002ef0:	00148493          	addi	s1,s1,1
    80002ef4:	00900793          	li	a5,9
    80002ef8:	0097e663          	bltu	a5,s1,80002f04 <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002efc:	00000793          	li	a5,0
    80002f00:	fe1ff06f          	j	80002ee0 <_ZL11workerBodyBPv+0x24>
        if (i == 10) {
    80002f04:	00a00793          	li	a5,10
    80002f08:	04f90663          	beq	s2,a5,80002f54 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    80002f0c:	00190913          	addi	s2,s2,1
    80002f10:	00f00793          	li	a5,15
    80002f14:	0527e463          	bltu	a5,s2,80002f5c <_ZL11workerBodyBPv+0xa0>
        printString("B: i="); printInt(i); printString("\n");
    80002f18:	00006517          	auipc	a0,0x6
    80002f1c:	7c050513          	addi	a0,a0,1984 # 800096d8 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80002f20:	00002097          	auipc	ra,0x2
    80002f24:	794080e7          	jalr	1940(ra) # 800056b4 <_Z11printStringPKc>
    80002f28:	00000613          	li	a2,0
    80002f2c:	00a00593          	li	a1,10
    80002f30:	0009051b          	sext.w	a0,s2
    80002f34:	00003097          	auipc	ra,0x3
    80002f38:	92c080e7          	jalr	-1748(ra) # 80005860 <_Z8printIntiii>
    80002f3c:	00006517          	auipc	a0,0x6
    80002f40:	4a450513          	addi	a0,a0,1188 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002f44:	00002097          	auipc	ra,0x2
    80002f48:	770080e7          	jalr	1904(ra) # 800056b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80002f4c:	00000493          	li	s1,0
    80002f50:	fa5ff06f          	j	80002ef4 <_ZL11workerBodyBPv+0x38>
            asm volatile("csrr t6, sepc");
    80002f54:	14102ff3          	csrr	t6,sepc
    80002f58:	fb5ff06f          	j	80002f0c <_ZL11workerBodyBPv+0x50>
    printString("B finished!\n");
    80002f5c:	00006517          	auipc	a0,0x6
    80002f60:	78450513          	addi	a0,a0,1924 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80002f64:	00002097          	auipc	ra,0x2
    80002f68:	750080e7          	jalr	1872(ra) # 800056b4 <_Z11printStringPKc>
    finishedB = true;
    80002f6c:	00100793          	li	a5,1
    80002f70:	00009717          	auipc	a4,0x9
    80002f74:	acf70523          	sb	a5,-1334(a4) # 8000ba3a <_ZL9finishedB>
    thread_dispatch();
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	a44080e7          	jalr	-1468(ra) # 800019bc <_Z15thread_dispatchv>
}
    80002f80:	01813083          	ld	ra,24(sp)
    80002f84:	01013403          	ld	s0,16(sp)
    80002f88:	00813483          	ld	s1,8(sp)
    80002f8c:	00013903          	ld	s2,0(sp)
    80002f90:	02010113          	addi	sp,sp,32
    80002f94:	00008067          	ret

0000000080002f98 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002f98:	fe010113          	addi	sp,sp,-32
    80002f9c:	00113c23          	sd	ra,24(sp)
    80002fa0:	00813823          	sd	s0,16(sp)
    80002fa4:	00913423          	sd	s1,8(sp)
    80002fa8:	01213023          	sd	s2,0(sp)
    80002fac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002fb0:	00000913          	li	s2,0
    80002fb4:	0300006f          	j	80002fe4 <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002fb8:	00178793          	addi	a5,a5,1
    80002fbc:	01d00713          	li	a4,29
    80002fc0:	fef77ce3          	bgeu	a4,a5,80002fb8 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	9f8080e7          	jalr	-1544(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80002fcc:	00148493          	addi	s1,s1,1
    80002fd0:	00900793          	li	a5,9
    80002fd4:	0097e663          	bltu	a5,s1,80002fe0 <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80002fd8:	00000793          	li	a5,0
    80002fdc:	fe1ff06f          	j	80002fbc <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80002fe0:	00190913          	addi	s2,s2,1
    80002fe4:	00900793          	li	a5,9
    80002fe8:	0527e063          	bltu	a5,s2,80003028 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80002fec:	00006517          	auipc	a0,0x6
    80002ff0:	70450513          	addi	a0,a0,1796 # 800096f0 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	6c0080e7          	jalr	1728(ra) # 800056b4 <_Z11printStringPKc>
    80002ffc:	00000613          	li	a2,0
    80003000:	00a00593          	li	a1,10
    80003004:	0009051b          	sext.w	a0,s2
    80003008:	00003097          	auipc	ra,0x3
    8000300c:	858080e7          	jalr	-1960(ra) # 80005860 <_Z8printIntiii>
    80003010:	00006517          	auipc	a0,0x6
    80003014:	3d050513          	addi	a0,a0,976 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003018:	00002097          	auipc	ra,0x2
    8000301c:	69c080e7          	jalr	1692(ra) # 800056b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003020:	00000493          	li	s1,0
    80003024:	fadff06f          	j	80002fd0 <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    80003028:	00006517          	auipc	a0,0x6
    8000302c:	6a050513          	addi	a0,a0,1696 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80003030:	00002097          	auipc	ra,0x2
    80003034:	684080e7          	jalr	1668(ra) # 800056b4 <_Z11printStringPKc>
    finishedA = true;
    80003038:	00100793          	li	a5,1
    8000303c:	00009717          	auipc	a4,0x9
    80003040:	9ef70fa3          	sb	a5,-1537(a4) # 8000ba3b <_ZL9finishedA>
}
    80003044:	01813083          	ld	ra,24(sp)
    80003048:	01013403          	ld	s0,16(sp)
    8000304c:	00813483          	ld	s1,8(sp)
    80003050:	00013903          	ld	s2,0(sp)
    80003054:	02010113          	addi	sp,sp,32
    80003058:	00008067          	ret

000000008000305c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000305c:	fd010113          	addi	sp,sp,-48
    80003060:	02113423          	sd	ra,40(sp)
    80003064:	02813023          	sd	s0,32(sp)
    80003068:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000306c:	00000613          	li	a2,0
    80003070:	00000597          	auipc	a1,0x0
    80003074:	f2858593          	addi	a1,a1,-216 # 80002f98 <_ZL11workerBodyAPv>
    80003078:	fd040513          	addi	a0,s0,-48
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	890080e7          	jalr	-1904(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003084:	00006517          	auipc	a0,0x6
    80003088:	67450513          	addi	a0,a0,1652 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	628080e7          	jalr	1576(ra) # 800056b4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003094:	00000613          	li	a2,0
    80003098:	00000597          	auipc	a1,0x0
    8000309c:	e2458593          	addi	a1,a1,-476 # 80002ebc <_ZL11workerBodyBPv>
    800030a0:	fd840513          	addi	a0,s0,-40
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	868080e7          	jalr	-1944(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800030ac:	00006517          	auipc	a0,0x6
    800030b0:	66450513          	addi	a0,a0,1636 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    800030b4:	00002097          	auipc	ra,0x2
    800030b8:	600080e7          	jalr	1536(ra) # 800056b4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800030bc:	00000613          	li	a2,0
    800030c0:	00000597          	auipc	a1,0x0
    800030c4:	c7c58593          	addi	a1,a1,-900 # 80002d3c <_ZL11workerBodyCPv>
    800030c8:	fe040513          	addi	a0,s0,-32
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	840080e7          	jalr	-1984(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800030d4:	00006517          	auipc	a0,0x6
    800030d8:	65450513          	addi	a0,a0,1620 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	5d8080e7          	jalr	1496(ra) # 800056b4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800030e4:	00000613          	li	a2,0
    800030e8:	00000597          	auipc	a1,0x0
    800030ec:	b0c58593          	addi	a1,a1,-1268 # 80002bf4 <_ZL11workerBodyDPv>
    800030f0:	fe840513          	addi	a0,s0,-24
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	818080e7          	jalr	-2024(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800030fc:	00006517          	auipc	a0,0x6
    80003100:	64450513          	addi	a0,a0,1604 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80003104:	00002097          	auipc	ra,0x2
    80003108:	5b0080e7          	jalr	1456(ra) # 800056b4 <_Z11printStringPKc>
    8000310c:	00c0006f          	j	80003118 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	8ac080e7          	jalr	-1876(ra) # 800019bc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003118:	00009797          	auipc	a5,0x9
    8000311c:	92378793          	addi	a5,a5,-1757 # 8000ba3b <_ZL9finishedA>
    80003120:	0007c783          	lbu	a5,0(a5)
    80003124:	0ff7f793          	andi	a5,a5,255
    80003128:	fe0784e3          	beqz	a5,80003110 <_Z16System_Mode_testv+0xb4>
    8000312c:	00009797          	auipc	a5,0x9
    80003130:	90e78793          	addi	a5,a5,-1778 # 8000ba3a <_ZL9finishedB>
    80003134:	0007c783          	lbu	a5,0(a5)
    80003138:	0ff7f793          	andi	a5,a5,255
    8000313c:	fc078ae3          	beqz	a5,80003110 <_Z16System_Mode_testv+0xb4>
    80003140:	00009797          	auipc	a5,0x9
    80003144:	8f978793          	addi	a5,a5,-1799 # 8000ba39 <_ZL9finishedC>
    80003148:	0007c783          	lbu	a5,0(a5)
    8000314c:	0ff7f793          	andi	a5,a5,255
    80003150:	fc0780e3          	beqz	a5,80003110 <_Z16System_Mode_testv+0xb4>
    80003154:	00009797          	auipc	a5,0x9
    80003158:	8e478793          	addi	a5,a5,-1820 # 8000ba38 <_ZL9finishedD>
    8000315c:	0007c783          	lbu	a5,0(a5)
    80003160:	0ff7f793          	andi	a5,a5,255
    80003164:	fa0786e3          	beqz	a5,80003110 <_Z16System_Mode_testv+0xb4>
    }

}
    80003168:	02813083          	ld	ra,40(sp)
    8000316c:	02013403          	ld	s0,32(sp)
    80003170:	03010113          	addi	sp,sp,48
    80003174:	00008067          	ret

0000000080003178 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003178:	fe010113          	addi	sp,sp,-32
    8000317c:	00113c23          	sd	ra,24(sp)
    80003180:	00813823          	sd	s0,16(sp)
    80003184:	00913423          	sd	s1,8(sp)
    80003188:	01213023          	sd	s2,0(sp)
    8000318c:	02010413          	addi	s0,sp,32
    80003190:	00050493          	mv	s1,a0
    80003194:	00058913          	mv	s2,a1
    80003198:	0015879b          	addiw	a5,a1,1
    8000319c:	0007851b          	sext.w	a0,a5
    800031a0:	00f4a023          	sw	a5,0(s1)
    800031a4:	0004a823          	sw	zero,16(s1)
    800031a8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800031ac:	00251513          	slli	a0,a0,0x2
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	5d0080e7          	jalr	1488(ra) # 80001780 <_Z9mem_allocm>
    800031b8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800031bc:	00000593          	li	a1,0
    800031c0:	02048513          	addi	a0,s1,32
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	844080e7          	jalr	-1980(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    800031cc:	00090593          	mv	a1,s2
    800031d0:	01848513          	addi	a0,s1,24
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	834080e7          	jalr	-1996(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    800031dc:	00100593          	li	a1,1
    800031e0:	02848513          	addi	a0,s1,40
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	824080e7          	jalr	-2012(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    800031ec:	00100593          	li	a1,1
    800031f0:	03048513          	addi	a0,s1,48
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	814080e7          	jalr	-2028(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
}
    800031fc:	01813083          	ld	ra,24(sp)
    80003200:	01013403          	ld	s0,16(sp)
    80003204:	00813483          	ld	s1,8(sp)
    80003208:	00013903          	ld	s2,0(sp)
    8000320c:	02010113          	addi	sp,sp,32
    80003210:	00008067          	ret

0000000080003214 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003214:	fe010113          	addi	sp,sp,-32
    80003218:	00113c23          	sd	ra,24(sp)
    8000321c:	00813823          	sd	s0,16(sp)
    80003220:	00913423          	sd	s1,8(sp)
    80003224:	01213023          	sd	s2,0(sp)
    80003228:	02010413          	addi	s0,sp,32
    8000322c:	00050493          	mv	s1,a0
    80003230:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003234:	01853503          	ld	a0,24(a0)
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	914080e7          	jalr	-1772(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80003240:	0304b503          	ld	a0,48(s1)
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	908080e7          	jalr	-1784(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    8000324c:	0084b783          	ld	a5,8(s1)
    80003250:	0144a703          	lw	a4,20(s1)
    80003254:	00271713          	slli	a4,a4,0x2
    80003258:	00e787b3          	add	a5,a5,a4
    8000325c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003260:	0144a783          	lw	a5,20(s1)
    80003264:	0017879b          	addiw	a5,a5,1
    80003268:	0004a703          	lw	a4,0(s1)
    8000326c:	02e7e7bb          	remw	a5,a5,a4
    80003270:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003274:	0304b503          	ld	a0,48(s1)
    80003278:	fffff097          	auipc	ra,0xfffff
    8000327c:	924080e7          	jalr	-1756(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80003280:	0204b503          	ld	a0,32(s1)
    80003284:	fffff097          	auipc	ra,0xfffff
    80003288:	918080e7          	jalr	-1768(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

}
    8000328c:	01813083          	ld	ra,24(sp)
    80003290:	01013403          	ld	s0,16(sp)
    80003294:	00813483          	ld	s1,8(sp)
    80003298:	00013903          	ld	s2,0(sp)
    8000329c:	02010113          	addi	sp,sp,32
    800032a0:	00008067          	ret

00000000800032a4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	01213023          	sd	s2,0(sp)
    800032b8:	02010413          	addi	s0,sp,32
    800032bc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800032c0:	02053503          	ld	a0,32(a0)
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	888080e7          	jalr	-1912(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    800032cc:	0284b503          	ld	a0,40(s1)
    800032d0:	fffff097          	auipc	ra,0xfffff
    800032d4:	87c080e7          	jalr	-1924(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    800032d8:	0084b703          	ld	a4,8(s1)
    800032dc:	0104a783          	lw	a5,16(s1)
    800032e0:	00279693          	slli	a3,a5,0x2
    800032e4:	00d70733          	add	a4,a4,a3
    800032e8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800032ec:	0017879b          	addiw	a5,a5,1
    800032f0:	0004a703          	lw	a4,0(s1)
    800032f4:	02e7e7bb          	remw	a5,a5,a4
    800032f8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800032fc:	0284b503          	ld	a0,40(s1)
    80003300:	fffff097          	auipc	ra,0xfffff
    80003304:	89c080e7          	jalr	-1892(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    80003308:	0184b503          	ld	a0,24(s1)
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	890080e7          	jalr	-1904(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    80003314:	00090513          	mv	a0,s2
    80003318:	01813083          	ld	ra,24(sp)
    8000331c:	01013403          	ld	s0,16(sp)
    80003320:	00813483          	ld	s1,8(sp)
    80003324:	00013903          	ld	s2,0(sp)
    80003328:	02010113          	addi	sp,sp,32
    8000332c:	00008067          	ret

0000000080003330 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003330:	fe010113          	addi	sp,sp,-32
    80003334:	00113c23          	sd	ra,24(sp)
    80003338:	00813823          	sd	s0,16(sp)
    8000333c:	00913423          	sd	s1,8(sp)
    80003340:	01213023          	sd	s2,0(sp)
    80003344:	02010413          	addi	s0,sp,32
    80003348:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000334c:	02853503          	ld	a0,40(a0)
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	7fc080e7          	jalr	2044(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80003358:	0304b503          	ld	a0,48(s1)
    8000335c:	ffffe097          	auipc	ra,0xffffe
    80003360:	7f0080e7          	jalr	2032(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80003364:	0144a783          	lw	a5,20(s1)
    80003368:	0104a903          	lw	s2,16(s1)
    8000336c:	0327ce63          	blt	a5,s2,800033a8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003370:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003374:	0304b503          	ld	a0,48(s1)
    80003378:	fffff097          	auipc	ra,0xfffff
    8000337c:	824080e7          	jalr	-2012(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    80003380:	0284b503          	ld	a0,40(s1)
    80003384:	fffff097          	auipc	ra,0xfffff
    80003388:	818080e7          	jalr	-2024(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    8000338c:	00090513          	mv	a0,s2
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	00013903          	ld	s2,0(sp)
    800033a0:	02010113          	addi	sp,sp,32
    800033a4:	00008067          	ret
        ret = cap - head + tail;
    800033a8:	0004a703          	lw	a4,0(s1)
    800033ac:	4127093b          	subw	s2,a4,s2
    800033b0:	00f9093b          	addw	s2,s2,a5
    800033b4:	fc1ff06f          	j	80003374 <_ZN6Buffer6getCntEv+0x44>

00000000800033b8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800033b8:	fe010113          	addi	sp,sp,-32
    800033bc:	00113c23          	sd	ra,24(sp)
    800033c0:	00813823          	sd	s0,16(sp)
    800033c4:	00913423          	sd	s1,8(sp)
    800033c8:	02010413          	addi	s0,sp,32
    800033cc:	00050493          	mv	s1,a0
    putc('\n');
    800033d0:	00a00513          	li	a0,10
    800033d4:	fffff097          	auipc	ra,0xfffff
    800033d8:	8b8080e7          	jalr	-1864(ra) # 80001c8c <_Z4putcc>
    printString("Buffer deleted!\n");
    800033dc:	00006517          	auipc	a0,0x6
    800033e0:	37c50513          	addi	a0,a0,892 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x420>
    800033e4:	00002097          	auipc	ra,0x2
    800033e8:	2d0080e7          	jalr	720(ra) # 800056b4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800033ec:	00048513          	mv	a0,s1
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	f40080e7          	jalr	-192(ra) # 80003330 <_ZN6Buffer6getCntEv>
    800033f8:	02a05c63          	blez	a0,80003430 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800033fc:	0084b783          	ld	a5,8(s1)
    80003400:	0104a703          	lw	a4,16(s1)
    80003404:	00271713          	slli	a4,a4,0x2
    80003408:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000340c:	0007c503          	lbu	a0,0(a5)
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	87c080e7          	jalr	-1924(ra) # 80001c8c <_Z4putcc>
        head = (head + 1) % cap;
    80003418:	0104a783          	lw	a5,16(s1)
    8000341c:	0017879b          	addiw	a5,a5,1
    80003420:	0004a703          	lw	a4,0(s1)
    80003424:	02e7e7bb          	remw	a5,a5,a4
    80003428:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000342c:	fc1ff06f          	j	800033ec <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003430:	02100513          	li	a0,33
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	858080e7          	jalr	-1960(ra) # 80001c8c <_Z4putcc>
    putc('\n');
    8000343c:	00a00513          	li	a0,10
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	84c080e7          	jalr	-1972(ra) # 80001c8c <_Z4putcc>
    mem_free(buffer);
    80003448:	0084b503          	ld	a0,8(s1)
    8000344c:	ffffe097          	auipc	ra,0xffffe
    80003450:	39c080e7          	jalr	924(ra) # 800017e8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003454:	0204b503          	ld	a0,32(s1)
    80003458:	ffffe097          	auipc	ra,0xffffe
    8000345c:	688080e7          	jalr	1672(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    80003460:	0184b503          	ld	a0,24(s1)
    80003464:	ffffe097          	auipc	ra,0xffffe
    80003468:	67c080e7          	jalr	1660(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    8000346c:	0304b503          	ld	a0,48(s1)
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	670080e7          	jalr	1648(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    80003478:	0284b503          	ld	a0,40(s1)
    8000347c:	ffffe097          	auipc	ra,0xffffe
    80003480:	664080e7          	jalr	1636(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
}
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00813483          	ld	s1,8(sp)
    80003490:	02010113          	addi	sp,sp,32
    80003494:	00008067          	ret

0000000080003498 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003498:	f8010113          	addi	sp,sp,-128
    8000349c:	06113c23          	sd	ra,120(sp)
    800034a0:	06813823          	sd	s0,112(sp)
    800034a4:	06913423          	sd	s1,104(sp)
    800034a8:	07213023          	sd	s2,96(sp)
    800034ac:	05313c23          	sd	s3,88(sp)
    800034b0:	05413823          	sd	s4,80(sp)
    800034b4:	05513423          	sd	s5,72(sp)
    800034b8:	05613023          	sd	s6,64(sp)
    800034bc:	03713c23          	sd	s7,56(sp)
    800034c0:	03813823          	sd	s8,48(sp)
    800034c4:	03913423          	sd	s9,40(sp)
    800034c8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800034cc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800034d0:	00006517          	auipc	a0,0x6
    800034d4:	33850513          	addi	a0,a0,824 # 80009808 <_ZTV8Consumer+0x28>
    800034d8:	00002097          	auipc	ra,0x2
    800034dc:	1dc080e7          	jalr	476(ra) # 800056b4 <_Z11printStringPKc>
    getString(input, 30);
    800034e0:	01e00593          	li	a1,30
    800034e4:	f8040513          	addi	a0,s0,-128
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	254080e7          	jalr	596(ra) # 8000573c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800034f0:	f8040513          	addi	a0,s0,-128
    800034f4:	00002097          	auipc	ra,0x2
    800034f8:	31c080e7          	jalr	796(ra) # 80005810 <_Z11stringToIntPKc>
    800034fc:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    80003500:	00006517          	auipc	a0,0x6
    80003504:	32850513          	addi	a0,a0,808 # 80009828 <_ZTV8Consumer+0x48>
    80003508:	00002097          	auipc	ra,0x2
    8000350c:	1ac080e7          	jalr	428(ra) # 800056b4 <_Z11printStringPKc>
    getString(input, 30);
    80003510:	01e00593          	li	a1,30
    80003514:	f8040513          	addi	a0,s0,-128
    80003518:	00002097          	auipc	ra,0x2
    8000351c:	224080e7          	jalr	548(ra) # 8000573c <_Z9getStringPci>
    n = stringToInt(input);
    80003520:	f8040513          	addi	a0,s0,-128
    80003524:	00002097          	auipc	ra,0x2
    80003528:	2ec080e7          	jalr	748(ra) # 80005810 <_Z11stringToIntPKc>
    8000352c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003530:	00006517          	auipc	a0,0x6
    80003534:	31850513          	addi	a0,a0,792 # 80009848 <_ZTV8Consumer+0x68>
    80003538:	00002097          	auipc	ra,0x2
    8000353c:	17c080e7          	jalr	380(ra) # 800056b4 <_Z11printStringPKc>
    printInt(threadNum);
    80003540:	00000613          	li	a2,0
    80003544:	00a00593          	li	a1,10
    80003548:	000a0513          	mv	a0,s4
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	314080e7          	jalr	788(ra) # 80005860 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003554:	00006517          	auipc	a0,0x6
    80003558:	30c50513          	addi	a0,a0,780 # 80009860 <_ZTV8Consumer+0x80>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	158080e7          	jalr	344(ra) # 800056b4 <_Z11printStringPKc>
    printInt(n);
    80003564:	00000613          	li	a2,0
    80003568:	00a00593          	li	a1,10
    8000356c:	00048513          	mv	a0,s1
    80003570:	00002097          	auipc	ra,0x2
    80003574:	2f0080e7          	jalr	752(ra) # 80005860 <_Z8printIntiii>
    printString(".\n");
    80003578:	00006517          	auipc	a0,0x6
    8000357c:	30050513          	addi	a0,a0,768 # 80009878 <_ZTV8Consumer+0x98>
    80003580:	00002097          	auipc	ra,0x2
    80003584:	134080e7          	jalr	308(ra) # 800056b4 <_Z11printStringPKc>
    if (threadNum > n) {
    80003588:	0344c463          	blt	s1,s4,800035b0 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    8000358c:	03405c63          	blez	s4,800035c4 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80003590:	03800513          	li	a0,56
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	ad4080e7          	jalr	-1324(ra) # 80002068 <_Znwm>
    8000359c:	00050b13          	mv	s6,a0
    800035a0:	00048593          	mv	a1,s1
    800035a4:	00003097          	auipc	ra,0x3
    800035a8:	900080e7          	jalr	-1792(ra) # 80005ea4 <_ZN9BufferCPPC1Ei>
    800035ac:	0300006f          	j	800035dc <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	2d050513          	addi	a0,a0,720 # 80009880 <_ZTV8Consumer+0xa0>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	0fc080e7          	jalr	252(ra) # 800056b4 <_Z11printStringPKc>
        return;
    800035c0:	0140006f          	j	800035d4 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800035c4:	00006517          	auipc	a0,0x6
    800035c8:	2fc50513          	addi	a0,a0,764 # 800098c0 <_ZTV8Consumer+0xe0>
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	0e8080e7          	jalr	232(ra) # 800056b4 <_Z11printStringPKc>
        return;
    800035d4:	000c0113          	mv	sp,s8
    800035d8:	37c0006f          	j	80003954 <_Z20testConsumerProducerv+0x4bc>
    waitForAll = new Semaphore(0);
    800035dc:	01000513          	li	a0,16
    800035e0:	fffff097          	auipc	ra,0xfffff
    800035e4:	a88080e7          	jalr	-1400(ra) # 80002068 <_Znwm>
    800035e8:	00050913          	mv	s2,a0
    void* arg;
};

class Semaphore {
    public:
    Semaphore(unsigned init = 1) {
    800035ec:	00006797          	auipc	a5,0x6
    800035f0:	19478793          	addi	a5,a5,404 # 80009780 <_ZTV9Semaphore+0x10>
    800035f4:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800035f8:	00000593          	li	a1,0
    800035fc:	00850513          	addi	a0,a0,8
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	408080e7          	jalr	1032(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80003608:	00050463          	beqz	a0,80003610 <_Z20testConsumerProducerv+0x178>
            myHandle = nullptr;
    8000360c:	00093423          	sd	zero,8(s2)
    80003610:	00008797          	auipc	a5,0x8
    80003614:	4327bc23          	sd	s2,1080(a5) # 8000ba48 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003618:	003a1793          	slli	a5,s4,0x3
    8000361c:	00f78793          	addi	a5,a5,15
    80003620:	ff07f793          	andi	a5,a5,-16
    80003624:	40f10133          	sub	sp,sp,a5
    80003628:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    8000362c:	001a079b          	addiw	a5,s4,1
    80003630:	00179713          	slli	a4,a5,0x1
    80003634:	00f70733          	add	a4,a4,a5
    80003638:	00371793          	slli	a5,a4,0x3
    8000363c:	00f78793          	addi	a5,a5,15
    80003640:	ff07f793          	andi	a5,a5,-16
    80003644:	40f10133          	sub	sp,sp,a5
    80003648:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    8000364c:	001a1793          	slli	a5,s4,0x1
    80003650:	014787b3          	add	a5,a5,s4
    80003654:	00379493          	slli	s1,a5,0x3
    80003658:	009c84b3          	add	s1,s9,s1
    8000365c:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    80003660:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003664:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003668:	02800513          	li	a0,40
    8000366c:	fffff097          	auipc	ra,0xfffff
    80003670:	9fc080e7          	jalr	-1540(ra) # 80002068 <_Znwm>
    80003674:	00050b93          	mv	s7,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003678:	00053423          	sd	zero,8(a0)
    8000367c:	00053823          	sd	zero,16(a0)
    80003680:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003684:	00006797          	auipc	a5,0x6
    80003688:	16c78793          	addi	a5,a5,364 # 800097f0 <_ZTV8Consumer+0x10>
    8000368c:	00f53023          	sd	a5,0(a0)
    80003690:	02953023          	sd	s1,32(a0)
        debug_print("CPP API: Starting thread\n");
    80003694:	00006517          	auipc	a0,0x6
    80003698:	25c50513          	addi	a0,a0,604 # 800098f0 <_ZTV8Consumer+0x110>
    8000369c:	fffff097          	auipc	ra,0xfffff
    800036a0:	b3c080e7          	jalr	-1220(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    800036a4:	00006517          	auipc	a0,0x6
    800036a8:	26c50513          	addi	a0,a0,620 # 80009910 <_ZTV8Consumer+0x130>
    800036ac:	fffff097          	auipc	ra,0xfffff
    800036b0:	b2c080e7          	jalr	-1236(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)this);
    800036b4:	000b8513          	mv	a0,s7
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	c68080e7          	jalr	-920(ra) # 80002320 <_Z11debug_printm>
        debug_print("\n");
    800036c0:	00006517          	auipc	a0,0x6
    800036c4:	d2050513          	addi	a0,a0,-736 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	b10080e7          	jalr	-1264(ra) # 800021d8 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    800036d0:	000b8613          	mv	a2,s7
    800036d4:	ffffe597          	auipc	a1,0xffffe
    800036d8:	dfc58593          	addi	a1,a1,-516 # 800014d0 <_ZN6Thread9body_execEPv>
    800036dc:	008b8513          	addi	a0,s7,8
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	22c080e7          	jalr	556(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    800036e8:	0c051663          	bnez	a0,800037b4 <_Z20testConsumerProducerv+0x31c>
        debug_print("CPP API: Thread started\n");
    800036ec:	00006517          	auipc	a0,0x6
    800036f0:	23c50513          	addi	a0,a0,572 # 80009928 <_ZTV8Consumer+0x148>
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	ae4080e7          	jalr	-1308(ra) # 800021d8 <_Z11debug_printPKc>
    threadData[0].id = 0;
    800036fc:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    80003700:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    80003704:	00008797          	auipc	a5,0x8
    80003708:	34478793          	addi	a5,a5,836 # 8000ba48 <_ZL10waitForAll>
    8000370c:	0007b783          	ld	a5,0(a5)
    80003710:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003714:	02800513          	li	a0,40
    80003718:	fffff097          	auipc	ra,0xfffff
    8000371c:	950080e7          	jalr	-1712(ra) # 80002068 <_Znwm>
    80003720:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003724:	00053423          	sd	zero,8(a0)
    80003728:	00053823          	sd	zero,16(a0)
    8000372c:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003730:	00006797          	auipc	a5,0x6
    80003734:	07078793          	addi	a5,a5,112 # 800097a0 <_ZTV16ProducerKeyborad+0x10>
    80003738:	00f53023          	sd	a5,0(a0)
    8000373c:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003740:	00aab023          	sd	a0,0(s5)
        debug_print("CPP API: Starting thread\n");
    80003744:	00006517          	auipc	a0,0x6
    80003748:	1ac50513          	addi	a0,a0,428 # 800098f0 <_ZTV8Consumer+0x110>
    8000374c:	fffff097          	auipc	ra,0xfffff
    80003750:	a8c080e7          	jalr	-1396(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003754:	00006517          	auipc	a0,0x6
    80003758:	1bc50513          	addi	a0,a0,444 # 80009910 <_ZTV8Consumer+0x130>
    8000375c:	fffff097          	auipc	ra,0xfffff
    80003760:	a7c080e7          	jalr	-1412(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003764:	00048513          	mv	a0,s1
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	bb8080e7          	jalr	-1096(ra) # 80002320 <_Z11debug_printm>
        debug_print("\n");
    80003770:	00006517          	auipc	a0,0x6
    80003774:	c7050513          	addi	a0,a0,-912 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	a60080e7          	jalr	-1440(ra) # 800021d8 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003780:	00048613          	mv	a2,s1
    80003784:	ffffe597          	auipc	a1,0xffffe
    80003788:	d4c58593          	addi	a1,a1,-692 # 800014d0 <_ZN6Thread9body_execEPv>
    8000378c:	00848513          	addi	a0,s1,8
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	17c080e7          	jalr	380(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80003798:	02051263          	bnez	a0,800037bc <_Z20testConsumerProducerv+0x324>
        debug_print("CPP API: Thread started\n");
    8000379c:	00006517          	auipc	a0,0x6
    800037a0:	18c50513          	addi	a0,a0,396 # 80009928 <_ZTV8Consumer+0x148>
    800037a4:	fffff097          	auipc	ra,0xfffff
    800037a8:	a34080e7          	jalr	-1484(ra) # 800021d8 <_Z11debug_printPKc>
    for (int i = 1; i < threadNum; i++) {
    800037ac:	00100993          	li	s3,1
    800037b0:	0280006f          	j	800037d8 <_Z20testConsumerProducerv+0x340>
            myHandle = nullptr;
    800037b4:	000bb423          	sd	zero,8(s7)
            return -1;
    800037b8:	f45ff06f          	j	800036fc <_Z20testConsumerProducerv+0x264>
            myHandle = nullptr;
    800037bc:	0004b423          	sd	zero,8(s1)
            return -1;
    800037c0:	fedff06f          	j	800037ac <_Z20testConsumerProducerv+0x314>
        debug_print("CPP API: Thread started\n");
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	16450513          	addi	a0,a0,356 # 80009928 <_ZTV8Consumer+0x148>
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	a0c080e7          	jalr	-1524(ra) # 800021d8 <_Z11debug_printPKc>
    800037d4:	0019899b          	addiw	s3,s3,1
    800037d8:	0d49d263          	bge	s3,s4,8000389c <_Z20testConsumerProducerv+0x404>
        threadData[i].id = i;
    800037dc:	00199793          	slli	a5,s3,0x1
    800037e0:	013787b3          	add	a5,a5,s3
    800037e4:	00379913          	slli	s2,a5,0x3
    800037e8:	012c8933          	add	s2,s9,s2
    800037ec:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    800037f0:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    800037f4:	00008797          	auipc	a5,0x8
    800037f8:	25478793          	addi	a5,a5,596 # 8000ba48 <_ZL10waitForAll>
    800037fc:	0007b783          	ld	a5,0(a5)
    80003800:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    80003804:	02800513          	li	a0,40
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	860080e7          	jalr	-1952(ra) # 80002068 <_Znwm>
    80003810:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003814:	00053423          	sd	zero,8(a0)
    80003818:	00053823          	sd	zero,16(a0)
    8000381c:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003820:	00006797          	auipc	a5,0x6
    80003824:	fa878793          	addi	a5,a5,-88 # 800097c8 <_ZTV8Producer+0x10>
    80003828:	00f53023          	sd	a5,0(a0)
    8000382c:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    80003830:	00399793          	slli	a5,s3,0x3
    80003834:	00fa87b3          	add	a5,s5,a5
    80003838:	00a7b023          	sd	a0,0(a5)
        debug_print("CPP API: Starting thread\n");
    8000383c:	00006517          	auipc	a0,0x6
    80003840:	0b450513          	addi	a0,a0,180 # 800098f0 <_ZTV8Consumer+0x110>
    80003844:	fffff097          	auipc	ra,0xfffff
    80003848:	994080e7          	jalr	-1644(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    8000384c:	00006517          	auipc	a0,0x6
    80003850:	0c450513          	addi	a0,a0,196 # 80009910 <_ZTV8Consumer+0x130>
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	984080e7          	jalr	-1660(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)this);
    8000385c:	00048513          	mv	a0,s1
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	ac0080e7          	jalr	-1344(ra) # 80002320 <_Z11debug_printm>
        debug_print("\n");
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	b7850513          	addi	a0,a0,-1160 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	968080e7          	jalr	-1688(ra) # 800021d8 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003878:	00048613          	mv	a2,s1
    8000387c:	ffffe597          	auipc	a1,0xffffe
    80003880:	c5458593          	addi	a1,a1,-940 # 800014d0 <_ZN6Thread9body_execEPv>
    80003884:	00848513          	addi	a0,s1,8
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	084080e7          	jalr	132(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80003890:	f2050ae3          	beqz	a0,800037c4 <_Z20testConsumerProducerv+0x32c>
            myHandle = nullptr;
    80003894:	0004b423          	sd	zero,8(s1)
            return -1;
    80003898:	f3dff06f          	j	800037d4 <_Z20testConsumerProducerv+0x33c>
        thread_dispatch();
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	120080e7          	jalr	288(ra) # 800019bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800038a4:	00000493          	li	s1,0
    800038a8:	0080006f          	j	800038b0 <_Z20testConsumerProducerv+0x418>
    800038ac:	0014849b          	addiw	s1,s1,1
    800038b0:	029a4263          	blt	s4,s1,800038d4 <_Z20testConsumerProducerv+0x43c>
        waitForAll->wait();
    800038b4:	00008797          	auipc	a5,0x8
    800038b8:	19478793          	addi	a5,a5,404 # 8000ba48 <_ZL10waitForAll>
    800038bc:	0007b783          	ld	a5,0(a5)
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }
    int wait() {
        if (myHandle == nullptr) {
    800038c0:	0087b503          	ld	a0,8(a5)
    800038c4:	fe0504e3          	beqz	a0,800038ac <_Z20testConsumerProducerv+0x414>
            return -1;
        }
        return sem_wait(myHandle);
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	284080e7          	jalr	644(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    800038d0:	fddff06f          	j	800038ac <_Z20testConsumerProducerv+0x414>
    delete waitForAll;
    800038d4:	00008797          	auipc	a5,0x8
    800038d8:	17478793          	addi	a5,a5,372 # 8000ba48 <_ZL10waitForAll>
    800038dc:	0007b503          	ld	a0,0(a5)
    800038e0:	00050863          	beqz	a0,800038f0 <_Z20testConsumerProducerv+0x458>
    800038e4:	00053783          	ld	a5,0(a0)
    800038e8:	0087b783          	ld	a5,8(a5)
    800038ec:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800038f0:	00000493          	li	s1,0
    800038f4:	0080006f          	j	800038fc <_Z20testConsumerProducerv+0x464>
    for (int i = 0; i < threadNum; i++) {
    800038f8:	0014849b          	addiw	s1,s1,1
    800038fc:	0344d263          	bge	s1,s4,80003920 <_Z20testConsumerProducerv+0x488>
        delete producers[i];
    80003900:	00349793          	slli	a5,s1,0x3
    80003904:	00fa87b3          	add	a5,s5,a5
    80003908:	0007b503          	ld	a0,0(a5)
    8000390c:	fe0506e3          	beqz	a0,800038f8 <_Z20testConsumerProducerv+0x460>
    80003910:	00053783          	ld	a5,0(a0)
    80003914:	0087b783          	ld	a5,8(a5)
    80003918:	000780e7          	jalr	a5
    8000391c:	fddff06f          	j	800038f8 <_Z20testConsumerProducerv+0x460>
    delete consumer;
    80003920:	000b8a63          	beqz	s7,80003934 <_Z20testConsumerProducerv+0x49c>
    80003924:	000bb783          	ld	a5,0(s7)
    80003928:	0087b783          	ld	a5,8(a5)
    8000392c:	000b8513          	mv	a0,s7
    80003930:	000780e7          	jalr	a5
    delete buffer;
    80003934:	000b0e63          	beqz	s6,80003950 <_Z20testConsumerProducerv+0x4b8>
    80003938:	000b0513          	mv	a0,s6
    8000393c:	00003097          	auipc	ra,0x3
    80003940:	920080e7          	jalr	-1760(ra) # 8000625c <_ZN9BufferCPPD1Ev>
    80003944:	000b0513          	mv	a0,s6
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	7a0080e7          	jalr	1952(ra) # 800020e8 <_ZdlPv>
    80003950:	000c0113          	mv	sp,s8
}
    80003954:	f8040113          	addi	sp,s0,-128
    80003958:	07813083          	ld	ra,120(sp)
    8000395c:	07013403          	ld	s0,112(sp)
    80003960:	06813483          	ld	s1,104(sp)
    80003964:	06013903          	ld	s2,96(sp)
    80003968:	05813983          	ld	s3,88(sp)
    8000396c:	05013a03          	ld	s4,80(sp)
    80003970:	04813a83          	ld	s5,72(sp)
    80003974:	04013b03          	ld	s6,64(sp)
    80003978:	03813b83          	ld	s7,56(sp)
    8000397c:	03013c03          	ld	s8,48(sp)
    80003980:	02813c83          	ld	s9,40(sp)
    80003984:	08010113          	addi	sp,sp,128
    80003988:	00008067          	ret
    8000398c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003990:	000b0513          	mv	a0,s6
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	754080e7          	jalr	1876(ra) # 800020e8 <_ZdlPv>
    8000399c:	00048513          	mv	a0,s1
    800039a0:	00009097          	auipc	ra,0x9
    800039a4:	1f8080e7          	jalr	504(ra) # 8000cb98 <_Unwind_Resume>
    800039a8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800039ac:	00090513          	mv	a0,s2
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	738080e7          	jalr	1848(ra) # 800020e8 <_ZdlPv>
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00009097          	auipc	ra,0x9
    800039c0:	1dc080e7          	jalr	476(ra) # 8000cb98 <_Unwind_Resume>

00000000800039c4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00813423          	sd	s0,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
    800039d0:	00813403          	ld	s0,8(sp)
    800039d4:	01010113          	addi	sp,sp,16
    800039d8:	00008067          	ret

00000000800039dc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800039dc:	ff010113          	addi	sp,sp,-16
    800039e0:	00813423          	sd	s0,8(sp)
    800039e4:	01010413          	addi	s0,sp,16
    800039e8:	00813403          	ld	s0,8(sp)
    800039ec:	01010113          	addi	sp,sp,16
    800039f0:	00008067          	ret

00000000800039f4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800039f4:	ff010113          	addi	sp,sp,-16
    800039f8:	00813423          	sd	s0,8(sp)
    800039fc:	01010413          	addi	s0,sp,16
    80003a00:	00813403          	ld	s0,8(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <_ZN8ConsumerD0Ev>:
class Consumer : public Thread {
    80003a0c:	ff010113          	addi	sp,sp,-16
    80003a10:	00113423          	sd	ra,8(sp)
    80003a14:	00813023          	sd	s0,0(sp)
    80003a18:	01010413          	addi	s0,sp,16
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	6cc080e7          	jalr	1740(ra) # 800020e8 <_ZdlPv>
    80003a24:	00813083          	ld	ra,8(sp)
    80003a28:	00013403          	ld	s0,0(sp)
    80003a2c:	01010113          	addi	sp,sp,16
    80003a30:	00008067          	ret

0000000080003a34 <_ZN16ProducerKeyboradD0Ev>:
class ProducerKeyborad : public Thread {
    80003a34:	ff010113          	addi	sp,sp,-16
    80003a38:	00113423          	sd	ra,8(sp)
    80003a3c:	00813023          	sd	s0,0(sp)
    80003a40:	01010413          	addi	s0,sp,16
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	6a4080e7          	jalr	1700(ra) # 800020e8 <_ZdlPv>
    80003a4c:	00813083          	ld	ra,8(sp)
    80003a50:	00013403          	ld	s0,0(sp)
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret

0000000080003a5c <_ZN8ProducerD0Ev>:
class Producer : public Thread {
    80003a5c:	ff010113          	addi	sp,sp,-16
    80003a60:	00113423          	sd	ra,8(sp)
    80003a64:	00813023          	sd	s0,0(sp)
    80003a68:	01010413          	addi	s0,sp,16
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	67c080e7          	jalr	1660(ra) # 800020e8 <_ZdlPv>
    80003a74:	00813083          	ld	ra,8(sp)
    80003a78:	00013403          	ld	s0,0(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() {
    80003a84:	00006797          	auipc	a5,0x6
    80003a88:	cfc78793          	addi	a5,a5,-772 # 80009780 <_ZTV9Semaphore+0x10>
    80003a8c:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80003a90:	00853503          	ld	a0,8(a0)
    80003a94:	02050663          	beqz	a0,80003ac0 <_ZN9SemaphoreD1Ev+0x3c>
    virtual ~Semaphore() {
    80003a98:	ff010113          	addi	sp,sp,-16
    80003a9c:	00113423          	sd	ra,8(sp)
    80003aa0:	00813023          	sd	s0,0(sp)
    80003aa4:	01010413          	addi	s0,sp,16
            sem_close(myHandle);
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	038080e7          	jalr	56(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    }
    80003ab0:	00813083          	ld	ra,8(sp)
    80003ab4:	00013403          	ld	s0,0(sp)
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	00008067          	ret
    80003ac0:	00008067          	ret

0000000080003ac4 <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore() {
    80003ac4:	fe010113          	addi	sp,sp,-32
    80003ac8:	00113c23          	sd	ra,24(sp)
    80003acc:	00813823          	sd	s0,16(sp)
    80003ad0:	00913423          	sd	s1,8(sp)
    80003ad4:	02010413          	addi	s0,sp,32
    80003ad8:	00050493          	mv	s1,a0
    80003adc:	00006797          	auipc	a5,0x6
    80003ae0:	ca478793          	addi	a5,a5,-860 # 80009780 <_ZTV9Semaphore+0x10>
    80003ae4:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80003ae8:	00853503          	ld	a0,8(a0)
    80003aec:	00050663          	beqz	a0,80003af8 <_ZN9SemaphoreD0Ev+0x34>
            sem_close(myHandle);
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	ff0080e7          	jalr	-16(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    }
    80003af8:	00048513          	mv	a0,s1
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	5ec080e7          	jalr	1516(ra) # 800020e8 <_ZdlPv>
    80003b04:	01813083          	ld	ra,24(sp)
    80003b08:	01013403          	ld	s0,16(sp)
    80003b0c:	00813483          	ld	s1,8(sp)
    80003b10:	02010113          	addi	sp,sp,32
    80003b14:	00008067          	ret

0000000080003b18 <_ZN8Consumer3runEv>:
    void run() override {
    80003b18:	fd010113          	addi	sp,sp,-48
    80003b1c:	02113423          	sd	ra,40(sp)
    80003b20:	02813023          	sd	s0,32(sp)
    80003b24:	00913c23          	sd	s1,24(sp)
    80003b28:	01213823          	sd	s2,16(sp)
    80003b2c:	01313423          	sd	s3,8(sp)
    80003b30:	03010413          	addi	s0,sp,48
    80003b34:	00050913          	mv	s2,a0
        int i = 0;
    80003b38:	00000993          	li	s3,0
    80003b3c:	0100006f          	j	80003b4c <_ZN8Consumer3runEv+0x34>
};

class Console {
    public:
    static char getc() { return __getc(); };
    static void putc(char c) { __putc(c); };
    80003b40:	00a00513          	li	a0,10
    80003b44:	00005097          	auipc	ra,0x5
    80003b48:	8d8080e7          	jalr	-1832(ra) # 8000841c <__putc>
        while (!threadEnd) {
    80003b4c:	00008797          	auipc	a5,0x8
    80003b50:	ef478793          	addi	a5,a5,-268 # 8000ba40 <_ZL9threadEnd>
    80003b54:	0007a783          	lw	a5,0(a5)
    80003b58:	0007879b          	sext.w	a5,a5
    80003b5c:	02079c63          	bnez	a5,80003b94 <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    80003b60:	02093783          	ld	a5,32(s2)
    80003b64:	0087b503          	ld	a0,8(a5)
    80003b68:	00002097          	auipc	ra,0x2
    80003b6c:	5a0080e7          	jalr	1440(ra) # 80006108 <_ZN9BufferCPP3getEv>
            i++;
    80003b70:	0019849b          	addiw	s1,s3,1
    80003b74:	0004899b          	sext.w	s3,s1
    80003b78:	0ff57513          	andi	a0,a0,255
    80003b7c:	00005097          	auipc	ra,0x5
    80003b80:	8a0080e7          	jalr	-1888(ra) # 8000841c <__putc>
            if (i % 80 == 0) {
    80003b84:	05000793          	li	a5,80
    80003b88:	02f4e4bb          	remw	s1,s1,a5
    80003b8c:	fc0490e3          	bnez	s1,80003b4c <_ZN8Consumer3runEv+0x34>
    80003b90:	fb1ff06f          	j	80003b40 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    80003b94:	02093783          	ld	a5,32(s2)
    80003b98:	0087b503          	ld	a0,8(a5)
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	618080e7          	jalr	1560(ra) # 800061b4 <_ZN9BufferCPP6getCntEv>
    80003ba4:	02a05263          	blez	a0,80003bc8 <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    80003ba8:	02093783          	ld	a5,32(s2)
    80003bac:	0087b503          	ld	a0,8(a5)
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	558080e7          	jalr	1368(ra) # 80006108 <_ZN9BufferCPP3getEv>
    80003bb8:	0ff57513          	andi	a0,a0,255
    80003bbc:	00005097          	auipc	ra,0x5
    80003bc0:	860080e7          	jalr	-1952(ra) # 8000841c <__putc>
    80003bc4:	fd1ff06f          	j	80003b94 <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    80003bc8:	02093783          	ld	a5,32(s2)
    80003bcc:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003bd0:	0087b503          	ld	a0,8(a5)
    80003bd4:	00050663          	beqz	a0,80003be0 <_ZN8Consumer3runEv+0xc8>
        return sem_signal(myHandle);
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	fc4080e7          	jalr	-60(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    }
    80003be0:	02813083          	ld	ra,40(sp)
    80003be4:	02013403          	ld	s0,32(sp)
    80003be8:	01813483          	ld	s1,24(sp)
    80003bec:	01013903          	ld	s2,16(sp)
    80003bf0:	00813983          	ld	s3,8(sp)
    80003bf4:	03010113          	addi	sp,sp,48
    80003bf8:	00008067          	ret

0000000080003bfc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003bfc:	fe010113          	addi	sp,sp,-32
    80003c00:	00113c23          	sd	ra,24(sp)
    80003c04:	00813823          	sd	s0,16(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	02010413          	addi	s0,sp,32
    80003c10:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003c14:	ffffe097          	auipc	ra,0xffffe
    80003c18:	028080e7          	jalr	40(ra) # 80001c3c <_Z4getcv>
    80003c1c:	0005059b          	sext.w	a1,a0
    80003c20:	01b00793          	li	a5,27
    80003c24:	00f58c63          	beq	a1,a5,80003c3c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003c28:	0204b783          	ld	a5,32(s1)
    80003c2c:	0087b503          	ld	a0,8(a5)
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	428080e7          	jalr	1064(ra) # 80006058 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003c38:	fddff06f          	j	80003c14 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003c3c:	00100793          	li	a5,1
    80003c40:	00008717          	auipc	a4,0x8
    80003c44:	e0f72023          	sw	a5,-512(a4) # 8000ba40 <_ZL9threadEnd>
        td->buffer->put('!');
    80003c48:	0204b783          	ld	a5,32(s1)
    80003c4c:	02100593          	li	a1,33
    80003c50:	0087b503          	ld	a0,8(a5)
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	404080e7          	jalr	1028(ra) # 80006058 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003c5c:	0204b783          	ld	a5,32(s1)
    80003c60:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003c64:	0087b503          	ld	a0,8(a5)
    80003c68:	00050663          	beqz	a0,80003c74 <_ZN16ProducerKeyborad3runEv+0x78>
        return sem_signal(myHandle);
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	f30080e7          	jalr	-208(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    }
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	00813483          	ld	s1,8(sp)
    80003c80:	02010113          	addi	sp,sp,32
    80003c84:	00008067          	ret

0000000080003c88 <_ZN8Producer3runEv>:
    void run() override {
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	02010413          	addi	s0,sp,32
    80003c9c:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80003ca0:	00008797          	auipc	a5,0x8
    80003ca4:	da078793          	addi	a5,a5,-608 # 8000ba40 <_ZL9threadEnd>
    80003ca8:	0007a783          	lw	a5,0(a5)
    80003cac:	0007879b          	sext.w	a5,a5
    80003cb0:	02079063          	bnez	a5,80003cd0 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    80003cb4:	0204b783          	ld	a5,32(s1)
    80003cb8:	0007a583          	lw	a1,0(a5)
    80003cbc:	0305859b          	addiw	a1,a1,48
    80003cc0:	0087b503          	ld	a0,8(a5)
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	394080e7          	jalr	916(ra) # 80006058 <_ZN9BufferCPP3putEi>
        return 0;
    80003ccc:	fd5ff06f          	j	80003ca0 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80003cd0:	0204b783          	ld	a5,32(s1)
    80003cd4:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003cd8:	0087b503          	ld	a0,8(a5)
    80003cdc:	00050663          	beqz	a0,80003ce8 <_ZN8Producer3runEv+0x60>
        return sem_signal(myHandle);
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	ebc080e7          	jalr	-324(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    }
    80003ce8:	01813083          	ld	ra,24(sp)
    80003cec:	01013403          	ld	s0,16(sp)
    80003cf0:	00813483          	ld	s1,8(sp)
    80003cf4:	02010113          	addi	sp,sp,32
    80003cf8:	00008067          	ret

0000000080003cfc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003cfc:	fe010113          	addi	sp,sp,-32
    80003d00:	00113c23          	sd	ra,24(sp)
    80003d04:	00813823          	sd	s0,16(sp)
    80003d08:	00913423          	sd	s1,8(sp)
    80003d0c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80003d10:	00006517          	auipc	a0,0x6
    80003d14:	c5850513          	addi	a0,a0,-936 # 80009968 <_ZTV8Consumer+0x188>
    80003d18:	00002097          	auipc	ra,0x2
    80003d1c:	99c080e7          	jalr	-1636(ra) # 800056b4 <_Z11printStringPKc>
    int test = getc() - '0';
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	f1c080e7          	jalr	-228(ra) # 80001c3c <_Z4getcv>
    80003d28:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	f10080e7          	jalr	-240(ra) # 80001c3c <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003d34:	00700793          	li	a5,7
    80003d38:	1097e263          	bltu	a5,s1,80003e3c <_Z8userMainv+0x140>
    80003d3c:	00249493          	slli	s1,s1,0x2
    80003d40:	00006717          	auipc	a4,0x6
    80003d44:	c0470713          	addi	a4,a4,-1020 # 80009944 <_ZTV8Consumer+0x164>
    80003d48:	00e484b3          	add	s1,s1,a4
    80003d4c:	0004a783          	lw	a5,0(s1)
    80003d50:	00e787b3          	add	a5,a5,a4
    80003d54:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	e70080e7          	jalr	-400(ra) # 80004bc8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003d60:	00006517          	auipc	a0,0x6
    80003d64:	c2850513          	addi	a0,a0,-984 # 80009988 <_ZTV8Consumer+0x1a8>
    80003d68:	00002097          	auipc	ra,0x2
    80003d6c:	94c080e7          	jalr	-1716(ra) # 800056b4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003d70:	01813083          	ld	ra,24(sp)
    80003d74:	01013403          	ld	s0,16(sp)
    80003d78:	00813483          	ld	s1,8(sp)
    80003d7c:	02010113          	addi	sp,sp,32
    80003d80:	00008067          	ret
            Threads_CPP_API_test();
    80003d84:	00000097          	auipc	ra,0x0
    80003d88:	59c080e7          	jalr	1436(ra) # 80004320 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003d8c:	00006517          	auipc	a0,0x6
    80003d90:	c3c50513          	addi	a0,a0,-964 # 800099c8 <_ZTV8Consumer+0x1e8>
    80003d94:	00002097          	auipc	ra,0x2
    80003d98:	920080e7          	jalr	-1760(ra) # 800056b4 <_Z11printStringPKc>
            break;
    80003d9c:	fd5ff06f          	j	80003d70 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80003da0:	00002097          	auipc	ra,0x2
    80003da4:	e20080e7          	jalr	-480(ra) # 80005bc0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80003da8:	00006517          	auipc	a0,0x6
    80003dac:	c6050513          	addi	a0,a0,-928 # 80009a08 <_ZTV8Consumer+0x228>
    80003db0:	00002097          	auipc	ra,0x2
    80003db4:	904080e7          	jalr	-1788(ra) # 800056b4 <_Z11printStringPKc>
            break;
    80003db8:	fb9ff06f          	j	80003d70 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	19c080e7          	jalr	412(ra) # 80004f58 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80003dc4:	00006517          	auipc	a0,0x6
    80003dc8:	c9450513          	addi	a0,a0,-876 # 80009a58 <_ZTV8Consumer+0x278>
    80003dcc:	00002097          	auipc	ra,0x2
    80003dd0:	8e8080e7          	jalr	-1816(ra) # 800056b4 <_Z11printStringPKc>
            break;
    80003dd4:	f9dff06f          	j	80003d70 <_Z8userMainv+0x74>
            testSleeping();
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	844080e7          	jalr	-1980(ra) # 8000561c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80003de0:	00006517          	auipc	a0,0x6
    80003de4:	cd050513          	addi	a0,a0,-816 # 80009ab0 <_ZTV8Consumer+0x2d0>
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	8cc080e7          	jalr	-1844(ra) # 800056b4 <_Z11printStringPKc>
            break;
    80003df0:	f81ff06f          	j	80003d70 <_Z8userMainv+0x74>
            testConsumerProducer();
    80003df4:	fffff097          	auipc	ra,0xfffff
    80003df8:	6a4080e7          	jalr	1700(ra) # 80003498 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80003dfc:	00006517          	auipc	a0,0x6
    80003e00:	ce450513          	addi	a0,a0,-796 # 80009ae0 <_ZTV8Consumer+0x300>
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	8b0080e7          	jalr	-1872(ra) # 800056b4 <_Z11printStringPKc>
            break;
    80003e0c:	f65ff06f          	j	80003d70 <_Z8userMainv+0x74>
            System_Mode_test();
    80003e10:	fffff097          	auipc	ra,0xfffff
    80003e14:	24c080e7          	jalr	588(ra) # 8000305c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003e18:	00006517          	auipc	a0,0x6
    80003e1c:	d0850513          	addi	a0,a0,-760 # 80009b20 <_ZTV8Consumer+0x340>
    80003e20:	00002097          	auipc	ra,0x2
    80003e24:	894080e7          	jalr	-1900(ra) # 800056b4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003e28:	00006517          	auipc	a0,0x6
    80003e2c:	d1850513          	addi	a0,a0,-744 # 80009b40 <_ZTV8Consumer+0x360>
    80003e30:	00002097          	auipc	ra,0x2
    80003e34:	884080e7          	jalr	-1916(ra) # 800056b4 <_Z11printStringPKc>
            break;
    80003e38:	f39ff06f          	j	80003d70 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80003e3c:	00006517          	auipc	a0,0x6
    80003e40:	d5c50513          	addi	a0,a0,-676 # 80009b98 <_ZTV8Consumer+0x3b8>
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	870080e7          	jalr	-1936(ra) # 800056b4 <_Z11printStringPKc>
    80003e4c:	f25ff06f          	j	80003d70 <_Z8userMainv+0x74>

0000000080003e50 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80003e50:	00100793          	li	a5,1
    80003e54:	06a7f863          	bgeu	a5,a0,80003ec4 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	01213023          	sd	s2,0(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    80003e70:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80003e74:	00a00793          	li	a5,10
    80003e78:	02f577b3          	remu	a5,a0,a5
    80003e7c:	02078e63          	beqz	a5,80003eb8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e80:	fff48513          	addi	a0,s1,-1
    80003e84:	00000097          	auipc	ra,0x0
    80003e88:	fcc080e7          	jalr	-52(ra) # 80003e50 <_ZL9fibonaccim>
    80003e8c:	00050913          	mv	s2,a0
    80003e90:	ffe48513          	addi	a0,s1,-2
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	fbc080e7          	jalr	-68(ra) # 80003e50 <_ZL9fibonaccim>
    80003e9c:	00a90533          	add	a0,s2,a0
}
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	00013903          	ld	s2,0(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	b04080e7          	jalr	-1276(ra) # 800019bc <_Z15thread_dispatchv>
    80003ec0:	fc1ff06f          	j	80003e80 <_ZL9fibonaccim+0x30>
}
    80003ec4:	00008067          	ret

0000000080003ec8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003ec8:	fe010113          	addi	sp,sp,-32
    80003ecc:	00113c23          	sd	ra,24(sp)
    80003ed0:	00813823          	sd	s0,16(sp)
    80003ed4:	00913423          	sd	s1,8(sp)
    80003ed8:	01213023          	sd	s2,0(sp)
    80003edc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003ee0:	00000913          	li	s2,0
    80003ee4:	0300006f          	j	80003f14 <_ZN7WorkerA11workerBodyAEPv+0x4c>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003ee8:	00178793          	addi	a5,a5,1
    80003eec:	01d00713          	li	a4,29
    80003ef0:	fef77ce3          	bgeu	a4,a5,80003ee8 <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	ac8080e7          	jalr	-1336(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003efc:	00148493          	addi	s1,s1,1
    80003f00:	00900793          	li	a5,9
    80003f04:	0097e663          	bltu	a5,s1,80003f10 <_ZN7WorkerA11workerBodyAEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003f08:	00000793          	li	a5,0
    80003f0c:	fe1ff06f          	j	80003eec <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80003f10:	00190913          	addi	s2,s2,1
    80003f14:	00900793          	li	a5,9
    80003f18:	0527e063          	bltu	a5,s2,80003f58 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80003f1c:	00005517          	auipc	a0,0x5
    80003f20:	7d450513          	addi	a0,a0,2004 # 800096f0 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	790080e7          	jalr	1936(ra) # 800056b4 <_Z11printStringPKc>
    80003f2c:	00000613          	li	a2,0
    80003f30:	00a00593          	li	a1,10
    80003f34:	0009051b          	sext.w	a0,s2
    80003f38:	00002097          	auipc	ra,0x2
    80003f3c:	928080e7          	jalr	-1752(ra) # 80005860 <_Z8printIntiii>
    80003f40:	00005517          	auipc	a0,0x5
    80003f44:	4a050513          	addi	a0,a0,1184 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	76c080e7          	jalr	1900(ra) # 800056b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003f50:	00000493          	li	s1,0
    80003f54:	fadff06f          	j	80003f00 <_ZN7WorkerA11workerBodyAEPv+0x38>
        }
    }
    printString("A finished!\n");
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	77050513          	addi	a0,a0,1904 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80003f60:	00001097          	auipc	ra,0x1
    80003f64:	754080e7          	jalr	1876(ra) # 800056b4 <_Z11printStringPKc>
    finishedA = true;
    80003f68:	00100793          	li	a5,1
    80003f6c:	00008717          	auipc	a4,0x8
    80003f70:	aef703a3          	sb	a5,-1305(a4) # 8000ba53 <_ZL9finishedA>
}
    80003f74:	01813083          	ld	ra,24(sp)
    80003f78:	01013403          	ld	s0,16(sp)
    80003f7c:	00813483          	ld	s1,8(sp)
    80003f80:	00013903          	ld	s2,0(sp)
    80003f84:	02010113          	addi	sp,sp,32
    80003f88:	00008067          	ret

0000000080003f8c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003f8c:	fe010113          	addi	sp,sp,-32
    80003f90:	00113c23          	sd	ra,24(sp)
    80003f94:	00813823          	sd	s0,16(sp)
    80003f98:	00913423          	sd	s1,8(sp)
    80003f9c:	01213023          	sd	s2,0(sp)
    80003fa0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003fa4:	00000913          	li	s2,0
    80003fa8:	0300006f          	j	80003fd8 <_ZN7WorkerB11workerBodyBEPv+0x4c>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003fac:	00178793          	addi	a5,a5,1
    80003fb0:	01d00713          	li	a4,29
    80003fb4:	fef77ce3          	bgeu	a4,a5,80003fac <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	a04080e7          	jalr	-1532(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003fc0:	00148493          	addi	s1,s1,1
    80003fc4:	00900793          	li	a5,9
    80003fc8:	0097e663          	bltu	a5,s1,80003fd4 <_ZN7WorkerB11workerBodyBEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003fcc:	00000793          	li	a5,0
    80003fd0:	fe1ff06f          	j	80003fb0 <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80003fd4:	00190913          	addi	s2,s2,1
    80003fd8:	00f00793          	li	a5,15
    80003fdc:	0527e063          	bltu	a5,s2,8000401c <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80003fe0:	00005517          	auipc	a0,0x5
    80003fe4:	6f850513          	addi	a0,a0,1784 # 800096d8 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	6cc080e7          	jalr	1740(ra) # 800056b4 <_Z11printStringPKc>
    80003ff0:	00000613          	li	a2,0
    80003ff4:	00a00593          	li	a1,10
    80003ff8:	0009051b          	sext.w	a0,s2
    80003ffc:	00002097          	auipc	ra,0x2
    80004000:	864080e7          	jalr	-1948(ra) # 80005860 <_Z8printIntiii>
    80004004:	00005517          	auipc	a0,0x5
    80004008:	3dc50513          	addi	a0,a0,988 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	6a8080e7          	jalr	1704(ra) # 800056b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004014:	00000493          	li	s1,0
    80004018:	fadff06f          	j	80003fc4 <_ZN7WorkerB11workerBodyBEPv+0x38>
        }
    }
    printString("B finished!\n");
    8000401c:	00005517          	auipc	a0,0x5
    80004020:	6c450513          	addi	a0,a0,1732 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80004024:	00001097          	auipc	ra,0x1
    80004028:	690080e7          	jalr	1680(ra) # 800056b4 <_Z11printStringPKc>
    finishedB = true;
    8000402c:	00100793          	li	a5,1
    80004030:	00008717          	auipc	a4,0x8
    80004034:	a2f70123          	sb	a5,-1502(a4) # 8000ba52 <_ZL9finishedB>
    thread_dispatch();
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	984080e7          	jalr	-1660(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	00813483          	ld	s1,8(sp)
    8000404c:	00013903          	ld	s2,0(sp)
    80004050:	02010113          	addi	sp,sp,32
    80004054:	00008067          	ret

0000000080004058 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004058:	fe010113          	addi	sp,sp,-32
    8000405c:	00113c23          	sd	ra,24(sp)
    80004060:	00813823          	sd	s0,16(sp)
    80004064:	00913423          	sd	s1,8(sp)
    80004068:	01213023          	sd	s2,0(sp)
    8000406c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004070:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80004074:	00200793          	li	a5,2
    80004078:	0497e263          	bltu	a5,s1,800040bc <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    8000407c:	00005517          	auipc	a0,0x5
    80004080:	61c50513          	addi	a0,a0,1564 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80004084:	00001097          	auipc	ra,0x1
    80004088:	630080e7          	jalr	1584(ra) # 800056b4 <_Z11printStringPKc>
    8000408c:	00000613          	li	a2,0
    80004090:	00a00593          	li	a1,10
    80004094:	00048513          	mv	a0,s1
    80004098:	00001097          	auipc	ra,0x1
    8000409c:	7c8080e7          	jalr	1992(ra) # 80005860 <_Z8printIntiii>
    800040a0:	00005517          	auipc	a0,0x5
    800040a4:	34050513          	addi	a0,a0,832 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	60c080e7          	jalr	1548(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800040b0:	0014849b          	addiw	s1,s1,1
    800040b4:	0ff4f493          	andi	s1,s1,255
    800040b8:	fbdff06f          	j	80004074 <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    800040bc:	00005517          	auipc	a0,0x5
    800040c0:	5e450513          	addi	a0,a0,1508 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x368>
    800040c4:	00001097          	auipc	ra,0x1
    800040c8:	5f0080e7          	jalr	1520(ra) # 800056b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800040cc:	00700313          	li	t1,7
    thread_dispatch();
    800040d0:	ffffe097          	auipc	ra,0xffffe
    800040d4:	8ec080e7          	jalr	-1812(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800040d8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800040dc:	00005517          	auipc	a0,0x5
    800040e0:	5d450513          	addi	a0,a0,1492 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x378>
    800040e4:	00001097          	auipc	ra,0x1
    800040e8:	5d0080e7          	jalr	1488(ra) # 800056b4 <_Z11printStringPKc>
    800040ec:	00000613          	li	a2,0
    800040f0:	00a00593          	li	a1,10
    800040f4:	0009051b          	sext.w	a0,s2
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	768080e7          	jalr	1896(ra) # 80005860 <_Z8printIntiii>
    80004100:	00005517          	auipc	a0,0x5
    80004104:	2e050513          	addi	a0,a0,736 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004108:	00001097          	auipc	ra,0x1
    8000410c:	5ac080e7          	jalr	1452(ra) # 800056b4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004110:	00c00513          	li	a0,12
    80004114:	00000097          	auipc	ra,0x0
    80004118:	d3c080e7          	jalr	-708(ra) # 80003e50 <_ZL9fibonaccim>
    8000411c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004120:	00005517          	auipc	a0,0x5
    80004124:	59850513          	addi	a0,a0,1432 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80004128:	00001097          	auipc	ra,0x1
    8000412c:	58c080e7          	jalr	1420(ra) # 800056b4 <_Z11printStringPKc>
    80004130:	00000613          	li	a2,0
    80004134:	00a00593          	li	a1,10
    80004138:	0009051b          	sext.w	a0,s2
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	724080e7          	jalr	1828(ra) # 80005860 <_Z8printIntiii>
    80004144:	00005517          	auipc	a0,0x5
    80004148:	29c50513          	addi	a0,a0,668 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000414c:	00001097          	auipc	ra,0x1
    80004150:	568080e7          	jalr	1384(ra) # 800056b4 <_Z11printStringPKc>

    for (; i < 6; i++) {
    80004154:	00500793          	li	a5,5
    80004158:	0497e263          	bltu	a5,s1,8000419c <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    8000415c:	00005517          	auipc	a0,0x5
    80004160:	53c50513          	addi	a0,a0,1340 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80004164:	00001097          	auipc	ra,0x1
    80004168:	550080e7          	jalr	1360(ra) # 800056b4 <_Z11printStringPKc>
    8000416c:	00000613          	li	a2,0
    80004170:	00a00593          	li	a1,10
    80004174:	00048513          	mv	a0,s1
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	6e8080e7          	jalr	1768(ra) # 80005860 <_Z8printIntiii>
    80004180:	00005517          	auipc	a0,0x5
    80004184:	26050513          	addi	a0,a0,608 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	52c080e7          	jalr	1324(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004190:	0014849b          	addiw	s1,s1,1
    80004194:	0ff4f493          	andi	s1,s1,255
    80004198:	fbdff06f          	j	80004154 <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    8000419c:	00005517          	auipc	a0,0x5
    800041a0:	52c50513          	addi	a0,a0,1324 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    800041a4:	00001097          	auipc	ra,0x1
    800041a8:	510080e7          	jalr	1296(ra) # 800056b4 <_Z11printStringPKc>
    finishedC = true;
    800041ac:	00100793          	li	a5,1
    800041b0:	00008717          	auipc	a4,0x8
    800041b4:	8af700a3          	sb	a5,-1887(a4) # 8000ba51 <_ZL9finishedC>
    thread_dispatch();
    800041b8:	ffffe097          	auipc	ra,0xffffe
    800041bc:	804080e7          	jalr	-2044(ra) # 800019bc <_Z15thread_dispatchv>
}
    800041c0:	01813083          	ld	ra,24(sp)
    800041c4:	01013403          	ld	s0,16(sp)
    800041c8:	00813483          	ld	s1,8(sp)
    800041cc:	00013903          	ld	s2,0(sp)
    800041d0:	02010113          	addi	sp,sp,32
    800041d4:	00008067          	ret

00000000800041d8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800041d8:	fe010113          	addi	sp,sp,-32
    800041dc:	00113c23          	sd	ra,24(sp)
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00913423          	sd	s1,8(sp)
    800041e8:	01213023          	sd	s2,0(sp)
    800041ec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800041f0:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    800041f4:	00c00793          	li	a5,12
    800041f8:	0497e263          	bltu	a5,s1,8000423c <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    800041fc:	00005517          	auipc	a0,0x5
    80004200:	46450513          	addi	a0,a0,1124 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80004204:	00001097          	auipc	ra,0x1
    80004208:	4b0080e7          	jalr	1200(ra) # 800056b4 <_Z11printStringPKc>
    8000420c:	00000613          	li	a2,0
    80004210:	00a00593          	li	a1,10
    80004214:	00048513          	mv	a0,s1
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	648080e7          	jalr	1608(ra) # 80005860 <_Z8printIntiii>
    80004220:	00005517          	auipc	a0,0x5
    80004224:	1c050513          	addi	a0,a0,448 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004228:	00001097          	auipc	ra,0x1
    8000422c:	48c080e7          	jalr	1164(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004230:	0014849b          	addiw	s1,s1,1
    80004234:	0ff4f493          	andi	s1,s1,255
    80004238:	fbdff06f          	j	800041f4 <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    8000423c:	00005517          	auipc	a0,0x5
    80004240:	42c50513          	addi	a0,a0,1068 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x330>
    80004244:	00001097          	auipc	ra,0x1
    80004248:	470080e7          	jalr	1136(ra) # 800056b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000424c:	00500313          	li	t1,5
    thread_dispatch();
    80004250:	ffffd097          	auipc	ra,0xffffd
    80004254:	76c080e7          	jalr	1900(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004258:	01000513          	li	a0,16
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	bf4080e7          	jalr	-1036(ra) # 80003e50 <_ZL9fibonaccim>
    80004264:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004268:	00005517          	auipc	a0,0x5
    8000426c:	41050513          	addi	a0,a0,1040 # 80009678 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004270:	00001097          	auipc	ra,0x1
    80004274:	444080e7          	jalr	1092(ra) # 800056b4 <_Z11printStringPKc>
    80004278:	00000613          	li	a2,0
    8000427c:	00a00593          	li	a1,10
    80004280:	0009051b          	sext.w	a0,s2
    80004284:	00001097          	auipc	ra,0x1
    80004288:	5dc080e7          	jalr	1500(ra) # 80005860 <_Z8printIntiii>
    8000428c:	00005517          	auipc	a0,0x5
    80004290:	15450513          	addi	a0,a0,340 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004294:	00001097          	auipc	ra,0x1
    80004298:	420080e7          	jalr	1056(ra) # 800056b4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    8000429c:	00f00793          	li	a5,15
    800042a0:	0497e263          	bltu	a5,s1,800042e4 <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    800042a4:	00005517          	auipc	a0,0x5
    800042a8:	3bc50513          	addi	a0,a0,956 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x328>
    800042ac:	00001097          	auipc	ra,0x1
    800042b0:	408080e7          	jalr	1032(ra) # 800056b4 <_Z11printStringPKc>
    800042b4:	00000613          	li	a2,0
    800042b8:	00a00593          	li	a1,10
    800042bc:	00048513          	mv	a0,s1
    800042c0:	00001097          	auipc	ra,0x1
    800042c4:	5a0080e7          	jalr	1440(ra) # 80005860 <_Z8printIntiii>
    800042c8:	00005517          	auipc	a0,0x5
    800042cc:	11850513          	addi	a0,a0,280 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800042d0:	00001097          	auipc	ra,0x1
    800042d4:	3e4080e7          	jalr	996(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800042d8:	0014849b          	addiw	s1,s1,1
    800042dc:	0ff4f493          	andi	s1,s1,255
    800042e0:	fbdff06f          	j	8000429c <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    800042e4:	00005517          	auipc	a0,0x5
    800042e8:	3a450513          	addi	a0,a0,932 # 80009688 <_ZZ24debug_print_internal_intmE6digits+0x350>
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	3c8080e7          	jalr	968(ra) # 800056b4 <_Z11printStringPKc>
    finishedD = true;
    800042f4:	00100793          	li	a5,1
    800042f8:	00007717          	auipc	a4,0x7
    800042fc:	74f70c23          	sb	a5,1880(a4) # 8000ba50 <_ZL9finishedD>
    thread_dispatch();
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	6bc080e7          	jalr	1724(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	00013903          	ld	s2,0(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret

0000000080004320 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004320:	fc010113          	addi	sp,sp,-64
    80004324:	02113c23          	sd	ra,56(sp)
    80004328:	02813823          	sd	s0,48(sp)
    8000432c:	02913423          	sd	s1,40(sp)
    80004330:	03213023          	sd	s2,32(sp)
    80004334:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004338:	02000513          	li	a0,32
    8000433c:	ffffe097          	auipc	ra,0xffffe
    80004340:	d2c080e7          	jalr	-724(ra) # 80002068 <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004344:	00053423          	sd	zero,8(a0)
    80004348:	00053823          	sd	zero,16(a0)
    8000434c:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    80004350:	00006797          	auipc	a5,0x6
    80004354:	88078793          	addi	a5,a5,-1920 # 80009bd0 <_ZTV7WorkerA+0x10>
    80004358:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    8000435c:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80004360:	00005517          	auipc	a0,0x5
    80004364:	39850513          	addi	a0,a0,920 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    80004368:	00001097          	auipc	ra,0x1
    8000436c:	34c080e7          	jalr	844(ra) # 800056b4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004370:	02000513          	li	a0,32
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	cf4080e7          	jalr	-780(ra) # 80002068 <_Znwm>
    8000437c:	00053423          	sd	zero,8(a0)
    80004380:	00053823          	sd	zero,16(a0)
    80004384:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    80004388:	00006797          	auipc	a5,0x6
    8000438c:	87078793          	addi	a5,a5,-1936 # 80009bf8 <_ZTV7WorkerB+0x10>
    80004390:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80004394:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80004398:	00005517          	auipc	a0,0x5
    8000439c:	37850513          	addi	a0,a0,888 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	314080e7          	jalr	788(ra) # 800056b4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800043a8:	02000513          	li	a0,32
    800043ac:	ffffe097          	auipc	ra,0xffffe
    800043b0:	cbc080e7          	jalr	-836(ra) # 80002068 <_Znwm>
    800043b4:	00053423          	sd	zero,8(a0)
    800043b8:	00053823          	sd	zero,16(a0)
    800043bc:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    800043c0:	00006797          	auipc	a5,0x6
    800043c4:	86078793          	addi	a5,a5,-1952 # 80009c20 <_ZTV7WorkerC+0x10>
    800043c8:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    800043cc:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800043d0:	00005517          	auipc	a0,0x5
    800043d4:	35850513          	addi	a0,a0,856 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    800043d8:	00001097          	auipc	ra,0x1
    800043dc:	2dc080e7          	jalr	732(ra) # 800056b4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800043e0:	02000513          	li	a0,32
    800043e4:	ffffe097          	auipc	ra,0xffffe
    800043e8:	c84080e7          	jalr	-892(ra) # 80002068 <_Znwm>
    800043ec:	00053423          	sd	zero,8(a0)
    800043f0:	00053823          	sd	zero,16(a0)
    800043f4:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    800043f8:	00006797          	auipc	a5,0x6
    800043fc:	85078793          	addi	a5,a5,-1968 # 80009c48 <_ZTV7WorkerD+0x10>
    80004400:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    80004404:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80004408:	00005517          	auipc	a0,0x5
    8000440c:	33850513          	addi	a0,a0,824 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80004410:	00001097          	auipc	ra,0x1
    80004414:	2a4080e7          	jalr	676(ra) # 800056b4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004418:	00000493          	li	s1,0
    8000441c:	00c0006f          	j	80004428 <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    80004420:	00093423          	sd	zero,8(s2)
    80004424:	0014849b          	addiw	s1,s1,1
    80004428:	00300793          	li	a5,3
    8000442c:	0897c463          	blt	a5,s1,800044b4 <_Z20Threads_CPP_API_testv+0x194>
        threads[i]->start();
    80004430:	00349793          	slli	a5,s1,0x3
    80004434:	fe040713          	addi	a4,s0,-32
    80004438:	00f707b3          	add	a5,a4,a5
    8000443c:	fe07b903          	ld	s2,-32(a5)
        debug_print("CPP API: Starting thread\n");
    80004440:	00005517          	auipc	a0,0x5
    80004444:	4b050513          	addi	a0,a0,1200 # 800098f0 <_ZTV8Consumer+0x110>
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	d90080e7          	jalr	-624(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80004450:	00005517          	auipc	a0,0x5
    80004454:	4c050513          	addi	a0,a0,1216 # 80009910 <_ZTV8Consumer+0x130>
    80004458:	ffffe097          	auipc	ra,0xffffe
    8000445c:	d80080e7          	jalr	-640(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80004460:	00090513          	mv	a0,s2
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	ebc080e7          	jalr	-324(ra) # 80002320 <_Z11debug_printm>
        debug_print("\n");
    8000446c:	00005517          	auipc	a0,0x5
    80004470:	f7450513          	addi	a0,a0,-140 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	d64080e7          	jalr	-668(ra) # 800021d8 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    8000447c:	00090613          	mv	a2,s2
    80004480:	ffffd597          	auipc	a1,0xffffd
    80004484:	05058593          	addi	a1,a1,80 # 800014d0 <_ZN6Thread9body_execEPv>
    80004488:	00890513          	addi	a0,s2,8
    8000448c:	ffffd097          	auipc	ra,0xffffd
    80004490:	480080e7          	jalr	1152(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80004494:	f80516e3          	bnez	a0,80004420 <_Z20Threads_CPP_API_testv+0x100>
        debug_print("CPP API: Thread started\n");
    80004498:	00005517          	auipc	a0,0x5
    8000449c:	49050513          	addi	a0,a0,1168 # 80009928 <_ZTV8Consumer+0x148>
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	d38080e7          	jalr	-712(ra) # 800021d8 <_Z11debug_printPKc>
        return 0;
    800044a8:	f7dff06f          	j	80004424 <_Z20Threads_CPP_API_testv+0x104>
        thread_dispatch();
    800044ac:	ffffd097          	auipc	ra,0xffffd
    800044b0:	510080e7          	jalr	1296(ra) # 800019bc <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800044b4:	00007797          	auipc	a5,0x7
    800044b8:	59f78793          	addi	a5,a5,1439 # 8000ba53 <_ZL9finishedA>
    800044bc:	0007c783          	lbu	a5,0(a5)
    800044c0:	0ff7f793          	andi	a5,a5,255
    800044c4:	fe0784e3          	beqz	a5,800044ac <_Z20Threads_CPP_API_testv+0x18c>
    800044c8:	00007797          	auipc	a5,0x7
    800044cc:	58a78793          	addi	a5,a5,1418 # 8000ba52 <_ZL9finishedB>
    800044d0:	0007c783          	lbu	a5,0(a5)
    800044d4:	0ff7f793          	andi	a5,a5,255
    800044d8:	fc078ae3          	beqz	a5,800044ac <_Z20Threads_CPP_API_testv+0x18c>
    800044dc:	00007797          	auipc	a5,0x7
    800044e0:	57578793          	addi	a5,a5,1397 # 8000ba51 <_ZL9finishedC>
    800044e4:	0007c783          	lbu	a5,0(a5)
    800044e8:	0ff7f793          	andi	a5,a5,255
    800044ec:	fc0780e3          	beqz	a5,800044ac <_Z20Threads_CPP_API_testv+0x18c>
    800044f0:	00007797          	auipc	a5,0x7
    800044f4:	56078793          	addi	a5,a5,1376 # 8000ba50 <_ZL9finishedD>
    800044f8:	0007c783          	lbu	a5,0(a5)
    800044fc:	0ff7f793          	andi	a5,a5,255
    80004500:	fa0786e3          	beqz	a5,800044ac <_Z20Threads_CPP_API_testv+0x18c>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    80004504:	fc040493          	addi	s1,s0,-64
    80004508:	0080006f          	j	80004510 <_Z20Threads_CPP_API_testv+0x1f0>
    8000450c:	00848493          	addi	s1,s1,8
    80004510:	fe040793          	addi	a5,s0,-32
    80004514:	00f48e63          	beq	s1,a5,80004530 <_Z20Threads_CPP_API_testv+0x210>
    80004518:	0004b503          	ld	a0,0(s1)
    8000451c:	fe0508e3          	beqz	a0,8000450c <_Z20Threads_CPP_API_testv+0x1ec>
    80004520:	00053783          	ld	a5,0(a0)
    80004524:	0087b783          	ld	a5,8(a5)
    80004528:	000780e7          	jalr	a5
    8000452c:	fe1ff06f          	j	8000450c <_Z20Threads_CPP_API_testv+0x1ec>
}
    80004530:	03813083          	ld	ra,56(sp)
    80004534:	03013403          	ld	s0,48(sp)
    80004538:	02813483          	ld	s1,40(sp)
    8000453c:	02013903          	ld	s2,32(sp)
    80004540:	04010113          	addi	sp,sp,64
    80004544:	00008067          	ret

0000000080004548 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004548:	ff010113          	addi	sp,sp,-16
    8000454c:	00813423          	sd	s0,8(sp)
    80004550:	01010413          	addi	s0,sp,16
    80004554:	00813403          	ld	s0,8(sp)
    80004558:	01010113          	addi	sp,sp,16
    8000455c:	00008067          	ret

0000000080004560 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004560:	ff010113          	addi	sp,sp,-16
    80004564:	00813423          	sd	s0,8(sp)
    80004568:	01010413          	addi	s0,sp,16
    8000456c:	00813403          	ld	s0,8(sp)
    80004570:	01010113          	addi	sp,sp,16
    80004574:	00008067          	ret

0000000080004578 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004578:	ff010113          	addi	sp,sp,-16
    8000457c:	00813423          	sd	s0,8(sp)
    80004580:	01010413          	addi	s0,sp,16
    80004584:	00813403          	ld	s0,8(sp)
    80004588:	01010113          	addi	sp,sp,16
    8000458c:	00008067          	ret

0000000080004590 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004590:	ff010113          	addi	sp,sp,-16
    80004594:	00813423          	sd	s0,8(sp)
    80004598:	01010413          	addi	s0,sp,16
    8000459c:	00813403          	ld	s0,8(sp)
    800045a0:	01010113          	addi	sp,sp,16
    800045a4:	00008067          	ret

00000000800045a8 <_ZN7WorkerAD0Ev>:
    800045a8:	ff010113          	addi	sp,sp,-16
    800045ac:	00113423          	sd	ra,8(sp)
    800045b0:	00813023          	sd	s0,0(sp)
    800045b4:	01010413          	addi	s0,sp,16
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	b30080e7          	jalr	-1232(ra) # 800020e8 <_ZdlPv>
    800045c0:	00813083          	ld	ra,8(sp)
    800045c4:	00013403          	ld	s0,0(sp)
    800045c8:	01010113          	addi	sp,sp,16
    800045cc:	00008067          	ret

00000000800045d0 <_ZN7WorkerBD0Ev>:
class WorkerB: public Thread {
    800045d0:	ff010113          	addi	sp,sp,-16
    800045d4:	00113423          	sd	ra,8(sp)
    800045d8:	00813023          	sd	s0,0(sp)
    800045dc:	01010413          	addi	s0,sp,16
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	b08080e7          	jalr	-1272(ra) # 800020e8 <_ZdlPv>
    800045e8:	00813083          	ld	ra,8(sp)
    800045ec:	00013403          	ld	s0,0(sp)
    800045f0:	01010113          	addi	sp,sp,16
    800045f4:	00008067          	ret

00000000800045f8 <_ZN7WorkerCD0Ev>:
class WorkerC: public Thread {
    800045f8:	ff010113          	addi	sp,sp,-16
    800045fc:	00113423          	sd	ra,8(sp)
    80004600:	00813023          	sd	s0,0(sp)
    80004604:	01010413          	addi	s0,sp,16
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	ae0080e7          	jalr	-1312(ra) # 800020e8 <_ZdlPv>
    80004610:	00813083          	ld	ra,8(sp)
    80004614:	00013403          	ld	s0,0(sp)
    80004618:	01010113          	addi	sp,sp,16
    8000461c:	00008067          	ret

0000000080004620 <_ZN7WorkerDD0Ev>:
class WorkerD: public Thread {
    80004620:	ff010113          	addi	sp,sp,-16
    80004624:	00113423          	sd	ra,8(sp)
    80004628:	00813023          	sd	s0,0(sp)
    8000462c:	01010413          	addi	s0,sp,16
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	ab8080e7          	jalr	-1352(ra) # 800020e8 <_ZdlPv>
    80004638:	00813083          	ld	ra,8(sp)
    8000463c:	00013403          	ld	s0,0(sp)
    80004640:	01010113          	addi	sp,sp,16
    80004644:	00008067          	ret

0000000080004648 <_ZN7WorkerA3runEv>:
    void run() override {
    80004648:	ff010113          	addi	sp,sp,-16
    8000464c:	00113423          	sd	ra,8(sp)
    80004650:	00813023          	sd	s0,0(sp)
    80004654:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004658:	00000593          	li	a1,0
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	86c080e7          	jalr	-1940(ra) # 80003ec8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004664:	00813083          	ld	ra,8(sp)
    80004668:	00013403          	ld	s0,0(sp)
    8000466c:	01010113          	addi	sp,sp,16
    80004670:	00008067          	ret

0000000080004674 <_ZN7WorkerB3runEv>:
    void run() override {
    80004674:	ff010113          	addi	sp,sp,-16
    80004678:	00113423          	sd	ra,8(sp)
    8000467c:	00813023          	sd	s0,0(sp)
    80004680:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004684:	00000593          	li	a1,0
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	904080e7          	jalr	-1788(ra) # 80003f8c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004690:	00813083          	ld	ra,8(sp)
    80004694:	00013403          	ld	s0,0(sp)
    80004698:	01010113          	addi	sp,sp,16
    8000469c:	00008067          	ret

00000000800046a0 <_ZN7WorkerC3runEv>:
    void run() override {
    800046a0:	ff010113          	addi	sp,sp,-16
    800046a4:	00113423          	sd	ra,8(sp)
    800046a8:	00813023          	sd	s0,0(sp)
    800046ac:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800046b0:	00000593          	li	a1,0
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	9a4080e7          	jalr	-1628(ra) # 80004058 <_ZN7WorkerC11workerBodyCEPv>
    }
    800046bc:	00813083          	ld	ra,8(sp)
    800046c0:	00013403          	ld	s0,0(sp)
    800046c4:	01010113          	addi	sp,sp,16
    800046c8:	00008067          	ret

00000000800046cc <_ZN7WorkerD3runEv>:
    void run() override {
    800046cc:	ff010113          	addi	sp,sp,-16
    800046d0:	00113423          	sd	ra,8(sp)
    800046d4:	00813023          	sd	s0,0(sp)
    800046d8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800046dc:	00000593          	li	a1,0
    800046e0:	00000097          	auipc	ra,0x0
    800046e4:	af8080e7          	jalr	-1288(ra) # 800041d8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800046e8:	00813083          	ld	ra,8(sp)
    800046ec:	00013403          	ld	s0,0(sp)
    800046f0:	01010113          	addi	sp,sp,16
    800046f4:	00008067          	ret

00000000800046f8 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800046f8:	00100793          	li	a5,1
    800046fc:	06a7f863          	bgeu	a5,a0,8000476c <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80004700:	fe010113          	addi	sp,sp,-32
    80004704:	00113c23          	sd	ra,24(sp)
    80004708:	00813823          	sd	s0,16(sp)
    8000470c:	00913423          	sd	s1,8(sp)
    80004710:	01213023          	sd	s2,0(sp)
    80004714:	02010413          	addi	s0,sp,32
    80004718:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    8000471c:	00a00793          	li	a5,10
    80004720:	02f577b3          	remu	a5,a0,a5
    80004724:	02078e63          	beqz	a5,80004760 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004728:	fff48513          	addi	a0,s1,-1
    8000472c:	00000097          	auipc	ra,0x0
    80004730:	fcc080e7          	jalr	-52(ra) # 800046f8 <_ZL9fibonaccim>
    80004734:	00050913          	mv	s2,a0
    80004738:	ffe48513          	addi	a0,s1,-2
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	fbc080e7          	jalr	-68(ra) # 800046f8 <_ZL9fibonaccim>
    80004744:	00a90533          	add	a0,s2,a0
}
    80004748:	01813083          	ld	ra,24(sp)
    8000474c:	01013403          	ld	s0,16(sp)
    80004750:	00813483          	ld	s1,8(sp)
    80004754:	00013903          	ld	s2,0(sp)
    80004758:	02010113          	addi	sp,sp,32
    8000475c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	25c080e7          	jalr	604(ra) # 800019bc <_Z15thread_dispatchv>
    80004768:	fc1ff06f          	j	80004728 <_ZL9fibonaccim+0x30>
}
    8000476c:	00008067          	ret

0000000080004770 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004770:	fe010113          	addi	sp,sp,-32
    80004774:	00113c23          	sd	ra,24(sp)
    80004778:	00813823          	sd	s0,16(sp)
    8000477c:	00913423          	sd	s1,8(sp)
    80004780:	01213023          	sd	s2,0(sp)
    80004784:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004788:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    8000478c:	00c00793          	li	a5,12
    80004790:	0497e263          	bltu	a5,s1,800047d4 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80004794:	00005517          	auipc	a0,0x5
    80004798:	ecc50513          	addi	a0,a0,-308 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x328>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	f18080e7          	jalr	-232(ra) # 800056b4 <_Z11printStringPKc>
    800047a4:	00000613          	li	a2,0
    800047a8:	00a00593          	li	a1,10
    800047ac:	00048513          	mv	a0,s1
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	0b0080e7          	jalr	176(ra) # 80005860 <_Z8printIntiii>
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	c2850513          	addi	a0,a0,-984 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	ef4080e7          	jalr	-268(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800047c8:	0014849b          	addiw	s1,s1,1
    800047cc:	0ff4f493          	andi	s1,s1,255
    800047d0:	fbdff06f          	j	8000478c <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    800047d4:	00005517          	auipc	a0,0x5
    800047d8:	e9450513          	addi	a0,a0,-364 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x330>
    800047dc:	00001097          	auipc	ra,0x1
    800047e0:	ed8080e7          	jalr	-296(ra) # 800056b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800047e4:	00500313          	li	t1,5
    thread_dispatch();
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	1d4080e7          	jalr	468(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800047f0:	01000513          	li	a0,16
    800047f4:	00000097          	auipc	ra,0x0
    800047f8:	f04080e7          	jalr	-252(ra) # 800046f8 <_ZL9fibonaccim>
    800047fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004800:	00005517          	auipc	a0,0x5
    80004804:	e7850513          	addi	a0,a0,-392 # 80009678 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004808:	00001097          	auipc	ra,0x1
    8000480c:	eac080e7          	jalr	-340(ra) # 800056b4 <_Z11printStringPKc>
    80004810:	00000613          	li	a2,0
    80004814:	00a00593          	li	a1,10
    80004818:	0009051b          	sext.w	a0,s2
    8000481c:	00001097          	auipc	ra,0x1
    80004820:	044080e7          	jalr	68(ra) # 80005860 <_Z8printIntiii>
    80004824:	00005517          	auipc	a0,0x5
    80004828:	bbc50513          	addi	a0,a0,-1092 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000482c:	00001097          	auipc	ra,0x1
    80004830:	e88080e7          	jalr	-376(ra) # 800056b4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80004834:	00f00793          	li	a5,15
    80004838:	0497e263          	bltu	a5,s1,8000487c <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    8000483c:	00005517          	auipc	a0,0x5
    80004840:	e2450513          	addi	a0,a0,-476 # 80009660 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	e70080e7          	jalr	-400(ra) # 800056b4 <_Z11printStringPKc>
    8000484c:	00000613          	li	a2,0
    80004850:	00a00593          	li	a1,10
    80004854:	00048513          	mv	a0,s1
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	008080e7          	jalr	8(ra) # 80005860 <_Z8printIntiii>
    80004860:	00005517          	auipc	a0,0x5
    80004864:	b8050513          	addi	a0,a0,-1152 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	e4c080e7          	jalr	-436(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004870:	0014849b          	addiw	s1,s1,1
    80004874:	0ff4f493          	andi	s1,s1,255
    80004878:	fbdff06f          	j	80004834 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    8000487c:	00005517          	auipc	a0,0x5
    80004880:	e0c50513          	addi	a0,a0,-500 # 80009688 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80004884:	00001097          	auipc	ra,0x1
    80004888:	e30080e7          	jalr	-464(ra) # 800056b4 <_Z11printStringPKc>
    finishedD = true;
    8000488c:	00100793          	li	a5,1
    80004890:	00007717          	auipc	a4,0x7
    80004894:	1cf70223          	sb	a5,452(a4) # 8000ba54 <_ZL9finishedD>
    thread_dispatch();
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	124080e7          	jalr	292(ra) # 800019bc <_Z15thread_dispatchv>
}
    800048a0:	01813083          	ld	ra,24(sp)
    800048a4:	01013403          	ld	s0,16(sp)
    800048a8:	00813483          	ld	s1,8(sp)
    800048ac:	00013903          	ld	s2,0(sp)
    800048b0:	02010113          	addi	sp,sp,32
    800048b4:	00008067          	ret

00000000800048b8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800048b8:	fe010113          	addi	sp,sp,-32
    800048bc:	00113c23          	sd	ra,24(sp)
    800048c0:	00813823          	sd	s0,16(sp)
    800048c4:	00913423          	sd	s1,8(sp)
    800048c8:	01213023          	sd	s2,0(sp)
    800048cc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800048d0:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800048d4:	00200793          	li	a5,2
    800048d8:	0497e263          	bltu	a5,s1,8000491c <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    800048dc:	00005517          	auipc	a0,0x5
    800048e0:	dbc50513          	addi	a0,a0,-580 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x360>
    800048e4:	00001097          	auipc	ra,0x1
    800048e8:	dd0080e7          	jalr	-560(ra) # 800056b4 <_Z11printStringPKc>
    800048ec:	00000613          	li	a2,0
    800048f0:	00a00593          	li	a1,10
    800048f4:	00048513          	mv	a0,s1
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	f68080e7          	jalr	-152(ra) # 80005860 <_Z8printIntiii>
    80004900:	00005517          	auipc	a0,0x5
    80004904:	ae050513          	addi	a0,a0,-1312 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	dac080e7          	jalr	-596(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004910:	0014849b          	addiw	s1,s1,1
    80004914:	0ff4f493          	andi	s1,s1,255
    80004918:	fbdff06f          	j	800048d4 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    8000491c:	00005517          	auipc	a0,0x5
    80004920:	d8450513          	addi	a0,a0,-636 # 800096a0 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80004924:	00001097          	auipc	ra,0x1
    80004928:	d90080e7          	jalr	-624(ra) # 800056b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000492c:	00700313          	li	t1,7
    thread_dispatch();
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	08c080e7          	jalr	140(ra) # 800019bc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004938:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000493c:	00005517          	auipc	a0,0x5
    80004940:	d7450513          	addi	a0,a0,-652 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80004944:	00001097          	auipc	ra,0x1
    80004948:	d70080e7          	jalr	-656(ra) # 800056b4 <_Z11printStringPKc>
    8000494c:	00000613          	li	a2,0
    80004950:	00a00593          	li	a1,10
    80004954:	0009051b          	sext.w	a0,s2
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	f08080e7          	jalr	-248(ra) # 80005860 <_Z8printIntiii>
    80004960:	00005517          	auipc	a0,0x5
    80004964:	a8050513          	addi	a0,a0,-1408 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	d4c080e7          	jalr	-692(ra) # 800056b4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004970:	00c00513          	li	a0,12
    80004974:	00000097          	auipc	ra,0x0
    80004978:	d84080e7          	jalr	-636(ra) # 800046f8 <_ZL9fibonaccim>
    8000497c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004980:	00005517          	auipc	a0,0x5
    80004984:	d3850513          	addi	a0,a0,-712 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	d2c080e7          	jalr	-724(ra) # 800056b4 <_Z11printStringPKc>
    80004990:	00000613          	li	a2,0
    80004994:	00a00593          	li	a1,10
    80004998:	0009051b          	sext.w	a0,s2
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	ec4080e7          	jalr	-316(ra) # 80005860 <_Z8printIntiii>
    800049a4:	00005517          	auipc	a0,0x5
    800049a8:	a3c50513          	addi	a0,a0,-1476 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800049ac:	00001097          	auipc	ra,0x1
    800049b0:	d08080e7          	jalr	-760(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800049b4:	00500793          	li	a5,5
    800049b8:	0497e263          	bltu	a5,s1,800049fc <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    800049bc:	00005517          	auipc	a0,0x5
    800049c0:	cdc50513          	addi	a0,a0,-804 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x360>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	cf0080e7          	jalr	-784(ra) # 800056b4 <_Z11printStringPKc>
    800049cc:	00000613          	li	a2,0
    800049d0:	00a00593          	li	a1,10
    800049d4:	00048513          	mv	a0,s1
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	e88080e7          	jalr	-376(ra) # 80005860 <_Z8printIntiii>
    800049e0:	00005517          	auipc	a0,0x5
    800049e4:	a0050513          	addi	a0,a0,-1536 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800049e8:	00001097          	auipc	ra,0x1
    800049ec:	ccc080e7          	jalr	-820(ra) # 800056b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800049f0:	0014849b          	addiw	s1,s1,1
    800049f4:	0ff4f493          	andi	s1,s1,255
    800049f8:	fbdff06f          	j	800049b4 <_ZL11workerBodyCPv+0xfc>
    printString("C finished!\n");
    800049fc:	00005517          	auipc	a0,0x5
    80004a00:	26450513          	addi	a0,a0,612 # 80009c60 <_ZTV7WorkerD+0x28>
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	cb0080e7          	jalr	-848(ra) # 800056b4 <_Z11printStringPKc>
    finishedC = true;
    80004a0c:	00100793          	li	a5,1
    80004a10:	00007717          	auipc	a4,0x7
    80004a14:	04f702a3          	sb	a5,69(a4) # 8000ba55 <_ZL9finishedC>
    thread_dispatch();
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	fa4080e7          	jalr	-92(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004a20:	01813083          	ld	ra,24(sp)
    80004a24:	01013403          	ld	s0,16(sp)
    80004a28:	00813483          	ld	s1,8(sp)
    80004a2c:	00013903          	ld	s2,0(sp)
    80004a30:	02010113          	addi	sp,sp,32
    80004a34:	00008067          	ret

0000000080004a38 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004a38:	fe010113          	addi	sp,sp,-32
    80004a3c:	00113c23          	sd	ra,24(sp)
    80004a40:	00813823          	sd	s0,16(sp)
    80004a44:	00913423          	sd	s1,8(sp)
    80004a48:	01213023          	sd	s2,0(sp)
    80004a4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a50:	00000913          	li	s2,0
    80004a54:	0300006f          	j	80004a84 <_ZL11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004a58:	00178793          	addi	a5,a5,1
    80004a5c:	01d00713          	li	a4,29
    80004a60:	fef77ce3          	bgeu	a4,a5,80004a58 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	f58080e7          	jalr	-168(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004a6c:	00148493          	addi	s1,s1,1
    80004a70:	00900793          	li	a5,9
    80004a74:	0097e663          	bltu	a5,s1,80004a80 <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004a78:	00000793          	li	a5,0
    80004a7c:	fe1ff06f          	j	80004a5c <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80004a80:	00190913          	addi	s2,s2,1
    80004a84:	00f00793          	li	a5,15
    80004a88:	0527e063          	bltu	a5,s2,80004ac8 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80004a8c:	00005517          	auipc	a0,0x5
    80004a90:	c4c50513          	addi	a0,a0,-948 # 800096d8 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	c20080e7          	jalr	-992(ra) # 800056b4 <_Z11printStringPKc>
    80004a9c:	00000613          	li	a2,0
    80004aa0:	00a00593          	li	a1,10
    80004aa4:	0009051b          	sext.w	a0,s2
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	db8080e7          	jalr	-584(ra) # 80005860 <_Z8printIntiii>
    80004ab0:	00005517          	auipc	a0,0x5
    80004ab4:	93050513          	addi	a0,a0,-1744 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	bfc080e7          	jalr	-1028(ra) # 800056b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004ac0:	00000493          	li	s1,0
    80004ac4:	fadff06f          	j	80004a70 <_ZL11workerBodyBPv+0x38>
    printString("B finished!\n");
    80004ac8:	00005517          	auipc	a0,0x5
    80004acc:	c1850513          	addi	a0,a0,-1000 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	be4080e7          	jalr	-1052(ra) # 800056b4 <_Z11printStringPKc>
    finishedB = true;
    80004ad8:	00100793          	li	a5,1
    80004adc:	00007717          	auipc	a4,0x7
    80004ae0:	f6f70d23          	sb	a5,-134(a4) # 8000ba56 <_ZL9finishedB>
    thread_dispatch();
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	ed8080e7          	jalr	-296(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004aec:	01813083          	ld	ra,24(sp)
    80004af0:	01013403          	ld	s0,16(sp)
    80004af4:	00813483          	ld	s1,8(sp)
    80004af8:	00013903          	ld	s2,0(sp)
    80004afc:	02010113          	addi	sp,sp,32
    80004b00:	00008067          	ret

0000000080004b04 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004b04:	fe010113          	addi	sp,sp,-32
    80004b08:	00113c23          	sd	ra,24(sp)
    80004b0c:	00813823          	sd	s0,16(sp)
    80004b10:	00913423          	sd	s1,8(sp)
    80004b14:	01213023          	sd	s2,0(sp)
    80004b18:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004b1c:	00000913          	li	s2,0
    80004b20:	0300006f          	j	80004b50 <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004b24:	00178793          	addi	a5,a5,1
    80004b28:	01d00713          	li	a4,29
    80004b2c:	fef77ce3          	bgeu	a4,a5,80004b24 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	e8c080e7          	jalr	-372(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004b38:	00148493          	addi	s1,s1,1
    80004b3c:	00900793          	li	a5,9
    80004b40:	0097e663          	bltu	a5,s1,80004b4c <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004b44:	00000793          	li	a5,0
    80004b48:	fe1ff06f          	j	80004b28 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80004b4c:	00190913          	addi	s2,s2,1
    80004b50:	00900793          	li	a5,9
    80004b54:	0527e063          	bltu	a5,s2,80004b94 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80004b58:	00005517          	auipc	a0,0x5
    80004b5c:	b9850513          	addi	a0,a0,-1128 # 800096f0 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80004b60:	00001097          	auipc	ra,0x1
    80004b64:	b54080e7          	jalr	-1196(ra) # 800056b4 <_Z11printStringPKc>
    80004b68:	00000613          	li	a2,0
    80004b6c:	00a00593          	li	a1,10
    80004b70:	0009051b          	sext.w	a0,s2
    80004b74:	00001097          	auipc	ra,0x1
    80004b78:	cec080e7          	jalr	-788(ra) # 80005860 <_Z8printIntiii>
    80004b7c:	00005517          	auipc	a0,0x5
    80004b80:	86450513          	addi	a0,a0,-1948 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	b30080e7          	jalr	-1232(ra) # 800056b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004b8c:	00000493          	li	s1,0
    80004b90:	fadff06f          	j	80004b3c <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    80004b94:	00005517          	auipc	a0,0x5
    80004b98:	b3450513          	addi	a0,a0,-1228 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	b18080e7          	jalr	-1256(ra) # 800056b4 <_Z11printStringPKc>
    finishedA = true;
    80004ba4:	00100793          	li	a5,1
    80004ba8:	00007717          	auipc	a4,0x7
    80004bac:	eaf707a3          	sb	a5,-337(a4) # 8000ba57 <_ZL9finishedA>
}
    80004bb0:	01813083          	ld	ra,24(sp)
    80004bb4:	01013403          	ld	s0,16(sp)
    80004bb8:	00813483          	ld	s1,8(sp)
    80004bbc:	00013903          	ld	s2,0(sp)
    80004bc0:	02010113          	addi	sp,sp,32
    80004bc4:	00008067          	ret

0000000080004bc8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004bc8:	fd010113          	addi	sp,sp,-48
    80004bcc:	02113423          	sd	ra,40(sp)
    80004bd0:	02813023          	sd	s0,32(sp)
    80004bd4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004bd8:	00000613          	li	a2,0
    80004bdc:	00000597          	auipc	a1,0x0
    80004be0:	f2858593          	addi	a1,a1,-216 # 80004b04 <_ZL11workerBodyAPv>
    80004be4:	fd040513          	addi	a0,s0,-48
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	d24080e7          	jalr	-732(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004bf0:	00005517          	auipc	a0,0x5
    80004bf4:	b0850513          	addi	a0,a0,-1272 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x3c0>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	abc080e7          	jalr	-1348(ra) # 800056b4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004c00:	00000613          	li	a2,0
    80004c04:	00000597          	auipc	a1,0x0
    80004c08:	e3458593          	addi	a1,a1,-460 # 80004a38 <_ZL11workerBodyBPv>
    80004c0c:	fd840513          	addi	a0,s0,-40
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	cfc080e7          	jalr	-772(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004c18:	00005517          	auipc	a0,0x5
    80004c1c:	af850513          	addi	a0,a0,-1288 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	a94080e7          	jalr	-1388(ra) # 800056b4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004c28:	00000613          	li	a2,0
    80004c2c:	00000597          	auipc	a1,0x0
    80004c30:	c8c58593          	addi	a1,a1,-884 # 800048b8 <_ZL11workerBodyCPv>
    80004c34:	fe040513          	addi	a0,s0,-32
    80004c38:	ffffd097          	auipc	ra,0xffffd
    80004c3c:	cd4080e7          	jalr	-812(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004c40:	00005517          	auipc	a0,0x5
    80004c44:	ae850513          	addi	a0,a0,-1304 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x3f0>
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	a6c080e7          	jalr	-1428(ra) # 800056b4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004c50:	00000613          	li	a2,0
    80004c54:	00000597          	auipc	a1,0x0
    80004c58:	b1c58593          	addi	a1,a1,-1252 # 80004770 <_ZL11workerBodyDPv>
    80004c5c:	fe840513          	addi	a0,s0,-24
    80004c60:	ffffd097          	auipc	ra,0xffffd
    80004c64:	cac080e7          	jalr	-852(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004c68:	00005517          	auipc	a0,0x5
    80004c6c:	ad850513          	addi	a0,a0,-1320 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	a44080e7          	jalr	-1468(ra) # 800056b4 <_Z11printStringPKc>
    80004c78:	00c0006f          	j	80004c84 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	d40080e7          	jalr	-704(ra) # 800019bc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004c84:	00007797          	auipc	a5,0x7
    80004c88:	dd378793          	addi	a5,a5,-557 # 8000ba57 <_ZL9finishedA>
    80004c8c:	0007c783          	lbu	a5,0(a5)
    80004c90:	0ff7f793          	andi	a5,a5,255
    80004c94:	fe0784e3          	beqz	a5,80004c7c <_Z18Threads_C_API_testv+0xb4>
    80004c98:	00007797          	auipc	a5,0x7
    80004c9c:	dbe78793          	addi	a5,a5,-578 # 8000ba56 <_ZL9finishedB>
    80004ca0:	0007c783          	lbu	a5,0(a5)
    80004ca4:	0ff7f793          	andi	a5,a5,255
    80004ca8:	fc078ae3          	beqz	a5,80004c7c <_Z18Threads_C_API_testv+0xb4>
    80004cac:	00007797          	auipc	a5,0x7
    80004cb0:	da978793          	addi	a5,a5,-599 # 8000ba55 <_ZL9finishedC>
    80004cb4:	0007c783          	lbu	a5,0(a5)
    80004cb8:	0ff7f793          	andi	a5,a5,255
    80004cbc:	fc0780e3          	beqz	a5,80004c7c <_Z18Threads_C_API_testv+0xb4>
    80004cc0:	00007797          	auipc	a5,0x7
    80004cc4:	d9478793          	addi	a5,a5,-620 # 8000ba54 <_ZL9finishedD>
    80004cc8:	0007c783          	lbu	a5,0(a5)
    80004ccc:	0ff7f793          	andi	a5,a5,255
    80004cd0:	fa0786e3          	beqz	a5,80004c7c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004cd4:	02813083          	ld	ra,40(sp)
    80004cd8:	02013403          	ld	s0,32(sp)
    80004cdc:	03010113          	addi	sp,sp,48
    80004ce0:	00008067          	ret

0000000080004ce4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004ce4:	fd010113          	addi	sp,sp,-48
    80004ce8:	02113423          	sd	ra,40(sp)
    80004cec:	02813023          	sd	s0,32(sp)
    80004cf0:	00913c23          	sd	s1,24(sp)
    80004cf4:	01213823          	sd	s2,16(sp)
    80004cf8:	01313423          	sd	s3,8(sp)
    80004cfc:	03010413          	addi	s0,sp,48
    80004d00:	00050993          	mv	s3,a0
    80004d04:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004d08:	00000913          	li	s2,0
    80004d0c:	00c0006f          	j	80004d18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004d10:	ffffd097          	auipc	ra,0xffffd
    80004d14:	cac080e7          	jalr	-852(ra) # 800019bc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80004d18:	ffffd097          	auipc	ra,0xffffd
    80004d1c:	f24080e7          	jalr	-220(ra) # 80001c3c <_Z4getcv>
    80004d20:	0005059b          	sext.w	a1,a0
    80004d24:	01b00793          	li	a5,27
    80004d28:	02f58a63          	beq	a1,a5,80004d5c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004d2c:	0084b503          	ld	a0,8(s1)
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	328080e7          	jalr	808(ra) # 80006058 <_ZN9BufferCPP3putEi>
        i++;
    80004d38:	0019079b          	addiw	a5,s2,1
    80004d3c:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004d40:	0004a683          	lw	a3,0(s1)
    80004d44:	0026971b          	slliw	a4,a3,0x2
    80004d48:	00d7073b          	addw	a4,a4,a3
    80004d4c:	0017169b          	slliw	a3,a4,0x1
    80004d50:	02d7e7bb          	remw	a5,a5,a3
    80004d54:	fc0792e3          	bnez	a5,80004d18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004d58:	fb9ff06f          	j	80004d10 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    80004d5c:	00100793          	li	a5,1
    80004d60:	00007717          	auipc	a4,0x7
    80004d64:	cef72c23          	sw	a5,-776(a4) # 8000ba58 <_ZL9threadEnd>
    td->buffer->put('!');
    80004d68:	0209b783          	ld	a5,32(s3)
    80004d6c:	02100593          	li	a1,33
    80004d70:	0087b503          	ld	a0,8(a5)
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	2e4080e7          	jalr	740(ra) # 80006058 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004d7c:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80004d80:	0087b503          	ld	a0,8(a5)
    80004d84:	00050663          	beqz	a0,80004d90 <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
        return sem_signal(myHandle);
    80004d88:	ffffd097          	auipc	ra,0xffffd
    80004d8c:	e14080e7          	jalr	-492(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80004d90:	02813083          	ld	ra,40(sp)
    80004d94:	02013403          	ld	s0,32(sp)
    80004d98:	01813483          	ld	s1,24(sp)
    80004d9c:	01013903          	ld	s2,16(sp)
    80004da0:	00813983          	ld	s3,8(sp)
    80004da4:	03010113          	addi	sp,sp,48
    80004da8:	00008067          	ret

0000000080004dac <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004dac:	fe010113          	addi	sp,sp,-32
    80004db0:	00113c23          	sd	ra,24(sp)
    80004db4:	00813823          	sd	s0,16(sp)
    80004db8:	00913423          	sd	s1,8(sp)
    80004dbc:	01213023          	sd	s2,0(sp)
    80004dc0:	02010413          	addi	s0,sp,32
    80004dc4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004dc8:	00000913          	li	s2,0
    80004dcc:	00c0006f          	j	80004dd8 <_ZN12ProducerSync8producerEPv+0x2c>
        thread_dispatch();
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	bec080e7          	jalr	-1044(ra) # 800019bc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80004dd8:	00007797          	auipc	a5,0x7
    80004ddc:	c8078793          	addi	a5,a5,-896 # 8000ba58 <_ZL9threadEnd>
    80004de0:	0007a783          	lw	a5,0(a5)
    80004de4:	0007879b          	sext.w	a5,a5
    80004de8:	02079e63          	bnez	a5,80004e24 <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80004dec:	0004a583          	lw	a1,0(s1)
    80004df0:	0305859b          	addiw	a1,a1,48
    80004df4:	0084b503          	ld	a0,8(s1)
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	260080e7          	jalr	608(ra) # 80006058 <_ZN9BufferCPP3putEi>
        i++;
    80004e00:	0019079b          	addiw	a5,s2,1
    80004e04:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004e08:	0004a683          	lw	a3,0(s1)
    80004e0c:	0026971b          	slliw	a4,a3,0x2
    80004e10:	00d7073b          	addw	a4,a4,a3
    80004e14:	0017169b          	slliw	a3,a4,0x1
    80004e18:	02d7e7bb          	remw	a5,a5,a3
    80004e1c:	fa079ee3          	bnez	a5,80004dd8 <_ZN12ProducerSync8producerEPv+0x2c>
    80004e20:	fb1ff06f          	j	80004dd0 <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80004e24:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80004e28:	0087b503          	ld	a0,8(a5)
    80004e2c:	00050663          	beqz	a0,80004e38 <_ZN12ProducerSync8producerEPv+0x8c>
        return sem_signal(myHandle);
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	d6c080e7          	jalr	-660(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80004e38:	01813083          	ld	ra,24(sp)
    80004e3c:	01013403          	ld	s0,16(sp)
    80004e40:	00813483          	ld	s1,8(sp)
    80004e44:	00013903          	ld	s2,0(sp)
    80004e48:	02010113          	addi	sp,sp,32
    80004e4c:	00008067          	ret

0000000080004e50 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004e50:	fd010113          	addi	sp,sp,-48
    80004e54:	02113423          	sd	ra,40(sp)
    80004e58:	02813023          	sd	s0,32(sp)
    80004e5c:	00913c23          	sd	s1,24(sp)
    80004e60:	01213823          	sd	s2,16(sp)
    80004e64:	01313423          	sd	s3,8(sp)
    80004e68:	01413023          	sd	s4,0(sp)
    80004e6c:	03010413          	addi	s0,sp,48
    80004e70:	00050993          	mv	s3,a0
    80004e74:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004e78:	00000a13          	li	s4,0
    80004e7c:	01c0006f          	j	80004e98 <_ZN12ConsumerSync8consumerEPv+0x48>
        thread_dispatch();
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	b3c080e7          	jalr	-1220(ra) # 800019bc <_Z15thread_dispatchv>
    80004e88:	0580006f          	j	80004ee0 <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    80004e8c:	00a00513          	li	a0,10
    80004e90:	ffffd097          	auipc	ra,0xffffd
    80004e94:	dfc080e7          	jalr	-516(ra) # 80001c8c <_Z4putcc>
    while (!threadEnd) {
    80004e98:	00007797          	auipc	a5,0x7
    80004e9c:	bc078793          	addi	a5,a5,-1088 # 8000ba58 <_ZL9threadEnd>
    80004ea0:	0007a783          	lw	a5,0(a5)
    80004ea4:	0007879b          	sext.w	a5,a5
    80004ea8:	04079463          	bnez	a5,80004ef0 <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    80004eac:	00893503          	ld	a0,8(s2)
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	258080e7          	jalr	600(ra) # 80006108 <_ZN9BufferCPP3getEv>
        i++;
    80004eb8:	001a049b          	addiw	s1,s4,1
    80004ebc:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004ec0:	0ff57513          	andi	a0,a0,255
    80004ec4:	ffffd097          	auipc	ra,0xffffd
    80004ec8:	dc8080e7          	jalr	-568(ra) # 80001c8c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004ecc:	00092703          	lw	a4,0(s2)
    80004ed0:	0027179b          	slliw	a5,a4,0x2
    80004ed4:	00e787bb          	addw	a5,a5,a4
    80004ed8:	02f4e7bb          	remw	a5,s1,a5
    80004edc:	fa0782e3          	beqz	a5,80004e80 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004ee0:	05000793          	li	a5,80
    80004ee4:	02f4e4bb          	remw	s1,s1,a5
    80004ee8:	fa0498e3          	bnez	s1,80004e98 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004eec:	fa1ff06f          	j	80004e8c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    80004ef0:	0209b783          	ld	a5,32(s3)
    80004ef4:	0087b503          	ld	a0,8(a5)
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	2bc080e7          	jalr	700(ra) # 800061b4 <_ZN9BufferCPP6getCntEv>
    80004f00:	02a05263          	blez	a0,80004f24 <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    80004f04:	0209b783          	ld	a5,32(s3)
    80004f08:	0087b503          	ld	a0,8(a5)
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	1fc080e7          	jalr	508(ra) # 80006108 <_ZN9BufferCPP3getEv>
    static void putc(char c) { __putc(c); };
    80004f14:	0ff57513          	andi	a0,a0,255
    80004f18:	00003097          	auipc	ra,0x3
    80004f1c:	504080e7          	jalr	1284(ra) # 8000841c <__putc>
    80004f20:	fd1ff06f          	j	80004ef0 <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    80004f24:	01093783          	ld	a5,16(s2)
        if (myHandle == nullptr) {
    80004f28:	0087b503          	ld	a0,8(a5)
    80004f2c:	00050663          	beqz	a0,80004f38 <_ZN12ConsumerSync8consumerEPv+0xe8>
        return sem_signal(myHandle);
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	c6c080e7          	jalr	-916(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80004f38:	02813083          	ld	ra,40(sp)
    80004f3c:	02013403          	ld	s0,32(sp)
    80004f40:	01813483          	ld	s1,24(sp)
    80004f44:	01013903          	ld	s2,16(sp)
    80004f48:	00813983          	ld	s3,8(sp)
    80004f4c:	00013a03          	ld	s4,0(sp)
    80004f50:	03010113          	addi	sp,sp,48
    80004f54:	00008067          	ret

0000000080004f58 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004f58:	f9010113          	addi	sp,sp,-112
    80004f5c:	06113423          	sd	ra,104(sp)
    80004f60:	06813023          	sd	s0,96(sp)
    80004f64:	04913c23          	sd	s1,88(sp)
    80004f68:	05213823          	sd	s2,80(sp)
    80004f6c:	05313423          	sd	s3,72(sp)
    80004f70:	05413023          	sd	s4,64(sp)
    80004f74:	03513c23          	sd	s5,56(sp)
    80004f78:	03613823          	sd	s6,48(sp)
    80004f7c:	03713423          	sd	s7,40(sp)
    80004f80:	03813023          	sd	s8,32(sp)
    80004f84:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004f88:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004f8c:	00005517          	auipc	a0,0x5
    80004f90:	87c50513          	addi	a0,a0,-1924 # 80009808 <_ZTV8Consumer+0x28>
    80004f94:	00000097          	auipc	ra,0x0
    80004f98:	720080e7          	jalr	1824(ra) # 800056b4 <_Z11printStringPKc>
    getString(input, 30);
    80004f9c:	01e00593          	li	a1,30
    80004fa0:	f9040513          	addi	a0,s0,-112
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	798080e7          	jalr	1944(ra) # 8000573c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004fac:	f9040513          	addi	a0,s0,-112
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	860080e7          	jalr	-1952(ra) # 80005810 <_Z11stringToIntPKc>
    80004fb8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004fbc:	00005517          	auipc	a0,0x5
    80004fc0:	86c50513          	addi	a0,a0,-1940 # 80009828 <_ZTV8Consumer+0x48>
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	6f0080e7          	jalr	1776(ra) # 800056b4 <_Z11printStringPKc>
    getString(input, 30);
    80004fcc:	01e00593          	li	a1,30
    80004fd0:	f9040513          	addi	a0,s0,-112
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	768080e7          	jalr	1896(ra) # 8000573c <_Z9getStringPci>
    n = stringToInt(input);
    80004fdc:	f9040513          	addi	a0,s0,-112
    80004fe0:	00001097          	auipc	ra,0x1
    80004fe4:	830080e7          	jalr	-2000(ra) # 80005810 <_Z11stringToIntPKc>
    80004fe8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004fec:	00005517          	auipc	a0,0x5
    80004ff0:	85c50513          	addi	a0,a0,-1956 # 80009848 <_ZTV8Consumer+0x68>
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	6c0080e7          	jalr	1728(ra) # 800056b4 <_Z11printStringPKc>
    80004ffc:	00000613          	li	a2,0
    80005000:	00a00593          	li	a1,10
    80005004:	00090513          	mv	a0,s2
    80005008:	00001097          	auipc	ra,0x1
    8000500c:	858080e7          	jalr	-1960(ra) # 80005860 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005010:	00005517          	auipc	a0,0x5
    80005014:	85050513          	addi	a0,a0,-1968 # 80009860 <_ZTV8Consumer+0x80>
    80005018:	00000097          	auipc	ra,0x0
    8000501c:	69c080e7          	jalr	1692(ra) # 800056b4 <_Z11printStringPKc>
    80005020:	00000613          	li	a2,0
    80005024:	00a00593          	li	a1,10
    80005028:	00048513          	mv	a0,s1
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	834080e7          	jalr	-1996(ra) # 80005860 <_Z8printIntiii>
    printString(".\n");
    80005034:	00005517          	auipc	a0,0x5
    80005038:	84450513          	addi	a0,a0,-1980 # 80009878 <_ZTV8Consumer+0x98>
    8000503c:	00000097          	auipc	ra,0x0
    80005040:	678080e7          	jalr	1656(ra) # 800056b4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005044:	0324c463          	blt	s1,s2,8000506c <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80005048:	03205c63          	blez	s2,80005080 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    8000504c:	03800513          	li	a0,56
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	018080e7          	jalr	24(ra) # 80002068 <_Znwm>
    80005058:	00050a93          	mv	s5,a0
    8000505c:	00048593          	mv	a1,s1
    80005060:	00001097          	auipc	ra,0x1
    80005064:	e44080e7          	jalr	-444(ra) # 80005ea4 <_ZN9BufferCPPC1Ei>
    80005068:	0300006f          	j	80005098 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000506c:	00005517          	auipc	a0,0x5
    80005070:	81450513          	addi	a0,a0,-2028 # 80009880 <_ZTV8Consumer+0xa0>
    80005074:	00000097          	auipc	ra,0x0
    80005078:	640080e7          	jalr	1600(ra) # 800056b4 <_Z11printStringPKc>
        return;
    8000507c:	0140006f          	j	80005090 <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005080:	00005517          	auipc	a0,0x5
    80005084:	84050513          	addi	a0,a0,-1984 # 800098c0 <_ZTV8Consumer+0xe0>
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	62c080e7          	jalr	1580(ra) # 800056b4 <_Z11printStringPKc>
        return;
    80005090:	000b8113          	mv	sp,s7
    80005094:	3340006f          	j	800053c8 <_Z29producerConsumer_CPP_Sync_APIv+0x470>
    waitForAll = new Semaphore(0);
    80005098:	01000513          	li	a0,16
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	fcc080e7          	jalr	-52(ra) # 80002068 <_Znwm>
    800050a4:	00050493          	mv	s1,a0
    Semaphore(unsigned init = 1) {
    800050a8:	00004797          	auipc	a5,0x4
    800050ac:	6d878793          	addi	a5,a5,1752 # 80009780 <_ZTV9Semaphore+0x10>
    800050b0:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800050b4:	00000593          	li	a1,0
    800050b8:	00850513          	addi	a0,a0,8
    800050bc:	ffffd097          	auipc	ra,0xffffd
    800050c0:	94c080e7          	jalr	-1716(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    800050c4:	00050463          	beqz	a0,800050cc <_Z29producerConsumer_CPP_Sync_APIv+0x174>
            myHandle = nullptr;
    800050c8:	0004b423          	sd	zero,8(s1)
    800050cc:	00007797          	auipc	a5,0x7
    800050d0:	9897ba23          	sd	s1,-1644(a5) # 8000ba60 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800050d4:	00391793          	slli	a5,s2,0x3
    800050d8:	00f78793          	addi	a5,a5,15
    800050dc:	ff07f793          	andi	a5,a5,-16
    800050e0:	40f10133          	sub	sp,sp,a5
    800050e4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800050e8:	0019079b          	addiw	a5,s2,1
    800050ec:	00179713          	slli	a4,a5,0x1
    800050f0:	00f70733          	add	a4,a4,a5
    800050f4:	00371793          	slli	a5,a4,0x3
    800050f8:	00f78793          	addi	a5,a5,15
    800050fc:	ff07f793          	andi	a5,a5,-16
    80005100:	40f10133          	sub	sp,sp,a5
    80005104:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005108:	00191c13          	slli	s8,s2,0x1
    8000510c:	012c0733          	add	a4,s8,s2
    80005110:	00371793          	slli	a5,a4,0x3
    80005114:	00fa07b3          	add	a5,s4,a5
    80005118:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000511c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005120:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005124:	02800513          	li	a0,40
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	f40080e7          	jalr	-192(ra) # 80002068 <_Znwm>
    80005130:	00050b13          	mv	s6,a0
    80005134:	012c0c33          	add	s8,s8,s2
    80005138:	003c1793          	slli	a5,s8,0x3
    8000513c:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80005140:	00053423          	sd	zero,8(a0)
    80005144:	00053823          	sd	zero,16(a0)
    80005148:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000514c:	00005717          	auipc	a4,0x5
    80005150:	b8470713          	addi	a4,a4,-1148 # 80009cd0 <_ZTV12ConsumerSync+0x10>
    80005154:	00e53023          	sd	a4,0(a0)
    80005158:	02f53023          	sd	a5,32(a0)
        debug_print("CPP API: Starting thread\n");
    8000515c:	00004517          	auipc	a0,0x4
    80005160:	79450513          	addi	a0,a0,1940 # 800098f0 <_ZTV8Consumer+0x110>
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	074080e7          	jalr	116(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    8000516c:	00004517          	auipc	a0,0x4
    80005170:	7a450513          	addi	a0,a0,1956 # 80009910 <_ZTV8Consumer+0x130>
    80005174:	ffffd097          	auipc	ra,0xffffd
    80005178:	064080e7          	jalr	100(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)this);
    8000517c:	000b0513          	mv	a0,s6
    80005180:	ffffd097          	auipc	ra,0xffffd
    80005184:	1a0080e7          	jalr	416(ra) # 80002320 <_Z11debug_printm>
        debug_print("\n");
    80005188:	00004517          	auipc	a0,0x4
    8000518c:	25850513          	addi	a0,a0,600 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80005190:	ffffd097          	auipc	ra,0xffffd
    80005194:	048080e7          	jalr	72(ra) # 800021d8 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80005198:	000b0613          	mv	a2,s6
    8000519c:	ffffc597          	auipc	a1,0xffffc
    800051a0:	33458593          	addi	a1,a1,820 # 800014d0 <_ZN6Thread9body_execEPv>
    800051a4:	008b0513          	addi	a0,s6,8
    800051a8:	ffffc097          	auipc	ra,0xffffc
    800051ac:	764080e7          	jalr	1892(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    800051b0:	00051e63          	bnez	a0,800051cc <_Z29producerConsumer_CPP_Sync_APIv+0x274>
        debug_print("CPP API: Thread started\n");
    800051b4:	00004517          	auipc	a0,0x4
    800051b8:	77450513          	addi	a0,a0,1908 # 80009928 <_ZTV8Consumer+0x148>
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	01c080e7          	jalr	28(ra) # 800021d8 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    800051c4:	00000493          	li	s1,0
    800051c8:	0c80006f          	j	80005290 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
            myHandle = nullptr;
    800051cc:	000b3423          	sd	zero,8(s6)
            return -1;
    800051d0:	ff5ff06f          	j	800051c4 <_Z29producerConsumer_CPP_Sync_APIv+0x26c>
            threads[i] = new ProducerSync(data+i);
    800051d4:	02800513          	li	a0,40
    800051d8:	ffffd097          	auipc	ra,0xffffd
    800051dc:	e90080e7          	jalr	-368(ra) # 80002068 <_Znwm>
    800051e0:	00149713          	slli	a4,s1,0x1
    800051e4:	00970733          	add	a4,a4,s1
    800051e8:	00371793          	slli	a5,a4,0x3
    800051ec:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800051f0:	00053423          	sd	zero,8(a0)
    800051f4:	00053823          	sd	zero,16(a0)
    800051f8:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800051fc:	00005717          	auipc	a4,0x5
    80005200:	aac70713          	addi	a4,a4,-1364 # 80009ca8 <_ZTV12ProducerSync+0x10>
    80005204:	00e53023          	sd	a4,0(a0)
    80005208:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    8000520c:	00349793          	slli	a5,s1,0x3
    80005210:	00f987b3          	add	a5,s3,a5
    80005214:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80005218:	00349793          	slli	a5,s1,0x3
    8000521c:	00f987b3          	add	a5,s3,a5
    80005220:	0007bc03          	ld	s8,0(a5)
        debug_print("CPP API: Starting thread\n");
    80005224:	00004517          	auipc	a0,0x4
    80005228:	6cc50513          	addi	a0,a0,1740 # 800098f0 <_ZTV8Consumer+0x110>
    8000522c:	ffffd097          	auipc	ra,0xffffd
    80005230:	fac080e7          	jalr	-84(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80005234:	00004517          	auipc	a0,0x4
    80005238:	6dc50513          	addi	a0,a0,1756 # 80009910 <_ZTV8Consumer+0x130>
    8000523c:	ffffd097          	auipc	ra,0xffffd
    80005240:	f9c080e7          	jalr	-100(ra) # 800021d8 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80005244:	000c0513          	mv	a0,s8
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	0d8080e7          	jalr	216(ra) # 80002320 <_Z11debug_printm>
        debug_print("\n");
    80005250:	00004517          	auipc	a0,0x4
    80005254:	19050513          	addi	a0,a0,400 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80005258:	ffffd097          	auipc	ra,0xffffd
    8000525c:	f80080e7          	jalr	-128(ra) # 800021d8 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80005260:	000c0613          	mv	a2,s8
    80005264:	ffffc597          	auipc	a1,0xffffc
    80005268:	26c58593          	addi	a1,a1,620 # 800014d0 <_ZN6Thread9body_execEPv>
    8000526c:	008c0513          	addi	a0,s8,8
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	69c080e7          	jalr	1692(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80005278:	08051863          	bnez	a0,80005308 <_Z29producerConsumer_CPP_Sync_APIv+0x3b0>
        debug_print("CPP API: Thread started\n");
    8000527c:	00004517          	auipc	a0,0x4
    80005280:	6ac50513          	addi	a0,a0,1708 # 80009928 <_ZTV8Consumer+0x148>
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	f54080e7          	jalr	-172(ra) # 800021d8 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    8000528c:	0014849b          	addiw	s1,s1,1
    80005290:	0924d063          	bge	s1,s2,80005310 <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
        data[i].id = i;
    80005294:	00149713          	slli	a4,s1,0x1
    80005298:	00970733          	add	a4,a4,s1
    8000529c:	00371793          	slli	a5,a4,0x3
    800052a0:	00fa07b3          	add	a5,s4,a5
    800052a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800052a8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800052ac:	00006717          	auipc	a4,0x6
    800052b0:	7b470713          	addi	a4,a4,1972 # 8000ba60 <_ZL10waitForAll>
    800052b4:	00073703          	ld	a4,0(a4)
    800052b8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800052bc:	f0904ce3          	bgtz	s1,800051d4 <_Z29producerConsumer_CPP_Sync_APIv+0x27c>
            threads[i] = new ProducerKeyboard(data+i);
    800052c0:	02800513          	li	a0,40
    800052c4:	ffffd097          	auipc	ra,0xffffd
    800052c8:	da4080e7          	jalr	-604(ra) # 80002068 <_Znwm>
    800052cc:	00149713          	slli	a4,s1,0x1
    800052d0:	00970733          	add	a4,a4,s1
    800052d4:	00371793          	slli	a5,a4,0x3
    800052d8:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800052dc:	00053423          	sd	zero,8(a0)
    800052e0:	00053823          	sd	zero,16(a0)
    800052e4:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800052e8:	00005717          	auipc	a4,0x5
    800052ec:	99870713          	addi	a4,a4,-1640 # 80009c80 <_ZTV16ProducerKeyboard+0x10>
    800052f0:	00e53023          	sd	a4,0(a0)
    800052f4:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    800052f8:	00349793          	slli	a5,s1,0x3
    800052fc:	00f987b3          	add	a5,s3,a5
    80005300:	00a7b023          	sd	a0,0(a5)
    80005304:	f15ff06f          	j	80005218 <_Z29producerConsumer_CPP_Sync_APIv+0x2c0>
            myHandle = nullptr;
    80005308:	000c3423          	sd	zero,8(s8)
            return -1;
    8000530c:	f81ff06f          	j	8000528c <_Z29producerConsumer_CPP_Sync_APIv+0x334>
        thread_dispatch();
    80005310:	ffffc097          	auipc	ra,0xffffc
    80005314:	6ac080e7          	jalr	1708(ra) # 800019bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005318:	00000493          	li	s1,0
    8000531c:	0080006f          	j	80005324 <_Z29producerConsumer_CPP_Sync_APIv+0x3cc>
    80005320:	0014849b          	addiw	s1,s1,1
    80005324:	02994263          	blt	s2,s1,80005348 <_Z29producerConsumer_CPP_Sync_APIv+0x3f0>
        waitForAll->wait();
    80005328:	00006797          	auipc	a5,0x6
    8000532c:	73878793          	addi	a5,a5,1848 # 8000ba60 <_ZL10waitForAll>
    80005330:	0007b783          	ld	a5,0(a5)
        if (myHandle == nullptr) {
    80005334:	0087b503          	ld	a0,8(a5)
    80005338:	fe0504e3          	beqz	a0,80005320 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
        return sem_wait(myHandle);
    8000533c:	ffffd097          	auipc	ra,0xffffd
    80005340:	810080e7          	jalr	-2032(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    80005344:	fddff06f          	j	80005320 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
    for (int i = 0; i < threadNum; i++) {
    80005348:	00000493          	li	s1,0
    8000534c:	0080006f          	j	80005354 <_Z29producerConsumer_CPP_Sync_APIv+0x3fc>
    80005350:	0014849b          	addiw	s1,s1,1
    80005354:	0324d263          	bge	s1,s2,80005378 <_Z29producerConsumer_CPP_Sync_APIv+0x420>
        delete threads[i];
    80005358:	00349793          	slli	a5,s1,0x3
    8000535c:	00f987b3          	add	a5,s3,a5
    80005360:	0007b503          	ld	a0,0(a5)
    80005364:	fe0506e3          	beqz	a0,80005350 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    80005368:	00053783          	ld	a5,0(a0)
    8000536c:	0087b783          	ld	a5,8(a5)
    80005370:	000780e7          	jalr	a5
    80005374:	fddff06f          	j	80005350 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    delete consumerThread;
    80005378:	000b0a63          	beqz	s6,8000538c <_Z29producerConsumer_CPP_Sync_APIv+0x434>
    8000537c:	000b3783          	ld	a5,0(s6)
    80005380:	0087b783          	ld	a5,8(a5)
    80005384:	000b0513          	mv	a0,s6
    80005388:	000780e7          	jalr	a5
    delete waitForAll;
    8000538c:	00006797          	auipc	a5,0x6
    80005390:	6d478793          	addi	a5,a5,1748 # 8000ba60 <_ZL10waitForAll>
    80005394:	0007b503          	ld	a0,0(a5)
    80005398:	00050863          	beqz	a0,800053a8 <_Z29producerConsumer_CPP_Sync_APIv+0x450>
    8000539c:	00053783          	ld	a5,0(a0)
    800053a0:	0087b783          	ld	a5,8(a5)
    800053a4:	000780e7          	jalr	a5
    delete buffer;
    800053a8:	000a8e63          	beqz	s5,800053c4 <_Z29producerConsumer_CPP_Sync_APIv+0x46c>
    800053ac:	000a8513          	mv	a0,s5
    800053b0:	00001097          	auipc	ra,0x1
    800053b4:	eac080e7          	jalr	-340(ra) # 8000625c <_ZN9BufferCPPD1Ev>
    800053b8:	000a8513          	mv	a0,s5
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	d2c080e7          	jalr	-724(ra) # 800020e8 <_ZdlPv>
    800053c4:	000b8113          	mv	sp,s7

}
    800053c8:	f9040113          	addi	sp,s0,-112
    800053cc:	06813083          	ld	ra,104(sp)
    800053d0:	06013403          	ld	s0,96(sp)
    800053d4:	05813483          	ld	s1,88(sp)
    800053d8:	05013903          	ld	s2,80(sp)
    800053dc:	04813983          	ld	s3,72(sp)
    800053e0:	04013a03          	ld	s4,64(sp)
    800053e4:	03813a83          	ld	s5,56(sp)
    800053e8:	03013b03          	ld	s6,48(sp)
    800053ec:	02813b83          	ld	s7,40(sp)
    800053f0:	02013c03          	ld	s8,32(sp)
    800053f4:	07010113          	addi	sp,sp,112
    800053f8:	00008067          	ret
    800053fc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005400:	000a8513          	mv	a0,s5
    80005404:	ffffd097          	auipc	ra,0xffffd
    80005408:	ce4080e7          	jalr	-796(ra) # 800020e8 <_ZdlPv>
    8000540c:	00048513          	mv	a0,s1
    80005410:	00007097          	auipc	ra,0x7
    80005414:	788080e7          	jalr	1928(ra) # 8000cb98 <_Unwind_Resume>
    80005418:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000541c:	00048513          	mv	a0,s1
    80005420:	ffffd097          	auipc	ra,0xffffd
    80005424:	cc8080e7          	jalr	-824(ra) # 800020e8 <_ZdlPv>
    80005428:	00090513          	mv	a0,s2
    8000542c:	00007097          	auipc	ra,0x7
    80005430:	76c080e7          	jalr	1900(ra) # 8000cb98 <_Unwind_Resume>

0000000080005434 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005434:	ff010113          	addi	sp,sp,-16
    80005438:	00813423          	sd	s0,8(sp)
    8000543c:	01010413          	addi	s0,sp,16
    80005440:	00813403          	ld	s0,8(sp)
    80005444:	01010113          	addi	sp,sp,16
    80005448:	00008067          	ret

000000008000544c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000544c:	ff010113          	addi	sp,sp,-16
    80005450:	00813423          	sd	s0,8(sp)
    80005454:	01010413          	addi	s0,sp,16
    80005458:	00813403          	ld	s0,8(sp)
    8000545c:	01010113          	addi	sp,sp,16
    80005460:	00008067          	ret

0000000080005464 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005464:	ff010113          	addi	sp,sp,-16
    80005468:	00813423          	sd	s0,8(sp)
    8000546c:	01010413          	addi	s0,sp,16
    80005470:	00813403          	ld	s0,8(sp)
    80005474:	01010113          	addi	sp,sp,16
    80005478:	00008067          	ret

000000008000547c <_ZN12ConsumerSyncD0Ev>:
class ConsumerSync:public Thread {
    8000547c:	ff010113          	addi	sp,sp,-16
    80005480:	00113423          	sd	ra,8(sp)
    80005484:	00813023          	sd	s0,0(sp)
    80005488:	01010413          	addi	s0,sp,16
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	c5c080e7          	jalr	-932(ra) # 800020e8 <_ZdlPv>
    80005494:	00813083          	ld	ra,8(sp)
    80005498:	00013403          	ld	s0,0(sp)
    8000549c:	01010113          	addi	sp,sp,16
    800054a0:	00008067          	ret

00000000800054a4 <_ZN12ProducerSyncD0Ev>:
class ProducerSync:public Thread {
    800054a4:	ff010113          	addi	sp,sp,-16
    800054a8:	00113423          	sd	ra,8(sp)
    800054ac:	00813023          	sd	s0,0(sp)
    800054b0:	01010413          	addi	s0,sp,16
    800054b4:	ffffd097          	auipc	ra,0xffffd
    800054b8:	c34080e7          	jalr	-972(ra) # 800020e8 <_ZdlPv>
    800054bc:	00813083          	ld	ra,8(sp)
    800054c0:	00013403          	ld	s0,0(sp)
    800054c4:	01010113          	addi	sp,sp,16
    800054c8:	00008067          	ret

00000000800054cc <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    800054cc:	ff010113          	addi	sp,sp,-16
    800054d0:	00113423          	sd	ra,8(sp)
    800054d4:	00813023          	sd	s0,0(sp)
    800054d8:	01010413          	addi	s0,sp,16
    800054dc:	ffffd097          	auipc	ra,0xffffd
    800054e0:	c0c080e7          	jalr	-1012(ra) # 800020e8 <_ZdlPv>
    800054e4:	00813083          	ld	ra,8(sp)
    800054e8:	00013403          	ld	s0,0(sp)
    800054ec:	01010113          	addi	sp,sp,16
    800054f0:	00008067          	ret

00000000800054f4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800054f4:	ff010113          	addi	sp,sp,-16
    800054f8:	00113423          	sd	ra,8(sp)
    800054fc:	00813023          	sd	s0,0(sp)
    80005500:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005504:	02053583          	ld	a1,32(a0)
    80005508:	fffff097          	auipc	ra,0xfffff
    8000550c:	7dc080e7          	jalr	2012(ra) # 80004ce4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005510:	00813083          	ld	ra,8(sp)
    80005514:	00013403          	ld	s0,0(sp)
    80005518:	01010113          	addi	sp,sp,16
    8000551c:	00008067          	ret

0000000080005520 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005520:	ff010113          	addi	sp,sp,-16
    80005524:	00113423          	sd	ra,8(sp)
    80005528:	00813023          	sd	s0,0(sp)
    8000552c:	01010413          	addi	s0,sp,16
        producer(td);
    80005530:	02053583          	ld	a1,32(a0)
    80005534:	00000097          	auipc	ra,0x0
    80005538:	878080e7          	jalr	-1928(ra) # 80004dac <_ZN12ProducerSync8producerEPv>
    }
    8000553c:	00813083          	ld	ra,8(sp)
    80005540:	00013403          	ld	s0,0(sp)
    80005544:	01010113          	addi	sp,sp,16
    80005548:	00008067          	ret

000000008000554c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000554c:	ff010113          	addi	sp,sp,-16
    80005550:	00113423          	sd	ra,8(sp)
    80005554:	00813023          	sd	s0,0(sp)
    80005558:	01010413          	addi	s0,sp,16
        consumer(td);
    8000555c:	02053583          	ld	a1,32(a0)
    80005560:	00000097          	auipc	ra,0x0
    80005564:	8f0080e7          	jalr	-1808(ra) # 80004e50 <_ZN12ConsumerSync8consumerEPv>
    }
    80005568:	00813083          	ld	ra,8(sp)
    8000556c:	00013403          	ld	s0,0(sp)
    80005570:	01010113          	addi	sp,sp,16
    80005574:	00008067          	ret

0000000080005578 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005578:	fe010113          	addi	sp,sp,-32
    8000557c:	00113c23          	sd	ra,24(sp)
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00913423          	sd	s1,8(sp)
    80005588:	01213023          	sd	s2,0(sp)
    8000558c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005590:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005594:	00600493          	li	s1,6
    while (--i > 0) {
    80005598:	fff4849b          	addiw	s1,s1,-1
    8000559c:	04905463          	blez	s1,800055e4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800055a0:	00004517          	auipc	a0,0x4
    800055a4:	74850513          	addi	a0,a0,1864 # 80009ce8 <_ZTV12ConsumerSync+0x28>
    800055a8:	00000097          	auipc	ra,0x0
    800055ac:	10c080e7          	jalr	268(ra) # 800056b4 <_Z11printStringPKc>
        printInt(sleep_time);
    800055b0:	00000613          	li	a2,0
    800055b4:	00a00593          	li	a1,10
    800055b8:	0009051b          	sext.w	a0,s2
    800055bc:	00000097          	auipc	ra,0x0
    800055c0:	2a4080e7          	jalr	676(ra) # 80005860 <_Z8printIntiii>
        printString(" !\n");
    800055c4:	00004517          	auipc	a0,0x4
    800055c8:	72c50513          	addi	a0,a0,1836 # 80009cf0 <_ZTV12ConsumerSync+0x30>
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	0e8080e7          	jalr	232(ra) # 800056b4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800055d4:	00090513          	mv	a0,s2
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	614080e7          	jalr	1556(ra) # 80001bec <_Z10time_sleepm>
    while (--i > 0) {
    800055e0:	fb9ff06f          	j	80005598 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800055e4:	00a00793          	li	a5,10
    800055e8:	02f95933          	divu	s2,s2,a5
    800055ec:	fff90913          	addi	s2,s2,-1
    800055f0:	00006797          	auipc	a5,0x6
    800055f4:	47878793          	addi	a5,a5,1144 # 8000ba68 <_ZL8finished>
    800055f8:	01278933          	add	s2,a5,s2
    800055fc:	00100793          	li	a5,1
    80005600:	00f90023          	sb	a5,0(s2)
}
    80005604:	01813083          	ld	ra,24(sp)
    80005608:	01013403          	ld	s0,16(sp)
    8000560c:	00813483          	ld	s1,8(sp)
    80005610:	00013903          	ld	s2,0(sp)
    80005614:	02010113          	addi	sp,sp,32
    80005618:	00008067          	ret

000000008000561c <_Z12testSleepingv>:

void testSleeping() {
    8000561c:	fc010113          	addi	sp,sp,-64
    80005620:	02113c23          	sd	ra,56(sp)
    80005624:	02813823          	sd	s0,48(sp)
    80005628:	02913423          	sd	s1,40(sp)
    8000562c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005630:	00a00793          	li	a5,10
    80005634:	fcf43823          	sd	a5,-48(s0)
    80005638:	01400793          	li	a5,20
    8000563c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005640:	00000493          	li	s1,0
    80005644:	00100793          	li	a5,1
    80005648:	0297c863          	blt	a5,s1,80005678 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000564c:	00349513          	slli	a0,s1,0x3
    80005650:	fd040793          	addi	a5,s0,-48
    80005654:	00a78633          	add	a2,a5,a0
    80005658:	00000597          	auipc	a1,0x0
    8000565c:	f2058593          	addi	a1,a1,-224 # 80005578 <_ZL9sleepyRunPv>
    80005660:	fc040793          	addi	a5,s0,-64
    80005664:	00a78533          	add	a0,a5,a0
    80005668:	ffffc097          	auipc	ra,0xffffc
    8000566c:	2a4080e7          	jalr	676(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005670:	0014849b          	addiw	s1,s1,1
    80005674:	fd1ff06f          	j	80005644 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    80005678:	00006797          	auipc	a5,0x6
    8000567c:	3f078793          	addi	a5,a5,1008 # 8000ba68 <_ZL8finished>
    80005680:	0007c783          	lbu	a5,0(a5)
    80005684:	0ff7f793          	andi	a5,a5,255
    80005688:	fe0788e3          	beqz	a5,80005678 <_Z12testSleepingv+0x5c>
    8000568c:	00006797          	auipc	a5,0x6
    80005690:	3dc78793          	addi	a5,a5,988 # 8000ba68 <_ZL8finished>
    80005694:	0017c783          	lbu	a5,1(a5)
    80005698:	0ff7f793          	andi	a5,a5,255
    8000569c:	fc078ee3          	beqz	a5,80005678 <_Z12testSleepingv+0x5c>
}
    800056a0:	03813083          	ld	ra,56(sp)
    800056a4:	03013403          	ld	s0,48(sp)
    800056a8:	02813483          	ld	s1,40(sp)
    800056ac:	04010113          	addi	sp,sp,64
    800056b0:	00008067          	ret

00000000800056b4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800056b4:	fe010113          	addi	sp,sp,-32
    800056b8:	00113c23          	sd	ra,24(sp)
    800056bc:	00813823          	sd	s0,16(sp)
    800056c0:	00913423          	sd	s1,8(sp)
    800056c4:	02010413          	addi	s0,sp,32
    800056c8:	00050493          	mv	s1,a0
    LOCK();
    800056cc:	00100613          	li	a2,1
    800056d0:	00000593          	li	a1,0
    800056d4:	00006517          	auipc	a0,0x6
    800056d8:	39c50513          	addi	a0,a0,924 # 8000ba70 <lockPrint>
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	a48080e7          	jalr	-1464(ra) # 80001124 <copy_and_swap>
    800056e4:	00050863          	beqz	a0,800056f4 <_Z11printStringPKc+0x40>
    800056e8:	ffffc097          	auipc	ra,0xffffc
    800056ec:	2d4080e7          	jalr	724(ra) # 800019bc <_Z15thread_dispatchv>
    800056f0:	fddff06f          	j	800056cc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800056f4:	0004c503          	lbu	a0,0(s1)
    800056f8:	00050a63          	beqz	a0,8000570c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	590080e7          	jalr	1424(ra) # 80001c8c <_Z4putcc>
        string++;
    80005704:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005708:	fedff06f          	j	800056f4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000570c:	00000613          	li	a2,0
    80005710:	00100593          	li	a1,1
    80005714:	00006517          	auipc	a0,0x6
    80005718:	35c50513          	addi	a0,a0,860 # 8000ba70 <lockPrint>
    8000571c:	ffffc097          	auipc	ra,0xffffc
    80005720:	a08080e7          	jalr	-1528(ra) # 80001124 <copy_and_swap>
    80005724:	fe0514e3          	bnez	a0,8000570c <_Z11printStringPKc+0x58>
}
    80005728:	01813083          	ld	ra,24(sp)
    8000572c:	01013403          	ld	s0,16(sp)
    80005730:	00813483          	ld	s1,8(sp)
    80005734:	02010113          	addi	sp,sp,32
    80005738:	00008067          	ret

000000008000573c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000573c:	fd010113          	addi	sp,sp,-48
    80005740:	02113423          	sd	ra,40(sp)
    80005744:	02813023          	sd	s0,32(sp)
    80005748:	00913c23          	sd	s1,24(sp)
    8000574c:	01213823          	sd	s2,16(sp)
    80005750:	01313423          	sd	s3,8(sp)
    80005754:	01413023          	sd	s4,0(sp)
    80005758:	03010413          	addi	s0,sp,48
    8000575c:	00050993          	mv	s3,a0
    80005760:	00058a13          	mv	s4,a1
    LOCK();
    80005764:	00100613          	li	a2,1
    80005768:	00000593          	li	a1,0
    8000576c:	00006517          	auipc	a0,0x6
    80005770:	30450513          	addi	a0,a0,772 # 8000ba70 <lockPrint>
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	9b0080e7          	jalr	-1616(ra) # 80001124 <copy_and_swap>
    8000577c:	00050863          	beqz	a0,8000578c <_Z9getStringPci+0x50>
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	23c080e7          	jalr	572(ra) # 800019bc <_Z15thread_dispatchv>
    80005788:	fddff06f          	j	80005764 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000578c:	00000493          	li	s1,0
    80005790:	0014891b          	addiw	s2,s1,1
    80005794:	03495a63          	bge	s2,s4,800057c8 <_Z9getStringPci+0x8c>
        cc = getc();
    80005798:	ffffc097          	auipc	ra,0xffffc
    8000579c:	4a4080e7          	jalr	1188(ra) # 80001c3c <_Z4getcv>
        if(cc < 1)
    800057a0:	02050463          	beqz	a0,800057c8 <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    800057a4:	009984b3          	add	s1,s3,s1
    800057a8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800057ac:	00a00793          	li	a5,10
    800057b0:	00f50a63          	beq	a0,a5,800057c4 <_Z9getStringPci+0x88>
        buf[i++] = c;
    800057b4:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    800057b8:	00d00793          	li	a5,13
    800057bc:	fcf51ae3          	bne	a0,a5,80005790 <_Z9getStringPci+0x54>
    800057c0:	0080006f          	j	800057c8 <_Z9getStringPci+0x8c>
        buf[i++] = c;
    800057c4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800057c8:	009984b3          	add	s1,s3,s1
    800057cc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800057d0:	00000613          	li	a2,0
    800057d4:	00100593          	li	a1,1
    800057d8:	00006517          	auipc	a0,0x6
    800057dc:	29850513          	addi	a0,a0,664 # 8000ba70 <lockPrint>
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	944080e7          	jalr	-1724(ra) # 80001124 <copy_and_swap>
    800057e8:	fe0514e3          	bnez	a0,800057d0 <_Z9getStringPci+0x94>
    return buf;
}
    800057ec:	00098513          	mv	a0,s3
    800057f0:	02813083          	ld	ra,40(sp)
    800057f4:	02013403          	ld	s0,32(sp)
    800057f8:	01813483          	ld	s1,24(sp)
    800057fc:	01013903          	ld	s2,16(sp)
    80005800:	00813983          	ld	s3,8(sp)
    80005804:	00013a03          	ld	s4,0(sp)
    80005808:	03010113          	addi	sp,sp,48
    8000580c:	00008067          	ret

0000000080005810 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005810:	ff010113          	addi	sp,sp,-16
    80005814:	00813423          	sd	s0,8(sp)
    80005818:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    8000581c:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    80005820:	00054603          	lbu	a2,0(a0)
    80005824:	fd06069b          	addiw	a3,a2,-48
    80005828:	0ff6f693          	andi	a3,a3,255
    8000582c:	00900713          	li	a4,9
    80005830:	02d76063          	bltu	a4,a3,80005850 <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    80005834:	0027969b          	slliw	a3,a5,0x2
    80005838:	00f687bb          	addw	a5,a3,a5
    8000583c:	0017971b          	slliw	a4,a5,0x1
    80005840:	00150513          	addi	a0,a0,1
    80005844:	00c707bb          	addw	a5,a4,a2
    80005848:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    8000584c:	fd5ff06f          	j	80005820 <_Z11stringToIntPKc+0x10>
    return n;
}
    80005850:	00078513          	mv	a0,a5
    80005854:	00813403          	ld	s0,8(sp)
    80005858:	01010113          	addi	sp,sp,16
    8000585c:	00008067          	ret

0000000080005860 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005860:	fc010113          	addi	sp,sp,-64
    80005864:	02113c23          	sd	ra,56(sp)
    80005868:	02813823          	sd	s0,48(sp)
    8000586c:	02913423          	sd	s1,40(sp)
    80005870:	03213023          	sd	s2,32(sp)
    80005874:	01313c23          	sd	s3,24(sp)
    80005878:	04010413          	addi	s0,sp,64
    8000587c:	00050493          	mv	s1,a0
    80005880:	00058913          	mv	s2,a1
    80005884:	00060993          	mv	s3,a2
    LOCK();
    80005888:	00100613          	li	a2,1
    8000588c:	00000593          	li	a1,0
    80005890:	00006517          	auipc	a0,0x6
    80005894:	1e050513          	addi	a0,a0,480 # 8000ba70 <lockPrint>
    80005898:	ffffc097          	auipc	ra,0xffffc
    8000589c:	88c080e7          	jalr	-1908(ra) # 80001124 <copy_and_swap>
    800058a0:	00050863          	beqz	a0,800058b0 <_Z8printIntiii+0x50>
    800058a4:	ffffc097          	auipc	ra,0xffffc
    800058a8:	118080e7          	jalr	280(ra) # 800019bc <_Z15thread_dispatchv>
    800058ac:	fddff06f          	j	80005888 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800058b0:	00098463          	beqz	s3,800058b8 <_Z8printIntiii+0x58>
    800058b4:	0004ca63          	bltz	s1,800058c8 <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800058b8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800058bc:	00000593          	li	a1,0
    }

    i = 0;
    800058c0:	00000613          	li	a2,0
    800058c4:	0180006f          	j	800058dc <_Z8printIntiii+0x7c>
        x = -xx;
    800058c8:	4090053b          	negw	a0,s1
        neg = 1;
    800058cc:	00100593          	li	a1,1
        x = -xx;
    800058d0:	ff1ff06f          	j	800058c0 <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    800058d4:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    800058d8:	00048613          	mv	a2,s1
    800058dc:	0009079b          	sext.w	a5,s2
    800058e0:	02f5773b          	remuw	a4,a0,a5
    800058e4:	0016049b          	addiw	s1,a2,1
    800058e8:	02071693          	slli	a3,a4,0x20
    800058ec:	0206d693          	srli	a3,a3,0x20
    800058f0:	00006717          	auipc	a4,0x6
    800058f4:	f7070713          	addi	a4,a4,-144 # 8000b860 <digits>
    800058f8:	00d70733          	add	a4,a4,a3
    800058fc:	00074683          	lbu	a3,0(a4)
    80005900:	fd040713          	addi	a4,s0,-48
    80005904:	00c70733          	add	a4,a4,a2
    80005908:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000590c:	02f5573b          	divuw	a4,a0,a5
    80005910:	0007069b          	sext.w	a3,a4
    80005914:	fcf570e3          	bgeu	a0,a5,800058d4 <_Z8printIntiii+0x74>
    if(neg)
    80005918:	00058c63          	beqz	a1,80005930 <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    8000591c:	fd040793          	addi	a5,s0,-48
    80005920:	009784b3          	add	s1,a5,s1
    80005924:	02d00793          	li	a5,45
    80005928:	fef48823          	sb	a5,-16(s1)
    8000592c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005930:	fff4849b          	addiw	s1,s1,-1
    80005934:	0004ce63          	bltz	s1,80005950 <_Z8printIntiii+0xf0>
        putc(buf[i]);
    80005938:	fd040793          	addi	a5,s0,-48
    8000593c:	009787b3          	add	a5,a5,s1
    80005940:	ff07c503          	lbu	a0,-16(a5)
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	348080e7          	jalr	840(ra) # 80001c8c <_Z4putcc>
    8000594c:	fe5ff06f          	j	80005930 <_Z8printIntiii+0xd0>

    UNLOCK();
    80005950:	00000613          	li	a2,0
    80005954:	00100593          	li	a1,1
    80005958:	00006517          	auipc	a0,0x6
    8000595c:	11850513          	addi	a0,a0,280 # 8000ba70 <lockPrint>
    80005960:	ffffb097          	auipc	ra,0xffffb
    80005964:	7c4080e7          	jalr	1988(ra) # 80001124 <copy_and_swap>
    80005968:	fe0514e3          	bnez	a0,80005950 <_Z8printIntiii+0xf0>
    8000596c:	03813083          	ld	ra,56(sp)
    80005970:	03013403          	ld	s0,48(sp)
    80005974:	02813483          	ld	s1,40(sp)
    80005978:	02013903          	ld	s2,32(sp)
    8000597c:	01813983          	ld	s3,24(sp)
    80005980:	04010113          	addi	sp,sp,64
    80005984:	00008067          	ret

0000000080005988 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80005988:	fe010113          	addi	sp,sp,-32
    8000598c:	00113c23          	sd	ra,24(sp)
    80005990:	00813823          	sd	s0,16(sp)
    80005994:	00913423          	sd	s1,8(sp)
    80005998:	01213023          	sd	s2,0(sp)
    8000599c:	02010413          	addi	s0,sp,32
    800059a0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800059a4:	00000913          	li	s2,0
    800059a8:	00c0006f          	j	800059b4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	010080e7          	jalr	16(ra) # 800019bc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	288080e7          	jalr	648(ra) # 80001c3c <_Z4getcv>
    800059bc:	0005059b          	sext.w	a1,a0
    800059c0:	01b00793          	li	a5,27
    800059c4:	02f58a63          	beq	a1,a5,800059f8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800059c8:	0084b503          	ld	a0,8(s1)
    800059cc:	ffffe097          	auipc	ra,0xffffe
    800059d0:	848080e7          	jalr	-1976(ra) # 80003214 <_ZN6Buffer3putEi>
        i++;
    800059d4:	0019079b          	addiw	a5,s2,1
    800059d8:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    800059dc:	0004a683          	lw	a3,0(s1)
    800059e0:	0026971b          	slliw	a4,a3,0x2
    800059e4:	00d7073b          	addw	a4,a4,a3
    800059e8:	0017169b          	slliw	a3,a4,0x1
    800059ec:	02d7e7bb          	remw	a5,a5,a3
    800059f0:	fc0792e3          	bnez	a5,800059b4 <_ZL16producerKeyboardPv+0x2c>
    800059f4:	fb9ff06f          	j	800059ac <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800059f8:	00100793          	li	a5,1
    800059fc:	00006717          	auipc	a4,0x6
    80005a00:	06f72e23          	sw	a5,124(a4) # 8000ba78 <_ZL9threadEnd>
    data->buffer->put('!');
    80005a04:	02100593          	li	a1,33
    80005a08:	0084b503          	ld	a0,8(s1)
    80005a0c:	ffffe097          	auipc	ra,0xffffe
    80005a10:	808080e7          	jalr	-2040(ra) # 80003214 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80005a14:	0104b503          	ld	a0,16(s1)
    80005a18:	ffffc097          	auipc	ra,0xffffc
    80005a1c:	184080e7          	jalr	388(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005a20:	01813083          	ld	ra,24(sp)
    80005a24:	01013403          	ld	s0,16(sp)
    80005a28:	00813483          	ld	s1,8(sp)
    80005a2c:	00013903          	ld	s2,0(sp)
    80005a30:	02010113          	addi	sp,sp,32
    80005a34:	00008067          	ret

0000000080005a38 <_ZL8producerPv>:

static void producer(void *arg) {
    80005a38:	fe010113          	addi	sp,sp,-32
    80005a3c:	00113c23          	sd	ra,24(sp)
    80005a40:	00813823          	sd	s0,16(sp)
    80005a44:	00913423          	sd	s1,8(sp)
    80005a48:	01213023          	sd	s2,0(sp)
    80005a4c:	02010413          	addi	s0,sp,32
    80005a50:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005a54:	00000913          	li	s2,0
    80005a58:	00c0006f          	j	80005a64 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	f60080e7          	jalr	-160(ra) # 800019bc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80005a64:	00006797          	auipc	a5,0x6
    80005a68:	01478793          	addi	a5,a5,20 # 8000ba78 <_ZL9threadEnd>
    80005a6c:	0007a783          	lw	a5,0(a5)
    80005a70:	0007879b          	sext.w	a5,a5
    80005a74:	02079e63          	bnez	a5,80005ab0 <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    80005a78:	0004a583          	lw	a1,0(s1)
    80005a7c:	0305859b          	addiw	a1,a1,48
    80005a80:	0084b503          	ld	a0,8(s1)
    80005a84:	ffffd097          	auipc	ra,0xffffd
    80005a88:	790080e7          	jalr	1936(ra) # 80003214 <_ZN6Buffer3putEi>
        i++;
    80005a8c:	0019079b          	addiw	a5,s2,1
    80005a90:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005a94:	0004a683          	lw	a3,0(s1)
    80005a98:	0026971b          	slliw	a4,a3,0x2
    80005a9c:	00d7073b          	addw	a4,a4,a3
    80005aa0:	0017169b          	slliw	a3,a4,0x1
    80005aa4:	02d7e7bb          	remw	a5,a5,a3
    80005aa8:	fa079ee3          	bnez	a5,80005a64 <_ZL8producerPv+0x2c>
    80005aac:	fb1ff06f          	j	80005a5c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80005ab0:	0104b503          	ld	a0,16(s1)
    80005ab4:	ffffc097          	auipc	ra,0xffffc
    80005ab8:	0e8080e7          	jalr	232(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005abc:	01813083          	ld	ra,24(sp)
    80005ac0:	01013403          	ld	s0,16(sp)
    80005ac4:	00813483          	ld	s1,8(sp)
    80005ac8:	00013903          	ld	s2,0(sp)
    80005acc:	02010113          	addi	sp,sp,32
    80005ad0:	00008067          	ret

0000000080005ad4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80005ad4:	fd010113          	addi	sp,sp,-48
    80005ad8:	02113423          	sd	ra,40(sp)
    80005adc:	02813023          	sd	s0,32(sp)
    80005ae0:	00913c23          	sd	s1,24(sp)
    80005ae4:	01213823          	sd	s2,16(sp)
    80005ae8:	01313423          	sd	s3,8(sp)
    80005aec:	03010413          	addi	s0,sp,48
    80005af0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005af4:	00000993          	li	s3,0
    80005af8:	01c0006f          	j	80005b14 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80005afc:	ffffc097          	auipc	ra,0xffffc
    80005b00:	ec0080e7          	jalr	-320(ra) # 800019bc <_Z15thread_dispatchv>
    80005b04:	0580006f          	j	80005b5c <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005b08:	00a00513          	li	a0,10
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	180080e7          	jalr	384(ra) # 80001c8c <_Z4putcc>
    while (!threadEnd) {
    80005b14:	00006797          	auipc	a5,0x6
    80005b18:	f6478793          	addi	a5,a5,-156 # 8000ba78 <_ZL9threadEnd>
    80005b1c:	0007a783          	lw	a5,0(a5)
    80005b20:	0007879b          	sext.w	a5,a5
    80005b24:	04079463          	bnez	a5,80005b6c <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    80005b28:	00893503          	ld	a0,8(s2)
    80005b2c:	ffffd097          	auipc	ra,0xffffd
    80005b30:	778080e7          	jalr	1912(ra) # 800032a4 <_ZN6Buffer3getEv>
        i++;
    80005b34:	0019849b          	addiw	s1,s3,1
    80005b38:	0004899b          	sext.w	s3,s1
        putc(key);
    80005b3c:	0ff57513          	andi	a0,a0,255
    80005b40:	ffffc097          	auipc	ra,0xffffc
    80005b44:	14c080e7          	jalr	332(ra) # 80001c8c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005b48:	00092703          	lw	a4,0(s2)
    80005b4c:	0027179b          	slliw	a5,a4,0x2
    80005b50:	00e787bb          	addw	a5,a5,a4
    80005b54:	02f4e7bb          	remw	a5,s1,a5
    80005b58:	fa0782e3          	beqz	a5,80005afc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80005b5c:	05000793          	li	a5,80
    80005b60:	02f4e4bb          	remw	s1,s1,a5
    80005b64:	fa0498e3          	bnez	s1,80005b14 <_ZL8consumerPv+0x40>
    80005b68:	fa1ff06f          	j	80005b08 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    80005b6c:	00893503          	ld	a0,8(s2)
    80005b70:	ffffd097          	auipc	ra,0xffffd
    80005b74:	7c0080e7          	jalr	1984(ra) # 80003330 <_ZN6Buffer6getCntEv>
    80005b78:	02a05063          	blez	a0,80005b98 <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    80005b7c:	00893503          	ld	a0,8(s2)
    80005b80:	ffffd097          	auipc	ra,0xffffd
    80005b84:	724080e7          	jalr	1828(ra) # 800032a4 <_ZN6Buffer3getEv>
        putc(key);
    80005b88:	0ff57513          	andi	a0,a0,255
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	100080e7          	jalr	256(ra) # 80001c8c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80005b94:	fd9ff06f          	j	80005b6c <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    80005b98:	01093503          	ld	a0,16(s2)
    80005b9c:	ffffc097          	auipc	ra,0xffffc
    80005ba0:	000080e7          	jalr	ra # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005ba4:	02813083          	ld	ra,40(sp)
    80005ba8:	02013403          	ld	s0,32(sp)
    80005bac:	01813483          	ld	s1,24(sp)
    80005bb0:	01013903          	ld	s2,16(sp)
    80005bb4:	00813983          	ld	s3,8(sp)
    80005bb8:	03010113          	addi	sp,sp,48
    80005bbc:	00008067          	ret

0000000080005bc0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80005bc0:	f9010113          	addi	sp,sp,-112
    80005bc4:	06113423          	sd	ra,104(sp)
    80005bc8:	06813023          	sd	s0,96(sp)
    80005bcc:	04913c23          	sd	s1,88(sp)
    80005bd0:	05213823          	sd	s2,80(sp)
    80005bd4:	05313423          	sd	s3,72(sp)
    80005bd8:	05413023          	sd	s4,64(sp)
    80005bdc:	03513c23          	sd	s5,56(sp)
    80005be0:	03613823          	sd	s6,48(sp)
    80005be4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80005be8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80005bec:	00004517          	auipc	a0,0x4
    80005bf0:	c1c50513          	addi	a0,a0,-996 # 80009808 <_ZTV8Consumer+0x28>
    80005bf4:	00000097          	auipc	ra,0x0
    80005bf8:	ac0080e7          	jalr	-1344(ra) # 800056b4 <_Z11printStringPKc>
    getString(input, 30);
    80005bfc:	01e00593          	li	a1,30
    80005c00:	fa040513          	addi	a0,s0,-96
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	b38080e7          	jalr	-1224(ra) # 8000573c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005c0c:	fa040513          	addi	a0,s0,-96
    80005c10:	00000097          	auipc	ra,0x0
    80005c14:	c00080e7          	jalr	-1024(ra) # 80005810 <_Z11stringToIntPKc>
    80005c18:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005c1c:	00004517          	auipc	a0,0x4
    80005c20:	c0c50513          	addi	a0,a0,-1012 # 80009828 <_ZTV8Consumer+0x48>
    80005c24:	00000097          	auipc	ra,0x0
    80005c28:	a90080e7          	jalr	-1392(ra) # 800056b4 <_Z11printStringPKc>
    getString(input, 30);
    80005c2c:	01e00593          	li	a1,30
    80005c30:	fa040513          	addi	a0,s0,-96
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	b08080e7          	jalr	-1272(ra) # 8000573c <_Z9getStringPci>
    n = stringToInt(input);
    80005c3c:	fa040513          	addi	a0,s0,-96
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	bd0080e7          	jalr	-1072(ra) # 80005810 <_Z11stringToIntPKc>
    80005c48:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005c4c:	00004517          	auipc	a0,0x4
    80005c50:	bfc50513          	addi	a0,a0,-1028 # 80009848 <_ZTV8Consumer+0x68>
    80005c54:	00000097          	auipc	ra,0x0
    80005c58:	a60080e7          	jalr	-1440(ra) # 800056b4 <_Z11printStringPKc>
    80005c5c:	00000613          	li	a2,0
    80005c60:	00a00593          	li	a1,10
    80005c64:	00090513          	mv	a0,s2
    80005c68:	00000097          	auipc	ra,0x0
    80005c6c:	bf8080e7          	jalr	-1032(ra) # 80005860 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005c70:	00004517          	auipc	a0,0x4
    80005c74:	bf050513          	addi	a0,a0,-1040 # 80009860 <_ZTV8Consumer+0x80>
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	a3c080e7          	jalr	-1476(ra) # 800056b4 <_Z11printStringPKc>
    80005c80:	00000613          	li	a2,0
    80005c84:	00a00593          	li	a1,10
    80005c88:	00048513          	mv	a0,s1
    80005c8c:	00000097          	auipc	ra,0x0
    80005c90:	bd4080e7          	jalr	-1068(ra) # 80005860 <_Z8printIntiii>
    printString(".\n");
    80005c94:	00004517          	auipc	a0,0x4
    80005c98:	be450513          	addi	a0,a0,-1052 # 80009878 <_ZTV8Consumer+0x98>
    80005c9c:	00000097          	auipc	ra,0x0
    80005ca0:	a18080e7          	jalr	-1512(ra) # 800056b4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005ca4:	0324c463          	blt	s1,s2,80005ccc <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    80005ca8:	03205c63          	blez	s2,80005ce0 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    80005cac:	03800513          	li	a0,56
    80005cb0:	ffffc097          	auipc	ra,0xffffc
    80005cb4:	3b8080e7          	jalr	952(ra) # 80002068 <_Znwm>
    80005cb8:	00050a13          	mv	s4,a0
    80005cbc:	00048593          	mv	a1,s1
    80005cc0:	ffffd097          	auipc	ra,0xffffd
    80005cc4:	4b8080e7          	jalr	1208(ra) # 80003178 <_ZN6BufferC1Ei>
    80005cc8:	0300006f          	j	80005cf8 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005ccc:	00004517          	auipc	a0,0x4
    80005cd0:	bb450513          	addi	a0,a0,-1100 # 80009880 <_ZTV8Consumer+0xa0>
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	9e0080e7          	jalr	-1568(ra) # 800056b4 <_Z11printStringPKc>
        return;
    80005cdc:	0140006f          	j	80005cf0 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005ce0:	00004517          	auipc	a0,0x4
    80005ce4:	be050513          	addi	a0,a0,-1056 # 800098c0 <_ZTV8Consumer+0xe0>
    80005ce8:	00000097          	auipc	ra,0x0
    80005cec:	9cc080e7          	jalr	-1588(ra) # 800056b4 <_Z11printStringPKc>
        return;
    80005cf0:	000b0113          	mv	sp,s6
    80005cf4:	1680006f          	j	80005e5c <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80005cf8:	00000593          	li	a1,0
    80005cfc:	00006517          	auipc	a0,0x6
    80005d00:	d8450513          	addi	a0,a0,-636 # 8000ba80 <_ZL10waitForAll>
    80005d04:	ffffc097          	auipc	ra,0xffffc
    80005d08:	d04080e7          	jalr	-764(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    80005d0c:	00391793          	slli	a5,s2,0x3
    80005d10:	00f78793          	addi	a5,a5,15
    80005d14:	ff07f793          	andi	a5,a5,-16
    80005d18:	40f10133          	sub	sp,sp,a5
    80005d1c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80005d20:	0019079b          	addiw	a5,s2,1
    80005d24:	00179713          	slli	a4,a5,0x1
    80005d28:	00f70733          	add	a4,a4,a5
    80005d2c:	00371793          	slli	a5,a4,0x3
    80005d30:	00f78793          	addi	a5,a5,15
    80005d34:	ff07f793          	andi	a5,a5,-16
    80005d38:	40f10133          	sub	sp,sp,a5
    80005d3c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80005d40:	00191713          	slli	a4,s2,0x1
    80005d44:	012706b3          	add	a3,a4,s2
    80005d48:	00369793          	slli	a5,a3,0x3
    80005d4c:	00f987b3          	add	a5,s3,a5
    80005d50:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005d54:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80005d58:	00006697          	auipc	a3,0x6
    80005d5c:	d2868693          	addi	a3,a3,-728 # 8000ba80 <_ZL10waitForAll>
    80005d60:	0006b683          	ld	a3,0(a3)
    80005d64:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80005d68:	012707b3          	add	a5,a4,s2
    80005d6c:	00379613          	slli	a2,a5,0x3
    80005d70:	00c98633          	add	a2,s3,a2
    80005d74:	00000597          	auipc	a1,0x0
    80005d78:	d6058593          	addi	a1,a1,-672 # 80005ad4 <_ZL8consumerPv>
    80005d7c:	f9840513          	addi	a0,s0,-104
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	b8c080e7          	jalr	-1140(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005d88:	00000493          	li	s1,0
    80005d8c:	0280006f          	j	80005db4 <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    80005d90:	00000597          	auipc	a1,0x0
    80005d94:	bf858593          	addi	a1,a1,-1032 # 80005988 <_ZL16producerKeyboardPv>
                      data + i);
    80005d98:	00171793          	slli	a5,a4,0x1
    80005d9c:	00e787b3          	add	a5,a5,a4
    80005da0:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    80005da4:	00c98633          	add	a2,s3,a2
    80005da8:	ffffc097          	auipc	ra,0xffffc
    80005dac:	b64080e7          	jalr	-1180(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005db0:	0014849b          	addiw	s1,s1,1
    80005db4:	0524d463          	bge	s1,s2,80005dfc <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    80005db8:	00149713          	slli	a4,s1,0x1
    80005dbc:	00970733          	add	a4,a4,s1
    80005dc0:	00371793          	slli	a5,a4,0x3
    80005dc4:	00f987b3          	add	a5,s3,a5
    80005dc8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005dcc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80005dd0:	00006717          	auipc	a4,0x6
    80005dd4:	cb070713          	addi	a4,a4,-848 # 8000ba80 <_ZL10waitForAll>
    80005dd8:	00073703          	ld	a4,0(a4)
    80005ddc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80005de0:	00048713          	mv	a4,s1
    80005de4:	00349513          	slli	a0,s1,0x3
    80005de8:	00aa8533          	add	a0,s5,a0
    80005dec:	fa9052e3          	blez	s1,80005d90 <_Z22producerConsumer_C_APIv+0x1d0>
    80005df0:	00000597          	auipc	a1,0x0
    80005df4:	c4858593          	addi	a1,a1,-952 # 80005a38 <_ZL8producerPv>
    80005df8:	fa1ff06f          	j	80005d98 <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    80005dfc:	ffffc097          	auipc	ra,0xffffc
    80005e00:	bc0080e7          	jalr	-1088(ra) # 800019bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005e04:	00000493          	li	s1,0
    80005e08:	02994063          	blt	s2,s1,80005e28 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    80005e0c:	00006797          	auipc	a5,0x6
    80005e10:	c7478793          	addi	a5,a5,-908 # 8000ba80 <_ZL10waitForAll>
    80005e14:	0007b503          	ld	a0,0(a5)
    80005e18:	ffffc097          	auipc	ra,0xffffc
    80005e1c:	d34080e7          	jalr	-716(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80005e20:	0014849b          	addiw	s1,s1,1
    80005e24:	fe5ff06f          	j	80005e08 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    80005e28:	00006797          	auipc	a5,0x6
    80005e2c:	c5878793          	addi	a5,a5,-936 # 8000ba80 <_ZL10waitForAll>
    80005e30:	0007b503          	ld	a0,0(a5)
    80005e34:	ffffc097          	auipc	ra,0xffffc
    80005e38:	cac080e7          	jalr	-852(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    delete buffer;
    80005e3c:	000a0e63          	beqz	s4,80005e58 <_Z22producerConsumer_C_APIv+0x298>
    80005e40:	000a0513          	mv	a0,s4
    80005e44:	ffffd097          	auipc	ra,0xffffd
    80005e48:	574080e7          	jalr	1396(ra) # 800033b8 <_ZN6BufferD1Ev>
    80005e4c:	000a0513          	mv	a0,s4
    80005e50:	ffffc097          	auipc	ra,0xffffc
    80005e54:	298080e7          	jalr	664(ra) # 800020e8 <_ZdlPv>
    80005e58:	000b0113          	mv	sp,s6

}
    80005e5c:	f9040113          	addi	sp,s0,-112
    80005e60:	06813083          	ld	ra,104(sp)
    80005e64:	06013403          	ld	s0,96(sp)
    80005e68:	05813483          	ld	s1,88(sp)
    80005e6c:	05013903          	ld	s2,80(sp)
    80005e70:	04813983          	ld	s3,72(sp)
    80005e74:	04013a03          	ld	s4,64(sp)
    80005e78:	03813a83          	ld	s5,56(sp)
    80005e7c:	03013b03          	ld	s6,48(sp)
    80005e80:	07010113          	addi	sp,sp,112
    80005e84:	00008067          	ret
    80005e88:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80005e8c:	000a0513          	mv	a0,s4
    80005e90:	ffffc097          	auipc	ra,0xffffc
    80005e94:	258080e7          	jalr	600(ra) # 800020e8 <_ZdlPv>
    80005e98:	00048513          	mv	a0,s1
    80005e9c:	00007097          	auipc	ra,0x7
    80005ea0:	cfc080e7          	jalr	-772(ra) # 8000cb98 <_Unwind_Resume>

0000000080005ea4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ea4:	fd010113          	addi	sp,sp,-48
    80005ea8:	02113423          	sd	ra,40(sp)
    80005eac:	02813023          	sd	s0,32(sp)
    80005eb0:	00913c23          	sd	s1,24(sp)
    80005eb4:	01213823          	sd	s2,16(sp)
    80005eb8:	01313423          	sd	s3,8(sp)
    80005ebc:	03010413          	addi	s0,sp,48
    80005ec0:	00050493          	mv	s1,a0
    80005ec4:	00058993          	mv	s3,a1
    80005ec8:	0015879b          	addiw	a5,a1,1
    80005ecc:	0007851b          	sext.w	a0,a5
    80005ed0:	00f4a023          	sw	a5,0(s1)
    80005ed4:	0004a823          	sw	zero,16(s1)
    80005ed8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005edc:	00251513          	slli	a0,a0,0x2
    80005ee0:	ffffc097          	auipc	ra,0xffffc
    80005ee4:	8a0080e7          	jalr	-1888(ra) # 80001780 <_Z9mem_allocm>
    80005ee8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005eec:	01000513          	li	a0,16
    80005ef0:	ffffc097          	auipc	ra,0xffffc
    80005ef4:	178080e7          	jalr	376(ra) # 80002068 <_Znwm>
    80005ef8:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005efc:	00004797          	auipc	a5,0x4
    80005f00:	88478793          	addi	a5,a5,-1916 # 80009780 <_ZTV9Semaphore+0x10>
    80005f04:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005f08:	00000593          	li	a1,0
    80005f0c:	00850513          	addi	a0,a0,8
    80005f10:	ffffc097          	auipc	ra,0xffffc
    80005f14:	af8080e7          	jalr	-1288(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80005f18:	00050463          	beqz	a0,80005f20 <_ZN9BufferCPPC1Ei+0x7c>
            myHandle = nullptr;
    80005f1c:	00093423          	sd	zero,8(s2)
    80005f20:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005f24:	01000513          	li	a0,16
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	140080e7          	jalr	320(ra) # 80002068 <_Znwm>
    80005f30:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005f34:	00004797          	auipc	a5,0x4
    80005f38:	84c78793          	addi	a5,a5,-1972 # 80009780 <_ZTV9Semaphore+0x10>
    80005f3c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005f40:	00098593          	mv	a1,s3
    80005f44:	00850513          	addi	a0,a0,8
    80005f48:	ffffc097          	auipc	ra,0xffffc
    80005f4c:	ac0080e7          	jalr	-1344(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80005f50:	00050463          	beqz	a0,80005f58 <_ZN9BufferCPPC1Ei+0xb4>
            myHandle = nullptr;
    80005f54:	00093423          	sd	zero,8(s2)
    80005f58:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005f5c:	01000513          	li	a0,16
    80005f60:	ffffc097          	auipc	ra,0xffffc
    80005f64:	108080e7          	jalr	264(ra) # 80002068 <_Znwm>
    80005f68:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005f6c:	00004797          	auipc	a5,0x4
    80005f70:	81478793          	addi	a5,a5,-2028 # 80009780 <_ZTV9Semaphore+0x10>
    80005f74:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005f78:	00100593          	li	a1,1
    80005f7c:	00850513          	addi	a0,a0,8
    80005f80:	ffffc097          	auipc	ra,0xffffc
    80005f84:	a88080e7          	jalr	-1400(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80005f88:	00050463          	beqz	a0,80005f90 <_ZN9BufferCPPC1Ei+0xec>
            myHandle = nullptr;
    80005f8c:	00093423          	sd	zero,8(s2)
    80005f90:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f94:	01000513          	li	a0,16
    80005f98:	ffffc097          	auipc	ra,0xffffc
    80005f9c:	0d0080e7          	jalr	208(ra) # 80002068 <_Znwm>
    80005fa0:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005fa4:	00003797          	auipc	a5,0x3
    80005fa8:	7dc78793          	addi	a5,a5,2012 # 80009780 <_ZTV9Semaphore+0x10>
    80005fac:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005fb0:	00100593          	li	a1,1
    80005fb4:	00850513          	addi	a0,a0,8
    80005fb8:	ffffc097          	auipc	ra,0xffffc
    80005fbc:	a50080e7          	jalr	-1456(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80005fc0:	00050463          	beqz	a0,80005fc8 <_ZN9BufferCPPC1Ei+0x124>
            myHandle = nullptr;
    80005fc4:	00093423          	sd	zero,8(s2)
    80005fc8:	0324b823          	sd	s2,48(s1)
}
    80005fcc:	02813083          	ld	ra,40(sp)
    80005fd0:	02013403          	ld	s0,32(sp)
    80005fd4:	01813483          	ld	s1,24(sp)
    80005fd8:	01013903          	ld	s2,16(sp)
    80005fdc:	00813983          	ld	s3,8(sp)
    80005fe0:	03010113          	addi	sp,sp,48
    80005fe4:	00008067          	ret
    80005fe8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005fec:	00090513          	mv	a0,s2
    80005ff0:	ffffc097          	auipc	ra,0xffffc
    80005ff4:	0f8080e7          	jalr	248(ra) # 800020e8 <_ZdlPv>
    80005ff8:	00048513          	mv	a0,s1
    80005ffc:	00007097          	auipc	ra,0x7
    80006000:	b9c080e7          	jalr	-1124(ra) # 8000cb98 <_Unwind_Resume>
    80006004:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006008:	00090513          	mv	a0,s2
    8000600c:	ffffc097          	auipc	ra,0xffffc
    80006010:	0dc080e7          	jalr	220(ra) # 800020e8 <_ZdlPv>
    80006014:	00048513          	mv	a0,s1
    80006018:	00007097          	auipc	ra,0x7
    8000601c:	b80080e7          	jalr	-1152(ra) # 8000cb98 <_Unwind_Resume>
    80006020:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006024:	00090513          	mv	a0,s2
    80006028:	ffffc097          	auipc	ra,0xffffc
    8000602c:	0c0080e7          	jalr	192(ra) # 800020e8 <_ZdlPv>
    80006030:	00048513          	mv	a0,s1
    80006034:	00007097          	auipc	ra,0x7
    80006038:	b64080e7          	jalr	-1180(ra) # 8000cb98 <_Unwind_Resume>
    8000603c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006040:	00090513          	mv	a0,s2
    80006044:	ffffc097          	auipc	ra,0xffffc
    80006048:	0a4080e7          	jalr	164(ra) # 800020e8 <_ZdlPv>
    8000604c:	00048513          	mv	a0,s1
    80006050:	00007097          	auipc	ra,0x7
    80006054:	b48080e7          	jalr	-1208(ra) # 8000cb98 <_Unwind_Resume>

0000000080006058 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006058:	fe010113          	addi	sp,sp,-32
    8000605c:	00113c23          	sd	ra,24(sp)
    80006060:	00813823          	sd	s0,16(sp)
    80006064:	00913423          	sd	s1,8(sp)
    80006068:	01213023          	sd	s2,0(sp)
    8000606c:	02010413          	addi	s0,sp,32
    80006070:	00050493          	mv	s1,a0
    80006074:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006078:	01853783          	ld	a5,24(a0)
        if (myHandle == nullptr) {
    8000607c:	0087b503          	ld	a0,8(a5)
    80006080:	00050663          	beqz	a0,8000608c <_ZN9BufferCPP3putEi+0x34>
        return sem_wait(myHandle);
    80006084:	ffffc097          	auipc	ra,0xffffc
    80006088:	ac8080e7          	jalr	-1336(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    8000608c:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80006090:	0087b503          	ld	a0,8(a5)
    80006094:	00050663          	beqz	a0,800060a0 <_ZN9BufferCPP3putEi+0x48>
        return sem_wait(myHandle);
    80006098:	ffffc097          	auipc	ra,0xffffc
    8000609c:	ab4080e7          	jalr	-1356(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    800060a0:	0084b783          	ld	a5,8(s1)
    800060a4:	0144a703          	lw	a4,20(s1)
    800060a8:	00271713          	slli	a4,a4,0x2
    800060ac:	00e787b3          	add	a5,a5,a4
    800060b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800060b4:	0144a783          	lw	a5,20(s1)
    800060b8:	0017879b          	addiw	a5,a5,1
    800060bc:	0004a703          	lw	a4,0(s1)
    800060c0:	02e7e7bb          	remw	a5,a5,a4
    800060c4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800060c8:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800060cc:	0087b503          	ld	a0,8(a5)
    800060d0:	00050663          	beqz	a0,800060dc <_ZN9BufferCPP3putEi+0x84>
        return sem_signal(myHandle);
    800060d4:	ffffc097          	auipc	ra,0xffffc
    800060d8:	ac8080e7          	jalr	-1336(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    800060dc:	0204b783          	ld	a5,32(s1)
        if (myHandle == nullptr) {
    800060e0:	0087b503          	ld	a0,8(a5)
    800060e4:	00050663          	beqz	a0,800060f0 <_ZN9BufferCPP3putEi+0x98>
        return sem_signal(myHandle);
    800060e8:	ffffc097          	auipc	ra,0xffffc
    800060ec:	ab4080e7          	jalr	-1356(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

}
    800060f0:	01813083          	ld	ra,24(sp)
    800060f4:	01013403          	ld	s0,16(sp)
    800060f8:	00813483          	ld	s1,8(sp)
    800060fc:	00013903          	ld	s2,0(sp)
    80006100:	02010113          	addi	sp,sp,32
    80006104:	00008067          	ret

0000000080006108 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006108:	fe010113          	addi	sp,sp,-32
    8000610c:	00113c23          	sd	ra,24(sp)
    80006110:	00813823          	sd	s0,16(sp)
    80006114:	00913423          	sd	s1,8(sp)
    80006118:	01213023          	sd	s2,0(sp)
    8000611c:	02010413          	addi	s0,sp,32
    80006120:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006124:	02053783          	ld	a5,32(a0)
        if (myHandle == nullptr) {
    80006128:	0087b503          	ld	a0,8(a5)
    8000612c:	00050663          	beqz	a0,80006138 <_ZN9BufferCPP3getEv+0x30>
        return sem_wait(myHandle);
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	a1c080e7          	jalr	-1508(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    80006138:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    8000613c:	0087b503          	ld	a0,8(a5)
    80006140:	00050663          	beqz	a0,8000614c <_ZN9BufferCPP3getEv+0x44>
        return sem_wait(myHandle);
    80006144:	ffffc097          	auipc	ra,0xffffc
    80006148:	a08080e7          	jalr	-1528(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    8000614c:	0084b703          	ld	a4,8(s1)
    80006150:	0104a783          	lw	a5,16(s1)
    80006154:	00279693          	slli	a3,a5,0x2
    80006158:	00d70733          	add	a4,a4,a3
    8000615c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006160:	0017879b          	addiw	a5,a5,1
    80006164:	0004a703          	lw	a4,0(s1)
    80006168:	02e7e7bb          	remw	a5,a5,a4
    8000616c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006170:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80006174:	0087b503          	ld	a0,8(a5)
    80006178:	00050663          	beqz	a0,80006184 <_ZN9BufferCPP3getEv+0x7c>
        return sem_signal(myHandle);
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	a20080e7          	jalr	-1504(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    80006184:	0184b783          	ld	a5,24(s1)
        if (myHandle == nullptr) {
    80006188:	0087b503          	ld	a0,8(a5)
    8000618c:	00050663          	beqz	a0,80006198 <_ZN9BufferCPP3getEv+0x90>
        return sem_signal(myHandle);
    80006190:	ffffc097          	auipc	ra,0xffffc
    80006194:	a0c080e7          	jalr	-1524(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    80006198:	00090513          	mv	a0,s2
    8000619c:	01813083          	ld	ra,24(sp)
    800061a0:	01013403          	ld	s0,16(sp)
    800061a4:	00813483          	ld	s1,8(sp)
    800061a8:	00013903          	ld	s2,0(sp)
    800061ac:	02010113          	addi	sp,sp,32
    800061b0:	00008067          	ret

00000000800061b4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800061b4:	fe010113          	addi	sp,sp,-32
    800061b8:	00113c23          	sd	ra,24(sp)
    800061bc:	00813823          	sd	s0,16(sp)
    800061c0:	00913423          	sd	s1,8(sp)
    800061c4:	01213023          	sd	s2,0(sp)
    800061c8:	02010413          	addi	s0,sp,32
    800061cc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800061d0:	02853783          	ld	a5,40(a0)
        if (myHandle == nullptr) {
    800061d4:	0087b503          	ld	a0,8(a5)
    800061d8:	00050663          	beqz	a0,800061e4 <_ZN9BufferCPP6getCntEv+0x30>
        return sem_wait(myHandle);
    800061dc:	ffffc097          	auipc	ra,0xffffc
    800061e0:	970080e7          	jalr	-1680(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    800061e4:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800061e8:	0087b503          	ld	a0,8(a5)
    800061ec:	00050663          	beqz	a0,800061f8 <_ZN9BufferCPP6getCntEv+0x44>
        return sem_wait(myHandle);
    800061f0:	ffffc097          	auipc	ra,0xffffc
    800061f4:	95c080e7          	jalr	-1700(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    800061f8:	0144a783          	lw	a5,20(s1)
    800061fc:	0104a903          	lw	s2,16(s1)
    80006200:	0527c663          	blt	a5,s2,8000624c <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    80006204:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006208:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    8000620c:	0087b503          	ld	a0,8(a5)
    80006210:	00050663          	beqz	a0,8000621c <_ZN9BufferCPP6getCntEv+0x68>
        return sem_signal(myHandle);
    80006214:	ffffc097          	auipc	ra,0xffffc
    80006218:	988080e7          	jalr	-1656(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    8000621c:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80006220:	0087b503          	ld	a0,8(a5)
    80006224:	00050663          	beqz	a0,80006230 <_ZN9BufferCPP6getCntEv+0x7c>
        return sem_signal(myHandle);
    80006228:	ffffc097          	auipc	ra,0xffffc
    8000622c:	974080e7          	jalr	-1676(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    80006230:	00090513          	mv	a0,s2
    80006234:	01813083          	ld	ra,24(sp)
    80006238:	01013403          	ld	s0,16(sp)
    8000623c:	00813483          	ld	s1,8(sp)
    80006240:	00013903          	ld	s2,0(sp)
    80006244:	02010113          	addi	sp,sp,32
    80006248:	00008067          	ret
        ret = cap - head + tail;
    8000624c:	0004a703          	lw	a4,0(s1)
    80006250:	4127093b          	subw	s2,a4,s2
    80006254:	00f9093b          	addw	s2,s2,a5
    80006258:	fb1ff06f          	j	80006208 <_ZN9BufferCPP6getCntEv+0x54>

000000008000625c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00113c23          	sd	ra,24(sp)
    80006264:	00813823          	sd	s0,16(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	02010413          	addi	s0,sp,32
    80006270:	00050493          	mv	s1,a0
    static void putc(char c) { __putc(c); };
    80006274:	00a00513          	li	a0,10
    80006278:	00002097          	auipc	ra,0x2
    8000627c:	1a4080e7          	jalr	420(ra) # 8000841c <__putc>
    printString("Buffer deleted!\n");
    80006280:	00003517          	auipc	a0,0x3
    80006284:	4d850513          	addi	a0,a0,1240 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x420>
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	42c080e7          	jalr	1068(ra) # 800056b4 <_Z11printStringPKc>
    while (getCnt()) {
    80006290:	00048513          	mv	a0,s1
    80006294:	00000097          	auipc	ra,0x0
    80006298:	f20080e7          	jalr	-224(ra) # 800061b4 <_ZN9BufferCPP6getCntEv>
    8000629c:	02050c63          	beqz	a0,800062d4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800062a0:	0084b783          	ld	a5,8(s1)
    800062a4:	0104a703          	lw	a4,16(s1)
    800062a8:	00271713          	slli	a4,a4,0x2
    800062ac:	00e787b3          	add	a5,a5,a4
    800062b0:	0007c503          	lbu	a0,0(a5)
    800062b4:	00002097          	auipc	ra,0x2
    800062b8:	168080e7          	jalr	360(ra) # 8000841c <__putc>
        head = (head + 1) % cap;
    800062bc:	0104a783          	lw	a5,16(s1)
    800062c0:	0017879b          	addiw	a5,a5,1
    800062c4:	0004a703          	lw	a4,0(s1)
    800062c8:	02e7e7bb          	remw	a5,a5,a4
    800062cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800062d0:	fc1ff06f          	j	80006290 <_ZN9BufferCPPD1Ev+0x34>
    800062d4:	02100513          	li	a0,33
    800062d8:	00002097          	auipc	ra,0x2
    800062dc:	144080e7          	jalr	324(ra) # 8000841c <__putc>
    800062e0:	00a00513          	li	a0,10
    800062e4:	00002097          	auipc	ra,0x2
    800062e8:	138080e7          	jalr	312(ra) # 8000841c <__putc>
    mem_free(buffer);
    800062ec:	0084b503          	ld	a0,8(s1)
    800062f0:	ffffb097          	auipc	ra,0xffffb
    800062f4:	4f8080e7          	jalr	1272(ra) # 800017e8 <_Z8mem_freePv>
    delete itemAvailable;
    800062f8:	0204b503          	ld	a0,32(s1)
    800062fc:	00050863          	beqz	a0,8000630c <_ZN9BufferCPPD1Ev+0xb0>
    80006300:	00053783          	ld	a5,0(a0)
    80006304:	0087b783          	ld	a5,8(a5)
    80006308:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000630c:	0184b503          	ld	a0,24(s1)
    80006310:	00050863          	beqz	a0,80006320 <_ZN9BufferCPPD1Ev+0xc4>
    80006314:	00053783          	ld	a5,0(a0)
    80006318:	0087b783          	ld	a5,8(a5)
    8000631c:	000780e7          	jalr	a5
    delete mutexTail;
    80006320:	0304b503          	ld	a0,48(s1)
    80006324:	00050863          	beqz	a0,80006334 <_ZN9BufferCPPD1Ev+0xd8>
    80006328:	00053783          	ld	a5,0(a0)
    8000632c:	0087b783          	ld	a5,8(a5)
    80006330:	000780e7          	jalr	a5
    delete mutexHead;
    80006334:	0284b503          	ld	a0,40(s1)
    80006338:	00050863          	beqz	a0,80006348 <_ZN9BufferCPPD1Ev+0xec>
    8000633c:	00053783          	ld	a5,0(a0)
    80006340:	0087b783          	ld	a5,8(a5)
    80006344:	000780e7          	jalr	a5
}
    80006348:	01813083          	ld	ra,24(sp)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	00813483          	ld	s1,8(sp)
    80006354:	02010113          	addi	sp,sp,32
    80006358:	00008067          	ret

000000008000635c <start>:
    8000635c:	ff010113          	addi	sp,sp,-16
    80006360:	00813423          	sd	s0,8(sp)
    80006364:	01010413          	addi	s0,sp,16
    80006368:	300027f3          	csrr	a5,mstatus
    8000636c:	ffffe737          	lui	a4,0xffffe
    80006370:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1acf>
    80006374:	00e7f7b3          	and	a5,a5,a4
    80006378:	00001737          	lui	a4,0x1
    8000637c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006380:	00e7e7b3          	or	a5,a5,a4
    80006384:	30079073          	csrw	mstatus,a5
    80006388:	00000797          	auipc	a5,0x0
    8000638c:	16078793          	addi	a5,a5,352 # 800064e8 <system_main>
    80006390:	34179073          	csrw	mepc,a5
    80006394:	00000793          	li	a5,0
    80006398:	18079073          	csrw	satp,a5
    8000639c:	000107b7          	lui	a5,0x10
    800063a0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800063a4:	30279073          	csrw	medeleg,a5
    800063a8:	30379073          	csrw	mideleg,a5
    800063ac:	104027f3          	csrr	a5,sie
    800063b0:	2227e793          	ori	a5,a5,546
    800063b4:	10479073          	csrw	sie,a5
    800063b8:	fff00793          	li	a5,-1
    800063bc:	00a7d793          	srli	a5,a5,0xa
    800063c0:	3b079073          	csrw	pmpaddr0,a5
    800063c4:	00f00793          	li	a5,15
    800063c8:	3a079073          	csrw	pmpcfg0,a5
    800063cc:	f14027f3          	csrr	a5,mhartid
    800063d0:	0200c737          	lui	a4,0x200c
    800063d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800063d8:	0007869b          	sext.w	a3,a5
    800063dc:	00269713          	slli	a4,a3,0x2
    800063e0:	000f4637          	lui	a2,0xf4
    800063e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063e8:	00d70733          	add	a4,a4,a3
    800063ec:	0037979b          	slliw	a5,a5,0x3
    800063f0:	020046b7          	lui	a3,0x2004
    800063f4:	00d787b3          	add	a5,a5,a3
    800063f8:	00c585b3          	add	a1,a1,a2
    800063fc:	00371693          	slli	a3,a4,0x3
    80006400:	00005717          	auipc	a4,0x5
    80006404:	6d070713          	addi	a4,a4,1744 # 8000bad0 <timer_scratch>
    80006408:	00b7b023          	sd	a1,0(a5)
    8000640c:	00d70733          	add	a4,a4,a3
    80006410:	00f73c23          	sd	a5,24(a4)
    80006414:	02c73023          	sd	a2,32(a4)
    80006418:	34071073          	csrw	mscratch,a4
    8000641c:	00000797          	auipc	a5,0x0
    80006420:	6e478793          	addi	a5,a5,1764 # 80006b00 <timervec>
    80006424:	30579073          	csrw	mtvec,a5
    80006428:	300027f3          	csrr	a5,mstatus
    8000642c:	0087e793          	ori	a5,a5,8
    80006430:	30079073          	csrw	mstatus,a5
    80006434:	304027f3          	csrr	a5,mie
    80006438:	0807e793          	ori	a5,a5,128
    8000643c:	30479073          	csrw	mie,a5
    80006440:	f14027f3          	csrr	a5,mhartid
    80006444:	0007879b          	sext.w	a5,a5
    80006448:	00078213          	mv	tp,a5
    8000644c:	30200073          	mret
    80006450:	00813403          	ld	s0,8(sp)
    80006454:	01010113          	addi	sp,sp,16
    80006458:	00008067          	ret

000000008000645c <timerinit>:
    8000645c:	ff010113          	addi	sp,sp,-16
    80006460:	00813423          	sd	s0,8(sp)
    80006464:	01010413          	addi	s0,sp,16
    80006468:	f14027f3          	csrr	a5,mhartid
    8000646c:	0200c737          	lui	a4,0x200c
    80006470:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006474:	0007869b          	sext.w	a3,a5
    80006478:	00269713          	slli	a4,a3,0x2
    8000647c:	000f4637          	lui	a2,0xf4
    80006480:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006484:	00d70733          	add	a4,a4,a3
    80006488:	0037979b          	slliw	a5,a5,0x3
    8000648c:	020046b7          	lui	a3,0x2004
    80006490:	00d787b3          	add	a5,a5,a3
    80006494:	00c585b3          	add	a1,a1,a2
    80006498:	00371693          	slli	a3,a4,0x3
    8000649c:	00005717          	auipc	a4,0x5
    800064a0:	63470713          	addi	a4,a4,1588 # 8000bad0 <timer_scratch>
    800064a4:	00b7b023          	sd	a1,0(a5)
    800064a8:	00d70733          	add	a4,a4,a3
    800064ac:	00f73c23          	sd	a5,24(a4)
    800064b0:	02c73023          	sd	a2,32(a4)
    800064b4:	34071073          	csrw	mscratch,a4
    800064b8:	00000797          	auipc	a5,0x0
    800064bc:	64878793          	addi	a5,a5,1608 # 80006b00 <timervec>
    800064c0:	30579073          	csrw	mtvec,a5
    800064c4:	300027f3          	csrr	a5,mstatus
    800064c8:	0087e793          	ori	a5,a5,8
    800064cc:	30079073          	csrw	mstatus,a5
    800064d0:	304027f3          	csrr	a5,mie
    800064d4:	0807e793          	ori	a5,a5,128
    800064d8:	30479073          	csrw	mie,a5
    800064dc:	00813403          	ld	s0,8(sp)
    800064e0:	01010113          	addi	sp,sp,16
    800064e4:	00008067          	ret

00000000800064e8 <system_main>:
    800064e8:	fe010113          	addi	sp,sp,-32
    800064ec:	00813823          	sd	s0,16(sp)
    800064f0:	00913423          	sd	s1,8(sp)
    800064f4:	00113c23          	sd	ra,24(sp)
    800064f8:	02010413          	addi	s0,sp,32
    800064fc:	00000097          	auipc	ra,0x0
    80006500:	0c4080e7          	jalr	196(ra) # 800065c0 <cpuid>
    80006504:	00005497          	auipc	s1,0x5
    80006508:	58448493          	addi	s1,s1,1412 # 8000ba88 <started>
    8000650c:	02050263          	beqz	a0,80006530 <system_main+0x48>
    80006510:	0004a783          	lw	a5,0(s1)
    80006514:	0007879b          	sext.w	a5,a5
    80006518:	fe078ce3          	beqz	a5,80006510 <system_main+0x28>
    8000651c:	0ff0000f          	fence
    80006520:	00004517          	auipc	a0,0x4
    80006524:	80850513          	addi	a0,a0,-2040 # 80009d28 <_ZTV12ConsumerSync+0x68>
    80006528:	00001097          	auipc	ra,0x1
    8000652c:	a74080e7          	jalr	-1420(ra) # 80006f9c <panic>
    80006530:	00001097          	auipc	ra,0x1
    80006534:	9c8080e7          	jalr	-1592(ra) # 80006ef8 <consoleinit>
    80006538:	00001097          	auipc	ra,0x1
    8000653c:	154080e7          	jalr	340(ra) # 8000768c <printfinit>
    80006540:	00003517          	auipc	a0,0x3
    80006544:	ea050513          	addi	a0,a0,-352 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006548:	00001097          	auipc	ra,0x1
    8000654c:	ab0080e7          	jalr	-1360(ra) # 80006ff8 <__printf>
    80006550:	00003517          	auipc	a0,0x3
    80006554:	7a850513          	addi	a0,a0,1960 # 80009cf8 <_ZTV12ConsumerSync+0x38>
    80006558:	00001097          	auipc	ra,0x1
    8000655c:	aa0080e7          	jalr	-1376(ra) # 80006ff8 <__printf>
    80006560:	00003517          	auipc	a0,0x3
    80006564:	e8050513          	addi	a0,a0,-384 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006568:	00001097          	auipc	ra,0x1
    8000656c:	a90080e7          	jalr	-1392(ra) # 80006ff8 <__printf>
    80006570:	00001097          	auipc	ra,0x1
    80006574:	4a8080e7          	jalr	1192(ra) # 80007a18 <kinit>
    80006578:	00000097          	auipc	ra,0x0
    8000657c:	148080e7          	jalr	328(ra) # 800066c0 <trapinit>
    80006580:	00000097          	auipc	ra,0x0
    80006584:	16c080e7          	jalr	364(ra) # 800066ec <trapinithart>
    80006588:	00000097          	auipc	ra,0x0
    8000658c:	5b8080e7          	jalr	1464(ra) # 80006b40 <plicinit>
    80006590:	00000097          	auipc	ra,0x0
    80006594:	5d8080e7          	jalr	1496(ra) # 80006b68 <plicinithart>
    80006598:	00000097          	auipc	ra,0x0
    8000659c:	078080e7          	jalr	120(ra) # 80006610 <userinit>
    800065a0:	0ff0000f          	fence
    800065a4:	00100793          	li	a5,1
    800065a8:	00003517          	auipc	a0,0x3
    800065ac:	76850513          	addi	a0,a0,1896 # 80009d10 <_ZTV12ConsumerSync+0x50>
    800065b0:	00f4a023          	sw	a5,0(s1)
    800065b4:	00001097          	auipc	ra,0x1
    800065b8:	a44080e7          	jalr	-1468(ra) # 80006ff8 <__printf>
    800065bc:	0000006f          	j	800065bc <system_main+0xd4>

00000000800065c0 <cpuid>:
    800065c0:	ff010113          	addi	sp,sp,-16
    800065c4:	00813423          	sd	s0,8(sp)
    800065c8:	01010413          	addi	s0,sp,16
    800065cc:	00020513          	mv	a0,tp
    800065d0:	00813403          	ld	s0,8(sp)
    800065d4:	0005051b          	sext.w	a0,a0
    800065d8:	01010113          	addi	sp,sp,16
    800065dc:	00008067          	ret

00000000800065e0 <mycpu>:
    800065e0:	ff010113          	addi	sp,sp,-16
    800065e4:	00813423          	sd	s0,8(sp)
    800065e8:	01010413          	addi	s0,sp,16
    800065ec:	00020793          	mv	a5,tp
    800065f0:	00813403          	ld	s0,8(sp)
    800065f4:	0007879b          	sext.w	a5,a5
    800065f8:	00779793          	slli	a5,a5,0x7
    800065fc:	00006517          	auipc	a0,0x6
    80006600:	50450513          	addi	a0,a0,1284 # 8000cb00 <cpus>
    80006604:	00f50533          	add	a0,a0,a5
    80006608:	01010113          	addi	sp,sp,16
    8000660c:	00008067          	ret

0000000080006610 <userinit>:
    80006610:	ff010113          	addi	sp,sp,-16
    80006614:	00813423          	sd	s0,8(sp)
    80006618:	01010413          	addi	s0,sp,16
    8000661c:	00813403          	ld	s0,8(sp)
    80006620:	01010113          	addi	sp,sp,16
    80006624:	ffffc317          	auipc	t1,0xffffc
    80006628:	d5c30067          	jr	-676(t1) # 80002380 <main>

000000008000662c <either_copyout>:
    8000662c:	ff010113          	addi	sp,sp,-16
    80006630:	00813023          	sd	s0,0(sp)
    80006634:	00113423          	sd	ra,8(sp)
    80006638:	01010413          	addi	s0,sp,16
    8000663c:	02051663          	bnez	a0,80006668 <either_copyout+0x3c>
    80006640:	00058513          	mv	a0,a1
    80006644:	00060593          	mv	a1,a2
    80006648:	0006861b          	sext.w	a2,a3
    8000664c:	00002097          	auipc	ra,0x2
    80006650:	c58080e7          	jalr	-936(ra) # 800082a4 <__memmove>
    80006654:	00813083          	ld	ra,8(sp)
    80006658:	00013403          	ld	s0,0(sp)
    8000665c:	00000513          	li	a0,0
    80006660:	01010113          	addi	sp,sp,16
    80006664:	00008067          	ret
    80006668:	00003517          	auipc	a0,0x3
    8000666c:	6e850513          	addi	a0,a0,1768 # 80009d50 <_ZTV12ConsumerSync+0x90>
    80006670:	00001097          	auipc	ra,0x1
    80006674:	92c080e7          	jalr	-1748(ra) # 80006f9c <panic>

0000000080006678 <either_copyin>:
    80006678:	ff010113          	addi	sp,sp,-16
    8000667c:	00813023          	sd	s0,0(sp)
    80006680:	00113423          	sd	ra,8(sp)
    80006684:	01010413          	addi	s0,sp,16
    80006688:	02059463          	bnez	a1,800066b0 <either_copyin+0x38>
    8000668c:	00060593          	mv	a1,a2
    80006690:	0006861b          	sext.w	a2,a3
    80006694:	00002097          	auipc	ra,0x2
    80006698:	c10080e7          	jalr	-1008(ra) # 800082a4 <__memmove>
    8000669c:	00813083          	ld	ra,8(sp)
    800066a0:	00013403          	ld	s0,0(sp)
    800066a4:	00000513          	li	a0,0
    800066a8:	01010113          	addi	sp,sp,16
    800066ac:	00008067          	ret
    800066b0:	00003517          	auipc	a0,0x3
    800066b4:	6c850513          	addi	a0,a0,1736 # 80009d78 <_ZTV12ConsumerSync+0xb8>
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	8e4080e7          	jalr	-1820(ra) # 80006f9c <panic>

00000000800066c0 <trapinit>:
    800066c0:	ff010113          	addi	sp,sp,-16
    800066c4:	00813423          	sd	s0,8(sp)
    800066c8:	01010413          	addi	s0,sp,16
    800066cc:	00813403          	ld	s0,8(sp)
    800066d0:	00003597          	auipc	a1,0x3
    800066d4:	6d058593          	addi	a1,a1,1744 # 80009da0 <_ZTV12ConsumerSync+0xe0>
    800066d8:	00006517          	auipc	a0,0x6
    800066dc:	4a850513          	addi	a0,a0,1192 # 8000cb80 <tickslock>
    800066e0:	01010113          	addi	sp,sp,16
    800066e4:	00001317          	auipc	t1,0x1
    800066e8:	5c430067          	jr	1476(t1) # 80007ca8 <initlock>

00000000800066ec <trapinithart>:
    800066ec:	ff010113          	addi	sp,sp,-16
    800066f0:	00813423          	sd	s0,8(sp)
    800066f4:	01010413          	addi	s0,sp,16
    800066f8:	00000797          	auipc	a5,0x0
    800066fc:	2f878793          	addi	a5,a5,760 # 800069f0 <kernelvec>
    80006700:	10579073          	csrw	stvec,a5
    80006704:	00813403          	ld	s0,8(sp)
    80006708:	01010113          	addi	sp,sp,16
    8000670c:	00008067          	ret

0000000080006710 <usertrap>:
    80006710:	ff010113          	addi	sp,sp,-16
    80006714:	00813423          	sd	s0,8(sp)
    80006718:	01010413          	addi	s0,sp,16
    8000671c:	00813403          	ld	s0,8(sp)
    80006720:	01010113          	addi	sp,sp,16
    80006724:	00008067          	ret

0000000080006728 <usertrapret>:
    80006728:	ff010113          	addi	sp,sp,-16
    8000672c:	00813423          	sd	s0,8(sp)
    80006730:	01010413          	addi	s0,sp,16
    80006734:	00813403          	ld	s0,8(sp)
    80006738:	01010113          	addi	sp,sp,16
    8000673c:	00008067          	ret

0000000080006740 <kerneltrap>:
    80006740:	fe010113          	addi	sp,sp,-32
    80006744:	00813823          	sd	s0,16(sp)
    80006748:	00113c23          	sd	ra,24(sp)
    8000674c:	00913423          	sd	s1,8(sp)
    80006750:	02010413          	addi	s0,sp,32
    80006754:	142025f3          	csrr	a1,scause
    80006758:	100027f3          	csrr	a5,sstatus
    8000675c:	0027f793          	andi	a5,a5,2
    80006760:	10079c63          	bnez	a5,80006878 <kerneltrap+0x138>
    80006764:	142027f3          	csrr	a5,scause
    80006768:	0207ce63          	bltz	a5,800067a4 <kerneltrap+0x64>
    8000676c:	00003517          	auipc	a0,0x3
    80006770:	67c50513          	addi	a0,a0,1660 # 80009de8 <_ZTV12ConsumerSync+0x128>
    80006774:	00001097          	auipc	ra,0x1
    80006778:	884080e7          	jalr	-1916(ra) # 80006ff8 <__printf>
    8000677c:	141025f3          	csrr	a1,sepc
    80006780:	14302673          	csrr	a2,stval
    80006784:	00003517          	auipc	a0,0x3
    80006788:	67450513          	addi	a0,a0,1652 # 80009df8 <_ZTV12ConsumerSync+0x138>
    8000678c:	00001097          	auipc	ra,0x1
    80006790:	86c080e7          	jalr	-1940(ra) # 80006ff8 <__printf>
    80006794:	00003517          	auipc	a0,0x3
    80006798:	67c50513          	addi	a0,a0,1660 # 80009e10 <_ZTV12ConsumerSync+0x150>
    8000679c:	00001097          	auipc	ra,0x1
    800067a0:	800080e7          	jalr	-2048(ra) # 80006f9c <panic>
    800067a4:	0ff7f713          	andi	a4,a5,255
    800067a8:	00900693          	li	a3,9
    800067ac:	04d70063          	beq	a4,a3,800067ec <kerneltrap+0xac>
    800067b0:	fff00713          	li	a4,-1
    800067b4:	03f71713          	slli	a4,a4,0x3f
    800067b8:	00170713          	addi	a4,a4,1
    800067bc:	fae798e3          	bne	a5,a4,8000676c <kerneltrap+0x2c>
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	e00080e7          	jalr	-512(ra) # 800065c0 <cpuid>
    800067c8:	06050663          	beqz	a0,80006834 <kerneltrap+0xf4>
    800067cc:	144027f3          	csrr	a5,sip
    800067d0:	ffd7f793          	andi	a5,a5,-3
    800067d4:	14479073          	csrw	sip,a5
    800067d8:	01813083          	ld	ra,24(sp)
    800067dc:	01013403          	ld	s0,16(sp)
    800067e0:	00813483          	ld	s1,8(sp)
    800067e4:	02010113          	addi	sp,sp,32
    800067e8:	00008067          	ret
    800067ec:	00000097          	auipc	ra,0x0
    800067f0:	3c8080e7          	jalr	968(ra) # 80006bb4 <plic_claim>
    800067f4:	00a00793          	li	a5,10
    800067f8:	00050493          	mv	s1,a0
    800067fc:	06f50863          	beq	a0,a5,8000686c <kerneltrap+0x12c>
    80006800:	fc050ce3          	beqz	a0,800067d8 <kerneltrap+0x98>
    80006804:	00050593          	mv	a1,a0
    80006808:	00003517          	auipc	a0,0x3
    8000680c:	5c050513          	addi	a0,a0,1472 # 80009dc8 <_ZTV12ConsumerSync+0x108>
    80006810:	00000097          	auipc	ra,0x0
    80006814:	7e8080e7          	jalr	2024(ra) # 80006ff8 <__printf>
    80006818:	01013403          	ld	s0,16(sp)
    8000681c:	01813083          	ld	ra,24(sp)
    80006820:	00048513          	mv	a0,s1
    80006824:	00813483          	ld	s1,8(sp)
    80006828:	02010113          	addi	sp,sp,32
    8000682c:	00000317          	auipc	t1,0x0
    80006830:	3c030067          	jr	960(t1) # 80006bec <plic_complete>
    80006834:	00006517          	auipc	a0,0x6
    80006838:	34c50513          	addi	a0,a0,844 # 8000cb80 <tickslock>
    8000683c:	00001097          	auipc	ra,0x1
    80006840:	490080e7          	jalr	1168(ra) # 80007ccc <acquire>
    80006844:	00005717          	auipc	a4,0x5
    80006848:	24870713          	addi	a4,a4,584 # 8000ba8c <ticks>
    8000684c:	00072783          	lw	a5,0(a4)
    80006850:	00006517          	auipc	a0,0x6
    80006854:	33050513          	addi	a0,a0,816 # 8000cb80 <tickslock>
    80006858:	0017879b          	addiw	a5,a5,1
    8000685c:	00f72023          	sw	a5,0(a4)
    80006860:	00001097          	auipc	ra,0x1
    80006864:	538080e7          	jalr	1336(ra) # 80007d98 <release>
    80006868:	f65ff06f          	j	800067cc <kerneltrap+0x8c>
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	094080e7          	jalr	148(ra) # 80007900 <uartintr>
    80006874:	fa5ff06f          	j	80006818 <kerneltrap+0xd8>
    80006878:	00003517          	auipc	a0,0x3
    8000687c:	53050513          	addi	a0,a0,1328 # 80009da8 <_ZTV12ConsumerSync+0xe8>
    80006880:	00000097          	auipc	ra,0x0
    80006884:	71c080e7          	jalr	1820(ra) # 80006f9c <panic>

0000000080006888 <clockintr>:
    80006888:	fe010113          	addi	sp,sp,-32
    8000688c:	00813823          	sd	s0,16(sp)
    80006890:	00913423          	sd	s1,8(sp)
    80006894:	00113c23          	sd	ra,24(sp)
    80006898:	02010413          	addi	s0,sp,32
    8000689c:	00006497          	auipc	s1,0x6
    800068a0:	2e448493          	addi	s1,s1,740 # 8000cb80 <tickslock>
    800068a4:	00048513          	mv	a0,s1
    800068a8:	00001097          	auipc	ra,0x1
    800068ac:	424080e7          	jalr	1060(ra) # 80007ccc <acquire>
    800068b0:	00005717          	auipc	a4,0x5
    800068b4:	1dc70713          	addi	a4,a4,476 # 8000ba8c <ticks>
    800068b8:	00072783          	lw	a5,0(a4)
    800068bc:	01013403          	ld	s0,16(sp)
    800068c0:	01813083          	ld	ra,24(sp)
    800068c4:	00048513          	mv	a0,s1
    800068c8:	0017879b          	addiw	a5,a5,1
    800068cc:	00813483          	ld	s1,8(sp)
    800068d0:	00f72023          	sw	a5,0(a4)
    800068d4:	02010113          	addi	sp,sp,32
    800068d8:	00001317          	auipc	t1,0x1
    800068dc:	4c030067          	jr	1216(t1) # 80007d98 <release>

00000000800068e0 <devintr>:
    800068e0:	142027f3          	csrr	a5,scause
    800068e4:	00000513          	li	a0,0
    800068e8:	0007c463          	bltz	a5,800068f0 <devintr+0x10>
    800068ec:	00008067          	ret
    800068f0:	fe010113          	addi	sp,sp,-32
    800068f4:	00813823          	sd	s0,16(sp)
    800068f8:	00113c23          	sd	ra,24(sp)
    800068fc:	00913423          	sd	s1,8(sp)
    80006900:	02010413          	addi	s0,sp,32
    80006904:	0ff7f713          	andi	a4,a5,255
    80006908:	00900693          	li	a3,9
    8000690c:	04d70c63          	beq	a4,a3,80006964 <devintr+0x84>
    80006910:	fff00713          	li	a4,-1
    80006914:	03f71713          	slli	a4,a4,0x3f
    80006918:	00170713          	addi	a4,a4,1
    8000691c:	00e78c63          	beq	a5,a4,80006934 <devintr+0x54>
    80006920:	01813083          	ld	ra,24(sp)
    80006924:	01013403          	ld	s0,16(sp)
    80006928:	00813483          	ld	s1,8(sp)
    8000692c:	02010113          	addi	sp,sp,32
    80006930:	00008067          	ret
    80006934:	00000097          	auipc	ra,0x0
    80006938:	c8c080e7          	jalr	-884(ra) # 800065c0 <cpuid>
    8000693c:	06050663          	beqz	a0,800069a8 <devintr+0xc8>
    80006940:	144027f3          	csrr	a5,sip
    80006944:	ffd7f793          	andi	a5,a5,-3
    80006948:	14479073          	csrw	sip,a5
    8000694c:	01813083          	ld	ra,24(sp)
    80006950:	01013403          	ld	s0,16(sp)
    80006954:	00813483          	ld	s1,8(sp)
    80006958:	00200513          	li	a0,2
    8000695c:	02010113          	addi	sp,sp,32
    80006960:	00008067          	ret
    80006964:	00000097          	auipc	ra,0x0
    80006968:	250080e7          	jalr	592(ra) # 80006bb4 <plic_claim>
    8000696c:	00a00793          	li	a5,10
    80006970:	00050493          	mv	s1,a0
    80006974:	06f50663          	beq	a0,a5,800069e0 <devintr+0x100>
    80006978:	00100513          	li	a0,1
    8000697c:	fa0482e3          	beqz	s1,80006920 <devintr+0x40>
    80006980:	00048593          	mv	a1,s1
    80006984:	00003517          	auipc	a0,0x3
    80006988:	44450513          	addi	a0,a0,1092 # 80009dc8 <_ZTV12ConsumerSync+0x108>
    8000698c:	00000097          	auipc	ra,0x0
    80006990:	66c080e7          	jalr	1644(ra) # 80006ff8 <__printf>
    80006994:	00048513          	mv	a0,s1
    80006998:	00000097          	auipc	ra,0x0
    8000699c:	254080e7          	jalr	596(ra) # 80006bec <plic_complete>
    800069a0:	00100513          	li	a0,1
    800069a4:	f7dff06f          	j	80006920 <devintr+0x40>
    800069a8:	00006517          	auipc	a0,0x6
    800069ac:	1d850513          	addi	a0,a0,472 # 8000cb80 <tickslock>
    800069b0:	00001097          	auipc	ra,0x1
    800069b4:	31c080e7          	jalr	796(ra) # 80007ccc <acquire>
    800069b8:	00005717          	auipc	a4,0x5
    800069bc:	0d470713          	addi	a4,a4,212 # 8000ba8c <ticks>
    800069c0:	00072783          	lw	a5,0(a4)
    800069c4:	00006517          	auipc	a0,0x6
    800069c8:	1bc50513          	addi	a0,a0,444 # 8000cb80 <tickslock>
    800069cc:	0017879b          	addiw	a5,a5,1
    800069d0:	00f72023          	sw	a5,0(a4)
    800069d4:	00001097          	auipc	ra,0x1
    800069d8:	3c4080e7          	jalr	964(ra) # 80007d98 <release>
    800069dc:	f65ff06f          	j	80006940 <devintr+0x60>
    800069e0:	00001097          	auipc	ra,0x1
    800069e4:	f20080e7          	jalr	-224(ra) # 80007900 <uartintr>
    800069e8:	fadff06f          	j	80006994 <devintr+0xb4>
    800069ec:	0000                	unimp
	...

00000000800069f0 <kernelvec>:
    800069f0:	f0010113          	addi	sp,sp,-256
    800069f4:	00113023          	sd	ra,0(sp)
    800069f8:	00213423          	sd	sp,8(sp)
    800069fc:	00313823          	sd	gp,16(sp)
    80006a00:	00413c23          	sd	tp,24(sp)
    80006a04:	02513023          	sd	t0,32(sp)
    80006a08:	02613423          	sd	t1,40(sp)
    80006a0c:	02713823          	sd	t2,48(sp)
    80006a10:	02813c23          	sd	s0,56(sp)
    80006a14:	04913023          	sd	s1,64(sp)
    80006a18:	04a13423          	sd	a0,72(sp)
    80006a1c:	04b13823          	sd	a1,80(sp)
    80006a20:	04c13c23          	sd	a2,88(sp)
    80006a24:	06d13023          	sd	a3,96(sp)
    80006a28:	06e13423          	sd	a4,104(sp)
    80006a2c:	06f13823          	sd	a5,112(sp)
    80006a30:	07013c23          	sd	a6,120(sp)
    80006a34:	09113023          	sd	a7,128(sp)
    80006a38:	09213423          	sd	s2,136(sp)
    80006a3c:	09313823          	sd	s3,144(sp)
    80006a40:	09413c23          	sd	s4,152(sp)
    80006a44:	0b513023          	sd	s5,160(sp)
    80006a48:	0b613423          	sd	s6,168(sp)
    80006a4c:	0b713823          	sd	s7,176(sp)
    80006a50:	0b813c23          	sd	s8,184(sp)
    80006a54:	0d913023          	sd	s9,192(sp)
    80006a58:	0da13423          	sd	s10,200(sp)
    80006a5c:	0db13823          	sd	s11,208(sp)
    80006a60:	0dc13c23          	sd	t3,216(sp)
    80006a64:	0fd13023          	sd	t4,224(sp)
    80006a68:	0fe13423          	sd	t5,232(sp)
    80006a6c:	0ff13823          	sd	t6,240(sp)
    80006a70:	cd1ff0ef          	jal	ra,80006740 <kerneltrap>
    80006a74:	00013083          	ld	ra,0(sp)
    80006a78:	00813103          	ld	sp,8(sp)
    80006a7c:	01013183          	ld	gp,16(sp)
    80006a80:	02013283          	ld	t0,32(sp)
    80006a84:	02813303          	ld	t1,40(sp)
    80006a88:	03013383          	ld	t2,48(sp)
    80006a8c:	03813403          	ld	s0,56(sp)
    80006a90:	04013483          	ld	s1,64(sp)
    80006a94:	04813503          	ld	a0,72(sp)
    80006a98:	05013583          	ld	a1,80(sp)
    80006a9c:	05813603          	ld	a2,88(sp)
    80006aa0:	06013683          	ld	a3,96(sp)
    80006aa4:	06813703          	ld	a4,104(sp)
    80006aa8:	07013783          	ld	a5,112(sp)
    80006aac:	07813803          	ld	a6,120(sp)
    80006ab0:	08013883          	ld	a7,128(sp)
    80006ab4:	08813903          	ld	s2,136(sp)
    80006ab8:	09013983          	ld	s3,144(sp)
    80006abc:	09813a03          	ld	s4,152(sp)
    80006ac0:	0a013a83          	ld	s5,160(sp)
    80006ac4:	0a813b03          	ld	s6,168(sp)
    80006ac8:	0b013b83          	ld	s7,176(sp)
    80006acc:	0b813c03          	ld	s8,184(sp)
    80006ad0:	0c013c83          	ld	s9,192(sp)
    80006ad4:	0c813d03          	ld	s10,200(sp)
    80006ad8:	0d013d83          	ld	s11,208(sp)
    80006adc:	0d813e03          	ld	t3,216(sp)
    80006ae0:	0e013e83          	ld	t4,224(sp)
    80006ae4:	0e813f03          	ld	t5,232(sp)
    80006ae8:	0f013f83          	ld	t6,240(sp)
    80006aec:	10010113          	addi	sp,sp,256
    80006af0:	10200073          	sret
    80006af4:	00000013          	nop
    80006af8:	00000013          	nop
    80006afc:	00000013          	nop

0000000080006b00 <timervec>:
    80006b00:	34051573          	csrrw	a0,mscratch,a0
    80006b04:	00b53023          	sd	a1,0(a0)
    80006b08:	00c53423          	sd	a2,8(a0)
    80006b0c:	00d53823          	sd	a3,16(a0)
    80006b10:	01853583          	ld	a1,24(a0)
    80006b14:	02053603          	ld	a2,32(a0)
    80006b18:	0005b683          	ld	a3,0(a1)
    80006b1c:	00c686b3          	add	a3,a3,a2
    80006b20:	00d5b023          	sd	a3,0(a1)
    80006b24:	00200593          	li	a1,2
    80006b28:	14459073          	csrw	sip,a1
    80006b2c:	01053683          	ld	a3,16(a0)
    80006b30:	00853603          	ld	a2,8(a0)
    80006b34:	00053583          	ld	a1,0(a0)
    80006b38:	34051573          	csrrw	a0,mscratch,a0
    80006b3c:	30200073          	mret

0000000080006b40 <plicinit>:
    80006b40:	ff010113          	addi	sp,sp,-16
    80006b44:	00813423          	sd	s0,8(sp)
    80006b48:	01010413          	addi	s0,sp,16
    80006b4c:	00813403          	ld	s0,8(sp)
    80006b50:	0c0007b7          	lui	a5,0xc000
    80006b54:	00100713          	li	a4,1
    80006b58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006b5c:	00e7a223          	sw	a4,4(a5)
    80006b60:	01010113          	addi	sp,sp,16
    80006b64:	00008067          	ret

0000000080006b68 <plicinithart>:
    80006b68:	ff010113          	addi	sp,sp,-16
    80006b6c:	00813023          	sd	s0,0(sp)
    80006b70:	00113423          	sd	ra,8(sp)
    80006b74:	01010413          	addi	s0,sp,16
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	a48080e7          	jalr	-1464(ra) # 800065c0 <cpuid>
    80006b80:	0085171b          	slliw	a4,a0,0x8
    80006b84:	0c0027b7          	lui	a5,0xc002
    80006b88:	00e787b3          	add	a5,a5,a4
    80006b8c:	40200713          	li	a4,1026
    80006b90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006b94:	00813083          	ld	ra,8(sp)
    80006b98:	00013403          	ld	s0,0(sp)
    80006b9c:	00d5151b          	slliw	a0,a0,0xd
    80006ba0:	0c2017b7          	lui	a5,0xc201
    80006ba4:	00a78533          	add	a0,a5,a0
    80006ba8:	00052023          	sw	zero,0(a0)
    80006bac:	01010113          	addi	sp,sp,16
    80006bb0:	00008067          	ret

0000000080006bb4 <plic_claim>:
    80006bb4:	ff010113          	addi	sp,sp,-16
    80006bb8:	00813023          	sd	s0,0(sp)
    80006bbc:	00113423          	sd	ra,8(sp)
    80006bc0:	01010413          	addi	s0,sp,16
    80006bc4:	00000097          	auipc	ra,0x0
    80006bc8:	9fc080e7          	jalr	-1540(ra) # 800065c0 <cpuid>
    80006bcc:	00813083          	ld	ra,8(sp)
    80006bd0:	00013403          	ld	s0,0(sp)
    80006bd4:	00d5151b          	slliw	a0,a0,0xd
    80006bd8:	0c2017b7          	lui	a5,0xc201
    80006bdc:	00a78533          	add	a0,a5,a0
    80006be0:	00452503          	lw	a0,4(a0)
    80006be4:	01010113          	addi	sp,sp,16
    80006be8:	00008067          	ret

0000000080006bec <plic_complete>:
    80006bec:	fe010113          	addi	sp,sp,-32
    80006bf0:	00813823          	sd	s0,16(sp)
    80006bf4:	00913423          	sd	s1,8(sp)
    80006bf8:	00113c23          	sd	ra,24(sp)
    80006bfc:	02010413          	addi	s0,sp,32
    80006c00:	00050493          	mv	s1,a0
    80006c04:	00000097          	auipc	ra,0x0
    80006c08:	9bc080e7          	jalr	-1604(ra) # 800065c0 <cpuid>
    80006c0c:	01813083          	ld	ra,24(sp)
    80006c10:	01013403          	ld	s0,16(sp)
    80006c14:	00d5179b          	slliw	a5,a0,0xd
    80006c18:	0c201737          	lui	a4,0xc201
    80006c1c:	00f707b3          	add	a5,a4,a5
    80006c20:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006c24:	00813483          	ld	s1,8(sp)
    80006c28:	02010113          	addi	sp,sp,32
    80006c2c:	00008067          	ret

0000000080006c30 <consolewrite>:
    80006c30:	fb010113          	addi	sp,sp,-80
    80006c34:	04813023          	sd	s0,64(sp)
    80006c38:	04113423          	sd	ra,72(sp)
    80006c3c:	02913c23          	sd	s1,56(sp)
    80006c40:	03213823          	sd	s2,48(sp)
    80006c44:	03313423          	sd	s3,40(sp)
    80006c48:	03413023          	sd	s4,32(sp)
    80006c4c:	01513c23          	sd	s5,24(sp)
    80006c50:	05010413          	addi	s0,sp,80
    80006c54:	06c05c63          	blez	a2,80006ccc <consolewrite+0x9c>
    80006c58:	00060993          	mv	s3,a2
    80006c5c:	00050a13          	mv	s4,a0
    80006c60:	00058493          	mv	s1,a1
    80006c64:	00000913          	li	s2,0
    80006c68:	fff00a93          	li	s5,-1
    80006c6c:	01c0006f          	j	80006c88 <consolewrite+0x58>
    80006c70:	fbf44503          	lbu	a0,-65(s0)
    80006c74:	0019091b          	addiw	s2,s2,1
    80006c78:	00148493          	addi	s1,s1,1
    80006c7c:	00001097          	auipc	ra,0x1
    80006c80:	a9c080e7          	jalr	-1380(ra) # 80007718 <uartputc>
    80006c84:	03298063          	beq	s3,s2,80006ca4 <consolewrite+0x74>
    80006c88:	00048613          	mv	a2,s1
    80006c8c:	00100693          	li	a3,1
    80006c90:	000a0593          	mv	a1,s4
    80006c94:	fbf40513          	addi	a0,s0,-65
    80006c98:	00000097          	auipc	ra,0x0
    80006c9c:	9e0080e7          	jalr	-1568(ra) # 80006678 <either_copyin>
    80006ca0:	fd5518e3          	bne	a0,s5,80006c70 <consolewrite+0x40>
    80006ca4:	04813083          	ld	ra,72(sp)
    80006ca8:	04013403          	ld	s0,64(sp)
    80006cac:	03813483          	ld	s1,56(sp)
    80006cb0:	02813983          	ld	s3,40(sp)
    80006cb4:	02013a03          	ld	s4,32(sp)
    80006cb8:	01813a83          	ld	s5,24(sp)
    80006cbc:	00090513          	mv	a0,s2
    80006cc0:	03013903          	ld	s2,48(sp)
    80006cc4:	05010113          	addi	sp,sp,80
    80006cc8:	00008067          	ret
    80006ccc:	00000913          	li	s2,0
    80006cd0:	fd5ff06f          	j	80006ca4 <consolewrite+0x74>

0000000080006cd4 <consoleread>:
    80006cd4:	f9010113          	addi	sp,sp,-112
    80006cd8:	06813023          	sd	s0,96(sp)
    80006cdc:	04913c23          	sd	s1,88(sp)
    80006ce0:	05213823          	sd	s2,80(sp)
    80006ce4:	05313423          	sd	s3,72(sp)
    80006ce8:	05413023          	sd	s4,64(sp)
    80006cec:	03513c23          	sd	s5,56(sp)
    80006cf0:	03613823          	sd	s6,48(sp)
    80006cf4:	03713423          	sd	s7,40(sp)
    80006cf8:	03813023          	sd	s8,32(sp)
    80006cfc:	06113423          	sd	ra,104(sp)
    80006d00:	01913c23          	sd	s9,24(sp)
    80006d04:	07010413          	addi	s0,sp,112
    80006d08:	00060b93          	mv	s7,a2
    80006d0c:	00050913          	mv	s2,a0
    80006d10:	00058c13          	mv	s8,a1
    80006d14:	00060b1b          	sext.w	s6,a2
    80006d18:	00006497          	auipc	s1,0x6
    80006d1c:	e9048493          	addi	s1,s1,-368 # 8000cba8 <cons>
    80006d20:	00400993          	li	s3,4
    80006d24:	fff00a13          	li	s4,-1
    80006d28:	00a00a93          	li	s5,10
    80006d2c:	05705e63          	blez	s7,80006d88 <consoleread+0xb4>
    80006d30:	09c4a703          	lw	a4,156(s1)
    80006d34:	0984a783          	lw	a5,152(s1)
    80006d38:	0007071b          	sext.w	a4,a4
    80006d3c:	08e78463          	beq	a5,a4,80006dc4 <consoleread+0xf0>
    80006d40:	07f7f713          	andi	a4,a5,127
    80006d44:	00e48733          	add	a4,s1,a4
    80006d48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006d4c:	0017869b          	addiw	a3,a5,1
    80006d50:	08d4ac23          	sw	a3,152(s1)
    80006d54:	00070c9b          	sext.w	s9,a4
    80006d58:	0b370663          	beq	a4,s3,80006e04 <consoleread+0x130>
    80006d5c:	00100693          	li	a3,1
    80006d60:	f9f40613          	addi	a2,s0,-97
    80006d64:	000c0593          	mv	a1,s8
    80006d68:	00090513          	mv	a0,s2
    80006d6c:	f8e40fa3          	sb	a4,-97(s0)
    80006d70:	00000097          	auipc	ra,0x0
    80006d74:	8bc080e7          	jalr	-1860(ra) # 8000662c <either_copyout>
    80006d78:	01450863          	beq	a0,s4,80006d88 <consoleread+0xb4>
    80006d7c:	001c0c13          	addi	s8,s8,1
    80006d80:	fffb8b9b          	addiw	s7,s7,-1
    80006d84:	fb5c94e3          	bne	s9,s5,80006d2c <consoleread+0x58>
    80006d88:	000b851b          	sext.w	a0,s7
    80006d8c:	06813083          	ld	ra,104(sp)
    80006d90:	06013403          	ld	s0,96(sp)
    80006d94:	05813483          	ld	s1,88(sp)
    80006d98:	05013903          	ld	s2,80(sp)
    80006d9c:	04813983          	ld	s3,72(sp)
    80006da0:	04013a03          	ld	s4,64(sp)
    80006da4:	03813a83          	ld	s5,56(sp)
    80006da8:	02813b83          	ld	s7,40(sp)
    80006dac:	02013c03          	ld	s8,32(sp)
    80006db0:	01813c83          	ld	s9,24(sp)
    80006db4:	40ab053b          	subw	a0,s6,a0
    80006db8:	03013b03          	ld	s6,48(sp)
    80006dbc:	07010113          	addi	sp,sp,112
    80006dc0:	00008067          	ret
    80006dc4:	00001097          	auipc	ra,0x1
    80006dc8:	1d8080e7          	jalr	472(ra) # 80007f9c <push_on>
    80006dcc:	0984a703          	lw	a4,152(s1)
    80006dd0:	09c4a783          	lw	a5,156(s1)
    80006dd4:	0007879b          	sext.w	a5,a5
    80006dd8:	fef70ce3          	beq	a4,a5,80006dd0 <consoleread+0xfc>
    80006ddc:	00001097          	auipc	ra,0x1
    80006de0:	234080e7          	jalr	564(ra) # 80008010 <pop_on>
    80006de4:	0984a783          	lw	a5,152(s1)
    80006de8:	07f7f713          	andi	a4,a5,127
    80006dec:	00e48733          	add	a4,s1,a4
    80006df0:	01874703          	lbu	a4,24(a4)
    80006df4:	0017869b          	addiw	a3,a5,1
    80006df8:	08d4ac23          	sw	a3,152(s1)
    80006dfc:	00070c9b          	sext.w	s9,a4
    80006e00:	f5371ee3          	bne	a4,s3,80006d5c <consoleread+0x88>
    80006e04:	000b851b          	sext.w	a0,s7
    80006e08:	f96bf2e3          	bgeu	s7,s6,80006d8c <consoleread+0xb8>
    80006e0c:	08f4ac23          	sw	a5,152(s1)
    80006e10:	f7dff06f          	j	80006d8c <consoleread+0xb8>

0000000080006e14 <consputc>:
    80006e14:	10000793          	li	a5,256
    80006e18:	00f50663          	beq	a0,a5,80006e24 <consputc+0x10>
    80006e1c:	00001317          	auipc	t1,0x1
    80006e20:	9f430067          	jr	-1548(t1) # 80007810 <uartputc_sync>
    80006e24:	ff010113          	addi	sp,sp,-16
    80006e28:	00113423          	sd	ra,8(sp)
    80006e2c:	00813023          	sd	s0,0(sp)
    80006e30:	01010413          	addi	s0,sp,16
    80006e34:	00800513          	li	a0,8
    80006e38:	00001097          	auipc	ra,0x1
    80006e3c:	9d8080e7          	jalr	-1576(ra) # 80007810 <uartputc_sync>
    80006e40:	02000513          	li	a0,32
    80006e44:	00001097          	auipc	ra,0x1
    80006e48:	9cc080e7          	jalr	-1588(ra) # 80007810 <uartputc_sync>
    80006e4c:	00013403          	ld	s0,0(sp)
    80006e50:	00813083          	ld	ra,8(sp)
    80006e54:	00800513          	li	a0,8
    80006e58:	01010113          	addi	sp,sp,16
    80006e5c:	00001317          	auipc	t1,0x1
    80006e60:	9b430067          	jr	-1612(t1) # 80007810 <uartputc_sync>

0000000080006e64 <consoleintr>:
    80006e64:	fe010113          	addi	sp,sp,-32
    80006e68:	00813823          	sd	s0,16(sp)
    80006e6c:	00913423          	sd	s1,8(sp)
    80006e70:	01213023          	sd	s2,0(sp)
    80006e74:	00113c23          	sd	ra,24(sp)
    80006e78:	02010413          	addi	s0,sp,32
    80006e7c:	00006917          	auipc	s2,0x6
    80006e80:	d2c90913          	addi	s2,s2,-724 # 8000cba8 <cons>
    80006e84:	00050493          	mv	s1,a0
    80006e88:	00090513          	mv	a0,s2
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	e40080e7          	jalr	-448(ra) # 80007ccc <acquire>
    80006e94:	02048c63          	beqz	s1,80006ecc <consoleintr+0x68>
    80006e98:	0a092783          	lw	a5,160(s2)
    80006e9c:	09892703          	lw	a4,152(s2)
    80006ea0:	07f00693          	li	a3,127
    80006ea4:	40e7873b          	subw	a4,a5,a4
    80006ea8:	02e6e263          	bltu	a3,a4,80006ecc <consoleintr+0x68>
    80006eac:	00d00713          	li	a4,13
    80006eb0:	04e48063          	beq	s1,a4,80006ef0 <consoleintr+0x8c>
    80006eb4:	07f7f713          	andi	a4,a5,127
    80006eb8:	00e90733          	add	a4,s2,a4
    80006ebc:	0017879b          	addiw	a5,a5,1
    80006ec0:	0af92023          	sw	a5,160(s2)
    80006ec4:	00970c23          	sb	s1,24(a4)
    80006ec8:	08f92e23          	sw	a5,156(s2)
    80006ecc:	01013403          	ld	s0,16(sp)
    80006ed0:	01813083          	ld	ra,24(sp)
    80006ed4:	00813483          	ld	s1,8(sp)
    80006ed8:	00013903          	ld	s2,0(sp)
    80006edc:	00006517          	auipc	a0,0x6
    80006ee0:	ccc50513          	addi	a0,a0,-820 # 8000cba8 <cons>
    80006ee4:	02010113          	addi	sp,sp,32
    80006ee8:	00001317          	auipc	t1,0x1
    80006eec:	eb030067          	jr	-336(t1) # 80007d98 <release>
    80006ef0:	00a00493          	li	s1,10
    80006ef4:	fc1ff06f          	j	80006eb4 <consoleintr+0x50>

0000000080006ef8 <consoleinit>:
    80006ef8:	fe010113          	addi	sp,sp,-32
    80006efc:	00113c23          	sd	ra,24(sp)
    80006f00:	00813823          	sd	s0,16(sp)
    80006f04:	00913423          	sd	s1,8(sp)
    80006f08:	02010413          	addi	s0,sp,32
    80006f0c:	00006497          	auipc	s1,0x6
    80006f10:	c9c48493          	addi	s1,s1,-868 # 8000cba8 <cons>
    80006f14:	00048513          	mv	a0,s1
    80006f18:	00003597          	auipc	a1,0x3
    80006f1c:	f0858593          	addi	a1,a1,-248 # 80009e20 <_ZTV12ConsumerSync+0x160>
    80006f20:	00001097          	auipc	ra,0x1
    80006f24:	d88080e7          	jalr	-632(ra) # 80007ca8 <initlock>
    80006f28:	00000097          	auipc	ra,0x0
    80006f2c:	7ac080e7          	jalr	1964(ra) # 800076d4 <uartinit>
    80006f30:	01813083          	ld	ra,24(sp)
    80006f34:	01013403          	ld	s0,16(sp)
    80006f38:	00000797          	auipc	a5,0x0
    80006f3c:	d9c78793          	addi	a5,a5,-612 # 80006cd4 <consoleread>
    80006f40:	0af4bc23          	sd	a5,184(s1)
    80006f44:	00000797          	auipc	a5,0x0
    80006f48:	cec78793          	addi	a5,a5,-788 # 80006c30 <consolewrite>
    80006f4c:	0cf4b023          	sd	a5,192(s1)
    80006f50:	00813483          	ld	s1,8(sp)
    80006f54:	02010113          	addi	sp,sp,32
    80006f58:	00008067          	ret

0000000080006f5c <console_read>:
    80006f5c:	ff010113          	addi	sp,sp,-16
    80006f60:	00813423          	sd	s0,8(sp)
    80006f64:	01010413          	addi	s0,sp,16
    80006f68:	00813403          	ld	s0,8(sp)
    80006f6c:	00006317          	auipc	t1,0x6
    80006f70:	cf433303          	ld	t1,-780(t1) # 8000cc60 <devsw+0x10>
    80006f74:	01010113          	addi	sp,sp,16
    80006f78:	00030067          	jr	t1

0000000080006f7c <console_write>:
    80006f7c:	ff010113          	addi	sp,sp,-16
    80006f80:	00813423          	sd	s0,8(sp)
    80006f84:	01010413          	addi	s0,sp,16
    80006f88:	00813403          	ld	s0,8(sp)
    80006f8c:	00006317          	auipc	t1,0x6
    80006f90:	cdc33303          	ld	t1,-804(t1) # 8000cc68 <devsw+0x18>
    80006f94:	01010113          	addi	sp,sp,16
    80006f98:	00030067          	jr	t1

0000000080006f9c <panic>:
    80006f9c:	fe010113          	addi	sp,sp,-32
    80006fa0:	00113c23          	sd	ra,24(sp)
    80006fa4:	00813823          	sd	s0,16(sp)
    80006fa8:	00913423          	sd	s1,8(sp)
    80006fac:	02010413          	addi	s0,sp,32
    80006fb0:	00050493          	mv	s1,a0
    80006fb4:	00003517          	auipc	a0,0x3
    80006fb8:	e7450513          	addi	a0,a0,-396 # 80009e28 <_ZTV12ConsumerSync+0x168>
    80006fbc:	00006797          	auipc	a5,0x6
    80006fc0:	d407a623          	sw	zero,-692(a5) # 8000cd08 <pr+0x18>
    80006fc4:	00000097          	auipc	ra,0x0
    80006fc8:	034080e7          	jalr	52(ra) # 80006ff8 <__printf>
    80006fcc:	00048513          	mv	a0,s1
    80006fd0:	00000097          	auipc	ra,0x0
    80006fd4:	028080e7          	jalr	40(ra) # 80006ff8 <__printf>
    80006fd8:	00002517          	auipc	a0,0x2
    80006fdc:	40850513          	addi	a0,a0,1032 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	018080e7          	jalr	24(ra) # 80006ff8 <__printf>
    80006fe8:	00100793          	li	a5,1
    80006fec:	00005717          	auipc	a4,0x5
    80006ff0:	aaf72223          	sw	a5,-1372(a4) # 8000ba90 <panicked>
    80006ff4:	0000006f          	j	80006ff4 <panic+0x58>

0000000080006ff8 <__printf>:
    80006ff8:	f3010113          	addi	sp,sp,-208
    80006ffc:	08813023          	sd	s0,128(sp)
    80007000:	07313423          	sd	s3,104(sp)
    80007004:	09010413          	addi	s0,sp,144
    80007008:	05813023          	sd	s8,64(sp)
    8000700c:	08113423          	sd	ra,136(sp)
    80007010:	06913c23          	sd	s1,120(sp)
    80007014:	07213823          	sd	s2,112(sp)
    80007018:	07413023          	sd	s4,96(sp)
    8000701c:	05513c23          	sd	s5,88(sp)
    80007020:	05613823          	sd	s6,80(sp)
    80007024:	05713423          	sd	s7,72(sp)
    80007028:	03913c23          	sd	s9,56(sp)
    8000702c:	03a13823          	sd	s10,48(sp)
    80007030:	03b13423          	sd	s11,40(sp)
    80007034:	00006317          	auipc	t1,0x6
    80007038:	cbc30313          	addi	t1,t1,-836 # 8000ccf0 <pr>
    8000703c:	01832c03          	lw	s8,24(t1)
    80007040:	00b43423          	sd	a1,8(s0)
    80007044:	00c43823          	sd	a2,16(s0)
    80007048:	00d43c23          	sd	a3,24(s0)
    8000704c:	02e43023          	sd	a4,32(s0)
    80007050:	02f43423          	sd	a5,40(s0)
    80007054:	03043823          	sd	a6,48(s0)
    80007058:	03143c23          	sd	a7,56(s0)
    8000705c:	00050993          	mv	s3,a0
    80007060:	4a0c1663          	bnez	s8,8000750c <__printf+0x514>
    80007064:	60098c63          	beqz	s3,8000767c <__printf+0x684>
    80007068:	0009c503          	lbu	a0,0(s3)
    8000706c:	00840793          	addi	a5,s0,8
    80007070:	f6f43c23          	sd	a5,-136(s0)
    80007074:	00000493          	li	s1,0
    80007078:	22050063          	beqz	a0,80007298 <__printf+0x2a0>
    8000707c:	00002a37          	lui	s4,0x2
    80007080:	00018ab7          	lui	s5,0x18
    80007084:	000f4b37          	lui	s6,0xf4
    80007088:	00989bb7          	lui	s7,0x989
    8000708c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007090:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007094:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007098:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000709c:	00148c9b          	addiw	s9,s1,1
    800070a0:	02500793          	li	a5,37
    800070a4:	01998933          	add	s2,s3,s9
    800070a8:	38f51263          	bne	a0,a5,8000742c <__printf+0x434>
    800070ac:	00094783          	lbu	a5,0(s2)
    800070b0:	00078c9b          	sext.w	s9,a5
    800070b4:	1e078263          	beqz	a5,80007298 <__printf+0x2a0>
    800070b8:	0024849b          	addiw	s1,s1,2
    800070bc:	07000713          	li	a4,112
    800070c0:	00998933          	add	s2,s3,s1
    800070c4:	38e78a63          	beq	a5,a4,80007458 <__printf+0x460>
    800070c8:	20f76863          	bltu	a4,a5,800072d8 <__printf+0x2e0>
    800070cc:	42a78863          	beq	a5,a0,800074fc <__printf+0x504>
    800070d0:	06400713          	li	a4,100
    800070d4:	40e79663          	bne	a5,a4,800074e0 <__printf+0x4e8>
    800070d8:	f7843783          	ld	a5,-136(s0)
    800070dc:	0007a603          	lw	a2,0(a5)
    800070e0:	00878793          	addi	a5,a5,8
    800070e4:	f6f43c23          	sd	a5,-136(s0)
    800070e8:	42064a63          	bltz	a2,8000751c <__printf+0x524>
    800070ec:	00a00713          	li	a4,10
    800070f0:	02e677bb          	remuw	a5,a2,a4
    800070f4:	00003d97          	auipc	s11,0x3
    800070f8:	d5cd8d93          	addi	s11,s11,-676 # 80009e50 <digits>
    800070fc:	00900593          	li	a1,9
    80007100:	0006051b          	sext.w	a0,a2
    80007104:	00000c93          	li	s9,0
    80007108:	02079793          	slli	a5,a5,0x20
    8000710c:	0207d793          	srli	a5,a5,0x20
    80007110:	00fd87b3          	add	a5,s11,a5
    80007114:	0007c783          	lbu	a5,0(a5)
    80007118:	02e656bb          	divuw	a3,a2,a4
    8000711c:	f8f40023          	sb	a5,-128(s0)
    80007120:	14c5d863          	bge	a1,a2,80007270 <__printf+0x278>
    80007124:	06300593          	li	a1,99
    80007128:	00100c93          	li	s9,1
    8000712c:	02e6f7bb          	remuw	a5,a3,a4
    80007130:	02079793          	slli	a5,a5,0x20
    80007134:	0207d793          	srli	a5,a5,0x20
    80007138:	00fd87b3          	add	a5,s11,a5
    8000713c:	0007c783          	lbu	a5,0(a5)
    80007140:	02e6d73b          	divuw	a4,a3,a4
    80007144:	f8f400a3          	sb	a5,-127(s0)
    80007148:	12a5f463          	bgeu	a1,a0,80007270 <__printf+0x278>
    8000714c:	00a00693          	li	a3,10
    80007150:	00900593          	li	a1,9
    80007154:	02d777bb          	remuw	a5,a4,a3
    80007158:	02079793          	slli	a5,a5,0x20
    8000715c:	0207d793          	srli	a5,a5,0x20
    80007160:	00fd87b3          	add	a5,s11,a5
    80007164:	0007c503          	lbu	a0,0(a5)
    80007168:	02d757bb          	divuw	a5,a4,a3
    8000716c:	f8a40123          	sb	a0,-126(s0)
    80007170:	48e5f263          	bgeu	a1,a4,800075f4 <__printf+0x5fc>
    80007174:	06300513          	li	a0,99
    80007178:	02d7f5bb          	remuw	a1,a5,a3
    8000717c:	02059593          	slli	a1,a1,0x20
    80007180:	0205d593          	srli	a1,a1,0x20
    80007184:	00bd85b3          	add	a1,s11,a1
    80007188:	0005c583          	lbu	a1,0(a1)
    8000718c:	02d7d7bb          	divuw	a5,a5,a3
    80007190:	f8b401a3          	sb	a1,-125(s0)
    80007194:	48e57263          	bgeu	a0,a4,80007618 <__printf+0x620>
    80007198:	3e700513          	li	a0,999
    8000719c:	02d7f5bb          	remuw	a1,a5,a3
    800071a0:	02059593          	slli	a1,a1,0x20
    800071a4:	0205d593          	srli	a1,a1,0x20
    800071a8:	00bd85b3          	add	a1,s11,a1
    800071ac:	0005c583          	lbu	a1,0(a1)
    800071b0:	02d7d7bb          	divuw	a5,a5,a3
    800071b4:	f8b40223          	sb	a1,-124(s0)
    800071b8:	46e57663          	bgeu	a0,a4,80007624 <__printf+0x62c>
    800071bc:	02d7f5bb          	remuw	a1,a5,a3
    800071c0:	02059593          	slli	a1,a1,0x20
    800071c4:	0205d593          	srli	a1,a1,0x20
    800071c8:	00bd85b3          	add	a1,s11,a1
    800071cc:	0005c583          	lbu	a1,0(a1)
    800071d0:	02d7d7bb          	divuw	a5,a5,a3
    800071d4:	f8b402a3          	sb	a1,-123(s0)
    800071d8:	46ea7863          	bgeu	s4,a4,80007648 <__printf+0x650>
    800071dc:	02d7f5bb          	remuw	a1,a5,a3
    800071e0:	02059593          	slli	a1,a1,0x20
    800071e4:	0205d593          	srli	a1,a1,0x20
    800071e8:	00bd85b3          	add	a1,s11,a1
    800071ec:	0005c583          	lbu	a1,0(a1)
    800071f0:	02d7d7bb          	divuw	a5,a5,a3
    800071f4:	f8b40323          	sb	a1,-122(s0)
    800071f8:	3eeaf863          	bgeu	s5,a4,800075e8 <__printf+0x5f0>
    800071fc:	02d7f5bb          	remuw	a1,a5,a3
    80007200:	02059593          	slli	a1,a1,0x20
    80007204:	0205d593          	srli	a1,a1,0x20
    80007208:	00bd85b3          	add	a1,s11,a1
    8000720c:	0005c583          	lbu	a1,0(a1)
    80007210:	02d7d7bb          	divuw	a5,a5,a3
    80007214:	f8b403a3          	sb	a1,-121(s0)
    80007218:	42eb7e63          	bgeu	s6,a4,80007654 <__printf+0x65c>
    8000721c:	02d7f5bb          	remuw	a1,a5,a3
    80007220:	02059593          	slli	a1,a1,0x20
    80007224:	0205d593          	srli	a1,a1,0x20
    80007228:	00bd85b3          	add	a1,s11,a1
    8000722c:	0005c583          	lbu	a1,0(a1)
    80007230:	02d7d7bb          	divuw	a5,a5,a3
    80007234:	f8b40423          	sb	a1,-120(s0)
    80007238:	42ebfc63          	bgeu	s7,a4,80007670 <__printf+0x678>
    8000723c:	02079793          	slli	a5,a5,0x20
    80007240:	0207d793          	srli	a5,a5,0x20
    80007244:	00fd8db3          	add	s11,s11,a5
    80007248:	000dc703          	lbu	a4,0(s11)
    8000724c:	00a00793          	li	a5,10
    80007250:	00900c93          	li	s9,9
    80007254:	f8e404a3          	sb	a4,-119(s0)
    80007258:	00065c63          	bgez	a2,80007270 <__printf+0x278>
    8000725c:	f9040713          	addi	a4,s0,-112
    80007260:	00f70733          	add	a4,a4,a5
    80007264:	02d00693          	li	a3,45
    80007268:	fed70823          	sb	a3,-16(a4)
    8000726c:	00078c93          	mv	s9,a5
    80007270:	f8040793          	addi	a5,s0,-128
    80007274:	01978cb3          	add	s9,a5,s9
    80007278:	f7f40d13          	addi	s10,s0,-129
    8000727c:	000cc503          	lbu	a0,0(s9)
    80007280:	fffc8c93          	addi	s9,s9,-1
    80007284:	00000097          	auipc	ra,0x0
    80007288:	b90080e7          	jalr	-1136(ra) # 80006e14 <consputc>
    8000728c:	ffac98e3          	bne	s9,s10,8000727c <__printf+0x284>
    80007290:	00094503          	lbu	a0,0(s2)
    80007294:	e00514e3          	bnez	a0,8000709c <__printf+0xa4>
    80007298:	1a0c1663          	bnez	s8,80007444 <__printf+0x44c>
    8000729c:	08813083          	ld	ra,136(sp)
    800072a0:	08013403          	ld	s0,128(sp)
    800072a4:	07813483          	ld	s1,120(sp)
    800072a8:	07013903          	ld	s2,112(sp)
    800072ac:	06813983          	ld	s3,104(sp)
    800072b0:	06013a03          	ld	s4,96(sp)
    800072b4:	05813a83          	ld	s5,88(sp)
    800072b8:	05013b03          	ld	s6,80(sp)
    800072bc:	04813b83          	ld	s7,72(sp)
    800072c0:	04013c03          	ld	s8,64(sp)
    800072c4:	03813c83          	ld	s9,56(sp)
    800072c8:	03013d03          	ld	s10,48(sp)
    800072cc:	02813d83          	ld	s11,40(sp)
    800072d0:	0d010113          	addi	sp,sp,208
    800072d4:	00008067          	ret
    800072d8:	07300713          	li	a4,115
    800072dc:	1ce78a63          	beq	a5,a4,800074b0 <__printf+0x4b8>
    800072e0:	07800713          	li	a4,120
    800072e4:	1ee79e63          	bne	a5,a4,800074e0 <__printf+0x4e8>
    800072e8:	f7843783          	ld	a5,-136(s0)
    800072ec:	0007a703          	lw	a4,0(a5)
    800072f0:	00878793          	addi	a5,a5,8
    800072f4:	f6f43c23          	sd	a5,-136(s0)
    800072f8:	28074263          	bltz	a4,8000757c <__printf+0x584>
    800072fc:	00003d97          	auipc	s11,0x3
    80007300:	b54d8d93          	addi	s11,s11,-1196 # 80009e50 <digits>
    80007304:	00f77793          	andi	a5,a4,15
    80007308:	00fd87b3          	add	a5,s11,a5
    8000730c:	0007c683          	lbu	a3,0(a5)
    80007310:	00f00613          	li	a2,15
    80007314:	0007079b          	sext.w	a5,a4
    80007318:	f8d40023          	sb	a3,-128(s0)
    8000731c:	0047559b          	srliw	a1,a4,0x4
    80007320:	0047569b          	srliw	a3,a4,0x4
    80007324:	00000c93          	li	s9,0
    80007328:	0ee65063          	bge	a2,a4,80007408 <__printf+0x410>
    8000732c:	00f6f693          	andi	a3,a3,15
    80007330:	00dd86b3          	add	a3,s11,a3
    80007334:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007338:	0087d79b          	srliw	a5,a5,0x8
    8000733c:	00100c93          	li	s9,1
    80007340:	f8d400a3          	sb	a3,-127(s0)
    80007344:	0cb67263          	bgeu	a2,a1,80007408 <__printf+0x410>
    80007348:	00f7f693          	andi	a3,a5,15
    8000734c:	00dd86b3          	add	a3,s11,a3
    80007350:	0006c583          	lbu	a1,0(a3)
    80007354:	00f00613          	li	a2,15
    80007358:	0047d69b          	srliw	a3,a5,0x4
    8000735c:	f8b40123          	sb	a1,-126(s0)
    80007360:	0047d593          	srli	a1,a5,0x4
    80007364:	28f67e63          	bgeu	a2,a5,80007600 <__printf+0x608>
    80007368:	00f6f693          	andi	a3,a3,15
    8000736c:	00dd86b3          	add	a3,s11,a3
    80007370:	0006c503          	lbu	a0,0(a3)
    80007374:	0087d813          	srli	a6,a5,0x8
    80007378:	0087d69b          	srliw	a3,a5,0x8
    8000737c:	f8a401a3          	sb	a0,-125(s0)
    80007380:	28b67663          	bgeu	a2,a1,8000760c <__printf+0x614>
    80007384:	00f6f693          	andi	a3,a3,15
    80007388:	00dd86b3          	add	a3,s11,a3
    8000738c:	0006c583          	lbu	a1,0(a3)
    80007390:	00c7d513          	srli	a0,a5,0xc
    80007394:	00c7d69b          	srliw	a3,a5,0xc
    80007398:	f8b40223          	sb	a1,-124(s0)
    8000739c:	29067a63          	bgeu	a2,a6,80007630 <__printf+0x638>
    800073a0:	00f6f693          	andi	a3,a3,15
    800073a4:	00dd86b3          	add	a3,s11,a3
    800073a8:	0006c583          	lbu	a1,0(a3)
    800073ac:	0107d813          	srli	a6,a5,0x10
    800073b0:	0107d69b          	srliw	a3,a5,0x10
    800073b4:	f8b402a3          	sb	a1,-123(s0)
    800073b8:	28a67263          	bgeu	a2,a0,8000763c <__printf+0x644>
    800073bc:	00f6f693          	andi	a3,a3,15
    800073c0:	00dd86b3          	add	a3,s11,a3
    800073c4:	0006c683          	lbu	a3,0(a3)
    800073c8:	0147d79b          	srliw	a5,a5,0x14
    800073cc:	f8d40323          	sb	a3,-122(s0)
    800073d0:	21067663          	bgeu	a2,a6,800075dc <__printf+0x5e4>
    800073d4:	02079793          	slli	a5,a5,0x20
    800073d8:	0207d793          	srli	a5,a5,0x20
    800073dc:	00fd8db3          	add	s11,s11,a5
    800073e0:	000dc683          	lbu	a3,0(s11)
    800073e4:	00800793          	li	a5,8
    800073e8:	00700c93          	li	s9,7
    800073ec:	f8d403a3          	sb	a3,-121(s0)
    800073f0:	00075c63          	bgez	a4,80007408 <__printf+0x410>
    800073f4:	f9040713          	addi	a4,s0,-112
    800073f8:	00f70733          	add	a4,a4,a5
    800073fc:	02d00693          	li	a3,45
    80007400:	fed70823          	sb	a3,-16(a4)
    80007404:	00078c93          	mv	s9,a5
    80007408:	f8040793          	addi	a5,s0,-128
    8000740c:	01978cb3          	add	s9,a5,s9
    80007410:	f7f40d13          	addi	s10,s0,-129
    80007414:	000cc503          	lbu	a0,0(s9)
    80007418:	fffc8c93          	addi	s9,s9,-1
    8000741c:	00000097          	auipc	ra,0x0
    80007420:	9f8080e7          	jalr	-1544(ra) # 80006e14 <consputc>
    80007424:	ff9d18e3          	bne	s10,s9,80007414 <__printf+0x41c>
    80007428:	0100006f          	j	80007438 <__printf+0x440>
    8000742c:	00000097          	auipc	ra,0x0
    80007430:	9e8080e7          	jalr	-1560(ra) # 80006e14 <consputc>
    80007434:	000c8493          	mv	s1,s9
    80007438:	00094503          	lbu	a0,0(s2)
    8000743c:	c60510e3          	bnez	a0,8000709c <__printf+0xa4>
    80007440:	e40c0ee3          	beqz	s8,8000729c <__printf+0x2a4>
    80007444:	00006517          	auipc	a0,0x6
    80007448:	8ac50513          	addi	a0,a0,-1876 # 8000ccf0 <pr>
    8000744c:	00001097          	auipc	ra,0x1
    80007450:	94c080e7          	jalr	-1716(ra) # 80007d98 <release>
    80007454:	e49ff06f          	j	8000729c <__printf+0x2a4>
    80007458:	f7843783          	ld	a5,-136(s0)
    8000745c:	03000513          	li	a0,48
    80007460:	01000d13          	li	s10,16
    80007464:	00878713          	addi	a4,a5,8
    80007468:	0007bc83          	ld	s9,0(a5)
    8000746c:	f6e43c23          	sd	a4,-136(s0)
    80007470:	00000097          	auipc	ra,0x0
    80007474:	9a4080e7          	jalr	-1628(ra) # 80006e14 <consputc>
    80007478:	07800513          	li	a0,120
    8000747c:	00000097          	auipc	ra,0x0
    80007480:	998080e7          	jalr	-1640(ra) # 80006e14 <consputc>
    80007484:	00003d97          	auipc	s11,0x3
    80007488:	9ccd8d93          	addi	s11,s11,-1588 # 80009e50 <digits>
    8000748c:	03ccd793          	srli	a5,s9,0x3c
    80007490:	00fd87b3          	add	a5,s11,a5
    80007494:	0007c503          	lbu	a0,0(a5)
    80007498:	fffd0d1b          	addiw	s10,s10,-1
    8000749c:	004c9c93          	slli	s9,s9,0x4
    800074a0:	00000097          	auipc	ra,0x0
    800074a4:	974080e7          	jalr	-1676(ra) # 80006e14 <consputc>
    800074a8:	fe0d12e3          	bnez	s10,8000748c <__printf+0x494>
    800074ac:	f8dff06f          	j	80007438 <__printf+0x440>
    800074b0:	f7843783          	ld	a5,-136(s0)
    800074b4:	0007bc83          	ld	s9,0(a5)
    800074b8:	00878793          	addi	a5,a5,8
    800074bc:	f6f43c23          	sd	a5,-136(s0)
    800074c0:	000c9a63          	bnez	s9,800074d4 <__printf+0x4dc>
    800074c4:	1080006f          	j	800075cc <__printf+0x5d4>
    800074c8:	001c8c93          	addi	s9,s9,1
    800074cc:	00000097          	auipc	ra,0x0
    800074d0:	948080e7          	jalr	-1720(ra) # 80006e14 <consputc>
    800074d4:	000cc503          	lbu	a0,0(s9)
    800074d8:	fe0518e3          	bnez	a0,800074c8 <__printf+0x4d0>
    800074dc:	f5dff06f          	j	80007438 <__printf+0x440>
    800074e0:	02500513          	li	a0,37
    800074e4:	00000097          	auipc	ra,0x0
    800074e8:	930080e7          	jalr	-1744(ra) # 80006e14 <consputc>
    800074ec:	000c8513          	mv	a0,s9
    800074f0:	00000097          	auipc	ra,0x0
    800074f4:	924080e7          	jalr	-1756(ra) # 80006e14 <consputc>
    800074f8:	f41ff06f          	j	80007438 <__printf+0x440>
    800074fc:	02500513          	li	a0,37
    80007500:	00000097          	auipc	ra,0x0
    80007504:	914080e7          	jalr	-1772(ra) # 80006e14 <consputc>
    80007508:	f31ff06f          	j	80007438 <__printf+0x440>
    8000750c:	00030513          	mv	a0,t1
    80007510:	00000097          	auipc	ra,0x0
    80007514:	7bc080e7          	jalr	1980(ra) # 80007ccc <acquire>
    80007518:	b4dff06f          	j	80007064 <__printf+0x6c>
    8000751c:	40c0053b          	negw	a0,a2
    80007520:	00a00713          	li	a4,10
    80007524:	02e576bb          	remuw	a3,a0,a4
    80007528:	00003d97          	auipc	s11,0x3
    8000752c:	928d8d93          	addi	s11,s11,-1752 # 80009e50 <digits>
    80007530:	ff700593          	li	a1,-9
    80007534:	02069693          	slli	a3,a3,0x20
    80007538:	0206d693          	srli	a3,a3,0x20
    8000753c:	00dd86b3          	add	a3,s11,a3
    80007540:	0006c683          	lbu	a3,0(a3)
    80007544:	02e557bb          	divuw	a5,a0,a4
    80007548:	f8d40023          	sb	a3,-128(s0)
    8000754c:	10b65e63          	bge	a2,a1,80007668 <__printf+0x670>
    80007550:	06300593          	li	a1,99
    80007554:	02e7f6bb          	remuw	a3,a5,a4
    80007558:	02069693          	slli	a3,a3,0x20
    8000755c:	0206d693          	srli	a3,a3,0x20
    80007560:	00dd86b3          	add	a3,s11,a3
    80007564:	0006c683          	lbu	a3,0(a3)
    80007568:	02e7d73b          	divuw	a4,a5,a4
    8000756c:	00200793          	li	a5,2
    80007570:	f8d400a3          	sb	a3,-127(s0)
    80007574:	bca5ece3          	bltu	a1,a0,8000714c <__printf+0x154>
    80007578:	ce5ff06f          	j	8000725c <__printf+0x264>
    8000757c:	40e007bb          	negw	a5,a4
    80007580:	00003d97          	auipc	s11,0x3
    80007584:	8d0d8d93          	addi	s11,s11,-1840 # 80009e50 <digits>
    80007588:	00f7f693          	andi	a3,a5,15
    8000758c:	00dd86b3          	add	a3,s11,a3
    80007590:	0006c583          	lbu	a1,0(a3)
    80007594:	ff100613          	li	a2,-15
    80007598:	0047d69b          	srliw	a3,a5,0x4
    8000759c:	f8b40023          	sb	a1,-128(s0)
    800075a0:	0047d59b          	srliw	a1,a5,0x4
    800075a4:	0ac75e63          	bge	a4,a2,80007660 <__printf+0x668>
    800075a8:	00f6f693          	andi	a3,a3,15
    800075ac:	00dd86b3          	add	a3,s11,a3
    800075b0:	0006c603          	lbu	a2,0(a3)
    800075b4:	00f00693          	li	a3,15
    800075b8:	0087d79b          	srliw	a5,a5,0x8
    800075bc:	f8c400a3          	sb	a2,-127(s0)
    800075c0:	d8b6e4e3          	bltu	a3,a1,80007348 <__printf+0x350>
    800075c4:	00200793          	li	a5,2
    800075c8:	e2dff06f          	j	800073f4 <__printf+0x3fc>
    800075cc:	00003c97          	auipc	s9,0x3
    800075d0:	864c8c93          	addi	s9,s9,-1948 # 80009e30 <_ZTV12ConsumerSync+0x170>
    800075d4:	02800513          	li	a0,40
    800075d8:	ef1ff06f          	j	800074c8 <__printf+0x4d0>
    800075dc:	00700793          	li	a5,7
    800075e0:	00600c93          	li	s9,6
    800075e4:	e0dff06f          	j	800073f0 <__printf+0x3f8>
    800075e8:	00700793          	li	a5,7
    800075ec:	00600c93          	li	s9,6
    800075f0:	c69ff06f          	j	80007258 <__printf+0x260>
    800075f4:	00300793          	li	a5,3
    800075f8:	00200c93          	li	s9,2
    800075fc:	c5dff06f          	j	80007258 <__printf+0x260>
    80007600:	00300793          	li	a5,3
    80007604:	00200c93          	li	s9,2
    80007608:	de9ff06f          	j	800073f0 <__printf+0x3f8>
    8000760c:	00400793          	li	a5,4
    80007610:	00300c93          	li	s9,3
    80007614:	dddff06f          	j	800073f0 <__printf+0x3f8>
    80007618:	00400793          	li	a5,4
    8000761c:	00300c93          	li	s9,3
    80007620:	c39ff06f          	j	80007258 <__printf+0x260>
    80007624:	00500793          	li	a5,5
    80007628:	00400c93          	li	s9,4
    8000762c:	c2dff06f          	j	80007258 <__printf+0x260>
    80007630:	00500793          	li	a5,5
    80007634:	00400c93          	li	s9,4
    80007638:	db9ff06f          	j	800073f0 <__printf+0x3f8>
    8000763c:	00600793          	li	a5,6
    80007640:	00500c93          	li	s9,5
    80007644:	dadff06f          	j	800073f0 <__printf+0x3f8>
    80007648:	00600793          	li	a5,6
    8000764c:	00500c93          	li	s9,5
    80007650:	c09ff06f          	j	80007258 <__printf+0x260>
    80007654:	00800793          	li	a5,8
    80007658:	00700c93          	li	s9,7
    8000765c:	bfdff06f          	j	80007258 <__printf+0x260>
    80007660:	00100793          	li	a5,1
    80007664:	d91ff06f          	j	800073f4 <__printf+0x3fc>
    80007668:	00100793          	li	a5,1
    8000766c:	bf1ff06f          	j	8000725c <__printf+0x264>
    80007670:	00900793          	li	a5,9
    80007674:	00800c93          	li	s9,8
    80007678:	be1ff06f          	j	80007258 <__printf+0x260>
    8000767c:	00002517          	auipc	a0,0x2
    80007680:	7bc50513          	addi	a0,a0,1980 # 80009e38 <_ZTV12ConsumerSync+0x178>
    80007684:	00000097          	auipc	ra,0x0
    80007688:	918080e7          	jalr	-1768(ra) # 80006f9c <panic>

000000008000768c <printfinit>:
    8000768c:	fe010113          	addi	sp,sp,-32
    80007690:	00813823          	sd	s0,16(sp)
    80007694:	00913423          	sd	s1,8(sp)
    80007698:	00113c23          	sd	ra,24(sp)
    8000769c:	02010413          	addi	s0,sp,32
    800076a0:	00005497          	auipc	s1,0x5
    800076a4:	65048493          	addi	s1,s1,1616 # 8000ccf0 <pr>
    800076a8:	00048513          	mv	a0,s1
    800076ac:	00002597          	auipc	a1,0x2
    800076b0:	79c58593          	addi	a1,a1,1948 # 80009e48 <_ZTV12ConsumerSync+0x188>
    800076b4:	00000097          	auipc	ra,0x0
    800076b8:	5f4080e7          	jalr	1524(ra) # 80007ca8 <initlock>
    800076bc:	01813083          	ld	ra,24(sp)
    800076c0:	01013403          	ld	s0,16(sp)
    800076c4:	0004ac23          	sw	zero,24(s1)
    800076c8:	00813483          	ld	s1,8(sp)
    800076cc:	02010113          	addi	sp,sp,32
    800076d0:	00008067          	ret

00000000800076d4 <uartinit>:
    800076d4:	ff010113          	addi	sp,sp,-16
    800076d8:	00813423          	sd	s0,8(sp)
    800076dc:	01010413          	addi	s0,sp,16
    800076e0:	100007b7          	lui	a5,0x10000
    800076e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800076e8:	f8000713          	li	a4,-128
    800076ec:	00e781a3          	sb	a4,3(a5)
    800076f0:	00300713          	li	a4,3
    800076f4:	00e78023          	sb	a4,0(a5)
    800076f8:	000780a3          	sb	zero,1(a5)
    800076fc:	00e781a3          	sb	a4,3(a5)
    80007700:	00700693          	li	a3,7
    80007704:	00d78123          	sb	a3,2(a5)
    80007708:	00e780a3          	sb	a4,1(a5)
    8000770c:	00813403          	ld	s0,8(sp)
    80007710:	01010113          	addi	sp,sp,16
    80007714:	00008067          	ret

0000000080007718 <uartputc>:
    80007718:	00004797          	auipc	a5,0x4
    8000771c:	3787a783          	lw	a5,888(a5) # 8000ba90 <panicked>
    80007720:	00078463          	beqz	a5,80007728 <uartputc+0x10>
    80007724:	0000006f          	j	80007724 <uartputc+0xc>
    80007728:	fd010113          	addi	sp,sp,-48
    8000772c:	02813023          	sd	s0,32(sp)
    80007730:	00913c23          	sd	s1,24(sp)
    80007734:	01213823          	sd	s2,16(sp)
    80007738:	01313423          	sd	s3,8(sp)
    8000773c:	02113423          	sd	ra,40(sp)
    80007740:	03010413          	addi	s0,sp,48
    80007744:	00004917          	auipc	s2,0x4
    80007748:	35490913          	addi	s2,s2,852 # 8000ba98 <uart_tx_r>
    8000774c:	00093783          	ld	a5,0(s2)
    80007750:	00004497          	auipc	s1,0x4
    80007754:	35048493          	addi	s1,s1,848 # 8000baa0 <uart_tx_w>
    80007758:	0004b703          	ld	a4,0(s1)
    8000775c:	02078693          	addi	a3,a5,32
    80007760:	00050993          	mv	s3,a0
    80007764:	02e69c63          	bne	a3,a4,8000779c <uartputc+0x84>
    80007768:	00001097          	auipc	ra,0x1
    8000776c:	834080e7          	jalr	-1996(ra) # 80007f9c <push_on>
    80007770:	00093783          	ld	a5,0(s2)
    80007774:	0004b703          	ld	a4,0(s1)
    80007778:	02078793          	addi	a5,a5,32
    8000777c:	00e79463          	bne	a5,a4,80007784 <uartputc+0x6c>
    80007780:	0000006f          	j	80007780 <uartputc+0x68>
    80007784:	00001097          	auipc	ra,0x1
    80007788:	88c080e7          	jalr	-1908(ra) # 80008010 <pop_on>
    8000778c:	00093783          	ld	a5,0(s2)
    80007790:	0004b703          	ld	a4,0(s1)
    80007794:	02078693          	addi	a3,a5,32
    80007798:	fce688e3          	beq	a3,a4,80007768 <uartputc+0x50>
    8000779c:	01f77693          	andi	a3,a4,31
    800077a0:	00005597          	auipc	a1,0x5
    800077a4:	57058593          	addi	a1,a1,1392 # 8000cd10 <uart_tx_buf>
    800077a8:	00d586b3          	add	a3,a1,a3
    800077ac:	00170713          	addi	a4,a4,1
    800077b0:	01368023          	sb	s3,0(a3)
    800077b4:	00e4b023          	sd	a4,0(s1)
    800077b8:	10000637          	lui	a2,0x10000
    800077bc:	02f71063          	bne	a4,a5,800077dc <uartputc+0xc4>
    800077c0:	0340006f          	j	800077f4 <uartputc+0xdc>
    800077c4:	00074703          	lbu	a4,0(a4)
    800077c8:	00f93023          	sd	a5,0(s2)
    800077cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800077d0:	00093783          	ld	a5,0(s2)
    800077d4:	0004b703          	ld	a4,0(s1)
    800077d8:	00f70e63          	beq	a4,a5,800077f4 <uartputc+0xdc>
    800077dc:	00564683          	lbu	a3,5(a2)
    800077e0:	01f7f713          	andi	a4,a5,31
    800077e4:	00e58733          	add	a4,a1,a4
    800077e8:	0206f693          	andi	a3,a3,32
    800077ec:	00178793          	addi	a5,a5,1
    800077f0:	fc069ae3          	bnez	a3,800077c4 <uartputc+0xac>
    800077f4:	02813083          	ld	ra,40(sp)
    800077f8:	02013403          	ld	s0,32(sp)
    800077fc:	01813483          	ld	s1,24(sp)
    80007800:	01013903          	ld	s2,16(sp)
    80007804:	00813983          	ld	s3,8(sp)
    80007808:	03010113          	addi	sp,sp,48
    8000780c:	00008067          	ret

0000000080007810 <uartputc_sync>:
    80007810:	ff010113          	addi	sp,sp,-16
    80007814:	00813423          	sd	s0,8(sp)
    80007818:	01010413          	addi	s0,sp,16
    8000781c:	00004717          	auipc	a4,0x4
    80007820:	27472703          	lw	a4,628(a4) # 8000ba90 <panicked>
    80007824:	02071663          	bnez	a4,80007850 <uartputc_sync+0x40>
    80007828:	00050793          	mv	a5,a0
    8000782c:	100006b7          	lui	a3,0x10000
    80007830:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007834:	02077713          	andi	a4,a4,32
    80007838:	fe070ce3          	beqz	a4,80007830 <uartputc_sync+0x20>
    8000783c:	0ff7f793          	andi	a5,a5,255
    80007840:	00f68023          	sb	a5,0(a3)
    80007844:	00813403          	ld	s0,8(sp)
    80007848:	01010113          	addi	sp,sp,16
    8000784c:	00008067          	ret
    80007850:	0000006f          	j	80007850 <uartputc_sync+0x40>

0000000080007854 <uartstart>:
    80007854:	ff010113          	addi	sp,sp,-16
    80007858:	00813423          	sd	s0,8(sp)
    8000785c:	01010413          	addi	s0,sp,16
    80007860:	00004617          	auipc	a2,0x4
    80007864:	23860613          	addi	a2,a2,568 # 8000ba98 <uart_tx_r>
    80007868:	00004517          	auipc	a0,0x4
    8000786c:	23850513          	addi	a0,a0,568 # 8000baa0 <uart_tx_w>
    80007870:	00063783          	ld	a5,0(a2)
    80007874:	00053703          	ld	a4,0(a0)
    80007878:	04f70263          	beq	a4,a5,800078bc <uartstart+0x68>
    8000787c:	100005b7          	lui	a1,0x10000
    80007880:	00005817          	auipc	a6,0x5
    80007884:	49080813          	addi	a6,a6,1168 # 8000cd10 <uart_tx_buf>
    80007888:	01c0006f          	j	800078a4 <uartstart+0x50>
    8000788c:	0006c703          	lbu	a4,0(a3)
    80007890:	00f63023          	sd	a5,0(a2)
    80007894:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007898:	00063783          	ld	a5,0(a2)
    8000789c:	00053703          	ld	a4,0(a0)
    800078a0:	00f70e63          	beq	a4,a5,800078bc <uartstart+0x68>
    800078a4:	01f7f713          	andi	a4,a5,31
    800078a8:	00e806b3          	add	a3,a6,a4
    800078ac:	0055c703          	lbu	a4,5(a1)
    800078b0:	00178793          	addi	a5,a5,1
    800078b4:	02077713          	andi	a4,a4,32
    800078b8:	fc071ae3          	bnez	a4,8000788c <uartstart+0x38>
    800078bc:	00813403          	ld	s0,8(sp)
    800078c0:	01010113          	addi	sp,sp,16
    800078c4:	00008067          	ret

00000000800078c8 <uartgetc>:
    800078c8:	ff010113          	addi	sp,sp,-16
    800078cc:	00813423          	sd	s0,8(sp)
    800078d0:	01010413          	addi	s0,sp,16
    800078d4:	10000737          	lui	a4,0x10000
    800078d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800078dc:	0017f793          	andi	a5,a5,1
    800078e0:	00078c63          	beqz	a5,800078f8 <uartgetc+0x30>
    800078e4:	00074503          	lbu	a0,0(a4)
    800078e8:	0ff57513          	andi	a0,a0,255
    800078ec:	00813403          	ld	s0,8(sp)
    800078f0:	01010113          	addi	sp,sp,16
    800078f4:	00008067          	ret
    800078f8:	fff00513          	li	a0,-1
    800078fc:	ff1ff06f          	j	800078ec <uartgetc+0x24>

0000000080007900 <uartintr>:
    80007900:	100007b7          	lui	a5,0x10000
    80007904:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007908:	0017f793          	andi	a5,a5,1
    8000790c:	0a078463          	beqz	a5,800079b4 <uartintr+0xb4>
    80007910:	fe010113          	addi	sp,sp,-32
    80007914:	00813823          	sd	s0,16(sp)
    80007918:	00913423          	sd	s1,8(sp)
    8000791c:	00113c23          	sd	ra,24(sp)
    80007920:	02010413          	addi	s0,sp,32
    80007924:	100004b7          	lui	s1,0x10000
    80007928:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000792c:	0ff57513          	andi	a0,a0,255
    80007930:	fffff097          	auipc	ra,0xfffff
    80007934:	534080e7          	jalr	1332(ra) # 80006e64 <consoleintr>
    80007938:	0054c783          	lbu	a5,5(s1)
    8000793c:	0017f793          	andi	a5,a5,1
    80007940:	fe0794e3          	bnez	a5,80007928 <uartintr+0x28>
    80007944:	00004617          	auipc	a2,0x4
    80007948:	15460613          	addi	a2,a2,340 # 8000ba98 <uart_tx_r>
    8000794c:	00004517          	auipc	a0,0x4
    80007950:	15450513          	addi	a0,a0,340 # 8000baa0 <uart_tx_w>
    80007954:	00063783          	ld	a5,0(a2)
    80007958:	00053703          	ld	a4,0(a0)
    8000795c:	04f70263          	beq	a4,a5,800079a0 <uartintr+0xa0>
    80007960:	100005b7          	lui	a1,0x10000
    80007964:	00005817          	auipc	a6,0x5
    80007968:	3ac80813          	addi	a6,a6,940 # 8000cd10 <uart_tx_buf>
    8000796c:	01c0006f          	j	80007988 <uartintr+0x88>
    80007970:	0006c703          	lbu	a4,0(a3)
    80007974:	00f63023          	sd	a5,0(a2)
    80007978:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000797c:	00063783          	ld	a5,0(a2)
    80007980:	00053703          	ld	a4,0(a0)
    80007984:	00f70e63          	beq	a4,a5,800079a0 <uartintr+0xa0>
    80007988:	01f7f713          	andi	a4,a5,31
    8000798c:	00e806b3          	add	a3,a6,a4
    80007990:	0055c703          	lbu	a4,5(a1)
    80007994:	00178793          	addi	a5,a5,1
    80007998:	02077713          	andi	a4,a4,32
    8000799c:	fc071ae3          	bnez	a4,80007970 <uartintr+0x70>
    800079a0:	01813083          	ld	ra,24(sp)
    800079a4:	01013403          	ld	s0,16(sp)
    800079a8:	00813483          	ld	s1,8(sp)
    800079ac:	02010113          	addi	sp,sp,32
    800079b0:	00008067          	ret
    800079b4:	00004617          	auipc	a2,0x4
    800079b8:	0e460613          	addi	a2,a2,228 # 8000ba98 <uart_tx_r>
    800079bc:	00004517          	auipc	a0,0x4
    800079c0:	0e450513          	addi	a0,a0,228 # 8000baa0 <uart_tx_w>
    800079c4:	00063783          	ld	a5,0(a2)
    800079c8:	00053703          	ld	a4,0(a0)
    800079cc:	04f70263          	beq	a4,a5,80007a10 <uartintr+0x110>
    800079d0:	100005b7          	lui	a1,0x10000
    800079d4:	00005817          	auipc	a6,0x5
    800079d8:	33c80813          	addi	a6,a6,828 # 8000cd10 <uart_tx_buf>
    800079dc:	01c0006f          	j	800079f8 <uartintr+0xf8>
    800079e0:	0006c703          	lbu	a4,0(a3)
    800079e4:	00f63023          	sd	a5,0(a2)
    800079e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079ec:	00063783          	ld	a5,0(a2)
    800079f0:	00053703          	ld	a4,0(a0)
    800079f4:	02f70063          	beq	a4,a5,80007a14 <uartintr+0x114>
    800079f8:	01f7f713          	andi	a4,a5,31
    800079fc:	00e806b3          	add	a3,a6,a4
    80007a00:	0055c703          	lbu	a4,5(a1)
    80007a04:	00178793          	addi	a5,a5,1
    80007a08:	02077713          	andi	a4,a4,32
    80007a0c:	fc071ae3          	bnez	a4,800079e0 <uartintr+0xe0>
    80007a10:	00008067          	ret
    80007a14:	00008067          	ret

0000000080007a18 <kinit>:
    80007a18:	fc010113          	addi	sp,sp,-64
    80007a1c:	02913423          	sd	s1,40(sp)
    80007a20:	fffff7b7          	lui	a5,0xfffff
    80007a24:	00006497          	auipc	s1,0x6
    80007a28:	30b48493          	addi	s1,s1,779 # 8000dd2f <end+0xfff>
    80007a2c:	02813823          	sd	s0,48(sp)
    80007a30:	01313c23          	sd	s3,24(sp)
    80007a34:	00f4f4b3          	and	s1,s1,a5
    80007a38:	02113c23          	sd	ra,56(sp)
    80007a3c:	03213023          	sd	s2,32(sp)
    80007a40:	01413823          	sd	s4,16(sp)
    80007a44:	01513423          	sd	s5,8(sp)
    80007a48:	04010413          	addi	s0,sp,64
    80007a4c:	000017b7          	lui	a5,0x1
    80007a50:	01100993          	li	s3,17
    80007a54:	00f487b3          	add	a5,s1,a5
    80007a58:	01b99993          	slli	s3,s3,0x1b
    80007a5c:	06f9e063          	bltu	s3,a5,80007abc <kinit+0xa4>
    80007a60:	00005a97          	auipc	s5,0x5
    80007a64:	2d0a8a93          	addi	s5,s5,720 # 8000cd30 <end>
    80007a68:	0754ec63          	bltu	s1,s5,80007ae0 <kinit+0xc8>
    80007a6c:	0734fa63          	bgeu	s1,s3,80007ae0 <kinit+0xc8>
    80007a70:	00088a37          	lui	s4,0x88
    80007a74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007a78:	00004917          	auipc	s2,0x4
    80007a7c:	03090913          	addi	s2,s2,48 # 8000baa8 <kmem>
    80007a80:	00ca1a13          	slli	s4,s4,0xc
    80007a84:	0140006f          	j	80007a98 <kinit+0x80>
    80007a88:	000017b7          	lui	a5,0x1
    80007a8c:	00f484b3          	add	s1,s1,a5
    80007a90:	0554e863          	bltu	s1,s5,80007ae0 <kinit+0xc8>
    80007a94:	0534f663          	bgeu	s1,s3,80007ae0 <kinit+0xc8>
    80007a98:	00001637          	lui	a2,0x1
    80007a9c:	00100593          	li	a1,1
    80007aa0:	00048513          	mv	a0,s1
    80007aa4:	00000097          	auipc	ra,0x0
    80007aa8:	5e4080e7          	jalr	1508(ra) # 80008088 <__memset>
    80007aac:	00093783          	ld	a5,0(s2)
    80007ab0:	00f4b023          	sd	a5,0(s1)
    80007ab4:	00993023          	sd	s1,0(s2)
    80007ab8:	fd4498e3          	bne	s1,s4,80007a88 <kinit+0x70>
    80007abc:	03813083          	ld	ra,56(sp)
    80007ac0:	03013403          	ld	s0,48(sp)
    80007ac4:	02813483          	ld	s1,40(sp)
    80007ac8:	02013903          	ld	s2,32(sp)
    80007acc:	01813983          	ld	s3,24(sp)
    80007ad0:	01013a03          	ld	s4,16(sp)
    80007ad4:	00813a83          	ld	s5,8(sp)
    80007ad8:	04010113          	addi	sp,sp,64
    80007adc:	00008067          	ret
    80007ae0:	00002517          	auipc	a0,0x2
    80007ae4:	38850513          	addi	a0,a0,904 # 80009e68 <digits+0x18>
    80007ae8:	fffff097          	auipc	ra,0xfffff
    80007aec:	4b4080e7          	jalr	1204(ra) # 80006f9c <panic>

0000000080007af0 <freerange>:
    80007af0:	fc010113          	addi	sp,sp,-64
    80007af4:	000017b7          	lui	a5,0x1
    80007af8:	02913423          	sd	s1,40(sp)
    80007afc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007b00:	009504b3          	add	s1,a0,s1
    80007b04:	fffff537          	lui	a0,0xfffff
    80007b08:	02813823          	sd	s0,48(sp)
    80007b0c:	02113c23          	sd	ra,56(sp)
    80007b10:	03213023          	sd	s2,32(sp)
    80007b14:	01313c23          	sd	s3,24(sp)
    80007b18:	01413823          	sd	s4,16(sp)
    80007b1c:	01513423          	sd	s5,8(sp)
    80007b20:	01613023          	sd	s6,0(sp)
    80007b24:	04010413          	addi	s0,sp,64
    80007b28:	00a4f4b3          	and	s1,s1,a0
    80007b2c:	00f487b3          	add	a5,s1,a5
    80007b30:	06f5e463          	bltu	a1,a5,80007b98 <freerange+0xa8>
    80007b34:	00005a97          	auipc	s5,0x5
    80007b38:	1fca8a93          	addi	s5,s5,508 # 8000cd30 <end>
    80007b3c:	0954e263          	bltu	s1,s5,80007bc0 <freerange+0xd0>
    80007b40:	01100993          	li	s3,17
    80007b44:	01b99993          	slli	s3,s3,0x1b
    80007b48:	0734fc63          	bgeu	s1,s3,80007bc0 <freerange+0xd0>
    80007b4c:	00058a13          	mv	s4,a1
    80007b50:	00004917          	auipc	s2,0x4
    80007b54:	f5890913          	addi	s2,s2,-168 # 8000baa8 <kmem>
    80007b58:	00002b37          	lui	s6,0x2
    80007b5c:	0140006f          	j	80007b70 <freerange+0x80>
    80007b60:	000017b7          	lui	a5,0x1
    80007b64:	00f484b3          	add	s1,s1,a5
    80007b68:	0554ec63          	bltu	s1,s5,80007bc0 <freerange+0xd0>
    80007b6c:	0534fa63          	bgeu	s1,s3,80007bc0 <freerange+0xd0>
    80007b70:	00001637          	lui	a2,0x1
    80007b74:	00100593          	li	a1,1
    80007b78:	00048513          	mv	a0,s1
    80007b7c:	00000097          	auipc	ra,0x0
    80007b80:	50c080e7          	jalr	1292(ra) # 80008088 <__memset>
    80007b84:	00093703          	ld	a4,0(s2)
    80007b88:	016487b3          	add	a5,s1,s6
    80007b8c:	00e4b023          	sd	a4,0(s1)
    80007b90:	00993023          	sd	s1,0(s2)
    80007b94:	fcfa76e3          	bgeu	s4,a5,80007b60 <freerange+0x70>
    80007b98:	03813083          	ld	ra,56(sp)
    80007b9c:	03013403          	ld	s0,48(sp)
    80007ba0:	02813483          	ld	s1,40(sp)
    80007ba4:	02013903          	ld	s2,32(sp)
    80007ba8:	01813983          	ld	s3,24(sp)
    80007bac:	01013a03          	ld	s4,16(sp)
    80007bb0:	00813a83          	ld	s5,8(sp)
    80007bb4:	00013b03          	ld	s6,0(sp)
    80007bb8:	04010113          	addi	sp,sp,64
    80007bbc:	00008067          	ret
    80007bc0:	00002517          	auipc	a0,0x2
    80007bc4:	2a850513          	addi	a0,a0,680 # 80009e68 <digits+0x18>
    80007bc8:	fffff097          	auipc	ra,0xfffff
    80007bcc:	3d4080e7          	jalr	980(ra) # 80006f9c <panic>

0000000080007bd0 <kfree>:
    80007bd0:	fe010113          	addi	sp,sp,-32
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00113c23          	sd	ra,24(sp)
    80007bdc:	00913423          	sd	s1,8(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	03451793          	slli	a5,a0,0x34
    80007be8:	04079c63          	bnez	a5,80007c40 <kfree+0x70>
    80007bec:	00005797          	auipc	a5,0x5
    80007bf0:	14478793          	addi	a5,a5,324 # 8000cd30 <end>
    80007bf4:	00050493          	mv	s1,a0
    80007bf8:	04f56463          	bltu	a0,a5,80007c40 <kfree+0x70>
    80007bfc:	01100793          	li	a5,17
    80007c00:	01b79793          	slli	a5,a5,0x1b
    80007c04:	02f57e63          	bgeu	a0,a5,80007c40 <kfree+0x70>
    80007c08:	00001637          	lui	a2,0x1
    80007c0c:	00100593          	li	a1,1
    80007c10:	00000097          	auipc	ra,0x0
    80007c14:	478080e7          	jalr	1144(ra) # 80008088 <__memset>
    80007c18:	00004797          	auipc	a5,0x4
    80007c1c:	e9078793          	addi	a5,a5,-368 # 8000baa8 <kmem>
    80007c20:	0007b703          	ld	a4,0(a5)
    80007c24:	01813083          	ld	ra,24(sp)
    80007c28:	01013403          	ld	s0,16(sp)
    80007c2c:	00e4b023          	sd	a4,0(s1)
    80007c30:	0097b023          	sd	s1,0(a5)
    80007c34:	00813483          	ld	s1,8(sp)
    80007c38:	02010113          	addi	sp,sp,32
    80007c3c:	00008067          	ret
    80007c40:	00002517          	auipc	a0,0x2
    80007c44:	22850513          	addi	a0,a0,552 # 80009e68 <digits+0x18>
    80007c48:	fffff097          	auipc	ra,0xfffff
    80007c4c:	354080e7          	jalr	852(ra) # 80006f9c <panic>

0000000080007c50 <kalloc>:
    80007c50:	fe010113          	addi	sp,sp,-32
    80007c54:	00813823          	sd	s0,16(sp)
    80007c58:	00913423          	sd	s1,8(sp)
    80007c5c:	00113c23          	sd	ra,24(sp)
    80007c60:	02010413          	addi	s0,sp,32
    80007c64:	00004797          	auipc	a5,0x4
    80007c68:	e4478793          	addi	a5,a5,-444 # 8000baa8 <kmem>
    80007c6c:	0007b483          	ld	s1,0(a5)
    80007c70:	02048063          	beqz	s1,80007c90 <kalloc+0x40>
    80007c74:	0004b703          	ld	a4,0(s1)
    80007c78:	00001637          	lui	a2,0x1
    80007c7c:	00500593          	li	a1,5
    80007c80:	00048513          	mv	a0,s1
    80007c84:	00e7b023          	sd	a4,0(a5)
    80007c88:	00000097          	auipc	ra,0x0
    80007c8c:	400080e7          	jalr	1024(ra) # 80008088 <__memset>
    80007c90:	01813083          	ld	ra,24(sp)
    80007c94:	01013403          	ld	s0,16(sp)
    80007c98:	00048513          	mv	a0,s1
    80007c9c:	00813483          	ld	s1,8(sp)
    80007ca0:	02010113          	addi	sp,sp,32
    80007ca4:	00008067          	ret

0000000080007ca8 <initlock>:
    80007ca8:	ff010113          	addi	sp,sp,-16
    80007cac:	00813423          	sd	s0,8(sp)
    80007cb0:	01010413          	addi	s0,sp,16
    80007cb4:	00813403          	ld	s0,8(sp)
    80007cb8:	00b53423          	sd	a1,8(a0)
    80007cbc:	00052023          	sw	zero,0(a0)
    80007cc0:	00053823          	sd	zero,16(a0)
    80007cc4:	01010113          	addi	sp,sp,16
    80007cc8:	00008067          	ret

0000000080007ccc <acquire>:
    80007ccc:	fe010113          	addi	sp,sp,-32
    80007cd0:	00813823          	sd	s0,16(sp)
    80007cd4:	00913423          	sd	s1,8(sp)
    80007cd8:	00113c23          	sd	ra,24(sp)
    80007cdc:	01213023          	sd	s2,0(sp)
    80007ce0:	02010413          	addi	s0,sp,32
    80007ce4:	00050493          	mv	s1,a0
    80007ce8:	10002973          	csrr	s2,sstatus
    80007cec:	100027f3          	csrr	a5,sstatus
    80007cf0:	ffd7f793          	andi	a5,a5,-3
    80007cf4:	10079073          	csrw	sstatus,a5
    80007cf8:	fffff097          	auipc	ra,0xfffff
    80007cfc:	8e8080e7          	jalr	-1816(ra) # 800065e0 <mycpu>
    80007d00:	07852783          	lw	a5,120(a0)
    80007d04:	06078e63          	beqz	a5,80007d80 <acquire+0xb4>
    80007d08:	fffff097          	auipc	ra,0xfffff
    80007d0c:	8d8080e7          	jalr	-1832(ra) # 800065e0 <mycpu>
    80007d10:	07852783          	lw	a5,120(a0)
    80007d14:	0004a703          	lw	a4,0(s1)
    80007d18:	0017879b          	addiw	a5,a5,1
    80007d1c:	06f52c23          	sw	a5,120(a0)
    80007d20:	04071063          	bnez	a4,80007d60 <acquire+0x94>
    80007d24:	00100713          	li	a4,1
    80007d28:	00070793          	mv	a5,a4
    80007d2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007d30:	0007879b          	sext.w	a5,a5
    80007d34:	fe079ae3          	bnez	a5,80007d28 <acquire+0x5c>
    80007d38:	0ff0000f          	fence
    80007d3c:	fffff097          	auipc	ra,0xfffff
    80007d40:	8a4080e7          	jalr	-1884(ra) # 800065e0 <mycpu>
    80007d44:	01813083          	ld	ra,24(sp)
    80007d48:	01013403          	ld	s0,16(sp)
    80007d4c:	00a4b823          	sd	a0,16(s1)
    80007d50:	00013903          	ld	s2,0(sp)
    80007d54:	00813483          	ld	s1,8(sp)
    80007d58:	02010113          	addi	sp,sp,32
    80007d5c:	00008067          	ret
    80007d60:	0104b903          	ld	s2,16(s1)
    80007d64:	fffff097          	auipc	ra,0xfffff
    80007d68:	87c080e7          	jalr	-1924(ra) # 800065e0 <mycpu>
    80007d6c:	faa91ce3          	bne	s2,a0,80007d24 <acquire+0x58>
    80007d70:	00002517          	auipc	a0,0x2
    80007d74:	10050513          	addi	a0,a0,256 # 80009e70 <digits+0x20>
    80007d78:	fffff097          	auipc	ra,0xfffff
    80007d7c:	224080e7          	jalr	548(ra) # 80006f9c <panic>
    80007d80:	00195913          	srli	s2,s2,0x1
    80007d84:	fffff097          	auipc	ra,0xfffff
    80007d88:	85c080e7          	jalr	-1956(ra) # 800065e0 <mycpu>
    80007d8c:	00197913          	andi	s2,s2,1
    80007d90:	07252e23          	sw	s2,124(a0)
    80007d94:	f75ff06f          	j	80007d08 <acquire+0x3c>

0000000080007d98 <release>:
    80007d98:	fe010113          	addi	sp,sp,-32
    80007d9c:	00813823          	sd	s0,16(sp)
    80007da0:	00113c23          	sd	ra,24(sp)
    80007da4:	00913423          	sd	s1,8(sp)
    80007da8:	01213023          	sd	s2,0(sp)
    80007dac:	02010413          	addi	s0,sp,32
    80007db0:	00052783          	lw	a5,0(a0)
    80007db4:	00079a63          	bnez	a5,80007dc8 <release+0x30>
    80007db8:	00002517          	auipc	a0,0x2
    80007dbc:	0c050513          	addi	a0,a0,192 # 80009e78 <digits+0x28>
    80007dc0:	fffff097          	auipc	ra,0xfffff
    80007dc4:	1dc080e7          	jalr	476(ra) # 80006f9c <panic>
    80007dc8:	01053903          	ld	s2,16(a0)
    80007dcc:	00050493          	mv	s1,a0
    80007dd0:	fffff097          	auipc	ra,0xfffff
    80007dd4:	810080e7          	jalr	-2032(ra) # 800065e0 <mycpu>
    80007dd8:	fea910e3          	bne	s2,a0,80007db8 <release+0x20>
    80007ddc:	0004b823          	sd	zero,16(s1)
    80007de0:	0ff0000f          	fence
    80007de4:	0f50000f          	fence	iorw,ow
    80007de8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007dec:	ffffe097          	auipc	ra,0xffffe
    80007df0:	7f4080e7          	jalr	2036(ra) # 800065e0 <mycpu>
    80007df4:	100027f3          	csrr	a5,sstatus
    80007df8:	0027f793          	andi	a5,a5,2
    80007dfc:	04079a63          	bnez	a5,80007e50 <release+0xb8>
    80007e00:	07852783          	lw	a5,120(a0)
    80007e04:	02f05e63          	blez	a5,80007e40 <release+0xa8>
    80007e08:	fff7871b          	addiw	a4,a5,-1
    80007e0c:	06e52c23          	sw	a4,120(a0)
    80007e10:	00071c63          	bnez	a4,80007e28 <release+0x90>
    80007e14:	07c52783          	lw	a5,124(a0)
    80007e18:	00078863          	beqz	a5,80007e28 <release+0x90>
    80007e1c:	100027f3          	csrr	a5,sstatus
    80007e20:	0027e793          	ori	a5,a5,2
    80007e24:	10079073          	csrw	sstatus,a5
    80007e28:	01813083          	ld	ra,24(sp)
    80007e2c:	01013403          	ld	s0,16(sp)
    80007e30:	00813483          	ld	s1,8(sp)
    80007e34:	00013903          	ld	s2,0(sp)
    80007e38:	02010113          	addi	sp,sp,32
    80007e3c:	00008067          	ret
    80007e40:	00002517          	auipc	a0,0x2
    80007e44:	05850513          	addi	a0,a0,88 # 80009e98 <digits+0x48>
    80007e48:	fffff097          	auipc	ra,0xfffff
    80007e4c:	154080e7          	jalr	340(ra) # 80006f9c <panic>
    80007e50:	00002517          	auipc	a0,0x2
    80007e54:	03050513          	addi	a0,a0,48 # 80009e80 <digits+0x30>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	144080e7          	jalr	324(ra) # 80006f9c <panic>

0000000080007e60 <holding>:
    80007e60:	00052783          	lw	a5,0(a0)
    80007e64:	00079663          	bnez	a5,80007e70 <holding+0x10>
    80007e68:	00000513          	li	a0,0
    80007e6c:	00008067          	ret
    80007e70:	fe010113          	addi	sp,sp,-32
    80007e74:	00813823          	sd	s0,16(sp)
    80007e78:	00913423          	sd	s1,8(sp)
    80007e7c:	00113c23          	sd	ra,24(sp)
    80007e80:	02010413          	addi	s0,sp,32
    80007e84:	01053483          	ld	s1,16(a0)
    80007e88:	ffffe097          	auipc	ra,0xffffe
    80007e8c:	758080e7          	jalr	1880(ra) # 800065e0 <mycpu>
    80007e90:	01813083          	ld	ra,24(sp)
    80007e94:	01013403          	ld	s0,16(sp)
    80007e98:	40a48533          	sub	a0,s1,a0
    80007e9c:	00153513          	seqz	a0,a0
    80007ea0:	00813483          	ld	s1,8(sp)
    80007ea4:	02010113          	addi	sp,sp,32
    80007ea8:	00008067          	ret

0000000080007eac <push_off>:
    80007eac:	fe010113          	addi	sp,sp,-32
    80007eb0:	00813823          	sd	s0,16(sp)
    80007eb4:	00113c23          	sd	ra,24(sp)
    80007eb8:	00913423          	sd	s1,8(sp)
    80007ebc:	02010413          	addi	s0,sp,32
    80007ec0:	100024f3          	csrr	s1,sstatus
    80007ec4:	100027f3          	csrr	a5,sstatus
    80007ec8:	ffd7f793          	andi	a5,a5,-3
    80007ecc:	10079073          	csrw	sstatus,a5
    80007ed0:	ffffe097          	auipc	ra,0xffffe
    80007ed4:	710080e7          	jalr	1808(ra) # 800065e0 <mycpu>
    80007ed8:	07852783          	lw	a5,120(a0)
    80007edc:	02078663          	beqz	a5,80007f08 <push_off+0x5c>
    80007ee0:	ffffe097          	auipc	ra,0xffffe
    80007ee4:	700080e7          	jalr	1792(ra) # 800065e0 <mycpu>
    80007ee8:	07852783          	lw	a5,120(a0)
    80007eec:	01813083          	ld	ra,24(sp)
    80007ef0:	01013403          	ld	s0,16(sp)
    80007ef4:	0017879b          	addiw	a5,a5,1
    80007ef8:	06f52c23          	sw	a5,120(a0)
    80007efc:	00813483          	ld	s1,8(sp)
    80007f00:	02010113          	addi	sp,sp,32
    80007f04:	00008067          	ret
    80007f08:	0014d493          	srli	s1,s1,0x1
    80007f0c:	ffffe097          	auipc	ra,0xffffe
    80007f10:	6d4080e7          	jalr	1748(ra) # 800065e0 <mycpu>
    80007f14:	0014f493          	andi	s1,s1,1
    80007f18:	06952e23          	sw	s1,124(a0)
    80007f1c:	fc5ff06f          	j	80007ee0 <push_off+0x34>

0000000080007f20 <pop_off>:
    80007f20:	ff010113          	addi	sp,sp,-16
    80007f24:	00813023          	sd	s0,0(sp)
    80007f28:	00113423          	sd	ra,8(sp)
    80007f2c:	01010413          	addi	s0,sp,16
    80007f30:	ffffe097          	auipc	ra,0xffffe
    80007f34:	6b0080e7          	jalr	1712(ra) # 800065e0 <mycpu>
    80007f38:	100027f3          	csrr	a5,sstatus
    80007f3c:	0027f793          	andi	a5,a5,2
    80007f40:	04079663          	bnez	a5,80007f8c <pop_off+0x6c>
    80007f44:	07852783          	lw	a5,120(a0)
    80007f48:	02f05a63          	blez	a5,80007f7c <pop_off+0x5c>
    80007f4c:	fff7871b          	addiw	a4,a5,-1
    80007f50:	06e52c23          	sw	a4,120(a0)
    80007f54:	00071c63          	bnez	a4,80007f6c <pop_off+0x4c>
    80007f58:	07c52783          	lw	a5,124(a0)
    80007f5c:	00078863          	beqz	a5,80007f6c <pop_off+0x4c>
    80007f60:	100027f3          	csrr	a5,sstatus
    80007f64:	0027e793          	ori	a5,a5,2
    80007f68:	10079073          	csrw	sstatus,a5
    80007f6c:	00813083          	ld	ra,8(sp)
    80007f70:	00013403          	ld	s0,0(sp)
    80007f74:	01010113          	addi	sp,sp,16
    80007f78:	00008067          	ret
    80007f7c:	00002517          	auipc	a0,0x2
    80007f80:	f1c50513          	addi	a0,a0,-228 # 80009e98 <digits+0x48>
    80007f84:	fffff097          	auipc	ra,0xfffff
    80007f88:	018080e7          	jalr	24(ra) # 80006f9c <panic>
    80007f8c:	00002517          	auipc	a0,0x2
    80007f90:	ef450513          	addi	a0,a0,-268 # 80009e80 <digits+0x30>
    80007f94:	fffff097          	auipc	ra,0xfffff
    80007f98:	008080e7          	jalr	8(ra) # 80006f9c <panic>

0000000080007f9c <push_on>:
    80007f9c:	fe010113          	addi	sp,sp,-32
    80007fa0:	00813823          	sd	s0,16(sp)
    80007fa4:	00113c23          	sd	ra,24(sp)
    80007fa8:	00913423          	sd	s1,8(sp)
    80007fac:	02010413          	addi	s0,sp,32
    80007fb0:	100024f3          	csrr	s1,sstatus
    80007fb4:	100027f3          	csrr	a5,sstatus
    80007fb8:	0027e793          	ori	a5,a5,2
    80007fbc:	10079073          	csrw	sstatus,a5
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	620080e7          	jalr	1568(ra) # 800065e0 <mycpu>
    80007fc8:	07852783          	lw	a5,120(a0)
    80007fcc:	02078663          	beqz	a5,80007ff8 <push_on+0x5c>
    80007fd0:	ffffe097          	auipc	ra,0xffffe
    80007fd4:	610080e7          	jalr	1552(ra) # 800065e0 <mycpu>
    80007fd8:	07852783          	lw	a5,120(a0)
    80007fdc:	01813083          	ld	ra,24(sp)
    80007fe0:	01013403          	ld	s0,16(sp)
    80007fe4:	0017879b          	addiw	a5,a5,1
    80007fe8:	06f52c23          	sw	a5,120(a0)
    80007fec:	00813483          	ld	s1,8(sp)
    80007ff0:	02010113          	addi	sp,sp,32
    80007ff4:	00008067          	ret
    80007ff8:	0014d493          	srli	s1,s1,0x1
    80007ffc:	ffffe097          	auipc	ra,0xffffe
    80008000:	5e4080e7          	jalr	1508(ra) # 800065e0 <mycpu>
    80008004:	0014f493          	andi	s1,s1,1
    80008008:	06952e23          	sw	s1,124(a0)
    8000800c:	fc5ff06f          	j	80007fd0 <push_on+0x34>

0000000080008010 <pop_on>:
    80008010:	ff010113          	addi	sp,sp,-16
    80008014:	00813023          	sd	s0,0(sp)
    80008018:	00113423          	sd	ra,8(sp)
    8000801c:	01010413          	addi	s0,sp,16
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	5c0080e7          	jalr	1472(ra) # 800065e0 <mycpu>
    80008028:	100027f3          	csrr	a5,sstatus
    8000802c:	0027f793          	andi	a5,a5,2
    80008030:	04078463          	beqz	a5,80008078 <pop_on+0x68>
    80008034:	07852783          	lw	a5,120(a0)
    80008038:	02f05863          	blez	a5,80008068 <pop_on+0x58>
    8000803c:	fff7879b          	addiw	a5,a5,-1
    80008040:	06f52c23          	sw	a5,120(a0)
    80008044:	07853783          	ld	a5,120(a0)
    80008048:	00079863          	bnez	a5,80008058 <pop_on+0x48>
    8000804c:	100027f3          	csrr	a5,sstatus
    80008050:	ffd7f793          	andi	a5,a5,-3
    80008054:	10079073          	csrw	sstatus,a5
    80008058:	00813083          	ld	ra,8(sp)
    8000805c:	00013403          	ld	s0,0(sp)
    80008060:	01010113          	addi	sp,sp,16
    80008064:	00008067          	ret
    80008068:	00002517          	auipc	a0,0x2
    8000806c:	e5850513          	addi	a0,a0,-424 # 80009ec0 <digits+0x70>
    80008070:	fffff097          	auipc	ra,0xfffff
    80008074:	f2c080e7          	jalr	-212(ra) # 80006f9c <panic>
    80008078:	00002517          	auipc	a0,0x2
    8000807c:	e2850513          	addi	a0,a0,-472 # 80009ea0 <digits+0x50>
    80008080:	fffff097          	auipc	ra,0xfffff
    80008084:	f1c080e7          	jalr	-228(ra) # 80006f9c <panic>

0000000080008088 <__memset>:
    80008088:	ff010113          	addi	sp,sp,-16
    8000808c:	00813423          	sd	s0,8(sp)
    80008090:	01010413          	addi	s0,sp,16
    80008094:	1a060e63          	beqz	a2,80008250 <__memset+0x1c8>
    80008098:	40a007b3          	neg	a5,a0
    8000809c:	0077f793          	andi	a5,a5,7
    800080a0:	00778693          	addi	a3,a5,7
    800080a4:	00b00813          	li	a6,11
    800080a8:	0ff5f593          	andi	a1,a1,255
    800080ac:	fff6071b          	addiw	a4,a2,-1
    800080b0:	1b06e663          	bltu	a3,a6,8000825c <__memset+0x1d4>
    800080b4:	1cd76463          	bltu	a4,a3,8000827c <__memset+0x1f4>
    800080b8:	1a078e63          	beqz	a5,80008274 <__memset+0x1ec>
    800080bc:	00b50023          	sb	a1,0(a0)
    800080c0:	00100713          	li	a4,1
    800080c4:	1ae78463          	beq	a5,a4,8000826c <__memset+0x1e4>
    800080c8:	00b500a3          	sb	a1,1(a0)
    800080cc:	00200713          	li	a4,2
    800080d0:	1ae78a63          	beq	a5,a4,80008284 <__memset+0x1fc>
    800080d4:	00b50123          	sb	a1,2(a0)
    800080d8:	00300713          	li	a4,3
    800080dc:	18e78463          	beq	a5,a4,80008264 <__memset+0x1dc>
    800080e0:	00b501a3          	sb	a1,3(a0)
    800080e4:	00400713          	li	a4,4
    800080e8:	1ae78263          	beq	a5,a4,8000828c <__memset+0x204>
    800080ec:	00b50223          	sb	a1,4(a0)
    800080f0:	00500713          	li	a4,5
    800080f4:	1ae78063          	beq	a5,a4,80008294 <__memset+0x20c>
    800080f8:	00b502a3          	sb	a1,5(a0)
    800080fc:	00700713          	li	a4,7
    80008100:	18e79e63          	bne	a5,a4,8000829c <__memset+0x214>
    80008104:	00b50323          	sb	a1,6(a0)
    80008108:	00700e93          	li	t4,7
    8000810c:	00859713          	slli	a4,a1,0x8
    80008110:	00e5e733          	or	a4,a1,a4
    80008114:	01059e13          	slli	t3,a1,0x10
    80008118:	01c76e33          	or	t3,a4,t3
    8000811c:	01859313          	slli	t1,a1,0x18
    80008120:	006e6333          	or	t1,t3,t1
    80008124:	02059893          	slli	a7,a1,0x20
    80008128:	40f60e3b          	subw	t3,a2,a5
    8000812c:	011368b3          	or	a7,t1,a7
    80008130:	02859813          	slli	a6,a1,0x28
    80008134:	0108e833          	or	a6,a7,a6
    80008138:	03059693          	slli	a3,a1,0x30
    8000813c:	003e589b          	srliw	a7,t3,0x3
    80008140:	00d866b3          	or	a3,a6,a3
    80008144:	03859713          	slli	a4,a1,0x38
    80008148:	00389813          	slli	a6,a7,0x3
    8000814c:	00f507b3          	add	a5,a0,a5
    80008150:	00e6e733          	or	a4,a3,a4
    80008154:	000e089b          	sext.w	a7,t3
    80008158:	00f806b3          	add	a3,a6,a5
    8000815c:	00e7b023          	sd	a4,0(a5)
    80008160:	00878793          	addi	a5,a5,8
    80008164:	fed79ce3          	bne	a5,a3,8000815c <__memset+0xd4>
    80008168:	ff8e7793          	andi	a5,t3,-8
    8000816c:	0007871b          	sext.w	a4,a5
    80008170:	01d787bb          	addw	a5,a5,t4
    80008174:	0ce88e63          	beq	a7,a4,80008250 <__memset+0x1c8>
    80008178:	00f50733          	add	a4,a0,a5
    8000817c:	00b70023          	sb	a1,0(a4)
    80008180:	0017871b          	addiw	a4,a5,1
    80008184:	0cc77663          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    80008188:	00e50733          	add	a4,a0,a4
    8000818c:	00b70023          	sb	a1,0(a4)
    80008190:	0027871b          	addiw	a4,a5,2
    80008194:	0ac77e63          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    80008198:	00e50733          	add	a4,a0,a4
    8000819c:	00b70023          	sb	a1,0(a4)
    800081a0:	0037871b          	addiw	a4,a5,3
    800081a4:	0ac77663          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    800081a8:	00e50733          	add	a4,a0,a4
    800081ac:	00b70023          	sb	a1,0(a4)
    800081b0:	0047871b          	addiw	a4,a5,4
    800081b4:	08c77e63          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    800081b8:	00e50733          	add	a4,a0,a4
    800081bc:	00b70023          	sb	a1,0(a4)
    800081c0:	0057871b          	addiw	a4,a5,5
    800081c4:	08c77663          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    800081c8:	00e50733          	add	a4,a0,a4
    800081cc:	00b70023          	sb	a1,0(a4)
    800081d0:	0067871b          	addiw	a4,a5,6
    800081d4:	06c77e63          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    800081d8:	00e50733          	add	a4,a0,a4
    800081dc:	00b70023          	sb	a1,0(a4)
    800081e0:	0077871b          	addiw	a4,a5,7
    800081e4:	06c77663          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    800081e8:	00e50733          	add	a4,a0,a4
    800081ec:	00b70023          	sb	a1,0(a4)
    800081f0:	0087871b          	addiw	a4,a5,8
    800081f4:	04c77e63          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    800081f8:	00e50733          	add	a4,a0,a4
    800081fc:	00b70023          	sb	a1,0(a4)
    80008200:	0097871b          	addiw	a4,a5,9
    80008204:	04c77663          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    80008208:	00e50733          	add	a4,a0,a4
    8000820c:	00b70023          	sb	a1,0(a4)
    80008210:	00a7871b          	addiw	a4,a5,10
    80008214:	02c77e63          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    80008218:	00e50733          	add	a4,a0,a4
    8000821c:	00b70023          	sb	a1,0(a4)
    80008220:	00b7871b          	addiw	a4,a5,11
    80008224:	02c77663          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    80008228:	00e50733          	add	a4,a0,a4
    8000822c:	00b70023          	sb	a1,0(a4)
    80008230:	00c7871b          	addiw	a4,a5,12
    80008234:	00c77e63          	bgeu	a4,a2,80008250 <__memset+0x1c8>
    80008238:	00e50733          	add	a4,a0,a4
    8000823c:	00b70023          	sb	a1,0(a4)
    80008240:	00d7879b          	addiw	a5,a5,13
    80008244:	00c7f663          	bgeu	a5,a2,80008250 <__memset+0x1c8>
    80008248:	00f507b3          	add	a5,a0,a5
    8000824c:	00b78023          	sb	a1,0(a5)
    80008250:	00813403          	ld	s0,8(sp)
    80008254:	01010113          	addi	sp,sp,16
    80008258:	00008067          	ret
    8000825c:	00b00693          	li	a3,11
    80008260:	e55ff06f          	j	800080b4 <__memset+0x2c>
    80008264:	00300e93          	li	t4,3
    80008268:	ea5ff06f          	j	8000810c <__memset+0x84>
    8000826c:	00100e93          	li	t4,1
    80008270:	e9dff06f          	j	8000810c <__memset+0x84>
    80008274:	00000e93          	li	t4,0
    80008278:	e95ff06f          	j	8000810c <__memset+0x84>
    8000827c:	00000793          	li	a5,0
    80008280:	ef9ff06f          	j	80008178 <__memset+0xf0>
    80008284:	00200e93          	li	t4,2
    80008288:	e85ff06f          	j	8000810c <__memset+0x84>
    8000828c:	00400e93          	li	t4,4
    80008290:	e7dff06f          	j	8000810c <__memset+0x84>
    80008294:	00500e93          	li	t4,5
    80008298:	e75ff06f          	j	8000810c <__memset+0x84>
    8000829c:	00600e93          	li	t4,6
    800082a0:	e6dff06f          	j	8000810c <__memset+0x84>

00000000800082a4 <__memmove>:
    800082a4:	ff010113          	addi	sp,sp,-16
    800082a8:	00813423          	sd	s0,8(sp)
    800082ac:	01010413          	addi	s0,sp,16
    800082b0:	0e060863          	beqz	a2,800083a0 <__memmove+0xfc>
    800082b4:	fff6069b          	addiw	a3,a2,-1
    800082b8:	0006881b          	sext.w	a6,a3
    800082bc:	0ea5e863          	bltu	a1,a0,800083ac <__memmove+0x108>
    800082c0:	00758713          	addi	a4,a1,7
    800082c4:	00a5e7b3          	or	a5,a1,a0
    800082c8:	40a70733          	sub	a4,a4,a0
    800082cc:	0077f793          	andi	a5,a5,7
    800082d0:	00f73713          	sltiu	a4,a4,15
    800082d4:	00174713          	xori	a4,a4,1
    800082d8:	0017b793          	seqz	a5,a5
    800082dc:	00e7f7b3          	and	a5,a5,a4
    800082e0:	10078863          	beqz	a5,800083f0 <__memmove+0x14c>
    800082e4:	00900793          	li	a5,9
    800082e8:	1107f463          	bgeu	a5,a6,800083f0 <__memmove+0x14c>
    800082ec:	0036581b          	srliw	a6,a2,0x3
    800082f0:	fff8081b          	addiw	a6,a6,-1
    800082f4:	02081813          	slli	a6,a6,0x20
    800082f8:	01d85893          	srli	a7,a6,0x1d
    800082fc:	00858813          	addi	a6,a1,8
    80008300:	00058793          	mv	a5,a1
    80008304:	00050713          	mv	a4,a0
    80008308:	01088833          	add	a6,a7,a6
    8000830c:	0007b883          	ld	a7,0(a5)
    80008310:	00878793          	addi	a5,a5,8
    80008314:	00870713          	addi	a4,a4,8
    80008318:	ff173c23          	sd	a7,-8(a4)
    8000831c:	ff0798e3          	bne	a5,a6,8000830c <__memmove+0x68>
    80008320:	ff867713          	andi	a4,a2,-8
    80008324:	02071793          	slli	a5,a4,0x20
    80008328:	0207d793          	srli	a5,a5,0x20
    8000832c:	00f585b3          	add	a1,a1,a5
    80008330:	40e686bb          	subw	a3,a3,a4
    80008334:	00f507b3          	add	a5,a0,a5
    80008338:	06e60463          	beq	a2,a4,800083a0 <__memmove+0xfc>
    8000833c:	0005c703          	lbu	a4,0(a1)
    80008340:	00e78023          	sb	a4,0(a5)
    80008344:	04068e63          	beqz	a3,800083a0 <__memmove+0xfc>
    80008348:	0015c603          	lbu	a2,1(a1)
    8000834c:	00100713          	li	a4,1
    80008350:	00c780a3          	sb	a2,1(a5)
    80008354:	04e68663          	beq	a3,a4,800083a0 <__memmove+0xfc>
    80008358:	0025c603          	lbu	a2,2(a1)
    8000835c:	00200713          	li	a4,2
    80008360:	00c78123          	sb	a2,2(a5)
    80008364:	02e68e63          	beq	a3,a4,800083a0 <__memmove+0xfc>
    80008368:	0035c603          	lbu	a2,3(a1)
    8000836c:	00300713          	li	a4,3
    80008370:	00c781a3          	sb	a2,3(a5)
    80008374:	02e68663          	beq	a3,a4,800083a0 <__memmove+0xfc>
    80008378:	0045c603          	lbu	a2,4(a1)
    8000837c:	00400713          	li	a4,4
    80008380:	00c78223          	sb	a2,4(a5)
    80008384:	00e68e63          	beq	a3,a4,800083a0 <__memmove+0xfc>
    80008388:	0055c603          	lbu	a2,5(a1)
    8000838c:	00500713          	li	a4,5
    80008390:	00c782a3          	sb	a2,5(a5)
    80008394:	00e68663          	beq	a3,a4,800083a0 <__memmove+0xfc>
    80008398:	0065c703          	lbu	a4,6(a1)
    8000839c:	00e78323          	sb	a4,6(a5)
    800083a0:	00813403          	ld	s0,8(sp)
    800083a4:	01010113          	addi	sp,sp,16
    800083a8:	00008067          	ret
    800083ac:	02061713          	slli	a4,a2,0x20
    800083b0:	02075713          	srli	a4,a4,0x20
    800083b4:	00e587b3          	add	a5,a1,a4
    800083b8:	f0f574e3          	bgeu	a0,a5,800082c0 <__memmove+0x1c>
    800083bc:	02069613          	slli	a2,a3,0x20
    800083c0:	02065613          	srli	a2,a2,0x20
    800083c4:	fff64613          	not	a2,a2
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00c78633          	add	a2,a5,a2
    800083d0:	fff7c683          	lbu	a3,-1(a5)
    800083d4:	fff78793          	addi	a5,a5,-1
    800083d8:	fff70713          	addi	a4,a4,-1
    800083dc:	00d70023          	sb	a3,0(a4)
    800083e0:	fec798e3          	bne	a5,a2,800083d0 <__memmove+0x12c>
    800083e4:	00813403          	ld	s0,8(sp)
    800083e8:	01010113          	addi	sp,sp,16
    800083ec:	00008067          	ret
    800083f0:	02069713          	slli	a4,a3,0x20
    800083f4:	02075713          	srli	a4,a4,0x20
    800083f8:	00170713          	addi	a4,a4,1
    800083fc:	00e50733          	add	a4,a0,a4
    80008400:	00050793          	mv	a5,a0
    80008404:	0005c683          	lbu	a3,0(a1)
    80008408:	00178793          	addi	a5,a5,1
    8000840c:	00158593          	addi	a1,a1,1
    80008410:	fed78fa3          	sb	a3,-1(a5)
    80008414:	fee798e3          	bne	a5,a4,80008404 <__memmove+0x160>
    80008418:	f89ff06f          	j	800083a0 <__memmove+0xfc>

000000008000841c <__putc>:
    8000841c:	fe010113          	addi	sp,sp,-32
    80008420:	00813823          	sd	s0,16(sp)
    80008424:	00113c23          	sd	ra,24(sp)
    80008428:	02010413          	addi	s0,sp,32
    8000842c:	00050793          	mv	a5,a0
    80008430:	fef40593          	addi	a1,s0,-17
    80008434:	00100613          	li	a2,1
    80008438:	00000513          	li	a0,0
    8000843c:	fef407a3          	sb	a5,-17(s0)
    80008440:	fffff097          	auipc	ra,0xfffff
    80008444:	b3c080e7          	jalr	-1220(ra) # 80006f7c <console_write>
    80008448:	01813083          	ld	ra,24(sp)
    8000844c:	01013403          	ld	s0,16(sp)
    80008450:	02010113          	addi	sp,sp,32
    80008454:	00008067          	ret

0000000080008458 <__getc>:
    80008458:	fe010113          	addi	sp,sp,-32
    8000845c:	00813823          	sd	s0,16(sp)
    80008460:	00113c23          	sd	ra,24(sp)
    80008464:	02010413          	addi	s0,sp,32
    80008468:	fe840593          	addi	a1,s0,-24
    8000846c:	00100613          	li	a2,1
    80008470:	00000513          	li	a0,0
    80008474:	fffff097          	auipc	ra,0xfffff
    80008478:	ae8080e7          	jalr	-1304(ra) # 80006f5c <console_read>
    8000847c:	fe844503          	lbu	a0,-24(s0)
    80008480:	01813083          	ld	ra,24(sp)
    80008484:	01013403          	ld	s0,16(sp)
    80008488:	02010113          	addi	sp,sp,32
    8000848c:	00008067          	ret

0000000080008490 <console_handler>:
    80008490:	fe010113          	addi	sp,sp,-32
    80008494:	00813823          	sd	s0,16(sp)
    80008498:	00113c23          	sd	ra,24(sp)
    8000849c:	00913423          	sd	s1,8(sp)
    800084a0:	02010413          	addi	s0,sp,32
    800084a4:	14202773          	csrr	a4,scause
    800084a8:	100027f3          	csrr	a5,sstatus
    800084ac:	0027f793          	andi	a5,a5,2
    800084b0:	06079e63          	bnez	a5,8000852c <console_handler+0x9c>
    800084b4:	00074c63          	bltz	a4,800084cc <console_handler+0x3c>
    800084b8:	01813083          	ld	ra,24(sp)
    800084bc:	01013403          	ld	s0,16(sp)
    800084c0:	00813483          	ld	s1,8(sp)
    800084c4:	02010113          	addi	sp,sp,32
    800084c8:	00008067          	ret
    800084cc:	0ff77713          	andi	a4,a4,255
    800084d0:	00900793          	li	a5,9
    800084d4:	fef712e3          	bne	a4,a5,800084b8 <console_handler+0x28>
    800084d8:	ffffe097          	auipc	ra,0xffffe
    800084dc:	6dc080e7          	jalr	1756(ra) # 80006bb4 <plic_claim>
    800084e0:	00a00793          	li	a5,10
    800084e4:	00050493          	mv	s1,a0
    800084e8:	02f50c63          	beq	a0,a5,80008520 <console_handler+0x90>
    800084ec:	fc0506e3          	beqz	a0,800084b8 <console_handler+0x28>
    800084f0:	00050593          	mv	a1,a0
    800084f4:	00002517          	auipc	a0,0x2
    800084f8:	8d450513          	addi	a0,a0,-1836 # 80009dc8 <_ZTV12ConsumerSync+0x108>
    800084fc:	fffff097          	auipc	ra,0xfffff
    80008500:	afc080e7          	jalr	-1284(ra) # 80006ff8 <__printf>
    80008504:	01013403          	ld	s0,16(sp)
    80008508:	01813083          	ld	ra,24(sp)
    8000850c:	00048513          	mv	a0,s1
    80008510:	00813483          	ld	s1,8(sp)
    80008514:	02010113          	addi	sp,sp,32
    80008518:	ffffe317          	auipc	t1,0xffffe
    8000851c:	6d430067          	jr	1748(t1) # 80006bec <plic_complete>
    80008520:	fffff097          	auipc	ra,0xfffff
    80008524:	3e0080e7          	jalr	992(ra) # 80007900 <uartintr>
    80008528:	fddff06f          	j	80008504 <console_handler+0x74>
    8000852c:	00002517          	auipc	a0,0x2
    80008530:	99c50513          	addi	a0,a0,-1636 # 80009ec8 <digits+0x78>
    80008534:	fffff097          	auipc	ra,0xfffff
    80008538:	a68080e7          	jalr	-1432(ra) # 80006f9c <panic>
	...
