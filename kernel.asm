
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	97013103          	ld	sp,-1680(sp) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	065060ef          	jal	ra,80006880 <start>

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
    80001084:	43d000ef          	jal	ra,80001cc0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001174:	a4078793          	addi	a5,a5,-1472 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
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
    800011a4:	a1078793          	addi	a5,a5,-1520 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
    800011a8:	0007b503          	ld	a0,0(a5)
    800011ac:	04050263          	beqz	a0,800011f0 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011b0:	00853783          	ld	a5,8(a0)
    800011b4:	0000b717          	auipc	a4,0xb
    800011b8:	9ef73e23          	sd	a5,-1540(a4) # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011bc:	02078463          	beqz	a5,800011e4 <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800011c4:	00001097          	auipc	ra,0x1
    800011c8:	fac080e7          	jalr	-84(ra) # 80002170 <_ZdlPv>
}
    800011cc:	00048513          	mv	a0,s1
    800011d0:	01813083          	ld	ra,24(sp)
    800011d4:	01013403          	ld	s0,16(sp)
    800011d8:	00813483          	ld	s1,8(sp)
    800011dc:	02010113          	addi	sp,sp,32
    800011e0:	00008067          	ret
        if (!head) { tail = 0; }
    800011e4:	0000b797          	auipc	a5,0xb
    800011e8:	9c07ba23          	sd	zero,-1580(a5) # 8000bbb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    80001218:	edc080e7          	jalr	-292(ra) # 800020f0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000121c:	00953023          	sd	s1,0(a0)
    80001220:	00053423          	sd	zero,8(a0)
        if (tail)
    80001224:	0000b797          	auipc	a5,0xb
    80001228:	98c78793          	addi	a5,a5,-1652 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
    8000122c:	0087b783          	ld	a5,8(a5)
    80001230:	02078263          	beqz	a5,80001254 <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    80001234:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001238:	0000b797          	auipc	a5,0xb
    8000123c:	98a7b023          	sd	a0,-1664(a5) # 8000bbb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001240:	01813083          	ld	ra,24(sp)
    80001244:	01013403          	ld	s0,16(sp)
    80001248:	00813483          	ld	s1,8(sp)
    8000124c:	02010113          	addi	sp,sp,32
    80001250:	00008067          	ret
            head = tail = elem;
    80001254:	0000b797          	auipc	a5,0xb
    80001258:	95c78793          	addi	a5,a5,-1700 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
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
    80001288:	0000b797          	auipc	a5,0xb
    8000128c:	89078793          	addi	a5,a5,-1904 # 8000bb18 <_ZN3TCB7runningE>
    80001290:	0007b483          	ld	s1,0(a5)

    void unblock() { blocked_ = false; }

    bool isBlocked() { return blocked_; }

    void setSleeping(bool value) { sleeping_ = value; }
    80001294:	00100793          	li	a5,1
    80001298:	02f48923          	sb	a5,50(s1)
    sleepingThreadQueue.addByRule(new SleepingThread(t, time_slices_left), SleepingThread::_scheduler_rule, 0);
    8000129c:	01000513          	li	a0,16
    800012a0:	00001097          	auipc	ra,0x1
    800012a4:	e50080e7          	jalr	-432(ra) # 800020f0 <_Znwm>
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
    800012b8:	0000b797          	auipc	a5,0xb
    800012bc:	8f878793          	addi	a5,a5,-1800 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
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
    800012f8:	dfc080e7          	jalr	-516(ra) # 800020f0 <_Znwm>
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
    80001314:	630080e7          	jalr	1584(ra) # 80002940 <_ZN3TCB5yieldEv>
}
    80001318:	03813083          	ld	ra,56(sp)
    8000131c:	03013403          	ld	s0,48(sp)
    80001320:	02813483          	ld	s1,40(sp)
    80001324:	02013903          	ld	s2,32(sp)
    80001328:	01813983          	ld	s3,24(sp)
    8000132c:	04010113          	addi	sp,sp,64
    80001330:	00008067          	ret
        else { head = elem; }
    80001334:	0000b797          	auipc	a5,0xb
    80001338:	88a7b623          	sd	a0,-1908(a5) # 8000bbc0 <_ZN9Scheduler19sleepingThreadQueueE>
    8000133c:	fd1ff06f          	j	8000130c <_ZN9Scheduler10putToSleepEm+0xa4>
        if (!curr) { tail = elem; }
    80001340:	0000b797          	auipc	a5,0xb
    80001344:	88a7b423          	sd	a0,-1912(a5) # 8000bbc8 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
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
    80001364:	0000b797          	auipc	a5,0xb
    80001368:	84c78793          	addi	a5,a5,-1972 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
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
    80001398:	e8c080e7          	jalr	-372(ra) # 80002220 <_Z6assertbPKc>
    8000139c:	0700006f          	j	8000140c <_ZN9Scheduler16maybeWakeThreadsEv+0xc0>
        if (!head) { tail = 0; }
    800013a0:	0000b797          	auipc	a5,0xb
    800013a4:	8207b423          	sd	zero,-2008(a5) # 8000bbc8 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
        delete elem;
    800013a8:	00001097          	auipc	ra,0x1
    800013ac:	dc8080e7          	jalr	-568(ra) # 80002170 <_ZdlPv>
        st->tcb_->setSleeping(false);
    800013b0:	0004b783          	ld	a5,0(s1)
    800013b4:	02078923          	sb	zero,50(a5)
        readyThreadQueue.addLast(st->tcb_);
    800013b8:	0004b903          	ld	s2,0(s1)
        Elem *elem = new Elem(data, 0);
    800013bc:	01000513          	li	a0,16
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	d30080e7          	jalr	-720(ra) # 800020f0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800013c8:	01253023          	sd	s2,0(a0)
    800013cc:	00053423          	sd	zero,8(a0)
        if (tail)
    800013d0:	0000a797          	auipc	a5,0xa
    800013d4:	7e078793          	addi	a5,a5,2016 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
    800013d8:	0087b783          	ld	a5,8(a5)
    800013dc:	06078063          	beqz	a5,8000143c <_ZN9Scheduler16maybeWakeThreadsEv+0xf0>
            tail->next = elem;
    800013e0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800013e4:	0000a797          	auipc	a5,0xa
    800013e8:	7ca7ba23          	sd	a0,2004(a5) # 8000bbb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
        delete st;
    800013ec:	00048513          	mv	a0,s1
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	d80080e7          	jalr	-640(ra) # 80002170 <_ZdlPv>
        if (!head) { return 0; }
    800013f8:	0000a797          	auipc	a5,0xa
    800013fc:	7b878793          	addi	a5,a5,1976 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
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
    8000141c:	79878793          	addi	a5,a5,1944 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
    80001420:	0107b503          	ld	a0,16(a5)
    80001424:	f80506e3          	beqz	a0,800013b0 <_ZN9Scheduler16maybeWakeThreadsEv+0x64>
        head = head->next;
    80001428:	00853783          	ld	a5,8(a0)
    8000142c:	0000a717          	auipc	a4,0xa
    80001430:	78f73a23          	sd	a5,1940(a4) # 8000bbc0 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    80001434:	f6079ae3          	bnez	a5,800013a8 <_ZN9Scheduler16maybeWakeThreadsEv+0x5c>
    80001438:	f69ff06f          	j	800013a0 <_ZN9Scheduler16maybeWakeThreadsEv+0x54>
            head = tail = elem;
    8000143c:	0000a797          	auipc	a5,0xa
    80001440:	77478793          	addi	a5,a5,1908 # 8000bbb0 <_ZN9Scheduler16readyThreadQueueE>
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
    80001524:	ce8080e7          	jalr	-792(ra) # 80002208 <_Z11debug_printPKc>
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
    80001540:	c34080e7          	jalr	-972(ra) # 80002170 <_ZdlPv>
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
    800015c8:	55478793          	addi	a5,a5,1364 # 8000bb18 <_ZN3TCB7runningE>
    800015cc:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    800015d0:	00100793          	li	a5,1
    800015d4:	02f908a3          	sb	a5,49(s2)
        Elem *elem = new Elem(data, 0);
    800015d8:	01000513          	li	a0,16
    800015dc:	00001097          	auipc	ra,0x1
    800015e0:	b14080e7          	jalr	-1260(ra) # 800020f0 <_Znwm>
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
    80001600:	344080e7          	jalr	836(ra) # 80002940 <_ZN3TCB5yieldEv>

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
    8000166c:	b08080e7          	jalr	-1272(ra) # 80002170 <_ZdlPv>
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
    80001704:	b08080e7          	jalr	-1272(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001708:	02049513          	slli	a0,s1,0x20
    8000170c:	02055513          	srli	a0,a0,0x20
    80001710:	00001097          	auipc	ra,0x1
    80001714:	ae0080e7          	jalr	-1312(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    80001718:	00008517          	auipc	a0,0x8
    8000171c:	cd850513          	addi	a0,a0,-808 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80001720:	00001097          	auipc	ra,0x1
    80001724:	ae8080e7          	jalr	-1304(ra) # 80002208 <_Z11debug_printPKc>
    return new _semaphore((int)init);
    80001728:	01800513          	li	a0,24
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	9c4080e7          	jalr	-1596(ra) # 800020f0 <_Znwm>
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
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	02010413          	addi	s0,sp,32
    // debug_print("Syscall malloc called\n");
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    80001790:	00013023          	sd	zero,0(sp)
    80001794:	00000893          	li	a7,0
    80001798:	00000813          	li	a6,0
    8000179c:	00000793          	li	a5,0
    800017a0:	00000713          	li	a4,0
    800017a4:	00000693          	li	a3,0
    800017a8:	00000613          	li	a2,0
    800017ac:	00050593          	mv	a1,a0
    800017b0:	00100513          	li	a0,1
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	fac080e7          	jalr	-84(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800017bc:	01813083          	ld	ra,24(sp)
    800017c0:	01013403          	ld	s0,16(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret

00000000800017cc <_Z8mem_freePv>:

int mem_free (void* ptr) {
    800017cc:	fe010113          	addi	sp,sp,-32
    800017d0:	00113c23          	sd	ra,24(sp)
    800017d4:	00813823          	sd	s0,16(sp)
    800017d8:	02010413          	addi	s0,sp,32
    // debug_print("Syscall free called\n");
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    800017dc:	00013023          	sd	zero,0(sp)
    800017e0:	00000893          	li	a7,0
    800017e4:	00000813          	li	a6,0
    800017e8:	00000793          	li	a5,0
    800017ec:	00000713          	li	a4,0
    800017f0:	00000693          	li	a3,0
    800017f4:	00000613          	li	a2,0
    800017f8:	00050593          	mv	a1,a0
    800017fc:	00200513          	li	a0,2
    80001800:	00000097          	auipc	ra,0x0
    80001804:	f60080e7          	jalr	-160(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001808:	0005051b          	sext.w	a0,a0
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	02010113          	addi	sp,sp,32
    80001818:	00008067          	ret

000000008000181c <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    8000181c:	fe010113          	addi	sp,sp,-32
    80001820:	00113c23          	sd	ra,24(sp)
    80001824:	00813823          	sd	s0,16(sp)
    80001828:	02010413          	addi	s0,sp,32
    debug_print("Syscall get free space called\n");
    8000182c:	00008517          	auipc	a0,0x8
    80001830:	87c50513          	addi	a0,a0,-1924 # 800090a8 <CONSOLE_STATUS+0x98>
    80001834:	00001097          	auipc	ra,0x1
    80001838:	9d4080e7          	jalr	-1580(ra) # 80002208 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    8000183c:	00013023          	sd	zero,0(sp)
    80001840:	00000893          	li	a7,0
    80001844:	00000813          	li	a6,0
    80001848:	00000793          	li	a5,0
    8000184c:	00000713          	li	a4,0
    80001850:	00000693          	li	a3,0
    80001854:	00000613          	li	a2,0
    80001858:	00000593          	li	a1,0
    8000185c:	00300513          	li	a0,3
    80001860:	00000097          	auipc	ra,0x0
    80001864:	f00080e7          	jalr	-256(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001868:	01813083          	ld	ra,24(sp)
    8000186c:	01013403          	ld	s0,16(sp)
    80001870:	02010113          	addi	sp,sp,32
    80001874:	00008067          	ret

0000000080001878 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	02010413          	addi	s0,sp,32
    debug_print("Syscall get largest free block called\n");
    80001888:	00008517          	auipc	a0,0x8
    8000188c:	84050513          	addi	a0,a0,-1984 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	978080e7          	jalr	-1672(ra) # 80002208 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    80001898:	00013023          	sd	zero,0(sp)
    8000189c:	00000893          	li	a7,0
    800018a0:	00000813          	li	a6,0
    800018a4:	00000793          	li	a5,0
    800018a8:	00000713          	li	a4,0
    800018ac:	00000693          	li	a3,0
    800018b0:	00000613          	li	a2,0
    800018b4:	00000593          	li	a1,0
    800018b8:	00400513          	li	a0,4
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	ea4080e7          	jalr	-348(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800018c4:	01813083          	ld	ra,24(sp)
    800018c8:	01013403          	ld	s0,16(sp)
    800018cc:	02010113          	addi	sp,sp,32
    800018d0:	00008067          	ret

00000000800018d4 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800018d4:	fe010113          	addi	sp,sp,-32
    800018d8:	00113c23          	sd	ra,24(sp)
    800018dc:	00813823          	sd	s0,16(sp)
    800018e0:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    800018e4:	00013023          	sd	zero,0(sp)
    800018e8:	00000893          	li	a7,0
    800018ec:	00000813          	li	a6,0
    800018f0:	00000793          	li	a5,0
    800018f4:	00000713          	li	a4,0
    800018f8:	00060693          	mv	a3,a2
    800018fc:	00058613          	mv	a2,a1
    80001900:	00050593          	mv	a1,a0
    80001904:	01100513          	li	a0,17
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	e58080e7          	jalr	-424(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001910:	0005051b          	sext.w	a0,a0
    80001914:	01813083          	ld	ra,24(sp)
    80001918:	01013403          	ld	s0,16(sp)
    8000191c:	02010113          	addi	sp,sp,32
    80001920:	00008067          	ret

0000000080001924 <_Z11thread_exitv>:

int thread_exit () {
    80001924:	fe010113          	addi	sp,sp,-32
    80001928:	00113c23          	sd	ra,24(sp)
    8000192c:	00813823          	sd	s0,16(sp)
    80001930:	02010413          	addi	s0,sp,32
    // this never returns, changes context. is this intended?
    debug_print("Syscall thread exit called\n");
    80001934:	00007517          	auipc	a0,0x7
    80001938:	7bc50513          	addi	a0,a0,1980 # 800090f0 <CONSOLE_STATUS+0xe0>
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	8cc080e7          	jalr	-1844(ra) # 80002208 <_Z11debug_printPKc>
    return syscall(SyscallCode::THREAD_EXIT);
    80001944:	00013023          	sd	zero,0(sp)
    80001948:	00000893          	li	a7,0
    8000194c:	00000813          	li	a6,0
    80001950:	00000793          	li	a5,0
    80001954:	00000713          	li	a4,0
    80001958:	00000693          	li	a3,0
    8000195c:	00000613          	li	a2,0
    80001960:	00000593          	li	a1,0
    80001964:	01200513          	li	a0,18
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	df8080e7          	jalr	-520(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001970:	0005051b          	sext.w	a0,a0
    80001974:	01813083          	ld	ra,24(sp)
    80001978:	01013403          	ld	s0,16(sp)
    8000197c:	02010113          	addi	sp,sp,32
    80001980:	00008067          	ret

0000000080001984 <_Z15thread_dispatchv>:

void thread_dispatch () {
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_DISPATCH);
    80001994:	00013023          	sd	zero,0(sp)
    80001998:	00000893          	li	a7,0
    8000199c:	00000813          	li	a6,0
    800019a0:	00000793          	li	a5,0
    800019a4:	00000713          	li	a4,0
    800019a8:	00000693          	li	a3,0
    800019ac:	00000613          	li	a2,0
    800019b0:	00000593          	li	a1,0
    800019b4:	01300513          	li	a0,19
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	da8080e7          	jalr	-600(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	02010113          	addi	sp,sp,32
    800019cc:	00008067          	ret

00000000800019d0 <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init) {
    800019d0:	fd010113          	addi	sp,sp,-48
    800019d4:	02113423          	sd	ra,40(sp)
    800019d8:	02813023          	sd	s0,32(sp)
    800019dc:	00913c23          	sd	s1,24(sp)
    800019e0:	01213823          	sd	s2,16(sp)
    800019e4:	03010413          	addi	s0,sp,48
    800019e8:	00050913          	mv	s2,a0
    800019ec:	00058493          	mv	s1,a1
    debug_print("Syscall sem open called\n");
    800019f0:	00007517          	auipc	a0,0x7
    800019f4:	72050513          	addi	a0,a0,1824 # 80009110 <CONSOLE_STATUS+0x100>
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	810080e7          	jalr	-2032(ra) # 80002208 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Handle: ");
    80001a00:	00007517          	auipc	a0,0x7
    80001a04:	73050513          	addi	a0,a0,1840 # 80009130 <CONSOLE_STATUS+0x120>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	800080e7          	jalr	-2048(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)handle);
    80001a10:	00090513          	mv	a0,s2
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	7dc080e7          	jalr	2012(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    80001a1c:	00008517          	auipc	a0,0x8
    80001a20:	9d450513          	addi	a0,a0,-1580 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	7e4080e7          	jalr	2020(ra) # 80002208 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Init: ");
    80001a2c:	00007517          	auipc	a0,0x7
    80001a30:	72450513          	addi	a0,a0,1828 # 80009150 <CONSOLE_STATUS+0x140>
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	7d4080e7          	jalr	2004(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001a3c:	02049493          	slli	s1,s1,0x20
    80001a40:	0204d493          	srli	s1,s1,0x20
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	7a8080e7          	jalr	1960(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    80001a50:	00008517          	auipc	a0,0x8
    80001a54:	9a050513          	addi	a0,a0,-1632 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	7b0080e7          	jalr	1968(ra) # 80002208 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
    80001a60:	00013023          	sd	zero,0(sp)
    80001a64:	00000893          	li	a7,0
    80001a68:	00000813          	li	a6,0
    80001a6c:	00000793          	li	a5,0
    80001a70:	00000713          	li	a4,0
    80001a74:	00000693          	li	a3,0
    80001a78:	00048613          	mv	a2,s1
    80001a7c:	00090593          	mv	a1,s2
    80001a80:	02100513          	li	a0,33
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	cdc080e7          	jalr	-804(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001a8c:	0005051b          	sext.w	a0,a0
    80001a90:	02813083          	ld	ra,40(sp)
    80001a94:	02013403          	ld	s0,32(sp)
    80001a98:	01813483          	ld	s1,24(sp)
    80001a9c:	01013903          	ld	s2,16(sp)
    80001aa0:	03010113          	addi	sp,sp,48
    80001aa4:	00008067          	ret

0000000080001aa8 <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle) {
    80001aa8:	fd010113          	addi	sp,sp,-48
    80001aac:	02113423          	sd	ra,40(sp)
    80001ab0:	02813023          	sd	s0,32(sp)
    80001ab4:	00913c23          	sd	s1,24(sp)
    80001ab8:	03010413          	addi	s0,sp,48
    80001abc:	00050493          	mv	s1,a0
    debug_print("Syscall sem close called\n");
    80001ac0:	00007517          	auipc	a0,0x7
    80001ac4:	6b050513          	addi	a0,a0,1712 # 80009170 <CONSOLE_STATUS+0x160>
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	740080e7          	jalr	1856(ra) # 80002208 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
    80001ad0:	00013023          	sd	zero,0(sp)
    80001ad4:	00000893          	li	a7,0
    80001ad8:	00000813          	li	a6,0
    80001adc:	00000793          	li	a5,0
    80001ae0:	00000713          	li	a4,0
    80001ae4:	00000693          	li	a3,0
    80001ae8:	00000613          	li	a2,0
    80001aec:	00048593          	mv	a1,s1
    80001af0:	02200513          	li	a0,34
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	c6c080e7          	jalr	-916(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001afc:	0005051b          	sext.w	a0,a0
    80001b00:	02813083          	ld	ra,40(sp)
    80001b04:	02013403          	ld	s0,32(sp)
    80001b08:	01813483          	ld	s1,24(sp)
    80001b0c:	03010113          	addi	sp,sp,48
    80001b10:	00008067          	ret

0000000080001b14 <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id) {
    80001b14:	fe010113          	addi	sp,sp,-32
    80001b18:	00113c23          	sd	ra,24(sp)
    80001b1c:	00813823          	sd	s0,16(sp)
    80001b20:	02010413          	addi	s0,sp,32

    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
    80001b24:	00013023          	sd	zero,0(sp)
    80001b28:	00000893          	li	a7,0
    80001b2c:	00000813          	li	a6,0
    80001b30:	00000793          	li	a5,0
    80001b34:	00000713          	li	a4,0
    80001b38:	00000693          	li	a3,0
    80001b3c:	00000613          	li	a2,0
    80001b40:	00050593          	mv	a1,a0
    80001b44:	02300513          	li	a0,35
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	c18080e7          	jalr	-1000(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001b50:	0005051b          	sext.w	a0,a0
    80001b54:	01813083          	ld	ra,24(sp)
    80001b58:	01013403          	ld	s0,16(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret

0000000080001b64 <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id) {
    80001b64:	fe010113          	addi	sp,sp,-32
    80001b68:	00113c23          	sd	ra,24(sp)
    80001b6c:	00813823          	sd	s0,16(sp)
    80001b70:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
    80001b74:	00013023          	sd	zero,0(sp)
    80001b78:	00000893          	li	a7,0
    80001b7c:	00000813          	li	a6,0
    80001b80:	00000793          	li	a5,0
    80001b84:	00000713          	li	a4,0
    80001b88:	00000693          	li	a3,0
    80001b8c:	00000613          	li	a2,0
    80001b90:	00050593          	mv	a1,a0
    80001b94:	02400513          	li	a0,36
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	bc8080e7          	jalr	-1080(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001ba0:	0005051b          	sext.w	a0,a0
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	02010113          	addi	sp,sp,32
    80001bb0:	00008067          	ret

0000000080001bb4 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    80001bb4:	fe010113          	addi	sp,sp,-32
    80001bb8:	00113c23          	sd	ra,24(sp)
    80001bbc:	00813823          	sd	s0,16(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::TIME_SLEEP, (uint64)time);
    80001bc4:	00013023          	sd	zero,0(sp)
    80001bc8:	00000893          	li	a7,0
    80001bcc:	00000813          	li	a6,0
    80001bd0:	00000793          	li	a5,0
    80001bd4:	00000713          	li	a4,0
    80001bd8:	00000693          	li	a3,0
    80001bdc:	00000613          	li	a2,0
    80001be0:	00050593          	mv	a1,a0
    80001be4:	03100513          	li	a0,49
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	b78080e7          	jalr	-1160(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001bf0:	0005051b          	sext.w	a0,a0
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00008067          	ret

0000000080001c04 <_Z4getcv>:

char getc () {
    80001c04:	fe010113          	addi	sp,sp,-32
    80001c08:	00113c23          	sd	ra,24(sp)
    80001c0c:	00813823          	sd	s0,16(sp)
    80001c10:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::GETC);
    80001c14:	00013023          	sd	zero,0(sp)
    80001c18:	00000893          	li	a7,0
    80001c1c:	00000813          	li	a6,0
    80001c20:	00000793          	li	a5,0
    80001c24:	00000713          	li	a4,0
    80001c28:	00000693          	li	a3,0
    80001c2c:	00000613          	li	a2,0
    80001c30:	00000593          	li	a1,0
    80001c34:	04100513          	li	a0,65
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	b28080e7          	jalr	-1240(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001c40:	0ff57513          	andi	a0,a0,255
    80001c44:	01813083          	ld	ra,24(sp)
    80001c48:	01013403          	ld	s0,16(sp)
    80001c4c:	02010113          	addi	sp,sp,32
    80001c50:	00008067          	ret

0000000080001c54 <_Z4putcc>:

void putc (char c) {
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::PUTC, (uint64)c);
    80001c64:	00013023          	sd	zero,0(sp)
    80001c68:	00000893          	li	a7,0
    80001c6c:	00000813          	li	a6,0
    80001c70:	00000793          	li	a5,0
    80001c74:	00000713          	li	a4,0
    80001c78:	00000693          	li	a3,0
    80001c7c:	00000613          	li	a2,0
    80001c80:	00050593          	mv	a1,a0
    80001c84:	04200513          	li	a0,66
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	ad8080e7          	jalr	-1320(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
    80001c90:	01813083          	ld	ra,24(sp)
    80001c94:	01013403          	ld	s0,16(sp)
    80001c98:	02010113          	addi	sp,sp,32
    80001c9c:	00008067          	ret

0000000080001ca0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/mem.hpp"
#include "../h/_console.hpp"
// #include "../lib/console.h"

void Riscv::popSppSpie()
{
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00813423          	sd	s0,8(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001cac:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001cb0:	10200073          	sret
}
    80001cb4:	00813403          	ld	s0,8(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001cc0:	f9010113          	addi	sp,sp,-112
    80001cc4:	06113423          	sd	ra,104(sp)
    80001cc8:	06813023          	sd	s0,96(sp)
    80001ccc:	04913c23          	sd	s1,88(sp)
    80001cd0:	05213823          	sd	s2,80(sp)
    80001cd4:	07010413          	addi	s0,sp,112
    uint64 a0, a1, a2, a3, a4, a5, a6, a7;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001cd8:	00050793          	mv	a5,a0
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001cdc:	00058493          	mv	s1,a1
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001ce0:	00060513          	mv	a0,a2
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001ce4:	00068593          	mv	a1,a3
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001ce8:	00070713          	mv	a4,a4
    __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001cec:	00078713          	mv	a4,a5
    __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001cf0:	00080713          	mv	a4,a6
    __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001cf4:	00088713          	mv	a4,a7
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001cf8:	14202773          	csrr	a4,scause
    80001cfc:	fae43c23          	sd	a4,-72(s0)
    return scause;
    80001d00:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001d04:	ff870613          	addi	a2,a4,-8
    80001d08:	00100693          	li	a3,1
    80001d0c:	02c6f863          	bgeu	a3,a2,80001d3c <_ZN5Riscv20handleSupervisorTrapEv+0x7c>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001d10:	fff00793          	li	a5,-1
    80001d14:	03f79793          	slli	a5,a5,0x3f
    80001d18:	00178793          	addi	a5,a5,1
    80001d1c:	32f70e63          	beq	a4,a5,80002058 <_ZN5Riscv20handleSupervisorTrapEv+0x398>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001d20:	fff00793          	li	a5,-1
    80001d24:	03f79793          	slli	a5,a5,0x3f
    80001d28:	00978793          	addi	a5,a5,9
    80001d2c:	08f71463          	bne	a4,a5,80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    {
        _console::handle_console_input();
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	cc0080e7          	jalr	-832(ra) # 800029f0 <_ZN8_console20handle_console_inputEv>
    }
    else
    {
        // unexpected trap cause
    }
    80001d38:	07c0006f          	j	80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d3c:	14102773          	csrr	a4,sepc
    80001d40:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80001d44:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001d48:	00470713          	addi	a4,a4,4
    80001d4c:	f8e43c23          	sd	a4,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d50:	10002773          	csrr	a4,sstatus
    80001d54:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80001d58:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d5c:	fae43023          	sd	a4,-96(s0)
        switch (a0) {
    80001d60:	04200713          	li	a4,66
    80001d64:	2cf76e63          	bltu	a4,a5,80002040 <_ZN5Riscv20handleSupervisorTrapEv+0x380>
    80001d68:	00279793          	slli	a5,a5,0x2
    80001d6c:	00007717          	auipc	a4,0x7
    80001d70:	42070713          	addi	a4,a4,1056 # 8000918c <CONSOLE_STATUS+0x17c>
    80001d74:	00e787b3          	add	a5,a5,a4
    80001d78:	0007a783          	lw	a5,0(a5)
    80001d7c:	00e787b3          	add	a5,a5,a4
    80001d80:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	ec8080e7          	jalr	-312(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80001d8c:	00048593          	mv	a1,s1
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	020080e7          	jalr	32(ra) # 80002db0 <_ZN15MemoryAllocator9mem_allocEm>
    80001d98:	00050913          	mv	s2,a0
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001d9c:	00090513          	mv	a0,s2
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    80001da0:	05243823          	sd	s2,80(s0)
        w_sstatus(sstatus);
    80001da4:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001da8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001dac:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001db0:	14179073          	csrw	sepc,a5
    80001db4:	06813083          	ld	ra,104(sp)
    80001db8:	06013403          	ld	s0,96(sp)
    80001dbc:	05813483          	ld	s1,88(sp)
    80001dc0:	05013903          	ld	s2,80(sp)
    80001dc4:	07010113          	addi	sp,sp,112
    80001dc8:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	e80080e7          	jalr	-384(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80001dd4:	00048593          	mv	a1,s1
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	158080e7          	jalr	344(ra) # 80002f30 <_ZN15MemoryAllocator8mem_freeEPv>
    80001de0:	00050913          	mv	s2,a0
                break;
    80001de4:	fb9ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	e64080e7          	jalr	-412(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	094080e7          	jalr	148(ra) # 80002e84 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    80001df8:	00000913          	li	s2,0
                break;
    80001dfc:	fa1ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	e4c080e7          	jalr	-436(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	048080e7          	jalr	72(ra) # 80002e50 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001e10:	00000913          	li	s2,0
                break;
    80001e14:	f89ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	954080e7          	jalr	-1708(ra) # 8000276c <_ZN3TCB12createThreadEPFvPvES0_>
    80001e20:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001e24:	22050263          	beqz	a0,80002048 <_ZN5Riscv20handleSupervisorTrapEv+0x388>
        uint64 res = 0;
    80001e28:	00000913          	li	s2,0
    80001e2c:	f71ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                TCB::exit();
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	b38080e7          	jalr	-1224(ra) # 80002968 <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    80001e38:	0004b783          	ld	a5,0(s1)
    80001e3c:	0000a717          	auipc	a4,0xa
    80001e40:	cdc70713          	addi	a4,a4,-804 # 8000bb18 <_ZN3TCB7runningE>
    80001e44:	00073503          	ld	a0,0(a4)
    80001e48:	40f50533          	sub	a0,a0,a5
    80001e4c:	00007597          	auipc	a1,0x7
    80001e50:	44c58593          	addi	a1,a1,1100 # 80009298 <CONSOLE_STATUS+0x288>
    80001e54:	00153513          	seqz	a0,a0
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	3c8080e7          	jalr	968(ra) # 80002220 <_Z6assertbPKc>
                delete *handle;
    80001e60:	0004b483          	ld	s1,0(s1)
    80001e64:	1e048663          	beqz	s1,80002050 <_ZN5Riscv20handleSupervisorTrapEv+0x390>
    ~TCB() { delete[] stack; }
    80001e68:	0104b503          	ld	a0,16(s1)
    80001e6c:	00050663          	beqz	a0,80001e78 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	340080e7          	jalr	832(ra) # 800021b0 <_ZdaPv>
    80001e78:	00048513          	mv	a0,s1
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	2f4080e7          	jalr	756(ra) # 80002170 <_ZdlPv>
        uint64 res = 0;
    80001e84:	00000913          	li	s2,0
    80001e88:	f15ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                TCB::dispatch();
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	9d0080e7          	jalr	-1584(ra) # 8000285c <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001e94:	00000913          	li	s2,0
                break;
    80001e98:	f05ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                *handle = (sem_t)_semaphore::open(a2);
    80001e9c:	0005051b          	sext.w	a0,a0
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	83c080e7          	jalr	-1988(ra) # 800016dc <_ZN10_semaphore4openEj>
    80001ea8:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001eac:	06050263          	beqz	a0,80001f10 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
        uint64 res = 0;
    80001eb0:	00000913          	li	s2,0
                debug_print("Semaphore open: Handle: ");
    80001eb4:	00007517          	auipc	a0,0x7
    80001eb8:	41c50513          	addi	a0,a0,1052 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	34c080e7          	jalr	844(ra) # 80002208 <_Z11debug_printPKc>
                debug_print((uint64)*handle);
    80001ec4:	0004b503          	ld	a0,0(s1)
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	328080e7          	jalr	808(ra) # 800021f0 <_Z11debug_printm>
                debug_print("\n");
    80001ed0:	00007517          	auipc	a0,0x7
    80001ed4:	52050513          	addi	a0,a0,1312 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	330080e7          	jalr	816(ra) # 80002208 <_Z11debug_printPKc>
                debug_print("On handle addr: ");
    80001ee0:	00007517          	auipc	a0,0x7
    80001ee4:	41050513          	addi	a0,a0,1040 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	320080e7          	jalr	800(ra) # 80002208 <_Z11debug_printPKc>
                debug_print((uint64)handle);
    80001ef0:	00048513          	mv	a0,s1
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	2fc080e7          	jalr	764(ra) # 800021f0 <_Z11debug_printm>
                debug_print("\n");
    80001efc:	00007517          	auipc	a0,0x7
    80001f00:	4f450513          	addi	a0,a0,1268 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	304080e7          	jalr	772(ra) # 80002208 <_Z11debug_printPKc>
                break;
    80001f0c:	e91ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    res = -1;
    80001f10:	fff00913          	li	s2,-1
    80001f14:	fa1ff06f          	j	80001eb4 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                handle->close();
    80001f18:	00048513          	mv	a0,s1
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	5e0080e7          	jalr	1504(ra) # 800014fc <_ZN10_semaphore5closeEv>
                delete handle;
    80001f24:	00048513          	mv	a0,s1
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	248080e7          	jalr	584(ra) # 80002170 <_ZdlPv>
        uint64 res = 0;
    80001f30:	00000913          	li	s2,0
                break;
    80001f34:	e69ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                res = handle->wait();
    80001f38:	00048513          	mv	a0,s1
    80001f3c:	fffff097          	auipc	ra,0xfffff
    80001f40:	64c080e7          	jalr	1612(ra) # 80001588 <_ZN10_semaphore4waitEv>
    80001f44:	00050913          	mv	s2,a0
                break;
    80001f48:	e55ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                handle->signal();
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	fffff097          	auipc	ra,0xfffff
    80001f54:	6e4080e7          	jalr	1764(ra) # 80001634 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80001f58:	00000913          	li	s2,0
                break;
    80001f5c:	e41ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                Scheduler::putToSleep(time_slices_left);
    80001f60:	0014d513          	srli	a0,s1,0x1
    80001f64:	fffff097          	auipc	ra,0xfffff
    80001f68:	304080e7          	jalr	772(ra) # 80001268 <_ZN9Scheduler10putToSleepEm>
        uint64 res = 0;
    80001f6c:	00000913          	li	s2,0
                break;
    80001f70:	e2dff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        delete buffer_in_;
        delete buffer_out_;
    }

    static char _getc() {
        return buffer_in_->removeFirst();
    80001f74:	0000a797          	auipc	a5,0xa
    80001f78:	bb478793          	addi	a5,a5,-1100 # 8000bb28 <_ZN8_console10buffer_in_E>
    80001f7c:	0007b483          	ld	s1,0(a5)
        space_->close();
        mutex_->close();
    }

    T removeFirst() {
        item_->wait();
    80001f80:	0004b503          	ld	a0,0(s1)
    80001f84:	fffff097          	auipc	ra,0xfffff
    80001f88:	604080e7          	jalr	1540(ra) # 80001588 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    80001f8c:	0104b503          	ld	a0,16(s1)
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	5f8080e7          	jalr	1528(ra) # 80001588 <_ZN10_semaphore4waitEv>
        T ret = buffer_[first_idx_];
    80001f98:	0284b703          	ld	a4,40(s1)
    80001f9c:	0184a783          	lw	a5,24(s1)
    80001fa0:	00f70733          	add	a4,a4,a5
    80001fa4:	00074903          	lbu	s2,0(a4)
        first_idx_ = (first_idx_ + 1) % size_;
    80001fa8:	0017879b          	addiw	a5,a5,1
    80001fac:	0204a703          	lw	a4,32(s1)
    80001fb0:	02e7e7bb          	remw	a5,a5,a4
    80001fb4:	00f4ac23          	sw	a5,24(s1)
        mutex_->signal();
    80001fb8:	0104b503          	ld	a0,16(s1)
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	678080e7          	jalr	1656(ra) # 80001634 <_ZN10_semaphore6signalEv>
        space_->signal();
    80001fc4:	0084b503          	ld	a0,8(s1)
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	66c080e7          	jalr	1644(ra) # 80001634 <_ZN10_semaphore6signalEv>
                break;
    80001fd0:	dcdff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                _console::_putc((char)a1);
    80001fd4:	0ff4f493          	andi	s1,s1,255
    }

    static void _putc(char c) {
        buffer_out_->addLast(c);
    80001fd8:	0000a797          	auipc	a5,0xa
    80001fdc:	b4878793          	addi	a5,a5,-1208 # 8000bb20 <_ZN8_console11buffer_out_E>
    80001fe0:	0007b903          	ld	s2,0(a5)
        return ret;
    }

    T addLast(T c) {
        space_->wait();
    80001fe4:	00893503          	ld	a0,8(s2)
    80001fe8:	fffff097          	auipc	ra,0xfffff
    80001fec:	5a0080e7          	jalr	1440(ra) # 80001588 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    80001ff0:	01093503          	ld	a0,16(s2)
    80001ff4:	fffff097          	auipc	ra,0xfffff
    80001ff8:	594080e7          	jalr	1428(ra) # 80001588 <_ZN10_semaphore4waitEv>
        T ret = buffer_[last_idx_];
    80001ffc:	02893783          	ld	a5,40(s2)
    80002000:	01c92703          	lw	a4,28(s2)
    80002004:	00e787b3          	add	a5,a5,a4
        buffer_[last_idx_] = c;
    80002008:	00978023          	sb	s1,0(a5)
        last_idx_ = (last_idx_ + 1) % size_;
    8000200c:	01c92783          	lw	a5,28(s2)
    80002010:	0017879b          	addiw	a5,a5,1
    80002014:	02092703          	lw	a4,32(s2)
    80002018:	02e7e7bb          	remw	a5,a5,a4
    8000201c:	00f92e23          	sw	a5,28(s2)
        mutex_->signal();
    80002020:	01093503          	ld	a0,16(s2)
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	610080e7          	jalr	1552(ra) # 80001634 <_ZN10_semaphore6signalEv>
        item_->signal();
    8000202c:	00093503          	ld	a0,0(s2)
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	604080e7          	jalr	1540(ra) # 80001634 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80002038:	00000913          	li	s2,0
    8000203c:	d61ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    80002040:	00000913          	li	s2,0
    80002044:	d59ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    res = -1;
    80002048:	fff00913          	li	s2,-1
    8000204c:	d51ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        uint64 res = 0;
    80002050:	00000913          	li	s2,0
    80002054:	d49ff06f          	j	80001d9c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        debug_print("TIMER INTERRUPT");
    80002058:	00007517          	auipc	a0,0x7
    8000205c:	2b050513          	addi	a0,a0,688 # 80009308 <CONSOLE_STATUS+0x2f8>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	1a8080e7          	jalr	424(ra) # 80002208 <_Z11debug_printPKc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002068:	00200793          	li	a5,2
    8000206c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002070:	0000a497          	auipc	s1,0xa
    80002074:	aa048493          	addi	s1,s1,-1376 # 8000bb10 <_ZN3TCB16timeSliceCounterE>
    80002078:	0004b783          	ld	a5,0(s1)
    8000207c:	00178793          	addi	a5,a5,1
    80002080:	00f4b023          	sd	a5,0(s1)
        _console::handle_console_output();
    80002084:	00001097          	auipc	ra,0x1
    80002088:	abc080e7          	jalr	-1348(ra) # 80002b40 <_ZN8_console21handle_console_outputEv>
        Scheduler::maybeWakeThreads();
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	2c0080e7          	jalr	704(ra) # 8000134c <_ZN9Scheduler16maybeWakeThreadsEv>
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002094:	0000a797          	auipc	a5,0xa
    80002098:	a8478793          	addi	a5,a5,-1404 # 8000bb18 <_ZN3TCB7runningE>
    8000209c:	0007b783          	ld	a5,0(a5)

    bool isSleeping() { return sleeping_; }

    uint64 getTimeSlice() const { return timeSlice; }
    800020a0:	0287b783          	ld	a5,40(a5)
    800020a4:	0004b703          	ld	a4,0(s1)
    800020a8:	d0f766e3          	bltu	a4,a5,80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020ac:	141027f3          	csrr	a5,sepc
    800020b0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800020b4:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    800020b8:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020bc:	100027f3          	csrr	a5,sstatus
    800020c0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800020c4:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    800020c8:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    800020cc:	0000a797          	auipc	a5,0xa
    800020d0:	a407b223          	sd	zero,-1468(a5) # 8000bb10 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	788080e7          	jalr	1928(ra) # 8000285c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800020dc:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020e0:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800020e4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020e8:	14179073          	csrw	sepc,a5
    800020ec:	cc9ff06f          	j	80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>

00000000800020f0 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800020f0:	fe010113          	addi	sp,sp,-32
    800020f4:	00113c23          	sd	ra,24(sp)
    800020f8:	00813823          	sd	s0,16(sp)
    800020fc:	00913423          	sd	s1,8(sp)
    80002100:	02010413          	addi	s0,sp,32
    80002104:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	b44080e7          	jalr	-1212(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80002110:	00048593          	mv	a1,s1
    80002114:	00001097          	auipc	ra,0x1
    80002118:	c9c080e7          	jalr	-868(ra) # 80002db0 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000211c:	01813083          	ld	ra,24(sp)
    80002120:	01013403          	ld	s0,16(sp)
    80002124:	00813483          	ld	s1,8(sp)
    80002128:	02010113          	addi	sp,sp,32
    8000212c:	00008067          	ret

0000000080002130 <_Znam>:

void *operator new[](size_t n)
{
    80002130:	fe010113          	addi	sp,sp,-32
    80002134:	00113c23          	sd	ra,24(sp)
    80002138:	00813823          	sd	s0,16(sp)
    8000213c:	00913423          	sd	s1,8(sp)
    80002140:	02010413          	addi	s0,sp,32
    80002144:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	b04080e7          	jalr	-1276(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80002150:	00048593          	mv	a1,s1
    80002154:	00001097          	auipc	ra,0x1
    80002158:	c5c080e7          	jalr	-932(ra) # 80002db0 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000215c:	01813083          	ld	ra,24(sp)
    80002160:	01013403          	ld	s0,16(sp)
    80002164:	00813483          	ld	s1,8(sp)
    80002168:	02010113          	addi	sp,sp,32
    8000216c:	00008067          	ret

0000000080002170 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002170:	fe010113          	addi	sp,sp,-32
    80002174:	00113c23          	sd	ra,24(sp)
    80002178:	00813823          	sd	s0,16(sp)
    8000217c:	00913423          	sd	s1,8(sp)
    80002180:	02010413          	addi	s0,sp,32
    80002184:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	ac4080e7          	jalr	-1340(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80002190:	00048593          	mv	a1,s1
    80002194:	00001097          	auipc	ra,0x1
    80002198:	d9c080e7          	jalr	-612(ra) # 80002f30 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000219c:	01813083          	ld	ra,24(sp)
    800021a0:	01013403          	ld	s0,16(sp)
    800021a4:	00813483          	ld	s1,8(sp)
    800021a8:	02010113          	addi	sp,sp,32
    800021ac:	00008067          	ret

00000000800021b0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	02010413          	addi	s0,sp,32
    800021c4:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	a84080e7          	jalr	-1404(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    800021d0:	00048593          	mv	a1,s1
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	d5c080e7          	jalr	-676(ra) # 80002f30 <_ZN15MemoryAllocator8mem_freeEPv>
    800021dc:	01813083          	ld	ra,24(sp)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	00813483          	ld	s1,8(sp)
    800021e8:	02010113          	addi	sp,sp,32
    800021ec:	00008067          	ret

00000000800021f0 <_Z11debug_printm>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../lib/console.h"


void debug_print(uint64 integer) {
    800021f0:	ff010113          	addi	sp,sp,-16
    800021f4:	00813423          	sd	s0,8(sp)
    800021f8:	01010413          	addi	s0,sp,16
    #if DEBUG_PRINT == 1
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    debug_print_internal_int(integer);
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    #endif
}
    800021fc:	00813403          	ld	s0,8(sp)
    80002200:	01010113          	addi	sp,sp,16
    80002204:	00008067          	ret

0000000080002208 <_Z11debug_printPKc>:

void debug_print(char const *string) {
    80002208:	ff010113          	addi	sp,sp,-16
    8000220c:	00813423          	sd	s0,8(sp)
    80002210:	01010413          	addi	s0,sp,16
    #if DEBUG_PRINT == 1
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    debug_print_internal_string(string);
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    #endif
}
    80002214:	00813403          	ld	s0,8(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_Z6assertbPKc>:

void assert(bool condition, char const *debug_message) {
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00813423          	sd	s0,8(sp)
    80002228:	01010413          	addi	s0,sp,16
    if (!condition) {
        debug_print("Assertion failed: ");
        debug_print(debug_message);
        debug_print("\n");
    }
}
    8000222c:	00813403          	ld	s0,8(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret

0000000080002238 <_Z27debug_print_internal_stringPKc>:

void debug_print_internal_string(char const *string)
{
    80002238:	fd010113          	addi	sp,sp,-48
    8000223c:	02113423          	sd	ra,40(sp)
    80002240:	02813023          	sd	s0,32(sp)
    80002244:	00913c23          	sd	s1,24(sp)
    80002248:	01213823          	sd	s2,16(sp)
    8000224c:	03010413          	addi	s0,sp,48
    80002250:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002254:	100027f3          	csrr	a5,sstatus
    80002258:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000225c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002260:	00200793          	li	a5,2
    80002264:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002268:	0004c503          	lbu	a0,0(s1)
    8000226c:	00050a63          	beqz	a0,80002280 <_Z27debug_print_internal_stringPKc+0x48>
    {
        __putc(*string);
    80002270:	00006097          	auipc	ra,0x6
    80002274:	6cc080e7          	jalr	1740(ra) # 8000893c <__putc>
        string++;
    80002278:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000227c:	fedff06f          	j	80002268 <_Z27debug_print_internal_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002280:	0009091b          	sext.w	s2,s2
    80002284:	00297913          	andi	s2,s2,2
    80002288:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000228c:	10092073          	csrs	sstatus,s2
}
    80002290:	02813083          	ld	ra,40(sp)
    80002294:	02013403          	ld	s0,32(sp)
    80002298:	01813483          	ld	s1,24(sp)
    8000229c:	01013903          	ld	s2,16(sp)
    800022a0:	03010113          	addi	sp,sp,48
    800022a4:	00008067          	ret

00000000800022a8 <_Z24debug_print_internal_intm>:

void debug_print_internal_int(uint64 integer)
{
    800022a8:	fc010113          	addi	sp,sp,-64
    800022ac:	02113c23          	sd	ra,56(sp)
    800022b0:	02813823          	sd	s0,48(sp)
    800022b4:	02913423          	sd	s1,40(sp)
    800022b8:	03213023          	sd	s2,32(sp)
    800022bc:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022c0:	100027f3          	csrr	a5,sstatus
    800022c4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800022c8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022cc:	00200793          	li	a5,2
    800022d0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800022d4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800022d8:	00000713          	li	a4,0
    800022dc:	0080006f          	j	800022e4 <_Z24debug_print_internal_intm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    800022e0:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    800022e4:	00a00793          	li	a5,10
    800022e8:	02f5763b          	remuw	a2,a0,a5
    800022ec:	0017049b          	addiw	s1,a4,1
    800022f0:	00007697          	auipc	a3,0x7
    800022f4:	02868693          	addi	a3,a3,40 # 80009318 <_ZZ24debug_print_internal_intmE6digits>
    800022f8:	00c686b3          	add	a3,a3,a2
    800022fc:	0006c683          	lbu	a3,0(a3)
    80002300:	fe040613          	addi	a2,s0,-32
    80002304:	00e60733          	add	a4,a2,a4
    80002308:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    8000230c:	02f557bb          	divuw	a5,a0,a5
    80002310:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    80002314:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80002318:	00900793          	li	a5,9
    8000231c:	fca7e2e3          	bltu	a5,a0,800022e0 <_Z24debug_print_internal_intm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002320:	fff4849b          	addiw	s1,s1,-1
    80002324:	0004ce63          	bltz	s1,80002340 <_Z24debug_print_internal_intm+0x98>
    80002328:	fe040793          	addi	a5,s0,-32
    8000232c:	009787b3          	add	a5,a5,s1
    80002330:	ff07c503          	lbu	a0,-16(a5)
    80002334:	00006097          	auipc	ra,0x6
    80002338:	608080e7          	jalr	1544(ra) # 8000893c <__putc>
    8000233c:	fe5ff06f          	j	80002320 <_Z24debug_print_internal_intm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002340:	0009091b          	sext.w	s2,s2
    80002344:	00297913          	andi	s2,s2,2
    80002348:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000234c:	10092073          	csrs	sstatus,s2
    80002350:	03813083          	ld	ra,56(sp)
    80002354:	03013403          	ld	s0,48(sp)
    80002358:	02813483          	ld	s1,40(sp)
    8000235c:	02013903          	ld	s2,32(sp)
    80002360:	04010113          	addi	sp,sp,64
    80002364:	00008067          	ret

0000000080002368 <_Z15userMainWrapperPv>:
}

void userMain();

void userMainWrapper(void* arg)
{
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00113423          	sd	ra,8(sp)
    80002370:	00813023          	sd	s0,0(sp)
    80002374:	01010413          	addi	s0,sp,16
    userMain();
    80002378:	00002097          	auipc	ra,0x2
    8000237c:	e84080e7          	jalr	-380(ra) # 800041fc <_Z8userMainv>
    return;
}
    80002380:	00813083          	ld	ra,8(sp)
    80002384:	00013403          	ld	s0,0(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_Z4exitv>:
void exit() {
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00113423          	sd	ra,8(sp)
    80002398:	00813023          	sd	s0,0(sp)
    8000239c:	01010413          	addi	s0,sp,16
    debug_print("Exiting kernel.\n");
    800023a0:	00007517          	auipc	a0,0x7
    800023a4:	f8850513          	addi	a0,a0,-120 # 80009328 <_ZZ24debug_print_internal_intmE6digits+0x10>
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	e60080e7          	jalr	-416(ra) # 80002208 <_Z11debug_printPKc>
    *((uint32*)0x100000) = 0x5555;
    800023b0:	00100737          	lui	a4,0x100
    800023b4:	000057b7          	lui	a5,0x5
    800023b8:	55578793          	addi	a5,a5,1365 # 5555 <_entry-0x7fffaaab>
    800023bc:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
}
    800023c0:	00813083          	ld	ra,8(sp)
    800023c4:	00013403          	ld	s0,0(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <main>:

void main()
{
    800023d0:	fd010113          	addi	sp,sp,-48
    800023d4:	02113423          	sd	ra,40(sp)
    800023d8:	02813023          	sd	s0,32(sp)
    800023dc:	00913c23          	sd	s1,24(sp)
    800023e0:	01213823          	sd	s2,16(sp)
    800023e4:	01313423          	sd	s3,8(sp)
    800023e8:	03010413          	addi	s0,sp,48
    thread_t main_handle;
    thread_t userMain_handle;

    // // Initialize console.
    debug_print("Initializing console\n");
    800023ec:	00007517          	auipc	a0,0x7
    800023f0:	f5450513          	addi	a0,a0,-172 # 80009340 <_ZZ24debug_print_internal_intmE6digits+0x28>
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	e14080e7          	jalr	-492(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("Creating buffers\n");
    800023fc:	00007517          	auipc	a0,0x7
    80002400:	f5c50513          	addi	a0,a0,-164 # 80009358 <_ZZ24debug_print_internal_intmE6digits+0x40>
    80002404:	00000097          	auipc	ra,0x0
    80002408:	e04080e7          	jalr	-508(ra) # 80002208 <_Z11debug_printPKc>
        buffer_in_ = CircularBuffer<char>::createInstance(size_);
    8000240c:	00009917          	auipc	s2,0x9
    80002410:	52c90913          	addi	s2,s2,1324 # 8000b938 <_ZN8_console5size_E>
    80002414:	00092983          	lw	s3,0(s2)
        CircularBuffer<T> *instance = (CircularBuffer<T>*)MemoryAllocator::getInstance()->mem_alloc(sizeof(CircularBuffer<T>));
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	834080e7          	jalr	-1996(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80002420:	03000593          	li	a1,48
    80002424:	00001097          	auipc	ra,0x1
    80002428:	98c080e7          	jalr	-1652(ra) # 80002db0 <_ZN15MemoryAllocator9mem_allocEm>
    8000242c:	00050493          	mv	s1,a0
        instance->first_idx_ = 0;
    80002430:	00052c23          	sw	zero,24(a0)
        instance->last_idx_ = 0;
    80002434:	00052e23          	sw	zero,28(a0)
        instance->size_ = size+1;
    80002438:	0019879b          	addiw	a5,s3,1
    8000243c:	02f52023          	sw	a5,32(a0)
        instance->item_ = _semaphore::open(0);
    80002440:	00000513          	li	a0,0
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	298080e7          	jalr	664(ra) # 800016dc <_ZN10_semaphore4openEj>
    8000244c:	00a4b023          	sd	a0,0(s1)
        instance->space_ = _semaphore::open(size);
    80002450:	00098513          	mv	a0,s3
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	288080e7          	jalr	648(ra) # 800016dc <_ZN10_semaphore4openEj>
    8000245c:	00a4b423          	sd	a0,8(s1)
        instance->mutex_ = _semaphore::open(1);
    80002460:	00100513          	li	a0,1
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	278080e7          	jalr	632(ra) # 800016dc <_ZN10_semaphore4openEj>
    8000246c:	00a4b823          	sd	a0,16(s1)
        instance->buffer_ = (T*)MemoryAllocator::getInstance()->mem_alloc(sizeof(T) * instance->size_);
    80002470:	00000097          	auipc	ra,0x0
    80002474:	7dc080e7          	jalr	2012(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    80002478:	0204a583          	lw	a1,32(s1)
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	934080e7          	jalr	-1740(ra) # 80002db0 <_ZN15MemoryAllocator9mem_allocEm>
    80002484:	02a4b423          	sd	a0,40(s1)
    80002488:	00009797          	auipc	a5,0x9
    8000248c:	6a97b023          	sd	s1,1696(a5) # 8000bb28 <_ZN8_console10buffer_in_E>
        buffer_out_ = CircularBuffer<char>::createInstance(size_);
    80002490:	00092903          	lw	s2,0(s2)
        CircularBuffer<T> *instance = (CircularBuffer<T>*)MemoryAllocator::getInstance()->mem_alloc(sizeof(CircularBuffer<T>));
    80002494:	00000097          	auipc	ra,0x0
    80002498:	7b8080e7          	jalr	1976(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    8000249c:	03000593          	li	a1,48
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	910080e7          	jalr	-1776(ra) # 80002db0 <_ZN15MemoryAllocator9mem_allocEm>
    800024a8:	00050493          	mv	s1,a0
        instance->first_idx_ = 0;
    800024ac:	00052c23          	sw	zero,24(a0)
        instance->last_idx_ = 0;
    800024b0:	00052e23          	sw	zero,28(a0)
        instance->size_ = size+1;
    800024b4:	0019079b          	addiw	a5,s2,1
    800024b8:	02f52023          	sw	a5,32(a0)
        instance->item_ = _semaphore::open(0);
    800024bc:	00000513          	li	a0,0
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	21c080e7          	jalr	540(ra) # 800016dc <_ZN10_semaphore4openEj>
    800024c8:	00a4b023          	sd	a0,0(s1)
        instance->space_ = _semaphore::open(size);
    800024cc:	00090513          	mv	a0,s2
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	20c080e7          	jalr	524(ra) # 800016dc <_ZN10_semaphore4openEj>
    800024d8:	00a4b423          	sd	a0,8(s1)
        instance->mutex_ = _semaphore::open(1);
    800024dc:	00100513          	li	a0,1
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	1fc080e7          	jalr	508(ra) # 800016dc <_ZN10_semaphore4openEj>
    800024e8:	00a4b823          	sd	a0,16(s1)
        instance->buffer_ = (T*)MemoryAllocator::getInstance()->mem_alloc(sizeof(T) * instance->size_);
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	760080e7          	jalr	1888(ra) # 80002c4c <_ZN15MemoryAllocator11getInstanceEv>
    800024f4:	0204a583          	lw	a1,32(s1)
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	8b8080e7          	jalr	-1864(ra) # 80002db0 <_ZN15MemoryAllocator9mem_allocEm>
    80002500:	02a4b423          	sd	a0,40(s1)
    80002504:	00009797          	auipc	a5,0x9
    80002508:	6097be23          	sd	s1,1564(a5) # 8000bb20 <_ZN8_console11buffer_out_E>
        debug_print("Buffers created\n");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	e6450513          	addi	a0,a0,-412 # 80009370 <_ZZ24debug_print_internal_intmE6digits+0x58>
    80002514:	00000097          	auipc	ra,0x0
    80002518:	cf4080e7          	jalr	-780(ra) # 80002208 <_Z11debug_printPKc>
    _console::_console_init();

    // // We create threads directly through TCB because we do not yet have
    // // interrupts enabled.
    debug_print("Creating main thread\n");
    8000251c:	00007517          	auipc	a0,0x7
    80002520:	e6c50513          	addi	a0,a0,-404 # 80009388 <_ZZ24debug_print_internal_intmE6digits+0x70>
    80002524:	00000097          	auipc	ra,0x0
    80002528:	ce4080e7          	jalr	-796(ra) # 80002208 <_Z11debug_printPKc>
    main_handle = TCB::createThread(nullptr, nullptr);
    8000252c:	00000593          	li	a1,0
    80002530:	00000513          	li	a0,0
    80002534:	00000097          	auipc	ra,0x0
    80002538:	238080e7          	jalr	568(ra) # 8000276c <_ZN3TCB12createThreadEPFvPvES0_>
    8000253c:	00050913          	mv	s2,a0
    debug_print("Main thread handle: \n");
    80002540:	00007517          	auipc	a0,0x7
    80002544:	e6050513          	addi	a0,a0,-416 # 800093a0 <_ZZ24debug_print_internal_intmE6digits+0x88>
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	cc0080e7          	jalr	-832(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)main_handle);
    80002550:	00090513          	mv	a0,s2
    80002554:	00000097          	auipc	ra,0x0
    80002558:	c9c080e7          	jalr	-868(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	e9450513          	addi	a0,a0,-364 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	ca4080e7          	jalr	-860(ra) # 80002208 <_Z11debug_printPKc>

    debug_print("Creating userMain thread\n");
    8000256c:	00007517          	auipc	a0,0x7
    80002570:	e4c50513          	addi	a0,a0,-436 # 800093b8 <_ZZ24debug_print_internal_intmE6digits+0xa0>
    80002574:	00000097          	auipc	ra,0x0
    80002578:	c94080e7          	jalr	-876(ra) # 80002208 <_Z11debug_printPKc>
    userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    8000257c:	00000593          	li	a1,0
    80002580:	00000517          	auipc	a0,0x0
    80002584:	de850513          	addi	a0,a0,-536 # 80002368 <_Z15userMainWrapperPv>
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	1e4080e7          	jalr	484(ra) # 8000276c <_ZN3TCB12createThreadEPFvPvES0_>
    80002590:	00050493          	mv	s1,a0
    debug_print("UserMain thread handle: \n");
    80002594:	00007517          	auipc	a0,0x7
    80002598:	e4450513          	addi	a0,a0,-444 # 800093d8 <_ZZ24debug_print_internal_intmE6digits+0xc0>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	c6c080e7          	jalr	-916(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)userMain_handle);
    800025a4:	00048513          	mv	a0,s1
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	c48080e7          	jalr	-952(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    800025b0:	00007517          	auipc	a0,0x7
    800025b4:	e4050513          	addi	a0,a0,-448 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	c50080e7          	jalr	-944(ra) # 80002208 <_Z11debug_printPKc>

    debug_print("Setting running to main thread\n");
    800025c0:	00007517          	auipc	a0,0x7
    800025c4:	e3850513          	addi	a0,a0,-456 # 800093f8 <_ZZ24debug_print_internal_intmE6digits+0xe0>
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	c40080e7          	jalr	-960(ra) # 80002208 <_Z11debug_printPKc>
    TCB::running = main_handle;
    800025d0:	00009797          	auipc	a5,0x9
    800025d4:	5527b423          	sd	s2,1352(a5) # 8000bb18 <_ZN3TCB7runningE>

    debug_print("Setting supervisor trap and enabling interrupts\n");
    800025d8:	00007517          	auipc	a0,0x7
    800025dc:	e4050513          	addi	a0,a0,-448 # 80009418 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	c28080e7          	jalr	-984(ra) # 80002208 <_Z11debug_printPKc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800025e8:	fffff797          	auipc	a5,0xfffff
    800025ec:	a1878793          	addi	a5,a5,-1512 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800025f0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800025f4:	00200793          	li	a5,2
    800025f8:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished_; }
    800025fc:	0304c783          	lbu	a5,48(s1)
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // // Thread randomThread(randomWrapper, nullptr);
    // // randomThread.start();

    while (!userMain_handle->isFinished()) {
    80002600:	00079863          	bnez	a5,80002610 <main+0x240>
        thread_dispatch();
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	380080e7          	jalr	896(ra) # 80001984 <_Z15thread_dispatchv>
    while (!userMain_handle->isFinished()) {
    8000260c:	ff1ff06f          	j	800025fc <main+0x22c>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002610:	00200793          	li	a5,2
    80002614:	1007b073          	csrc	sstatus,a5
    }
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    debug_print("Exiting main\n");
    80002618:	00007517          	auipc	a0,0x7
    8000261c:	e3850513          	addi	a0,a0,-456 # 80009450 <_ZZ24debug_print_internal_intmE6digits+0x138>
    80002620:	00000097          	auipc	ra,0x0
    80002624:	be8080e7          	jalr	-1048(ra) # 80002208 <_Z11debug_printPKc>
    80002628:	0380006f          	j	80002660 <main+0x290>
        mutex_->wait();

        if (last_idx_ >= first_idx_) {
            ret = last_idx_ - first_idx_;
        } else {
            ret = size_ - first_idx_ + last_idx_;
    8000262c:	0204a703          	lw	a4,32(s1)
    80002630:	4127093b          	subw	s2,a4,s2
    80002634:	00f9093b          	addw	s2,s2,a5
        }

        mutex_->signal();
    80002638:	0104b503          	ld	a0,16(s1)
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	ff8080e7          	jalr	-8(ra) # 80001634 <_ZN10_semaphore6signalEv>
    while(_console::_can_output()) {
    80002644:	05205463          	blez	s2,8000268c <main+0x2bc>
        _console::handle_console_output();
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	4f8080e7          	jalr	1272(ra) # 80002b40 <_ZN8_console21handle_console_outputEv>
        debug_print("Can output\n");
    80002650:	00007517          	auipc	a0,0x7
    80002654:	e1050513          	addi	a0,a0,-496 # 80009460 <_ZZ24debug_print_internal_intmE6digits+0x148>
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	bb0080e7          	jalr	-1104(ra) # 80002208 <_Z11debug_printPKc>
    }

    static bool _can_output() {
        auto ret = buffer_out_->getCnt();
    80002660:	00009797          	auipc	a5,0x9
    80002664:	4c078793          	addi	a5,a5,1216 # 8000bb20 <_ZN8_console11buffer_out_E>
    80002668:	0007b483          	ld	s1,0(a5)
        mutex_->wait();
    8000266c:	0104b503          	ld	a0,16(s1)
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	f18080e7          	jalr	-232(ra) # 80001588 <_ZN10_semaphore4waitEv>
        if (last_idx_ >= first_idx_) {
    80002678:	01c4a783          	lw	a5,28(s1)
    8000267c:	0184a903          	lw	s2,24(s1)
    80002680:	fb27c6e3          	blt	a5,s2,8000262c <main+0x25c>
            ret = last_idx_ - first_idx_;
    80002684:	4127893b          	subw	s2,a5,s2
    80002688:	fb1ff06f          	j	80002638 <main+0x268>
    }
    exit();
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	d04080e7          	jalr	-764(ra) # 80002390 <_Z4exitv>
}
    80002694:	02813083          	ld	ra,40(sp)
    80002698:	02013403          	ld	s0,32(sp)
    8000269c:	01813483          	ld	s1,24(sp)
    800026a0:	01013903          	ld	s2,16(sp)
    800026a4:	00813983          	ld	s3,8(sp)
    800026a8:	03010113          	addi	sp,sp,48
    800026ac:	00008067          	ret

00000000800026b0 <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    800026b0:	fe010113          	addi	sp,sp,-32
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800026c4:	fffff097          	auipc	ra,0xfffff
    800026c8:	5dc080e7          	jalr	1500(ra) # 80001ca0 <_ZN5Riscv10popSppSpieEv>
    debug_print("TCB: Starting thread body: ");
    800026cc:	00007517          	auipc	a0,0x7
    800026d0:	da450513          	addi	a0,a0,-604 # 80009470 <_ZZ24debug_print_internal_intmE6digits+0x158>
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	b34080e7          	jalr	-1228(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)running->body);
    800026dc:	00009497          	auipc	s1,0x9
    800026e0:	43c48493          	addi	s1,s1,1084 # 8000bb18 <_ZN3TCB7runningE>
    800026e4:	0004b783          	ld	a5,0(s1)
    800026e8:	0007b503          	ld	a0,0(a5)
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	b04080e7          	jalr	-1276(ra) # 800021f0 <_Z11debug_printm>
    debug_print(" for thread: ");
    800026f4:	00007517          	auipc	a0,0x7
    800026f8:	d9c50513          	addi	a0,a0,-612 # 80009490 <_ZZ24debug_print_internal_intmE6digits+0x178>
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	b0c080e7          	jalr	-1268(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)running);
    80002704:	0004b503          	ld	a0,0(s1)
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	ae8080e7          	jalr	-1304(ra) # 800021f0 <_Z11debug_printm>
    debug_print(" and arg: ");
    80002710:	00007517          	auipc	a0,0x7
    80002714:	d9050513          	addi	a0,a0,-624 # 800094a0 <_ZZ24debug_print_internal_intmE6digits+0x188>
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	af0080e7          	jalr	-1296(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)running->arg_);
    80002720:	0004b783          	ld	a5,0(s1)
    80002724:	0087b503          	ld	a0,8(a5)
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	ac8080e7          	jalr	-1336(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    80002730:	00007517          	auipc	a0,0x7
    80002734:	cc050513          	addi	a0,a0,-832 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	ad0080e7          	jalr	-1328(ra) # 80002208 <_Z11debug_printPKc>
    
    running->body(running->arg_);
    80002740:	0004b783          	ld	a5,0(s1)
    80002744:	0007b703          	ld	a4,0(a5)
    80002748:	0087b503          	ld	a0,8(a5)
    8000274c:	000700e7          	jalr	a4
    thread_exit();
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	1d4080e7          	jalr	468(ra) # 80001924 <_Z11thread_exitv>
}
    80002758:	01813083          	ld	ra,24(sp)
    8000275c:	01013403          	ld	s0,16(sp)
    80002760:	00813483          	ld	s1,8(sp)
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00008067          	ret

000000008000276c <_ZN3TCB12createThreadEPFvPvES0_>:
{
    8000276c:	fd010113          	addi	sp,sp,-48
    80002770:	02113423          	sd	ra,40(sp)
    80002774:	02813023          	sd	s0,32(sp)
    80002778:	00913c23          	sd	s1,24(sp)
    8000277c:	01213823          	sd	s2,16(sp)
    80002780:	01313423          	sd	s3,8(sp)
    80002784:	03010413          	addi	s0,sp,48
    80002788:	00050913          	mv	s2,a0
    8000278c:	00058993          	mv	s3,a1
    debug_print("TCB: Creating TCB\n");
    80002790:	00007517          	auipc	a0,0x7
    80002794:	d2050513          	addi	a0,a0,-736 # 800094b0 <_ZZ24debug_print_internal_intmE6digits+0x198>
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	a70080e7          	jalr	-1424(ra) # 80002208 <_Z11debug_printPKc>
    return new TCB(body, arg, TIME_SLICE);
    800027a0:	03800513          	li	a0,56
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	94c080e7          	jalr	-1716(ra) # 800020f0 <_Znwm>
    800027ac:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished_(false),
            blocked_(false),
            sleeping_(false)
    800027b0:	01253023          	sd	s2,0(a0)
    800027b4:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800027b8:	00090a63          	beqz	s2,800027cc <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    800027bc:	00002537          	lui	a0,0x2
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	970080e7          	jalr	-1680(ra) # 80002130 <_Znam>
    800027c8:	0080006f          	j	800027d0 <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    800027cc:	00000513          	li	a0,0
            sleeping_(false)
    800027d0:	00a4b823          	sd	a0,16(s1)
    800027d4:	00000797          	auipc	a5,0x0
    800027d8:	edc78793          	addi	a5,a5,-292 # 800026b0 <_ZN3TCB13threadWrapperEv>
    800027dc:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800027e0:	02050c63          	beqz	a0,80002818 <_ZN3TCB12createThreadEPFvPvES0_+0xac>
    800027e4:	000027b7          	lui	a5,0x2
    800027e8:	00f50533          	add	a0,a0,a5
            sleeping_(false)
    800027ec:	02a4b023          	sd	a0,32(s1)
    800027f0:	00200793          	li	a5,2
    800027f4:	02f4b423          	sd	a5,40(s1)
    800027f8:	02048823          	sb	zero,48(s1)
    800027fc:	020488a3          	sb	zero,49(s1)
    80002800:	02048923          	sb	zero,50(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80002804:	02090c63          	beqz	s2,8000283c <_ZN3TCB12createThreadEPFvPvES0_+0xd0>
    80002808:	00048513          	mv	a0,s1
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	9ec080e7          	jalr	-1556(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
    80002814:	0280006f          	j	8000283c <_ZN3TCB12createThreadEPFvPvES0_+0xd0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002818:	00000513          	li	a0,0
    8000281c:	fd1ff06f          	j	800027ec <_ZN3TCB12createThreadEPFvPvES0_+0x80>
    80002820:	00050913          	mv	s2,a0
    80002824:	00048513          	mv	a0,s1
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	948080e7          	jalr	-1720(ra) # 80002170 <_ZdlPv>
    80002830:	00090513          	mv	a0,s2
    80002834:	0000a097          	auipc	ra,0xa
    80002838:	464080e7          	jalr	1124(ra) # 8000cc98 <_Unwind_Resume>
}
    8000283c:	00048513          	mv	a0,s1
    80002840:	02813083          	ld	ra,40(sp)
    80002844:	02013403          	ld	s0,32(sp)
    80002848:	01813483          	ld	s1,24(sp)
    8000284c:	01013903          	ld	s2,16(sp)
    80002850:	00813983          	ld	s3,8(sp)
    80002854:	03010113          	addi	sp,sp,48
    80002858:	00008067          	ret

000000008000285c <_ZN3TCB8dispatchEv>:
{
    8000285c:	fe010113          	addi	sp,sp,-32
    80002860:	00113c23          	sd	ra,24(sp)
    80002864:	00813823          	sd	s0,16(sp)
    80002868:	00913423          	sd	s1,8(sp)
    8000286c:	01213023          	sd	s2,0(sp)
    80002870:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002874:	00009797          	auipc	a5,0x9
    80002878:	2a478793          	addi	a5,a5,676 # 8000bb18 <_ZN3TCB7runningE>
    8000287c:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    80002880:	0314c783          	lbu	a5,49(s1)
    if (!old->isBlocked() && !old->isFinished() && !old->isSleeping()) { 
    80002884:	00079a63          	bnez	a5,80002898 <_ZN3TCB8dispatchEv+0x3c>
    bool isFinished() const { return finished_; }
    80002888:	0304c783          	lbu	a5,48(s1)
    8000288c:	00079663          	bnez	a5,80002898 <_ZN3TCB8dispatchEv+0x3c>
    bool isSleeping() { return sleeping_; }
    80002890:	0324c783          	lbu	a5,50(s1)
    80002894:	08078e63          	beqz	a5,80002930 <_ZN3TCB8dispatchEv+0xd4>
    running = Scheduler::get();
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	8f4080e7          	jalr	-1804(ra) # 8000118c <_ZN9Scheduler3getEv>
    800028a0:	00009917          	auipc	s2,0x9
    800028a4:	27890913          	addi	s2,s2,632 # 8000bb18 <_ZN3TCB7runningE>
    800028a8:	00a93023          	sd	a0,0(s2)
    debug_print("Running thread: ");
    800028ac:	00007517          	auipc	a0,0x7
    800028b0:	c1c50513          	addi	a0,a0,-996 # 800094c8 <_ZZ24debug_print_internal_intmE6digits+0x1b0>
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	954080e7          	jalr	-1708(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)running);
    800028bc:	00093503          	ld	a0,0(s2)
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	930080e7          	jalr	-1744(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    800028c8:	00007517          	auipc	a0,0x7
    800028cc:	b2850513          	addi	a0,a0,-1240 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	938080e7          	jalr	-1736(ra) # 80002208 <_Z11debug_printPKc>
    debug_print("Old thread: ");
    800028d8:	00007517          	auipc	a0,0x7
    800028dc:	c0850513          	addi	a0,a0,-1016 # 800094e0 <_ZZ24debug_print_internal_intmE6digits+0x1c8>
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	928080e7          	jalr	-1752(ra) # 80002208 <_Z11debug_printPKc>
    debug_print((uint64)old);
    800028e8:	00048513          	mv	a0,s1
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	904080e7          	jalr	-1788(ra) # 800021f0 <_Z11debug_printm>
    debug_print("\n");
    800028f4:	00007517          	auipc	a0,0x7
    800028f8:	afc50513          	addi	a0,a0,-1284 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	90c080e7          	jalr	-1780(ra) # 80002208 <_Z11debug_printPKc>
    TCB::contextSwitch(&old->context, &running->context);
    80002904:	00093583          	ld	a1,0(s2)
    80002908:	01858593          	addi	a1,a1,24
    8000290c:	01848513          	addi	a0,s1,24
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	800080e7          	jalr	-2048(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002918:	01813083          	ld	ra,24(sp)
    8000291c:	01013403          	ld	s0,16(sp)
    80002920:	00813483          	ld	s1,8(sp)
    80002924:	00013903          	ld	s2,0(sp)
    80002928:	02010113          	addi	sp,sp,32
    8000292c:	00008067          	ret
        Scheduler::put(old); 
    80002930:	00048513          	mv	a0,s1
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	8c4080e7          	jalr	-1852(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
    8000293c:	f5dff06f          	j	80002898 <_ZN3TCB8dispatchEv+0x3c>

0000000080002940 <_ZN3TCB5yieldEv>:
{
    80002940:	ff010113          	addi	sp,sp,-16
    80002944:	00113423          	sd	ra,8(sp)
    80002948:	00813023          	sd	s0,0(sp)
    8000294c:	01010413          	addi	s0,sp,16
    dispatch();
    80002950:	00000097          	auipc	ra,0x0
    80002954:	f0c080e7          	jalr	-244(ra) # 8000285c <_ZN3TCB8dispatchEv>
}
    80002958:	00813083          	ld	ra,8(sp)
    8000295c:	00013403          	ld	s0,0(sp)
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret

0000000080002968 <_ZN3TCB4exitEv>:

void TCB::exit() {
    80002968:	fe010113          	addi	sp,sp,-32
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00913423          	sd	s1,8(sp)
    80002978:	01213023          	sd	s2,0(sp)
    8000297c:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    80002980:	00007517          	auipc	a0,0x7
    80002984:	b7050513          	addi	a0,a0,-1168 # 800094f0 <_ZZ24debug_print_internal_intmE6digits+0x1d8>
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	880080e7          	jalr	-1920(ra) # 80002208 <_Z11debug_printPKc>
    TCB *old = running;
    80002990:	00009497          	auipc	s1,0x9
    80002994:	18848493          	addi	s1,s1,392 # 8000bb18 <_ZN3TCB7runningE>
    80002998:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    8000299c:	00100793          	li	a5,1
    800029a0:	02f90823          	sb	a5,48(s2)
    old->setFinished(true);
    running = Scheduler::get();
    800029a4:	ffffe097          	auipc	ra,0xffffe
    800029a8:	7e8080e7          	jalr	2024(ra) # 8000118c <_ZN9Scheduler3getEv>
    800029ac:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    800029b0:	00007597          	auipc	a1,0x7
    800029b4:	b5858593          	addi	a1,a1,-1192 # 80009508 <_ZZ24debug_print_internal_intmE6digits+0x1f0>
    800029b8:	00a03533          	snez	a0,a0
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	864080e7          	jalr	-1948(ra) # 80002220 <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    800029c4:	0004b583          	ld	a1,0(s1)
    800029c8:	01858593          	addi	a1,a1,24
    800029cc:	01890513          	addi	a0,s2,24
    800029d0:	ffffe097          	auipc	ra,0xffffe
    800029d4:	740080e7          	jalr	1856(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    800029d8:	01813083          	ld	ra,24(sp)
    800029dc:	01013403          	ld	s0,16(sp)
    800029e0:	00813483          	ld	s1,8(sp)
    800029e4:	00013903          	ld	s2,0(sp)
    800029e8:	02010113          	addi	sp,sp,32
    800029ec:	00008067          	ret

00000000800029f0 <_ZN8_console20handle_console_inputEv>:
int _console::size_ = 128;
CircularBuffer<char>* _console::buffer_in_ = nullptr;
CircularBuffer<char>* _console::buffer_out_ = nullptr;

void _console::handle_console_input()
{
    800029f0:	fd010113          	addi	sp,sp,-48
    800029f4:	02113423          	sd	ra,40(sp)
    800029f8:	02813023          	sd	s0,32(sp)
    800029fc:	00913c23          	sd	s1,24(sp)
    80002a00:	01213823          	sd	s2,16(sp)
    80002a04:	01313423          	sd	s3,8(sp)
    80002a08:	01413023          	sd	s4,0(sp)
    80002a0c:	03010413          	addi	s0,sp,48
    // TODO: Return EOF on error getc.
    uint64 irq = plic_claim();
    80002a10:	00004097          	auipc	ra,0x4
    80002a14:	6c4080e7          	jalr	1732(ra) # 800070d4 <plic_claim>
    80002a18:	00050a13          	mv	s4,a0
    if (irq != CONSOLE_IRQ) {
    80002a1c:	00a00793          	li	a5,10
    80002a20:	00f51c63          	bne	a0,a5,80002a38 <_ZN8_console20handle_console_inputEv+0x48>
        plic_complete(irq);
        return;
    }

    uint8 c_stat = *(uint8*)CONSOLE_STATUS;
    80002a24:	00006797          	auipc	a5,0x6
    80002a28:	5ec78793          	addi	a5,a5,1516 # 80009010 <CONSOLE_STATUS>
    80002a2c:	0007b983          	ld	s3,0(a5)
    80002a30:	0009c783          	lbu	a5,0(s3)
    80002a34:	0ac0006f          	j	80002ae0 <_ZN8_console20handle_console_inputEv+0xf0>
        plic_complete(irq);
    80002a38:	00004097          	auipc	ra,0x4
    80002a3c:	6d4080e7          	jalr	1748(ra) # 8000710c <plic_complete>
        return;
    80002a40:	0e00006f          	j	80002b20 <_ZN8_console20handle_console_inputEv+0x130>
            ret = size_ - first_idx_ + last_idx_;
    80002a44:	0204a703          	lw	a4,32(s1)
    80002a48:	4127093b          	subw	s2,a4,s2
    80002a4c:	00f9093b          	addw	s2,s2,a5
        mutex_->signal();
    80002a50:	0104b503          	ld	a0,16(s1)
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	be0080e7          	jalr	-1056(ra) # 80001634 <_ZN10_semaphore6signalEv>
        return ret > 0;
    }

    static bool _can_input() {
        return buffer_in_->getCnt() < size_;
    80002a5c:	00009797          	auipc	a5,0x9
    80002a60:	edc78793          	addi	a5,a5,-292 # 8000b938 <_ZN8_console5size_E>
    80002a64:	0007a783          	lw	a5,0(a5)

    while ((c_stat & CONSOLE_RX_STATUS_BIT) && _console::_can_input()) {
    80002a68:	0af95663          	bge	s2,a5,80002b14 <_ZN8_console20handle_console_inputEv+0x124>
        char c = *(uint8*)CONSOLE_RX_DATA;
    80002a6c:	00006797          	auipc	a5,0x6
    80002a70:	59478793          	addi	a5,a5,1428 # 80009000 <CONSOLE_RX_DATA>
    80002a74:	0007b783          	ld	a5,0(a5)
    80002a78:	0007c903          	lbu	s2,0(a5)
    static char _remove_from_out() {
        char ret = buffer_out_->removeFirst();
        return ret;
    }
    static void _add_to_in(char c) {
        buffer_in_->addLast(c);
    80002a7c:	00009797          	auipc	a5,0x9
    80002a80:	0ac78793          	addi	a5,a5,172 # 8000bb28 <_ZN8_console10buffer_in_E>
    80002a84:	0007b483          	ld	s1,0(a5)
        space_->wait();
    80002a88:	0084b503          	ld	a0,8(s1)
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	afc080e7          	jalr	-1284(ra) # 80001588 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    80002a94:	0104b503          	ld	a0,16(s1)
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	af0080e7          	jalr	-1296(ra) # 80001588 <_ZN10_semaphore4waitEv>
        T ret = buffer_[last_idx_];
    80002aa0:	0284b783          	ld	a5,40(s1)
    80002aa4:	01c4a703          	lw	a4,28(s1)
    80002aa8:	00e787b3          	add	a5,a5,a4
        buffer_[last_idx_] = c;
    80002aac:	01278023          	sb	s2,0(a5)
        last_idx_ = (last_idx_ + 1) % size_;
    80002ab0:	01c4a783          	lw	a5,28(s1)
    80002ab4:	0017879b          	addiw	a5,a5,1
    80002ab8:	0204a703          	lw	a4,32(s1)
    80002abc:	02e7e7bb          	remw	a5,a5,a4
    80002ac0:	00f4ae23          	sw	a5,28(s1)
        mutex_->signal();
    80002ac4:	0104b503          	ld	a0,16(s1)
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	b6c080e7          	jalr	-1172(ra) # 80001634 <_ZN10_semaphore6signalEv>
        item_->signal();
    80002ad0:	0004b503          	ld	a0,0(s1)
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	b60080e7          	jalr	-1184(ra) # 80001634 <_ZN10_semaphore6signalEv>
        _console::_add_to_in(c);
        c_stat = *(uint8*)CONSOLE_STATUS;
    80002adc:	0009c783          	lbu	a5,0(s3)
    while ((c_stat & CONSOLE_RX_STATUS_BIT) && _console::_can_input()) {
    80002ae0:	0017f793          	andi	a5,a5,1
    80002ae4:	02078863          	beqz	a5,80002b14 <_ZN8_console20handle_console_inputEv+0x124>
        return buffer_in_->getCnt() < size_;
    80002ae8:	00009797          	auipc	a5,0x9
    80002aec:	04078793          	addi	a5,a5,64 # 8000bb28 <_ZN8_console10buffer_in_E>
    80002af0:	0007b483          	ld	s1,0(a5)
        mutex_->wait();
    80002af4:	0104b503          	ld	a0,16(s1)
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	a90080e7          	jalr	-1392(ra) # 80001588 <_ZN10_semaphore4waitEv>
        if (last_idx_ >= first_idx_) {
    80002b00:	01c4a783          	lw	a5,28(s1)
    80002b04:	0184a903          	lw	s2,24(s1)
    80002b08:	f327cee3          	blt	a5,s2,80002a44 <_ZN8_console20handle_console_inputEv+0x54>
            ret = last_idx_ - first_idx_;
    80002b0c:	4127893b          	subw	s2,a5,s2
    80002b10:	f41ff06f          	j	80002a50 <_ZN8_console20handle_console_inputEv+0x60>
    }

    plic_complete(irq);
    80002b14:	000a0513          	mv	a0,s4
    80002b18:	00004097          	auipc	ra,0x4
    80002b1c:	5f4080e7          	jalr	1524(ra) # 8000710c <plic_complete>
}
    80002b20:	02813083          	ld	ra,40(sp)
    80002b24:	02013403          	ld	s0,32(sp)
    80002b28:	01813483          	ld	s1,24(sp)
    80002b2c:	01013903          	ld	s2,16(sp)
    80002b30:	00813983          	ld	s3,8(sp)
    80002b34:	00013a03          	ld	s4,0(sp)
    80002b38:	03010113          	addi	sp,sp,48
    80002b3c:	00008067          	ret

0000000080002b40 <_ZN8_console21handle_console_outputEv>:

void _console::handle_console_output()
{
    80002b40:	fd010113          	addi	sp,sp,-48
    80002b44:	02113423          	sd	ra,40(sp)
    80002b48:	02813023          	sd	s0,32(sp)
    80002b4c:	00913c23          	sd	s1,24(sp)
    80002b50:	01213823          	sd	s2,16(sp)
    80002b54:	01313423          	sd	s3,8(sp)
    80002b58:	03010413          	addi	s0,sp,48
    uint8 c_stat = *(uint8*)CONSOLE_STATUS;
    80002b5c:	00006797          	auipc	a5,0x6
    80002b60:	4b478793          	addi	a5,a5,1204 # 80009010 <CONSOLE_STATUS>
    80002b64:	0007b983          	ld	s3,0(a5)
    80002b68:	0009c783          	lbu	a5,0(s3)
    80002b6c:	0900006f          	j	80002bfc <_ZN8_console21handle_console_outputEv+0xbc>
            ret = size_ - first_idx_ + last_idx_;
    80002b70:	0204a703          	lw	a4,32(s1)
    80002b74:	4127093b          	subw	s2,a4,s2
    80002b78:	00f9093b          	addw	s2,s2,a5
        mutex_->signal();
    80002b7c:	0104b503          	ld	a0,16(s1)
    80002b80:	fffff097          	auipc	ra,0xfffff
    80002b84:	ab4080e7          	jalr	-1356(ra) # 80001634 <_ZN10_semaphore6signalEv>
    while ((c_stat & CONSOLE_TX_STATUS_BIT) && _console::_can_output()) {
    80002b88:	0b205463          	blez	s2,80002c30 <_ZN8_console21handle_console_outputEv+0xf0>
        char ret = buffer_out_->removeFirst();
    80002b8c:	00009797          	auipc	a5,0x9
    80002b90:	f9478793          	addi	a5,a5,-108 # 8000bb20 <_ZN8_console11buffer_out_E>
    80002b94:	0007b483          	ld	s1,0(a5)
        item_->wait();
    80002b98:	0004b503          	ld	a0,0(s1)
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	9ec080e7          	jalr	-1556(ra) # 80001588 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    80002ba4:	0104b503          	ld	a0,16(s1)
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	9e0080e7          	jalr	-1568(ra) # 80001588 <_ZN10_semaphore4waitEv>
        T ret = buffer_[first_idx_];
    80002bb0:	0284b703          	ld	a4,40(s1)
    80002bb4:	0184a783          	lw	a5,24(s1)
    80002bb8:	00f70733          	add	a4,a4,a5
    80002bbc:	00074903          	lbu	s2,0(a4)
        first_idx_ = (first_idx_ + 1) % size_;
    80002bc0:	0017879b          	addiw	a5,a5,1
    80002bc4:	0204a703          	lw	a4,32(s1)
    80002bc8:	02e7e7bb          	remw	a5,a5,a4
    80002bcc:	00f4ac23          	sw	a5,24(s1)
        mutex_->signal();
    80002bd0:	0104b503          	ld	a0,16(s1)
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	a60080e7          	jalr	-1440(ra) # 80001634 <_ZN10_semaphore6signalEv>
        space_->signal();
    80002bdc:	0084b503          	ld	a0,8(s1)
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	a54080e7          	jalr	-1452(ra) # 80001634 <_ZN10_semaphore6signalEv>
        char c = _console::_remove_from_out();
        *(uint8*)CONSOLE_TX_DATA = c;
    80002be8:	00006797          	auipc	a5,0x6
    80002bec:	42078793          	addi	a5,a5,1056 # 80009008 <CONSOLE_TX_DATA>
    80002bf0:	0007b783          	ld	a5,0(a5)
    80002bf4:	01278023          	sb	s2,0(a5)
        c_stat = *(uint8*)CONSOLE_STATUS;
    80002bf8:	0009c783          	lbu	a5,0(s3)
    while ((c_stat & CONSOLE_TX_STATUS_BIT) && _console::_can_output()) {
    80002bfc:	0207f793          	andi	a5,a5,32
    80002c00:	02078863          	beqz	a5,80002c30 <_ZN8_console21handle_console_outputEv+0xf0>
        auto ret = buffer_out_->getCnt();
    80002c04:	00009797          	auipc	a5,0x9
    80002c08:	f1c78793          	addi	a5,a5,-228 # 8000bb20 <_ZN8_console11buffer_out_E>
    80002c0c:	0007b483          	ld	s1,0(a5)
        mutex_->wait();
    80002c10:	0104b503          	ld	a0,16(s1)
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	974080e7          	jalr	-1676(ra) # 80001588 <_ZN10_semaphore4waitEv>
        if (last_idx_ >= first_idx_) {
    80002c1c:	01c4a783          	lw	a5,28(s1)
    80002c20:	0184a903          	lw	s2,24(s1)
    80002c24:	f527c6e3          	blt	a5,s2,80002b70 <_ZN8_console21handle_console_outputEv+0x30>
            ret = last_idx_ - first_idx_;
    80002c28:	4127893b          	subw	s2,a5,s2
    80002c2c:	f51ff06f          	j	80002b7c <_ZN8_console21handle_console_outputEv+0x3c>
    }
}
    80002c30:	02813083          	ld	ra,40(sp)
    80002c34:	02013403          	ld	s0,32(sp)
    80002c38:	01813483          	ld	s1,24(sp)
    80002c3c:	01013903          	ld	s2,16(sp)
    80002c40:	00813983          	ld	s3,8(sp)
    80002c44:	03010113          	addi	sp,sp,48
    80002c48:	00008067          	ret

0000000080002c4c <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    80002c4c:	00009797          	auipc	a5,0x9
    80002c50:	ee478793          	addi	a5,a5,-284 # 8000bb30 <_ZN15MemoryAllocator9instance_E>
    80002c54:	0007b783          	ld	a5,0(a5)
    80002c58:	00078a63          	beqz	a5,80002c6c <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    80002c5c:	00009797          	auipc	a5,0x9
    80002c60:	ed478793          	addi	a5,a5,-300 # 8000bb30 <_ZN15MemoryAllocator9instance_E>
    80002c64:	0007b503          	ld	a0,0(a5)
    80002c68:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80002c6c:	fd010113          	addi	sp,sp,-48
    80002c70:	02113423          	sd	ra,40(sp)
    80002c74:	02813023          	sd	s0,32(sp)
    80002c78:	00913c23          	sd	s1,24(sp)
    80002c7c:	01213823          	sd	s2,16(sp)
    80002c80:	01313423          	sd	s3,8(sp)
    80002c84:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002c88:	00009997          	auipc	s3,0x9
    80002c8c:	cc098993          	addi	s3,s3,-832 # 8000b948 <HEAP_START_ADDR>
    80002c90:	0009b783          	ld	a5,0(s3)
    80002c94:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80002c98:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002c9c:	00009497          	auipc	s1,0x9
    80002ca0:	e9448493          	addi	s1,s1,-364 # 8000bb30 <_ZN15MemoryAllocator9instance_E>
    80002ca4:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80002ca8:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    80002cac:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    80002cb0:	0004b783          	ld	a5,0(s1)
    80002cb4:	0007b783          	ld	a5,0(a5)
    80002cb8:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    80002cbc:	0004b783          	ld	a5,0(s1)
    80002cc0:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    80002cc4:	00009917          	auipc	s2,0x9
    80002cc8:	c7c90913          	addi	s2,s2,-900 # 8000b940 <HEAP_END_ADDR>
    80002ccc:	00093783          	ld	a5,0(s2)
    80002cd0:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    80002cd4:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80002cd8:	00007517          	auipc	a0,0x7
    80002cdc:	86050513          	addi	a0,a0,-1952 # 80009538 <_ZZ24debug_print_internal_intmE6digits+0x220>
    80002ce0:	fffff097          	auipc	ra,0xfffff
    80002ce4:	528080e7          	jalr	1320(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80002ce8:	00007517          	auipc	a0,0x7
    80002cec:	87850513          	addi	a0,a0,-1928 # 80009560 <_ZZ24debug_print_internal_intmE6digits+0x248>
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	518080e7          	jalr	1304(ra) # 80002208 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80002cf8:	04000513          	li	a0,64
    80002cfc:	fffff097          	auipc	ra,0xfffff
    80002d00:	4f4080e7          	jalr	1268(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    80002d04:	00007517          	auipc	a0,0x7
    80002d08:	87450513          	addi	a0,a0,-1932 # 80009578 <_ZZ24debug_print_internal_intmE6digits+0x260>
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	4fc080e7          	jalr	1276(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    80002d14:	0009b503          	ld	a0,0(s3)
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	4d8080e7          	jalr	1240(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    80002d20:	00007517          	auipc	a0,0x7
    80002d24:	87050513          	addi	a0,a0,-1936 # 80009590 <_ZZ24debug_print_internal_intmE6digits+0x278>
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	4e0080e7          	jalr	1248(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    80002d30:	00093503          	ld	a0,0(s2)
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	4bc080e7          	jalr	1212(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    80002d3c:	00007517          	auipc	a0,0x7
    80002d40:	86c50513          	addi	a0,a0,-1940 # 800095a8 <_ZZ24debug_print_internal_intmE6digits+0x290>
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	4c4080e7          	jalr	1220(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    80002d4c:	0004b783          	ld	a5,0(s1)
    80002d50:	0007b503          	ld	a0,0(a5)
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	49c080e7          	jalr	1180(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    80002d5c:	00007517          	auipc	a0,0x7
    80002d60:	86c50513          	addi	a0,a0,-1940 # 800095c8 <_ZZ24debug_print_internal_intmE6digits+0x2b0>
    80002d64:	fffff097          	auipc	ra,0xfffff
    80002d68:	4a4080e7          	jalr	1188(ra) # 80002208 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    80002d6c:	01000513          	li	a0,16
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	480080e7          	jalr	1152(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\n");
    80002d78:	00006517          	auipc	a0,0x6
    80002d7c:	67850513          	addi	a0,a0,1656 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	488080e7          	jalr	1160(ra) # 80002208 <_Z11debug_printPKc>
}
    80002d88:	00009797          	auipc	a5,0x9
    80002d8c:	da878793          	addi	a5,a5,-600 # 8000bb30 <_ZN15MemoryAllocator9instance_E>
    80002d90:	0007b503          	ld	a0,0(a5)
    80002d94:	02813083          	ld	ra,40(sp)
    80002d98:	02013403          	ld	s0,32(sp)
    80002d9c:	01813483          	ld	s1,24(sp)
    80002da0:	01013903          	ld	s2,16(sp)
    80002da4:	00813983          	ld	s3,8(sp)
    80002da8:	03010113          	addi	sp,sp,48
    80002dac:	00008067          	ret

0000000080002db0 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00813423          	sd	s0,8(sp)
    80002db8:	01010413          	addi	s0,sp,16
    // debug_print("Allocating memory of size: ");
    // debug_print(size);
    // debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    80002dbc:	00053783          	ld	a5,0(a0)
    80002dc0:	04078e63          	beqz	a5,80002e1c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    80002dc4:	04f58593          	addi	a1,a1,79
    80002dc8:	fc05f593          	andi	a1,a1,-64

    // debug_print("Aligned size: ");
    // debug_print(size);
    // debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002dcc:	00000693          	li	a3,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002dd0:	00078c63          	beqz	a5,80002de8 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    80002dd4:	0087b703          	ld	a4,8(a5)
    80002dd8:	00b77863          	bgeu	a4,a1,80002de8 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        prev_free_block = free_block;
    80002ddc:	00078693          	mv	a3,a5
        free_block = free_block->next_;
    80002de0:	0007b783          	ld	a5,0(a5)
    while (free_block && free_block->size_ < size) {
    80002de4:	fedff06f          	j	80002dd0 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80002de8:	02078a63          	beqz	a5,80002e1c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    80002dec:	0087b703          	ld	a4,8(a5)
    80002df0:	04e5f263          	bgeu	a1,a4,80002e34 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    80002df4:	00b78633          	add	a2,a5,a1
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80002df8:	02068a63          	beqz	a3,80002e2c <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            prev_free_block->next_ = new_free_block;
    80002dfc:	00c6b023          	sd	a2,0(a3)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80002e00:	0007b703          	ld	a4,0(a5)
    80002e04:	00e63023          	sd	a4,0(a2)
        new_free_block->size_ = free_block->size_ - size;
    80002e08:	0087b703          	ld	a4,8(a5)
    80002e0c:	40b70733          	sub	a4,a4,a1
    80002e10:	00e63423          	sd	a4,8(a2)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    80002e14:	00b7b423          	sd	a1,8(a5)
        // debug_print("Free block address: ");
        // debug_print((uint64)free_block);
        // debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002e18:	01078793          	addi	a5,a5,16
}
    80002e1c:	00078513          	mv	a0,a5
    80002e20:	00813403          	ld	s0,8(sp)
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret
            free_block_ptr_ = new_free_block;
    80002e2c:	00c53023          	sd	a2,0(a0)
    80002e30:	fd1ff06f          	j	80002e00 <_ZN15MemoryAllocator9mem_allocEm+0x50>
        if (prev_free_block) {
    80002e34:	00068863          	beqz	a3,80002e44 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            prev_free_block->next_ = free_block->next_;
    80002e38:	0007b703          	ld	a4,0(a5)
    80002e3c:	00e6b023          	sd	a4,0(a3)
    80002e40:	fd5ff06f          	j	80002e14 <_ZN15MemoryAllocator9mem_allocEm+0x64>
            free_block_ptr_ = free_block->next_;
    80002e44:	0007b703          	ld	a4,0(a5)
    80002e48:	00e53023          	sd	a4,0(a0)
    80002e4c:	fc9ff06f          	j	80002e14 <_ZN15MemoryAllocator9mem_allocEm+0x64>

0000000080002e50 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00813423          	sd	s0,8(sp)
    80002e58:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    80002e5c:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    80002e60:	00000513          	li	a0,0
    while (free_block_iter) {
    80002e64:	00078a63          	beqz	a5,80002e78 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    80002e68:	0087b703          	ld	a4,8(a5)
    80002e6c:	fee57ce3          	bgeu	a0,a4,80002e64 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    80002e70:	00070513          	mv	a0,a4
    80002e74:	ff1ff06f          	j	80002e64 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    80002e78:	00813403          	ld	s0,8(sp)
    80002e7c:	01010113          	addi	sp,sp,16
    80002e80:	00008067          	ret

0000000080002e84 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00813423          	sd	s0,8(sp)
    80002e8c:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    80002e90:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    80002e94:	00000513          	li	a0,0
    while (free_block_iter) {
    80002e98:	00078a63          	beqz	a5,80002eac <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    80002e9c:	0087b703          	ld	a4,8(a5)
    80002ea0:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    80002ea4:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    80002ea8:	ff1ff06f          	j	80002e98 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    80002eac:	00813403          	ld	s0,8(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret

0000000080002eb8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    80002eb8:	06058a63          	beqz	a1,80002f2c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    80002ebc:	06060863          	beqz	a2,80002f2c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    80002ec0:	fe010113          	addi	sp,sp,-32
    80002ec4:	00113c23          	sd	ra,24(sp)
    80002ec8:	00813823          	sd	s0,16(sp)
    80002ecc:	00913423          	sd	s1,8(sp)
    80002ed0:	01213023          	sd	s2,0(sp)
    80002ed4:	02010413          	addi	s0,sp,32
    80002ed8:	00060913          	mv	s2,a2
    80002edc:	00058493          	mv	s1,a1
        // debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    80002ee0:	00006597          	auipc	a1,0x6
    80002ee4:	70858593          	addi	a1,a1,1800 # 800095e8 <_ZZ24debug_print_internal_intmE6digits+0x2d0>
    80002ee8:	00c4b533          	sltu	a0,s1,a2
    80002eec:	fffff097          	auipc	ra,0xfffff
    80002ef0:	334080e7          	jalr	820(ra) # 80002220 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    80002ef4:	0084b783          	ld	a5,8(s1)
    80002ef8:	00f48733          	add	a4,s1,a5
    80002efc:	00e91c63          	bne	s2,a4,80002f14 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        // debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002f00:	00893703          	ld	a4,8(s2)
    80002f04:	00e787b3          	add	a5,a5,a4
    80002f08:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002f0c:	00093783          	ld	a5,0(s2)
    80002f10:	00f4b023          	sd	a5,0(s1)
    80002f14:	01813083          	ld	ra,24(sp)
    80002f18:	01013403          	ld	s0,16(sp)
    80002f1c:	00813483          	ld	s1,8(sp)
    80002f20:	00013903          	ld	s2,0(sp)
    80002f24:	02010113          	addi	sp,sp,32
    80002f28:	00008067          	ret
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    80002f30:	fd010113          	addi	sp,sp,-48
    80002f34:	02113423          	sd	ra,40(sp)
    80002f38:	02813023          	sd	s0,32(sp)
    80002f3c:	00913c23          	sd	s1,24(sp)
    80002f40:	01213823          	sd	s2,16(sp)
    80002f44:	01313423          	sd	s3,8(sp)
    80002f48:	03010413          	addi	s0,sp,48
    if (!free_block_addr) {
    80002f4c:	04058263          	beqz	a1,80002f90 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80002f50:	00050993          	mv	s3,a0
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    80002f54:	ff058913          	addi	s2,a1,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    80002f58:	00090793          	mv	a5,s2
    80002f5c:	03f97713          	andi	a4,s2,63
    80002f60:	04071463          	bnez	a4,80002fa8 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002f64:	00009717          	auipc	a4,0x9
    80002f68:	9e470713          	addi	a4,a4,-1564 # 8000b948 <HEAP_START_ADDR>
    80002f6c:	00073703          	ld	a4,0(a4)
    80002f70:	04e96863          	bltu	s2,a4,80002fc0 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    80002f74:	00009717          	auipc	a4,0x9
    80002f78:	9cc70713          	addi	a4,a4,-1588 # 8000b940 <HEAP_END_ADDR>
    80002f7c:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002f80:	04e97063          	bgeu	s2,a4,80002fc0 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    80002f84:	00053603          	ld	a2,0(a0)
    80002f88:	00000493          	li	s1,0
    80002f8c:	0540006f          	j	80002fe0 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        debug_print("Free block address is null.\n");
    80002f90:	00006517          	auipc	a0,0x6
    80002f94:	69850513          	addi	a0,a0,1688 # 80009628 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80002f98:	fffff097          	auipc	ra,0xfffff
    80002f9c:	270080e7          	jalr	624(ra) # 80002208 <_Z11debug_printPKc>
        return -1;
    80002fa0:	fff00513          	li	a0,-1
    80002fa4:	07c0006f          	j	80003020 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    80002fa8:	00006517          	auipc	a0,0x6
    80002fac:	6a050513          	addi	a0,a0,1696 # 80009648 <_ZZ24debug_print_internal_intmE6digits+0x330>
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	258080e7          	jalr	600(ra) # 80002208 <_Z11debug_printPKc>
        return -2;
    80002fb8:	ffe00513          	li	a0,-2
    80002fbc:	0640006f          	j	80003020 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not in the heap.\n");
    80002fc0:	00006517          	auipc	a0,0x6
    80002fc4:	6c050513          	addi	a0,a0,1728 # 80009680 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	240080e7          	jalr	576(ra) # 80002208 <_Z11debug_printPKc>
        return -3;
    80002fd0:	ffd00513          	li	a0,-3
    80002fd4:	04c0006f          	j	80003020 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        prev_free_block = next_free_block;
    80002fd8:	00060493          	mv	s1,a2
        next_free_block = next_free_block->next_;
    80002fdc:	00063603          	ld	a2,0(a2)
    while (next_free_block &&
    80002fe0:	00060663          	beqz	a2,80002fec <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002fe4:	fec7fae3          	bgeu	a5,a2,80002fd8 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
          !(((uint64)next_free_block > (uint64)block_info) &&
    80002fe8:	fef4f8e3          	bgeu	s1,a5,80002fd8 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if (!prev_free_block) {
    80002fec:	04048863          	beqz	s1,8000303c <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        prev_free_block->next_ = block_info;
    80002ff0:	0124b023          	sd	s2,0(s1)
    block_info->next_ = next_free_block;
    80002ff4:	fec5b823          	sd	a2,-16(a1)
    maybe_consolidate(block_info, next_free_block);
    80002ff8:	00090593          	mv	a1,s2
    80002ffc:	00098513          	mv	a0,s3
    80003000:	00000097          	auipc	ra,0x0
    80003004:	eb8080e7          	jalr	-328(ra) # 80002eb8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80003008:	00090613          	mv	a2,s2
    8000300c:	00048593          	mv	a1,s1
    80003010:	00098513          	mv	a0,s3
    80003014:	00000097          	auipc	ra,0x0
    80003018:	ea4080e7          	jalr	-348(ra) # 80002eb8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    8000301c:	00000513          	li	a0,0
}
    80003020:	02813083          	ld	ra,40(sp)
    80003024:	02013403          	ld	s0,32(sp)
    80003028:	01813483          	ld	s1,24(sp)
    8000302c:	01013903          	ld	s2,16(sp)
    80003030:	00813983          	ld	s3,8(sp)
    80003034:	03010113          	addi	sp,sp,48
    80003038:	00008067          	ret
        free_block_ptr_ = block_info;
    8000303c:	0129b023          	sd	s2,0(s3)
    80003040:	fb5ff06f          	j	80002ff4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>

0000000080003044 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80003044:	00100793          	li	a5,1
    80003048:	06a7f863          	bgeu	a5,a0,800030b8 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    8000304c:	fe010113          	addi	sp,sp,-32
    80003050:	00113c23          	sd	ra,24(sp)
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	01213023          	sd	s2,0(sp)
    80003060:	02010413          	addi	s0,sp,32
    80003064:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80003068:	00a00793          	li	a5,10
    8000306c:	02f577b3          	remu	a5,a0,a5
    80003070:	02078e63          	beqz	a5,800030ac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003074:	fff48513          	addi	a0,s1,-1
    80003078:	00000097          	auipc	ra,0x0
    8000307c:	fcc080e7          	jalr	-52(ra) # 80003044 <_ZL9fibonaccim>
    80003080:	00050913          	mv	s2,a0
    80003084:	ffe48513          	addi	a0,s1,-2
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	fbc080e7          	jalr	-68(ra) # 80003044 <_ZL9fibonaccim>
    80003090:	00a90533          	add	a0,s2,a0
}
    80003094:	01813083          	ld	ra,24(sp)
    80003098:	01013403          	ld	s0,16(sp)
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	00013903          	ld	s2,0(sp)
    800030a4:	02010113          	addi	sp,sp,32
    800030a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800030ac:	fffff097          	auipc	ra,0xfffff
    800030b0:	8d8080e7          	jalr	-1832(ra) # 80001984 <_Z15thread_dispatchv>
    800030b4:	fc1ff06f          	j	80003074 <_ZL9fibonaccim+0x30>
}
    800030b8:	00008067          	ret

00000000800030bc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00113c23          	sd	ra,24(sp)
    800030c4:	00813823          	sd	s0,16(sp)
    800030c8:	00913423          	sd	s1,8(sp)
    800030cc:	01213023          	sd	s2,0(sp)
    800030d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800030d4:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    800030d8:	00c00793          	li	a5,12
    800030dc:	0497e263          	bltu	a5,s1,80003120 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    800030e0:	00006517          	auipc	a0,0x6
    800030e4:	5c850513          	addi	a0,a0,1480 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    800030e8:	00003097          	auipc	ra,0x3
    800030ec:	aec080e7          	jalr	-1300(ra) # 80005bd4 <_Z11printStringPKc>
    800030f0:	00000613          	li	a2,0
    800030f4:	00a00593          	li	a1,10
    800030f8:	00048513          	mv	a0,s1
    800030fc:	00003097          	auipc	ra,0x3
    80003100:	c84080e7          	jalr	-892(ra) # 80005d80 <_Z8printIntiii>
    80003104:	00006517          	auipc	a0,0x6
    80003108:	2ec50513          	addi	a0,a0,748 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    8000310c:	00003097          	auipc	ra,0x3
    80003110:	ac8080e7          	jalr	-1336(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003114:	0014849b          	addiw	s1,s1,1
    80003118:	0ff4f493          	andi	s1,s1,255
    8000311c:	fbdff06f          	j	800030d8 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80003120:	00006517          	auipc	a0,0x6
    80003124:	59050513          	addi	a0,a0,1424 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80003128:	00003097          	auipc	ra,0x3
    8000312c:	aac080e7          	jalr	-1364(ra) # 80005bd4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003130:	00500313          	li	t1,5
    thread_dispatch();
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	850080e7          	jalr	-1968(ra) # 80001984 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000313c:	01000513          	li	a0,16
    80003140:	00000097          	auipc	ra,0x0
    80003144:	f04080e7          	jalr	-252(ra) # 80003044 <_ZL9fibonaccim>
    80003148:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000314c:	00006517          	auipc	a0,0x6
    80003150:	57450513          	addi	a0,a0,1396 # 800096c0 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80003154:	00003097          	auipc	ra,0x3
    80003158:	a80080e7          	jalr	-1408(ra) # 80005bd4 <_Z11printStringPKc>
    8000315c:	00000613          	li	a2,0
    80003160:	00a00593          	li	a1,10
    80003164:	0009051b          	sext.w	a0,s2
    80003168:	00003097          	auipc	ra,0x3
    8000316c:	c18080e7          	jalr	-1000(ra) # 80005d80 <_Z8printIntiii>
    80003170:	00006517          	auipc	a0,0x6
    80003174:	28050513          	addi	a0,a0,640 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80003178:	00003097          	auipc	ra,0x3
    8000317c:	a5c080e7          	jalr	-1444(ra) # 80005bd4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80003180:	00f00793          	li	a5,15
    80003184:	0497e263          	bltu	a5,s1,800031c8 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80003188:	00006517          	auipc	a0,0x6
    8000318c:	52050513          	addi	a0,a0,1312 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80003190:	00003097          	auipc	ra,0x3
    80003194:	a44080e7          	jalr	-1468(ra) # 80005bd4 <_Z11printStringPKc>
    80003198:	00000613          	li	a2,0
    8000319c:	00a00593          	li	a1,10
    800031a0:	00048513          	mv	a0,s1
    800031a4:	00003097          	auipc	ra,0x3
    800031a8:	bdc080e7          	jalr	-1060(ra) # 80005d80 <_Z8printIntiii>
    800031ac:	00006517          	auipc	a0,0x6
    800031b0:	24450513          	addi	a0,a0,580 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800031b4:	00003097          	auipc	ra,0x3
    800031b8:	a20080e7          	jalr	-1504(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800031bc:	0014849b          	addiw	s1,s1,1
    800031c0:	0ff4f493          	andi	s1,s1,255
    800031c4:	fbdff06f          	j	80003180 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    800031c8:	00006517          	auipc	a0,0x6
    800031cc:	50850513          	addi	a0,a0,1288 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    800031d0:	00003097          	auipc	ra,0x3
    800031d4:	a04080e7          	jalr	-1532(ra) # 80005bd4 <_Z11printStringPKc>
    finishedD = true;
    800031d8:	00100793          	li	a5,1
    800031dc:	00009717          	auipc	a4,0x9
    800031e0:	94f70e23          	sb	a5,-1700(a4) # 8000bb38 <_ZL9finishedD>
    thread_dispatch();
    800031e4:	ffffe097          	auipc	ra,0xffffe
    800031e8:	7a0080e7          	jalr	1952(ra) # 80001984 <_Z15thread_dispatchv>
}
    800031ec:	01813083          	ld	ra,24(sp)
    800031f0:	01013403          	ld	s0,16(sp)
    800031f4:	00813483          	ld	s1,8(sp)
    800031f8:	00013903          	ld	s2,0(sp)
    800031fc:	02010113          	addi	sp,sp,32
    80003200:	00008067          	ret

0000000080003204 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003204:	fe010113          	addi	sp,sp,-32
    80003208:	00113c23          	sd	ra,24(sp)
    8000320c:	00813823          	sd	s0,16(sp)
    80003210:	00913423          	sd	s1,8(sp)
    80003214:	01213023          	sd	s2,0(sp)
    80003218:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000321c:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80003220:	00200793          	li	a5,2
    80003224:	0497e263          	bltu	a5,s1,80003268 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80003228:	00006517          	auipc	a0,0x6
    8000322c:	4b850513          	addi	a0,a0,1208 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80003230:	00003097          	auipc	ra,0x3
    80003234:	9a4080e7          	jalr	-1628(ra) # 80005bd4 <_Z11printStringPKc>
    80003238:	00000613          	li	a2,0
    8000323c:	00a00593          	li	a1,10
    80003240:	00048513          	mv	a0,s1
    80003244:	00003097          	auipc	ra,0x3
    80003248:	b3c080e7          	jalr	-1220(ra) # 80005d80 <_Z8printIntiii>
    8000324c:	00006517          	auipc	a0,0x6
    80003250:	1a450513          	addi	a0,a0,420 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80003254:	00003097          	auipc	ra,0x3
    80003258:	980080e7          	jalr	-1664(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000325c:	0014849b          	addiw	s1,s1,1
    80003260:	0ff4f493          	andi	s1,s1,255
    80003264:	fbdff06f          	j	80003220 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80003268:	00006517          	auipc	a0,0x6
    8000326c:	48050513          	addi	a0,a0,1152 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x3d0>
    80003270:	00003097          	auipc	ra,0x3
    80003274:	964080e7          	jalr	-1692(ra) # 80005bd4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003278:	00700313          	li	t1,7
    thread_dispatch();
    8000327c:	ffffe097          	auipc	ra,0xffffe
    80003280:	708080e7          	jalr	1800(ra) # 80001984 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003284:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003288:	00006517          	auipc	a0,0x6
    8000328c:	47050513          	addi	a0,a0,1136 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x3e0>
    80003290:	00003097          	auipc	ra,0x3
    80003294:	944080e7          	jalr	-1724(ra) # 80005bd4 <_Z11printStringPKc>
    80003298:	00000613          	li	a2,0
    8000329c:	00a00593          	li	a1,10
    800032a0:	0009051b          	sext.w	a0,s2
    800032a4:	00003097          	auipc	ra,0x3
    800032a8:	adc080e7          	jalr	-1316(ra) # 80005d80 <_Z8printIntiii>
    800032ac:	00006517          	auipc	a0,0x6
    800032b0:	14450513          	addi	a0,a0,324 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800032b4:	00003097          	auipc	ra,0x3
    800032b8:	920080e7          	jalr	-1760(ra) # 80005bd4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800032bc:	00c00513          	li	a0,12
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	d84080e7          	jalr	-636(ra) # 80003044 <_ZL9fibonaccim>
    800032c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800032cc:	00006517          	auipc	a0,0x6
    800032d0:	43450513          	addi	a0,a0,1076 # 80009700 <_ZZ24debug_print_internal_intmE6digits+0x3e8>
    800032d4:	00003097          	auipc	ra,0x3
    800032d8:	900080e7          	jalr	-1792(ra) # 80005bd4 <_Z11printStringPKc>
    800032dc:	00000613          	li	a2,0
    800032e0:	00a00593          	li	a1,10
    800032e4:	0009051b          	sext.w	a0,s2
    800032e8:	00003097          	auipc	ra,0x3
    800032ec:	a98080e7          	jalr	-1384(ra) # 80005d80 <_Z8printIntiii>
    800032f0:	00006517          	auipc	a0,0x6
    800032f4:	10050513          	addi	a0,a0,256 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800032f8:	00003097          	auipc	ra,0x3
    800032fc:	8dc080e7          	jalr	-1828(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003300:	00500793          	li	a5,5
    80003304:	0497e263          	bltu	a5,s1,80003348 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80003308:	00006517          	auipc	a0,0x6
    8000330c:	3d850513          	addi	a0,a0,984 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80003310:	00003097          	auipc	ra,0x3
    80003314:	8c4080e7          	jalr	-1852(ra) # 80005bd4 <_Z11printStringPKc>
    80003318:	00000613          	li	a2,0
    8000331c:	00a00593          	li	a1,10
    80003320:	00048513          	mv	a0,s1
    80003324:	00003097          	auipc	ra,0x3
    80003328:	a5c080e7          	jalr	-1444(ra) # 80005d80 <_Z8printIntiii>
    8000332c:	00006517          	auipc	a0,0x6
    80003330:	0c450513          	addi	a0,a0,196 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80003334:	00003097          	auipc	ra,0x3
    80003338:	8a0080e7          	jalr	-1888(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000333c:	0014849b          	addiw	s1,s1,1
    80003340:	0ff4f493          	andi	s1,s1,255
    80003344:	fbdff06f          	j	80003300 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    80003348:	00006517          	auipc	a0,0x6
    8000334c:	3c850513          	addi	a0,a0,968 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3f8>
    80003350:	00003097          	auipc	ra,0x3
    80003354:	884080e7          	jalr	-1916(ra) # 80005bd4 <_Z11printStringPKc>
    finishedC = true;
    80003358:	00100793          	li	a5,1
    8000335c:	00008717          	auipc	a4,0x8
    80003360:	7cf70ea3          	sb	a5,2013(a4) # 8000bb39 <_ZL9finishedC>
    thread_dispatch();
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	620080e7          	jalr	1568(ra) # 80001984 <_Z15thread_dispatchv>
}
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	00013903          	ld	s2,0(sp)
    8000337c:	02010113          	addi	sp,sp,32
    80003380:	00008067          	ret

0000000080003384 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003384:	fe010113          	addi	sp,sp,-32
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	00813823          	sd	s0,16(sp)
    80003390:	00913423          	sd	s1,8(sp)
    80003394:	01213023          	sd	s2,0(sp)
    80003398:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000339c:	00000913          	li	s2,0
    800033a0:	0400006f          	j	800033e0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	5e0080e7          	jalr	1504(ra) # 80001984 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800033ac:	00148493          	addi	s1,s1,1
    800033b0:	000027b7          	lui	a5,0x2
    800033b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800033b8:	0097ee63          	bltu	a5,s1,800033d4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800033bc:	00000713          	li	a4,0
    800033c0:	000077b7          	lui	a5,0x7
    800033c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800033c8:	fce7eee3          	bltu	a5,a4,800033a4 <_ZL11workerBodyBPv+0x20>
    800033cc:	00170713          	addi	a4,a4,1
    800033d0:	ff1ff06f          	j	800033c0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800033d4:	00a00793          	li	a5,10
    800033d8:	04f90663          	beq	s2,a5,80003424 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800033dc:	00190913          	addi	s2,s2,1
    800033e0:	00f00793          	li	a5,15
    800033e4:	0527e463          	bltu	a5,s2,8000342c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800033e8:	00006517          	auipc	a0,0x6
    800033ec:	33850513          	addi	a0,a0,824 # 80009720 <_ZZ24debug_print_internal_intmE6digits+0x408>
    800033f0:	00002097          	auipc	ra,0x2
    800033f4:	7e4080e7          	jalr	2020(ra) # 80005bd4 <_Z11printStringPKc>
    800033f8:	00000613          	li	a2,0
    800033fc:	00a00593          	li	a1,10
    80003400:	0009051b          	sext.w	a0,s2
    80003404:	00003097          	auipc	ra,0x3
    80003408:	97c080e7          	jalr	-1668(ra) # 80005d80 <_Z8printIntiii>
    8000340c:	00006517          	auipc	a0,0x6
    80003410:	fe450513          	addi	a0,a0,-28 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80003414:	00002097          	auipc	ra,0x2
    80003418:	7c0080e7          	jalr	1984(ra) # 80005bd4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000341c:	00000493          	li	s1,0
    80003420:	f91ff06f          	j	800033b0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003424:	14102ff3          	csrr	t6,sepc
    80003428:	fb5ff06f          	j	800033dc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000342c:	00006517          	auipc	a0,0x6
    80003430:	2fc50513          	addi	a0,a0,764 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x410>
    80003434:	00002097          	auipc	ra,0x2
    80003438:	7a0080e7          	jalr	1952(ra) # 80005bd4 <_Z11printStringPKc>
    finishedB = true;
    8000343c:	00100793          	li	a5,1
    80003440:	00008717          	auipc	a4,0x8
    80003444:	6ef70d23          	sb	a5,1786(a4) # 8000bb3a <_ZL9finishedB>
    thread_dispatch();
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	53c080e7          	jalr	1340(ra) # 80001984 <_Z15thread_dispatchv>
}
    80003450:	01813083          	ld	ra,24(sp)
    80003454:	01013403          	ld	s0,16(sp)
    80003458:	00813483          	ld	s1,8(sp)
    8000345c:	00013903          	ld	s2,0(sp)
    80003460:	02010113          	addi	sp,sp,32
    80003464:	00008067          	ret

0000000080003468 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	01213023          	sd	s2,0(sp)
    8000347c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003480:	00000913          	li	s2,0
    80003484:	0380006f          	j	800034bc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	4fc080e7          	jalr	1276(ra) # 80001984 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003490:	00148493          	addi	s1,s1,1
    80003494:	000027b7          	lui	a5,0x2
    80003498:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000349c:	0097ee63          	bltu	a5,s1,800034b8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034a0:	00000713          	li	a4,0
    800034a4:	000077b7          	lui	a5,0x7
    800034a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800034ac:	fce7eee3          	bltu	a5,a4,80003488 <_ZL11workerBodyAPv+0x20>
    800034b0:	00170713          	addi	a4,a4,1
    800034b4:	ff1ff06f          	j	800034a4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800034b8:	00190913          	addi	s2,s2,1
    800034bc:	00900793          	li	a5,9
    800034c0:	0527e063          	bltu	a5,s2,80003500 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800034c4:	00006517          	auipc	a0,0x6
    800034c8:	27450513          	addi	a0,a0,628 # 80009738 <_ZZ24debug_print_internal_intmE6digits+0x420>
    800034cc:	00002097          	auipc	ra,0x2
    800034d0:	708080e7          	jalr	1800(ra) # 80005bd4 <_Z11printStringPKc>
    800034d4:	00000613          	li	a2,0
    800034d8:	00a00593          	li	a1,10
    800034dc:	0009051b          	sext.w	a0,s2
    800034e0:	00003097          	auipc	ra,0x3
    800034e4:	8a0080e7          	jalr	-1888(ra) # 80005d80 <_Z8printIntiii>
    800034e8:	00006517          	auipc	a0,0x6
    800034ec:	f0850513          	addi	a0,a0,-248 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800034f0:	00002097          	auipc	ra,0x2
    800034f4:	6e4080e7          	jalr	1764(ra) # 80005bd4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800034f8:	00000493          	li	s1,0
    800034fc:	f99ff06f          	j	80003494 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003500:	00006517          	auipc	a0,0x6
    80003504:	21050513          	addi	a0,a0,528 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3f8>
    80003508:	00002097          	auipc	ra,0x2
    8000350c:	6cc080e7          	jalr	1740(ra) # 80005bd4 <_Z11printStringPKc>
    finishedA = true;
    80003510:	00100793          	li	a5,1
    80003514:	00008717          	auipc	a4,0x8
    80003518:	62f703a3          	sb	a5,1575(a4) # 8000bb3b <_ZL9finishedA>
}
    8000351c:	01813083          	ld	ra,24(sp)
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	00813483          	ld	s1,8(sp)
    80003528:	00013903          	ld	s2,0(sp)
    8000352c:	02010113          	addi	sp,sp,32
    80003530:	00008067          	ret

0000000080003534 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003534:	fd010113          	addi	sp,sp,-48
    80003538:	02113423          	sd	ra,40(sp)
    8000353c:	02813023          	sd	s0,32(sp)
    80003540:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003544:	00000613          	li	a2,0
    80003548:	00000597          	auipc	a1,0x0
    8000354c:	f2058593          	addi	a1,a1,-224 # 80003468 <_ZL11workerBodyAPv>
    80003550:	fd040513          	addi	a0,s0,-48
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	380080e7          	jalr	896(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	1e450513          	addi	a0,a0,484 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x428>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	670080e7          	jalr	1648(ra) # 80005bd4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000356c:	00000613          	li	a2,0
    80003570:	00000597          	auipc	a1,0x0
    80003574:	e1458593          	addi	a1,a1,-492 # 80003384 <_ZL11workerBodyBPv>
    80003578:	fd840513          	addi	a0,s0,-40
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	358080e7          	jalr	856(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003584:	00006517          	auipc	a0,0x6
    80003588:	1d450513          	addi	a0,a0,468 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x440>
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	648080e7          	jalr	1608(ra) # 80005bd4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003594:	00000613          	li	a2,0
    80003598:	00000597          	auipc	a1,0x0
    8000359c:	c6c58593          	addi	a1,a1,-916 # 80003204 <_ZL11workerBodyCPv>
    800035a0:	fe040513          	addi	a0,s0,-32
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	330080e7          	jalr	816(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800035ac:	00006517          	auipc	a0,0x6
    800035b0:	1c450513          	addi	a0,a0,452 # 80009770 <_ZZ24debug_print_internal_intmE6digits+0x458>
    800035b4:	00002097          	auipc	ra,0x2
    800035b8:	620080e7          	jalr	1568(ra) # 80005bd4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800035bc:	00000613          	li	a2,0
    800035c0:	00000597          	auipc	a1,0x0
    800035c4:	afc58593          	addi	a1,a1,-1284 # 800030bc <_ZL11workerBodyDPv>
    800035c8:	fe840513          	addi	a0,s0,-24
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	308080e7          	jalr	776(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	1b450513          	addi	a0,a0,436 # 80009788 <_ZZ24debug_print_internal_intmE6digits+0x470>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	5f8080e7          	jalr	1528(ra) # 80005bd4 <_Z11printStringPKc>
    800035e4:	00c0006f          	j	800035f0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	39c080e7          	jalr	924(ra) # 80001984 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800035f0:	00008797          	auipc	a5,0x8
    800035f4:	54b78793          	addi	a5,a5,1355 # 8000bb3b <_ZL9finishedA>
    800035f8:	0007c783          	lbu	a5,0(a5)
    800035fc:	0ff7f793          	andi	a5,a5,255
    80003600:	fe0784e3          	beqz	a5,800035e8 <_Z16System_Mode_testv+0xb4>
    80003604:	00008797          	auipc	a5,0x8
    80003608:	53678793          	addi	a5,a5,1334 # 8000bb3a <_ZL9finishedB>
    8000360c:	0007c783          	lbu	a5,0(a5)
    80003610:	0ff7f793          	andi	a5,a5,255
    80003614:	fc078ae3          	beqz	a5,800035e8 <_Z16System_Mode_testv+0xb4>
    80003618:	00008797          	auipc	a5,0x8
    8000361c:	52178793          	addi	a5,a5,1313 # 8000bb39 <_ZL9finishedC>
    80003620:	0007c783          	lbu	a5,0(a5)
    80003624:	0ff7f793          	andi	a5,a5,255
    80003628:	fc0780e3          	beqz	a5,800035e8 <_Z16System_Mode_testv+0xb4>
    8000362c:	00008797          	auipc	a5,0x8
    80003630:	50c78793          	addi	a5,a5,1292 # 8000bb38 <_ZL9finishedD>
    80003634:	0007c783          	lbu	a5,0(a5)
    80003638:	0ff7f793          	andi	a5,a5,255
    8000363c:	fa0786e3          	beqz	a5,800035e8 <_Z16System_Mode_testv+0xb4>
    }

}
    80003640:	02813083          	ld	ra,40(sp)
    80003644:	02013403          	ld	s0,32(sp)
    80003648:	03010113          	addi	sp,sp,48
    8000364c:	00008067          	ret

0000000080003650 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003650:	fe010113          	addi	sp,sp,-32
    80003654:	00113c23          	sd	ra,24(sp)
    80003658:	00813823          	sd	s0,16(sp)
    8000365c:	00913423          	sd	s1,8(sp)
    80003660:	01213023          	sd	s2,0(sp)
    80003664:	02010413          	addi	s0,sp,32
    80003668:	00050493          	mv	s1,a0
    8000366c:	00058913          	mv	s2,a1
    80003670:	0015879b          	addiw	a5,a1,1
    80003674:	0007851b          	sext.w	a0,a5
    80003678:	00f4a023          	sw	a5,0(s1)
    8000367c:	0004a823          	sw	zero,16(s1)
    80003680:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003684:	00251513          	slli	a0,a0,0x2
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	0f8080e7          	jalr	248(ra) # 80001780 <_Z9mem_allocm>
    80003690:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003694:	00000593          	li	a1,0
    80003698:	02048513          	addi	a0,s1,32
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	334080e7          	jalr	820(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    800036a4:	00090593          	mv	a1,s2
    800036a8:	01848513          	addi	a0,s1,24
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	324080e7          	jalr	804(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    800036b4:	00100593          	li	a1,1
    800036b8:	02848513          	addi	a0,s1,40
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	314080e7          	jalr	788(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    800036c4:	00100593          	li	a1,1
    800036c8:	03048513          	addi	a0,s1,48
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	304080e7          	jalr	772(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
}
    800036d4:	01813083          	ld	ra,24(sp)
    800036d8:	01013403          	ld	s0,16(sp)
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	00013903          	ld	s2,0(sp)
    800036e4:	02010113          	addi	sp,sp,32
    800036e8:	00008067          	ret

00000000800036ec <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800036ec:	fe010113          	addi	sp,sp,-32
    800036f0:	00113c23          	sd	ra,24(sp)
    800036f4:	00813823          	sd	s0,16(sp)
    800036f8:	00913423          	sd	s1,8(sp)
    800036fc:	01213023          	sd	s2,0(sp)
    80003700:	02010413          	addi	s0,sp,32
    80003704:	00050493          	mv	s1,a0
    80003708:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000370c:	01853503          	ld	a0,24(a0)
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	404080e7          	jalr	1028(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80003718:	0304b503          	ld	a0,48(s1)
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	3f8080e7          	jalr	1016(ra) # 80001b14 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80003724:	0084b783          	ld	a5,8(s1)
    80003728:	0144a703          	lw	a4,20(s1)
    8000372c:	00271713          	slli	a4,a4,0x2
    80003730:	00e787b3          	add	a5,a5,a4
    80003734:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003738:	0144a783          	lw	a5,20(s1)
    8000373c:	0017879b          	addiw	a5,a5,1
    80003740:	0004a703          	lw	a4,0(s1)
    80003744:	02e7e7bb          	remw	a5,a5,a4
    80003748:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000374c:	0304b503          	ld	a0,48(s1)
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	414080e7          	jalr	1044(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80003758:	0204b503          	ld	a0,32(s1)
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	408080e7          	jalr	1032(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

}
    80003764:	01813083          	ld	ra,24(sp)
    80003768:	01013403          	ld	s0,16(sp)
    8000376c:	00813483          	ld	s1,8(sp)
    80003770:	00013903          	ld	s2,0(sp)
    80003774:	02010113          	addi	sp,sp,32
    80003778:	00008067          	ret

000000008000377c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000377c:	fe010113          	addi	sp,sp,-32
    80003780:	00113c23          	sd	ra,24(sp)
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	01213023          	sd	s2,0(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003798:	02053503          	ld	a0,32(a0)
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	378080e7          	jalr	888(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    800037a4:	0284b503          	ld	a0,40(s1)
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	36c080e7          	jalr	876(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    800037b0:	0084b703          	ld	a4,8(s1)
    800037b4:	0104a783          	lw	a5,16(s1)
    800037b8:	00279693          	slli	a3,a5,0x2
    800037bc:	00d70733          	add	a4,a4,a3
    800037c0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800037c4:	0017879b          	addiw	a5,a5,1
    800037c8:	0004a703          	lw	a4,0(s1)
    800037cc:	02e7e7bb          	remw	a5,a5,a4
    800037d0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800037d4:	0284b503          	ld	a0,40(s1)
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	38c080e7          	jalr	908(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    800037e0:	0184b503          	ld	a0,24(s1)
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	380080e7          	jalr	896(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    return ret;
}
    800037ec:	00090513          	mv	a0,s2
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00813483          	ld	s1,8(sp)
    800037fc:	00013903          	ld	s2,0(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret

0000000080003808 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003808:	fe010113          	addi	sp,sp,-32
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	01213023          	sd	s2,0(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003824:	02853503          	ld	a0,40(a0)
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	2ec080e7          	jalr	748(ra) # 80001b14 <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80003830:	0304b503          	ld	a0,48(s1)
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	2e0080e7          	jalr	736(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    8000383c:	0144a783          	lw	a5,20(s1)
    80003840:	0104a903          	lw	s2,16(s1)
    80003844:	0327ce63          	blt	a5,s2,80003880 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003848:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000384c:	0304b503          	ld	a0,48(s1)
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	314080e7          	jalr	788(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    80003858:	0284b503          	ld	a0,40(s1)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	308080e7          	jalr	776(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80003864:	00090513          	mv	a0,s2
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	00013903          	ld	s2,0(sp)
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret
        ret = cap - head + tail;
    80003880:	0004a703          	lw	a4,0(s1)
    80003884:	4127093b          	subw	s2,a4,s2
    80003888:	00f9093b          	addw	s2,s2,a5
    8000388c:	fc1ff06f          	j	8000384c <_ZN6Buffer6getCntEv+0x44>

0000000080003890 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00813823          	sd	s0,16(sp)
    8000389c:	00913423          	sd	s1,8(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	00050493          	mv	s1,a0
    putc('\n');
    800038a8:	00a00513          	li	a0,10
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	3a8080e7          	jalr	936(ra) # 80001c54 <_Z4putcc>
    printString("Buffer deleted!\n");
    800038b4:	00006517          	auipc	a0,0x6
    800038b8:	eec50513          	addi	a0,a0,-276 # 800097a0 <_ZZ24debug_print_internal_intmE6digits+0x488>
    800038bc:	00002097          	auipc	ra,0x2
    800038c0:	318080e7          	jalr	792(ra) # 80005bd4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00000097          	auipc	ra,0x0
    800038cc:	f40080e7          	jalr	-192(ra) # 80003808 <_ZN6Buffer6getCntEv>
    800038d0:	02a05c63          	blez	a0,80003908 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800038d4:	0084b783          	ld	a5,8(s1)
    800038d8:	0104a703          	lw	a4,16(s1)
    800038dc:	00271713          	slli	a4,a4,0x2
    800038e0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800038e4:	0007c503          	lbu	a0,0(a5)
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	36c080e7          	jalr	876(ra) # 80001c54 <_Z4putcc>
        head = (head + 1) % cap;
    800038f0:	0104a783          	lw	a5,16(s1)
    800038f4:	0017879b          	addiw	a5,a5,1
    800038f8:	0004a703          	lw	a4,0(s1)
    800038fc:	02e7e7bb          	remw	a5,a5,a4
    80003900:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003904:	fc1ff06f          	j	800038c4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003908:	02100513          	li	a0,33
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	348080e7          	jalr	840(ra) # 80001c54 <_Z4putcc>
    putc('\n');
    80003914:	00a00513          	li	a0,10
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	33c080e7          	jalr	828(ra) # 80001c54 <_Z4putcc>
    mem_free(buffer);
    80003920:	0084b503          	ld	a0,8(s1)
    80003924:	ffffe097          	auipc	ra,0xffffe
    80003928:	ea8080e7          	jalr	-344(ra) # 800017cc <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000392c:	0204b503          	ld	a0,32(s1)
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	178080e7          	jalr	376(ra) # 80001aa8 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    80003938:	0184b503          	ld	a0,24(s1)
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	16c080e7          	jalr	364(ra) # 80001aa8 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    80003944:	0304b503          	ld	a0,48(s1)
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	160080e7          	jalr	352(ra) # 80001aa8 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    80003950:	0284b503          	ld	a0,40(s1)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	154080e7          	jalr	340(ra) # 80001aa8 <_Z9sem_closeP10_semaphore>
}
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret

0000000080003970 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003970:	f8010113          	addi	sp,sp,-128
    80003974:	06113c23          	sd	ra,120(sp)
    80003978:	06813823          	sd	s0,112(sp)
    8000397c:	06913423          	sd	s1,104(sp)
    80003980:	07213023          	sd	s2,96(sp)
    80003984:	05313c23          	sd	s3,88(sp)
    80003988:	05413823          	sd	s4,80(sp)
    8000398c:	05513423          	sd	s5,72(sp)
    80003990:	05613023          	sd	s6,64(sp)
    80003994:	03713c23          	sd	s7,56(sp)
    80003998:	03813823          	sd	s8,48(sp)
    8000399c:	03913423          	sd	s9,40(sp)
    800039a0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800039a4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800039a8:	00006517          	auipc	a0,0x6
    800039ac:	ea850513          	addi	a0,a0,-344 # 80009850 <_ZTV8Consumer+0x28>
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	224080e7          	jalr	548(ra) # 80005bd4 <_Z11printStringPKc>
    getString(input, 30);
    800039b8:	01e00593          	li	a1,30
    800039bc:	f8040513          	addi	a0,s0,-128
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	29c080e7          	jalr	668(ra) # 80005c5c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800039c8:	f8040513          	addi	a0,s0,-128
    800039cc:	00002097          	auipc	ra,0x2
    800039d0:	364080e7          	jalr	868(ra) # 80005d30 <_Z11stringToIntPKc>
    800039d4:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    800039d8:	00006517          	auipc	a0,0x6
    800039dc:	e9850513          	addi	a0,a0,-360 # 80009870 <_ZTV8Consumer+0x48>
    800039e0:	00002097          	auipc	ra,0x2
    800039e4:	1f4080e7          	jalr	500(ra) # 80005bd4 <_Z11printStringPKc>
    getString(input, 30);
    800039e8:	01e00593          	li	a1,30
    800039ec:	f8040513          	addi	a0,s0,-128
    800039f0:	00002097          	auipc	ra,0x2
    800039f4:	26c080e7          	jalr	620(ra) # 80005c5c <_Z9getStringPci>
    n = stringToInt(input);
    800039f8:	f8040513          	addi	a0,s0,-128
    800039fc:	00002097          	auipc	ra,0x2
    80003a00:	334080e7          	jalr	820(ra) # 80005d30 <_Z11stringToIntPKc>
    80003a04:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003a08:	00006517          	auipc	a0,0x6
    80003a0c:	e8850513          	addi	a0,a0,-376 # 80009890 <_ZTV8Consumer+0x68>
    80003a10:	00002097          	auipc	ra,0x2
    80003a14:	1c4080e7          	jalr	452(ra) # 80005bd4 <_Z11printStringPKc>
    printInt(threadNum);
    80003a18:	00000613          	li	a2,0
    80003a1c:	00a00593          	li	a1,10
    80003a20:	000a0513          	mv	a0,s4
    80003a24:	00002097          	auipc	ra,0x2
    80003a28:	35c080e7          	jalr	860(ra) # 80005d80 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003a2c:	00006517          	auipc	a0,0x6
    80003a30:	e7c50513          	addi	a0,a0,-388 # 800098a8 <_ZTV8Consumer+0x80>
    80003a34:	00002097          	auipc	ra,0x2
    80003a38:	1a0080e7          	jalr	416(ra) # 80005bd4 <_Z11printStringPKc>
    printInt(n);
    80003a3c:	00000613          	li	a2,0
    80003a40:	00a00593          	li	a1,10
    80003a44:	00048513          	mv	a0,s1
    80003a48:	00002097          	auipc	ra,0x2
    80003a4c:	338080e7          	jalr	824(ra) # 80005d80 <_Z8printIntiii>
    printString(".\n");
    80003a50:	00006517          	auipc	a0,0x6
    80003a54:	e7050513          	addi	a0,a0,-400 # 800098c0 <_ZTV8Consumer+0x98>
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	17c080e7          	jalr	380(ra) # 80005bd4 <_Z11printStringPKc>
    if (threadNum > n) {
    80003a60:	0344c463          	blt	s1,s4,80003a88 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    80003a64:	03405c63          	blez	s4,80003a9c <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80003a68:	03800513          	li	a0,56
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	684080e7          	jalr	1668(ra) # 800020f0 <_Znwm>
    80003a74:	00050b13          	mv	s6,a0
    80003a78:	00048593          	mv	a1,s1
    80003a7c:	00003097          	auipc	ra,0x3
    80003a80:	948080e7          	jalr	-1720(ra) # 800063c4 <_ZN9BufferCPPC1Ei>
    80003a84:	0300006f          	j	80003ab4 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003a88:	00006517          	auipc	a0,0x6
    80003a8c:	e4050513          	addi	a0,a0,-448 # 800098c8 <_ZTV8Consumer+0xa0>
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	144080e7          	jalr	324(ra) # 80005bd4 <_Z11printStringPKc>
        return;
    80003a98:	0140006f          	j	80003aac <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003a9c:	00006517          	auipc	a0,0x6
    80003aa0:	e6c50513          	addi	a0,a0,-404 # 80009908 <_ZTV8Consumer+0xe0>
    80003aa4:	00002097          	auipc	ra,0x2
    80003aa8:	130080e7          	jalr	304(ra) # 80005bd4 <_Z11printStringPKc>
        return;
    80003aac:	000c0113          	mv	sp,s8
    80003ab0:	37c0006f          	j	80003e2c <_Z20testConsumerProducerv+0x4bc>
    waitForAll = new Semaphore(0);
    80003ab4:	01000513          	li	a0,16
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	638080e7          	jalr	1592(ra) # 800020f0 <_Znwm>
    80003ac0:	00050913          	mv	s2,a0
    void* arg;
};

class Semaphore {
    public:
    Semaphore(unsigned init = 1) {
    80003ac4:	00006797          	auipc	a5,0x6
    80003ac8:	d0478793          	addi	a5,a5,-764 # 800097c8 <_ZTV9Semaphore+0x10>
    80003acc:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80003ad0:	00000593          	li	a1,0
    80003ad4:	00850513          	addi	a0,a0,8
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	ef8080e7          	jalr	-264(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    80003ae0:	00050463          	beqz	a0,80003ae8 <_Z20testConsumerProducerv+0x178>
            myHandle = nullptr;
    80003ae4:	00093423          	sd	zero,8(s2)
    80003ae8:	00008797          	auipc	a5,0x8
    80003aec:	0727b023          	sd	s2,96(a5) # 8000bb48 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003af0:	003a1793          	slli	a5,s4,0x3
    80003af4:	00f78793          	addi	a5,a5,15
    80003af8:	ff07f793          	andi	a5,a5,-16
    80003afc:	40f10133          	sub	sp,sp,a5
    80003b00:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    80003b04:	001a079b          	addiw	a5,s4,1
    80003b08:	00179713          	slli	a4,a5,0x1
    80003b0c:	00f70733          	add	a4,a4,a5
    80003b10:	00371793          	slli	a5,a4,0x3
    80003b14:	00f78793          	addi	a5,a5,15
    80003b18:	ff07f793          	andi	a5,a5,-16
    80003b1c:	40f10133          	sub	sp,sp,a5
    80003b20:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    80003b24:	001a1793          	slli	a5,s4,0x1
    80003b28:	014787b3          	add	a5,a5,s4
    80003b2c:	00379493          	slli	s1,a5,0x3
    80003b30:	009c84b3          	add	s1,s9,s1
    80003b34:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    80003b38:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003b3c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003b40:	02800513          	li	a0,40
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	5ac080e7          	jalr	1452(ra) # 800020f0 <_Znwm>
    80003b4c:	00050b93          	mv	s7,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003b50:	00053423          	sd	zero,8(a0)
    80003b54:	00053823          	sd	zero,16(a0)
    80003b58:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003b5c:	00006797          	auipc	a5,0x6
    80003b60:	cdc78793          	addi	a5,a5,-804 # 80009838 <_ZTV8Consumer+0x10>
    80003b64:	00f53023          	sd	a5,0(a0)
    80003b68:	02953023          	sd	s1,32(a0)
        debug_print("CPP API: Starting thread\n");
    80003b6c:	00006517          	auipc	a0,0x6
    80003b70:	dcc50513          	addi	a0,a0,-564 # 80009938 <_ZTV8Consumer+0x110>
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	694080e7          	jalr	1684(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003b7c:	00006517          	auipc	a0,0x6
    80003b80:	ddc50513          	addi	a0,a0,-548 # 80009958 <_ZTV8Consumer+0x130>
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	684080e7          	jalr	1668(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003b8c:	000b8513          	mv	a0,s7
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	660080e7          	jalr	1632(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\n");
    80003b98:	00006517          	auipc	a0,0x6
    80003b9c:	85850513          	addi	a0,a0,-1960 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	668080e7          	jalr	1640(ra) # 80002208 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003ba8:	000b8613          	mv	a2,s7
    80003bac:	ffffe597          	auipc	a1,0xffffe
    80003bb0:	92458593          	addi	a1,a1,-1756 # 800014d0 <_ZN6Thread9body_execEPv>
    80003bb4:	008b8513          	addi	a0,s7,8
    80003bb8:	ffffe097          	auipc	ra,0xffffe
    80003bbc:	d1c080e7          	jalr	-740(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    80003bc0:	0c051663          	bnez	a0,80003c8c <_Z20testConsumerProducerv+0x31c>
        debug_print("CPP API: Thread started\n");
    80003bc4:	00006517          	auipc	a0,0x6
    80003bc8:	dac50513          	addi	a0,a0,-596 # 80009970 <_ZTV8Consumer+0x148>
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	63c080e7          	jalr	1596(ra) # 80002208 <_Z11debug_printPKc>
    threadData[0].id = 0;
    80003bd4:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    80003bd8:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    80003bdc:	00008797          	auipc	a5,0x8
    80003be0:	f6c78793          	addi	a5,a5,-148 # 8000bb48 <_ZL10waitForAll>
    80003be4:	0007b783          	ld	a5,0(a5)
    80003be8:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003bec:	02800513          	li	a0,40
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	500080e7          	jalr	1280(ra) # 800020f0 <_Znwm>
    80003bf8:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003bfc:	00053423          	sd	zero,8(a0)
    80003c00:	00053823          	sd	zero,16(a0)
    80003c04:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003c08:	00006797          	auipc	a5,0x6
    80003c0c:	be078793          	addi	a5,a5,-1056 # 800097e8 <_ZTV16ProducerKeyborad+0x10>
    80003c10:	00f53023          	sd	a5,0(a0)
    80003c14:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c18:	00aab023          	sd	a0,0(s5)
        debug_print("CPP API: Starting thread\n");
    80003c1c:	00006517          	auipc	a0,0x6
    80003c20:	d1c50513          	addi	a0,a0,-740 # 80009938 <_ZTV8Consumer+0x110>
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	5e4080e7          	jalr	1508(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003c2c:	00006517          	auipc	a0,0x6
    80003c30:	d2c50513          	addi	a0,a0,-724 # 80009958 <_ZTV8Consumer+0x130>
    80003c34:	ffffe097          	auipc	ra,0xffffe
    80003c38:	5d4080e7          	jalr	1492(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003c3c:	00048513          	mv	a0,s1
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	5b0080e7          	jalr	1456(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\n");
    80003c48:	00005517          	auipc	a0,0x5
    80003c4c:	7a850513          	addi	a0,a0,1960 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	5b8080e7          	jalr	1464(ra) # 80002208 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003c58:	00048613          	mv	a2,s1
    80003c5c:	ffffe597          	auipc	a1,0xffffe
    80003c60:	87458593          	addi	a1,a1,-1932 # 800014d0 <_ZN6Thread9body_execEPv>
    80003c64:	00848513          	addi	a0,s1,8
    80003c68:	ffffe097          	auipc	ra,0xffffe
    80003c6c:	c6c080e7          	jalr	-916(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    80003c70:	02051263          	bnez	a0,80003c94 <_Z20testConsumerProducerv+0x324>
        debug_print("CPP API: Thread started\n");
    80003c74:	00006517          	auipc	a0,0x6
    80003c78:	cfc50513          	addi	a0,a0,-772 # 80009970 <_ZTV8Consumer+0x148>
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	58c080e7          	jalr	1420(ra) # 80002208 <_Z11debug_printPKc>
    for (int i = 1; i < threadNum; i++) {
    80003c84:	00100993          	li	s3,1
    80003c88:	0280006f          	j	80003cb0 <_Z20testConsumerProducerv+0x340>
            myHandle = nullptr;
    80003c8c:	000bb423          	sd	zero,8(s7)
            return -1;
    80003c90:	f45ff06f          	j	80003bd4 <_Z20testConsumerProducerv+0x264>
            myHandle = nullptr;
    80003c94:	0004b423          	sd	zero,8(s1)
            return -1;
    80003c98:	fedff06f          	j	80003c84 <_Z20testConsumerProducerv+0x314>
        debug_print("CPP API: Thread started\n");
    80003c9c:	00006517          	auipc	a0,0x6
    80003ca0:	cd450513          	addi	a0,a0,-812 # 80009970 <_ZTV8Consumer+0x148>
    80003ca4:	ffffe097          	auipc	ra,0xffffe
    80003ca8:	564080e7          	jalr	1380(ra) # 80002208 <_Z11debug_printPKc>
    80003cac:	0019899b          	addiw	s3,s3,1
    80003cb0:	0d49d263          	bge	s3,s4,80003d74 <_Z20testConsumerProducerv+0x404>
        threadData[i].id = i;
    80003cb4:	00199793          	slli	a5,s3,0x1
    80003cb8:	013787b3          	add	a5,a5,s3
    80003cbc:	00379913          	slli	s2,a5,0x3
    80003cc0:	012c8933          	add	s2,s9,s2
    80003cc4:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    80003cc8:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    80003ccc:	00008797          	auipc	a5,0x8
    80003cd0:	e7c78793          	addi	a5,a5,-388 # 8000bb48 <_ZL10waitForAll>
    80003cd4:	0007b783          	ld	a5,0(a5)
    80003cd8:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    80003cdc:	02800513          	li	a0,40
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	410080e7          	jalr	1040(ra) # 800020f0 <_Znwm>
    80003ce8:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003cec:	00053423          	sd	zero,8(a0)
    80003cf0:	00053823          	sd	zero,16(a0)
    80003cf4:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003cf8:	00006797          	auipc	a5,0x6
    80003cfc:	b1878793          	addi	a5,a5,-1256 # 80009810 <_ZTV8Producer+0x10>
    80003d00:	00f53023          	sd	a5,0(a0)
    80003d04:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    80003d08:	00399793          	slli	a5,s3,0x3
    80003d0c:	00fa87b3          	add	a5,s5,a5
    80003d10:	00a7b023          	sd	a0,0(a5)
        debug_print("CPP API: Starting thread\n");
    80003d14:	00006517          	auipc	a0,0x6
    80003d18:	c2450513          	addi	a0,a0,-988 # 80009938 <_ZTV8Consumer+0x110>
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	4ec080e7          	jalr	1260(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003d24:	00006517          	auipc	a0,0x6
    80003d28:	c3450513          	addi	a0,a0,-972 # 80009958 <_ZTV8Consumer+0x130>
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	4dc080e7          	jalr	1244(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003d34:	00048513          	mv	a0,s1
    80003d38:	ffffe097          	auipc	ra,0xffffe
    80003d3c:	4b8080e7          	jalr	1208(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\n");
    80003d40:	00005517          	auipc	a0,0x5
    80003d44:	6b050513          	addi	a0,a0,1712 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	4c0080e7          	jalr	1216(ra) # 80002208 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003d50:	00048613          	mv	a2,s1
    80003d54:	ffffd597          	auipc	a1,0xffffd
    80003d58:	77c58593          	addi	a1,a1,1916 # 800014d0 <_ZN6Thread9body_execEPv>
    80003d5c:	00848513          	addi	a0,s1,8
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	b74080e7          	jalr	-1164(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    80003d68:	f2050ae3          	beqz	a0,80003c9c <_Z20testConsumerProducerv+0x32c>
            myHandle = nullptr;
    80003d6c:	0004b423          	sd	zero,8(s1)
            return -1;
    80003d70:	f3dff06f          	j	80003cac <_Z20testConsumerProducerv+0x33c>
        thread_dispatch();
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	c10080e7          	jalr	-1008(ra) # 80001984 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003d7c:	00000493          	li	s1,0
    80003d80:	0080006f          	j	80003d88 <_Z20testConsumerProducerv+0x418>
    80003d84:	0014849b          	addiw	s1,s1,1
    80003d88:	029a4263          	blt	s4,s1,80003dac <_Z20testConsumerProducerv+0x43c>
        waitForAll->wait();
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	dbc78793          	addi	a5,a5,-580 # 8000bb48 <_ZL10waitForAll>
    80003d94:	0007b783          	ld	a5,0(a5)
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }
    int wait() {
        if (myHandle == nullptr) {
    80003d98:	0087b503          	ld	a0,8(a5)
    80003d9c:	fe0504e3          	beqz	a0,80003d84 <_Z20testConsumerProducerv+0x414>
            return -1;
        }
        return sem_wait(myHandle);
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	d74080e7          	jalr	-652(ra) # 80001b14 <_Z8sem_waitP10_semaphore>
    80003da8:	fddff06f          	j	80003d84 <_Z20testConsumerProducerv+0x414>
    delete waitForAll;
    80003dac:	00008797          	auipc	a5,0x8
    80003db0:	d9c78793          	addi	a5,a5,-612 # 8000bb48 <_ZL10waitForAll>
    80003db4:	0007b503          	ld	a0,0(a5)
    80003db8:	00050863          	beqz	a0,80003dc8 <_Z20testConsumerProducerv+0x458>
    80003dbc:	00053783          	ld	a5,0(a0)
    80003dc0:	0087b783          	ld	a5,8(a5)
    80003dc4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003dc8:	00000493          	li	s1,0
    80003dcc:	0080006f          	j	80003dd4 <_Z20testConsumerProducerv+0x464>
    for (int i = 0; i < threadNum; i++) {
    80003dd0:	0014849b          	addiw	s1,s1,1
    80003dd4:	0344d263          	bge	s1,s4,80003df8 <_Z20testConsumerProducerv+0x488>
        delete producers[i];
    80003dd8:	00349793          	slli	a5,s1,0x3
    80003ddc:	00fa87b3          	add	a5,s5,a5
    80003de0:	0007b503          	ld	a0,0(a5)
    80003de4:	fe0506e3          	beqz	a0,80003dd0 <_Z20testConsumerProducerv+0x460>
    80003de8:	00053783          	ld	a5,0(a0)
    80003dec:	0087b783          	ld	a5,8(a5)
    80003df0:	000780e7          	jalr	a5
    80003df4:	fddff06f          	j	80003dd0 <_Z20testConsumerProducerv+0x460>
    delete consumer;
    80003df8:	000b8a63          	beqz	s7,80003e0c <_Z20testConsumerProducerv+0x49c>
    80003dfc:	000bb783          	ld	a5,0(s7)
    80003e00:	0087b783          	ld	a5,8(a5)
    80003e04:	000b8513          	mv	a0,s7
    80003e08:	000780e7          	jalr	a5
    delete buffer;
    80003e0c:	000b0e63          	beqz	s6,80003e28 <_Z20testConsumerProducerv+0x4b8>
    80003e10:	000b0513          	mv	a0,s6
    80003e14:	00003097          	auipc	ra,0x3
    80003e18:	968080e7          	jalr	-1688(ra) # 8000677c <_ZN9BufferCPPD1Ev>
    80003e1c:	000b0513          	mv	a0,s6
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	350080e7          	jalr	848(ra) # 80002170 <_ZdlPv>
    80003e28:	000c0113          	mv	sp,s8
}
    80003e2c:	f8040113          	addi	sp,s0,-128
    80003e30:	07813083          	ld	ra,120(sp)
    80003e34:	07013403          	ld	s0,112(sp)
    80003e38:	06813483          	ld	s1,104(sp)
    80003e3c:	06013903          	ld	s2,96(sp)
    80003e40:	05813983          	ld	s3,88(sp)
    80003e44:	05013a03          	ld	s4,80(sp)
    80003e48:	04813a83          	ld	s5,72(sp)
    80003e4c:	04013b03          	ld	s6,64(sp)
    80003e50:	03813b83          	ld	s7,56(sp)
    80003e54:	03013c03          	ld	s8,48(sp)
    80003e58:	02813c83          	ld	s9,40(sp)
    80003e5c:	08010113          	addi	sp,sp,128
    80003e60:	00008067          	ret
    80003e64:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003e68:	000b0513          	mv	a0,s6
    80003e6c:	ffffe097          	auipc	ra,0xffffe
    80003e70:	304080e7          	jalr	772(ra) # 80002170 <_ZdlPv>
    80003e74:	00048513          	mv	a0,s1
    80003e78:	00009097          	auipc	ra,0x9
    80003e7c:	e20080e7          	jalr	-480(ra) # 8000cc98 <_Unwind_Resume>
    80003e80:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003e84:	00090513          	mv	a0,s2
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	2e8080e7          	jalr	744(ra) # 80002170 <_ZdlPv>
    80003e90:	00048513          	mv	a0,s1
    80003e94:	00009097          	auipc	ra,0x9
    80003e98:	e04080e7          	jalr	-508(ra) # 8000cc98 <_Unwind_Resume>

0000000080003e9c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003e9c:	ff010113          	addi	sp,sp,-16
    80003ea0:	00813423          	sd	s0,8(sp)
    80003ea4:	01010413          	addi	s0,sp,16
    80003ea8:	00813403          	ld	s0,8(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00813423          	sd	s0,8(sp)
    80003ebc:	01010413          	addi	s0,sp,16
    80003ec0:	00813403          	ld	s0,8(sp)
    80003ec4:	01010113          	addi	sp,sp,16
    80003ec8:	00008067          	ret

0000000080003ecc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00813423          	sd	s0,8(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    80003ed8:	00813403          	ld	s0,8(sp)
    80003edc:	01010113          	addi	sp,sp,16
    80003ee0:	00008067          	ret

0000000080003ee4 <_ZN8ConsumerD0Ev>:
class Consumer : public Thread {
    80003ee4:	ff010113          	addi	sp,sp,-16
    80003ee8:	00113423          	sd	ra,8(sp)
    80003eec:	00813023          	sd	s0,0(sp)
    80003ef0:	01010413          	addi	s0,sp,16
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	27c080e7          	jalr	636(ra) # 80002170 <_ZdlPv>
    80003efc:	00813083          	ld	ra,8(sp)
    80003f00:	00013403          	ld	s0,0(sp)
    80003f04:	01010113          	addi	sp,sp,16
    80003f08:	00008067          	ret

0000000080003f0c <_ZN16ProducerKeyboradD0Ev>:
class ProducerKeyborad : public Thread {
    80003f0c:	ff010113          	addi	sp,sp,-16
    80003f10:	00113423          	sd	ra,8(sp)
    80003f14:	00813023          	sd	s0,0(sp)
    80003f18:	01010413          	addi	s0,sp,16
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	254080e7          	jalr	596(ra) # 80002170 <_ZdlPv>
    80003f24:	00813083          	ld	ra,8(sp)
    80003f28:	00013403          	ld	s0,0(sp)
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret

0000000080003f34 <_ZN8ProducerD0Ev>:
class Producer : public Thread {
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	00813023          	sd	s0,0(sp)
    80003f40:	01010413          	addi	s0,sp,16
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	22c080e7          	jalr	556(ra) # 80002170 <_ZdlPv>
    80003f4c:	00813083          	ld	ra,8(sp)
    80003f50:	00013403          	ld	s0,0(sp)
    80003f54:	01010113          	addi	sp,sp,16
    80003f58:	00008067          	ret

0000000080003f5c <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() {
    80003f5c:	00006797          	auipc	a5,0x6
    80003f60:	86c78793          	addi	a5,a5,-1940 # 800097c8 <_ZTV9Semaphore+0x10>
    80003f64:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80003f68:	00853503          	ld	a0,8(a0)
    80003f6c:	02050663          	beqz	a0,80003f98 <_ZN9SemaphoreD1Ev+0x3c>
    virtual ~Semaphore() {
    80003f70:	ff010113          	addi	sp,sp,-16
    80003f74:	00113423          	sd	ra,8(sp)
    80003f78:	00813023          	sd	s0,0(sp)
    80003f7c:	01010413          	addi	s0,sp,16
            sem_close(myHandle);
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	b28080e7          	jalr	-1240(ra) # 80001aa8 <_Z9sem_closeP10_semaphore>
    }
    80003f88:	00813083          	ld	ra,8(sp)
    80003f8c:	00013403          	ld	s0,0(sp)
    80003f90:	01010113          	addi	sp,sp,16
    80003f94:	00008067          	ret
    80003f98:	00008067          	ret

0000000080003f9c <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore() {
    80003f9c:	fe010113          	addi	sp,sp,-32
    80003fa0:	00113c23          	sd	ra,24(sp)
    80003fa4:	00813823          	sd	s0,16(sp)
    80003fa8:	00913423          	sd	s1,8(sp)
    80003fac:	02010413          	addi	s0,sp,32
    80003fb0:	00050493          	mv	s1,a0
    80003fb4:	00006797          	auipc	a5,0x6
    80003fb8:	81478793          	addi	a5,a5,-2028 # 800097c8 <_ZTV9Semaphore+0x10>
    80003fbc:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80003fc0:	00853503          	ld	a0,8(a0)
    80003fc4:	00050663          	beqz	a0,80003fd0 <_ZN9SemaphoreD0Ev+0x34>
            sem_close(myHandle);
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	ae0080e7          	jalr	-1312(ra) # 80001aa8 <_Z9sem_closeP10_semaphore>
    }
    80003fd0:	00048513          	mv	a0,s1
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	19c080e7          	jalr	412(ra) # 80002170 <_ZdlPv>
    80003fdc:	01813083          	ld	ra,24(sp)
    80003fe0:	01013403          	ld	s0,16(sp)
    80003fe4:	00813483          	ld	s1,8(sp)
    80003fe8:	02010113          	addi	sp,sp,32
    80003fec:	00008067          	ret

0000000080003ff0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00113c23          	sd	ra,24(sp)
    80003ff8:	00813823          	sd	s0,16(sp)
    80003ffc:	00913423          	sd	s1,8(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	bfc080e7          	jalr	-1028(ra) # 80001c04 <_Z4getcv>
    80004010:	0005059b          	sext.w	a1,a0
    80004014:	01b00793          	li	a5,27
    80004018:	00f58c63          	beq	a1,a5,80004030 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000401c:	0204b783          	ld	a5,32(s1)
    80004020:	0087b503          	ld	a0,8(a5)
    80004024:	00002097          	auipc	ra,0x2
    80004028:	554080e7          	jalr	1364(ra) # 80006578 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000402c:	fddff06f          	j	80004008 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004030:	00100793          	li	a5,1
    80004034:	00008717          	auipc	a4,0x8
    80004038:	b0f72623          	sw	a5,-1268(a4) # 8000bb40 <_ZL9threadEnd>
        td->buffer->put('!');
    8000403c:	0204b783          	ld	a5,32(s1)
    80004040:	02100593          	li	a1,33
    80004044:	0087b503          	ld	a0,8(a5)
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	530080e7          	jalr	1328(ra) # 80006578 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004050:	0204b783          	ld	a5,32(s1)
    80004054:	0107b783          	ld	a5,16(a5)
    }
    int signal() {
        if (myHandle == nullptr) {
    80004058:	0087b503          	ld	a0,8(a5)
    8000405c:	00050663          	beqz	a0,80004068 <_ZN16ProducerKeyborad3runEv+0x78>
            return -1;
        }
        return sem_signal(myHandle);
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	b04080e7          	jalr	-1276(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
    }
    80004068:	01813083          	ld	ra,24(sp)
    8000406c:	01013403          	ld	s0,16(sp)
    80004070:	00813483          	ld	s1,8(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret

000000008000407c <_ZN8Producer3runEv>:
    void run() override {
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00113c23          	sd	ra,24(sp)
    80004084:	00813823          	sd	s0,16(sp)
    80004088:	00913423          	sd	s1,8(sp)
    8000408c:	02010413          	addi	s0,sp,32
    80004090:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80004094:	00008797          	auipc	a5,0x8
    80004098:	aac78793          	addi	a5,a5,-1364 # 8000bb40 <_ZL9threadEnd>
    8000409c:	0007a783          	lw	a5,0(a5)
    800040a0:	0007879b          	sext.w	a5,a5
    800040a4:	02079063          	bnez	a5,800040c4 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    800040a8:	0204b783          	ld	a5,32(s1)
    800040ac:	0007a583          	lw	a1,0(a5)
    800040b0:	0305859b          	addiw	a1,a1,48
    800040b4:	0087b503          	ld	a0,8(a5)
    800040b8:	00002097          	auipc	ra,0x2
    800040bc:	4c0080e7          	jalr	1216(ra) # 80006578 <_ZN9BufferCPP3putEi>
        return 0;
    800040c0:	fd5ff06f          	j	80004094 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    800040c4:	0204b783          	ld	a5,32(s1)
    800040c8:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    800040cc:	0087b503          	ld	a0,8(a5)
    800040d0:	00050663          	beqz	a0,800040dc <_ZN8Producer3runEv+0x60>
        return sem_signal(myHandle);
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	a90080e7          	jalr	-1392(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
    }
    800040dc:	01813083          	ld	ra,24(sp)
    800040e0:	01013403          	ld	s0,16(sp)
    800040e4:	00813483          	ld	s1,8(sp)
    800040e8:	02010113          	addi	sp,sp,32
    800040ec:	00008067          	ret

00000000800040f0 <_ZN7Console4putcEc>:
};

class Console {
    public:
    static char getc() { return getc(); };
    static void putc(char c) { putc(c); };
    800040f0:	ff010113          	addi	sp,sp,-16
    800040f4:	00113423          	sd	ra,8(sp)
    800040f8:	00813023          	sd	s0,0(sp)
    800040fc:	01010413          	addi	s0,sp,16
    80004100:	00000097          	auipc	ra,0x0
    80004104:	ff0080e7          	jalr	-16(ra) # 800040f0 <_ZN7Console4putcEc>
    80004108:	00813083          	ld	ra,8(sp)
    8000410c:	00013403          	ld	s0,0(sp)
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <_ZN8Consumer3runEv>:
    void run() override {
    80004118:	fd010113          	addi	sp,sp,-48
    8000411c:	02113423          	sd	ra,40(sp)
    80004120:	02813023          	sd	s0,32(sp)
    80004124:	00913c23          	sd	s1,24(sp)
    80004128:	01213823          	sd	s2,16(sp)
    8000412c:	01313423          	sd	s3,8(sp)
    80004130:	03010413          	addi	s0,sp,48
    80004134:	00050913          	mv	s2,a0
        int i = 0;
    80004138:	00000993          	li	s3,0
    8000413c:	0100006f          	j	8000414c <_ZN8Consumer3runEv+0x34>
    80004140:	00a00513          	li	a0,10
    80004144:	00000097          	auipc	ra,0x0
    80004148:	fac080e7          	jalr	-84(ra) # 800040f0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000414c:	00008797          	auipc	a5,0x8
    80004150:	9f478793          	addi	a5,a5,-1548 # 8000bb40 <_ZL9threadEnd>
    80004154:	0007a783          	lw	a5,0(a5)
    80004158:	0007879b          	sext.w	a5,a5
    8000415c:	02079c63          	bnez	a5,80004194 <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    80004160:	02093783          	ld	a5,32(s2)
    80004164:	0087b503          	ld	a0,8(a5)
    80004168:	00002097          	auipc	ra,0x2
    8000416c:	4c0080e7          	jalr	1216(ra) # 80006628 <_ZN9BufferCPP3getEv>
            i++;
    80004170:	0019849b          	addiw	s1,s3,1
    80004174:	0004899b          	sext.w	s3,s1
    80004178:	0ff57513          	andi	a0,a0,255
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	f74080e7          	jalr	-140(ra) # 800040f0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004184:	05000793          	li	a5,80
    80004188:	02f4e4bb          	remw	s1,s1,a5
    8000418c:	fc0490e3          	bnez	s1,8000414c <_ZN8Consumer3runEv+0x34>
    80004190:	fb1ff06f          	j	80004140 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    80004194:	02093783          	ld	a5,32(s2)
    80004198:	0087b503          	ld	a0,8(a5)
    8000419c:	00002097          	auipc	ra,0x2
    800041a0:	538080e7          	jalr	1336(ra) # 800066d4 <_ZN9BufferCPP6getCntEv>
    800041a4:	02a05263          	blez	a0,800041c8 <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    800041a8:	02093783          	ld	a5,32(s2)
    800041ac:	0087b503          	ld	a0,8(a5)
    800041b0:	00002097          	auipc	ra,0x2
    800041b4:	478080e7          	jalr	1144(ra) # 80006628 <_ZN9BufferCPP3getEv>
    800041b8:	0ff57513          	andi	a0,a0,255
    800041bc:	00000097          	auipc	ra,0x0
    800041c0:	f34080e7          	jalr	-204(ra) # 800040f0 <_ZN7Console4putcEc>
    800041c4:	fd1ff06f          	j	80004194 <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    800041c8:	02093783          	ld	a5,32(s2)
    800041cc:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    800041d0:	0087b503          	ld	a0,8(a5)
    800041d4:	00050663          	beqz	a0,800041e0 <_ZN8Consumer3runEv+0xc8>
        return sem_signal(myHandle);
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	98c080e7          	jalr	-1652(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
    }
    800041e0:	02813083          	ld	ra,40(sp)
    800041e4:	02013403          	ld	s0,32(sp)
    800041e8:	01813483          	ld	s1,24(sp)
    800041ec:	01013903          	ld	s2,16(sp)
    800041f0:	00813983          	ld	s3,8(sp)
    800041f4:	03010113          	addi	sp,sp,48
    800041f8:	00008067          	ret

00000000800041fc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004210:	00005517          	auipc	a0,0x5
    80004214:	7a050513          	addi	a0,a0,1952 # 800099b0 <_ZTV8Consumer+0x188>
    80004218:	00002097          	auipc	ra,0x2
    8000421c:	9bc080e7          	jalr	-1604(ra) # 80005bd4 <_Z11printStringPKc>
    int test = getc() - '0';
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	9e4080e7          	jalr	-1564(ra) # 80001c04 <_Z4getcv>
    80004228:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	9d8080e7          	jalr	-1576(ra) # 80001c04 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004234:	00700793          	li	a5,7
    80004238:	1097e263          	bltu	a5,s1,8000433c <_Z8userMainv+0x140>
    8000423c:	00249493          	slli	s1,s1,0x2
    80004240:	00005717          	auipc	a4,0x5
    80004244:	74c70713          	addi	a4,a4,1868 # 8000998c <_ZTV8Consumer+0x164>
    80004248:	00e484b3          	add	s1,s1,a4
    8000424c:	0004a783          	lw	a5,0(s1)
    80004250:	00e787b3          	add	a5,a5,a4
    80004254:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004258:	00001097          	auipc	ra,0x1
    8000425c:	e90080e7          	jalr	-368(ra) # 800050e8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004260:	00005517          	auipc	a0,0x5
    80004264:	77050513          	addi	a0,a0,1904 # 800099d0 <_ZTV8Consumer+0x1a8>
    80004268:	00002097          	auipc	ra,0x2
    8000426c:	96c080e7          	jalr	-1684(ra) # 80005bd4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	01013403          	ld	s0,16(sp)
    80004278:	00813483          	ld	s1,8(sp)
    8000427c:	02010113          	addi	sp,sp,32
    80004280:	00008067          	ret
            Threads_CPP_API_test();
    80004284:	00000097          	auipc	ra,0x0
    80004288:	5ac080e7          	jalr	1452(ra) # 80004830 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000428c:	00005517          	auipc	a0,0x5
    80004290:	78450513          	addi	a0,a0,1924 # 80009a10 <_ZTV8Consumer+0x1e8>
    80004294:	00002097          	auipc	ra,0x2
    80004298:	940080e7          	jalr	-1728(ra) # 80005bd4 <_Z11printStringPKc>
            break;
    8000429c:	fd5ff06f          	j	80004270 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800042a0:	00002097          	auipc	ra,0x2
    800042a4:	e40080e7          	jalr	-448(ra) # 800060e0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800042a8:	00005517          	auipc	a0,0x5
    800042ac:	7a850513          	addi	a0,a0,1960 # 80009a50 <_ZTV8Consumer+0x228>
    800042b0:	00002097          	auipc	ra,0x2
    800042b4:	924080e7          	jalr	-1756(ra) # 80005bd4 <_Z11printStringPKc>
            break;
    800042b8:	fb9ff06f          	j	80004270 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800042bc:	00001097          	auipc	ra,0x1
    800042c0:	1bc080e7          	jalr	444(ra) # 80005478 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800042c4:	00005517          	auipc	a0,0x5
    800042c8:	7dc50513          	addi	a0,a0,2012 # 80009aa0 <_ZTV8Consumer+0x278>
    800042cc:	00002097          	auipc	ra,0x2
    800042d0:	908080e7          	jalr	-1784(ra) # 80005bd4 <_Z11printStringPKc>
            break;
    800042d4:	f9dff06f          	j	80004270 <_Z8userMainv+0x74>
            testSleeping();
    800042d8:	00002097          	auipc	ra,0x2
    800042dc:	864080e7          	jalr	-1948(ra) # 80005b3c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800042e0:	00006517          	auipc	a0,0x6
    800042e4:	81850513          	addi	a0,a0,-2024 # 80009af8 <_ZTV8Consumer+0x2d0>
    800042e8:	00002097          	auipc	ra,0x2
    800042ec:	8ec080e7          	jalr	-1812(ra) # 80005bd4 <_Z11printStringPKc>
            break;
    800042f0:	f81ff06f          	j	80004270 <_Z8userMainv+0x74>
            testConsumerProducer();
    800042f4:	fffff097          	auipc	ra,0xfffff
    800042f8:	67c080e7          	jalr	1660(ra) # 80003970 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800042fc:	00006517          	auipc	a0,0x6
    80004300:	82c50513          	addi	a0,a0,-2004 # 80009b28 <_ZTV8Consumer+0x300>
    80004304:	00002097          	auipc	ra,0x2
    80004308:	8d0080e7          	jalr	-1840(ra) # 80005bd4 <_Z11printStringPKc>
            break;
    8000430c:	f65ff06f          	j	80004270 <_Z8userMainv+0x74>
            System_Mode_test();
    80004310:	fffff097          	auipc	ra,0xfffff
    80004314:	224080e7          	jalr	548(ra) # 80003534 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004318:	00006517          	auipc	a0,0x6
    8000431c:	85050513          	addi	a0,a0,-1968 # 80009b68 <_ZTV8Consumer+0x340>
    80004320:	00002097          	auipc	ra,0x2
    80004324:	8b4080e7          	jalr	-1868(ra) # 80005bd4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004328:	00006517          	auipc	a0,0x6
    8000432c:	86050513          	addi	a0,a0,-1952 # 80009b88 <_ZTV8Consumer+0x360>
    80004330:	00002097          	auipc	ra,0x2
    80004334:	8a4080e7          	jalr	-1884(ra) # 80005bd4 <_Z11printStringPKc>
            break;
    80004338:	f39ff06f          	j	80004270 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000433c:	00006517          	auipc	a0,0x6
    80004340:	8a450513          	addi	a0,a0,-1884 # 80009be0 <_ZTV8Consumer+0x3b8>
    80004344:	00002097          	auipc	ra,0x2
    80004348:	890080e7          	jalr	-1904(ra) # 80005bd4 <_Z11printStringPKc>
    8000434c:	f25ff06f          	j	80004270 <_Z8userMainv+0x74>

0000000080004350 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80004350:	00100793          	li	a5,1
    80004354:	06a7f863          	bgeu	a5,a0,800043c4 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80004358:	fe010113          	addi	sp,sp,-32
    8000435c:	00113c23          	sd	ra,24(sp)
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00913423          	sd	s1,8(sp)
    80004368:	01213023          	sd	s2,0(sp)
    8000436c:	02010413          	addi	s0,sp,32
    80004370:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80004374:	00a00793          	li	a5,10
    80004378:	02f577b3          	remu	a5,a0,a5
    8000437c:	02078e63          	beqz	a5,800043b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004380:	fff48513          	addi	a0,s1,-1
    80004384:	00000097          	auipc	ra,0x0
    80004388:	fcc080e7          	jalr	-52(ra) # 80004350 <_ZL9fibonaccim>
    8000438c:	00050913          	mv	s2,a0
    80004390:	ffe48513          	addi	a0,s1,-2
    80004394:	00000097          	auipc	ra,0x0
    80004398:	fbc080e7          	jalr	-68(ra) # 80004350 <_ZL9fibonaccim>
    8000439c:	00a90533          	add	a0,s2,a0
}
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	00813483          	ld	s1,8(sp)
    800043ac:	00013903          	ld	s2,0(sp)
    800043b0:	02010113          	addi	sp,sp,32
    800043b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800043b8:	ffffd097          	auipc	ra,0xffffd
    800043bc:	5cc080e7          	jalr	1484(ra) # 80001984 <_Z15thread_dispatchv>
    800043c0:	fc1ff06f          	j	80004380 <_ZL9fibonaccim+0x30>
}
    800043c4:	00008067          	ret

00000000800043c8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800043c8:	fe010113          	addi	sp,sp,-32
    800043cc:	00113c23          	sd	ra,24(sp)
    800043d0:	00813823          	sd	s0,16(sp)
    800043d4:	00913423          	sd	s1,8(sp)
    800043d8:	01213023          	sd	s2,0(sp)
    800043dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800043e0:	00000913          	li	s2,0
    800043e4:	0380006f          	j	8000441c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800043e8:	ffffd097          	auipc	ra,0xffffd
    800043ec:	59c080e7          	jalr	1436(ra) # 80001984 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800043f0:	00148493          	addi	s1,s1,1
    800043f4:	000027b7          	lui	a5,0x2
    800043f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800043fc:	0097ee63          	bltu	a5,s1,80004418 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004400:	00000713          	li	a4,0
    80004404:	000077b7          	lui	a5,0x7
    80004408:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000440c:	fce7eee3          	bltu	a5,a4,800043e8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004410:	00170713          	addi	a4,a4,1
    80004414:	ff1ff06f          	j	80004404 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004418:	00190913          	addi	s2,s2,1
    8000441c:	00900793          	li	a5,9
    80004420:	0527e063          	bltu	a5,s2,80004460 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004424:	00005517          	auipc	a0,0x5
    80004428:	31450513          	addi	a0,a0,788 # 80009738 <_ZZ24debug_print_internal_intmE6digits+0x420>
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	7a8080e7          	jalr	1960(ra) # 80005bd4 <_Z11printStringPKc>
    80004434:	00000613          	li	a2,0
    80004438:	00a00593          	li	a1,10
    8000443c:	0009051b          	sext.w	a0,s2
    80004440:	00002097          	auipc	ra,0x2
    80004444:	940080e7          	jalr	-1728(ra) # 80005d80 <_Z8printIntiii>
    80004448:	00005517          	auipc	a0,0x5
    8000444c:	fa850513          	addi	a0,a0,-88 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004450:	00001097          	auipc	ra,0x1
    80004454:	784080e7          	jalr	1924(ra) # 80005bd4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004458:	00000493          	li	s1,0
    8000445c:	f99ff06f          	j	800043f4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004460:	00005517          	auipc	a0,0x5
    80004464:	2b050513          	addi	a0,a0,688 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3f8>
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	76c080e7          	jalr	1900(ra) # 80005bd4 <_Z11printStringPKc>
    finishedA = true;
    80004470:	00100793          	li	a5,1
    80004474:	00007717          	auipc	a4,0x7
    80004478:	6cf70fa3          	sb	a5,1759(a4) # 8000bb53 <_ZL9finishedA>
}
    8000447c:	01813083          	ld	ra,24(sp)
    80004480:	01013403          	ld	s0,16(sp)
    80004484:	00813483          	ld	s1,8(sp)
    80004488:	00013903          	ld	s2,0(sp)
    8000448c:	02010113          	addi	sp,sp,32
    80004490:	00008067          	ret

0000000080004494 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004494:	fe010113          	addi	sp,sp,-32
    80004498:	00113c23          	sd	ra,24(sp)
    8000449c:	00813823          	sd	s0,16(sp)
    800044a0:	00913423          	sd	s1,8(sp)
    800044a4:	01213023          	sd	s2,0(sp)
    800044a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800044ac:	00000913          	li	s2,0
    800044b0:	0380006f          	j	800044e8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	4d0080e7          	jalr	1232(ra) # 80001984 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800044bc:	00148493          	addi	s1,s1,1
    800044c0:	000027b7          	lui	a5,0x2
    800044c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800044c8:	0097ee63          	bltu	a5,s1,800044e4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800044cc:	00000713          	li	a4,0
    800044d0:	000077b7          	lui	a5,0x7
    800044d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800044d8:	fce7eee3          	bltu	a5,a4,800044b4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800044dc:	00170713          	addi	a4,a4,1
    800044e0:	ff1ff06f          	j	800044d0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800044e4:	00190913          	addi	s2,s2,1
    800044e8:	00f00793          	li	a5,15
    800044ec:	0527e063          	bltu	a5,s2,8000452c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	23050513          	addi	a0,a0,560 # 80009720 <_ZZ24debug_print_internal_intmE6digits+0x408>
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	6dc080e7          	jalr	1756(ra) # 80005bd4 <_Z11printStringPKc>
    80004500:	00000613          	li	a2,0
    80004504:	00a00593          	li	a1,10
    80004508:	0009051b          	sext.w	a0,s2
    8000450c:	00002097          	auipc	ra,0x2
    80004510:	874080e7          	jalr	-1932(ra) # 80005d80 <_Z8printIntiii>
    80004514:	00005517          	auipc	a0,0x5
    80004518:	edc50513          	addi	a0,a0,-292 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	6b8080e7          	jalr	1720(ra) # 80005bd4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004524:	00000493          	li	s1,0
    80004528:	f99ff06f          	j	800044c0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000452c:	00005517          	auipc	a0,0x5
    80004530:	1fc50513          	addi	a0,a0,508 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x410>
    80004534:	00001097          	auipc	ra,0x1
    80004538:	6a0080e7          	jalr	1696(ra) # 80005bd4 <_Z11printStringPKc>
    finishedB = true;
    8000453c:	00100793          	li	a5,1
    80004540:	00007717          	auipc	a4,0x7
    80004544:	60f70923          	sb	a5,1554(a4) # 8000bb52 <_ZL9finishedB>
    thread_dispatch();
    80004548:	ffffd097          	auipc	ra,0xffffd
    8000454c:	43c080e7          	jalr	1084(ra) # 80001984 <_Z15thread_dispatchv>
}
    80004550:	01813083          	ld	ra,24(sp)
    80004554:	01013403          	ld	s0,16(sp)
    80004558:	00813483          	ld	s1,8(sp)
    8000455c:	00013903          	ld	s2,0(sp)
    80004560:	02010113          	addi	sp,sp,32
    80004564:	00008067          	ret

0000000080004568 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004568:	fe010113          	addi	sp,sp,-32
    8000456c:	00113c23          	sd	ra,24(sp)
    80004570:	00813823          	sd	s0,16(sp)
    80004574:	00913423          	sd	s1,8(sp)
    80004578:	01213023          	sd	s2,0(sp)
    8000457c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004580:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80004584:	00200793          	li	a5,2
    80004588:	0497e263          	bltu	a5,s1,800045cc <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	15450513          	addi	a0,a0,340 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80004594:	00001097          	auipc	ra,0x1
    80004598:	640080e7          	jalr	1600(ra) # 80005bd4 <_Z11printStringPKc>
    8000459c:	00000613          	li	a2,0
    800045a0:	00a00593          	li	a1,10
    800045a4:	00048513          	mv	a0,s1
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	7d8080e7          	jalr	2008(ra) # 80005d80 <_Z8printIntiii>
    800045b0:	00005517          	auipc	a0,0x5
    800045b4:	e4050513          	addi	a0,a0,-448 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	61c080e7          	jalr	1564(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045c0:	0014849b          	addiw	s1,s1,1
    800045c4:	0ff4f493          	andi	s1,s1,255
    800045c8:	fbdff06f          	j	80004584 <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    800045cc:	00005517          	auipc	a0,0x5
    800045d0:	11c50513          	addi	a0,a0,284 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x3d0>
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	600080e7          	jalr	1536(ra) # 80005bd4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045dc:	00700313          	li	t1,7
    thread_dispatch();
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	3a4080e7          	jalr	932(ra) # 80001984 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800045e8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800045ec:	00005517          	auipc	a0,0x5
    800045f0:	10c50513          	addi	a0,a0,268 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x3e0>
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	5e0080e7          	jalr	1504(ra) # 80005bd4 <_Z11printStringPKc>
    800045fc:	00000613          	li	a2,0
    80004600:	00a00593          	li	a1,10
    80004604:	0009051b          	sext.w	a0,s2
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	778080e7          	jalr	1912(ra) # 80005d80 <_Z8printIntiii>
    80004610:	00005517          	auipc	a0,0x5
    80004614:	de050513          	addi	a0,a0,-544 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	5bc080e7          	jalr	1468(ra) # 80005bd4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004620:	00c00513          	li	a0,12
    80004624:	00000097          	auipc	ra,0x0
    80004628:	d2c080e7          	jalr	-724(ra) # 80004350 <_ZL9fibonaccim>
    8000462c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004630:	00005517          	auipc	a0,0x5
    80004634:	0d050513          	addi	a0,a0,208 # 80009700 <_ZZ24debug_print_internal_intmE6digits+0x3e8>
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	59c080e7          	jalr	1436(ra) # 80005bd4 <_Z11printStringPKc>
    80004640:	00000613          	li	a2,0
    80004644:	00a00593          	li	a1,10
    80004648:	0009051b          	sext.w	a0,s2
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	734080e7          	jalr	1844(ra) # 80005d80 <_Z8printIntiii>
    80004654:	00005517          	auipc	a0,0x5
    80004658:	d9c50513          	addi	a0,a0,-612 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    8000465c:	00001097          	auipc	ra,0x1
    80004660:	578080e7          	jalr	1400(ra) # 80005bd4 <_Z11printStringPKc>

    for (; i < 6; i++) {
    80004664:	00500793          	li	a5,5
    80004668:	0497e263          	bltu	a5,s1,800046ac <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    8000466c:	00005517          	auipc	a0,0x5
    80004670:	07450513          	addi	a0,a0,116 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80004674:	00001097          	auipc	ra,0x1
    80004678:	560080e7          	jalr	1376(ra) # 80005bd4 <_Z11printStringPKc>
    8000467c:	00000613          	li	a2,0
    80004680:	00a00593          	li	a1,10
    80004684:	00048513          	mv	a0,s1
    80004688:	00001097          	auipc	ra,0x1
    8000468c:	6f8080e7          	jalr	1784(ra) # 80005d80 <_Z8printIntiii>
    80004690:	00005517          	auipc	a0,0x5
    80004694:	d6050513          	addi	a0,a0,-672 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	53c080e7          	jalr	1340(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046a0:	0014849b          	addiw	s1,s1,1
    800046a4:	0ff4f493          	andi	s1,s1,255
    800046a8:	fbdff06f          	j	80004664 <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    800046ac:	00005517          	auipc	a0,0x5
    800046b0:	06450513          	addi	a0,a0,100 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3f8>
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	520080e7          	jalr	1312(ra) # 80005bd4 <_Z11printStringPKc>
    finishedC = true;
    800046bc:	00100793          	li	a5,1
    800046c0:	00007717          	auipc	a4,0x7
    800046c4:	48f708a3          	sb	a5,1169(a4) # 8000bb51 <_ZL9finishedC>
    thread_dispatch();
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	2bc080e7          	jalr	700(ra) # 80001984 <_Z15thread_dispatchv>
}
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00813483          	ld	s1,8(sp)
    800046dc:	00013903          	ld	s2,0(sp)
    800046e0:	02010113          	addi	sp,sp,32
    800046e4:	00008067          	ret

00000000800046e8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800046e8:	fe010113          	addi	sp,sp,-32
    800046ec:	00113c23          	sd	ra,24(sp)
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00913423          	sd	s1,8(sp)
    800046f8:	01213023          	sd	s2,0(sp)
    800046fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004700:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80004704:	00c00793          	li	a5,12
    80004708:	0497e263          	bltu	a5,s1,8000474c <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    8000470c:	00005517          	auipc	a0,0x5
    80004710:	f9c50513          	addi	a0,a0,-100 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80004714:	00001097          	auipc	ra,0x1
    80004718:	4c0080e7          	jalr	1216(ra) # 80005bd4 <_Z11printStringPKc>
    8000471c:	00000613          	li	a2,0
    80004720:	00a00593          	li	a1,10
    80004724:	00048513          	mv	a0,s1
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	658080e7          	jalr	1624(ra) # 80005d80 <_Z8printIntiii>
    80004730:	00005517          	auipc	a0,0x5
    80004734:	cc050513          	addi	a0,a0,-832 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004738:	00001097          	auipc	ra,0x1
    8000473c:	49c080e7          	jalr	1180(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004740:	0014849b          	addiw	s1,s1,1
    80004744:	0ff4f493          	andi	s1,s1,255
    80004748:	fbdff06f          	j	80004704 <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    8000474c:	00005517          	auipc	a0,0x5
    80004750:	f6450513          	addi	a0,a0,-156 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80004754:	00001097          	auipc	ra,0x1
    80004758:	480080e7          	jalr	1152(ra) # 80005bd4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000475c:	00500313          	li	t1,5
    thread_dispatch();
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	224080e7          	jalr	548(ra) # 80001984 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004768:	01000513          	li	a0,16
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	be4080e7          	jalr	-1052(ra) # 80004350 <_ZL9fibonaccim>
    80004774:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004778:	00005517          	auipc	a0,0x5
    8000477c:	f4850513          	addi	a0,a0,-184 # 800096c0 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80004780:	00001097          	auipc	ra,0x1
    80004784:	454080e7          	jalr	1108(ra) # 80005bd4 <_Z11printStringPKc>
    80004788:	00000613          	li	a2,0
    8000478c:	00a00593          	li	a1,10
    80004790:	0009051b          	sext.w	a0,s2
    80004794:	00001097          	auipc	ra,0x1
    80004798:	5ec080e7          	jalr	1516(ra) # 80005d80 <_Z8printIntiii>
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	c5450513          	addi	a0,a0,-940 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	430080e7          	jalr	1072(ra) # 80005bd4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    800047ac:	00f00793          	li	a5,15
    800047b0:	0497e263          	bltu	a5,s1,800047f4 <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    800047b4:	00005517          	auipc	a0,0x5
    800047b8:	ef450513          	addi	a0,a0,-268 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    800047bc:	00001097          	auipc	ra,0x1
    800047c0:	418080e7          	jalr	1048(ra) # 80005bd4 <_Z11printStringPKc>
    800047c4:	00000613          	li	a2,0
    800047c8:	00a00593          	li	a1,10
    800047cc:	00048513          	mv	a0,s1
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	5b0080e7          	jalr	1456(ra) # 80005d80 <_Z8printIntiii>
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	c1850513          	addi	a0,a0,-1000 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	3f4080e7          	jalr	1012(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800047e8:	0014849b          	addiw	s1,s1,1
    800047ec:	0ff4f493          	andi	s1,s1,255
    800047f0:	fbdff06f          	j	800047ac <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    800047f4:	00005517          	auipc	a0,0x5
    800047f8:	edc50513          	addi	a0,a0,-292 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    800047fc:	00001097          	auipc	ra,0x1
    80004800:	3d8080e7          	jalr	984(ra) # 80005bd4 <_Z11printStringPKc>
    finishedD = true;
    80004804:	00100793          	li	a5,1
    80004808:	00007717          	auipc	a4,0x7
    8000480c:	34f70423          	sb	a5,840(a4) # 8000bb50 <_ZL9finishedD>
    thread_dispatch();
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	174080e7          	jalr	372(ra) # 80001984 <_Z15thread_dispatchv>
}
    80004818:	01813083          	ld	ra,24(sp)
    8000481c:	01013403          	ld	s0,16(sp)
    80004820:	00813483          	ld	s1,8(sp)
    80004824:	00013903          	ld	s2,0(sp)
    80004828:	02010113          	addi	sp,sp,32
    8000482c:	00008067          	ret

0000000080004830 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004830:	fc010113          	addi	sp,sp,-64
    80004834:	02113c23          	sd	ra,56(sp)
    80004838:	02813823          	sd	s0,48(sp)
    8000483c:	02913423          	sd	s1,40(sp)
    80004840:	03213023          	sd	s2,32(sp)
    80004844:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004848:	02000513          	li	a0,32
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	8a4080e7          	jalr	-1884(ra) # 800020f0 <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004854:	00053423          	sd	zero,8(a0)
    80004858:	00053823          	sd	zero,16(a0)
    8000485c:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    80004860:	00005797          	auipc	a5,0x5
    80004864:	3b878793          	addi	a5,a5,952 # 80009c18 <_ZTV7WorkerA+0x10>
    80004868:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    8000486c:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80004870:	00005517          	auipc	a0,0x5
    80004874:	ed050513          	addi	a0,a0,-304 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x428>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	35c080e7          	jalr	860(ra) # 80005bd4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004880:	02000513          	li	a0,32
    80004884:	ffffe097          	auipc	ra,0xffffe
    80004888:	86c080e7          	jalr	-1940(ra) # 800020f0 <_Znwm>
    8000488c:	00053423          	sd	zero,8(a0)
    80004890:	00053823          	sd	zero,16(a0)
    80004894:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    80004898:	00005797          	auipc	a5,0x5
    8000489c:	3a878793          	addi	a5,a5,936 # 80009c40 <_ZTV7WorkerB+0x10>
    800048a0:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    800048a4:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    800048a8:	00005517          	auipc	a0,0x5
    800048ac:	eb050513          	addi	a0,a0,-336 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x440>
    800048b0:	00001097          	auipc	ra,0x1
    800048b4:	324080e7          	jalr	804(ra) # 80005bd4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800048b8:	02000513          	li	a0,32
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	834080e7          	jalr	-1996(ra) # 800020f0 <_Znwm>
    800048c4:	00053423          	sd	zero,8(a0)
    800048c8:	00053823          	sd	zero,16(a0)
    800048cc:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    800048d0:	00005797          	auipc	a5,0x5
    800048d4:	39878793          	addi	a5,a5,920 # 80009c68 <_ZTV7WorkerC+0x10>
    800048d8:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    800048dc:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800048e0:	00005517          	auipc	a0,0x5
    800048e4:	e9050513          	addi	a0,a0,-368 # 80009770 <_ZZ24debug_print_internal_intmE6digits+0x458>
    800048e8:	00001097          	auipc	ra,0x1
    800048ec:	2ec080e7          	jalr	748(ra) # 80005bd4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800048f0:	02000513          	li	a0,32
    800048f4:	ffffd097          	auipc	ra,0xffffd
    800048f8:	7fc080e7          	jalr	2044(ra) # 800020f0 <_Znwm>
    800048fc:	00053423          	sd	zero,8(a0)
    80004900:	00053823          	sd	zero,16(a0)
    80004904:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    80004908:	00005797          	auipc	a5,0x5
    8000490c:	38878793          	addi	a5,a5,904 # 80009c90 <_ZTV7WorkerD+0x10>
    80004910:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    80004914:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80004918:	00005517          	auipc	a0,0x5
    8000491c:	e7050513          	addi	a0,a0,-400 # 80009788 <_ZZ24debug_print_internal_intmE6digits+0x470>
    80004920:	00001097          	auipc	ra,0x1
    80004924:	2b4080e7          	jalr	692(ra) # 80005bd4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004928:	00000493          	li	s1,0
    8000492c:	00c0006f          	j	80004938 <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    80004930:	00093423          	sd	zero,8(s2)
    80004934:	0014849b          	addiw	s1,s1,1
    80004938:	00300793          	li	a5,3
    8000493c:	0897c463          	blt	a5,s1,800049c4 <_Z20Threads_CPP_API_testv+0x194>
        threads[i]->start();
    80004940:	00349793          	slli	a5,s1,0x3
    80004944:	fe040713          	addi	a4,s0,-32
    80004948:	00f707b3          	add	a5,a4,a5
    8000494c:	fe07b903          	ld	s2,-32(a5)
        debug_print("CPP API: Starting thread\n");
    80004950:	00005517          	auipc	a0,0x5
    80004954:	fe850513          	addi	a0,a0,-24 # 80009938 <_ZTV8Consumer+0x110>
    80004958:	ffffe097          	auipc	ra,0xffffe
    8000495c:	8b0080e7          	jalr	-1872(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80004960:	00005517          	auipc	a0,0x5
    80004964:	ff850513          	addi	a0,a0,-8 # 80009958 <_ZTV8Consumer+0x130>
    80004968:	ffffe097          	auipc	ra,0xffffe
    8000496c:	8a0080e7          	jalr	-1888(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80004970:	00090513          	mv	a0,s2
    80004974:	ffffe097          	auipc	ra,0xffffe
    80004978:	87c080e7          	jalr	-1924(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\n");
    8000497c:	00005517          	auipc	a0,0x5
    80004980:	a7450513          	addi	a0,a0,-1420 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004984:	ffffe097          	auipc	ra,0xffffe
    80004988:	884080e7          	jalr	-1916(ra) # 80002208 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    8000498c:	00090613          	mv	a2,s2
    80004990:	ffffd597          	auipc	a1,0xffffd
    80004994:	b4058593          	addi	a1,a1,-1216 # 800014d0 <_ZN6Thread9body_execEPv>
    80004998:	00890513          	addi	a0,s2,8
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	f38080e7          	jalr	-200(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    800049a4:	f80516e3          	bnez	a0,80004930 <_Z20Threads_CPP_API_testv+0x100>
        debug_print("CPP API: Thread started\n");
    800049a8:	00005517          	auipc	a0,0x5
    800049ac:	fc850513          	addi	a0,a0,-56 # 80009970 <_ZTV8Consumer+0x148>
    800049b0:	ffffe097          	auipc	ra,0xffffe
    800049b4:	858080e7          	jalr	-1960(ra) # 80002208 <_Z11debug_printPKc>
        return 0;
    800049b8:	f7dff06f          	j	80004934 <_Z20Threads_CPP_API_testv+0x104>
        thread_dispatch();
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	fc8080e7          	jalr	-56(ra) # 80001984 <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800049c4:	00007797          	auipc	a5,0x7
    800049c8:	18f78793          	addi	a5,a5,399 # 8000bb53 <_ZL9finishedA>
    800049cc:	0007c783          	lbu	a5,0(a5)
    800049d0:	0ff7f793          	andi	a5,a5,255
    800049d4:	fe0784e3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x18c>
    800049d8:	00007797          	auipc	a5,0x7
    800049dc:	17a78793          	addi	a5,a5,378 # 8000bb52 <_ZL9finishedB>
    800049e0:	0007c783          	lbu	a5,0(a5)
    800049e4:	0ff7f793          	andi	a5,a5,255
    800049e8:	fc078ae3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x18c>
    800049ec:	00007797          	auipc	a5,0x7
    800049f0:	16578793          	addi	a5,a5,357 # 8000bb51 <_ZL9finishedC>
    800049f4:	0007c783          	lbu	a5,0(a5)
    800049f8:	0ff7f793          	andi	a5,a5,255
    800049fc:	fc0780e3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x18c>
    80004a00:	00007797          	auipc	a5,0x7
    80004a04:	15078793          	addi	a5,a5,336 # 8000bb50 <_ZL9finishedD>
    80004a08:	0007c783          	lbu	a5,0(a5)
    80004a0c:	0ff7f793          	andi	a5,a5,255
    80004a10:	fa0786e3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x18c>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    80004a14:	fc040493          	addi	s1,s0,-64
    80004a18:	0080006f          	j	80004a20 <_Z20Threads_CPP_API_testv+0x1f0>
    80004a1c:	00848493          	addi	s1,s1,8
    80004a20:	fe040793          	addi	a5,s0,-32
    80004a24:	00f48e63          	beq	s1,a5,80004a40 <_Z20Threads_CPP_API_testv+0x210>
    80004a28:	0004b503          	ld	a0,0(s1)
    80004a2c:	fe0508e3          	beqz	a0,80004a1c <_Z20Threads_CPP_API_testv+0x1ec>
    80004a30:	00053783          	ld	a5,0(a0)
    80004a34:	0087b783          	ld	a5,8(a5)
    80004a38:	000780e7          	jalr	a5
    80004a3c:	fe1ff06f          	j	80004a1c <_Z20Threads_CPP_API_testv+0x1ec>
}
    80004a40:	03813083          	ld	ra,56(sp)
    80004a44:	03013403          	ld	s0,48(sp)
    80004a48:	02813483          	ld	s1,40(sp)
    80004a4c:	02013903          	ld	s2,32(sp)
    80004a50:	04010113          	addi	sp,sp,64
    80004a54:	00008067          	ret

0000000080004a58 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004a58:	ff010113          	addi	sp,sp,-16
    80004a5c:	00813423          	sd	s0,8(sp)
    80004a60:	01010413          	addi	s0,sp,16
    80004a64:	00813403          	ld	s0,8(sp)
    80004a68:	01010113          	addi	sp,sp,16
    80004a6c:	00008067          	ret

0000000080004a70 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004a70:	ff010113          	addi	sp,sp,-16
    80004a74:	00813423          	sd	s0,8(sp)
    80004a78:	01010413          	addi	s0,sp,16
    80004a7c:	00813403          	ld	s0,8(sp)
    80004a80:	01010113          	addi	sp,sp,16
    80004a84:	00008067          	ret

0000000080004a88 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004a88:	ff010113          	addi	sp,sp,-16
    80004a8c:	00813423          	sd	s0,8(sp)
    80004a90:	01010413          	addi	s0,sp,16
    80004a94:	00813403          	ld	s0,8(sp)
    80004a98:	01010113          	addi	sp,sp,16
    80004a9c:	00008067          	ret

0000000080004aa0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004aa0:	ff010113          	addi	sp,sp,-16
    80004aa4:	00813423          	sd	s0,8(sp)
    80004aa8:	01010413          	addi	s0,sp,16
    80004aac:	00813403          	ld	s0,8(sp)
    80004ab0:	01010113          	addi	sp,sp,16
    80004ab4:	00008067          	ret

0000000080004ab8 <_ZN7WorkerAD0Ev>:
    80004ab8:	ff010113          	addi	sp,sp,-16
    80004abc:	00113423          	sd	ra,8(sp)
    80004ac0:	00813023          	sd	s0,0(sp)
    80004ac4:	01010413          	addi	s0,sp,16
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	6a8080e7          	jalr	1704(ra) # 80002170 <_ZdlPv>
    80004ad0:	00813083          	ld	ra,8(sp)
    80004ad4:	00013403          	ld	s0,0(sp)
    80004ad8:	01010113          	addi	sp,sp,16
    80004adc:	00008067          	ret

0000000080004ae0 <_ZN7WorkerBD0Ev>:
class WorkerB: public Thread {
    80004ae0:	ff010113          	addi	sp,sp,-16
    80004ae4:	00113423          	sd	ra,8(sp)
    80004ae8:	00813023          	sd	s0,0(sp)
    80004aec:	01010413          	addi	s0,sp,16
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	680080e7          	jalr	1664(ra) # 80002170 <_ZdlPv>
    80004af8:	00813083          	ld	ra,8(sp)
    80004afc:	00013403          	ld	s0,0(sp)
    80004b00:	01010113          	addi	sp,sp,16
    80004b04:	00008067          	ret

0000000080004b08 <_ZN7WorkerCD0Ev>:
class WorkerC: public Thread {
    80004b08:	ff010113          	addi	sp,sp,-16
    80004b0c:	00113423          	sd	ra,8(sp)
    80004b10:	00813023          	sd	s0,0(sp)
    80004b14:	01010413          	addi	s0,sp,16
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	658080e7          	jalr	1624(ra) # 80002170 <_ZdlPv>
    80004b20:	00813083          	ld	ra,8(sp)
    80004b24:	00013403          	ld	s0,0(sp)
    80004b28:	01010113          	addi	sp,sp,16
    80004b2c:	00008067          	ret

0000000080004b30 <_ZN7WorkerDD0Ev>:
class WorkerD: public Thread {
    80004b30:	ff010113          	addi	sp,sp,-16
    80004b34:	00113423          	sd	ra,8(sp)
    80004b38:	00813023          	sd	s0,0(sp)
    80004b3c:	01010413          	addi	s0,sp,16
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	630080e7          	jalr	1584(ra) # 80002170 <_ZdlPv>
    80004b48:	00813083          	ld	ra,8(sp)
    80004b4c:	00013403          	ld	s0,0(sp)
    80004b50:	01010113          	addi	sp,sp,16
    80004b54:	00008067          	ret

0000000080004b58 <_ZN7WorkerA3runEv>:
    void run() override {
    80004b58:	ff010113          	addi	sp,sp,-16
    80004b5c:	00113423          	sd	ra,8(sp)
    80004b60:	00813023          	sd	s0,0(sp)
    80004b64:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004b68:	00000593          	li	a1,0
    80004b6c:	00000097          	auipc	ra,0x0
    80004b70:	85c080e7          	jalr	-1956(ra) # 800043c8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004b74:	00813083          	ld	ra,8(sp)
    80004b78:	00013403          	ld	s0,0(sp)
    80004b7c:	01010113          	addi	sp,sp,16
    80004b80:	00008067          	ret

0000000080004b84 <_ZN7WorkerB3runEv>:
    void run() override {
    80004b84:	ff010113          	addi	sp,sp,-16
    80004b88:	00113423          	sd	ra,8(sp)
    80004b8c:	00813023          	sd	s0,0(sp)
    80004b90:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004b94:	00000593          	li	a1,0
    80004b98:	00000097          	auipc	ra,0x0
    80004b9c:	8fc080e7          	jalr	-1796(ra) # 80004494 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004ba0:	00813083          	ld	ra,8(sp)
    80004ba4:	00013403          	ld	s0,0(sp)
    80004ba8:	01010113          	addi	sp,sp,16
    80004bac:	00008067          	ret

0000000080004bb0 <_ZN7WorkerC3runEv>:
    void run() override {
    80004bb0:	ff010113          	addi	sp,sp,-16
    80004bb4:	00113423          	sd	ra,8(sp)
    80004bb8:	00813023          	sd	s0,0(sp)
    80004bbc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004bc0:	00000593          	li	a1,0
    80004bc4:	00000097          	auipc	ra,0x0
    80004bc8:	9a4080e7          	jalr	-1628(ra) # 80004568 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004bcc:	00813083          	ld	ra,8(sp)
    80004bd0:	00013403          	ld	s0,0(sp)
    80004bd4:	01010113          	addi	sp,sp,16
    80004bd8:	00008067          	ret

0000000080004bdc <_ZN7WorkerD3runEv>:
    void run() override {
    80004bdc:	ff010113          	addi	sp,sp,-16
    80004be0:	00113423          	sd	ra,8(sp)
    80004be4:	00813023          	sd	s0,0(sp)
    80004be8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004bec:	00000593          	li	a1,0
    80004bf0:	00000097          	auipc	ra,0x0
    80004bf4:	af8080e7          	jalr	-1288(ra) # 800046e8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004bf8:	00813083          	ld	ra,8(sp)
    80004bfc:	00013403          	ld	s0,0(sp)
    80004c00:	01010113          	addi	sp,sp,16
    80004c04:	00008067          	ret

0000000080004c08 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80004c08:	00100793          	li	a5,1
    80004c0c:	06a7f863          	bgeu	a5,a0,80004c7c <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80004c10:	fe010113          	addi	sp,sp,-32
    80004c14:	00113c23          	sd	ra,24(sp)
    80004c18:	00813823          	sd	s0,16(sp)
    80004c1c:	00913423          	sd	s1,8(sp)
    80004c20:	01213023          	sd	s2,0(sp)
    80004c24:	02010413          	addi	s0,sp,32
    80004c28:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80004c2c:	00a00793          	li	a5,10
    80004c30:	02f577b3          	remu	a5,a0,a5
    80004c34:	02078e63          	beqz	a5,80004c70 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c38:	fff48513          	addi	a0,s1,-1
    80004c3c:	00000097          	auipc	ra,0x0
    80004c40:	fcc080e7          	jalr	-52(ra) # 80004c08 <_ZL9fibonaccim>
    80004c44:	00050913          	mv	s2,a0
    80004c48:	ffe48513          	addi	a0,s1,-2
    80004c4c:	00000097          	auipc	ra,0x0
    80004c50:	fbc080e7          	jalr	-68(ra) # 80004c08 <_ZL9fibonaccim>
    80004c54:	00a90533          	add	a0,s2,a0
}
    80004c58:	01813083          	ld	ra,24(sp)
    80004c5c:	01013403          	ld	s0,16(sp)
    80004c60:	00813483          	ld	s1,8(sp)
    80004c64:	00013903          	ld	s2,0(sp)
    80004c68:	02010113          	addi	sp,sp,32
    80004c6c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	d14080e7          	jalr	-748(ra) # 80001984 <_Z15thread_dispatchv>
    80004c78:	fc1ff06f          	j	80004c38 <_ZL9fibonaccim+0x30>
}
    80004c7c:	00008067          	ret

0000000080004c80 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004c80:	fe010113          	addi	sp,sp,-32
    80004c84:	00113c23          	sd	ra,24(sp)
    80004c88:	00813823          	sd	s0,16(sp)
    80004c8c:	00913423          	sd	s1,8(sp)
    80004c90:	01213023          	sd	s2,0(sp)
    80004c94:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c98:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80004c9c:	00c00793          	li	a5,12
    80004ca0:	0497e263          	bltu	a5,s1,80004ce4 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80004ca4:	00005517          	auipc	a0,0x5
    80004ca8:	a0450513          	addi	a0,a0,-1532 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	f28080e7          	jalr	-216(ra) # 80005bd4 <_Z11printStringPKc>
    80004cb4:	00000613          	li	a2,0
    80004cb8:	00a00593          	li	a1,10
    80004cbc:	00048513          	mv	a0,s1
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	0c0080e7          	jalr	192(ra) # 80005d80 <_Z8printIntiii>
    80004cc8:	00004517          	auipc	a0,0x4
    80004ccc:	72850513          	addi	a0,a0,1832 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004cd0:	00001097          	auipc	ra,0x1
    80004cd4:	f04080e7          	jalr	-252(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004cd8:	0014849b          	addiw	s1,s1,1
    80004cdc:	0ff4f493          	andi	s1,s1,255
    80004ce0:	fbdff06f          	j	80004c9c <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80004ce4:	00005517          	auipc	a0,0x5
    80004ce8:	9cc50513          	addi	a0,a0,-1588 # 800096b0 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80004cec:	00001097          	auipc	ra,0x1
    80004cf0:	ee8080e7          	jalr	-280(ra) # 80005bd4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004cf4:	00500313          	li	t1,5
    thread_dispatch();
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	c8c080e7          	jalr	-884(ra) # 80001984 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004d00:	01000513          	li	a0,16
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	f04080e7          	jalr	-252(ra) # 80004c08 <_ZL9fibonaccim>
    80004d0c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004d10:	00005517          	auipc	a0,0x5
    80004d14:	9b050513          	addi	a0,a0,-1616 # 800096c0 <_ZZ24debug_print_internal_intmE6digits+0x3a8>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	ebc080e7          	jalr	-324(ra) # 80005bd4 <_Z11printStringPKc>
    80004d20:	00000613          	li	a2,0
    80004d24:	00a00593          	li	a1,10
    80004d28:	0009051b          	sext.w	a0,s2
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	054080e7          	jalr	84(ra) # 80005d80 <_Z8printIntiii>
    80004d34:	00004517          	auipc	a0,0x4
    80004d38:	6bc50513          	addi	a0,a0,1724 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	e98080e7          	jalr	-360(ra) # 80005bd4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80004d44:	00f00793          	li	a5,15
    80004d48:	0497e263          	bltu	a5,s1,80004d8c <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80004d4c:	00005517          	auipc	a0,0x5
    80004d50:	95c50513          	addi	a0,a0,-1700 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x390>
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	e80080e7          	jalr	-384(ra) # 80005bd4 <_Z11printStringPKc>
    80004d5c:	00000613          	li	a2,0
    80004d60:	00a00593          	li	a1,10
    80004d64:	00048513          	mv	a0,s1
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	018080e7          	jalr	24(ra) # 80005d80 <_Z8printIntiii>
    80004d70:	00004517          	auipc	a0,0x4
    80004d74:	68050513          	addi	a0,a0,1664 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	e5c080e7          	jalr	-420(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d80:	0014849b          	addiw	s1,s1,1
    80004d84:	0ff4f493          	andi	s1,s1,255
    80004d88:	fbdff06f          	j	80004d44 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80004d8c:	00005517          	auipc	a0,0x5
    80004d90:	94450513          	addi	a0,a0,-1724 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	e40080e7          	jalr	-448(ra) # 80005bd4 <_Z11printStringPKc>
    finishedD = true;
    80004d9c:	00100793          	li	a5,1
    80004da0:	00007717          	auipc	a4,0x7
    80004da4:	daf70a23          	sb	a5,-588(a4) # 8000bb54 <_ZL9finishedD>
    thread_dispatch();
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	bdc080e7          	jalr	-1060(ra) # 80001984 <_Z15thread_dispatchv>
}
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	00013903          	ld	s2,0(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00113c23          	sd	ra,24(sp)
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00913423          	sd	s1,8(sp)
    80004dd8:	01213023          	sd	s2,0(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004de0:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80004de4:	00200793          	li	a5,2
    80004de8:	0497e263          	bltu	a5,s1,80004e2c <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80004dec:	00005517          	auipc	a0,0x5
    80004df0:	8f450513          	addi	a0,a0,-1804 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	de0080e7          	jalr	-544(ra) # 80005bd4 <_Z11printStringPKc>
    80004dfc:	00000613          	li	a2,0
    80004e00:	00a00593          	li	a1,10
    80004e04:	00048513          	mv	a0,s1
    80004e08:	00001097          	auipc	ra,0x1
    80004e0c:	f78080e7          	jalr	-136(ra) # 80005d80 <_Z8printIntiii>
    80004e10:	00004517          	auipc	a0,0x4
    80004e14:	5e050513          	addi	a0,a0,1504 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	dbc080e7          	jalr	-580(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e20:	0014849b          	addiw	s1,s1,1
    80004e24:	0ff4f493          	andi	s1,s1,255
    80004e28:	fbdff06f          	j	80004de4 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80004e2c:	00005517          	auipc	a0,0x5
    80004e30:	8bc50513          	addi	a0,a0,-1860 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x3d0>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	da0080e7          	jalr	-608(ra) # 80005bd4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e3c:	00700313          	li	t1,7
    thread_dispatch();
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	b44080e7          	jalr	-1212(ra) # 80001984 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e48:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004e4c:	00005517          	auipc	a0,0x5
    80004e50:	8ac50513          	addi	a0,a0,-1876 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x3e0>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	d80080e7          	jalr	-640(ra) # 80005bd4 <_Z11printStringPKc>
    80004e5c:	00000613          	li	a2,0
    80004e60:	00a00593          	li	a1,10
    80004e64:	0009051b          	sext.w	a0,s2
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	f18080e7          	jalr	-232(ra) # 80005d80 <_Z8printIntiii>
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	58050513          	addi	a0,a0,1408 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	d5c080e7          	jalr	-676(ra) # 80005bd4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004e80:	00c00513          	li	a0,12
    80004e84:	00000097          	auipc	ra,0x0
    80004e88:	d84080e7          	jalr	-636(ra) # 80004c08 <_ZL9fibonaccim>
    80004e8c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e90:	00005517          	auipc	a0,0x5
    80004e94:	87050513          	addi	a0,a0,-1936 # 80009700 <_ZZ24debug_print_internal_intmE6digits+0x3e8>
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	d3c080e7          	jalr	-708(ra) # 80005bd4 <_Z11printStringPKc>
    80004ea0:	00000613          	li	a2,0
    80004ea4:	00a00593          	li	a1,10
    80004ea8:	0009051b          	sext.w	a0,s2
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	ed4080e7          	jalr	-300(ra) # 80005d80 <_Z8printIntiii>
    80004eb4:	00004517          	auipc	a0,0x4
    80004eb8:	53c50513          	addi	a0,a0,1340 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	d18080e7          	jalr	-744(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ec4:	00500793          	li	a5,5
    80004ec8:	0497e263          	bltu	a5,s1,80004f0c <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80004ecc:	00005517          	auipc	a0,0x5
    80004ed0:	81450513          	addi	a0,a0,-2028 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80004ed4:	00001097          	auipc	ra,0x1
    80004ed8:	d00080e7          	jalr	-768(ra) # 80005bd4 <_Z11printStringPKc>
    80004edc:	00000613          	li	a2,0
    80004ee0:	00a00593          	li	a1,10
    80004ee4:	00048513          	mv	a0,s1
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	e98080e7          	jalr	-360(ra) # 80005d80 <_Z8printIntiii>
    80004ef0:	00004517          	auipc	a0,0x4
    80004ef4:	50050513          	addi	a0,a0,1280 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	cdc080e7          	jalr	-804(ra) # 80005bd4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004f00:	0014849b          	addiw	s1,s1,1
    80004f04:	0ff4f493          	andi	s1,s1,255
    80004f08:	fbdff06f          	j	80004ec4 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    80004f0c:	00005517          	auipc	a0,0x5
    80004f10:	80450513          	addi	a0,a0,-2044 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3f8>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	cc0080e7          	jalr	-832(ra) # 80005bd4 <_Z11printStringPKc>
    finishedC = true;
    80004f1c:	00100793          	li	a5,1
    80004f20:	00007717          	auipc	a4,0x7
    80004f24:	c2f70aa3          	sb	a5,-971(a4) # 8000bb55 <_ZL9finishedC>
    thread_dispatch();
    80004f28:	ffffd097          	auipc	ra,0xffffd
    80004f2c:	a5c080e7          	jalr	-1444(ra) # 80001984 <_Z15thread_dispatchv>
}
    80004f30:	01813083          	ld	ra,24(sp)
    80004f34:	01013403          	ld	s0,16(sp)
    80004f38:	00813483          	ld	s1,8(sp)
    80004f3c:	00013903          	ld	s2,0(sp)
    80004f40:	02010113          	addi	sp,sp,32
    80004f44:	00008067          	ret

0000000080004f48 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00113c23          	sd	ra,24(sp)
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	01213023          	sd	s2,0(sp)
    80004f5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004f60:	00000913          	li	s2,0
    80004f64:	0380006f          	j	80004f9c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	a1c080e7          	jalr	-1508(ra) # 80001984 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f70:	00148493          	addi	s1,s1,1
    80004f74:	000027b7          	lui	a5,0x2
    80004f78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f7c:	0097ee63          	bltu	a5,s1,80004f98 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f80:	00000713          	li	a4,0
    80004f84:	000077b7          	lui	a5,0x7
    80004f88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f8c:	fce7eee3          	bltu	a5,a4,80004f68 <_ZL11workerBodyBPv+0x20>
    80004f90:	00170713          	addi	a4,a4,1
    80004f94:	ff1ff06f          	j	80004f84 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004f98:	00190913          	addi	s2,s2,1
    80004f9c:	00f00793          	li	a5,15
    80004fa0:	0527e063          	bltu	a5,s2,80004fe0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004fa4:	00004517          	auipc	a0,0x4
    80004fa8:	77c50513          	addi	a0,a0,1916 # 80009720 <_ZZ24debug_print_internal_intmE6digits+0x408>
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	c28080e7          	jalr	-984(ra) # 80005bd4 <_Z11printStringPKc>
    80004fb4:	00000613          	li	a2,0
    80004fb8:	00a00593          	li	a1,10
    80004fbc:	0009051b          	sext.w	a0,s2
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	dc0080e7          	jalr	-576(ra) # 80005d80 <_Z8printIntiii>
    80004fc8:	00004517          	auipc	a0,0x4
    80004fcc:	42850513          	addi	a0,a0,1064 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	c04080e7          	jalr	-1020(ra) # 80005bd4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fd8:	00000493          	li	s1,0
    80004fdc:	f99ff06f          	j	80004f74 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	74850513          	addi	a0,a0,1864 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x410>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	bec080e7          	jalr	-1044(ra) # 80005bd4 <_Z11printStringPKc>
    finishedB = true;
    80004ff0:	00100793          	li	a5,1
    80004ff4:	00007717          	auipc	a4,0x7
    80004ff8:	b6f70123          	sb	a5,-1182(a4) # 8000bb56 <_ZL9finishedB>
    thread_dispatch();
    80004ffc:	ffffd097          	auipc	ra,0xffffd
    80005000:	988080e7          	jalr	-1656(ra) # 80001984 <_Z15thread_dispatchv>
}
    80005004:	01813083          	ld	ra,24(sp)
    80005008:	01013403          	ld	s0,16(sp)
    8000500c:	00813483          	ld	s1,8(sp)
    80005010:	00013903          	ld	s2,0(sp)
    80005014:	02010113          	addi	sp,sp,32
    80005018:	00008067          	ret

000000008000501c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000501c:	fe010113          	addi	sp,sp,-32
    80005020:	00113c23          	sd	ra,24(sp)
    80005024:	00813823          	sd	s0,16(sp)
    80005028:	00913423          	sd	s1,8(sp)
    8000502c:	01213023          	sd	s2,0(sp)
    80005030:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005034:	00000913          	li	s2,0
    80005038:	0380006f          	j	80005070 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	948080e7          	jalr	-1720(ra) # 80001984 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005044:	00148493          	addi	s1,s1,1
    80005048:	000027b7          	lui	a5,0x2
    8000504c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005050:	0097ee63          	bltu	a5,s1,8000506c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005054:	00000713          	li	a4,0
    80005058:	000077b7          	lui	a5,0x7
    8000505c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005060:	fce7eee3          	bltu	a5,a4,8000503c <_ZL11workerBodyAPv+0x20>
    80005064:	00170713          	addi	a4,a4,1
    80005068:	ff1ff06f          	j	80005058 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000506c:	00190913          	addi	s2,s2,1
    80005070:	00900793          	li	a5,9
    80005074:	0527e063          	bltu	a5,s2,800050b4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005078:	00004517          	auipc	a0,0x4
    8000507c:	6c050513          	addi	a0,a0,1728 # 80009738 <_ZZ24debug_print_internal_intmE6digits+0x420>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	b54080e7          	jalr	-1196(ra) # 80005bd4 <_Z11printStringPKc>
    80005088:	00000613          	li	a2,0
    8000508c:	00a00593          	li	a1,10
    80005090:	0009051b          	sext.w	a0,s2
    80005094:	00001097          	auipc	ra,0x1
    80005098:	cec080e7          	jalr	-788(ra) # 80005d80 <_Z8printIntiii>
    8000509c:	00004517          	auipc	a0,0x4
    800050a0:	35450513          	addi	a0,a0,852 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	b30080e7          	jalr	-1232(ra) # 80005bd4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050ac:	00000493          	li	s1,0
    800050b0:	f99ff06f          	j	80005048 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800050b4:	00004517          	auipc	a0,0x4
    800050b8:	65c50513          	addi	a0,a0,1628 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x3f8>
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	b18080e7          	jalr	-1256(ra) # 80005bd4 <_Z11printStringPKc>
    finishedA = true;
    800050c4:	00100793          	li	a5,1
    800050c8:	00007717          	auipc	a4,0x7
    800050cc:	a8f707a3          	sb	a5,-1393(a4) # 8000bb57 <_ZL9finishedA>
}
    800050d0:	01813083          	ld	ra,24(sp)
    800050d4:	01013403          	ld	s0,16(sp)
    800050d8:	00813483          	ld	s1,8(sp)
    800050dc:	00013903          	ld	s2,0(sp)
    800050e0:	02010113          	addi	sp,sp,32
    800050e4:	00008067          	ret

00000000800050e8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800050e8:	fd010113          	addi	sp,sp,-48
    800050ec:	02113423          	sd	ra,40(sp)
    800050f0:	02813023          	sd	s0,32(sp)
    800050f4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050f8:	00000613          	li	a2,0
    800050fc:	00000597          	auipc	a1,0x0
    80005100:	f2058593          	addi	a1,a1,-224 # 8000501c <_ZL11workerBodyAPv>
    80005104:	fd040513          	addi	a0,s0,-48
    80005108:	ffffc097          	auipc	ra,0xffffc
    8000510c:	7cc080e7          	jalr	1996(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005110:	00004517          	auipc	a0,0x4
    80005114:	63050513          	addi	a0,a0,1584 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x428>
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	abc080e7          	jalr	-1348(ra) # 80005bd4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005120:	00000613          	li	a2,0
    80005124:	00000597          	auipc	a1,0x0
    80005128:	e2458593          	addi	a1,a1,-476 # 80004f48 <_ZL11workerBodyBPv>
    8000512c:	fd840513          	addi	a0,s0,-40
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	7a4080e7          	jalr	1956(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	62050513          	addi	a0,a0,1568 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x440>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	a94080e7          	jalr	-1388(ra) # 80005bd4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005148:	00000613          	li	a2,0
    8000514c:	00000597          	auipc	a1,0x0
    80005150:	c7c58593          	addi	a1,a1,-900 # 80004dc8 <_ZL11workerBodyCPv>
    80005154:	fe040513          	addi	a0,s0,-32
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	77c080e7          	jalr	1916(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005160:	00004517          	auipc	a0,0x4
    80005164:	61050513          	addi	a0,a0,1552 # 80009770 <_ZZ24debug_print_internal_intmE6digits+0x458>
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	a6c080e7          	jalr	-1428(ra) # 80005bd4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005170:	00000613          	li	a2,0
    80005174:	00000597          	auipc	a1,0x0
    80005178:	b0c58593          	addi	a1,a1,-1268 # 80004c80 <_ZL11workerBodyDPv>
    8000517c:	fe840513          	addi	a0,s0,-24
    80005180:	ffffc097          	auipc	ra,0xffffc
    80005184:	754080e7          	jalr	1876(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005188:	00004517          	auipc	a0,0x4
    8000518c:	60050513          	addi	a0,a0,1536 # 80009788 <_ZZ24debug_print_internal_intmE6digits+0x470>
    80005190:	00001097          	auipc	ra,0x1
    80005194:	a44080e7          	jalr	-1468(ra) # 80005bd4 <_Z11printStringPKc>
    80005198:	00c0006f          	j	800051a4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000519c:	ffffc097          	auipc	ra,0xffffc
    800051a0:	7e8080e7          	jalr	2024(ra) # 80001984 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800051a4:	00007797          	auipc	a5,0x7
    800051a8:	9b378793          	addi	a5,a5,-1613 # 8000bb57 <_ZL9finishedA>
    800051ac:	0007c783          	lbu	a5,0(a5)
    800051b0:	0ff7f793          	andi	a5,a5,255
    800051b4:	fe0784e3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    800051b8:	00007797          	auipc	a5,0x7
    800051bc:	99e78793          	addi	a5,a5,-1634 # 8000bb56 <_ZL9finishedB>
    800051c0:	0007c783          	lbu	a5,0(a5)
    800051c4:	0ff7f793          	andi	a5,a5,255
    800051c8:	fc078ae3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    800051cc:	00007797          	auipc	a5,0x7
    800051d0:	98978793          	addi	a5,a5,-1655 # 8000bb55 <_ZL9finishedC>
    800051d4:	0007c783          	lbu	a5,0(a5)
    800051d8:	0ff7f793          	andi	a5,a5,255
    800051dc:	fc0780e3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    800051e0:	00007797          	auipc	a5,0x7
    800051e4:	97478793          	addi	a5,a5,-1676 # 8000bb54 <_ZL9finishedD>
    800051e8:	0007c783          	lbu	a5,0(a5)
    800051ec:	0ff7f793          	andi	a5,a5,255
    800051f0:	fa0786e3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800051f4:	02813083          	ld	ra,40(sp)
    800051f8:	02013403          	ld	s0,32(sp)
    800051fc:	03010113          	addi	sp,sp,48
    80005200:	00008067          	ret

0000000080005204 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005204:	fd010113          	addi	sp,sp,-48
    80005208:	02113423          	sd	ra,40(sp)
    8000520c:	02813023          	sd	s0,32(sp)
    80005210:	00913c23          	sd	s1,24(sp)
    80005214:	01213823          	sd	s2,16(sp)
    80005218:	01313423          	sd	s3,8(sp)
    8000521c:	03010413          	addi	s0,sp,48
    80005220:	00050993          	mv	s3,a0
    80005224:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005228:	00000913          	li	s2,0
    8000522c:	00c0006f          	j	80005238 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	754080e7          	jalr	1876(ra) # 80001984 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80005238:	ffffd097          	auipc	ra,0xffffd
    8000523c:	9cc080e7          	jalr	-1588(ra) # 80001c04 <_Z4getcv>
    80005240:	0005059b          	sext.w	a1,a0
    80005244:	01b00793          	li	a5,27
    80005248:	02f58a63          	beq	a1,a5,8000527c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000524c:	0084b503          	ld	a0,8(s1)
    80005250:	00001097          	auipc	ra,0x1
    80005254:	328080e7          	jalr	808(ra) # 80006578 <_ZN9BufferCPP3putEi>
        i++;
    80005258:	0019079b          	addiw	a5,s2,1
    8000525c:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80005260:	0004a683          	lw	a3,0(s1)
    80005264:	0026971b          	slliw	a4,a3,0x2
    80005268:	00d7073b          	addw	a4,a4,a3
    8000526c:	0017169b          	slliw	a3,a4,0x1
    80005270:	02d7e7bb          	remw	a5,a5,a3
    80005274:	fc0792e3          	bnez	a5,80005238 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005278:	fb9ff06f          	j	80005230 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    8000527c:	00100793          	li	a5,1
    80005280:	00007717          	auipc	a4,0x7
    80005284:	8cf72c23          	sw	a5,-1832(a4) # 8000bb58 <_ZL9threadEnd>
    td->buffer->put('!');
    80005288:	0209b783          	ld	a5,32(s3)
    8000528c:	02100593          	li	a1,33
    80005290:	0087b503          	ld	a0,8(a5)
    80005294:	00001097          	auipc	ra,0x1
    80005298:	2e4080e7          	jalr	740(ra) # 80006578 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000529c:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    800052a0:	0087b503          	ld	a0,8(a5)
    800052a4:	00050663          	beqz	a0,800052b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
        return sem_signal(myHandle);
    800052a8:	ffffd097          	auipc	ra,0xffffd
    800052ac:	8bc080e7          	jalr	-1860(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
}
    800052b0:	02813083          	ld	ra,40(sp)
    800052b4:	02013403          	ld	s0,32(sp)
    800052b8:	01813483          	ld	s1,24(sp)
    800052bc:	01013903          	ld	s2,16(sp)
    800052c0:	00813983          	ld	s3,8(sp)
    800052c4:	03010113          	addi	sp,sp,48
    800052c8:	00008067          	ret

00000000800052cc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800052cc:	fe010113          	addi	sp,sp,-32
    800052d0:	00113c23          	sd	ra,24(sp)
    800052d4:	00813823          	sd	s0,16(sp)
    800052d8:	00913423          	sd	s1,8(sp)
    800052dc:	01213023          	sd	s2,0(sp)
    800052e0:	02010413          	addi	s0,sp,32
    800052e4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800052e8:	00000913          	li	s2,0
    800052ec:	00c0006f          	j	800052f8 <_ZN12ProducerSync8producerEPv+0x2c>
        thread_dispatch();
    800052f0:	ffffc097          	auipc	ra,0xffffc
    800052f4:	694080e7          	jalr	1684(ra) # 80001984 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800052f8:	00007797          	auipc	a5,0x7
    800052fc:	86078793          	addi	a5,a5,-1952 # 8000bb58 <_ZL9threadEnd>
    80005300:	0007a783          	lw	a5,0(a5)
    80005304:	0007879b          	sext.w	a5,a5
    80005308:	02079e63          	bnez	a5,80005344 <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    8000530c:	0004a583          	lw	a1,0(s1)
    80005310:	0305859b          	addiw	a1,a1,48
    80005314:	0084b503          	ld	a0,8(s1)
    80005318:	00001097          	auipc	ra,0x1
    8000531c:	260080e7          	jalr	608(ra) # 80006578 <_ZN9BufferCPP3putEi>
        i++;
    80005320:	0019079b          	addiw	a5,s2,1
    80005324:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80005328:	0004a683          	lw	a3,0(s1)
    8000532c:	0026971b          	slliw	a4,a3,0x2
    80005330:	00d7073b          	addw	a4,a4,a3
    80005334:	0017169b          	slliw	a3,a4,0x1
    80005338:	02d7e7bb          	remw	a5,a5,a3
    8000533c:	fa079ee3          	bnez	a5,800052f8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005340:	fb1ff06f          	j	800052f0 <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80005344:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80005348:	0087b503          	ld	a0,8(a5)
    8000534c:	00050663          	beqz	a0,80005358 <_ZN12ProducerSync8producerEPv+0x8c>
        return sem_signal(myHandle);
    80005350:	ffffd097          	auipc	ra,0xffffd
    80005354:	814080e7          	jalr	-2028(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
}
    80005358:	01813083          	ld	ra,24(sp)
    8000535c:	01013403          	ld	s0,16(sp)
    80005360:	00813483          	ld	s1,8(sp)
    80005364:	00013903          	ld	s2,0(sp)
    80005368:	02010113          	addi	sp,sp,32
    8000536c:	00008067          	ret

0000000080005370 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005370:	fd010113          	addi	sp,sp,-48
    80005374:	02113423          	sd	ra,40(sp)
    80005378:	02813023          	sd	s0,32(sp)
    8000537c:	00913c23          	sd	s1,24(sp)
    80005380:	01213823          	sd	s2,16(sp)
    80005384:	01313423          	sd	s3,8(sp)
    80005388:	01413023          	sd	s4,0(sp)
    8000538c:	03010413          	addi	s0,sp,48
    80005390:	00050993          	mv	s3,a0
    80005394:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005398:	00000a13          	li	s4,0
    8000539c:	01c0006f          	j	800053b8 <_ZN12ConsumerSync8consumerEPv+0x48>
        thread_dispatch();
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	5e4080e7          	jalr	1508(ra) # 80001984 <_Z15thread_dispatchv>
    800053a8:	0580006f          	j	80005400 <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    800053ac:	00a00513          	li	a0,10
    800053b0:	ffffd097          	auipc	ra,0xffffd
    800053b4:	8a4080e7          	jalr	-1884(ra) # 80001c54 <_Z4putcc>
    while (!threadEnd) {
    800053b8:	00006797          	auipc	a5,0x6
    800053bc:	7a078793          	addi	a5,a5,1952 # 8000bb58 <_ZL9threadEnd>
    800053c0:	0007a783          	lw	a5,0(a5)
    800053c4:	0007879b          	sext.w	a5,a5
    800053c8:	04079463          	bnez	a5,80005410 <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    800053cc:	00893503          	ld	a0,8(s2)
    800053d0:	00001097          	auipc	ra,0x1
    800053d4:	258080e7          	jalr	600(ra) # 80006628 <_ZN9BufferCPP3getEv>
        i++;
    800053d8:	001a049b          	addiw	s1,s4,1
    800053dc:	00048a1b          	sext.w	s4,s1
        putc(key);
    800053e0:	0ff57513          	andi	a0,a0,255
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	870080e7          	jalr	-1936(ra) # 80001c54 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800053ec:	00092703          	lw	a4,0(s2)
    800053f0:	0027179b          	slliw	a5,a4,0x2
    800053f4:	00e787bb          	addw	a5,a5,a4
    800053f8:	02f4e7bb          	remw	a5,s1,a5
    800053fc:	fa0782e3          	beqz	a5,800053a0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005400:	05000793          	li	a5,80
    80005404:	02f4e4bb          	remw	s1,s1,a5
    80005408:	fa0498e3          	bnez	s1,800053b8 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000540c:	fa1ff06f          	j	800053ac <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    80005410:	0209b783          	ld	a5,32(s3)
    80005414:	0087b503          	ld	a0,8(a5)
    80005418:	00001097          	auipc	ra,0x1
    8000541c:	2bc080e7          	jalr	700(ra) # 800066d4 <_ZN9BufferCPP6getCntEv>
    80005420:	02a05263          	blez	a0,80005444 <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    80005424:	0209b783          	ld	a5,32(s3)
    80005428:	0087b503          	ld	a0,8(a5)
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	1fc080e7          	jalr	508(ra) # 80006628 <_ZN9BufferCPP3getEv>
    static void putc(char c) { putc(c); };
    80005434:	0ff57513          	andi	a0,a0,255
    80005438:	fffff097          	auipc	ra,0xfffff
    8000543c:	cb8080e7          	jalr	-840(ra) # 800040f0 <_ZN7Console4putcEc>
    80005440:	fd1ff06f          	j	80005410 <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    80005444:	01093783          	ld	a5,16(s2)
        if (myHandle == nullptr) {
    80005448:	0087b503          	ld	a0,8(a5)
    8000544c:	00050663          	beqz	a0,80005458 <_ZN12ConsumerSync8consumerEPv+0xe8>
        return sem_signal(myHandle);
    80005450:	ffffc097          	auipc	ra,0xffffc
    80005454:	714080e7          	jalr	1812(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
}
    80005458:	02813083          	ld	ra,40(sp)
    8000545c:	02013403          	ld	s0,32(sp)
    80005460:	01813483          	ld	s1,24(sp)
    80005464:	01013903          	ld	s2,16(sp)
    80005468:	00813983          	ld	s3,8(sp)
    8000546c:	00013a03          	ld	s4,0(sp)
    80005470:	03010113          	addi	sp,sp,48
    80005474:	00008067          	ret

0000000080005478 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005478:	f9010113          	addi	sp,sp,-112
    8000547c:	06113423          	sd	ra,104(sp)
    80005480:	06813023          	sd	s0,96(sp)
    80005484:	04913c23          	sd	s1,88(sp)
    80005488:	05213823          	sd	s2,80(sp)
    8000548c:	05313423          	sd	s3,72(sp)
    80005490:	05413023          	sd	s4,64(sp)
    80005494:	03513c23          	sd	s5,56(sp)
    80005498:	03613823          	sd	s6,48(sp)
    8000549c:	03713423          	sd	s7,40(sp)
    800054a0:	03813023          	sd	s8,32(sp)
    800054a4:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800054a8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800054ac:	00004517          	auipc	a0,0x4
    800054b0:	3a450513          	addi	a0,a0,932 # 80009850 <_ZTV8Consumer+0x28>
    800054b4:	00000097          	auipc	ra,0x0
    800054b8:	720080e7          	jalr	1824(ra) # 80005bd4 <_Z11printStringPKc>
    getString(input, 30);
    800054bc:	01e00593          	li	a1,30
    800054c0:	f9040513          	addi	a0,s0,-112
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	798080e7          	jalr	1944(ra) # 80005c5c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800054cc:	f9040513          	addi	a0,s0,-112
    800054d0:	00001097          	auipc	ra,0x1
    800054d4:	860080e7          	jalr	-1952(ra) # 80005d30 <_Z11stringToIntPKc>
    800054d8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800054dc:	00004517          	auipc	a0,0x4
    800054e0:	39450513          	addi	a0,a0,916 # 80009870 <_ZTV8Consumer+0x48>
    800054e4:	00000097          	auipc	ra,0x0
    800054e8:	6f0080e7          	jalr	1776(ra) # 80005bd4 <_Z11printStringPKc>
    getString(input, 30);
    800054ec:	01e00593          	li	a1,30
    800054f0:	f9040513          	addi	a0,s0,-112
    800054f4:	00000097          	auipc	ra,0x0
    800054f8:	768080e7          	jalr	1896(ra) # 80005c5c <_Z9getStringPci>
    n = stringToInt(input);
    800054fc:	f9040513          	addi	a0,s0,-112
    80005500:	00001097          	auipc	ra,0x1
    80005504:	830080e7          	jalr	-2000(ra) # 80005d30 <_Z11stringToIntPKc>
    80005508:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000550c:	00004517          	auipc	a0,0x4
    80005510:	38450513          	addi	a0,a0,900 # 80009890 <_ZTV8Consumer+0x68>
    80005514:	00000097          	auipc	ra,0x0
    80005518:	6c0080e7          	jalr	1728(ra) # 80005bd4 <_Z11printStringPKc>
    8000551c:	00000613          	li	a2,0
    80005520:	00a00593          	li	a1,10
    80005524:	00090513          	mv	a0,s2
    80005528:	00001097          	auipc	ra,0x1
    8000552c:	858080e7          	jalr	-1960(ra) # 80005d80 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005530:	00004517          	auipc	a0,0x4
    80005534:	37850513          	addi	a0,a0,888 # 800098a8 <_ZTV8Consumer+0x80>
    80005538:	00000097          	auipc	ra,0x0
    8000553c:	69c080e7          	jalr	1692(ra) # 80005bd4 <_Z11printStringPKc>
    80005540:	00000613          	li	a2,0
    80005544:	00a00593          	li	a1,10
    80005548:	00048513          	mv	a0,s1
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	834080e7          	jalr	-1996(ra) # 80005d80 <_Z8printIntiii>
    printString(".\n");
    80005554:	00004517          	auipc	a0,0x4
    80005558:	36c50513          	addi	a0,a0,876 # 800098c0 <_ZTV8Consumer+0x98>
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	678080e7          	jalr	1656(ra) # 80005bd4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005564:	0324c463          	blt	s1,s2,8000558c <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80005568:	03205c63          	blez	s2,800055a0 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    8000556c:	03800513          	li	a0,56
    80005570:	ffffd097          	auipc	ra,0xffffd
    80005574:	b80080e7          	jalr	-1152(ra) # 800020f0 <_Znwm>
    80005578:	00050a93          	mv	s5,a0
    8000557c:	00048593          	mv	a1,s1
    80005580:	00001097          	auipc	ra,0x1
    80005584:	e44080e7          	jalr	-444(ra) # 800063c4 <_ZN9BufferCPPC1Ei>
    80005588:	0300006f          	j	800055b8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000558c:	00004517          	auipc	a0,0x4
    80005590:	33c50513          	addi	a0,a0,828 # 800098c8 <_ZTV8Consumer+0xa0>
    80005594:	00000097          	auipc	ra,0x0
    80005598:	640080e7          	jalr	1600(ra) # 80005bd4 <_Z11printStringPKc>
        return;
    8000559c:	0140006f          	j	800055b0 <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800055a0:	00004517          	auipc	a0,0x4
    800055a4:	36850513          	addi	a0,a0,872 # 80009908 <_ZTV8Consumer+0xe0>
    800055a8:	00000097          	auipc	ra,0x0
    800055ac:	62c080e7          	jalr	1580(ra) # 80005bd4 <_Z11printStringPKc>
        return;
    800055b0:	000b8113          	mv	sp,s7
    800055b4:	3340006f          	j	800058e8 <_Z29producerConsumer_CPP_Sync_APIv+0x470>
    waitForAll = new Semaphore(0);
    800055b8:	01000513          	li	a0,16
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	b34080e7          	jalr	-1228(ra) # 800020f0 <_Znwm>
    800055c4:	00050493          	mv	s1,a0
    Semaphore(unsigned init = 1) {
    800055c8:	00004797          	auipc	a5,0x4
    800055cc:	20078793          	addi	a5,a5,512 # 800097c8 <_ZTV9Semaphore+0x10>
    800055d0:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800055d4:	00000593          	li	a1,0
    800055d8:	00850513          	addi	a0,a0,8
    800055dc:	ffffc097          	auipc	ra,0xffffc
    800055e0:	3f4080e7          	jalr	1012(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    800055e4:	00050463          	beqz	a0,800055ec <_Z29producerConsumer_CPP_Sync_APIv+0x174>
            myHandle = nullptr;
    800055e8:	0004b423          	sd	zero,8(s1)
    800055ec:	00006797          	auipc	a5,0x6
    800055f0:	5697ba23          	sd	s1,1396(a5) # 8000bb60 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800055f4:	00391793          	slli	a5,s2,0x3
    800055f8:	00f78793          	addi	a5,a5,15
    800055fc:	ff07f793          	andi	a5,a5,-16
    80005600:	40f10133          	sub	sp,sp,a5
    80005604:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005608:	0019079b          	addiw	a5,s2,1
    8000560c:	00179713          	slli	a4,a5,0x1
    80005610:	00f70733          	add	a4,a4,a5
    80005614:	00371793          	slli	a5,a4,0x3
    80005618:	00f78793          	addi	a5,a5,15
    8000561c:	ff07f793          	andi	a5,a5,-16
    80005620:	40f10133          	sub	sp,sp,a5
    80005624:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005628:	00191c13          	slli	s8,s2,0x1
    8000562c:	012c0733          	add	a4,s8,s2
    80005630:	00371793          	slli	a5,a4,0x3
    80005634:	00fa07b3          	add	a5,s4,a5
    80005638:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000563c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005640:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005644:	02800513          	li	a0,40
    80005648:	ffffd097          	auipc	ra,0xffffd
    8000564c:	aa8080e7          	jalr	-1368(ra) # 800020f0 <_Znwm>
    80005650:	00050b13          	mv	s6,a0
    80005654:	012c0c33          	add	s8,s8,s2
    80005658:	003c1793          	slli	a5,s8,0x3
    8000565c:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80005660:	00053423          	sd	zero,8(a0)
    80005664:	00053823          	sd	zero,16(a0)
    80005668:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000566c:	00004717          	auipc	a4,0x4
    80005670:	69c70713          	addi	a4,a4,1692 # 80009d08 <_ZTV12ConsumerSync+0x10>
    80005674:	00e53023          	sd	a4,0(a0)
    80005678:	02f53023          	sd	a5,32(a0)
        debug_print("CPP API: Starting thread\n");
    8000567c:	00004517          	auipc	a0,0x4
    80005680:	2bc50513          	addi	a0,a0,700 # 80009938 <_ZTV8Consumer+0x110>
    80005684:	ffffd097          	auipc	ra,0xffffd
    80005688:	b84080e7          	jalr	-1148(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    8000568c:	00004517          	auipc	a0,0x4
    80005690:	2cc50513          	addi	a0,a0,716 # 80009958 <_ZTV8Consumer+0x130>
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	b74080e7          	jalr	-1164(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)this);
    8000569c:	000b0513          	mv	a0,s6
    800056a0:	ffffd097          	auipc	ra,0xffffd
    800056a4:	b50080e7          	jalr	-1200(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\n");
    800056a8:	00004517          	auipc	a0,0x4
    800056ac:	d4850513          	addi	a0,a0,-696 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    800056b0:	ffffd097          	auipc	ra,0xffffd
    800056b4:	b58080e7          	jalr	-1192(ra) # 80002208 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    800056b8:	000b0613          	mv	a2,s6
    800056bc:	ffffc597          	auipc	a1,0xffffc
    800056c0:	e1458593          	addi	a1,a1,-492 # 800014d0 <_ZN6Thread9body_execEPv>
    800056c4:	008b0513          	addi	a0,s6,8
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	20c080e7          	jalr	524(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    800056d0:	00051e63          	bnez	a0,800056ec <_Z29producerConsumer_CPP_Sync_APIv+0x274>
        debug_print("CPP API: Thread started\n");
    800056d4:	00004517          	auipc	a0,0x4
    800056d8:	29c50513          	addi	a0,a0,668 # 80009970 <_ZTV8Consumer+0x148>
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	b2c080e7          	jalr	-1236(ra) # 80002208 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    800056e4:	00000493          	li	s1,0
    800056e8:	0c80006f          	j	800057b0 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
            myHandle = nullptr;
    800056ec:	000b3423          	sd	zero,8(s6)
            return -1;
    800056f0:	ff5ff06f          	j	800056e4 <_Z29producerConsumer_CPP_Sync_APIv+0x26c>
            threads[i] = new ProducerSync(data+i);
    800056f4:	02800513          	li	a0,40
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	9f8080e7          	jalr	-1544(ra) # 800020f0 <_Znwm>
    80005700:	00149713          	slli	a4,s1,0x1
    80005704:	00970733          	add	a4,a4,s1
    80005708:	00371793          	slli	a5,a4,0x3
    8000570c:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80005710:	00053423          	sd	zero,8(a0)
    80005714:	00053823          	sd	zero,16(a0)
    80005718:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000571c:	00004717          	auipc	a4,0x4
    80005720:	5c470713          	addi	a4,a4,1476 # 80009ce0 <_ZTV12ProducerSync+0x10>
    80005724:	00e53023          	sd	a4,0(a0)
    80005728:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    8000572c:	00349793          	slli	a5,s1,0x3
    80005730:	00f987b3          	add	a5,s3,a5
    80005734:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80005738:	00349793          	slli	a5,s1,0x3
    8000573c:	00f987b3          	add	a5,s3,a5
    80005740:	0007bc03          	ld	s8,0(a5)
        debug_print("CPP API: Starting thread\n");
    80005744:	00004517          	auipc	a0,0x4
    80005748:	1f450513          	addi	a0,a0,500 # 80009938 <_ZTV8Consumer+0x110>
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	abc080e7          	jalr	-1348(ra) # 80002208 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80005754:	00004517          	auipc	a0,0x4
    80005758:	20450513          	addi	a0,a0,516 # 80009958 <_ZTV8Consumer+0x130>
    8000575c:	ffffd097          	auipc	ra,0xffffd
    80005760:	aac080e7          	jalr	-1364(ra) # 80002208 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80005764:	000c0513          	mv	a0,s8
    80005768:	ffffd097          	auipc	ra,0xffffd
    8000576c:	a88080e7          	jalr	-1400(ra) # 800021f0 <_Z11debug_printm>
        debug_print("\n");
    80005770:	00004517          	auipc	a0,0x4
    80005774:	c8050513          	addi	a0,a0,-896 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80005778:	ffffd097          	auipc	ra,0xffffd
    8000577c:	a90080e7          	jalr	-1392(ra) # 80002208 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80005780:	000c0613          	mv	a2,s8
    80005784:	ffffc597          	auipc	a1,0xffffc
    80005788:	d4c58593          	addi	a1,a1,-692 # 800014d0 <_ZN6Thread9body_execEPv>
    8000578c:	008c0513          	addi	a0,s8,8
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	144080e7          	jalr	324(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    80005798:	08051863          	bnez	a0,80005828 <_Z29producerConsumer_CPP_Sync_APIv+0x3b0>
        debug_print("CPP API: Thread started\n");
    8000579c:	00004517          	auipc	a0,0x4
    800057a0:	1d450513          	addi	a0,a0,468 # 80009970 <_ZTV8Consumer+0x148>
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	a64080e7          	jalr	-1436(ra) # 80002208 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    800057ac:	0014849b          	addiw	s1,s1,1
    800057b0:	0924d063          	bge	s1,s2,80005830 <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
        data[i].id = i;
    800057b4:	00149713          	slli	a4,s1,0x1
    800057b8:	00970733          	add	a4,a4,s1
    800057bc:	00371793          	slli	a5,a4,0x3
    800057c0:	00fa07b3          	add	a5,s4,a5
    800057c4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800057c8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800057cc:	00006717          	auipc	a4,0x6
    800057d0:	39470713          	addi	a4,a4,916 # 8000bb60 <_ZL10waitForAll>
    800057d4:	00073703          	ld	a4,0(a4)
    800057d8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800057dc:	f0904ce3          	bgtz	s1,800056f4 <_Z29producerConsumer_CPP_Sync_APIv+0x27c>
            threads[i] = new ProducerKeyboard(data+i);
    800057e0:	02800513          	li	a0,40
    800057e4:	ffffd097          	auipc	ra,0xffffd
    800057e8:	90c080e7          	jalr	-1780(ra) # 800020f0 <_Znwm>
    800057ec:	00149713          	slli	a4,s1,0x1
    800057f0:	00970733          	add	a4,a4,s1
    800057f4:	00371793          	slli	a5,a4,0x3
    800057f8:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800057fc:	00053423          	sd	zero,8(a0)
    80005800:	00053823          	sd	zero,16(a0)
    80005804:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005808:	00004717          	auipc	a4,0x4
    8000580c:	4b070713          	addi	a4,a4,1200 # 80009cb8 <_ZTV16ProducerKeyboard+0x10>
    80005810:	00e53023          	sd	a4,0(a0)
    80005814:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    80005818:	00349793          	slli	a5,s1,0x3
    8000581c:	00f987b3          	add	a5,s3,a5
    80005820:	00a7b023          	sd	a0,0(a5)
    80005824:	f15ff06f          	j	80005738 <_Z29producerConsumer_CPP_Sync_APIv+0x2c0>
            myHandle = nullptr;
    80005828:	000c3423          	sd	zero,8(s8)
            return -1;
    8000582c:	f81ff06f          	j	800057ac <_Z29producerConsumer_CPP_Sync_APIv+0x334>
        thread_dispatch();
    80005830:	ffffc097          	auipc	ra,0xffffc
    80005834:	154080e7          	jalr	340(ra) # 80001984 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005838:	00000493          	li	s1,0
    8000583c:	0080006f          	j	80005844 <_Z29producerConsumer_CPP_Sync_APIv+0x3cc>
    80005840:	0014849b          	addiw	s1,s1,1
    80005844:	02994263          	blt	s2,s1,80005868 <_Z29producerConsumer_CPP_Sync_APIv+0x3f0>
        waitForAll->wait();
    80005848:	00006797          	auipc	a5,0x6
    8000584c:	31878793          	addi	a5,a5,792 # 8000bb60 <_ZL10waitForAll>
    80005850:	0007b783          	ld	a5,0(a5)
        if (myHandle == nullptr) {
    80005854:	0087b503          	ld	a0,8(a5)
    80005858:	fe0504e3          	beqz	a0,80005840 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
        return sem_wait(myHandle);
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	2b8080e7          	jalr	696(ra) # 80001b14 <_Z8sem_waitP10_semaphore>
    80005864:	fddff06f          	j	80005840 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
    for (int i = 0; i < threadNum; i++) {
    80005868:	00000493          	li	s1,0
    8000586c:	0080006f          	j	80005874 <_Z29producerConsumer_CPP_Sync_APIv+0x3fc>
    80005870:	0014849b          	addiw	s1,s1,1
    80005874:	0324d263          	bge	s1,s2,80005898 <_Z29producerConsumer_CPP_Sync_APIv+0x420>
        delete threads[i];
    80005878:	00349793          	slli	a5,s1,0x3
    8000587c:	00f987b3          	add	a5,s3,a5
    80005880:	0007b503          	ld	a0,0(a5)
    80005884:	fe0506e3          	beqz	a0,80005870 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    80005888:	00053783          	ld	a5,0(a0)
    8000588c:	0087b783          	ld	a5,8(a5)
    80005890:	000780e7          	jalr	a5
    80005894:	fddff06f          	j	80005870 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    delete consumerThread;
    80005898:	000b0a63          	beqz	s6,800058ac <_Z29producerConsumer_CPP_Sync_APIv+0x434>
    8000589c:	000b3783          	ld	a5,0(s6)
    800058a0:	0087b783          	ld	a5,8(a5)
    800058a4:	000b0513          	mv	a0,s6
    800058a8:	000780e7          	jalr	a5
    delete waitForAll;
    800058ac:	00006797          	auipc	a5,0x6
    800058b0:	2b478793          	addi	a5,a5,692 # 8000bb60 <_ZL10waitForAll>
    800058b4:	0007b503          	ld	a0,0(a5)
    800058b8:	00050863          	beqz	a0,800058c8 <_Z29producerConsumer_CPP_Sync_APIv+0x450>
    800058bc:	00053783          	ld	a5,0(a0)
    800058c0:	0087b783          	ld	a5,8(a5)
    800058c4:	000780e7          	jalr	a5
    delete buffer;
    800058c8:	000a8e63          	beqz	s5,800058e4 <_Z29producerConsumer_CPP_Sync_APIv+0x46c>
    800058cc:	000a8513          	mv	a0,s5
    800058d0:	00001097          	auipc	ra,0x1
    800058d4:	eac080e7          	jalr	-340(ra) # 8000677c <_ZN9BufferCPPD1Ev>
    800058d8:	000a8513          	mv	a0,s5
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	894080e7          	jalr	-1900(ra) # 80002170 <_ZdlPv>
    800058e4:	000b8113          	mv	sp,s7

}
    800058e8:	f9040113          	addi	sp,s0,-112
    800058ec:	06813083          	ld	ra,104(sp)
    800058f0:	06013403          	ld	s0,96(sp)
    800058f4:	05813483          	ld	s1,88(sp)
    800058f8:	05013903          	ld	s2,80(sp)
    800058fc:	04813983          	ld	s3,72(sp)
    80005900:	04013a03          	ld	s4,64(sp)
    80005904:	03813a83          	ld	s5,56(sp)
    80005908:	03013b03          	ld	s6,48(sp)
    8000590c:	02813b83          	ld	s7,40(sp)
    80005910:	02013c03          	ld	s8,32(sp)
    80005914:	07010113          	addi	sp,sp,112
    80005918:	00008067          	ret
    8000591c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005920:	000a8513          	mv	a0,s5
    80005924:	ffffd097          	auipc	ra,0xffffd
    80005928:	84c080e7          	jalr	-1972(ra) # 80002170 <_ZdlPv>
    8000592c:	00048513          	mv	a0,s1
    80005930:	00007097          	auipc	ra,0x7
    80005934:	368080e7          	jalr	872(ra) # 8000cc98 <_Unwind_Resume>
    80005938:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000593c:	00048513          	mv	a0,s1
    80005940:	ffffd097          	auipc	ra,0xffffd
    80005944:	830080e7          	jalr	-2000(ra) # 80002170 <_ZdlPv>
    80005948:	00090513          	mv	a0,s2
    8000594c:	00007097          	auipc	ra,0x7
    80005950:	34c080e7          	jalr	844(ra) # 8000cc98 <_Unwind_Resume>

0000000080005954 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005954:	ff010113          	addi	sp,sp,-16
    80005958:	00813423          	sd	s0,8(sp)
    8000595c:	01010413          	addi	s0,sp,16
    80005960:	00813403          	ld	s0,8(sp)
    80005964:	01010113          	addi	sp,sp,16
    80005968:	00008067          	ret

000000008000596c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000596c:	ff010113          	addi	sp,sp,-16
    80005970:	00813423          	sd	s0,8(sp)
    80005974:	01010413          	addi	s0,sp,16
    80005978:	00813403          	ld	s0,8(sp)
    8000597c:	01010113          	addi	sp,sp,16
    80005980:	00008067          	ret

0000000080005984 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005984:	ff010113          	addi	sp,sp,-16
    80005988:	00813423          	sd	s0,8(sp)
    8000598c:	01010413          	addi	s0,sp,16
    80005990:	00813403          	ld	s0,8(sp)
    80005994:	01010113          	addi	sp,sp,16
    80005998:	00008067          	ret

000000008000599c <_ZN12ConsumerSyncD0Ev>:
class ConsumerSync:public Thread {
    8000599c:	ff010113          	addi	sp,sp,-16
    800059a0:	00113423          	sd	ra,8(sp)
    800059a4:	00813023          	sd	s0,0(sp)
    800059a8:	01010413          	addi	s0,sp,16
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	7c4080e7          	jalr	1988(ra) # 80002170 <_ZdlPv>
    800059b4:	00813083          	ld	ra,8(sp)
    800059b8:	00013403          	ld	s0,0(sp)
    800059bc:	01010113          	addi	sp,sp,16
    800059c0:	00008067          	ret

00000000800059c4 <_ZN12ProducerSyncD0Ev>:
class ProducerSync:public Thread {
    800059c4:	ff010113          	addi	sp,sp,-16
    800059c8:	00113423          	sd	ra,8(sp)
    800059cc:	00813023          	sd	s0,0(sp)
    800059d0:	01010413          	addi	s0,sp,16
    800059d4:	ffffc097          	auipc	ra,0xffffc
    800059d8:	79c080e7          	jalr	1948(ra) # 80002170 <_ZdlPv>
    800059dc:	00813083          	ld	ra,8(sp)
    800059e0:	00013403          	ld	s0,0(sp)
    800059e4:	01010113          	addi	sp,sp,16
    800059e8:	00008067          	ret

00000000800059ec <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    800059ec:	ff010113          	addi	sp,sp,-16
    800059f0:	00113423          	sd	ra,8(sp)
    800059f4:	00813023          	sd	s0,0(sp)
    800059f8:	01010413          	addi	s0,sp,16
    800059fc:	ffffc097          	auipc	ra,0xffffc
    80005a00:	774080e7          	jalr	1908(ra) # 80002170 <_ZdlPv>
    80005a04:	00813083          	ld	ra,8(sp)
    80005a08:	00013403          	ld	s0,0(sp)
    80005a0c:	01010113          	addi	sp,sp,16
    80005a10:	00008067          	ret

0000000080005a14 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005a14:	ff010113          	addi	sp,sp,-16
    80005a18:	00113423          	sd	ra,8(sp)
    80005a1c:	00813023          	sd	s0,0(sp)
    80005a20:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005a24:	02053583          	ld	a1,32(a0)
    80005a28:	fffff097          	auipc	ra,0xfffff
    80005a2c:	7dc080e7          	jalr	2012(ra) # 80005204 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005a30:	00813083          	ld	ra,8(sp)
    80005a34:	00013403          	ld	s0,0(sp)
    80005a38:	01010113          	addi	sp,sp,16
    80005a3c:	00008067          	ret

0000000080005a40 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005a40:	ff010113          	addi	sp,sp,-16
    80005a44:	00113423          	sd	ra,8(sp)
    80005a48:	00813023          	sd	s0,0(sp)
    80005a4c:	01010413          	addi	s0,sp,16
        producer(td);
    80005a50:	02053583          	ld	a1,32(a0)
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	878080e7          	jalr	-1928(ra) # 800052cc <_ZN12ProducerSync8producerEPv>
    }
    80005a5c:	00813083          	ld	ra,8(sp)
    80005a60:	00013403          	ld	s0,0(sp)
    80005a64:	01010113          	addi	sp,sp,16
    80005a68:	00008067          	ret

0000000080005a6c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005a6c:	ff010113          	addi	sp,sp,-16
    80005a70:	00113423          	sd	ra,8(sp)
    80005a74:	00813023          	sd	s0,0(sp)
    80005a78:	01010413          	addi	s0,sp,16
        consumer(td);
    80005a7c:	02053583          	ld	a1,32(a0)
    80005a80:	00000097          	auipc	ra,0x0
    80005a84:	8f0080e7          	jalr	-1808(ra) # 80005370 <_ZN12ConsumerSync8consumerEPv>
    }
    80005a88:	00813083          	ld	ra,8(sp)
    80005a8c:	00013403          	ld	s0,0(sp)
    80005a90:	01010113          	addi	sp,sp,16
    80005a94:	00008067          	ret

0000000080005a98 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a98:	fe010113          	addi	sp,sp,-32
    80005a9c:	00113c23          	sd	ra,24(sp)
    80005aa0:	00813823          	sd	s0,16(sp)
    80005aa4:	00913423          	sd	s1,8(sp)
    80005aa8:	01213023          	sd	s2,0(sp)
    80005aac:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005ab0:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005ab4:	00600493          	li	s1,6
    while (--i > 0) {
    80005ab8:	fff4849b          	addiw	s1,s1,-1
    80005abc:	04905463          	blez	s1,80005b04 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005ac0:	00004517          	auipc	a0,0x4
    80005ac4:	26050513          	addi	a0,a0,608 # 80009d20 <_ZTV12ConsumerSync+0x28>
    80005ac8:	00000097          	auipc	ra,0x0
    80005acc:	10c080e7          	jalr	268(ra) # 80005bd4 <_Z11printStringPKc>
        printInt(sleep_time);
    80005ad0:	00000613          	li	a2,0
    80005ad4:	00a00593          	li	a1,10
    80005ad8:	0009051b          	sext.w	a0,s2
    80005adc:	00000097          	auipc	ra,0x0
    80005ae0:	2a4080e7          	jalr	676(ra) # 80005d80 <_Z8printIntiii>
        printString(" !\n");
    80005ae4:	00004517          	auipc	a0,0x4
    80005ae8:	24450513          	addi	a0,a0,580 # 80009d28 <_ZTV12ConsumerSync+0x30>
    80005aec:	00000097          	auipc	ra,0x0
    80005af0:	0e8080e7          	jalr	232(ra) # 80005bd4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005af4:	00090513          	mv	a0,s2
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	0bc080e7          	jalr	188(ra) # 80001bb4 <_Z10time_sleepm>
    while (--i > 0) {
    80005b00:	fb9ff06f          	j	80005ab8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005b04:	00a00793          	li	a5,10
    80005b08:	02f95933          	divu	s2,s2,a5
    80005b0c:	fff90913          	addi	s2,s2,-1
    80005b10:	00006797          	auipc	a5,0x6
    80005b14:	05878793          	addi	a5,a5,88 # 8000bb68 <_ZL8finished>
    80005b18:	01278933          	add	s2,a5,s2
    80005b1c:	00100793          	li	a5,1
    80005b20:	00f90023          	sb	a5,0(s2)
}
    80005b24:	01813083          	ld	ra,24(sp)
    80005b28:	01013403          	ld	s0,16(sp)
    80005b2c:	00813483          	ld	s1,8(sp)
    80005b30:	00013903          	ld	s2,0(sp)
    80005b34:	02010113          	addi	sp,sp,32
    80005b38:	00008067          	ret

0000000080005b3c <_Z12testSleepingv>:

void testSleeping() {
    80005b3c:	fc010113          	addi	sp,sp,-64
    80005b40:	02113c23          	sd	ra,56(sp)
    80005b44:	02813823          	sd	s0,48(sp)
    80005b48:	02913423          	sd	s1,40(sp)
    80005b4c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005b50:	00a00793          	li	a5,10
    80005b54:	fcf43823          	sd	a5,-48(s0)
    80005b58:	01400793          	li	a5,20
    80005b5c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b60:	00000493          	li	s1,0
    80005b64:	00100793          	li	a5,1
    80005b68:	0297c863          	blt	a5,s1,80005b98 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005b6c:	00349513          	slli	a0,s1,0x3
    80005b70:	fd040793          	addi	a5,s0,-48
    80005b74:	00a78633          	add	a2,a5,a0
    80005b78:	00000597          	auipc	a1,0x0
    80005b7c:	f2058593          	addi	a1,a1,-224 # 80005a98 <_ZL9sleepyRunPv>
    80005b80:	fc040793          	addi	a5,s0,-64
    80005b84:	00a78533          	add	a0,a5,a0
    80005b88:	ffffc097          	auipc	ra,0xffffc
    80005b8c:	d4c080e7          	jalr	-692(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b90:	0014849b          	addiw	s1,s1,1
    80005b94:	fd1ff06f          	j	80005b64 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    80005b98:	00006797          	auipc	a5,0x6
    80005b9c:	fd078793          	addi	a5,a5,-48 # 8000bb68 <_ZL8finished>
    80005ba0:	0007c783          	lbu	a5,0(a5)
    80005ba4:	0ff7f793          	andi	a5,a5,255
    80005ba8:	fe0788e3          	beqz	a5,80005b98 <_Z12testSleepingv+0x5c>
    80005bac:	00006797          	auipc	a5,0x6
    80005bb0:	fbc78793          	addi	a5,a5,-68 # 8000bb68 <_ZL8finished>
    80005bb4:	0017c783          	lbu	a5,1(a5)
    80005bb8:	0ff7f793          	andi	a5,a5,255
    80005bbc:	fc078ee3          	beqz	a5,80005b98 <_Z12testSleepingv+0x5c>
}
    80005bc0:	03813083          	ld	ra,56(sp)
    80005bc4:	03013403          	ld	s0,48(sp)
    80005bc8:	02813483          	ld	s1,40(sp)
    80005bcc:	04010113          	addi	sp,sp,64
    80005bd0:	00008067          	ret

0000000080005bd4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005bd4:	fe010113          	addi	sp,sp,-32
    80005bd8:	00113c23          	sd	ra,24(sp)
    80005bdc:	00813823          	sd	s0,16(sp)
    80005be0:	00913423          	sd	s1,8(sp)
    80005be4:	02010413          	addi	s0,sp,32
    80005be8:	00050493          	mv	s1,a0
    LOCK();
    80005bec:	00100613          	li	a2,1
    80005bf0:	00000593          	li	a1,0
    80005bf4:	00006517          	auipc	a0,0x6
    80005bf8:	f7c50513          	addi	a0,a0,-132 # 8000bb70 <lockPrint>
    80005bfc:	ffffb097          	auipc	ra,0xffffb
    80005c00:	528080e7          	jalr	1320(ra) # 80001124 <copy_and_swap>
    80005c04:	00050863          	beqz	a0,80005c14 <_Z11printStringPKc+0x40>
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	d7c080e7          	jalr	-644(ra) # 80001984 <_Z15thread_dispatchv>
    80005c10:	fddff06f          	j	80005bec <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005c14:	0004c503          	lbu	a0,0(s1)
    80005c18:	00050a63          	beqz	a0,80005c2c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	038080e7          	jalr	56(ra) # 80001c54 <_Z4putcc>
        string++;
    80005c24:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005c28:	fedff06f          	j	80005c14 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005c2c:	00000613          	li	a2,0
    80005c30:	00100593          	li	a1,1
    80005c34:	00006517          	auipc	a0,0x6
    80005c38:	f3c50513          	addi	a0,a0,-196 # 8000bb70 <lockPrint>
    80005c3c:	ffffb097          	auipc	ra,0xffffb
    80005c40:	4e8080e7          	jalr	1256(ra) # 80001124 <copy_and_swap>
    80005c44:	fe0514e3          	bnez	a0,80005c2c <_Z11printStringPKc+0x58>
}
    80005c48:	01813083          	ld	ra,24(sp)
    80005c4c:	01013403          	ld	s0,16(sp)
    80005c50:	00813483          	ld	s1,8(sp)
    80005c54:	02010113          	addi	sp,sp,32
    80005c58:	00008067          	ret

0000000080005c5c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005c5c:	fd010113          	addi	sp,sp,-48
    80005c60:	02113423          	sd	ra,40(sp)
    80005c64:	02813023          	sd	s0,32(sp)
    80005c68:	00913c23          	sd	s1,24(sp)
    80005c6c:	01213823          	sd	s2,16(sp)
    80005c70:	01313423          	sd	s3,8(sp)
    80005c74:	01413023          	sd	s4,0(sp)
    80005c78:	03010413          	addi	s0,sp,48
    80005c7c:	00050993          	mv	s3,a0
    80005c80:	00058a13          	mv	s4,a1
    LOCK();
    80005c84:	00100613          	li	a2,1
    80005c88:	00000593          	li	a1,0
    80005c8c:	00006517          	auipc	a0,0x6
    80005c90:	ee450513          	addi	a0,a0,-284 # 8000bb70 <lockPrint>
    80005c94:	ffffb097          	auipc	ra,0xffffb
    80005c98:	490080e7          	jalr	1168(ra) # 80001124 <copy_and_swap>
    80005c9c:	00050863          	beqz	a0,80005cac <_Z9getStringPci+0x50>
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	ce4080e7          	jalr	-796(ra) # 80001984 <_Z15thread_dispatchv>
    80005ca8:	fddff06f          	j	80005c84 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005cac:	00000493          	li	s1,0
    80005cb0:	0014891b          	addiw	s2,s1,1
    80005cb4:	03495a63          	bge	s2,s4,80005ce8 <_Z9getStringPci+0x8c>
        cc = getc();
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	f4c080e7          	jalr	-180(ra) # 80001c04 <_Z4getcv>
        if(cc < 1)
    80005cc0:	02050463          	beqz	a0,80005ce8 <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    80005cc4:	009984b3          	add	s1,s3,s1
    80005cc8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005ccc:	00a00793          	li	a5,10
    80005cd0:	00f50a63          	beq	a0,a5,80005ce4 <_Z9getStringPci+0x88>
        buf[i++] = c;
    80005cd4:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    80005cd8:	00d00793          	li	a5,13
    80005cdc:	fcf51ae3          	bne	a0,a5,80005cb0 <_Z9getStringPci+0x54>
    80005ce0:	0080006f          	j	80005ce8 <_Z9getStringPci+0x8c>
        buf[i++] = c;
    80005ce4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005ce8:	009984b3          	add	s1,s3,s1
    80005cec:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005cf0:	00000613          	li	a2,0
    80005cf4:	00100593          	li	a1,1
    80005cf8:	00006517          	auipc	a0,0x6
    80005cfc:	e7850513          	addi	a0,a0,-392 # 8000bb70 <lockPrint>
    80005d00:	ffffb097          	auipc	ra,0xffffb
    80005d04:	424080e7          	jalr	1060(ra) # 80001124 <copy_and_swap>
    80005d08:	fe0514e3          	bnez	a0,80005cf0 <_Z9getStringPci+0x94>
    return buf;
}
    80005d0c:	00098513          	mv	a0,s3
    80005d10:	02813083          	ld	ra,40(sp)
    80005d14:	02013403          	ld	s0,32(sp)
    80005d18:	01813483          	ld	s1,24(sp)
    80005d1c:	01013903          	ld	s2,16(sp)
    80005d20:	00813983          	ld	s3,8(sp)
    80005d24:	00013a03          	ld	s4,0(sp)
    80005d28:	03010113          	addi	sp,sp,48
    80005d2c:	00008067          	ret

0000000080005d30 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005d30:	ff010113          	addi	sp,sp,-16
    80005d34:	00813423          	sd	s0,8(sp)
    80005d38:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    80005d3c:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    80005d40:	00054603          	lbu	a2,0(a0)
    80005d44:	fd06069b          	addiw	a3,a2,-48
    80005d48:	0ff6f693          	andi	a3,a3,255
    80005d4c:	00900713          	li	a4,9
    80005d50:	02d76063          	bltu	a4,a3,80005d70 <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    80005d54:	0027969b          	slliw	a3,a5,0x2
    80005d58:	00f687bb          	addw	a5,a3,a5
    80005d5c:	0017971b          	slliw	a4,a5,0x1
    80005d60:	00150513          	addi	a0,a0,1
    80005d64:	00c707bb          	addw	a5,a4,a2
    80005d68:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    80005d6c:	fd5ff06f          	j	80005d40 <_Z11stringToIntPKc+0x10>
    return n;
}
    80005d70:	00078513          	mv	a0,a5
    80005d74:	00813403          	ld	s0,8(sp)
    80005d78:	01010113          	addi	sp,sp,16
    80005d7c:	00008067          	ret

0000000080005d80 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005d80:	fc010113          	addi	sp,sp,-64
    80005d84:	02113c23          	sd	ra,56(sp)
    80005d88:	02813823          	sd	s0,48(sp)
    80005d8c:	02913423          	sd	s1,40(sp)
    80005d90:	03213023          	sd	s2,32(sp)
    80005d94:	01313c23          	sd	s3,24(sp)
    80005d98:	04010413          	addi	s0,sp,64
    80005d9c:	00050493          	mv	s1,a0
    80005da0:	00058913          	mv	s2,a1
    80005da4:	00060993          	mv	s3,a2
    LOCK();
    80005da8:	00100613          	li	a2,1
    80005dac:	00000593          	li	a1,0
    80005db0:	00006517          	auipc	a0,0x6
    80005db4:	dc050513          	addi	a0,a0,-576 # 8000bb70 <lockPrint>
    80005db8:	ffffb097          	auipc	ra,0xffffb
    80005dbc:	36c080e7          	jalr	876(ra) # 80001124 <copy_and_swap>
    80005dc0:	00050863          	beqz	a0,80005dd0 <_Z8printIntiii+0x50>
    80005dc4:	ffffc097          	auipc	ra,0xffffc
    80005dc8:	bc0080e7          	jalr	-1088(ra) # 80001984 <_Z15thread_dispatchv>
    80005dcc:	fddff06f          	j	80005da8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005dd0:	00098463          	beqz	s3,80005dd8 <_Z8printIntiii+0x58>
    80005dd4:	0004ca63          	bltz	s1,80005de8 <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005dd8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005ddc:	00000593          	li	a1,0
    }

    i = 0;
    80005de0:	00000613          	li	a2,0
    80005de4:	0180006f          	j	80005dfc <_Z8printIntiii+0x7c>
        x = -xx;
    80005de8:	4090053b          	negw	a0,s1
        neg = 1;
    80005dec:	00100593          	li	a1,1
        x = -xx;
    80005df0:	ff1ff06f          	j	80005de0 <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    80005df4:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    80005df8:	00048613          	mv	a2,s1
    80005dfc:	0009079b          	sext.w	a5,s2
    80005e00:	02f5773b          	remuw	a4,a0,a5
    80005e04:	0016049b          	addiw	s1,a2,1
    80005e08:	02071693          	slli	a3,a4,0x20
    80005e0c:	0206d693          	srli	a3,a3,0x20
    80005e10:	00006717          	auipc	a4,0x6
    80005e14:	b4070713          	addi	a4,a4,-1216 # 8000b950 <digits>
    80005e18:	00d70733          	add	a4,a4,a3
    80005e1c:	00074683          	lbu	a3,0(a4)
    80005e20:	fd040713          	addi	a4,s0,-48
    80005e24:	00c70733          	add	a4,a4,a2
    80005e28:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005e2c:	02f5573b          	divuw	a4,a0,a5
    80005e30:	0007069b          	sext.w	a3,a4
    80005e34:	fcf570e3          	bgeu	a0,a5,80005df4 <_Z8printIntiii+0x74>
    if(neg)
    80005e38:	00058c63          	beqz	a1,80005e50 <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    80005e3c:	fd040793          	addi	a5,s0,-48
    80005e40:	009784b3          	add	s1,a5,s1
    80005e44:	02d00793          	li	a5,45
    80005e48:	fef48823          	sb	a5,-16(s1)
    80005e4c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005e50:	fff4849b          	addiw	s1,s1,-1
    80005e54:	0004ce63          	bltz	s1,80005e70 <_Z8printIntiii+0xf0>
        putc(buf[i]);
    80005e58:	fd040793          	addi	a5,s0,-48
    80005e5c:	009787b3          	add	a5,a5,s1
    80005e60:	ff07c503          	lbu	a0,-16(a5)
    80005e64:	ffffc097          	auipc	ra,0xffffc
    80005e68:	df0080e7          	jalr	-528(ra) # 80001c54 <_Z4putcc>
    80005e6c:	fe5ff06f          	j	80005e50 <_Z8printIntiii+0xd0>

    UNLOCK();
    80005e70:	00000613          	li	a2,0
    80005e74:	00100593          	li	a1,1
    80005e78:	00006517          	auipc	a0,0x6
    80005e7c:	cf850513          	addi	a0,a0,-776 # 8000bb70 <lockPrint>
    80005e80:	ffffb097          	auipc	ra,0xffffb
    80005e84:	2a4080e7          	jalr	676(ra) # 80001124 <copy_and_swap>
    80005e88:	fe0514e3          	bnez	a0,80005e70 <_Z8printIntiii+0xf0>
    80005e8c:	03813083          	ld	ra,56(sp)
    80005e90:	03013403          	ld	s0,48(sp)
    80005e94:	02813483          	ld	s1,40(sp)
    80005e98:	02013903          	ld	s2,32(sp)
    80005e9c:	01813983          	ld	s3,24(sp)
    80005ea0:	04010113          	addi	sp,sp,64
    80005ea4:	00008067          	ret

0000000080005ea8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80005ea8:	fe010113          	addi	sp,sp,-32
    80005eac:	00113c23          	sd	ra,24(sp)
    80005eb0:	00813823          	sd	s0,16(sp)
    80005eb4:	00913423          	sd	s1,8(sp)
    80005eb8:	01213023          	sd	s2,0(sp)
    80005ebc:	02010413          	addi	s0,sp,32
    80005ec0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005ec4:	00000913          	li	s2,0
    80005ec8:	00c0006f          	j	80005ed4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005ecc:	ffffc097          	auipc	ra,0xffffc
    80005ed0:	ab8080e7          	jalr	-1352(ra) # 80001984 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80005ed4:	ffffc097          	auipc	ra,0xffffc
    80005ed8:	d30080e7          	jalr	-720(ra) # 80001c04 <_Z4getcv>
    80005edc:	0005059b          	sext.w	a1,a0
    80005ee0:	01b00793          	li	a5,27
    80005ee4:	02f58a63          	beq	a1,a5,80005f18 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80005ee8:	0084b503          	ld	a0,8(s1)
    80005eec:	ffffe097          	auipc	ra,0xffffe
    80005ef0:	800080e7          	jalr	-2048(ra) # 800036ec <_ZN6Buffer3putEi>
        i++;
    80005ef4:	0019079b          	addiw	a5,s2,1
    80005ef8:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005efc:	0004a683          	lw	a3,0(s1)
    80005f00:	0026971b          	slliw	a4,a3,0x2
    80005f04:	00d7073b          	addw	a4,a4,a3
    80005f08:	0017169b          	slliw	a3,a4,0x1
    80005f0c:	02d7e7bb          	remw	a5,a5,a3
    80005f10:	fc0792e3          	bnez	a5,80005ed4 <_ZL16producerKeyboardPv+0x2c>
    80005f14:	fb9ff06f          	j	80005ecc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80005f18:	00100793          	li	a5,1
    80005f1c:	00006717          	auipc	a4,0x6
    80005f20:	c4f72e23          	sw	a5,-932(a4) # 8000bb78 <_ZL9threadEnd>
    data->buffer->put('!');
    80005f24:	02100593          	li	a1,33
    80005f28:	0084b503          	ld	a0,8(s1)
    80005f2c:	ffffd097          	auipc	ra,0xffffd
    80005f30:	7c0080e7          	jalr	1984(ra) # 800036ec <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80005f34:	0104b503          	ld	a0,16(s1)
    80005f38:	ffffc097          	auipc	ra,0xffffc
    80005f3c:	c2c080e7          	jalr	-980(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
}
    80005f40:	01813083          	ld	ra,24(sp)
    80005f44:	01013403          	ld	s0,16(sp)
    80005f48:	00813483          	ld	s1,8(sp)
    80005f4c:	00013903          	ld	s2,0(sp)
    80005f50:	02010113          	addi	sp,sp,32
    80005f54:	00008067          	ret

0000000080005f58 <_ZL8producerPv>:

static void producer(void *arg) {
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	01213023          	sd	s2,0(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    80005f70:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005f74:	00000913          	li	s2,0
    80005f78:	00c0006f          	j	80005f84 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005f7c:	ffffc097          	auipc	ra,0xffffc
    80005f80:	a08080e7          	jalr	-1528(ra) # 80001984 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80005f84:	00006797          	auipc	a5,0x6
    80005f88:	bf478793          	addi	a5,a5,-1036 # 8000bb78 <_ZL9threadEnd>
    80005f8c:	0007a783          	lw	a5,0(a5)
    80005f90:	0007879b          	sext.w	a5,a5
    80005f94:	02079e63          	bnez	a5,80005fd0 <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    80005f98:	0004a583          	lw	a1,0(s1)
    80005f9c:	0305859b          	addiw	a1,a1,48
    80005fa0:	0084b503          	ld	a0,8(s1)
    80005fa4:	ffffd097          	auipc	ra,0xffffd
    80005fa8:	748080e7          	jalr	1864(ra) # 800036ec <_ZN6Buffer3putEi>
        i++;
    80005fac:	0019079b          	addiw	a5,s2,1
    80005fb0:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005fb4:	0004a683          	lw	a3,0(s1)
    80005fb8:	0026971b          	slliw	a4,a3,0x2
    80005fbc:	00d7073b          	addw	a4,a4,a3
    80005fc0:	0017169b          	slliw	a3,a4,0x1
    80005fc4:	02d7e7bb          	remw	a5,a5,a3
    80005fc8:	fa079ee3          	bnez	a5,80005f84 <_ZL8producerPv+0x2c>
    80005fcc:	fb1ff06f          	j	80005f7c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80005fd0:	0104b503          	ld	a0,16(s1)
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	b90080e7          	jalr	-1136(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
}
    80005fdc:	01813083          	ld	ra,24(sp)
    80005fe0:	01013403          	ld	s0,16(sp)
    80005fe4:	00813483          	ld	s1,8(sp)
    80005fe8:	00013903          	ld	s2,0(sp)
    80005fec:	02010113          	addi	sp,sp,32
    80005ff0:	00008067          	ret

0000000080005ff4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80005ff4:	fd010113          	addi	sp,sp,-48
    80005ff8:	02113423          	sd	ra,40(sp)
    80005ffc:	02813023          	sd	s0,32(sp)
    80006000:	00913c23          	sd	s1,24(sp)
    80006004:	01213823          	sd	s2,16(sp)
    80006008:	01313423          	sd	s3,8(sp)
    8000600c:	03010413          	addi	s0,sp,48
    80006010:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006014:	00000993          	li	s3,0
    80006018:	01c0006f          	j	80006034 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000601c:	ffffc097          	auipc	ra,0xffffc
    80006020:	968080e7          	jalr	-1688(ra) # 80001984 <_Z15thread_dispatchv>
    80006024:	0580006f          	j	8000607c <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80006028:	00a00513          	li	a0,10
    8000602c:	ffffc097          	auipc	ra,0xffffc
    80006030:	c28080e7          	jalr	-984(ra) # 80001c54 <_Z4putcc>
    while (!threadEnd) {
    80006034:	00006797          	auipc	a5,0x6
    80006038:	b4478793          	addi	a5,a5,-1212 # 8000bb78 <_ZL9threadEnd>
    8000603c:	0007a783          	lw	a5,0(a5)
    80006040:	0007879b          	sext.w	a5,a5
    80006044:	04079463          	bnez	a5,8000608c <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    80006048:	00893503          	ld	a0,8(s2)
    8000604c:	ffffd097          	auipc	ra,0xffffd
    80006050:	730080e7          	jalr	1840(ra) # 8000377c <_ZN6Buffer3getEv>
        i++;
    80006054:	0019849b          	addiw	s1,s3,1
    80006058:	0004899b          	sext.w	s3,s1
        putc(key);
    8000605c:	0ff57513          	andi	a0,a0,255
    80006060:	ffffc097          	auipc	ra,0xffffc
    80006064:	bf4080e7          	jalr	-1036(ra) # 80001c54 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80006068:	00092703          	lw	a4,0(s2)
    8000606c:	0027179b          	slliw	a5,a4,0x2
    80006070:	00e787bb          	addw	a5,a5,a4
    80006074:	02f4e7bb          	remw	a5,s1,a5
    80006078:	fa0782e3          	beqz	a5,8000601c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000607c:	05000793          	li	a5,80
    80006080:	02f4e4bb          	remw	s1,s1,a5
    80006084:	fa0498e3          	bnez	s1,80006034 <_ZL8consumerPv+0x40>
    80006088:	fa1ff06f          	j	80006028 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    8000608c:	00893503          	ld	a0,8(s2)
    80006090:	ffffd097          	auipc	ra,0xffffd
    80006094:	778080e7          	jalr	1912(ra) # 80003808 <_ZN6Buffer6getCntEv>
    80006098:	02a05063          	blez	a0,800060b8 <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    8000609c:	00893503          	ld	a0,8(s2)
    800060a0:	ffffd097          	auipc	ra,0xffffd
    800060a4:	6dc080e7          	jalr	1756(ra) # 8000377c <_ZN6Buffer3getEv>
        putc(key);
    800060a8:	0ff57513          	andi	a0,a0,255
    800060ac:	ffffc097          	auipc	ra,0xffffc
    800060b0:	ba8080e7          	jalr	-1112(ra) # 80001c54 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800060b4:	fd9ff06f          	j	8000608c <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    800060b8:	01093503          	ld	a0,16(s2)
    800060bc:	ffffc097          	auipc	ra,0xffffc
    800060c0:	aa8080e7          	jalr	-1368(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
}
    800060c4:	02813083          	ld	ra,40(sp)
    800060c8:	02013403          	ld	s0,32(sp)
    800060cc:	01813483          	ld	s1,24(sp)
    800060d0:	01013903          	ld	s2,16(sp)
    800060d4:	00813983          	ld	s3,8(sp)
    800060d8:	03010113          	addi	sp,sp,48
    800060dc:	00008067          	ret

00000000800060e0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800060e0:	f9010113          	addi	sp,sp,-112
    800060e4:	06113423          	sd	ra,104(sp)
    800060e8:	06813023          	sd	s0,96(sp)
    800060ec:	04913c23          	sd	s1,88(sp)
    800060f0:	05213823          	sd	s2,80(sp)
    800060f4:	05313423          	sd	s3,72(sp)
    800060f8:	05413023          	sd	s4,64(sp)
    800060fc:	03513c23          	sd	s5,56(sp)
    80006100:	03613823          	sd	s6,48(sp)
    80006104:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80006108:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000610c:	00003517          	auipc	a0,0x3
    80006110:	74450513          	addi	a0,a0,1860 # 80009850 <_ZTV8Consumer+0x28>
    80006114:	00000097          	auipc	ra,0x0
    80006118:	ac0080e7          	jalr	-1344(ra) # 80005bd4 <_Z11printStringPKc>
    getString(input, 30);
    8000611c:	01e00593          	li	a1,30
    80006120:	fa040513          	addi	a0,s0,-96
    80006124:	00000097          	auipc	ra,0x0
    80006128:	b38080e7          	jalr	-1224(ra) # 80005c5c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000612c:	fa040513          	addi	a0,s0,-96
    80006130:	00000097          	auipc	ra,0x0
    80006134:	c00080e7          	jalr	-1024(ra) # 80005d30 <_Z11stringToIntPKc>
    80006138:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	73450513          	addi	a0,a0,1844 # 80009870 <_ZTV8Consumer+0x48>
    80006144:	00000097          	auipc	ra,0x0
    80006148:	a90080e7          	jalr	-1392(ra) # 80005bd4 <_Z11printStringPKc>
    getString(input, 30);
    8000614c:	01e00593          	li	a1,30
    80006150:	fa040513          	addi	a0,s0,-96
    80006154:	00000097          	auipc	ra,0x0
    80006158:	b08080e7          	jalr	-1272(ra) # 80005c5c <_Z9getStringPci>
    n = stringToInt(input);
    8000615c:	fa040513          	addi	a0,s0,-96
    80006160:	00000097          	auipc	ra,0x0
    80006164:	bd0080e7          	jalr	-1072(ra) # 80005d30 <_Z11stringToIntPKc>
    80006168:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000616c:	00003517          	auipc	a0,0x3
    80006170:	72450513          	addi	a0,a0,1828 # 80009890 <_ZTV8Consumer+0x68>
    80006174:	00000097          	auipc	ra,0x0
    80006178:	a60080e7          	jalr	-1440(ra) # 80005bd4 <_Z11printStringPKc>
    8000617c:	00000613          	li	a2,0
    80006180:	00a00593          	li	a1,10
    80006184:	00090513          	mv	a0,s2
    80006188:	00000097          	auipc	ra,0x0
    8000618c:	bf8080e7          	jalr	-1032(ra) # 80005d80 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80006190:	00003517          	auipc	a0,0x3
    80006194:	71850513          	addi	a0,a0,1816 # 800098a8 <_ZTV8Consumer+0x80>
    80006198:	00000097          	auipc	ra,0x0
    8000619c:	a3c080e7          	jalr	-1476(ra) # 80005bd4 <_Z11printStringPKc>
    800061a0:	00000613          	li	a2,0
    800061a4:	00a00593          	li	a1,10
    800061a8:	00048513          	mv	a0,s1
    800061ac:	00000097          	auipc	ra,0x0
    800061b0:	bd4080e7          	jalr	-1068(ra) # 80005d80 <_Z8printIntiii>
    printString(".\n");
    800061b4:	00003517          	auipc	a0,0x3
    800061b8:	70c50513          	addi	a0,a0,1804 # 800098c0 <_ZTV8Consumer+0x98>
    800061bc:	00000097          	auipc	ra,0x0
    800061c0:	a18080e7          	jalr	-1512(ra) # 80005bd4 <_Z11printStringPKc>
    if(threadNum > n) {
    800061c4:	0324c463          	blt	s1,s2,800061ec <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    800061c8:	03205c63          	blez	s2,80006200 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    800061cc:	03800513          	li	a0,56
    800061d0:	ffffc097          	auipc	ra,0xffffc
    800061d4:	f20080e7          	jalr	-224(ra) # 800020f0 <_Znwm>
    800061d8:	00050a13          	mv	s4,a0
    800061dc:	00048593          	mv	a1,s1
    800061e0:	ffffd097          	auipc	ra,0xffffd
    800061e4:	470080e7          	jalr	1136(ra) # 80003650 <_ZN6BufferC1Ei>
    800061e8:	0300006f          	j	80006218 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800061ec:	00003517          	auipc	a0,0x3
    800061f0:	6dc50513          	addi	a0,a0,1756 # 800098c8 <_ZTV8Consumer+0xa0>
    800061f4:	00000097          	auipc	ra,0x0
    800061f8:	9e0080e7          	jalr	-1568(ra) # 80005bd4 <_Z11printStringPKc>
        return;
    800061fc:	0140006f          	j	80006210 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80006200:	00003517          	auipc	a0,0x3
    80006204:	70850513          	addi	a0,a0,1800 # 80009908 <_ZTV8Consumer+0xe0>
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	9cc080e7          	jalr	-1588(ra) # 80005bd4 <_Z11printStringPKc>
        return;
    80006210:	000b0113          	mv	sp,s6
    80006214:	1680006f          	j	8000637c <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80006218:	00000593          	li	a1,0
    8000621c:	00006517          	auipc	a0,0x6
    80006220:	96450513          	addi	a0,a0,-1692 # 8000bb80 <_ZL10waitForAll>
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	7ac080e7          	jalr	1964(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    8000622c:	00391793          	slli	a5,s2,0x3
    80006230:	00f78793          	addi	a5,a5,15
    80006234:	ff07f793          	andi	a5,a5,-16
    80006238:	40f10133          	sub	sp,sp,a5
    8000623c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80006240:	0019079b          	addiw	a5,s2,1
    80006244:	00179713          	slli	a4,a5,0x1
    80006248:	00f70733          	add	a4,a4,a5
    8000624c:	00371793          	slli	a5,a4,0x3
    80006250:	00f78793          	addi	a5,a5,15
    80006254:	ff07f793          	andi	a5,a5,-16
    80006258:	40f10133          	sub	sp,sp,a5
    8000625c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80006260:	00191713          	slli	a4,s2,0x1
    80006264:	012706b3          	add	a3,a4,s2
    80006268:	00369793          	slli	a5,a3,0x3
    8000626c:	00f987b3          	add	a5,s3,a5
    80006270:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006274:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80006278:	00006697          	auipc	a3,0x6
    8000627c:	90868693          	addi	a3,a3,-1784 # 8000bb80 <_ZL10waitForAll>
    80006280:	0006b683          	ld	a3,0(a3)
    80006284:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80006288:	012707b3          	add	a5,a4,s2
    8000628c:	00379613          	slli	a2,a5,0x3
    80006290:	00c98633          	add	a2,s3,a2
    80006294:	00000597          	auipc	a1,0x0
    80006298:	d6058593          	addi	a1,a1,-672 # 80005ff4 <_ZL8consumerPv>
    8000629c:	f9840513          	addi	a0,s0,-104
    800062a0:	ffffb097          	auipc	ra,0xffffb
    800062a4:	634080e7          	jalr	1588(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800062a8:	00000493          	li	s1,0
    800062ac:	0280006f          	j	800062d4 <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    800062b0:	00000597          	auipc	a1,0x0
    800062b4:	bf858593          	addi	a1,a1,-1032 # 80005ea8 <_ZL16producerKeyboardPv>
                      data + i);
    800062b8:	00171793          	slli	a5,a4,0x1
    800062bc:	00e787b3          	add	a5,a5,a4
    800062c0:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    800062c4:	00c98633          	add	a2,s3,a2
    800062c8:	ffffb097          	auipc	ra,0xffffb
    800062cc:	60c080e7          	jalr	1548(ra) # 800018d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800062d0:	0014849b          	addiw	s1,s1,1
    800062d4:	0524d463          	bge	s1,s2,8000631c <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    800062d8:	00149713          	slli	a4,s1,0x1
    800062dc:	00970733          	add	a4,a4,s1
    800062e0:	00371793          	slli	a5,a4,0x3
    800062e4:	00f987b3          	add	a5,s3,a5
    800062e8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800062ec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800062f0:	00006717          	auipc	a4,0x6
    800062f4:	89070713          	addi	a4,a4,-1904 # 8000bb80 <_ZL10waitForAll>
    800062f8:	00073703          	ld	a4,0(a4)
    800062fc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80006300:	00048713          	mv	a4,s1
    80006304:	00349513          	slli	a0,s1,0x3
    80006308:	00aa8533          	add	a0,s5,a0
    8000630c:	fa9052e3          	blez	s1,800062b0 <_Z22producerConsumer_C_APIv+0x1d0>
    80006310:	00000597          	auipc	a1,0x0
    80006314:	c4858593          	addi	a1,a1,-952 # 80005f58 <_ZL8producerPv>
    80006318:	fa1ff06f          	j	800062b8 <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	668080e7          	jalr	1640(ra) # 80001984 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80006324:	00000493          	li	s1,0
    80006328:	02994063          	blt	s2,s1,80006348 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    8000632c:	00006797          	auipc	a5,0x6
    80006330:	85478793          	addi	a5,a5,-1964 # 8000bb80 <_ZL10waitForAll>
    80006334:	0007b503          	ld	a0,0(a5)
    80006338:	ffffb097          	auipc	ra,0xffffb
    8000633c:	7dc080e7          	jalr	2012(ra) # 80001b14 <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80006340:	0014849b          	addiw	s1,s1,1
    80006344:	fe5ff06f          	j	80006328 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    80006348:	00006797          	auipc	a5,0x6
    8000634c:	83878793          	addi	a5,a5,-1992 # 8000bb80 <_ZL10waitForAll>
    80006350:	0007b503          	ld	a0,0(a5)
    80006354:	ffffb097          	auipc	ra,0xffffb
    80006358:	754080e7          	jalr	1876(ra) # 80001aa8 <_Z9sem_closeP10_semaphore>
    delete buffer;
    8000635c:	000a0e63          	beqz	s4,80006378 <_Z22producerConsumer_C_APIv+0x298>
    80006360:	000a0513          	mv	a0,s4
    80006364:	ffffd097          	auipc	ra,0xffffd
    80006368:	52c080e7          	jalr	1324(ra) # 80003890 <_ZN6BufferD1Ev>
    8000636c:	000a0513          	mv	a0,s4
    80006370:	ffffc097          	auipc	ra,0xffffc
    80006374:	e00080e7          	jalr	-512(ra) # 80002170 <_ZdlPv>
    80006378:	000b0113          	mv	sp,s6

}
    8000637c:	f9040113          	addi	sp,s0,-112
    80006380:	06813083          	ld	ra,104(sp)
    80006384:	06013403          	ld	s0,96(sp)
    80006388:	05813483          	ld	s1,88(sp)
    8000638c:	05013903          	ld	s2,80(sp)
    80006390:	04813983          	ld	s3,72(sp)
    80006394:	04013a03          	ld	s4,64(sp)
    80006398:	03813a83          	ld	s5,56(sp)
    8000639c:	03013b03          	ld	s6,48(sp)
    800063a0:	07010113          	addi	sp,sp,112
    800063a4:	00008067          	ret
    800063a8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800063ac:	000a0513          	mv	a0,s4
    800063b0:	ffffc097          	auipc	ra,0xffffc
    800063b4:	dc0080e7          	jalr	-576(ra) # 80002170 <_ZdlPv>
    800063b8:	00048513          	mv	a0,s1
    800063bc:	00007097          	auipc	ra,0x7
    800063c0:	8dc080e7          	jalr	-1828(ra) # 8000cc98 <_Unwind_Resume>

00000000800063c4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800063c4:	fd010113          	addi	sp,sp,-48
    800063c8:	02113423          	sd	ra,40(sp)
    800063cc:	02813023          	sd	s0,32(sp)
    800063d0:	00913c23          	sd	s1,24(sp)
    800063d4:	01213823          	sd	s2,16(sp)
    800063d8:	01313423          	sd	s3,8(sp)
    800063dc:	03010413          	addi	s0,sp,48
    800063e0:	00050493          	mv	s1,a0
    800063e4:	00058993          	mv	s3,a1
    800063e8:	0015879b          	addiw	a5,a1,1
    800063ec:	0007851b          	sext.w	a0,a5
    800063f0:	00f4a023          	sw	a5,0(s1)
    800063f4:	0004a823          	sw	zero,16(s1)
    800063f8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063fc:	00251513          	slli	a0,a0,0x2
    80006400:	ffffb097          	auipc	ra,0xffffb
    80006404:	380080e7          	jalr	896(ra) # 80001780 <_Z9mem_allocm>
    80006408:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000640c:	01000513          	li	a0,16
    80006410:	ffffc097          	auipc	ra,0xffffc
    80006414:	ce0080e7          	jalr	-800(ra) # 800020f0 <_Znwm>
    80006418:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    8000641c:	00003797          	auipc	a5,0x3
    80006420:	3ac78793          	addi	a5,a5,940 # 800097c8 <_ZTV9Semaphore+0x10>
    80006424:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80006428:	00000593          	li	a1,0
    8000642c:	00850513          	addi	a0,a0,8
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	5a0080e7          	jalr	1440(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    80006438:	00050463          	beqz	a0,80006440 <_ZN9BufferCPPC1Ei+0x7c>
            myHandle = nullptr;
    8000643c:	00093423          	sd	zero,8(s2)
    80006440:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006444:	01000513          	li	a0,16
    80006448:	ffffc097          	auipc	ra,0xffffc
    8000644c:	ca8080e7          	jalr	-856(ra) # 800020f0 <_Znwm>
    80006450:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80006454:	00003797          	auipc	a5,0x3
    80006458:	37478793          	addi	a5,a5,884 # 800097c8 <_ZTV9Semaphore+0x10>
    8000645c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80006460:	00098593          	mv	a1,s3
    80006464:	00850513          	addi	a0,a0,8
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	568080e7          	jalr	1384(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    80006470:	00050463          	beqz	a0,80006478 <_ZN9BufferCPPC1Ei+0xb4>
            myHandle = nullptr;
    80006474:	00093423          	sd	zero,8(s2)
    80006478:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000647c:	01000513          	li	a0,16
    80006480:	ffffc097          	auipc	ra,0xffffc
    80006484:	c70080e7          	jalr	-912(ra) # 800020f0 <_Znwm>
    80006488:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    8000648c:	00003797          	auipc	a5,0x3
    80006490:	33c78793          	addi	a5,a5,828 # 800097c8 <_ZTV9Semaphore+0x10>
    80006494:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80006498:	00100593          	li	a1,1
    8000649c:	00850513          	addi	a0,a0,8
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	530080e7          	jalr	1328(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    800064a8:	00050463          	beqz	a0,800064b0 <_ZN9BufferCPPC1Ei+0xec>
            myHandle = nullptr;
    800064ac:	00093423          	sd	zero,8(s2)
    800064b0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800064b4:	01000513          	li	a0,16
    800064b8:	ffffc097          	auipc	ra,0xffffc
    800064bc:	c38080e7          	jalr	-968(ra) # 800020f0 <_Znwm>
    800064c0:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    800064c4:	00003797          	auipc	a5,0x3
    800064c8:	30478793          	addi	a5,a5,772 # 800097c8 <_ZTV9Semaphore+0x10>
    800064cc:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800064d0:	00100593          	li	a1,1
    800064d4:	00850513          	addi	a0,a0,8
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	4f8080e7          	jalr	1272(ra) # 800019d0 <_Z8sem_openPP10_semaphorej>
    800064e0:	00050463          	beqz	a0,800064e8 <_ZN9BufferCPPC1Ei+0x124>
            myHandle = nullptr;
    800064e4:	00093423          	sd	zero,8(s2)
    800064e8:	0324b823          	sd	s2,48(s1)
}
    800064ec:	02813083          	ld	ra,40(sp)
    800064f0:	02013403          	ld	s0,32(sp)
    800064f4:	01813483          	ld	s1,24(sp)
    800064f8:	01013903          	ld	s2,16(sp)
    800064fc:	00813983          	ld	s3,8(sp)
    80006500:	03010113          	addi	sp,sp,48
    80006504:	00008067          	ret
    80006508:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000650c:	00090513          	mv	a0,s2
    80006510:	ffffc097          	auipc	ra,0xffffc
    80006514:	c60080e7          	jalr	-928(ra) # 80002170 <_ZdlPv>
    80006518:	00048513          	mv	a0,s1
    8000651c:	00006097          	auipc	ra,0x6
    80006520:	77c080e7          	jalr	1916(ra) # 8000cc98 <_Unwind_Resume>
    80006524:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006528:	00090513          	mv	a0,s2
    8000652c:	ffffc097          	auipc	ra,0xffffc
    80006530:	c44080e7          	jalr	-956(ra) # 80002170 <_ZdlPv>
    80006534:	00048513          	mv	a0,s1
    80006538:	00006097          	auipc	ra,0x6
    8000653c:	760080e7          	jalr	1888(ra) # 8000cc98 <_Unwind_Resume>
    80006540:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006544:	00090513          	mv	a0,s2
    80006548:	ffffc097          	auipc	ra,0xffffc
    8000654c:	c28080e7          	jalr	-984(ra) # 80002170 <_ZdlPv>
    80006550:	00048513          	mv	a0,s1
    80006554:	00006097          	auipc	ra,0x6
    80006558:	744080e7          	jalr	1860(ra) # 8000cc98 <_Unwind_Resume>
    8000655c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006560:	00090513          	mv	a0,s2
    80006564:	ffffc097          	auipc	ra,0xffffc
    80006568:	c0c080e7          	jalr	-1012(ra) # 80002170 <_ZdlPv>
    8000656c:	00048513          	mv	a0,s1
    80006570:	00006097          	auipc	ra,0x6
    80006574:	728080e7          	jalr	1832(ra) # 8000cc98 <_Unwind_Resume>

0000000080006578 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006578:	fe010113          	addi	sp,sp,-32
    8000657c:	00113c23          	sd	ra,24(sp)
    80006580:	00813823          	sd	s0,16(sp)
    80006584:	00913423          	sd	s1,8(sp)
    80006588:	01213023          	sd	s2,0(sp)
    8000658c:	02010413          	addi	s0,sp,32
    80006590:	00050493          	mv	s1,a0
    80006594:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006598:	01853783          	ld	a5,24(a0)
        if (myHandle == nullptr) {
    8000659c:	0087b503          	ld	a0,8(a5)
    800065a0:	00050663          	beqz	a0,800065ac <_ZN9BufferCPP3putEi+0x34>
        return sem_wait(myHandle);
    800065a4:	ffffb097          	auipc	ra,0xffffb
    800065a8:	570080e7          	jalr	1392(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    800065ac:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800065b0:	0087b503          	ld	a0,8(a5)
    800065b4:	00050663          	beqz	a0,800065c0 <_ZN9BufferCPP3putEi+0x48>
        return sem_wait(myHandle);
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	55c080e7          	jalr	1372(ra) # 80001b14 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    800065c0:	0084b783          	ld	a5,8(s1)
    800065c4:	0144a703          	lw	a4,20(s1)
    800065c8:	00271713          	slli	a4,a4,0x2
    800065cc:	00e787b3          	add	a5,a5,a4
    800065d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800065d4:	0144a783          	lw	a5,20(s1)
    800065d8:	0017879b          	addiw	a5,a5,1
    800065dc:	0004a703          	lw	a4,0(s1)
    800065e0:	02e7e7bb          	remw	a5,a5,a4
    800065e4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800065e8:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800065ec:	0087b503          	ld	a0,8(a5)
    800065f0:	00050663          	beqz	a0,800065fc <_ZN9BufferCPP3putEi+0x84>
        return sem_signal(myHandle);
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	570080e7          	jalr	1392(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    800065fc:	0204b783          	ld	a5,32(s1)
        if (myHandle == nullptr) {
    80006600:	0087b503          	ld	a0,8(a5)
    80006604:	00050663          	beqz	a0,80006610 <_ZN9BufferCPP3putEi+0x98>
        return sem_signal(myHandle);
    80006608:	ffffb097          	auipc	ra,0xffffb
    8000660c:	55c080e7          	jalr	1372(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

}
    80006610:	01813083          	ld	ra,24(sp)
    80006614:	01013403          	ld	s0,16(sp)
    80006618:	00813483          	ld	s1,8(sp)
    8000661c:	00013903          	ld	s2,0(sp)
    80006620:	02010113          	addi	sp,sp,32
    80006624:	00008067          	ret

0000000080006628 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006628:	fe010113          	addi	sp,sp,-32
    8000662c:	00113c23          	sd	ra,24(sp)
    80006630:	00813823          	sd	s0,16(sp)
    80006634:	00913423          	sd	s1,8(sp)
    80006638:	01213023          	sd	s2,0(sp)
    8000663c:	02010413          	addi	s0,sp,32
    80006640:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006644:	02053783          	ld	a5,32(a0)
        if (myHandle == nullptr) {
    80006648:	0087b503          	ld	a0,8(a5)
    8000664c:	00050663          	beqz	a0,80006658 <_ZN9BufferCPP3getEv+0x30>
        return sem_wait(myHandle);
    80006650:	ffffb097          	auipc	ra,0xffffb
    80006654:	4c4080e7          	jalr	1220(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    80006658:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    8000665c:	0087b503          	ld	a0,8(a5)
    80006660:	00050663          	beqz	a0,8000666c <_ZN9BufferCPP3getEv+0x44>
        return sem_wait(myHandle);
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	4b0080e7          	jalr	1200(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    8000666c:	0084b703          	ld	a4,8(s1)
    80006670:	0104a783          	lw	a5,16(s1)
    80006674:	00279693          	slli	a3,a5,0x2
    80006678:	00d70733          	add	a4,a4,a3
    8000667c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006680:	0017879b          	addiw	a5,a5,1
    80006684:	0004a703          	lw	a4,0(s1)
    80006688:	02e7e7bb          	remw	a5,a5,a4
    8000668c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006690:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80006694:	0087b503          	ld	a0,8(a5)
    80006698:	00050663          	beqz	a0,800066a4 <_ZN9BufferCPP3getEv+0x7c>
        return sem_signal(myHandle);
    8000669c:	ffffb097          	auipc	ra,0xffffb
    800066a0:	4c8080e7          	jalr	1224(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    800066a4:	0184b783          	ld	a5,24(s1)
        if (myHandle == nullptr) {
    800066a8:	0087b503          	ld	a0,8(a5)
    800066ac:	00050663          	beqz	a0,800066b8 <_ZN9BufferCPP3getEv+0x90>
        return sem_signal(myHandle);
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	4b4080e7          	jalr	1204(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    return ret;
}
    800066b8:	00090513          	mv	a0,s2
    800066bc:	01813083          	ld	ra,24(sp)
    800066c0:	01013403          	ld	s0,16(sp)
    800066c4:	00813483          	ld	s1,8(sp)
    800066c8:	00013903          	ld	s2,0(sp)
    800066cc:	02010113          	addi	sp,sp,32
    800066d0:	00008067          	ret

00000000800066d4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800066d4:	fe010113          	addi	sp,sp,-32
    800066d8:	00113c23          	sd	ra,24(sp)
    800066dc:	00813823          	sd	s0,16(sp)
    800066e0:	00913423          	sd	s1,8(sp)
    800066e4:	01213023          	sd	s2,0(sp)
    800066e8:	02010413          	addi	s0,sp,32
    800066ec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800066f0:	02853783          	ld	a5,40(a0)
        if (myHandle == nullptr) {
    800066f4:	0087b503          	ld	a0,8(a5)
    800066f8:	00050663          	beqz	a0,80006704 <_ZN9BufferCPP6getCntEv+0x30>
        return sem_wait(myHandle);
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	418080e7          	jalr	1048(ra) # 80001b14 <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    80006704:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80006708:	0087b503          	ld	a0,8(a5)
    8000670c:	00050663          	beqz	a0,80006718 <_ZN9BufferCPP6getCntEv+0x44>
        return sem_wait(myHandle);
    80006710:	ffffb097          	auipc	ra,0xffffb
    80006714:	404080e7          	jalr	1028(ra) # 80001b14 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80006718:	0144a783          	lw	a5,20(s1)
    8000671c:	0104a903          	lw	s2,16(s1)
    80006720:	0527c663          	blt	a5,s2,8000676c <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    80006724:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006728:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    8000672c:	0087b503          	ld	a0,8(a5)
    80006730:	00050663          	beqz	a0,8000673c <_ZN9BufferCPP6getCntEv+0x68>
        return sem_signal(myHandle);
    80006734:	ffffb097          	auipc	ra,0xffffb
    80006738:	430080e7          	jalr	1072(ra) # 80001b64 <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    8000673c:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80006740:	0087b503          	ld	a0,8(a5)
    80006744:	00050663          	beqz	a0,80006750 <_ZN9BufferCPP6getCntEv+0x7c>
        return sem_signal(myHandle);
    80006748:	ffffb097          	auipc	ra,0xffffb
    8000674c:	41c080e7          	jalr	1052(ra) # 80001b64 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80006750:	00090513          	mv	a0,s2
    80006754:	01813083          	ld	ra,24(sp)
    80006758:	01013403          	ld	s0,16(sp)
    8000675c:	00813483          	ld	s1,8(sp)
    80006760:	00013903          	ld	s2,0(sp)
    80006764:	02010113          	addi	sp,sp,32
    80006768:	00008067          	ret
        ret = cap - head + tail;
    8000676c:	0004a703          	lw	a4,0(s1)
    80006770:	4127093b          	subw	s2,a4,s2
    80006774:	00f9093b          	addw	s2,s2,a5
    80006778:	fb1ff06f          	j	80006728 <_ZN9BufferCPP6getCntEv+0x54>

000000008000677c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000677c:	fe010113          	addi	sp,sp,-32
    80006780:	00113c23          	sd	ra,24(sp)
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	01213023          	sd	s2,0(sp)
    80006790:	02010413          	addi	s0,sp,32
    80006794:	00050913          	mv	s2,a0
    static void putc(char c) { putc(c); };
    80006798:	00a00513          	li	a0,10
    8000679c:	ffffe097          	auipc	ra,0xffffe
    800067a0:	954080e7          	jalr	-1708(ra) # 800040f0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	ffc50513          	addi	a0,a0,-4 # 800097a0 <_ZZ24debug_print_internal_intmE6digits+0x488>
    800067ac:	fffff097          	auipc	ra,0xfffff
    800067b0:	428080e7          	jalr	1064(ra) # 80005bd4 <_Z11printStringPKc>
    while (getCnt()) {
    800067b4:	00090513          	mv	a0,s2
    800067b8:	00000097          	auipc	ra,0x0
    800067bc:	f1c080e7          	jalr	-228(ra) # 800066d4 <_ZN9BufferCPP6getCntEv>
    800067c0:	02050a63          	beqz	a0,800067f4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800067c4:	00893783          	ld	a5,8(s2)
    800067c8:	01092483          	lw	s1,16(s2)
    800067cc:	00249713          	slli	a4,s1,0x2
    800067d0:	00e787b3          	add	a5,a5,a4
    800067d4:	0007c503          	lbu	a0,0(a5)
    800067d8:	ffffe097          	auipc	ra,0xffffe
    800067dc:	918080e7          	jalr	-1768(ra) # 800040f0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800067e0:	0014849b          	addiw	s1,s1,1
    800067e4:	00092783          	lw	a5,0(s2)
    800067e8:	02f4e4bb          	remw	s1,s1,a5
    800067ec:	00992823          	sw	s1,16(s2)
    while (getCnt()) {
    800067f0:	fc5ff06f          	j	800067b4 <_ZN9BufferCPPD1Ev+0x38>
    800067f4:	02100513          	li	a0,33
    800067f8:	ffffe097          	auipc	ra,0xffffe
    800067fc:	8f8080e7          	jalr	-1800(ra) # 800040f0 <_ZN7Console4putcEc>
    80006800:	00a00513          	li	a0,10
    80006804:	ffffe097          	auipc	ra,0xffffe
    80006808:	8ec080e7          	jalr	-1812(ra) # 800040f0 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000680c:	00893503          	ld	a0,8(s2)
    80006810:	ffffb097          	auipc	ra,0xffffb
    80006814:	fbc080e7          	jalr	-68(ra) # 800017cc <_Z8mem_freePv>
    delete itemAvailable;
    80006818:	02093503          	ld	a0,32(s2)
    8000681c:	00050863          	beqz	a0,8000682c <_ZN9BufferCPPD1Ev+0xb0>
    80006820:	00053783          	ld	a5,0(a0)
    80006824:	0087b783          	ld	a5,8(a5)
    80006828:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000682c:	01893503          	ld	a0,24(s2)
    80006830:	00050863          	beqz	a0,80006840 <_ZN9BufferCPPD1Ev+0xc4>
    80006834:	00053783          	ld	a5,0(a0)
    80006838:	0087b783          	ld	a5,8(a5)
    8000683c:	000780e7          	jalr	a5
    delete mutexTail;
    80006840:	03093503          	ld	a0,48(s2)
    80006844:	00050863          	beqz	a0,80006854 <_ZN9BufferCPPD1Ev+0xd8>
    80006848:	00053783          	ld	a5,0(a0)
    8000684c:	0087b783          	ld	a5,8(a5)
    80006850:	000780e7          	jalr	a5
    delete mutexHead;
    80006854:	02893503          	ld	a0,40(s2)
    80006858:	00050863          	beqz	a0,80006868 <_ZN9BufferCPPD1Ev+0xec>
    8000685c:	00053783          	ld	a5,0(a0)
    80006860:	0087b783          	ld	a5,8(a5)
    80006864:	000780e7          	jalr	a5
}
    80006868:	01813083          	ld	ra,24(sp)
    8000686c:	01013403          	ld	s0,16(sp)
    80006870:	00813483          	ld	s1,8(sp)
    80006874:	00013903          	ld	s2,0(sp)
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret

0000000080006880 <start>:
    80006880:	ff010113          	addi	sp,sp,-16
    80006884:	00813423          	sd	s0,8(sp)
    80006888:	01010413          	addi	s0,sp,16
    8000688c:	300027f3          	csrr	a5,mstatus
    80006890:	ffffe737          	lui	a4,0xffffe
    80006894:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19cf>
    80006898:	00e7f7b3          	and	a5,a5,a4
    8000689c:	00001737          	lui	a4,0x1
    800068a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800068a4:	00e7e7b3          	or	a5,a5,a4
    800068a8:	30079073          	csrw	mstatus,a5
    800068ac:	00000797          	auipc	a5,0x0
    800068b0:	16078793          	addi	a5,a5,352 # 80006a0c <system_main>
    800068b4:	34179073          	csrw	mepc,a5
    800068b8:	00000793          	li	a5,0
    800068bc:	18079073          	csrw	satp,a5
    800068c0:	000107b7          	lui	a5,0x10
    800068c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800068c8:	30279073          	csrw	medeleg,a5
    800068cc:	30379073          	csrw	mideleg,a5
    800068d0:	104027f3          	csrr	a5,sie
    800068d4:	2227e793          	ori	a5,a5,546
    800068d8:	10479073          	csrw	sie,a5
    800068dc:	fff00793          	li	a5,-1
    800068e0:	00a7d793          	srli	a5,a5,0xa
    800068e4:	3b079073          	csrw	pmpaddr0,a5
    800068e8:	00f00793          	li	a5,15
    800068ec:	3a079073          	csrw	pmpcfg0,a5
    800068f0:	f14027f3          	csrr	a5,mhartid
    800068f4:	0200c737          	lui	a4,0x200c
    800068f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800068fc:	0007869b          	sext.w	a3,a5
    80006900:	00269713          	slli	a4,a3,0x2
    80006904:	000f4637          	lui	a2,0xf4
    80006908:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000690c:	00d70733          	add	a4,a4,a3
    80006910:	0037979b          	slliw	a5,a5,0x3
    80006914:	020046b7          	lui	a3,0x2004
    80006918:	00d787b3          	add	a5,a5,a3
    8000691c:	00c585b3          	add	a1,a1,a2
    80006920:	00371693          	slli	a3,a4,0x3
    80006924:	00005717          	auipc	a4,0x5
    80006928:	2ac70713          	addi	a4,a4,684 # 8000bbd0 <timer_scratch>
    8000692c:	00b7b023          	sd	a1,0(a5)
    80006930:	00d70733          	add	a4,a4,a3
    80006934:	00f73c23          	sd	a5,24(a4)
    80006938:	02c73023          	sd	a2,32(a4)
    8000693c:	34071073          	csrw	mscratch,a4
    80006940:	00000797          	auipc	a5,0x0
    80006944:	6e078793          	addi	a5,a5,1760 # 80007020 <timervec>
    80006948:	30579073          	csrw	mtvec,a5
    8000694c:	300027f3          	csrr	a5,mstatus
    80006950:	0087e793          	ori	a5,a5,8
    80006954:	30079073          	csrw	mstatus,a5
    80006958:	304027f3          	csrr	a5,mie
    8000695c:	0807e793          	ori	a5,a5,128
    80006960:	30479073          	csrw	mie,a5
    80006964:	f14027f3          	csrr	a5,mhartid
    80006968:	0007879b          	sext.w	a5,a5
    8000696c:	00078213          	mv	tp,a5
    80006970:	30200073          	mret
    80006974:	00813403          	ld	s0,8(sp)
    80006978:	01010113          	addi	sp,sp,16
    8000697c:	00008067          	ret

0000000080006980 <timerinit>:
    80006980:	ff010113          	addi	sp,sp,-16
    80006984:	00813423          	sd	s0,8(sp)
    80006988:	01010413          	addi	s0,sp,16
    8000698c:	f14027f3          	csrr	a5,mhartid
    80006990:	0200c737          	lui	a4,0x200c
    80006994:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006998:	0007869b          	sext.w	a3,a5
    8000699c:	00269713          	slli	a4,a3,0x2
    800069a0:	000f4637          	lui	a2,0xf4
    800069a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800069a8:	00d70733          	add	a4,a4,a3
    800069ac:	0037979b          	slliw	a5,a5,0x3
    800069b0:	020046b7          	lui	a3,0x2004
    800069b4:	00d787b3          	add	a5,a5,a3
    800069b8:	00c585b3          	add	a1,a1,a2
    800069bc:	00371693          	slli	a3,a4,0x3
    800069c0:	00005717          	auipc	a4,0x5
    800069c4:	21070713          	addi	a4,a4,528 # 8000bbd0 <timer_scratch>
    800069c8:	00b7b023          	sd	a1,0(a5)
    800069cc:	00d70733          	add	a4,a4,a3
    800069d0:	00f73c23          	sd	a5,24(a4)
    800069d4:	02c73023          	sd	a2,32(a4)
    800069d8:	34071073          	csrw	mscratch,a4
    800069dc:	00000797          	auipc	a5,0x0
    800069e0:	64478793          	addi	a5,a5,1604 # 80007020 <timervec>
    800069e4:	30579073          	csrw	mtvec,a5
    800069e8:	300027f3          	csrr	a5,mstatus
    800069ec:	0087e793          	ori	a5,a5,8
    800069f0:	30079073          	csrw	mstatus,a5
    800069f4:	304027f3          	csrr	a5,mie
    800069f8:	0807e793          	ori	a5,a5,128
    800069fc:	30479073          	csrw	mie,a5
    80006a00:	00813403          	ld	s0,8(sp)
    80006a04:	01010113          	addi	sp,sp,16
    80006a08:	00008067          	ret

0000000080006a0c <system_main>:
    80006a0c:	fe010113          	addi	sp,sp,-32
    80006a10:	00813823          	sd	s0,16(sp)
    80006a14:	00913423          	sd	s1,8(sp)
    80006a18:	00113c23          	sd	ra,24(sp)
    80006a1c:	02010413          	addi	s0,sp,32
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	0c4080e7          	jalr	196(ra) # 80006ae4 <cpuid>
    80006a28:	00005497          	auipc	s1,0x5
    80006a2c:	16048493          	addi	s1,s1,352 # 8000bb88 <started>
    80006a30:	02050263          	beqz	a0,80006a54 <system_main+0x48>
    80006a34:	0004a783          	lw	a5,0(s1)
    80006a38:	0007879b          	sext.w	a5,a5
    80006a3c:	fe078ce3          	beqz	a5,80006a34 <system_main+0x28>
    80006a40:	0ff0000f          	fence
    80006a44:	00003517          	auipc	a0,0x3
    80006a48:	31c50513          	addi	a0,a0,796 # 80009d60 <_ZTV12ConsumerSync+0x68>
    80006a4c:	00001097          	auipc	ra,0x1
    80006a50:	a70080e7          	jalr	-1424(ra) # 800074bc <panic>
    80006a54:	00001097          	auipc	ra,0x1
    80006a58:	9c4080e7          	jalr	-1596(ra) # 80007418 <consoleinit>
    80006a5c:	00001097          	auipc	ra,0x1
    80006a60:	150080e7          	jalr	336(ra) # 80007bac <printfinit>
    80006a64:	00003517          	auipc	a0,0x3
    80006a68:	98c50513          	addi	a0,a0,-1652 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80006a6c:	00001097          	auipc	ra,0x1
    80006a70:	aac080e7          	jalr	-1364(ra) # 80007518 <__printf>
    80006a74:	00003517          	auipc	a0,0x3
    80006a78:	2bc50513          	addi	a0,a0,700 # 80009d30 <_ZTV12ConsumerSync+0x38>
    80006a7c:	00001097          	auipc	ra,0x1
    80006a80:	a9c080e7          	jalr	-1380(ra) # 80007518 <__printf>
    80006a84:	00003517          	auipc	a0,0x3
    80006a88:	96c50513          	addi	a0,a0,-1684 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80006a8c:	00001097          	auipc	ra,0x1
    80006a90:	a8c080e7          	jalr	-1396(ra) # 80007518 <__printf>
    80006a94:	00001097          	auipc	ra,0x1
    80006a98:	4a4080e7          	jalr	1188(ra) # 80007f38 <kinit>
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	148080e7          	jalr	328(ra) # 80006be4 <trapinit>
    80006aa4:	00000097          	auipc	ra,0x0
    80006aa8:	16c080e7          	jalr	364(ra) # 80006c10 <trapinithart>
    80006aac:	00000097          	auipc	ra,0x0
    80006ab0:	5b4080e7          	jalr	1460(ra) # 80007060 <plicinit>
    80006ab4:	00000097          	auipc	ra,0x0
    80006ab8:	5d4080e7          	jalr	1492(ra) # 80007088 <plicinithart>
    80006abc:	00000097          	auipc	ra,0x0
    80006ac0:	078080e7          	jalr	120(ra) # 80006b34 <userinit>
    80006ac4:	0ff0000f          	fence
    80006ac8:	00100793          	li	a5,1
    80006acc:	00003517          	auipc	a0,0x3
    80006ad0:	27c50513          	addi	a0,a0,636 # 80009d48 <_ZTV12ConsumerSync+0x50>
    80006ad4:	00f4a023          	sw	a5,0(s1)
    80006ad8:	00001097          	auipc	ra,0x1
    80006adc:	a40080e7          	jalr	-1472(ra) # 80007518 <__printf>
    80006ae0:	0000006f          	j	80006ae0 <system_main+0xd4>

0000000080006ae4 <cpuid>:
    80006ae4:	ff010113          	addi	sp,sp,-16
    80006ae8:	00813423          	sd	s0,8(sp)
    80006aec:	01010413          	addi	s0,sp,16
    80006af0:	00020513          	mv	a0,tp
    80006af4:	00813403          	ld	s0,8(sp)
    80006af8:	0005051b          	sext.w	a0,a0
    80006afc:	01010113          	addi	sp,sp,16
    80006b00:	00008067          	ret

0000000080006b04 <mycpu>:
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00813423          	sd	s0,8(sp)
    80006b0c:	01010413          	addi	s0,sp,16
    80006b10:	00020793          	mv	a5,tp
    80006b14:	00813403          	ld	s0,8(sp)
    80006b18:	0007879b          	sext.w	a5,a5
    80006b1c:	00779793          	slli	a5,a5,0x7
    80006b20:	00006517          	auipc	a0,0x6
    80006b24:	0e050513          	addi	a0,a0,224 # 8000cc00 <cpus>
    80006b28:	00f50533          	add	a0,a0,a5
    80006b2c:	01010113          	addi	sp,sp,16
    80006b30:	00008067          	ret

0000000080006b34 <userinit>:
    80006b34:	ff010113          	addi	sp,sp,-16
    80006b38:	00813423          	sd	s0,8(sp)
    80006b3c:	01010413          	addi	s0,sp,16
    80006b40:	00813403          	ld	s0,8(sp)
    80006b44:	01010113          	addi	sp,sp,16
    80006b48:	ffffc317          	auipc	t1,0xffffc
    80006b4c:	88830067          	jr	-1912(t1) # 800023d0 <main>

0000000080006b50 <either_copyout>:
    80006b50:	ff010113          	addi	sp,sp,-16
    80006b54:	00813023          	sd	s0,0(sp)
    80006b58:	00113423          	sd	ra,8(sp)
    80006b5c:	01010413          	addi	s0,sp,16
    80006b60:	02051663          	bnez	a0,80006b8c <either_copyout+0x3c>
    80006b64:	00058513          	mv	a0,a1
    80006b68:	00060593          	mv	a1,a2
    80006b6c:	0006861b          	sext.w	a2,a3
    80006b70:	00002097          	auipc	ra,0x2
    80006b74:	c54080e7          	jalr	-940(ra) # 800087c4 <__memmove>
    80006b78:	00813083          	ld	ra,8(sp)
    80006b7c:	00013403          	ld	s0,0(sp)
    80006b80:	00000513          	li	a0,0
    80006b84:	01010113          	addi	sp,sp,16
    80006b88:	00008067          	ret
    80006b8c:	00003517          	auipc	a0,0x3
    80006b90:	1fc50513          	addi	a0,a0,508 # 80009d88 <_ZTV12ConsumerSync+0x90>
    80006b94:	00001097          	auipc	ra,0x1
    80006b98:	928080e7          	jalr	-1752(ra) # 800074bc <panic>

0000000080006b9c <either_copyin>:
    80006b9c:	ff010113          	addi	sp,sp,-16
    80006ba0:	00813023          	sd	s0,0(sp)
    80006ba4:	00113423          	sd	ra,8(sp)
    80006ba8:	01010413          	addi	s0,sp,16
    80006bac:	02059463          	bnez	a1,80006bd4 <either_copyin+0x38>
    80006bb0:	00060593          	mv	a1,a2
    80006bb4:	0006861b          	sext.w	a2,a3
    80006bb8:	00002097          	auipc	ra,0x2
    80006bbc:	c0c080e7          	jalr	-1012(ra) # 800087c4 <__memmove>
    80006bc0:	00813083          	ld	ra,8(sp)
    80006bc4:	00013403          	ld	s0,0(sp)
    80006bc8:	00000513          	li	a0,0
    80006bcc:	01010113          	addi	sp,sp,16
    80006bd0:	00008067          	ret
    80006bd4:	00003517          	auipc	a0,0x3
    80006bd8:	1dc50513          	addi	a0,a0,476 # 80009db0 <_ZTV12ConsumerSync+0xb8>
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	8e0080e7          	jalr	-1824(ra) # 800074bc <panic>

0000000080006be4 <trapinit>:
    80006be4:	ff010113          	addi	sp,sp,-16
    80006be8:	00813423          	sd	s0,8(sp)
    80006bec:	01010413          	addi	s0,sp,16
    80006bf0:	00813403          	ld	s0,8(sp)
    80006bf4:	00003597          	auipc	a1,0x3
    80006bf8:	1e458593          	addi	a1,a1,484 # 80009dd8 <_ZTV12ConsumerSync+0xe0>
    80006bfc:	00006517          	auipc	a0,0x6
    80006c00:	08450513          	addi	a0,a0,132 # 8000cc80 <tickslock>
    80006c04:	01010113          	addi	sp,sp,16
    80006c08:	00001317          	auipc	t1,0x1
    80006c0c:	5c030067          	jr	1472(t1) # 800081c8 <initlock>

0000000080006c10 <trapinithart>:
    80006c10:	ff010113          	addi	sp,sp,-16
    80006c14:	00813423          	sd	s0,8(sp)
    80006c18:	01010413          	addi	s0,sp,16
    80006c1c:	00000797          	auipc	a5,0x0
    80006c20:	2f478793          	addi	a5,a5,756 # 80006f10 <kernelvec>
    80006c24:	10579073          	csrw	stvec,a5
    80006c28:	00813403          	ld	s0,8(sp)
    80006c2c:	01010113          	addi	sp,sp,16
    80006c30:	00008067          	ret

0000000080006c34 <usertrap>:
    80006c34:	ff010113          	addi	sp,sp,-16
    80006c38:	00813423          	sd	s0,8(sp)
    80006c3c:	01010413          	addi	s0,sp,16
    80006c40:	00813403          	ld	s0,8(sp)
    80006c44:	01010113          	addi	sp,sp,16
    80006c48:	00008067          	ret

0000000080006c4c <usertrapret>:
    80006c4c:	ff010113          	addi	sp,sp,-16
    80006c50:	00813423          	sd	s0,8(sp)
    80006c54:	01010413          	addi	s0,sp,16
    80006c58:	00813403          	ld	s0,8(sp)
    80006c5c:	01010113          	addi	sp,sp,16
    80006c60:	00008067          	ret

0000000080006c64 <kerneltrap>:
    80006c64:	fe010113          	addi	sp,sp,-32
    80006c68:	00813823          	sd	s0,16(sp)
    80006c6c:	00113c23          	sd	ra,24(sp)
    80006c70:	00913423          	sd	s1,8(sp)
    80006c74:	02010413          	addi	s0,sp,32
    80006c78:	142025f3          	csrr	a1,scause
    80006c7c:	100027f3          	csrr	a5,sstatus
    80006c80:	0027f793          	andi	a5,a5,2
    80006c84:	10079c63          	bnez	a5,80006d9c <kerneltrap+0x138>
    80006c88:	142027f3          	csrr	a5,scause
    80006c8c:	0207ce63          	bltz	a5,80006cc8 <kerneltrap+0x64>
    80006c90:	00003517          	auipc	a0,0x3
    80006c94:	19050513          	addi	a0,a0,400 # 80009e20 <_ZTV12ConsumerSync+0x128>
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	880080e7          	jalr	-1920(ra) # 80007518 <__printf>
    80006ca0:	141025f3          	csrr	a1,sepc
    80006ca4:	14302673          	csrr	a2,stval
    80006ca8:	00003517          	auipc	a0,0x3
    80006cac:	18850513          	addi	a0,a0,392 # 80009e30 <_ZTV12ConsumerSync+0x138>
    80006cb0:	00001097          	auipc	ra,0x1
    80006cb4:	868080e7          	jalr	-1944(ra) # 80007518 <__printf>
    80006cb8:	00003517          	auipc	a0,0x3
    80006cbc:	19050513          	addi	a0,a0,400 # 80009e48 <_ZTV12ConsumerSync+0x150>
    80006cc0:	00000097          	auipc	ra,0x0
    80006cc4:	7fc080e7          	jalr	2044(ra) # 800074bc <panic>
    80006cc8:	0ff7f713          	andi	a4,a5,255
    80006ccc:	00900693          	li	a3,9
    80006cd0:	04d70063          	beq	a4,a3,80006d10 <kerneltrap+0xac>
    80006cd4:	fff00713          	li	a4,-1
    80006cd8:	03f71713          	slli	a4,a4,0x3f
    80006cdc:	00170713          	addi	a4,a4,1
    80006ce0:	fae798e3          	bne	a5,a4,80006c90 <kerneltrap+0x2c>
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	e00080e7          	jalr	-512(ra) # 80006ae4 <cpuid>
    80006cec:	06050663          	beqz	a0,80006d58 <kerneltrap+0xf4>
    80006cf0:	144027f3          	csrr	a5,sip
    80006cf4:	ffd7f793          	andi	a5,a5,-3
    80006cf8:	14479073          	csrw	sip,a5
    80006cfc:	01813083          	ld	ra,24(sp)
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	00813483          	ld	s1,8(sp)
    80006d08:	02010113          	addi	sp,sp,32
    80006d0c:	00008067          	ret
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	3c4080e7          	jalr	964(ra) # 800070d4 <plic_claim>
    80006d18:	00a00793          	li	a5,10
    80006d1c:	00050493          	mv	s1,a0
    80006d20:	06f50863          	beq	a0,a5,80006d90 <kerneltrap+0x12c>
    80006d24:	fc050ce3          	beqz	a0,80006cfc <kerneltrap+0x98>
    80006d28:	00050593          	mv	a1,a0
    80006d2c:	00003517          	auipc	a0,0x3
    80006d30:	0d450513          	addi	a0,a0,212 # 80009e00 <_ZTV12ConsumerSync+0x108>
    80006d34:	00000097          	auipc	ra,0x0
    80006d38:	7e4080e7          	jalr	2020(ra) # 80007518 <__printf>
    80006d3c:	01013403          	ld	s0,16(sp)
    80006d40:	01813083          	ld	ra,24(sp)
    80006d44:	00048513          	mv	a0,s1
    80006d48:	00813483          	ld	s1,8(sp)
    80006d4c:	02010113          	addi	sp,sp,32
    80006d50:	00000317          	auipc	t1,0x0
    80006d54:	3bc30067          	jr	956(t1) # 8000710c <plic_complete>
    80006d58:	00006517          	auipc	a0,0x6
    80006d5c:	f2850513          	addi	a0,a0,-216 # 8000cc80 <tickslock>
    80006d60:	00001097          	auipc	ra,0x1
    80006d64:	48c080e7          	jalr	1164(ra) # 800081ec <acquire>
    80006d68:	00005717          	auipc	a4,0x5
    80006d6c:	e2470713          	addi	a4,a4,-476 # 8000bb8c <ticks>
    80006d70:	00072783          	lw	a5,0(a4)
    80006d74:	00006517          	auipc	a0,0x6
    80006d78:	f0c50513          	addi	a0,a0,-244 # 8000cc80 <tickslock>
    80006d7c:	0017879b          	addiw	a5,a5,1
    80006d80:	00f72023          	sw	a5,0(a4)
    80006d84:	00001097          	auipc	ra,0x1
    80006d88:	534080e7          	jalr	1332(ra) # 800082b8 <release>
    80006d8c:	f65ff06f          	j	80006cf0 <kerneltrap+0x8c>
    80006d90:	00001097          	auipc	ra,0x1
    80006d94:	090080e7          	jalr	144(ra) # 80007e20 <uartintr>
    80006d98:	fa5ff06f          	j	80006d3c <kerneltrap+0xd8>
    80006d9c:	00003517          	auipc	a0,0x3
    80006da0:	04450513          	addi	a0,a0,68 # 80009de0 <_ZTV12ConsumerSync+0xe8>
    80006da4:	00000097          	auipc	ra,0x0
    80006da8:	718080e7          	jalr	1816(ra) # 800074bc <panic>

0000000080006dac <clockintr>:
    80006dac:	fe010113          	addi	sp,sp,-32
    80006db0:	00813823          	sd	s0,16(sp)
    80006db4:	00913423          	sd	s1,8(sp)
    80006db8:	00113c23          	sd	ra,24(sp)
    80006dbc:	02010413          	addi	s0,sp,32
    80006dc0:	00006497          	auipc	s1,0x6
    80006dc4:	ec048493          	addi	s1,s1,-320 # 8000cc80 <tickslock>
    80006dc8:	00048513          	mv	a0,s1
    80006dcc:	00001097          	auipc	ra,0x1
    80006dd0:	420080e7          	jalr	1056(ra) # 800081ec <acquire>
    80006dd4:	00005717          	auipc	a4,0x5
    80006dd8:	db870713          	addi	a4,a4,-584 # 8000bb8c <ticks>
    80006ddc:	00072783          	lw	a5,0(a4)
    80006de0:	01013403          	ld	s0,16(sp)
    80006de4:	01813083          	ld	ra,24(sp)
    80006de8:	00048513          	mv	a0,s1
    80006dec:	0017879b          	addiw	a5,a5,1
    80006df0:	00813483          	ld	s1,8(sp)
    80006df4:	00f72023          	sw	a5,0(a4)
    80006df8:	02010113          	addi	sp,sp,32
    80006dfc:	00001317          	auipc	t1,0x1
    80006e00:	4bc30067          	jr	1212(t1) # 800082b8 <release>

0000000080006e04 <devintr>:
    80006e04:	142027f3          	csrr	a5,scause
    80006e08:	00000513          	li	a0,0
    80006e0c:	0007c463          	bltz	a5,80006e14 <devintr+0x10>
    80006e10:	00008067          	ret
    80006e14:	fe010113          	addi	sp,sp,-32
    80006e18:	00813823          	sd	s0,16(sp)
    80006e1c:	00113c23          	sd	ra,24(sp)
    80006e20:	00913423          	sd	s1,8(sp)
    80006e24:	02010413          	addi	s0,sp,32
    80006e28:	0ff7f713          	andi	a4,a5,255
    80006e2c:	00900693          	li	a3,9
    80006e30:	04d70c63          	beq	a4,a3,80006e88 <devintr+0x84>
    80006e34:	fff00713          	li	a4,-1
    80006e38:	03f71713          	slli	a4,a4,0x3f
    80006e3c:	00170713          	addi	a4,a4,1
    80006e40:	00e78c63          	beq	a5,a4,80006e58 <devintr+0x54>
    80006e44:	01813083          	ld	ra,24(sp)
    80006e48:	01013403          	ld	s0,16(sp)
    80006e4c:	00813483          	ld	s1,8(sp)
    80006e50:	02010113          	addi	sp,sp,32
    80006e54:	00008067          	ret
    80006e58:	00000097          	auipc	ra,0x0
    80006e5c:	c8c080e7          	jalr	-884(ra) # 80006ae4 <cpuid>
    80006e60:	06050663          	beqz	a0,80006ecc <devintr+0xc8>
    80006e64:	144027f3          	csrr	a5,sip
    80006e68:	ffd7f793          	andi	a5,a5,-3
    80006e6c:	14479073          	csrw	sip,a5
    80006e70:	01813083          	ld	ra,24(sp)
    80006e74:	01013403          	ld	s0,16(sp)
    80006e78:	00813483          	ld	s1,8(sp)
    80006e7c:	00200513          	li	a0,2
    80006e80:	02010113          	addi	sp,sp,32
    80006e84:	00008067          	ret
    80006e88:	00000097          	auipc	ra,0x0
    80006e8c:	24c080e7          	jalr	588(ra) # 800070d4 <plic_claim>
    80006e90:	00a00793          	li	a5,10
    80006e94:	00050493          	mv	s1,a0
    80006e98:	06f50663          	beq	a0,a5,80006f04 <devintr+0x100>
    80006e9c:	00100513          	li	a0,1
    80006ea0:	fa0482e3          	beqz	s1,80006e44 <devintr+0x40>
    80006ea4:	00048593          	mv	a1,s1
    80006ea8:	00003517          	auipc	a0,0x3
    80006eac:	f5850513          	addi	a0,a0,-168 # 80009e00 <_ZTV12ConsumerSync+0x108>
    80006eb0:	00000097          	auipc	ra,0x0
    80006eb4:	668080e7          	jalr	1640(ra) # 80007518 <__printf>
    80006eb8:	00048513          	mv	a0,s1
    80006ebc:	00000097          	auipc	ra,0x0
    80006ec0:	250080e7          	jalr	592(ra) # 8000710c <plic_complete>
    80006ec4:	00100513          	li	a0,1
    80006ec8:	f7dff06f          	j	80006e44 <devintr+0x40>
    80006ecc:	00006517          	auipc	a0,0x6
    80006ed0:	db450513          	addi	a0,a0,-588 # 8000cc80 <tickslock>
    80006ed4:	00001097          	auipc	ra,0x1
    80006ed8:	318080e7          	jalr	792(ra) # 800081ec <acquire>
    80006edc:	00005717          	auipc	a4,0x5
    80006ee0:	cb070713          	addi	a4,a4,-848 # 8000bb8c <ticks>
    80006ee4:	00072783          	lw	a5,0(a4)
    80006ee8:	00006517          	auipc	a0,0x6
    80006eec:	d9850513          	addi	a0,a0,-616 # 8000cc80 <tickslock>
    80006ef0:	0017879b          	addiw	a5,a5,1
    80006ef4:	00f72023          	sw	a5,0(a4)
    80006ef8:	00001097          	auipc	ra,0x1
    80006efc:	3c0080e7          	jalr	960(ra) # 800082b8 <release>
    80006f00:	f65ff06f          	j	80006e64 <devintr+0x60>
    80006f04:	00001097          	auipc	ra,0x1
    80006f08:	f1c080e7          	jalr	-228(ra) # 80007e20 <uartintr>
    80006f0c:	fadff06f          	j	80006eb8 <devintr+0xb4>

0000000080006f10 <kernelvec>:
    80006f10:	f0010113          	addi	sp,sp,-256
    80006f14:	00113023          	sd	ra,0(sp)
    80006f18:	00213423          	sd	sp,8(sp)
    80006f1c:	00313823          	sd	gp,16(sp)
    80006f20:	00413c23          	sd	tp,24(sp)
    80006f24:	02513023          	sd	t0,32(sp)
    80006f28:	02613423          	sd	t1,40(sp)
    80006f2c:	02713823          	sd	t2,48(sp)
    80006f30:	02813c23          	sd	s0,56(sp)
    80006f34:	04913023          	sd	s1,64(sp)
    80006f38:	04a13423          	sd	a0,72(sp)
    80006f3c:	04b13823          	sd	a1,80(sp)
    80006f40:	04c13c23          	sd	a2,88(sp)
    80006f44:	06d13023          	sd	a3,96(sp)
    80006f48:	06e13423          	sd	a4,104(sp)
    80006f4c:	06f13823          	sd	a5,112(sp)
    80006f50:	07013c23          	sd	a6,120(sp)
    80006f54:	09113023          	sd	a7,128(sp)
    80006f58:	09213423          	sd	s2,136(sp)
    80006f5c:	09313823          	sd	s3,144(sp)
    80006f60:	09413c23          	sd	s4,152(sp)
    80006f64:	0b513023          	sd	s5,160(sp)
    80006f68:	0b613423          	sd	s6,168(sp)
    80006f6c:	0b713823          	sd	s7,176(sp)
    80006f70:	0b813c23          	sd	s8,184(sp)
    80006f74:	0d913023          	sd	s9,192(sp)
    80006f78:	0da13423          	sd	s10,200(sp)
    80006f7c:	0db13823          	sd	s11,208(sp)
    80006f80:	0dc13c23          	sd	t3,216(sp)
    80006f84:	0fd13023          	sd	t4,224(sp)
    80006f88:	0fe13423          	sd	t5,232(sp)
    80006f8c:	0ff13823          	sd	t6,240(sp)
    80006f90:	cd5ff0ef          	jal	ra,80006c64 <kerneltrap>
    80006f94:	00013083          	ld	ra,0(sp)
    80006f98:	00813103          	ld	sp,8(sp)
    80006f9c:	01013183          	ld	gp,16(sp)
    80006fa0:	02013283          	ld	t0,32(sp)
    80006fa4:	02813303          	ld	t1,40(sp)
    80006fa8:	03013383          	ld	t2,48(sp)
    80006fac:	03813403          	ld	s0,56(sp)
    80006fb0:	04013483          	ld	s1,64(sp)
    80006fb4:	04813503          	ld	a0,72(sp)
    80006fb8:	05013583          	ld	a1,80(sp)
    80006fbc:	05813603          	ld	a2,88(sp)
    80006fc0:	06013683          	ld	a3,96(sp)
    80006fc4:	06813703          	ld	a4,104(sp)
    80006fc8:	07013783          	ld	a5,112(sp)
    80006fcc:	07813803          	ld	a6,120(sp)
    80006fd0:	08013883          	ld	a7,128(sp)
    80006fd4:	08813903          	ld	s2,136(sp)
    80006fd8:	09013983          	ld	s3,144(sp)
    80006fdc:	09813a03          	ld	s4,152(sp)
    80006fe0:	0a013a83          	ld	s5,160(sp)
    80006fe4:	0a813b03          	ld	s6,168(sp)
    80006fe8:	0b013b83          	ld	s7,176(sp)
    80006fec:	0b813c03          	ld	s8,184(sp)
    80006ff0:	0c013c83          	ld	s9,192(sp)
    80006ff4:	0c813d03          	ld	s10,200(sp)
    80006ff8:	0d013d83          	ld	s11,208(sp)
    80006ffc:	0d813e03          	ld	t3,216(sp)
    80007000:	0e013e83          	ld	t4,224(sp)
    80007004:	0e813f03          	ld	t5,232(sp)
    80007008:	0f013f83          	ld	t6,240(sp)
    8000700c:	10010113          	addi	sp,sp,256
    80007010:	10200073          	sret
    80007014:	00000013          	nop
    80007018:	00000013          	nop
    8000701c:	00000013          	nop

0000000080007020 <timervec>:
    80007020:	34051573          	csrrw	a0,mscratch,a0
    80007024:	00b53023          	sd	a1,0(a0)
    80007028:	00c53423          	sd	a2,8(a0)
    8000702c:	00d53823          	sd	a3,16(a0)
    80007030:	01853583          	ld	a1,24(a0)
    80007034:	02053603          	ld	a2,32(a0)
    80007038:	0005b683          	ld	a3,0(a1)
    8000703c:	00c686b3          	add	a3,a3,a2
    80007040:	00d5b023          	sd	a3,0(a1)
    80007044:	00200593          	li	a1,2
    80007048:	14459073          	csrw	sip,a1
    8000704c:	01053683          	ld	a3,16(a0)
    80007050:	00853603          	ld	a2,8(a0)
    80007054:	00053583          	ld	a1,0(a0)
    80007058:	34051573          	csrrw	a0,mscratch,a0
    8000705c:	30200073          	mret

0000000080007060 <plicinit>:
    80007060:	ff010113          	addi	sp,sp,-16
    80007064:	00813423          	sd	s0,8(sp)
    80007068:	01010413          	addi	s0,sp,16
    8000706c:	00813403          	ld	s0,8(sp)
    80007070:	0c0007b7          	lui	a5,0xc000
    80007074:	00100713          	li	a4,1
    80007078:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000707c:	00e7a223          	sw	a4,4(a5)
    80007080:	01010113          	addi	sp,sp,16
    80007084:	00008067          	ret

0000000080007088 <plicinithart>:
    80007088:	ff010113          	addi	sp,sp,-16
    8000708c:	00813023          	sd	s0,0(sp)
    80007090:	00113423          	sd	ra,8(sp)
    80007094:	01010413          	addi	s0,sp,16
    80007098:	00000097          	auipc	ra,0x0
    8000709c:	a4c080e7          	jalr	-1460(ra) # 80006ae4 <cpuid>
    800070a0:	0085171b          	slliw	a4,a0,0x8
    800070a4:	0c0027b7          	lui	a5,0xc002
    800070a8:	00e787b3          	add	a5,a5,a4
    800070ac:	40200713          	li	a4,1026
    800070b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800070b4:	00813083          	ld	ra,8(sp)
    800070b8:	00013403          	ld	s0,0(sp)
    800070bc:	00d5151b          	slliw	a0,a0,0xd
    800070c0:	0c2017b7          	lui	a5,0xc201
    800070c4:	00a78533          	add	a0,a5,a0
    800070c8:	00052023          	sw	zero,0(a0)
    800070cc:	01010113          	addi	sp,sp,16
    800070d0:	00008067          	ret

00000000800070d4 <plic_claim>:
    800070d4:	ff010113          	addi	sp,sp,-16
    800070d8:	00813023          	sd	s0,0(sp)
    800070dc:	00113423          	sd	ra,8(sp)
    800070e0:	01010413          	addi	s0,sp,16
    800070e4:	00000097          	auipc	ra,0x0
    800070e8:	a00080e7          	jalr	-1536(ra) # 80006ae4 <cpuid>
    800070ec:	00813083          	ld	ra,8(sp)
    800070f0:	00013403          	ld	s0,0(sp)
    800070f4:	00d5151b          	slliw	a0,a0,0xd
    800070f8:	0c2017b7          	lui	a5,0xc201
    800070fc:	00a78533          	add	a0,a5,a0
    80007100:	00452503          	lw	a0,4(a0)
    80007104:	01010113          	addi	sp,sp,16
    80007108:	00008067          	ret

000000008000710c <plic_complete>:
    8000710c:	fe010113          	addi	sp,sp,-32
    80007110:	00813823          	sd	s0,16(sp)
    80007114:	00913423          	sd	s1,8(sp)
    80007118:	00113c23          	sd	ra,24(sp)
    8000711c:	02010413          	addi	s0,sp,32
    80007120:	00050493          	mv	s1,a0
    80007124:	00000097          	auipc	ra,0x0
    80007128:	9c0080e7          	jalr	-1600(ra) # 80006ae4 <cpuid>
    8000712c:	01813083          	ld	ra,24(sp)
    80007130:	01013403          	ld	s0,16(sp)
    80007134:	00d5179b          	slliw	a5,a0,0xd
    80007138:	0c201737          	lui	a4,0xc201
    8000713c:	00f707b3          	add	a5,a4,a5
    80007140:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007144:	00813483          	ld	s1,8(sp)
    80007148:	02010113          	addi	sp,sp,32
    8000714c:	00008067          	ret

0000000080007150 <consolewrite>:
    80007150:	fb010113          	addi	sp,sp,-80
    80007154:	04813023          	sd	s0,64(sp)
    80007158:	04113423          	sd	ra,72(sp)
    8000715c:	02913c23          	sd	s1,56(sp)
    80007160:	03213823          	sd	s2,48(sp)
    80007164:	03313423          	sd	s3,40(sp)
    80007168:	03413023          	sd	s4,32(sp)
    8000716c:	01513c23          	sd	s5,24(sp)
    80007170:	05010413          	addi	s0,sp,80
    80007174:	06c05c63          	blez	a2,800071ec <consolewrite+0x9c>
    80007178:	00060993          	mv	s3,a2
    8000717c:	00050a13          	mv	s4,a0
    80007180:	00058493          	mv	s1,a1
    80007184:	00000913          	li	s2,0
    80007188:	fff00a93          	li	s5,-1
    8000718c:	01c0006f          	j	800071a8 <consolewrite+0x58>
    80007190:	fbf44503          	lbu	a0,-65(s0)
    80007194:	0019091b          	addiw	s2,s2,1
    80007198:	00148493          	addi	s1,s1,1
    8000719c:	00001097          	auipc	ra,0x1
    800071a0:	a9c080e7          	jalr	-1380(ra) # 80007c38 <uartputc>
    800071a4:	03298063          	beq	s3,s2,800071c4 <consolewrite+0x74>
    800071a8:	00048613          	mv	a2,s1
    800071ac:	00100693          	li	a3,1
    800071b0:	000a0593          	mv	a1,s4
    800071b4:	fbf40513          	addi	a0,s0,-65
    800071b8:	00000097          	auipc	ra,0x0
    800071bc:	9e4080e7          	jalr	-1564(ra) # 80006b9c <either_copyin>
    800071c0:	fd5518e3          	bne	a0,s5,80007190 <consolewrite+0x40>
    800071c4:	04813083          	ld	ra,72(sp)
    800071c8:	04013403          	ld	s0,64(sp)
    800071cc:	03813483          	ld	s1,56(sp)
    800071d0:	02813983          	ld	s3,40(sp)
    800071d4:	02013a03          	ld	s4,32(sp)
    800071d8:	01813a83          	ld	s5,24(sp)
    800071dc:	00090513          	mv	a0,s2
    800071e0:	03013903          	ld	s2,48(sp)
    800071e4:	05010113          	addi	sp,sp,80
    800071e8:	00008067          	ret
    800071ec:	00000913          	li	s2,0
    800071f0:	fd5ff06f          	j	800071c4 <consolewrite+0x74>

00000000800071f4 <consoleread>:
    800071f4:	f9010113          	addi	sp,sp,-112
    800071f8:	06813023          	sd	s0,96(sp)
    800071fc:	04913c23          	sd	s1,88(sp)
    80007200:	05213823          	sd	s2,80(sp)
    80007204:	05313423          	sd	s3,72(sp)
    80007208:	05413023          	sd	s4,64(sp)
    8000720c:	03513c23          	sd	s5,56(sp)
    80007210:	03613823          	sd	s6,48(sp)
    80007214:	03713423          	sd	s7,40(sp)
    80007218:	03813023          	sd	s8,32(sp)
    8000721c:	06113423          	sd	ra,104(sp)
    80007220:	01913c23          	sd	s9,24(sp)
    80007224:	07010413          	addi	s0,sp,112
    80007228:	00060b93          	mv	s7,a2
    8000722c:	00050913          	mv	s2,a0
    80007230:	00058c13          	mv	s8,a1
    80007234:	00060b1b          	sext.w	s6,a2
    80007238:	00006497          	auipc	s1,0x6
    8000723c:	a7048493          	addi	s1,s1,-1424 # 8000cca8 <cons>
    80007240:	00400993          	li	s3,4
    80007244:	fff00a13          	li	s4,-1
    80007248:	00a00a93          	li	s5,10
    8000724c:	05705e63          	blez	s7,800072a8 <consoleread+0xb4>
    80007250:	09c4a703          	lw	a4,156(s1)
    80007254:	0984a783          	lw	a5,152(s1)
    80007258:	0007071b          	sext.w	a4,a4
    8000725c:	08e78463          	beq	a5,a4,800072e4 <consoleread+0xf0>
    80007260:	07f7f713          	andi	a4,a5,127
    80007264:	00e48733          	add	a4,s1,a4
    80007268:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000726c:	0017869b          	addiw	a3,a5,1
    80007270:	08d4ac23          	sw	a3,152(s1)
    80007274:	00070c9b          	sext.w	s9,a4
    80007278:	0b370663          	beq	a4,s3,80007324 <consoleread+0x130>
    8000727c:	00100693          	li	a3,1
    80007280:	f9f40613          	addi	a2,s0,-97
    80007284:	000c0593          	mv	a1,s8
    80007288:	00090513          	mv	a0,s2
    8000728c:	f8e40fa3          	sb	a4,-97(s0)
    80007290:	00000097          	auipc	ra,0x0
    80007294:	8c0080e7          	jalr	-1856(ra) # 80006b50 <either_copyout>
    80007298:	01450863          	beq	a0,s4,800072a8 <consoleread+0xb4>
    8000729c:	001c0c13          	addi	s8,s8,1
    800072a0:	fffb8b9b          	addiw	s7,s7,-1
    800072a4:	fb5c94e3          	bne	s9,s5,8000724c <consoleread+0x58>
    800072a8:	000b851b          	sext.w	a0,s7
    800072ac:	06813083          	ld	ra,104(sp)
    800072b0:	06013403          	ld	s0,96(sp)
    800072b4:	05813483          	ld	s1,88(sp)
    800072b8:	05013903          	ld	s2,80(sp)
    800072bc:	04813983          	ld	s3,72(sp)
    800072c0:	04013a03          	ld	s4,64(sp)
    800072c4:	03813a83          	ld	s5,56(sp)
    800072c8:	02813b83          	ld	s7,40(sp)
    800072cc:	02013c03          	ld	s8,32(sp)
    800072d0:	01813c83          	ld	s9,24(sp)
    800072d4:	40ab053b          	subw	a0,s6,a0
    800072d8:	03013b03          	ld	s6,48(sp)
    800072dc:	07010113          	addi	sp,sp,112
    800072e0:	00008067          	ret
    800072e4:	00001097          	auipc	ra,0x1
    800072e8:	1d8080e7          	jalr	472(ra) # 800084bc <push_on>
    800072ec:	0984a703          	lw	a4,152(s1)
    800072f0:	09c4a783          	lw	a5,156(s1)
    800072f4:	0007879b          	sext.w	a5,a5
    800072f8:	fef70ce3          	beq	a4,a5,800072f0 <consoleread+0xfc>
    800072fc:	00001097          	auipc	ra,0x1
    80007300:	234080e7          	jalr	564(ra) # 80008530 <pop_on>
    80007304:	0984a783          	lw	a5,152(s1)
    80007308:	07f7f713          	andi	a4,a5,127
    8000730c:	00e48733          	add	a4,s1,a4
    80007310:	01874703          	lbu	a4,24(a4)
    80007314:	0017869b          	addiw	a3,a5,1
    80007318:	08d4ac23          	sw	a3,152(s1)
    8000731c:	00070c9b          	sext.w	s9,a4
    80007320:	f5371ee3          	bne	a4,s3,8000727c <consoleread+0x88>
    80007324:	000b851b          	sext.w	a0,s7
    80007328:	f96bf2e3          	bgeu	s7,s6,800072ac <consoleread+0xb8>
    8000732c:	08f4ac23          	sw	a5,152(s1)
    80007330:	f7dff06f          	j	800072ac <consoleread+0xb8>

0000000080007334 <consputc>:
    80007334:	10000793          	li	a5,256
    80007338:	00f50663          	beq	a0,a5,80007344 <consputc+0x10>
    8000733c:	00001317          	auipc	t1,0x1
    80007340:	9f430067          	jr	-1548(t1) # 80007d30 <uartputc_sync>
    80007344:	ff010113          	addi	sp,sp,-16
    80007348:	00113423          	sd	ra,8(sp)
    8000734c:	00813023          	sd	s0,0(sp)
    80007350:	01010413          	addi	s0,sp,16
    80007354:	00800513          	li	a0,8
    80007358:	00001097          	auipc	ra,0x1
    8000735c:	9d8080e7          	jalr	-1576(ra) # 80007d30 <uartputc_sync>
    80007360:	02000513          	li	a0,32
    80007364:	00001097          	auipc	ra,0x1
    80007368:	9cc080e7          	jalr	-1588(ra) # 80007d30 <uartputc_sync>
    8000736c:	00013403          	ld	s0,0(sp)
    80007370:	00813083          	ld	ra,8(sp)
    80007374:	00800513          	li	a0,8
    80007378:	01010113          	addi	sp,sp,16
    8000737c:	00001317          	auipc	t1,0x1
    80007380:	9b430067          	jr	-1612(t1) # 80007d30 <uartputc_sync>

0000000080007384 <consoleintr>:
    80007384:	fe010113          	addi	sp,sp,-32
    80007388:	00813823          	sd	s0,16(sp)
    8000738c:	00913423          	sd	s1,8(sp)
    80007390:	01213023          	sd	s2,0(sp)
    80007394:	00113c23          	sd	ra,24(sp)
    80007398:	02010413          	addi	s0,sp,32
    8000739c:	00006917          	auipc	s2,0x6
    800073a0:	90c90913          	addi	s2,s2,-1780 # 8000cca8 <cons>
    800073a4:	00050493          	mv	s1,a0
    800073a8:	00090513          	mv	a0,s2
    800073ac:	00001097          	auipc	ra,0x1
    800073b0:	e40080e7          	jalr	-448(ra) # 800081ec <acquire>
    800073b4:	02048c63          	beqz	s1,800073ec <consoleintr+0x68>
    800073b8:	0a092783          	lw	a5,160(s2)
    800073bc:	09892703          	lw	a4,152(s2)
    800073c0:	07f00693          	li	a3,127
    800073c4:	40e7873b          	subw	a4,a5,a4
    800073c8:	02e6e263          	bltu	a3,a4,800073ec <consoleintr+0x68>
    800073cc:	00d00713          	li	a4,13
    800073d0:	04e48063          	beq	s1,a4,80007410 <consoleintr+0x8c>
    800073d4:	07f7f713          	andi	a4,a5,127
    800073d8:	00e90733          	add	a4,s2,a4
    800073dc:	0017879b          	addiw	a5,a5,1
    800073e0:	0af92023          	sw	a5,160(s2)
    800073e4:	00970c23          	sb	s1,24(a4)
    800073e8:	08f92e23          	sw	a5,156(s2)
    800073ec:	01013403          	ld	s0,16(sp)
    800073f0:	01813083          	ld	ra,24(sp)
    800073f4:	00813483          	ld	s1,8(sp)
    800073f8:	00013903          	ld	s2,0(sp)
    800073fc:	00006517          	auipc	a0,0x6
    80007400:	8ac50513          	addi	a0,a0,-1876 # 8000cca8 <cons>
    80007404:	02010113          	addi	sp,sp,32
    80007408:	00001317          	auipc	t1,0x1
    8000740c:	eb030067          	jr	-336(t1) # 800082b8 <release>
    80007410:	00a00493          	li	s1,10
    80007414:	fc1ff06f          	j	800073d4 <consoleintr+0x50>

0000000080007418 <consoleinit>:
    80007418:	fe010113          	addi	sp,sp,-32
    8000741c:	00113c23          	sd	ra,24(sp)
    80007420:	00813823          	sd	s0,16(sp)
    80007424:	00913423          	sd	s1,8(sp)
    80007428:	02010413          	addi	s0,sp,32
    8000742c:	00006497          	auipc	s1,0x6
    80007430:	87c48493          	addi	s1,s1,-1924 # 8000cca8 <cons>
    80007434:	00048513          	mv	a0,s1
    80007438:	00003597          	auipc	a1,0x3
    8000743c:	a2058593          	addi	a1,a1,-1504 # 80009e58 <_ZTV12ConsumerSync+0x160>
    80007440:	00001097          	auipc	ra,0x1
    80007444:	d88080e7          	jalr	-632(ra) # 800081c8 <initlock>
    80007448:	00000097          	auipc	ra,0x0
    8000744c:	7ac080e7          	jalr	1964(ra) # 80007bf4 <uartinit>
    80007450:	01813083          	ld	ra,24(sp)
    80007454:	01013403          	ld	s0,16(sp)
    80007458:	00000797          	auipc	a5,0x0
    8000745c:	d9c78793          	addi	a5,a5,-612 # 800071f4 <consoleread>
    80007460:	0af4bc23          	sd	a5,184(s1)
    80007464:	00000797          	auipc	a5,0x0
    80007468:	cec78793          	addi	a5,a5,-788 # 80007150 <consolewrite>
    8000746c:	0cf4b023          	sd	a5,192(s1)
    80007470:	00813483          	ld	s1,8(sp)
    80007474:	02010113          	addi	sp,sp,32
    80007478:	00008067          	ret

000000008000747c <console_read>:
    8000747c:	ff010113          	addi	sp,sp,-16
    80007480:	00813423          	sd	s0,8(sp)
    80007484:	01010413          	addi	s0,sp,16
    80007488:	00813403          	ld	s0,8(sp)
    8000748c:	00006317          	auipc	t1,0x6
    80007490:	8d433303          	ld	t1,-1836(t1) # 8000cd60 <devsw+0x10>
    80007494:	01010113          	addi	sp,sp,16
    80007498:	00030067          	jr	t1

000000008000749c <console_write>:
    8000749c:	ff010113          	addi	sp,sp,-16
    800074a0:	00813423          	sd	s0,8(sp)
    800074a4:	01010413          	addi	s0,sp,16
    800074a8:	00813403          	ld	s0,8(sp)
    800074ac:	00006317          	auipc	t1,0x6
    800074b0:	8bc33303          	ld	t1,-1860(t1) # 8000cd68 <devsw+0x18>
    800074b4:	01010113          	addi	sp,sp,16
    800074b8:	00030067          	jr	t1

00000000800074bc <panic>:
    800074bc:	fe010113          	addi	sp,sp,-32
    800074c0:	00113c23          	sd	ra,24(sp)
    800074c4:	00813823          	sd	s0,16(sp)
    800074c8:	00913423          	sd	s1,8(sp)
    800074cc:	02010413          	addi	s0,sp,32
    800074d0:	00050493          	mv	s1,a0
    800074d4:	00003517          	auipc	a0,0x3
    800074d8:	98c50513          	addi	a0,a0,-1652 # 80009e60 <_ZTV12ConsumerSync+0x168>
    800074dc:	00006797          	auipc	a5,0x6
    800074e0:	9207a623          	sw	zero,-1748(a5) # 8000ce08 <pr+0x18>
    800074e4:	00000097          	auipc	ra,0x0
    800074e8:	034080e7          	jalr	52(ra) # 80007518 <__printf>
    800074ec:	00048513          	mv	a0,s1
    800074f0:	00000097          	auipc	ra,0x0
    800074f4:	028080e7          	jalr	40(ra) # 80007518 <__printf>
    800074f8:	00002517          	auipc	a0,0x2
    800074fc:	ef850513          	addi	a0,a0,-264 # 800093f0 <_ZZ24debug_print_internal_intmE6digits+0xd8>
    80007500:	00000097          	auipc	ra,0x0
    80007504:	018080e7          	jalr	24(ra) # 80007518 <__printf>
    80007508:	00100793          	li	a5,1
    8000750c:	00004717          	auipc	a4,0x4
    80007510:	68f72223          	sw	a5,1668(a4) # 8000bb90 <panicked>
    80007514:	0000006f          	j	80007514 <panic+0x58>

0000000080007518 <__printf>:
    80007518:	f3010113          	addi	sp,sp,-208
    8000751c:	08813023          	sd	s0,128(sp)
    80007520:	07313423          	sd	s3,104(sp)
    80007524:	09010413          	addi	s0,sp,144
    80007528:	05813023          	sd	s8,64(sp)
    8000752c:	08113423          	sd	ra,136(sp)
    80007530:	06913c23          	sd	s1,120(sp)
    80007534:	07213823          	sd	s2,112(sp)
    80007538:	07413023          	sd	s4,96(sp)
    8000753c:	05513c23          	sd	s5,88(sp)
    80007540:	05613823          	sd	s6,80(sp)
    80007544:	05713423          	sd	s7,72(sp)
    80007548:	03913c23          	sd	s9,56(sp)
    8000754c:	03a13823          	sd	s10,48(sp)
    80007550:	03b13423          	sd	s11,40(sp)
    80007554:	00006317          	auipc	t1,0x6
    80007558:	89c30313          	addi	t1,t1,-1892 # 8000cdf0 <pr>
    8000755c:	01832c03          	lw	s8,24(t1)
    80007560:	00b43423          	sd	a1,8(s0)
    80007564:	00c43823          	sd	a2,16(s0)
    80007568:	00d43c23          	sd	a3,24(s0)
    8000756c:	02e43023          	sd	a4,32(s0)
    80007570:	02f43423          	sd	a5,40(s0)
    80007574:	03043823          	sd	a6,48(s0)
    80007578:	03143c23          	sd	a7,56(s0)
    8000757c:	00050993          	mv	s3,a0
    80007580:	4a0c1663          	bnez	s8,80007a2c <__printf+0x514>
    80007584:	60098c63          	beqz	s3,80007b9c <__printf+0x684>
    80007588:	0009c503          	lbu	a0,0(s3)
    8000758c:	00840793          	addi	a5,s0,8
    80007590:	f6f43c23          	sd	a5,-136(s0)
    80007594:	00000493          	li	s1,0
    80007598:	22050063          	beqz	a0,800077b8 <__printf+0x2a0>
    8000759c:	00002a37          	lui	s4,0x2
    800075a0:	00018ab7          	lui	s5,0x18
    800075a4:	000f4b37          	lui	s6,0xf4
    800075a8:	00989bb7          	lui	s7,0x989
    800075ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800075b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800075b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800075b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800075bc:	00148c9b          	addiw	s9,s1,1
    800075c0:	02500793          	li	a5,37
    800075c4:	01998933          	add	s2,s3,s9
    800075c8:	38f51263          	bne	a0,a5,8000794c <__printf+0x434>
    800075cc:	00094783          	lbu	a5,0(s2)
    800075d0:	00078c9b          	sext.w	s9,a5
    800075d4:	1e078263          	beqz	a5,800077b8 <__printf+0x2a0>
    800075d8:	0024849b          	addiw	s1,s1,2
    800075dc:	07000713          	li	a4,112
    800075e0:	00998933          	add	s2,s3,s1
    800075e4:	38e78a63          	beq	a5,a4,80007978 <__printf+0x460>
    800075e8:	20f76863          	bltu	a4,a5,800077f8 <__printf+0x2e0>
    800075ec:	42a78863          	beq	a5,a0,80007a1c <__printf+0x504>
    800075f0:	06400713          	li	a4,100
    800075f4:	40e79663          	bne	a5,a4,80007a00 <__printf+0x4e8>
    800075f8:	f7843783          	ld	a5,-136(s0)
    800075fc:	0007a603          	lw	a2,0(a5)
    80007600:	00878793          	addi	a5,a5,8
    80007604:	f6f43c23          	sd	a5,-136(s0)
    80007608:	42064a63          	bltz	a2,80007a3c <__printf+0x524>
    8000760c:	00a00713          	li	a4,10
    80007610:	02e677bb          	remuw	a5,a2,a4
    80007614:	00003d97          	auipc	s11,0x3
    80007618:	874d8d93          	addi	s11,s11,-1932 # 80009e88 <digits>
    8000761c:	00900593          	li	a1,9
    80007620:	0006051b          	sext.w	a0,a2
    80007624:	00000c93          	li	s9,0
    80007628:	02079793          	slli	a5,a5,0x20
    8000762c:	0207d793          	srli	a5,a5,0x20
    80007630:	00fd87b3          	add	a5,s11,a5
    80007634:	0007c783          	lbu	a5,0(a5)
    80007638:	02e656bb          	divuw	a3,a2,a4
    8000763c:	f8f40023          	sb	a5,-128(s0)
    80007640:	14c5d863          	bge	a1,a2,80007790 <__printf+0x278>
    80007644:	06300593          	li	a1,99
    80007648:	00100c93          	li	s9,1
    8000764c:	02e6f7bb          	remuw	a5,a3,a4
    80007650:	02079793          	slli	a5,a5,0x20
    80007654:	0207d793          	srli	a5,a5,0x20
    80007658:	00fd87b3          	add	a5,s11,a5
    8000765c:	0007c783          	lbu	a5,0(a5)
    80007660:	02e6d73b          	divuw	a4,a3,a4
    80007664:	f8f400a3          	sb	a5,-127(s0)
    80007668:	12a5f463          	bgeu	a1,a0,80007790 <__printf+0x278>
    8000766c:	00a00693          	li	a3,10
    80007670:	00900593          	li	a1,9
    80007674:	02d777bb          	remuw	a5,a4,a3
    80007678:	02079793          	slli	a5,a5,0x20
    8000767c:	0207d793          	srli	a5,a5,0x20
    80007680:	00fd87b3          	add	a5,s11,a5
    80007684:	0007c503          	lbu	a0,0(a5)
    80007688:	02d757bb          	divuw	a5,a4,a3
    8000768c:	f8a40123          	sb	a0,-126(s0)
    80007690:	48e5f263          	bgeu	a1,a4,80007b14 <__printf+0x5fc>
    80007694:	06300513          	li	a0,99
    80007698:	02d7f5bb          	remuw	a1,a5,a3
    8000769c:	02059593          	slli	a1,a1,0x20
    800076a0:	0205d593          	srli	a1,a1,0x20
    800076a4:	00bd85b3          	add	a1,s11,a1
    800076a8:	0005c583          	lbu	a1,0(a1)
    800076ac:	02d7d7bb          	divuw	a5,a5,a3
    800076b0:	f8b401a3          	sb	a1,-125(s0)
    800076b4:	48e57263          	bgeu	a0,a4,80007b38 <__printf+0x620>
    800076b8:	3e700513          	li	a0,999
    800076bc:	02d7f5bb          	remuw	a1,a5,a3
    800076c0:	02059593          	slli	a1,a1,0x20
    800076c4:	0205d593          	srli	a1,a1,0x20
    800076c8:	00bd85b3          	add	a1,s11,a1
    800076cc:	0005c583          	lbu	a1,0(a1)
    800076d0:	02d7d7bb          	divuw	a5,a5,a3
    800076d4:	f8b40223          	sb	a1,-124(s0)
    800076d8:	46e57663          	bgeu	a0,a4,80007b44 <__printf+0x62c>
    800076dc:	02d7f5bb          	remuw	a1,a5,a3
    800076e0:	02059593          	slli	a1,a1,0x20
    800076e4:	0205d593          	srli	a1,a1,0x20
    800076e8:	00bd85b3          	add	a1,s11,a1
    800076ec:	0005c583          	lbu	a1,0(a1)
    800076f0:	02d7d7bb          	divuw	a5,a5,a3
    800076f4:	f8b402a3          	sb	a1,-123(s0)
    800076f8:	46ea7863          	bgeu	s4,a4,80007b68 <__printf+0x650>
    800076fc:	02d7f5bb          	remuw	a1,a5,a3
    80007700:	02059593          	slli	a1,a1,0x20
    80007704:	0205d593          	srli	a1,a1,0x20
    80007708:	00bd85b3          	add	a1,s11,a1
    8000770c:	0005c583          	lbu	a1,0(a1)
    80007710:	02d7d7bb          	divuw	a5,a5,a3
    80007714:	f8b40323          	sb	a1,-122(s0)
    80007718:	3eeaf863          	bgeu	s5,a4,80007b08 <__printf+0x5f0>
    8000771c:	02d7f5bb          	remuw	a1,a5,a3
    80007720:	02059593          	slli	a1,a1,0x20
    80007724:	0205d593          	srli	a1,a1,0x20
    80007728:	00bd85b3          	add	a1,s11,a1
    8000772c:	0005c583          	lbu	a1,0(a1)
    80007730:	02d7d7bb          	divuw	a5,a5,a3
    80007734:	f8b403a3          	sb	a1,-121(s0)
    80007738:	42eb7e63          	bgeu	s6,a4,80007b74 <__printf+0x65c>
    8000773c:	02d7f5bb          	remuw	a1,a5,a3
    80007740:	02059593          	slli	a1,a1,0x20
    80007744:	0205d593          	srli	a1,a1,0x20
    80007748:	00bd85b3          	add	a1,s11,a1
    8000774c:	0005c583          	lbu	a1,0(a1)
    80007750:	02d7d7bb          	divuw	a5,a5,a3
    80007754:	f8b40423          	sb	a1,-120(s0)
    80007758:	42ebfc63          	bgeu	s7,a4,80007b90 <__printf+0x678>
    8000775c:	02079793          	slli	a5,a5,0x20
    80007760:	0207d793          	srli	a5,a5,0x20
    80007764:	00fd8db3          	add	s11,s11,a5
    80007768:	000dc703          	lbu	a4,0(s11)
    8000776c:	00a00793          	li	a5,10
    80007770:	00900c93          	li	s9,9
    80007774:	f8e404a3          	sb	a4,-119(s0)
    80007778:	00065c63          	bgez	a2,80007790 <__printf+0x278>
    8000777c:	f9040713          	addi	a4,s0,-112
    80007780:	00f70733          	add	a4,a4,a5
    80007784:	02d00693          	li	a3,45
    80007788:	fed70823          	sb	a3,-16(a4)
    8000778c:	00078c93          	mv	s9,a5
    80007790:	f8040793          	addi	a5,s0,-128
    80007794:	01978cb3          	add	s9,a5,s9
    80007798:	f7f40d13          	addi	s10,s0,-129
    8000779c:	000cc503          	lbu	a0,0(s9)
    800077a0:	fffc8c93          	addi	s9,s9,-1
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	b90080e7          	jalr	-1136(ra) # 80007334 <consputc>
    800077ac:	ffac98e3          	bne	s9,s10,8000779c <__printf+0x284>
    800077b0:	00094503          	lbu	a0,0(s2)
    800077b4:	e00514e3          	bnez	a0,800075bc <__printf+0xa4>
    800077b8:	1a0c1663          	bnez	s8,80007964 <__printf+0x44c>
    800077bc:	08813083          	ld	ra,136(sp)
    800077c0:	08013403          	ld	s0,128(sp)
    800077c4:	07813483          	ld	s1,120(sp)
    800077c8:	07013903          	ld	s2,112(sp)
    800077cc:	06813983          	ld	s3,104(sp)
    800077d0:	06013a03          	ld	s4,96(sp)
    800077d4:	05813a83          	ld	s5,88(sp)
    800077d8:	05013b03          	ld	s6,80(sp)
    800077dc:	04813b83          	ld	s7,72(sp)
    800077e0:	04013c03          	ld	s8,64(sp)
    800077e4:	03813c83          	ld	s9,56(sp)
    800077e8:	03013d03          	ld	s10,48(sp)
    800077ec:	02813d83          	ld	s11,40(sp)
    800077f0:	0d010113          	addi	sp,sp,208
    800077f4:	00008067          	ret
    800077f8:	07300713          	li	a4,115
    800077fc:	1ce78a63          	beq	a5,a4,800079d0 <__printf+0x4b8>
    80007800:	07800713          	li	a4,120
    80007804:	1ee79e63          	bne	a5,a4,80007a00 <__printf+0x4e8>
    80007808:	f7843783          	ld	a5,-136(s0)
    8000780c:	0007a703          	lw	a4,0(a5)
    80007810:	00878793          	addi	a5,a5,8
    80007814:	f6f43c23          	sd	a5,-136(s0)
    80007818:	28074263          	bltz	a4,80007a9c <__printf+0x584>
    8000781c:	00002d97          	auipc	s11,0x2
    80007820:	66cd8d93          	addi	s11,s11,1644 # 80009e88 <digits>
    80007824:	00f77793          	andi	a5,a4,15
    80007828:	00fd87b3          	add	a5,s11,a5
    8000782c:	0007c683          	lbu	a3,0(a5)
    80007830:	00f00613          	li	a2,15
    80007834:	0007079b          	sext.w	a5,a4
    80007838:	f8d40023          	sb	a3,-128(s0)
    8000783c:	0047559b          	srliw	a1,a4,0x4
    80007840:	0047569b          	srliw	a3,a4,0x4
    80007844:	00000c93          	li	s9,0
    80007848:	0ee65063          	bge	a2,a4,80007928 <__printf+0x410>
    8000784c:	00f6f693          	andi	a3,a3,15
    80007850:	00dd86b3          	add	a3,s11,a3
    80007854:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007858:	0087d79b          	srliw	a5,a5,0x8
    8000785c:	00100c93          	li	s9,1
    80007860:	f8d400a3          	sb	a3,-127(s0)
    80007864:	0cb67263          	bgeu	a2,a1,80007928 <__printf+0x410>
    80007868:	00f7f693          	andi	a3,a5,15
    8000786c:	00dd86b3          	add	a3,s11,a3
    80007870:	0006c583          	lbu	a1,0(a3)
    80007874:	00f00613          	li	a2,15
    80007878:	0047d69b          	srliw	a3,a5,0x4
    8000787c:	f8b40123          	sb	a1,-126(s0)
    80007880:	0047d593          	srli	a1,a5,0x4
    80007884:	28f67e63          	bgeu	a2,a5,80007b20 <__printf+0x608>
    80007888:	00f6f693          	andi	a3,a3,15
    8000788c:	00dd86b3          	add	a3,s11,a3
    80007890:	0006c503          	lbu	a0,0(a3)
    80007894:	0087d813          	srli	a6,a5,0x8
    80007898:	0087d69b          	srliw	a3,a5,0x8
    8000789c:	f8a401a3          	sb	a0,-125(s0)
    800078a0:	28b67663          	bgeu	a2,a1,80007b2c <__printf+0x614>
    800078a4:	00f6f693          	andi	a3,a3,15
    800078a8:	00dd86b3          	add	a3,s11,a3
    800078ac:	0006c583          	lbu	a1,0(a3)
    800078b0:	00c7d513          	srli	a0,a5,0xc
    800078b4:	00c7d69b          	srliw	a3,a5,0xc
    800078b8:	f8b40223          	sb	a1,-124(s0)
    800078bc:	29067a63          	bgeu	a2,a6,80007b50 <__printf+0x638>
    800078c0:	00f6f693          	andi	a3,a3,15
    800078c4:	00dd86b3          	add	a3,s11,a3
    800078c8:	0006c583          	lbu	a1,0(a3)
    800078cc:	0107d813          	srli	a6,a5,0x10
    800078d0:	0107d69b          	srliw	a3,a5,0x10
    800078d4:	f8b402a3          	sb	a1,-123(s0)
    800078d8:	28a67263          	bgeu	a2,a0,80007b5c <__printf+0x644>
    800078dc:	00f6f693          	andi	a3,a3,15
    800078e0:	00dd86b3          	add	a3,s11,a3
    800078e4:	0006c683          	lbu	a3,0(a3)
    800078e8:	0147d79b          	srliw	a5,a5,0x14
    800078ec:	f8d40323          	sb	a3,-122(s0)
    800078f0:	21067663          	bgeu	a2,a6,80007afc <__printf+0x5e4>
    800078f4:	02079793          	slli	a5,a5,0x20
    800078f8:	0207d793          	srli	a5,a5,0x20
    800078fc:	00fd8db3          	add	s11,s11,a5
    80007900:	000dc683          	lbu	a3,0(s11)
    80007904:	00800793          	li	a5,8
    80007908:	00700c93          	li	s9,7
    8000790c:	f8d403a3          	sb	a3,-121(s0)
    80007910:	00075c63          	bgez	a4,80007928 <__printf+0x410>
    80007914:	f9040713          	addi	a4,s0,-112
    80007918:	00f70733          	add	a4,a4,a5
    8000791c:	02d00693          	li	a3,45
    80007920:	fed70823          	sb	a3,-16(a4)
    80007924:	00078c93          	mv	s9,a5
    80007928:	f8040793          	addi	a5,s0,-128
    8000792c:	01978cb3          	add	s9,a5,s9
    80007930:	f7f40d13          	addi	s10,s0,-129
    80007934:	000cc503          	lbu	a0,0(s9)
    80007938:	fffc8c93          	addi	s9,s9,-1
    8000793c:	00000097          	auipc	ra,0x0
    80007940:	9f8080e7          	jalr	-1544(ra) # 80007334 <consputc>
    80007944:	ff9d18e3          	bne	s10,s9,80007934 <__printf+0x41c>
    80007948:	0100006f          	j	80007958 <__printf+0x440>
    8000794c:	00000097          	auipc	ra,0x0
    80007950:	9e8080e7          	jalr	-1560(ra) # 80007334 <consputc>
    80007954:	000c8493          	mv	s1,s9
    80007958:	00094503          	lbu	a0,0(s2)
    8000795c:	c60510e3          	bnez	a0,800075bc <__printf+0xa4>
    80007960:	e40c0ee3          	beqz	s8,800077bc <__printf+0x2a4>
    80007964:	00005517          	auipc	a0,0x5
    80007968:	48c50513          	addi	a0,a0,1164 # 8000cdf0 <pr>
    8000796c:	00001097          	auipc	ra,0x1
    80007970:	94c080e7          	jalr	-1716(ra) # 800082b8 <release>
    80007974:	e49ff06f          	j	800077bc <__printf+0x2a4>
    80007978:	f7843783          	ld	a5,-136(s0)
    8000797c:	03000513          	li	a0,48
    80007980:	01000d13          	li	s10,16
    80007984:	00878713          	addi	a4,a5,8
    80007988:	0007bc83          	ld	s9,0(a5)
    8000798c:	f6e43c23          	sd	a4,-136(s0)
    80007990:	00000097          	auipc	ra,0x0
    80007994:	9a4080e7          	jalr	-1628(ra) # 80007334 <consputc>
    80007998:	07800513          	li	a0,120
    8000799c:	00000097          	auipc	ra,0x0
    800079a0:	998080e7          	jalr	-1640(ra) # 80007334 <consputc>
    800079a4:	00002d97          	auipc	s11,0x2
    800079a8:	4e4d8d93          	addi	s11,s11,1252 # 80009e88 <digits>
    800079ac:	03ccd793          	srli	a5,s9,0x3c
    800079b0:	00fd87b3          	add	a5,s11,a5
    800079b4:	0007c503          	lbu	a0,0(a5)
    800079b8:	fffd0d1b          	addiw	s10,s10,-1
    800079bc:	004c9c93          	slli	s9,s9,0x4
    800079c0:	00000097          	auipc	ra,0x0
    800079c4:	974080e7          	jalr	-1676(ra) # 80007334 <consputc>
    800079c8:	fe0d12e3          	bnez	s10,800079ac <__printf+0x494>
    800079cc:	f8dff06f          	j	80007958 <__printf+0x440>
    800079d0:	f7843783          	ld	a5,-136(s0)
    800079d4:	0007bc83          	ld	s9,0(a5)
    800079d8:	00878793          	addi	a5,a5,8
    800079dc:	f6f43c23          	sd	a5,-136(s0)
    800079e0:	000c9a63          	bnez	s9,800079f4 <__printf+0x4dc>
    800079e4:	1080006f          	j	80007aec <__printf+0x5d4>
    800079e8:	001c8c93          	addi	s9,s9,1
    800079ec:	00000097          	auipc	ra,0x0
    800079f0:	948080e7          	jalr	-1720(ra) # 80007334 <consputc>
    800079f4:	000cc503          	lbu	a0,0(s9)
    800079f8:	fe0518e3          	bnez	a0,800079e8 <__printf+0x4d0>
    800079fc:	f5dff06f          	j	80007958 <__printf+0x440>
    80007a00:	02500513          	li	a0,37
    80007a04:	00000097          	auipc	ra,0x0
    80007a08:	930080e7          	jalr	-1744(ra) # 80007334 <consputc>
    80007a0c:	000c8513          	mv	a0,s9
    80007a10:	00000097          	auipc	ra,0x0
    80007a14:	924080e7          	jalr	-1756(ra) # 80007334 <consputc>
    80007a18:	f41ff06f          	j	80007958 <__printf+0x440>
    80007a1c:	02500513          	li	a0,37
    80007a20:	00000097          	auipc	ra,0x0
    80007a24:	914080e7          	jalr	-1772(ra) # 80007334 <consputc>
    80007a28:	f31ff06f          	j	80007958 <__printf+0x440>
    80007a2c:	00030513          	mv	a0,t1
    80007a30:	00000097          	auipc	ra,0x0
    80007a34:	7bc080e7          	jalr	1980(ra) # 800081ec <acquire>
    80007a38:	b4dff06f          	j	80007584 <__printf+0x6c>
    80007a3c:	40c0053b          	negw	a0,a2
    80007a40:	00a00713          	li	a4,10
    80007a44:	02e576bb          	remuw	a3,a0,a4
    80007a48:	00002d97          	auipc	s11,0x2
    80007a4c:	440d8d93          	addi	s11,s11,1088 # 80009e88 <digits>
    80007a50:	ff700593          	li	a1,-9
    80007a54:	02069693          	slli	a3,a3,0x20
    80007a58:	0206d693          	srli	a3,a3,0x20
    80007a5c:	00dd86b3          	add	a3,s11,a3
    80007a60:	0006c683          	lbu	a3,0(a3)
    80007a64:	02e557bb          	divuw	a5,a0,a4
    80007a68:	f8d40023          	sb	a3,-128(s0)
    80007a6c:	10b65e63          	bge	a2,a1,80007b88 <__printf+0x670>
    80007a70:	06300593          	li	a1,99
    80007a74:	02e7f6bb          	remuw	a3,a5,a4
    80007a78:	02069693          	slli	a3,a3,0x20
    80007a7c:	0206d693          	srli	a3,a3,0x20
    80007a80:	00dd86b3          	add	a3,s11,a3
    80007a84:	0006c683          	lbu	a3,0(a3)
    80007a88:	02e7d73b          	divuw	a4,a5,a4
    80007a8c:	00200793          	li	a5,2
    80007a90:	f8d400a3          	sb	a3,-127(s0)
    80007a94:	bca5ece3          	bltu	a1,a0,8000766c <__printf+0x154>
    80007a98:	ce5ff06f          	j	8000777c <__printf+0x264>
    80007a9c:	40e007bb          	negw	a5,a4
    80007aa0:	00002d97          	auipc	s11,0x2
    80007aa4:	3e8d8d93          	addi	s11,s11,1000 # 80009e88 <digits>
    80007aa8:	00f7f693          	andi	a3,a5,15
    80007aac:	00dd86b3          	add	a3,s11,a3
    80007ab0:	0006c583          	lbu	a1,0(a3)
    80007ab4:	ff100613          	li	a2,-15
    80007ab8:	0047d69b          	srliw	a3,a5,0x4
    80007abc:	f8b40023          	sb	a1,-128(s0)
    80007ac0:	0047d59b          	srliw	a1,a5,0x4
    80007ac4:	0ac75e63          	bge	a4,a2,80007b80 <__printf+0x668>
    80007ac8:	00f6f693          	andi	a3,a3,15
    80007acc:	00dd86b3          	add	a3,s11,a3
    80007ad0:	0006c603          	lbu	a2,0(a3)
    80007ad4:	00f00693          	li	a3,15
    80007ad8:	0087d79b          	srliw	a5,a5,0x8
    80007adc:	f8c400a3          	sb	a2,-127(s0)
    80007ae0:	d8b6e4e3          	bltu	a3,a1,80007868 <__printf+0x350>
    80007ae4:	00200793          	li	a5,2
    80007ae8:	e2dff06f          	j	80007914 <__printf+0x3fc>
    80007aec:	00002c97          	auipc	s9,0x2
    80007af0:	37cc8c93          	addi	s9,s9,892 # 80009e68 <_ZTV12ConsumerSync+0x170>
    80007af4:	02800513          	li	a0,40
    80007af8:	ef1ff06f          	j	800079e8 <__printf+0x4d0>
    80007afc:	00700793          	li	a5,7
    80007b00:	00600c93          	li	s9,6
    80007b04:	e0dff06f          	j	80007910 <__printf+0x3f8>
    80007b08:	00700793          	li	a5,7
    80007b0c:	00600c93          	li	s9,6
    80007b10:	c69ff06f          	j	80007778 <__printf+0x260>
    80007b14:	00300793          	li	a5,3
    80007b18:	00200c93          	li	s9,2
    80007b1c:	c5dff06f          	j	80007778 <__printf+0x260>
    80007b20:	00300793          	li	a5,3
    80007b24:	00200c93          	li	s9,2
    80007b28:	de9ff06f          	j	80007910 <__printf+0x3f8>
    80007b2c:	00400793          	li	a5,4
    80007b30:	00300c93          	li	s9,3
    80007b34:	dddff06f          	j	80007910 <__printf+0x3f8>
    80007b38:	00400793          	li	a5,4
    80007b3c:	00300c93          	li	s9,3
    80007b40:	c39ff06f          	j	80007778 <__printf+0x260>
    80007b44:	00500793          	li	a5,5
    80007b48:	00400c93          	li	s9,4
    80007b4c:	c2dff06f          	j	80007778 <__printf+0x260>
    80007b50:	00500793          	li	a5,5
    80007b54:	00400c93          	li	s9,4
    80007b58:	db9ff06f          	j	80007910 <__printf+0x3f8>
    80007b5c:	00600793          	li	a5,6
    80007b60:	00500c93          	li	s9,5
    80007b64:	dadff06f          	j	80007910 <__printf+0x3f8>
    80007b68:	00600793          	li	a5,6
    80007b6c:	00500c93          	li	s9,5
    80007b70:	c09ff06f          	j	80007778 <__printf+0x260>
    80007b74:	00800793          	li	a5,8
    80007b78:	00700c93          	li	s9,7
    80007b7c:	bfdff06f          	j	80007778 <__printf+0x260>
    80007b80:	00100793          	li	a5,1
    80007b84:	d91ff06f          	j	80007914 <__printf+0x3fc>
    80007b88:	00100793          	li	a5,1
    80007b8c:	bf1ff06f          	j	8000777c <__printf+0x264>
    80007b90:	00900793          	li	a5,9
    80007b94:	00800c93          	li	s9,8
    80007b98:	be1ff06f          	j	80007778 <__printf+0x260>
    80007b9c:	00002517          	auipc	a0,0x2
    80007ba0:	2d450513          	addi	a0,a0,724 # 80009e70 <_ZTV12ConsumerSync+0x178>
    80007ba4:	00000097          	auipc	ra,0x0
    80007ba8:	918080e7          	jalr	-1768(ra) # 800074bc <panic>

0000000080007bac <printfinit>:
    80007bac:	fe010113          	addi	sp,sp,-32
    80007bb0:	00813823          	sd	s0,16(sp)
    80007bb4:	00913423          	sd	s1,8(sp)
    80007bb8:	00113c23          	sd	ra,24(sp)
    80007bbc:	02010413          	addi	s0,sp,32
    80007bc0:	00005497          	auipc	s1,0x5
    80007bc4:	23048493          	addi	s1,s1,560 # 8000cdf0 <pr>
    80007bc8:	00048513          	mv	a0,s1
    80007bcc:	00002597          	auipc	a1,0x2
    80007bd0:	2b458593          	addi	a1,a1,692 # 80009e80 <_ZTV12ConsumerSync+0x188>
    80007bd4:	00000097          	auipc	ra,0x0
    80007bd8:	5f4080e7          	jalr	1524(ra) # 800081c8 <initlock>
    80007bdc:	01813083          	ld	ra,24(sp)
    80007be0:	01013403          	ld	s0,16(sp)
    80007be4:	0004ac23          	sw	zero,24(s1)
    80007be8:	00813483          	ld	s1,8(sp)
    80007bec:	02010113          	addi	sp,sp,32
    80007bf0:	00008067          	ret

0000000080007bf4 <uartinit>:
    80007bf4:	ff010113          	addi	sp,sp,-16
    80007bf8:	00813423          	sd	s0,8(sp)
    80007bfc:	01010413          	addi	s0,sp,16
    80007c00:	100007b7          	lui	a5,0x10000
    80007c04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007c08:	f8000713          	li	a4,-128
    80007c0c:	00e781a3          	sb	a4,3(a5)
    80007c10:	00300713          	li	a4,3
    80007c14:	00e78023          	sb	a4,0(a5)
    80007c18:	000780a3          	sb	zero,1(a5)
    80007c1c:	00e781a3          	sb	a4,3(a5)
    80007c20:	00700693          	li	a3,7
    80007c24:	00d78123          	sb	a3,2(a5)
    80007c28:	00e780a3          	sb	a4,1(a5)
    80007c2c:	00813403          	ld	s0,8(sp)
    80007c30:	01010113          	addi	sp,sp,16
    80007c34:	00008067          	ret

0000000080007c38 <uartputc>:
    80007c38:	00004797          	auipc	a5,0x4
    80007c3c:	f587a783          	lw	a5,-168(a5) # 8000bb90 <panicked>
    80007c40:	00078463          	beqz	a5,80007c48 <uartputc+0x10>
    80007c44:	0000006f          	j	80007c44 <uartputc+0xc>
    80007c48:	fd010113          	addi	sp,sp,-48
    80007c4c:	02813023          	sd	s0,32(sp)
    80007c50:	00913c23          	sd	s1,24(sp)
    80007c54:	01213823          	sd	s2,16(sp)
    80007c58:	01313423          	sd	s3,8(sp)
    80007c5c:	02113423          	sd	ra,40(sp)
    80007c60:	03010413          	addi	s0,sp,48
    80007c64:	00004917          	auipc	s2,0x4
    80007c68:	f3490913          	addi	s2,s2,-204 # 8000bb98 <uart_tx_r>
    80007c6c:	00093783          	ld	a5,0(s2)
    80007c70:	00004497          	auipc	s1,0x4
    80007c74:	f3048493          	addi	s1,s1,-208 # 8000bba0 <uart_tx_w>
    80007c78:	0004b703          	ld	a4,0(s1)
    80007c7c:	02078693          	addi	a3,a5,32
    80007c80:	00050993          	mv	s3,a0
    80007c84:	02e69c63          	bne	a3,a4,80007cbc <uartputc+0x84>
    80007c88:	00001097          	auipc	ra,0x1
    80007c8c:	834080e7          	jalr	-1996(ra) # 800084bc <push_on>
    80007c90:	00093783          	ld	a5,0(s2)
    80007c94:	0004b703          	ld	a4,0(s1)
    80007c98:	02078793          	addi	a5,a5,32
    80007c9c:	00e79463          	bne	a5,a4,80007ca4 <uartputc+0x6c>
    80007ca0:	0000006f          	j	80007ca0 <uartputc+0x68>
    80007ca4:	00001097          	auipc	ra,0x1
    80007ca8:	88c080e7          	jalr	-1908(ra) # 80008530 <pop_on>
    80007cac:	00093783          	ld	a5,0(s2)
    80007cb0:	0004b703          	ld	a4,0(s1)
    80007cb4:	02078693          	addi	a3,a5,32
    80007cb8:	fce688e3          	beq	a3,a4,80007c88 <uartputc+0x50>
    80007cbc:	01f77693          	andi	a3,a4,31
    80007cc0:	00005597          	auipc	a1,0x5
    80007cc4:	15058593          	addi	a1,a1,336 # 8000ce10 <uart_tx_buf>
    80007cc8:	00d586b3          	add	a3,a1,a3
    80007ccc:	00170713          	addi	a4,a4,1
    80007cd0:	01368023          	sb	s3,0(a3)
    80007cd4:	00e4b023          	sd	a4,0(s1)
    80007cd8:	10000637          	lui	a2,0x10000
    80007cdc:	02f71063          	bne	a4,a5,80007cfc <uartputc+0xc4>
    80007ce0:	0340006f          	j	80007d14 <uartputc+0xdc>
    80007ce4:	00074703          	lbu	a4,0(a4)
    80007ce8:	00f93023          	sd	a5,0(s2)
    80007cec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007cf0:	00093783          	ld	a5,0(s2)
    80007cf4:	0004b703          	ld	a4,0(s1)
    80007cf8:	00f70e63          	beq	a4,a5,80007d14 <uartputc+0xdc>
    80007cfc:	00564683          	lbu	a3,5(a2)
    80007d00:	01f7f713          	andi	a4,a5,31
    80007d04:	00e58733          	add	a4,a1,a4
    80007d08:	0206f693          	andi	a3,a3,32
    80007d0c:	00178793          	addi	a5,a5,1
    80007d10:	fc069ae3          	bnez	a3,80007ce4 <uartputc+0xac>
    80007d14:	02813083          	ld	ra,40(sp)
    80007d18:	02013403          	ld	s0,32(sp)
    80007d1c:	01813483          	ld	s1,24(sp)
    80007d20:	01013903          	ld	s2,16(sp)
    80007d24:	00813983          	ld	s3,8(sp)
    80007d28:	03010113          	addi	sp,sp,48
    80007d2c:	00008067          	ret

0000000080007d30 <uartputc_sync>:
    80007d30:	ff010113          	addi	sp,sp,-16
    80007d34:	00813423          	sd	s0,8(sp)
    80007d38:	01010413          	addi	s0,sp,16
    80007d3c:	00004717          	auipc	a4,0x4
    80007d40:	e5472703          	lw	a4,-428(a4) # 8000bb90 <panicked>
    80007d44:	02071663          	bnez	a4,80007d70 <uartputc_sync+0x40>
    80007d48:	00050793          	mv	a5,a0
    80007d4c:	100006b7          	lui	a3,0x10000
    80007d50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007d54:	02077713          	andi	a4,a4,32
    80007d58:	fe070ce3          	beqz	a4,80007d50 <uartputc_sync+0x20>
    80007d5c:	0ff7f793          	andi	a5,a5,255
    80007d60:	00f68023          	sb	a5,0(a3)
    80007d64:	00813403          	ld	s0,8(sp)
    80007d68:	01010113          	addi	sp,sp,16
    80007d6c:	00008067          	ret
    80007d70:	0000006f          	j	80007d70 <uartputc_sync+0x40>

0000000080007d74 <uartstart>:
    80007d74:	ff010113          	addi	sp,sp,-16
    80007d78:	00813423          	sd	s0,8(sp)
    80007d7c:	01010413          	addi	s0,sp,16
    80007d80:	00004617          	auipc	a2,0x4
    80007d84:	e1860613          	addi	a2,a2,-488 # 8000bb98 <uart_tx_r>
    80007d88:	00004517          	auipc	a0,0x4
    80007d8c:	e1850513          	addi	a0,a0,-488 # 8000bba0 <uart_tx_w>
    80007d90:	00063783          	ld	a5,0(a2)
    80007d94:	00053703          	ld	a4,0(a0)
    80007d98:	04f70263          	beq	a4,a5,80007ddc <uartstart+0x68>
    80007d9c:	100005b7          	lui	a1,0x10000
    80007da0:	00005817          	auipc	a6,0x5
    80007da4:	07080813          	addi	a6,a6,112 # 8000ce10 <uart_tx_buf>
    80007da8:	01c0006f          	j	80007dc4 <uartstart+0x50>
    80007dac:	0006c703          	lbu	a4,0(a3)
    80007db0:	00f63023          	sd	a5,0(a2)
    80007db4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007db8:	00063783          	ld	a5,0(a2)
    80007dbc:	00053703          	ld	a4,0(a0)
    80007dc0:	00f70e63          	beq	a4,a5,80007ddc <uartstart+0x68>
    80007dc4:	01f7f713          	andi	a4,a5,31
    80007dc8:	00e806b3          	add	a3,a6,a4
    80007dcc:	0055c703          	lbu	a4,5(a1)
    80007dd0:	00178793          	addi	a5,a5,1
    80007dd4:	02077713          	andi	a4,a4,32
    80007dd8:	fc071ae3          	bnez	a4,80007dac <uartstart+0x38>
    80007ddc:	00813403          	ld	s0,8(sp)
    80007de0:	01010113          	addi	sp,sp,16
    80007de4:	00008067          	ret

0000000080007de8 <uartgetc>:
    80007de8:	ff010113          	addi	sp,sp,-16
    80007dec:	00813423          	sd	s0,8(sp)
    80007df0:	01010413          	addi	s0,sp,16
    80007df4:	10000737          	lui	a4,0x10000
    80007df8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007dfc:	0017f793          	andi	a5,a5,1
    80007e00:	00078c63          	beqz	a5,80007e18 <uartgetc+0x30>
    80007e04:	00074503          	lbu	a0,0(a4)
    80007e08:	0ff57513          	andi	a0,a0,255
    80007e0c:	00813403          	ld	s0,8(sp)
    80007e10:	01010113          	addi	sp,sp,16
    80007e14:	00008067          	ret
    80007e18:	fff00513          	li	a0,-1
    80007e1c:	ff1ff06f          	j	80007e0c <uartgetc+0x24>

0000000080007e20 <uartintr>:
    80007e20:	100007b7          	lui	a5,0x10000
    80007e24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007e28:	0017f793          	andi	a5,a5,1
    80007e2c:	0a078463          	beqz	a5,80007ed4 <uartintr+0xb4>
    80007e30:	fe010113          	addi	sp,sp,-32
    80007e34:	00813823          	sd	s0,16(sp)
    80007e38:	00913423          	sd	s1,8(sp)
    80007e3c:	00113c23          	sd	ra,24(sp)
    80007e40:	02010413          	addi	s0,sp,32
    80007e44:	100004b7          	lui	s1,0x10000
    80007e48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007e4c:	0ff57513          	andi	a0,a0,255
    80007e50:	fffff097          	auipc	ra,0xfffff
    80007e54:	534080e7          	jalr	1332(ra) # 80007384 <consoleintr>
    80007e58:	0054c783          	lbu	a5,5(s1)
    80007e5c:	0017f793          	andi	a5,a5,1
    80007e60:	fe0794e3          	bnez	a5,80007e48 <uartintr+0x28>
    80007e64:	00004617          	auipc	a2,0x4
    80007e68:	d3460613          	addi	a2,a2,-716 # 8000bb98 <uart_tx_r>
    80007e6c:	00004517          	auipc	a0,0x4
    80007e70:	d3450513          	addi	a0,a0,-716 # 8000bba0 <uart_tx_w>
    80007e74:	00063783          	ld	a5,0(a2)
    80007e78:	00053703          	ld	a4,0(a0)
    80007e7c:	04f70263          	beq	a4,a5,80007ec0 <uartintr+0xa0>
    80007e80:	100005b7          	lui	a1,0x10000
    80007e84:	00005817          	auipc	a6,0x5
    80007e88:	f8c80813          	addi	a6,a6,-116 # 8000ce10 <uart_tx_buf>
    80007e8c:	01c0006f          	j	80007ea8 <uartintr+0x88>
    80007e90:	0006c703          	lbu	a4,0(a3)
    80007e94:	00f63023          	sd	a5,0(a2)
    80007e98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e9c:	00063783          	ld	a5,0(a2)
    80007ea0:	00053703          	ld	a4,0(a0)
    80007ea4:	00f70e63          	beq	a4,a5,80007ec0 <uartintr+0xa0>
    80007ea8:	01f7f713          	andi	a4,a5,31
    80007eac:	00e806b3          	add	a3,a6,a4
    80007eb0:	0055c703          	lbu	a4,5(a1)
    80007eb4:	00178793          	addi	a5,a5,1
    80007eb8:	02077713          	andi	a4,a4,32
    80007ebc:	fc071ae3          	bnez	a4,80007e90 <uartintr+0x70>
    80007ec0:	01813083          	ld	ra,24(sp)
    80007ec4:	01013403          	ld	s0,16(sp)
    80007ec8:	00813483          	ld	s1,8(sp)
    80007ecc:	02010113          	addi	sp,sp,32
    80007ed0:	00008067          	ret
    80007ed4:	00004617          	auipc	a2,0x4
    80007ed8:	cc460613          	addi	a2,a2,-828 # 8000bb98 <uart_tx_r>
    80007edc:	00004517          	auipc	a0,0x4
    80007ee0:	cc450513          	addi	a0,a0,-828 # 8000bba0 <uart_tx_w>
    80007ee4:	00063783          	ld	a5,0(a2)
    80007ee8:	00053703          	ld	a4,0(a0)
    80007eec:	04f70263          	beq	a4,a5,80007f30 <uartintr+0x110>
    80007ef0:	100005b7          	lui	a1,0x10000
    80007ef4:	00005817          	auipc	a6,0x5
    80007ef8:	f1c80813          	addi	a6,a6,-228 # 8000ce10 <uart_tx_buf>
    80007efc:	01c0006f          	j	80007f18 <uartintr+0xf8>
    80007f00:	0006c703          	lbu	a4,0(a3)
    80007f04:	00f63023          	sd	a5,0(a2)
    80007f08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f0c:	00063783          	ld	a5,0(a2)
    80007f10:	00053703          	ld	a4,0(a0)
    80007f14:	02f70063          	beq	a4,a5,80007f34 <uartintr+0x114>
    80007f18:	01f7f713          	andi	a4,a5,31
    80007f1c:	00e806b3          	add	a3,a6,a4
    80007f20:	0055c703          	lbu	a4,5(a1)
    80007f24:	00178793          	addi	a5,a5,1
    80007f28:	02077713          	andi	a4,a4,32
    80007f2c:	fc071ae3          	bnez	a4,80007f00 <uartintr+0xe0>
    80007f30:	00008067          	ret
    80007f34:	00008067          	ret

0000000080007f38 <kinit>:
    80007f38:	fc010113          	addi	sp,sp,-64
    80007f3c:	02913423          	sd	s1,40(sp)
    80007f40:	fffff7b7          	lui	a5,0xfffff
    80007f44:	00006497          	auipc	s1,0x6
    80007f48:	eeb48493          	addi	s1,s1,-277 # 8000de2f <end+0xfff>
    80007f4c:	02813823          	sd	s0,48(sp)
    80007f50:	01313c23          	sd	s3,24(sp)
    80007f54:	00f4f4b3          	and	s1,s1,a5
    80007f58:	02113c23          	sd	ra,56(sp)
    80007f5c:	03213023          	sd	s2,32(sp)
    80007f60:	01413823          	sd	s4,16(sp)
    80007f64:	01513423          	sd	s5,8(sp)
    80007f68:	04010413          	addi	s0,sp,64
    80007f6c:	000017b7          	lui	a5,0x1
    80007f70:	01100993          	li	s3,17
    80007f74:	00f487b3          	add	a5,s1,a5
    80007f78:	01b99993          	slli	s3,s3,0x1b
    80007f7c:	06f9e063          	bltu	s3,a5,80007fdc <kinit+0xa4>
    80007f80:	00005a97          	auipc	s5,0x5
    80007f84:	eb0a8a93          	addi	s5,s5,-336 # 8000ce30 <end>
    80007f88:	0754ec63          	bltu	s1,s5,80008000 <kinit+0xc8>
    80007f8c:	0734fa63          	bgeu	s1,s3,80008000 <kinit+0xc8>
    80007f90:	00088a37          	lui	s4,0x88
    80007f94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f98:	00004917          	auipc	s2,0x4
    80007f9c:	c1090913          	addi	s2,s2,-1008 # 8000bba8 <kmem>
    80007fa0:	00ca1a13          	slli	s4,s4,0xc
    80007fa4:	0140006f          	j	80007fb8 <kinit+0x80>
    80007fa8:	000017b7          	lui	a5,0x1
    80007fac:	00f484b3          	add	s1,s1,a5
    80007fb0:	0554e863          	bltu	s1,s5,80008000 <kinit+0xc8>
    80007fb4:	0534f663          	bgeu	s1,s3,80008000 <kinit+0xc8>
    80007fb8:	00001637          	lui	a2,0x1
    80007fbc:	00100593          	li	a1,1
    80007fc0:	00048513          	mv	a0,s1
    80007fc4:	00000097          	auipc	ra,0x0
    80007fc8:	5e4080e7          	jalr	1508(ra) # 800085a8 <__memset>
    80007fcc:	00093783          	ld	a5,0(s2)
    80007fd0:	00f4b023          	sd	a5,0(s1)
    80007fd4:	00993023          	sd	s1,0(s2)
    80007fd8:	fd4498e3          	bne	s1,s4,80007fa8 <kinit+0x70>
    80007fdc:	03813083          	ld	ra,56(sp)
    80007fe0:	03013403          	ld	s0,48(sp)
    80007fe4:	02813483          	ld	s1,40(sp)
    80007fe8:	02013903          	ld	s2,32(sp)
    80007fec:	01813983          	ld	s3,24(sp)
    80007ff0:	01013a03          	ld	s4,16(sp)
    80007ff4:	00813a83          	ld	s5,8(sp)
    80007ff8:	04010113          	addi	sp,sp,64
    80007ffc:	00008067          	ret
    80008000:	00002517          	auipc	a0,0x2
    80008004:	ea050513          	addi	a0,a0,-352 # 80009ea0 <digits+0x18>
    80008008:	fffff097          	auipc	ra,0xfffff
    8000800c:	4b4080e7          	jalr	1204(ra) # 800074bc <panic>

0000000080008010 <freerange>:
    80008010:	fc010113          	addi	sp,sp,-64
    80008014:	000017b7          	lui	a5,0x1
    80008018:	02913423          	sd	s1,40(sp)
    8000801c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008020:	009504b3          	add	s1,a0,s1
    80008024:	fffff537          	lui	a0,0xfffff
    80008028:	02813823          	sd	s0,48(sp)
    8000802c:	02113c23          	sd	ra,56(sp)
    80008030:	03213023          	sd	s2,32(sp)
    80008034:	01313c23          	sd	s3,24(sp)
    80008038:	01413823          	sd	s4,16(sp)
    8000803c:	01513423          	sd	s5,8(sp)
    80008040:	01613023          	sd	s6,0(sp)
    80008044:	04010413          	addi	s0,sp,64
    80008048:	00a4f4b3          	and	s1,s1,a0
    8000804c:	00f487b3          	add	a5,s1,a5
    80008050:	06f5e463          	bltu	a1,a5,800080b8 <freerange+0xa8>
    80008054:	00005a97          	auipc	s5,0x5
    80008058:	ddca8a93          	addi	s5,s5,-548 # 8000ce30 <end>
    8000805c:	0954e263          	bltu	s1,s5,800080e0 <freerange+0xd0>
    80008060:	01100993          	li	s3,17
    80008064:	01b99993          	slli	s3,s3,0x1b
    80008068:	0734fc63          	bgeu	s1,s3,800080e0 <freerange+0xd0>
    8000806c:	00058a13          	mv	s4,a1
    80008070:	00004917          	auipc	s2,0x4
    80008074:	b3890913          	addi	s2,s2,-1224 # 8000bba8 <kmem>
    80008078:	00002b37          	lui	s6,0x2
    8000807c:	0140006f          	j	80008090 <freerange+0x80>
    80008080:	000017b7          	lui	a5,0x1
    80008084:	00f484b3          	add	s1,s1,a5
    80008088:	0554ec63          	bltu	s1,s5,800080e0 <freerange+0xd0>
    8000808c:	0534fa63          	bgeu	s1,s3,800080e0 <freerange+0xd0>
    80008090:	00001637          	lui	a2,0x1
    80008094:	00100593          	li	a1,1
    80008098:	00048513          	mv	a0,s1
    8000809c:	00000097          	auipc	ra,0x0
    800080a0:	50c080e7          	jalr	1292(ra) # 800085a8 <__memset>
    800080a4:	00093703          	ld	a4,0(s2)
    800080a8:	016487b3          	add	a5,s1,s6
    800080ac:	00e4b023          	sd	a4,0(s1)
    800080b0:	00993023          	sd	s1,0(s2)
    800080b4:	fcfa76e3          	bgeu	s4,a5,80008080 <freerange+0x70>
    800080b8:	03813083          	ld	ra,56(sp)
    800080bc:	03013403          	ld	s0,48(sp)
    800080c0:	02813483          	ld	s1,40(sp)
    800080c4:	02013903          	ld	s2,32(sp)
    800080c8:	01813983          	ld	s3,24(sp)
    800080cc:	01013a03          	ld	s4,16(sp)
    800080d0:	00813a83          	ld	s5,8(sp)
    800080d4:	00013b03          	ld	s6,0(sp)
    800080d8:	04010113          	addi	sp,sp,64
    800080dc:	00008067          	ret
    800080e0:	00002517          	auipc	a0,0x2
    800080e4:	dc050513          	addi	a0,a0,-576 # 80009ea0 <digits+0x18>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	3d4080e7          	jalr	980(ra) # 800074bc <panic>

00000000800080f0 <kfree>:
    800080f0:	fe010113          	addi	sp,sp,-32
    800080f4:	00813823          	sd	s0,16(sp)
    800080f8:	00113c23          	sd	ra,24(sp)
    800080fc:	00913423          	sd	s1,8(sp)
    80008100:	02010413          	addi	s0,sp,32
    80008104:	03451793          	slli	a5,a0,0x34
    80008108:	04079c63          	bnez	a5,80008160 <kfree+0x70>
    8000810c:	00005797          	auipc	a5,0x5
    80008110:	d2478793          	addi	a5,a5,-732 # 8000ce30 <end>
    80008114:	00050493          	mv	s1,a0
    80008118:	04f56463          	bltu	a0,a5,80008160 <kfree+0x70>
    8000811c:	01100793          	li	a5,17
    80008120:	01b79793          	slli	a5,a5,0x1b
    80008124:	02f57e63          	bgeu	a0,a5,80008160 <kfree+0x70>
    80008128:	00001637          	lui	a2,0x1
    8000812c:	00100593          	li	a1,1
    80008130:	00000097          	auipc	ra,0x0
    80008134:	478080e7          	jalr	1144(ra) # 800085a8 <__memset>
    80008138:	00004797          	auipc	a5,0x4
    8000813c:	a7078793          	addi	a5,a5,-1424 # 8000bba8 <kmem>
    80008140:	0007b703          	ld	a4,0(a5)
    80008144:	01813083          	ld	ra,24(sp)
    80008148:	01013403          	ld	s0,16(sp)
    8000814c:	00e4b023          	sd	a4,0(s1)
    80008150:	0097b023          	sd	s1,0(a5)
    80008154:	00813483          	ld	s1,8(sp)
    80008158:	02010113          	addi	sp,sp,32
    8000815c:	00008067          	ret
    80008160:	00002517          	auipc	a0,0x2
    80008164:	d4050513          	addi	a0,a0,-704 # 80009ea0 <digits+0x18>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	354080e7          	jalr	852(ra) # 800074bc <panic>

0000000080008170 <kalloc>:
    80008170:	fe010113          	addi	sp,sp,-32
    80008174:	00813823          	sd	s0,16(sp)
    80008178:	00913423          	sd	s1,8(sp)
    8000817c:	00113c23          	sd	ra,24(sp)
    80008180:	02010413          	addi	s0,sp,32
    80008184:	00004797          	auipc	a5,0x4
    80008188:	a2478793          	addi	a5,a5,-1500 # 8000bba8 <kmem>
    8000818c:	0007b483          	ld	s1,0(a5)
    80008190:	02048063          	beqz	s1,800081b0 <kalloc+0x40>
    80008194:	0004b703          	ld	a4,0(s1)
    80008198:	00001637          	lui	a2,0x1
    8000819c:	00500593          	li	a1,5
    800081a0:	00048513          	mv	a0,s1
    800081a4:	00e7b023          	sd	a4,0(a5)
    800081a8:	00000097          	auipc	ra,0x0
    800081ac:	400080e7          	jalr	1024(ra) # 800085a8 <__memset>
    800081b0:	01813083          	ld	ra,24(sp)
    800081b4:	01013403          	ld	s0,16(sp)
    800081b8:	00048513          	mv	a0,s1
    800081bc:	00813483          	ld	s1,8(sp)
    800081c0:	02010113          	addi	sp,sp,32
    800081c4:	00008067          	ret

00000000800081c8 <initlock>:
    800081c8:	ff010113          	addi	sp,sp,-16
    800081cc:	00813423          	sd	s0,8(sp)
    800081d0:	01010413          	addi	s0,sp,16
    800081d4:	00813403          	ld	s0,8(sp)
    800081d8:	00b53423          	sd	a1,8(a0)
    800081dc:	00052023          	sw	zero,0(a0)
    800081e0:	00053823          	sd	zero,16(a0)
    800081e4:	01010113          	addi	sp,sp,16
    800081e8:	00008067          	ret

00000000800081ec <acquire>:
    800081ec:	fe010113          	addi	sp,sp,-32
    800081f0:	00813823          	sd	s0,16(sp)
    800081f4:	00913423          	sd	s1,8(sp)
    800081f8:	00113c23          	sd	ra,24(sp)
    800081fc:	01213023          	sd	s2,0(sp)
    80008200:	02010413          	addi	s0,sp,32
    80008204:	00050493          	mv	s1,a0
    80008208:	10002973          	csrr	s2,sstatus
    8000820c:	100027f3          	csrr	a5,sstatus
    80008210:	ffd7f793          	andi	a5,a5,-3
    80008214:	10079073          	csrw	sstatus,a5
    80008218:	fffff097          	auipc	ra,0xfffff
    8000821c:	8ec080e7          	jalr	-1812(ra) # 80006b04 <mycpu>
    80008220:	07852783          	lw	a5,120(a0)
    80008224:	06078e63          	beqz	a5,800082a0 <acquire+0xb4>
    80008228:	fffff097          	auipc	ra,0xfffff
    8000822c:	8dc080e7          	jalr	-1828(ra) # 80006b04 <mycpu>
    80008230:	07852783          	lw	a5,120(a0)
    80008234:	0004a703          	lw	a4,0(s1)
    80008238:	0017879b          	addiw	a5,a5,1
    8000823c:	06f52c23          	sw	a5,120(a0)
    80008240:	04071063          	bnez	a4,80008280 <acquire+0x94>
    80008244:	00100713          	li	a4,1
    80008248:	00070793          	mv	a5,a4
    8000824c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008250:	0007879b          	sext.w	a5,a5
    80008254:	fe079ae3          	bnez	a5,80008248 <acquire+0x5c>
    80008258:	0ff0000f          	fence
    8000825c:	fffff097          	auipc	ra,0xfffff
    80008260:	8a8080e7          	jalr	-1880(ra) # 80006b04 <mycpu>
    80008264:	01813083          	ld	ra,24(sp)
    80008268:	01013403          	ld	s0,16(sp)
    8000826c:	00a4b823          	sd	a0,16(s1)
    80008270:	00013903          	ld	s2,0(sp)
    80008274:	00813483          	ld	s1,8(sp)
    80008278:	02010113          	addi	sp,sp,32
    8000827c:	00008067          	ret
    80008280:	0104b903          	ld	s2,16(s1)
    80008284:	fffff097          	auipc	ra,0xfffff
    80008288:	880080e7          	jalr	-1920(ra) # 80006b04 <mycpu>
    8000828c:	faa91ce3          	bne	s2,a0,80008244 <acquire+0x58>
    80008290:	00002517          	auipc	a0,0x2
    80008294:	c1850513          	addi	a0,a0,-1000 # 80009ea8 <digits+0x20>
    80008298:	fffff097          	auipc	ra,0xfffff
    8000829c:	224080e7          	jalr	548(ra) # 800074bc <panic>
    800082a0:	00195913          	srli	s2,s2,0x1
    800082a4:	fffff097          	auipc	ra,0xfffff
    800082a8:	860080e7          	jalr	-1952(ra) # 80006b04 <mycpu>
    800082ac:	00197913          	andi	s2,s2,1
    800082b0:	07252e23          	sw	s2,124(a0)
    800082b4:	f75ff06f          	j	80008228 <acquire+0x3c>

00000000800082b8 <release>:
    800082b8:	fe010113          	addi	sp,sp,-32
    800082bc:	00813823          	sd	s0,16(sp)
    800082c0:	00113c23          	sd	ra,24(sp)
    800082c4:	00913423          	sd	s1,8(sp)
    800082c8:	01213023          	sd	s2,0(sp)
    800082cc:	02010413          	addi	s0,sp,32
    800082d0:	00052783          	lw	a5,0(a0)
    800082d4:	00079a63          	bnez	a5,800082e8 <release+0x30>
    800082d8:	00002517          	auipc	a0,0x2
    800082dc:	bd850513          	addi	a0,a0,-1064 # 80009eb0 <digits+0x28>
    800082e0:	fffff097          	auipc	ra,0xfffff
    800082e4:	1dc080e7          	jalr	476(ra) # 800074bc <panic>
    800082e8:	01053903          	ld	s2,16(a0)
    800082ec:	00050493          	mv	s1,a0
    800082f0:	fffff097          	auipc	ra,0xfffff
    800082f4:	814080e7          	jalr	-2028(ra) # 80006b04 <mycpu>
    800082f8:	fea910e3          	bne	s2,a0,800082d8 <release+0x20>
    800082fc:	0004b823          	sd	zero,16(s1)
    80008300:	0ff0000f          	fence
    80008304:	0f50000f          	fence	iorw,ow
    80008308:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000830c:	ffffe097          	auipc	ra,0xffffe
    80008310:	7f8080e7          	jalr	2040(ra) # 80006b04 <mycpu>
    80008314:	100027f3          	csrr	a5,sstatus
    80008318:	0027f793          	andi	a5,a5,2
    8000831c:	04079a63          	bnez	a5,80008370 <release+0xb8>
    80008320:	07852783          	lw	a5,120(a0)
    80008324:	02f05e63          	blez	a5,80008360 <release+0xa8>
    80008328:	fff7871b          	addiw	a4,a5,-1
    8000832c:	06e52c23          	sw	a4,120(a0)
    80008330:	00071c63          	bnez	a4,80008348 <release+0x90>
    80008334:	07c52783          	lw	a5,124(a0)
    80008338:	00078863          	beqz	a5,80008348 <release+0x90>
    8000833c:	100027f3          	csrr	a5,sstatus
    80008340:	0027e793          	ori	a5,a5,2
    80008344:	10079073          	csrw	sstatus,a5
    80008348:	01813083          	ld	ra,24(sp)
    8000834c:	01013403          	ld	s0,16(sp)
    80008350:	00813483          	ld	s1,8(sp)
    80008354:	00013903          	ld	s2,0(sp)
    80008358:	02010113          	addi	sp,sp,32
    8000835c:	00008067          	ret
    80008360:	00002517          	auipc	a0,0x2
    80008364:	b7050513          	addi	a0,a0,-1168 # 80009ed0 <digits+0x48>
    80008368:	fffff097          	auipc	ra,0xfffff
    8000836c:	154080e7          	jalr	340(ra) # 800074bc <panic>
    80008370:	00002517          	auipc	a0,0x2
    80008374:	b4850513          	addi	a0,a0,-1208 # 80009eb8 <digits+0x30>
    80008378:	fffff097          	auipc	ra,0xfffff
    8000837c:	144080e7          	jalr	324(ra) # 800074bc <panic>

0000000080008380 <holding>:
    80008380:	00052783          	lw	a5,0(a0)
    80008384:	00079663          	bnez	a5,80008390 <holding+0x10>
    80008388:	00000513          	li	a0,0
    8000838c:	00008067          	ret
    80008390:	fe010113          	addi	sp,sp,-32
    80008394:	00813823          	sd	s0,16(sp)
    80008398:	00913423          	sd	s1,8(sp)
    8000839c:	00113c23          	sd	ra,24(sp)
    800083a0:	02010413          	addi	s0,sp,32
    800083a4:	01053483          	ld	s1,16(a0)
    800083a8:	ffffe097          	auipc	ra,0xffffe
    800083ac:	75c080e7          	jalr	1884(ra) # 80006b04 <mycpu>
    800083b0:	01813083          	ld	ra,24(sp)
    800083b4:	01013403          	ld	s0,16(sp)
    800083b8:	40a48533          	sub	a0,s1,a0
    800083bc:	00153513          	seqz	a0,a0
    800083c0:	00813483          	ld	s1,8(sp)
    800083c4:	02010113          	addi	sp,sp,32
    800083c8:	00008067          	ret

00000000800083cc <push_off>:
    800083cc:	fe010113          	addi	sp,sp,-32
    800083d0:	00813823          	sd	s0,16(sp)
    800083d4:	00113c23          	sd	ra,24(sp)
    800083d8:	00913423          	sd	s1,8(sp)
    800083dc:	02010413          	addi	s0,sp,32
    800083e0:	100024f3          	csrr	s1,sstatus
    800083e4:	100027f3          	csrr	a5,sstatus
    800083e8:	ffd7f793          	andi	a5,a5,-3
    800083ec:	10079073          	csrw	sstatus,a5
    800083f0:	ffffe097          	auipc	ra,0xffffe
    800083f4:	714080e7          	jalr	1812(ra) # 80006b04 <mycpu>
    800083f8:	07852783          	lw	a5,120(a0)
    800083fc:	02078663          	beqz	a5,80008428 <push_off+0x5c>
    80008400:	ffffe097          	auipc	ra,0xffffe
    80008404:	704080e7          	jalr	1796(ra) # 80006b04 <mycpu>
    80008408:	07852783          	lw	a5,120(a0)
    8000840c:	01813083          	ld	ra,24(sp)
    80008410:	01013403          	ld	s0,16(sp)
    80008414:	0017879b          	addiw	a5,a5,1
    80008418:	06f52c23          	sw	a5,120(a0)
    8000841c:	00813483          	ld	s1,8(sp)
    80008420:	02010113          	addi	sp,sp,32
    80008424:	00008067          	ret
    80008428:	0014d493          	srli	s1,s1,0x1
    8000842c:	ffffe097          	auipc	ra,0xffffe
    80008430:	6d8080e7          	jalr	1752(ra) # 80006b04 <mycpu>
    80008434:	0014f493          	andi	s1,s1,1
    80008438:	06952e23          	sw	s1,124(a0)
    8000843c:	fc5ff06f          	j	80008400 <push_off+0x34>

0000000080008440 <pop_off>:
    80008440:	ff010113          	addi	sp,sp,-16
    80008444:	00813023          	sd	s0,0(sp)
    80008448:	00113423          	sd	ra,8(sp)
    8000844c:	01010413          	addi	s0,sp,16
    80008450:	ffffe097          	auipc	ra,0xffffe
    80008454:	6b4080e7          	jalr	1716(ra) # 80006b04 <mycpu>
    80008458:	100027f3          	csrr	a5,sstatus
    8000845c:	0027f793          	andi	a5,a5,2
    80008460:	04079663          	bnez	a5,800084ac <pop_off+0x6c>
    80008464:	07852783          	lw	a5,120(a0)
    80008468:	02f05a63          	blez	a5,8000849c <pop_off+0x5c>
    8000846c:	fff7871b          	addiw	a4,a5,-1
    80008470:	06e52c23          	sw	a4,120(a0)
    80008474:	00071c63          	bnez	a4,8000848c <pop_off+0x4c>
    80008478:	07c52783          	lw	a5,124(a0)
    8000847c:	00078863          	beqz	a5,8000848c <pop_off+0x4c>
    80008480:	100027f3          	csrr	a5,sstatus
    80008484:	0027e793          	ori	a5,a5,2
    80008488:	10079073          	csrw	sstatus,a5
    8000848c:	00813083          	ld	ra,8(sp)
    80008490:	00013403          	ld	s0,0(sp)
    80008494:	01010113          	addi	sp,sp,16
    80008498:	00008067          	ret
    8000849c:	00002517          	auipc	a0,0x2
    800084a0:	a3450513          	addi	a0,a0,-1484 # 80009ed0 <digits+0x48>
    800084a4:	fffff097          	auipc	ra,0xfffff
    800084a8:	018080e7          	jalr	24(ra) # 800074bc <panic>
    800084ac:	00002517          	auipc	a0,0x2
    800084b0:	a0c50513          	addi	a0,a0,-1524 # 80009eb8 <digits+0x30>
    800084b4:	fffff097          	auipc	ra,0xfffff
    800084b8:	008080e7          	jalr	8(ra) # 800074bc <panic>

00000000800084bc <push_on>:
    800084bc:	fe010113          	addi	sp,sp,-32
    800084c0:	00813823          	sd	s0,16(sp)
    800084c4:	00113c23          	sd	ra,24(sp)
    800084c8:	00913423          	sd	s1,8(sp)
    800084cc:	02010413          	addi	s0,sp,32
    800084d0:	100024f3          	csrr	s1,sstatus
    800084d4:	100027f3          	csrr	a5,sstatus
    800084d8:	0027e793          	ori	a5,a5,2
    800084dc:	10079073          	csrw	sstatus,a5
    800084e0:	ffffe097          	auipc	ra,0xffffe
    800084e4:	624080e7          	jalr	1572(ra) # 80006b04 <mycpu>
    800084e8:	07852783          	lw	a5,120(a0)
    800084ec:	02078663          	beqz	a5,80008518 <push_on+0x5c>
    800084f0:	ffffe097          	auipc	ra,0xffffe
    800084f4:	614080e7          	jalr	1556(ra) # 80006b04 <mycpu>
    800084f8:	07852783          	lw	a5,120(a0)
    800084fc:	01813083          	ld	ra,24(sp)
    80008500:	01013403          	ld	s0,16(sp)
    80008504:	0017879b          	addiw	a5,a5,1
    80008508:	06f52c23          	sw	a5,120(a0)
    8000850c:	00813483          	ld	s1,8(sp)
    80008510:	02010113          	addi	sp,sp,32
    80008514:	00008067          	ret
    80008518:	0014d493          	srli	s1,s1,0x1
    8000851c:	ffffe097          	auipc	ra,0xffffe
    80008520:	5e8080e7          	jalr	1512(ra) # 80006b04 <mycpu>
    80008524:	0014f493          	andi	s1,s1,1
    80008528:	06952e23          	sw	s1,124(a0)
    8000852c:	fc5ff06f          	j	800084f0 <push_on+0x34>

0000000080008530 <pop_on>:
    80008530:	ff010113          	addi	sp,sp,-16
    80008534:	00813023          	sd	s0,0(sp)
    80008538:	00113423          	sd	ra,8(sp)
    8000853c:	01010413          	addi	s0,sp,16
    80008540:	ffffe097          	auipc	ra,0xffffe
    80008544:	5c4080e7          	jalr	1476(ra) # 80006b04 <mycpu>
    80008548:	100027f3          	csrr	a5,sstatus
    8000854c:	0027f793          	andi	a5,a5,2
    80008550:	04078463          	beqz	a5,80008598 <pop_on+0x68>
    80008554:	07852783          	lw	a5,120(a0)
    80008558:	02f05863          	blez	a5,80008588 <pop_on+0x58>
    8000855c:	fff7879b          	addiw	a5,a5,-1
    80008560:	06f52c23          	sw	a5,120(a0)
    80008564:	07853783          	ld	a5,120(a0)
    80008568:	00079863          	bnez	a5,80008578 <pop_on+0x48>
    8000856c:	100027f3          	csrr	a5,sstatus
    80008570:	ffd7f793          	andi	a5,a5,-3
    80008574:	10079073          	csrw	sstatus,a5
    80008578:	00813083          	ld	ra,8(sp)
    8000857c:	00013403          	ld	s0,0(sp)
    80008580:	01010113          	addi	sp,sp,16
    80008584:	00008067          	ret
    80008588:	00002517          	auipc	a0,0x2
    8000858c:	97050513          	addi	a0,a0,-1680 # 80009ef8 <digits+0x70>
    80008590:	fffff097          	auipc	ra,0xfffff
    80008594:	f2c080e7          	jalr	-212(ra) # 800074bc <panic>
    80008598:	00002517          	auipc	a0,0x2
    8000859c:	94050513          	addi	a0,a0,-1728 # 80009ed8 <digits+0x50>
    800085a0:	fffff097          	auipc	ra,0xfffff
    800085a4:	f1c080e7          	jalr	-228(ra) # 800074bc <panic>

00000000800085a8 <__memset>:
    800085a8:	ff010113          	addi	sp,sp,-16
    800085ac:	00813423          	sd	s0,8(sp)
    800085b0:	01010413          	addi	s0,sp,16
    800085b4:	1a060e63          	beqz	a2,80008770 <__memset+0x1c8>
    800085b8:	40a007b3          	neg	a5,a0
    800085bc:	0077f793          	andi	a5,a5,7
    800085c0:	00778693          	addi	a3,a5,7
    800085c4:	00b00813          	li	a6,11
    800085c8:	0ff5f593          	andi	a1,a1,255
    800085cc:	fff6071b          	addiw	a4,a2,-1
    800085d0:	1b06e663          	bltu	a3,a6,8000877c <__memset+0x1d4>
    800085d4:	1cd76463          	bltu	a4,a3,8000879c <__memset+0x1f4>
    800085d8:	1a078e63          	beqz	a5,80008794 <__memset+0x1ec>
    800085dc:	00b50023          	sb	a1,0(a0)
    800085e0:	00100713          	li	a4,1
    800085e4:	1ae78463          	beq	a5,a4,8000878c <__memset+0x1e4>
    800085e8:	00b500a3          	sb	a1,1(a0)
    800085ec:	00200713          	li	a4,2
    800085f0:	1ae78a63          	beq	a5,a4,800087a4 <__memset+0x1fc>
    800085f4:	00b50123          	sb	a1,2(a0)
    800085f8:	00300713          	li	a4,3
    800085fc:	18e78463          	beq	a5,a4,80008784 <__memset+0x1dc>
    80008600:	00b501a3          	sb	a1,3(a0)
    80008604:	00400713          	li	a4,4
    80008608:	1ae78263          	beq	a5,a4,800087ac <__memset+0x204>
    8000860c:	00b50223          	sb	a1,4(a0)
    80008610:	00500713          	li	a4,5
    80008614:	1ae78063          	beq	a5,a4,800087b4 <__memset+0x20c>
    80008618:	00b502a3          	sb	a1,5(a0)
    8000861c:	00700713          	li	a4,7
    80008620:	18e79e63          	bne	a5,a4,800087bc <__memset+0x214>
    80008624:	00b50323          	sb	a1,6(a0)
    80008628:	00700e93          	li	t4,7
    8000862c:	00859713          	slli	a4,a1,0x8
    80008630:	00e5e733          	or	a4,a1,a4
    80008634:	01059e13          	slli	t3,a1,0x10
    80008638:	01c76e33          	or	t3,a4,t3
    8000863c:	01859313          	slli	t1,a1,0x18
    80008640:	006e6333          	or	t1,t3,t1
    80008644:	02059893          	slli	a7,a1,0x20
    80008648:	40f60e3b          	subw	t3,a2,a5
    8000864c:	011368b3          	or	a7,t1,a7
    80008650:	02859813          	slli	a6,a1,0x28
    80008654:	0108e833          	or	a6,a7,a6
    80008658:	03059693          	slli	a3,a1,0x30
    8000865c:	003e589b          	srliw	a7,t3,0x3
    80008660:	00d866b3          	or	a3,a6,a3
    80008664:	03859713          	slli	a4,a1,0x38
    80008668:	00389813          	slli	a6,a7,0x3
    8000866c:	00f507b3          	add	a5,a0,a5
    80008670:	00e6e733          	or	a4,a3,a4
    80008674:	000e089b          	sext.w	a7,t3
    80008678:	00f806b3          	add	a3,a6,a5
    8000867c:	00e7b023          	sd	a4,0(a5)
    80008680:	00878793          	addi	a5,a5,8
    80008684:	fed79ce3          	bne	a5,a3,8000867c <__memset+0xd4>
    80008688:	ff8e7793          	andi	a5,t3,-8
    8000868c:	0007871b          	sext.w	a4,a5
    80008690:	01d787bb          	addw	a5,a5,t4
    80008694:	0ce88e63          	beq	a7,a4,80008770 <__memset+0x1c8>
    80008698:	00f50733          	add	a4,a0,a5
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	0017871b          	addiw	a4,a5,1
    800086a4:	0cc77663          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	0027871b          	addiw	a4,a5,2
    800086b4:	0ac77e63          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0037871b          	addiw	a4,a5,3
    800086c4:	0ac77663          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	0047871b          	addiw	a4,a5,4
    800086d4:	08c77e63          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	0057871b          	addiw	a4,a5,5
    800086e4:	08c77663          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	0067871b          	addiw	a4,a5,6
    800086f4:	06c77e63          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	0077871b          	addiw	a4,a5,7
    80008704:	06c77663          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    80008708:	00e50733          	add	a4,a0,a4
    8000870c:	00b70023          	sb	a1,0(a4)
    80008710:	0087871b          	addiw	a4,a5,8
    80008714:	04c77e63          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    80008718:	00e50733          	add	a4,a0,a4
    8000871c:	00b70023          	sb	a1,0(a4)
    80008720:	0097871b          	addiw	a4,a5,9
    80008724:	04c77663          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    80008728:	00e50733          	add	a4,a0,a4
    8000872c:	00b70023          	sb	a1,0(a4)
    80008730:	00a7871b          	addiw	a4,a5,10
    80008734:	02c77e63          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00b70023          	sb	a1,0(a4)
    80008740:	00b7871b          	addiw	a4,a5,11
    80008744:	02c77663          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    80008748:	00e50733          	add	a4,a0,a4
    8000874c:	00b70023          	sb	a1,0(a4)
    80008750:	00c7871b          	addiw	a4,a5,12
    80008754:	00c77e63          	bgeu	a4,a2,80008770 <__memset+0x1c8>
    80008758:	00e50733          	add	a4,a0,a4
    8000875c:	00b70023          	sb	a1,0(a4)
    80008760:	00d7879b          	addiw	a5,a5,13
    80008764:	00c7f663          	bgeu	a5,a2,80008770 <__memset+0x1c8>
    80008768:	00f507b3          	add	a5,a0,a5
    8000876c:	00b78023          	sb	a1,0(a5)
    80008770:	00813403          	ld	s0,8(sp)
    80008774:	01010113          	addi	sp,sp,16
    80008778:	00008067          	ret
    8000877c:	00b00693          	li	a3,11
    80008780:	e55ff06f          	j	800085d4 <__memset+0x2c>
    80008784:	00300e93          	li	t4,3
    80008788:	ea5ff06f          	j	8000862c <__memset+0x84>
    8000878c:	00100e93          	li	t4,1
    80008790:	e9dff06f          	j	8000862c <__memset+0x84>
    80008794:	00000e93          	li	t4,0
    80008798:	e95ff06f          	j	8000862c <__memset+0x84>
    8000879c:	00000793          	li	a5,0
    800087a0:	ef9ff06f          	j	80008698 <__memset+0xf0>
    800087a4:	00200e93          	li	t4,2
    800087a8:	e85ff06f          	j	8000862c <__memset+0x84>
    800087ac:	00400e93          	li	t4,4
    800087b0:	e7dff06f          	j	8000862c <__memset+0x84>
    800087b4:	00500e93          	li	t4,5
    800087b8:	e75ff06f          	j	8000862c <__memset+0x84>
    800087bc:	00600e93          	li	t4,6
    800087c0:	e6dff06f          	j	8000862c <__memset+0x84>

00000000800087c4 <__memmove>:
    800087c4:	ff010113          	addi	sp,sp,-16
    800087c8:	00813423          	sd	s0,8(sp)
    800087cc:	01010413          	addi	s0,sp,16
    800087d0:	0e060863          	beqz	a2,800088c0 <__memmove+0xfc>
    800087d4:	fff6069b          	addiw	a3,a2,-1
    800087d8:	0006881b          	sext.w	a6,a3
    800087dc:	0ea5e863          	bltu	a1,a0,800088cc <__memmove+0x108>
    800087e0:	00758713          	addi	a4,a1,7
    800087e4:	00a5e7b3          	or	a5,a1,a0
    800087e8:	40a70733          	sub	a4,a4,a0
    800087ec:	0077f793          	andi	a5,a5,7
    800087f0:	00f73713          	sltiu	a4,a4,15
    800087f4:	00174713          	xori	a4,a4,1
    800087f8:	0017b793          	seqz	a5,a5
    800087fc:	00e7f7b3          	and	a5,a5,a4
    80008800:	10078863          	beqz	a5,80008910 <__memmove+0x14c>
    80008804:	00900793          	li	a5,9
    80008808:	1107f463          	bgeu	a5,a6,80008910 <__memmove+0x14c>
    8000880c:	0036581b          	srliw	a6,a2,0x3
    80008810:	fff8081b          	addiw	a6,a6,-1
    80008814:	02081813          	slli	a6,a6,0x20
    80008818:	01d85893          	srli	a7,a6,0x1d
    8000881c:	00858813          	addi	a6,a1,8
    80008820:	00058793          	mv	a5,a1
    80008824:	00050713          	mv	a4,a0
    80008828:	01088833          	add	a6,a7,a6
    8000882c:	0007b883          	ld	a7,0(a5)
    80008830:	00878793          	addi	a5,a5,8
    80008834:	00870713          	addi	a4,a4,8
    80008838:	ff173c23          	sd	a7,-8(a4)
    8000883c:	ff0798e3          	bne	a5,a6,8000882c <__memmove+0x68>
    80008840:	ff867713          	andi	a4,a2,-8
    80008844:	02071793          	slli	a5,a4,0x20
    80008848:	0207d793          	srli	a5,a5,0x20
    8000884c:	00f585b3          	add	a1,a1,a5
    80008850:	40e686bb          	subw	a3,a3,a4
    80008854:	00f507b3          	add	a5,a0,a5
    80008858:	06e60463          	beq	a2,a4,800088c0 <__memmove+0xfc>
    8000885c:	0005c703          	lbu	a4,0(a1)
    80008860:	00e78023          	sb	a4,0(a5)
    80008864:	04068e63          	beqz	a3,800088c0 <__memmove+0xfc>
    80008868:	0015c603          	lbu	a2,1(a1)
    8000886c:	00100713          	li	a4,1
    80008870:	00c780a3          	sb	a2,1(a5)
    80008874:	04e68663          	beq	a3,a4,800088c0 <__memmove+0xfc>
    80008878:	0025c603          	lbu	a2,2(a1)
    8000887c:	00200713          	li	a4,2
    80008880:	00c78123          	sb	a2,2(a5)
    80008884:	02e68e63          	beq	a3,a4,800088c0 <__memmove+0xfc>
    80008888:	0035c603          	lbu	a2,3(a1)
    8000888c:	00300713          	li	a4,3
    80008890:	00c781a3          	sb	a2,3(a5)
    80008894:	02e68663          	beq	a3,a4,800088c0 <__memmove+0xfc>
    80008898:	0045c603          	lbu	a2,4(a1)
    8000889c:	00400713          	li	a4,4
    800088a0:	00c78223          	sb	a2,4(a5)
    800088a4:	00e68e63          	beq	a3,a4,800088c0 <__memmove+0xfc>
    800088a8:	0055c603          	lbu	a2,5(a1)
    800088ac:	00500713          	li	a4,5
    800088b0:	00c782a3          	sb	a2,5(a5)
    800088b4:	00e68663          	beq	a3,a4,800088c0 <__memmove+0xfc>
    800088b8:	0065c703          	lbu	a4,6(a1)
    800088bc:	00e78323          	sb	a4,6(a5)
    800088c0:	00813403          	ld	s0,8(sp)
    800088c4:	01010113          	addi	sp,sp,16
    800088c8:	00008067          	ret
    800088cc:	02061713          	slli	a4,a2,0x20
    800088d0:	02075713          	srli	a4,a4,0x20
    800088d4:	00e587b3          	add	a5,a1,a4
    800088d8:	f0f574e3          	bgeu	a0,a5,800087e0 <__memmove+0x1c>
    800088dc:	02069613          	slli	a2,a3,0x20
    800088e0:	02065613          	srli	a2,a2,0x20
    800088e4:	fff64613          	not	a2,a2
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00c78633          	add	a2,a5,a2
    800088f0:	fff7c683          	lbu	a3,-1(a5)
    800088f4:	fff78793          	addi	a5,a5,-1
    800088f8:	fff70713          	addi	a4,a4,-1
    800088fc:	00d70023          	sb	a3,0(a4)
    80008900:	fec798e3          	bne	a5,a2,800088f0 <__memmove+0x12c>
    80008904:	00813403          	ld	s0,8(sp)
    80008908:	01010113          	addi	sp,sp,16
    8000890c:	00008067          	ret
    80008910:	02069713          	slli	a4,a3,0x20
    80008914:	02075713          	srli	a4,a4,0x20
    80008918:	00170713          	addi	a4,a4,1
    8000891c:	00e50733          	add	a4,a0,a4
    80008920:	00050793          	mv	a5,a0
    80008924:	0005c683          	lbu	a3,0(a1)
    80008928:	00178793          	addi	a5,a5,1
    8000892c:	00158593          	addi	a1,a1,1
    80008930:	fed78fa3          	sb	a3,-1(a5)
    80008934:	fee798e3          	bne	a5,a4,80008924 <__memmove+0x160>
    80008938:	f89ff06f          	j	800088c0 <__memmove+0xfc>

000000008000893c <__putc>:
    8000893c:	fe010113          	addi	sp,sp,-32
    80008940:	00813823          	sd	s0,16(sp)
    80008944:	00113c23          	sd	ra,24(sp)
    80008948:	02010413          	addi	s0,sp,32
    8000894c:	00050793          	mv	a5,a0
    80008950:	fef40593          	addi	a1,s0,-17
    80008954:	00100613          	li	a2,1
    80008958:	00000513          	li	a0,0
    8000895c:	fef407a3          	sb	a5,-17(s0)
    80008960:	fffff097          	auipc	ra,0xfffff
    80008964:	b3c080e7          	jalr	-1220(ra) # 8000749c <console_write>
    80008968:	01813083          	ld	ra,24(sp)
    8000896c:	01013403          	ld	s0,16(sp)
    80008970:	02010113          	addi	sp,sp,32
    80008974:	00008067          	ret

0000000080008978 <__getc>:
    80008978:	fe010113          	addi	sp,sp,-32
    8000897c:	00813823          	sd	s0,16(sp)
    80008980:	00113c23          	sd	ra,24(sp)
    80008984:	02010413          	addi	s0,sp,32
    80008988:	fe840593          	addi	a1,s0,-24
    8000898c:	00100613          	li	a2,1
    80008990:	00000513          	li	a0,0
    80008994:	fffff097          	auipc	ra,0xfffff
    80008998:	ae8080e7          	jalr	-1304(ra) # 8000747c <console_read>
    8000899c:	fe844503          	lbu	a0,-24(s0)
    800089a0:	01813083          	ld	ra,24(sp)
    800089a4:	01013403          	ld	s0,16(sp)
    800089a8:	02010113          	addi	sp,sp,32
    800089ac:	00008067          	ret

00000000800089b0 <console_handler>:
    800089b0:	fe010113          	addi	sp,sp,-32
    800089b4:	00813823          	sd	s0,16(sp)
    800089b8:	00113c23          	sd	ra,24(sp)
    800089bc:	00913423          	sd	s1,8(sp)
    800089c0:	02010413          	addi	s0,sp,32
    800089c4:	14202773          	csrr	a4,scause
    800089c8:	100027f3          	csrr	a5,sstatus
    800089cc:	0027f793          	andi	a5,a5,2
    800089d0:	06079e63          	bnez	a5,80008a4c <console_handler+0x9c>
    800089d4:	00074c63          	bltz	a4,800089ec <console_handler+0x3c>
    800089d8:	01813083          	ld	ra,24(sp)
    800089dc:	01013403          	ld	s0,16(sp)
    800089e0:	00813483          	ld	s1,8(sp)
    800089e4:	02010113          	addi	sp,sp,32
    800089e8:	00008067          	ret
    800089ec:	0ff77713          	andi	a4,a4,255
    800089f0:	00900793          	li	a5,9
    800089f4:	fef712e3          	bne	a4,a5,800089d8 <console_handler+0x28>
    800089f8:	ffffe097          	auipc	ra,0xffffe
    800089fc:	6dc080e7          	jalr	1756(ra) # 800070d4 <plic_claim>
    80008a00:	00a00793          	li	a5,10
    80008a04:	00050493          	mv	s1,a0
    80008a08:	02f50c63          	beq	a0,a5,80008a40 <console_handler+0x90>
    80008a0c:	fc0506e3          	beqz	a0,800089d8 <console_handler+0x28>
    80008a10:	00050593          	mv	a1,a0
    80008a14:	00001517          	auipc	a0,0x1
    80008a18:	3ec50513          	addi	a0,a0,1004 # 80009e00 <_ZTV12ConsumerSync+0x108>
    80008a1c:	fffff097          	auipc	ra,0xfffff
    80008a20:	afc080e7          	jalr	-1284(ra) # 80007518 <__printf>
    80008a24:	01013403          	ld	s0,16(sp)
    80008a28:	01813083          	ld	ra,24(sp)
    80008a2c:	00048513          	mv	a0,s1
    80008a30:	00813483          	ld	s1,8(sp)
    80008a34:	02010113          	addi	sp,sp,32
    80008a38:	ffffe317          	auipc	t1,0xffffe
    80008a3c:	6d430067          	jr	1748(t1) # 8000710c <plic_complete>
    80008a40:	fffff097          	auipc	ra,0xfffff
    80008a44:	3e0080e7          	jalr	992(ra) # 80007e20 <uartintr>
    80008a48:	fddff06f          	j	80008a24 <console_handler+0x74>
    80008a4c:	00001517          	auipc	a0,0x1
    80008a50:	4b450513          	addi	a0,a0,1204 # 80009f00 <digits+0x78>
    80008a54:	fffff097          	auipc	ra,0xfffff
    80008a58:	a68080e7          	jalr	-1432(ra) # 800074bc <panic>
	...
