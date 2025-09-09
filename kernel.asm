
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	92013103          	ld	sp,-1760(sp) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	734060ef          	jal	ra,80006750 <start>

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
    80001084:	6d9000ef          	jal	ra,80001f5c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001174:	9f078793          	addi	a5,a5,-1552 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
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
    800011a4:	9c078793          	addi	a5,a5,-1600 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
    800011a8:	0007b503          	ld	a0,0(a5)
    800011ac:	04050263          	beqz	a0,800011f0 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011b0:	00853783          	ld	a5,8(a0)
    800011b4:	0000b717          	auipc	a4,0xb
    800011b8:	9af73623          	sd	a5,-1620(a4) # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011bc:	02078463          	beqz	a5,800011e4 <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800011c4:	00001097          	auipc	ra,0x1
    800011c8:	240080e7          	jalr	576(ra) # 80002404 <_ZdlPv>
}
    800011cc:	00048513          	mv	a0,s1
    800011d0:	01813083          	ld	ra,24(sp)
    800011d4:	01013403          	ld	s0,16(sp)
    800011d8:	00813483          	ld	s1,8(sp)
    800011dc:	02010113          	addi	sp,sp,32
    800011e0:	00008067          	ret
        if (!head) { tail = 0; }
    800011e4:	0000b797          	auipc	a5,0xb
    800011e8:	9807b223          	sd	zero,-1660(a5) # 8000bb68 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    80001218:	170080e7          	jalr	368(ra) # 80002384 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000121c:	00953023          	sd	s1,0(a0)
    80001220:	00053423          	sd	zero,8(a0)
        if (tail)
    80001224:	0000b797          	auipc	a5,0xb
    80001228:	93c78793          	addi	a5,a5,-1732 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
    8000122c:	0087b783          	ld	a5,8(a5)
    80001230:	02078263          	beqz	a5,80001254 <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    80001234:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001238:	0000b797          	auipc	a5,0xb
    8000123c:	92a7b823          	sd	a0,-1744(a5) # 8000bb68 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001240:	01813083          	ld	ra,24(sp)
    80001244:	01013403          	ld	s0,16(sp)
    80001248:	00813483          	ld	s1,8(sp)
    8000124c:	02010113          	addi	sp,sp,32
    80001250:	00008067          	ret
            head = tail = elem;
    80001254:	0000b797          	auipc	a5,0xb
    80001258:	90c78793          	addi	a5,a5,-1780 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
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
    8000128c:	84078793          	addi	a5,a5,-1984 # 8000bac8 <_ZN3TCB7runningE>
    80001290:	0007b483          	ld	s1,0(a5)

    void unblock() { blocked_ = false; }

    bool isBlocked() { return blocked_; }

    void setSleeping(bool value) { sleeping_ = value; }
    80001294:	00100793          	li	a5,1
    80001298:	02f48923          	sb	a5,50(s1)
    sleepingThreadQueue.addByRule(new SleepingThread(t, time_slices_left), SleepingThread::_scheduler_rule, 0);
    8000129c:	01000513          	li	a0,16
    800012a0:	00001097          	auipc	ra,0x1
    800012a4:	0e4080e7          	jalr	228(ra) # 80002384 <_Znwm>
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
    800012bc:	8a878793          	addi	a5,a5,-1880 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
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
    800012f8:	090080e7          	jalr	144(ra) # 80002384 <_Znwm>
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
    80001314:	78c080e7          	jalr	1932(ra) # 80002a9c <_ZN3TCB5yieldEv>
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
    80001338:	82a7be23          	sd	a0,-1988(a5) # 8000bb70 <_ZN9Scheduler19sleepingThreadQueueE>
    8000133c:	fd1ff06f          	j	8000130c <_ZN9Scheduler10putToSleepEm+0xa4>
        if (!curr) { tail = elem; }
    80001340:	0000b797          	auipc	a5,0xb
    80001344:	82a7bc23          	sd	a0,-1992(a5) # 8000bb78 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
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
    80001368:	7fc78793          	addi	a5,a5,2044 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
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
    80001398:	188080e7          	jalr	392(ra) # 8000251c <_Z6assertbPKc>
    8000139c:	0700006f          	j	8000140c <_ZN9Scheduler16maybeWakeThreadsEv+0xc0>
        if (!head) { tail = 0; }
    800013a0:	0000a797          	auipc	a5,0xa
    800013a4:	7c07bc23          	sd	zero,2008(a5) # 8000bb78 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
        delete elem;
    800013a8:	00001097          	auipc	ra,0x1
    800013ac:	05c080e7          	jalr	92(ra) # 80002404 <_ZdlPv>
        st->tcb_->setSleeping(false);
    800013b0:	0004b783          	ld	a5,0(s1)
    800013b4:	02078923          	sb	zero,50(a5)
        readyThreadQueue.addLast(st->tcb_);
    800013b8:	0004b903          	ld	s2,0(s1)
        Elem *elem = new Elem(data, 0);
    800013bc:	01000513          	li	a0,16
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	fc4080e7          	jalr	-60(ra) # 80002384 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800013c8:	01253023          	sd	s2,0(a0)
    800013cc:	00053423          	sd	zero,8(a0)
        if (tail)
    800013d0:	0000a797          	auipc	a5,0xa
    800013d4:	79078793          	addi	a5,a5,1936 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
    800013d8:	0087b783          	ld	a5,8(a5)
    800013dc:	06078063          	beqz	a5,8000143c <_ZN9Scheduler16maybeWakeThreadsEv+0xf0>
            tail->next = elem;
    800013e0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800013e4:	0000a797          	auipc	a5,0xa
    800013e8:	78a7b223          	sd	a0,1924(a5) # 8000bb68 <_ZN9Scheduler16readyThreadQueueE+0x8>
        delete st;
    800013ec:	00048513          	mv	a0,s1
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	014080e7          	jalr	20(ra) # 80002404 <_ZdlPv>
        if (!head) { return 0; }
    800013f8:	0000a797          	auipc	a5,0xa
    800013fc:	76878793          	addi	a5,a5,1896 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
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
    8000141c:	74878793          	addi	a5,a5,1864 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
    80001420:	0107b503          	ld	a0,16(a5)
    80001424:	f80506e3          	beqz	a0,800013b0 <_ZN9Scheduler16maybeWakeThreadsEv+0x64>
        head = head->next;
    80001428:	00853783          	ld	a5,8(a0)
    8000142c:	0000a717          	auipc	a4,0xa
    80001430:	74f73223          	sd	a5,1860(a4) # 8000bb70 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    80001434:	f6079ae3          	bnez	a5,800013a8 <_ZN9Scheduler16maybeWakeThreadsEv+0x5c>
    80001438:	f69ff06f          	j	800013a0 <_ZN9Scheduler16maybeWakeThreadsEv+0x54>
            head = tail = elem;
    8000143c:	0000a797          	auipc	a5,0xa
    80001440:	72478793          	addi	a5,a5,1828 # 8000bb60 <_ZN9Scheduler16readyThreadQueueE>
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
    80001524:	fd4080e7          	jalr	-44(ra) # 800024f4 <_Z11debug_printPKc>
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
    80001540:	ec8080e7          	jalr	-312(ra) # 80002404 <_ZdlPv>
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
    800015c8:	50478793          	addi	a5,a5,1284 # 8000bac8 <_ZN3TCB7runningE>
    800015cc:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    800015d0:	00100793          	li	a5,1
    800015d4:	02f908a3          	sb	a5,49(s2)
        Elem *elem = new Elem(data, 0);
    800015d8:	01000513          	li	a0,16
    800015dc:	00001097          	auipc	ra,0x1
    800015e0:	da8080e7          	jalr	-600(ra) # 80002384 <_Znwm>
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
    80001600:	4a0080e7          	jalr	1184(ra) # 80002a9c <_ZN3TCB5yieldEv>

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
    8000166c:	d9c080e7          	jalr	-612(ra) # 80002404 <_ZdlPv>
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
    80001704:	df4080e7          	jalr	-524(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001708:	02049513          	slli	a0,s1,0x20
    8000170c:	02055513          	srli	a0,a0,0x20
    80001710:	00001097          	auipc	ra,0x1
    80001714:	f2c080e7          	jalr	-212(ra) # 8000263c <_Z11debug_printm>
    debug_print("\n");
    80001718:	00008517          	auipc	a0,0x8
    8000171c:	3c050513          	addi	a0,a0,960 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80001720:	00001097          	auipc	ra,0x1
    80001724:	dd4080e7          	jalr	-556(ra) # 800024f4 <_Z11debug_printPKc>
    return new _semaphore((int)init);
    80001728:	01800513          	li	a0,24
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	c58080e7          	jalr	-936(ra) # 80002384 <_Znwm>
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
    800017a4:	d54080e7          	jalr	-684(ra) # 800024f4 <_Z11debug_printPKc>
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
    8000180c:	cec080e7          	jalr	-788(ra) # 800024f4 <_Z11debug_printPKc>
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
    80001870:	c88080e7          	jalr	-888(ra) # 800024f4 <_Z11debug_printPKc>
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
    800018cc:	c2c080e7          	jalr	-980(ra) # 800024f4 <_Z11debug_printPKc>
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
    80001978:	b80080e7          	jalr	-1152(ra) # 800024f4 <_Z11debug_printPKc>
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
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	ac4080e7          	jalr	-1340(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Handle: ");
    80001a38:	00007517          	auipc	a0,0x7
    80001a3c:	72850513          	addi	a0,a0,1832 # 80009160 <CONSOLE_STATUS+0x150>
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	ab4080e7          	jalr	-1356(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print((uint64)handle);
    80001a48:	00090513          	mv	a0,s2
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	bf0080e7          	jalr	-1040(ra) # 8000263c <_Z11debug_printm>
    debug_print("\n");
    80001a54:	00008517          	auipc	a0,0x8
    80001a58:	08450513          	addi	a0,a0,132 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	a98080e7          	jalr	-1384(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print("Syscall sem open: Init: ");
    80001a64:	00007517          	auipc	a0,0x7
    80001a68:	71c50513          	addi	a0,a0,1820 # 80009180 <CONSOLE_STATUS+0x170>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	a88080e7          	jalr	-1400(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001a74:	02049493          	slli	s1,s1,0x20
    80001a78:	0204d493          	srli	s1,s1,0x20
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	bbc080e7          	jalr	-1092(ra) # 8000263c <_Z11debug_printm>
    debug_print("\n");
    80001a88:	00008517          	auipc	a0,0x8
    80001a8c:	05050513          	addi	a0,a0,80 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	a64080e7          	jalr	-1436(ra) # 800024f4 <_Z11debug_printPKc>
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
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	9f4080e7          	jalr	-1548(ra) # 800024f4 <_Z11debug_printPKc>
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
    80001c8c:	fd010113          	addi	sp,sp,-48
    80001c90:	02113423          	sd	ra,40(sp)
    80001c94:	02813023          	sd	s0,32(sp)
    80001c98:	00913c23          	sd	s1,24(sp)
    80001c9c:	03010413          	addi	s0,sp,48
    80001ca0:	00050493          	mv	s1,a0
    debug_print("Syscall putc called\n");
    80001ca4:	00007517          	auipc	a0,0x7
    80001ca8:	51c50513          	addi	a0,a0,1308 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	848080e7          	jalr	-1976(ra) # 800024f4 <_Z11debug_printPKc>
    syscall(SyscallCode::PUTC, (uint64)c);
    80001cb4:	00013023          	sd	zero,0(sp)
    80001cb8:	00000893          	li	a7,0
    80001cbc:	00000813          	li	a6,0
    80001cc0:	00000793          	li	a5,0
    80001cc4:	00000713          	li	a4,0
    80001cc8:	00000693          	li	a3,0
    80001ccc:	00000613          	li	a2,0
    80001cd0:	00048593          	mv	a1,s1
    80001cd4:	04200513          	li	a0,66
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	a88080e7          	jalr	-1400(ra) # 80001760 <_Z7syscall11SyscallCodemmmmmmmm>
    80001ce0:	02813083          	ld	ra,40(sp)
    80001ce4:	02013403          	ld	s0,32(sp)
    80001ce8:	01813483          	ld	s1,24(sp)
    80001cec:	03010113          	addi	sp,sp,48
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"
#include "../h/mem.hpp"
#include "../h/_console.hpp"

void Riscv::popSppSpie()
{
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00813423          	sd	s0,8(sp)
    80001cfc:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001d00:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001d04:	10200073          	sret
}
    80001d08:	00813403          	ld	s0,8(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN5Riscv14consoleHandlerEv>:

void Riscv::consoleHandler()
{
    80001d14:	fc010113          	addi	sp,sp,-64
    80001d18:	02113c23          	sd	ra,56(sp)
    80001d1c:	02813823          	sd	s0,48(sp)
    80001d20:	02913423          	sd	s1,40(sp)
    80001d24:	03213023          	sd	s2,32(sp)
    80001d28:	01313c23          	sd	s3,24(sp)
    80001d2c:	01413823          	sd	s4,16(sp)
    80001d30:	01513423          	sd	s5,8(sp)
    80001d34:	04010413          	addi	s0,sp,64
    // TODO: EOF HANDLING
    uint64 irq = plic_claim();
    80001d38:	00005097          	auipc	ra,0x5
    80001d3c:	26c080e7          	jalr	620(ra) # 80006fa4 <plic_claim>
    80001d40:	00050993          	mv	s3,a0
    if (irq != CONSOLE_IRQ) {
    80001d44:	00a00793          	li	a5,10
    80001d48:	00f51c63          	bne	a0,a5,80001d60 <_ZN5Riscv14consoleHandlerEv+0x4c>
        plic_complete(irq);
        return;
    }

    // This should not be blocking.
    uint8 c_stat = *(uint8*)CONSOLE_STATUS;
    80001d4c:	00007797          	auipc	a5,0x7
    80001d50:	2c478793          	addi	a5,a5,708 # 80009010 <CONSOLE_STATUS>
    80001d54:	0007b903          	ld	s2,0(a5)
    80001d58:	00094483          	lbu	s1,0(s2)
    80001d5c:	0dc0006f          	j	80001e38 <_ZN5Riscv14consoleHandlerEv+0x124>
        debug_print("Unexpected IRQ: ");
    80001d60:	00007517          	auipc	a0,0x7
    80001d64:	58850513          	addi	a0,a0,1416 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	78c080e7          	jalr	1932(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print(irq);
    80001d70:	00098513          	mv	a0,s3
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	8c8080e7          	jalr	-1848(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    80001d7c:	00008517          	auipc	a0,0x8
    80001d80:	d5c50513          	addi	a0,a0,-676 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	770080e7          	jalr	1904(ra) # 800024f4 <_Z11debug_printPKc>
        plic_complete(irq);
    80001d8c:	00098513          	mv	a0,s3
    80001d90:	00005097          	auipc	ra,0x5
    80001d94:	24c080e7          	jalr	588(ra) # 80006fdc <plic_complete>
        return;
    80001d98:	1a00006f          	j	80001f38 <_ZN5Riscv14consoleHandlerEv+0x224>
        sem_wait(mutex_);

        if (last_idx_ >= first_idx_) {
            ret = last_idx_ - first_idx_;
        } else {
            ret = size_ - first_idx_ + last_idx_;
    80001d9c:	020a2703          	lw	a4,32(s4)
    80001da0:	41570abb          	subw	s5,a4,s5
    80001da4:	00fa8abb          	addw	s5,s5,a5
        }

        sem_signal(mutex_);
    80001da8:	010a3503          	ld	a0,16(s4)
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	df0080e7          	jalr	-528(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    static bool _can_output() {
        return buffer_out_->getCnt() > 0;
    }

    static bool _can_input() {
        return buffer_in_->getCnt() < size_;
    80001db4:	0000a797          	auipc	a5,0xa
    80001db8:	b3478793          	addi	a5,a5,-1228 # 8000b8e8 <_ZN8_console5size_E>
    80001dbc:	0007a783          	lw	a5,0(a5)
    while ((c_stat & CONSOLE_RX_STATUS_BIT) && _console::_can_input()) {
    80001dc0:	12fadc63          	bge	s5,a5,80001ef8 <_ZN5Riscv14consoleHandlerEv+0x1e4>
        char c = *(uint8*)CONSOLE_RX_DATA;
    80001dc4:	00007797          	auipc	a5,0x7
    80001dc8:	23c78793          	addi	a5,a5,572 # 80009000 <CONSOLE_RX_DATA>
    80001dcc:	0007b783          	ld	a5,0(a5)
    80001dd0:	0007ca03          	lbu	s4,0(a5)
    static char _remove_from_out() {
        char ret = buffer_out_->removeFirst();
        return ret;
    }
    static void _add_to_in(char c) {
        buffer_in_->addLast(c);
    80001dd4:	0000a797          	auipc	a5,0xa
    80001dd8:	d0478793          	addi	a5,a5,-764 # 8000bad8 <_ZN8_console10buffer_in_E>
    80001ddc:	0007b483          	ld	s1,0(a5)
        sem_wait(space_);
    80001de0:	0084b503          	ld	a0,8(s1)
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	d68080e7          	jalr	-664(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        sem_wait(mutex_);
    80001dec:	0104b503          	ld	a0,16(s1)
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	d5c080e7          	jalr	-676(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        buffer_[last_idx_] = c;
    80001df8:	0284b783          	ld	a5,40(s1)
    80001dfc:	01c4a703          	lw	a4,28(s1)
    80001e00:	00e787b3          	add	a5,a5,a4
    80001e04:	01478023          	sb	s4,0(a5)
        last_idx_ = (last_idx_ + 1) % size_;
    80001e08:	01c4a783          	lw	a5,28(s1)
    80001e0c:	0017879b          	addiw	a5,a5,1
    80001e10:	0204a703          	lw	a4,32(s1)
    80001e14:	02e7e7bb          	remw	a5,a5,a4
    80001e18:	00f4ae23          	sw	a5,28(s1)
        sem_signal(mutex_);
    80001e1c:	0104b503          	ld	a0,16(s1)
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	d7c080e7          	jalr	-644(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
        sem_signal(item_);
    80001e28:	0004b503          	ld	a0,0(s1)
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	d70080e7          	jalr	-656(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
        _console::_add_to_in(c);
        c_stat = *(uint8*)CONSOLE_STATUS;
    80001e34:	00094483          	lbu	s1,0(s2)
    while ((c_stat & CONSOLE_RX_STATUS_BIT) && _console::_can_input()) {
    80001e38:	0014f793          	andi	a5,s1,1
    80001e3c:	0a078e63          	beqz	a5,80001ef8 <_ZN5Riscv14consoleHandlerEv+0x1e4>
        return buffer_in_->getCnt() < size_;
    80001e40:	0000a797          	auipc	a5,0xa
    80001e44:	c9878793          	addi	a5,a5,-872 # 8000bad8 <_ZN8_console10buffer_in_E>
    80001e48:	0007ba03          	ld	s4,0(a5)
        sem_wait(mutex_);
    80001e4c:	010a3503          	ld	a0,16(s4)
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	cfc080e7          	jalr	-772(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        if (last_idx_ >= first_idx_) {
    80001e58:	01ca2783          	lw	a5,28(s4)
    80001e5c:	018a2a83          	lw	s5,24(s4)
    80001e60:	f357cee3          	blt	a5,s5,80001d9c <_ZN5Riscv14consoleHandlerEv+0x88>
            ret = last_idx_ - first_idx_;
    80001e64:	41578abb          	subw	s5,a5,s5
    80001e68:	f41ff06f          	j	80001da8 <_ZN5Riscv14consoleHandlerEv+0x94>
            ret = size_ - first_idx_ + last_idx_;
    80001e6c:	0204a703          	lw	a4,32(s1)
    80001e70:	41470a3b          	subw	s4,a4,s4
    80001e74:	00fa0a3b          	addw	s4,s4,a5
        sem_signal(mutex_);
    80001e78:	0104b503          	ld	a0,16(s1)
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	d20080e7          	jalr	-736(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    }

    // This should not be blocking.
    while ((c_stat & CONSOLE_TX_STATUS_BIT) && _console::_can_output()) {
    80001e84:	0b405463          	blez	s4,80001f2c <_ZN5Riscv14consoleHandlerEv+0x218>
        char ret = buffer_out_->removeFirst();
    80001e88:	0000a797          	auipc	a5,0xa
    80001e8c:	c4878793          	addi	a5,a5,-952 # 8000bad0 <_ZN8_console11buffer_out_E>
    80001e90:	0007b483          	ld	s1,0(a5)
        sem_wait(item_);
    80001e94:	0004b503          	ld	a0,0(s1)
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	cb4080e7          	jalr	-844(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        sem_wait(mutex_);
    80001ea0:	0104b503          	ld	a0,16(s1)
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	ca8080e7          	jalr	-856(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        T ret = buffer_[first_idx_];
    80001eac:	0284b703          	ld	a4,40(s1)
    80001eb0:	0184a783          	lw	a5,24(s1)
    80001eb4:	00f70733          	add	a4,a4,a5
    80001eb8:	00074a03          	lbu	s4,0(a4)
        first_idx_ = (first_idx_ + 1) % size_;
    80001ebc:	0017879b          	addiw	a5,a5,1
    80001ec0:	0204a703          	lw	a4,32(s1)
    80001ec4:	02e7e7bb          	remw	a5,a5,a4
    80001ec8:	00f4ac23          	sw	a5,24(s1)
        sem_signal(mutex_);
    80001ecc:	0104b503          	ld	a0,16(s1)
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	ccc080e7          	jalr	-820(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
        sem_signal(space_);
    80001ed8:	0084b503          	ld	a0,8(s1)
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	cc0080e7          	jalr	-832(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
        char c = _console::_remove_from_out();
        *(uint8*)CONSOLE_TX_DATA = c;
    80001ee4:	00007797          	auipc	a5,0x7
    80001ee8:	12478793          	addi	a5,a5,292 # 80009008 <CONSOLE_TX_DATA>
    80001eec:	0007b783          	ld	a5,0(a5)
    80001ef0:	01478023          	sb	s4,0(a5)
        c_stat = *(uint8*)CONSOLE_STATUS;
    80001ef4:	00094483          	lbu	s1,0(s2)
    while ((c_stat & CONSOLE_TX_STATUS_BIT) && _console::_can_output()) {
    80001ef8:	0204f493          	andi	s1,s1,32
    80001efc:	02048863          	beqz	s1,80001f2c <_ZN5Riscv14consoleHandlerEv+0x218>
        return buffer_out_->getCnt() > 0;
    80001f00:	0000a797          	auipc	a5,0xa
    80001f04:	bd078793          	addi	a5,a5,-1072 # 8000bad0 <_ZN8_console11buffer_out_E>
    80001f08:	0007b483          	ld	s1,0(a5)
        sem_wait(mutex_);
    80001f0c:	0104b503          	ld	a0,16(s1)
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	c3c080e7          	jalr	-964(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        if (last_idx_ >= first_idx_) {
    80001f18:	01c4a783          	lw	a5,28(s1)
    80001f1c:	0184aa03          	lw	s4,24(s1)
    80001f20:	f547c6e3          	blt	a5,s4,80001e6c <_ZN5Riscv14consoleHandlerEv+0x158>
            ret = last_idx_ - first_idx_;
    80001f24:	41478a3b          	subw	s4,a5,s4
    80001f28:	f51ff06f          	j	80001e78 <_ZN5Riscv14consoleHandlerEv+0x164>
    }

    // Write to output/input
    plic_complete(irq);
    80001f2c:	00098513          	mv	a0,s3
    80001f30:	00005097          	auipc	ra,0x5
    80001f34:	0ac080e7          	jalr	172(ra) # 80006fdc <plic_complete>
}
    80001f38:	03813083          	ld	ra,56(sp)
    80001f3c:	03013403          	ld	s0,48(sp)
    80001f40:	02813483          	ld	s1,40(sp)
    80001f44:	02013903          	ld	s2,32(sp)
    80001f48:	01813983          	ld	s3,24(sp)
    80001f4c:	01013a03          	ld	s4,16(sp)
    80001f50:	00813a83          	ld	s5,8(sp)
    80001f54:	04010113          	addi	sp,sp,64
    80001f58:	00008067          	ret

0000000080001f5c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001f5c:	f9010113          	addi	sp,sp,-112
    80001f60:	06113423          	sd	ra,104(sp)
    80001f64:	06813023          	sd	s0,96(sp)
    80001f68:	04913c23          	sd	s1,88(sp)
    80001f6c:	05213823          	sd	s2,80(sp)
    80001f70:	07010413          	addi	s0,sp,112
    uint64 a0, a1, a2, a3, a4, a5, a6, a7;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001f74:	00050793          	mv	a5,a0
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001f78:	00058493          	mv	s1,a1
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001f7c:	00060513          	mv	a0,a2
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001f80:	00068593          	mv	a1,a3
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001f84:	00070713          	mv	a4,a4
    __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001f88:	00078713          	mv	a4,a5
    __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001f8c:	00080713          	mv	a4,a6
    __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001f90:	00088713          	mv	a4,a7
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001f94:	14202773          	csrr	a4,scause
    80001f98:	fae43c23          	sd	a4,-72(s0)
    return scause;
    80001f9c:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001fa0:	ff870613          	addi	a2,a4,-8
    80001fa4:	00100693          	li	a3,1
    80001fa8:	04c6f063          	bgeu	a3,a2,80001fe8 <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001fac:	fff00793          	li	a5,-1
    80001fb0:	03f79793          	slli	a5,a5,0x3f
    80001fb4:	00178793          	addi	a5,a5,1
    80001fb8:	34f70663          	beq	a4,a5,80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001fbc:	fff00793          	li	a5,-1
    80001fc0:	03f79793          	slli	a5,a5,0x3f
    80001fc4:	00978793          	addi	a5,a5,9
    80001fc8:	08f71c63          	bne	a4,a5,80002060 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    {
        debug_print("Console handler called\n");
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	3a450513          	addi	a0,a0,932 # 80009370 <CONSOLE_STATUS+0x360>
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	520080e7          	jalr	1312(ra) # 800024f4 <_Z11debug_printPKc>
        Riscv::consoleHandler();
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	d38080e7          	jalr	-712(ra) # 80001d14 <_ZN5Riscv14consoleHandlerEv>
    }
    else
    {
        // unexpected trap cause
    }
    80001fe4:	07c0006f          	j	80002060 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001fe8:	14102773          	csrr	a4,sepc
    80001fec:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80001ff0:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001ff4:	00470713          	addi	a4,a4,4
    80001ff8:	f8e43c23          	sd	a4,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ffc:	10002773          	csrr	a4,sstatus
    80002000:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80002004:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002008:	fae43023          	sd	a4,-96(s0)
        switch (a0) {
    8000200c:	04200713          	li	a4,66
    80002010:	2cf76e63          	bltu	a4,a5,800022ec <_ZN5Riscv20handleSupervisorTrapEv+0x390>
    80002014:	00279793          	slli	a5,a5,0x2
    80002018:	00007717          	auipc	a4,0x7
    8000201c:	1c070713          	addi	a4,a4,448 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002020:	00e787b3          	add	a5,a5,a4
    80002024:	0007a783          	lw	a5,0(a5)
    80002028:	00e787b3          	add	a5,a5,a4
    8000202c:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80002030:	00001097          	auipc	ra,0x1
    80002034:	b1c080e7          	jalr	-1252(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    80002038:	00048593          	mv	a1,s1
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	c74080e7          	jalr	-908(ra) # 80002cb0 <_ZN15MemoryAllocator9mem_allocEm>
    80002044:	00050913          	mv	s2,a0
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80002048:	00090513          	mv	a0,s2
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    8000204c:	05243823          	sd	s2,80(s0)
        w_sstatus(sstatus);
    80002050:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002054:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002058:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000205c:	14179073          	csrw	sepc,a5
    80002060:	06813083          	ld	ra,104(sp)
    80002064:	06013403          	ld	s0,96(sp)
    80002068:	05813483          	ld	s1,88(sp)
    8000206c:	05013903          	ld	s2,80(sp)
    80002070:	07010113          	addi	sp,sp,112
    80002074:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	ad4080e7          	jalr	-1324(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    80002080:	00048593          	mv	a1,s1
    80002084:	00001097          	auipc	ra,0x1
    80002088:	dac080e7          	jalr	-596(ra) # 80002e30 <_ZN15MemoryAllocator8mem_freeEPv>
    8000208c:	00050913          	mv	s2,a0
                break;
    80002090:	fb9ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80002094:	00001097          	auipc	ra,0x1
    80002098:	ab8080e7          	jalr	-1352(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    8000209c:	00001097          	auipc	ra,0x1
    800020a0:	ce8080e7          	jalr	-792(ra) # 80002d84 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    800020a4:	00000913          	li	s2,0
                break;
    800020a8:	fa1ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	aa0080e7          	jalr	-1376(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	c9c080e7          	jalr	-868(ra) # 80002d50 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    800020bc:	00000913          	li	s2,0
                break;
    800020c0:	f89ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	86c080e7          	jalr	-1940(ra) # 80002930 <_ZN3TCB12createThreadEPFvPvES0_>
    800020cc:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    800020d0:	22050263          	beqz	a0,800022f4 <_ZN5Riscv20handleSupervisorTrapEv+0x398>
        uint64 res = 0;
    800020d4:	00000913          	li	s2,0
    800020d8:	f71ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                TCB::exit();
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	9e8080e7          	jalr	-1560(ra) # 80002ac4 <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    800020e4:	0004b783          	ld	a5,0(s1)
    800020e8:	0000a717          	auipc	a4,0xa
    800020ec:	9e070713          	addi	a4,a4,-1568 # 8000bac8 <_ZN3TCB7runningE>
    800020f0:	00073503          	ld	a0,0(a4)
    800020f4:	40f50533          	sub	a0,a0,a5
    800020f8:	00007597          	auipc	a1,0x7
    800020fc:	20858593          	addi	a1,a1,520 # 80009300 <CONSOLE_STATUS+0x2f0>
    80002100:	00153513          	seqz	a0,a0
    80002104:	00000097          	auipc	ra,0x0
    80002108:	418080e7          	jalr	1048(ra) # 8000251c <_Z6assertbPKc>
                delete *handle;
    8000210c:	0004b483          	ld	s1,0(s1)
    80002110:	1e048663          	beqz	s1,800022fc <_ZN5Riscv20handleSupervisorTrapEv+0x3a0>
    ~TCB() { delete[] stack; }
    80002114:	0104b503          	ld	a0,16(s1)
    80002118:	00050663          	beqz	a0,80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	328080e7          	jalr	808(ra) # 80002444 <_ZdaPv>
    80002124:	00048513          	mv	a0,s1
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	2dc080e7          	jalr	732(ra) # 80002404 <_ZdlPv>
        uint64 res = 0;
    80002130:	00000913          	li	s2,0
    80002134:	f15ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                TCB::dispatch();
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	8e8080e7          	jalr	-1816(ra) # 80002a20 <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80002140:	00000913          	li	s2,0
                break;
    80002144:	f05ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                *handle = (sem_t)_semaphore::open(a2);
    80002148:	0005051b          	sext.w	a0,a0
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	590080e7          	jalr	1424(ra) # 800016dc <_ZN10_semaphore4openEj>
    80002154:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80002158:	06050263          	beqz	a0,800021bc <_ZN5Riscv20handleSupervisorTrapEv+0x260>
        uint64 res = 0;
    8000215c:	00000913          	li	s2,0
                debug_print("Semaphore open: Handle: ");
    80002160:	00007517          	auipc	a0,0x7
    80002164:	1d850513          	addi	a0,a0,472 # 80009338 <CONSOLE_STATUS+0x328>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	38c080e7          	jalr	908(ra) # 800024f4 <_Z11debug_printPKc>
                debug_print((uint64)*handle);
    80002170:	0004b503          	ld	a0,0(s1)
    80002174:	00000097          	auipc	ra,0x0
    80002178:	4c8080e7          	jalr	1224(ra) # 8000263c <_Z11debug_printm>
                debug_print("\n");
    8000217c:	00008517          	auipc	a0,0x8
    80002180:	95c50513          	addi	a0,a0,-1700 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80002184:	00000097          	auipc	ra,0x0
    80002188:	370080e7          	jalr	880(ra) # 800024f4 <_Z11debug_printPKc>
                debug_print("On handle addr: ");
    8000218c:	00007517          	auipc	a0,0x7
    80002190:	1cc50513          	addi	a0,a0,460 # 80009358 <CONSOLE_STATUS+0x348>
    80002194:	00000097          	auipc	ra,0x0
    80002198:	360080e7          	jalr	864(ra) # 800024f4 <_Z11debug_printPKc>
                debug_print((uint64)handle);
    8000219c:	00048513          	mv	a0,s1
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	49c080e7          	jalr	1180(ra) # 8000263c <_Z11debug_printm>
                debug_print("\n");
    800021a8:	00008517          	auipc	a0,0x8
    800021ac:	93050513          	addi	a0,a0,-1744 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	344080e7          	jalr	836(ra) # 800024f4 <_Z11debug_printPKc>
                break;
    800021b8:	e91ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                    res = -1;
    800021bc:	fff00913          	li	s2,-1
    800021c0:	fa1ff06f          	j	80002160 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                handle->close();
    800021c4:	00048513          	mv	a0,s1
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	334080e7          	jalr	820(ra) # 800014fc <_ZN10_semaphore5closeEv>
                delete handle;
    800021d0:	00048513          	mv	a0,s1
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	230080e7          	jalr	560(ra) # 80002404 <_ZdlPv>
        uint64 res = 0;
    800021dc:	00000913          	li	s2,0
                break;
    800021e0:	e69ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                res = handle->wait();
    800021e4:	00048513          	mv	a0,s1
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	3a0080e7          	jalr	928(ra) # 80001588 <_ZN10_semaphore4waitEv>
    800021f0:	00050913          	mv	s2,a0
                break;
    800021f4:	e55ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                handle->signal();
    800021f8:	00048513          	mv	a0,s1
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	438080e7          	jalr	1080(ra) # 80001634 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80002204:	00000913          	li	s2,0
                break;
    80002208:	e41ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                Scheduler::putToSleep(time_slices_left);
    8000220c:	0014d513          	srli	a0,s1,0x1
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	058080e7          	jalr	88(ra) # 80001268 <_ZN9Scheduler10putToSleepEm>
        uint64 res = 0;
    80002218:	00000913          	li	s2,0
                break;
    8000221c:	e2dff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
        return buffer_in_->removeFirst();
    80002220:	0000a797          	auipc	a5,0xa
    80002224:	8b878793          	addi	a5,a5,-1864 # 8000bad8 <_ZN8_console10buffer_in_E>
    80002228:	0007b483          	ld	s1,0(a5)
        sem_wait(item_);
    8000222c:	0004b503          	ld	a0,0(s1)
    80002230:	00000097          	auipc	ra,0x0
    80002234:	91c080e7          	jalr	-1764(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        sem_wait(mutex_);
    80002238:	0104b503          	ld	a0,16(s1)
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	910080e7          	jalr	-1776(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        T ret = buffer_[first_idx_];
    80002244:	0284b703          	ld	a4,40(s1)
    80002248:	0184a783          	lw	a5,24(s1)
    8000224c:	00f70733          	add	a4,a4,a5
    80002250:	00074903          	lbu	s2,0(a4)
        first_idx_ = (first_idx_ + 1) % size_;
    80002254:	0017879b          	addiw	a5,a5,1
    80002258:	0204a703          	lw	a4,32(s1)
    8000225c:	02e7e7bb          	remw	a5,a5,a4
    80002260:	00f4ac23          	sw	a5,24(s1)
        sem_signal(mutex_);
    80002264:	0104b503          	ld	a0,16(s1)
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	934080e7          	jalr	-1740(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
        sem_signal(space_);
    80002270:	0084b503          	ld	a0,8(s1)
    80002274:	00000097          	auipc	ra,0x0
    80002278:	928080e7          	jalr	-1752(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
                break;
    8000227c:	dcdff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                _console::_putc((char)a1);
    80002280:	0ff4f493          	andi	s1,s1,255
        buffer_out_->addLast(c);
    80002284:	0000a797          	auipc	a5,0xa
    80002288:	84c78793          	addi	a5,a5,-1972 # 8000bad0 <_ZN8_console11buffer_out_E>
    8000228c:	0007b903          	ld	s2,0(a5)
        sem_wait(space_);
    80002290:	00893503          	ld	a0,8(s2)
    80002294:	00000097          	auipc	ra,0x0
    80002298:	8b8080e7          	jalr	-1864(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        sem_wait(mutex_);
    8000229c:	01093503          	ld	a0,16(s2)
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	8ac080e7          	jalr	-1876(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
        buffer_[last_idx_] = c;
    800022a8:	02893783          	ld	a5,40(s2)
    800022ac:	01c92703          	lw	a4,28(s2)
    800022b0:	00e787b3          	add	a5,a5,a4
    800022b4:	00978023          	sb	s1,0(a5)
        last_idx_ = (last_idx_ + 1) % size_;
    800022b8:	01c92783          	lw	a5,28(s2)
    800022bc:	0017879b          	addiw	a5,a5,1
    800022c0:	02092703          	lw	a4,32(s2)
    800022c4:	02e7e7bb          	remw	a5,a5,a4
    800022c8:	00f92e23          	sw	a5,28(s2)
        sem_signal(mutex_);
    800022cc:	01093503          	ld	a0,16(s2)
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	8cc080e7          	jalr	-1844(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
        sem_signal(item_);
    800022d8:	00093503          	ld	a0,0(s2)
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	8c0080e7          	jalr	-1856(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
        uint64 res = 0;
    800022e4:	00000913          	li	s2,0
    800022e8:	d61ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    800022ec:	00000913          	li	s2,0
    800022f0:	d59ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                    res = -1;
    800022f4:	fff00913          	li	s2,-1
    800022f8:	d51ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
        uint64 res = 0;
    800022fc:	00000913          	li	s2,0
    80002300:	d49ff06f          	j	80002048 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002304:	00200793          	li	a5,2
    80002308:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    8000230c:	00009497          	auipc	s1,0x9
    80002310:	7b448493          	addi	s1,s1,1972 # 8000bac0 <_ZN3TCB16timeSliceCounterE>
    80002314:	0004b783          	ld	a5,0(s1)
    80002318:	00178793          	addi	a5,a5,1
    8000231c:	00f4b023          	sd	a5,0(s1)
        Scheduler::maybeWakeThreads();
    80002320:	fffff097          	auipc	ra,0xfffff
    80002324:	02c080e7          	jalr	44(ra) # 8000134c <_ZN9Scheduler16maybeWakeThreadsEv>
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002328:	00009797          	auipc	a5,0x9
    8000232c:	7a078793          	addi	a5,a5,1952 # 8000bac8 <_ZN3TCB7runningE>
    80002330:	0007b783          	ld	a5,0(a5)

    bool isSleeping() { return sleeping_; }

    uint64 getTimeSlice() const { return timeSlice; }
    80002334:	0287b783          	ld	a5,40(a5)
    80002338:	0004b703          	ld	a4,0(s1)
    8000233c:	d2f762e3          	bltu	a4,a5,80002060 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002340:	141027f3          	csrr	a5,sepc
    80002344:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002348:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    8000234c:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002350:	100027f3          	csrr	a5,sstatus
    80002354:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002358:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    8000235c:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80002360:	00009797          	auipc	a5,0x9
    80002364:	7607b023          	sd	zero,1888(a5) # 8000bac0 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	6b8080e7          	jalr	1720(ra) # 80002a20 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002370:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002374:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002378:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000237c:	14179073          	csrw	sepc,a5
    80002380:	ce1ff06f          	j	80002060 <_ZN5Riscv20handleSupervisorTrapEv+0x104>

0000000080002384 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002384:	fe010113          	addi	sp,sp,-32
    80002388:	00113c23          	sd	ra,24(sp)
    8000238c:	00813823          	sd	s0,16(sp)
    80002390:	00913423          	sd	s1,8(sp)
    80002394:	02010413          	addi	s0,sp,32
    80002398:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	7b0080e7          	jalr	1968(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    800023a4:	00048593          	mv	a1,s1
    800023a8:	00001097          	auipc	ra,0x1
    800023ac:	908080e7          	jalr	-1784(ra) # 80002cb0 <_ZN15MemoryAllocator9mem_allocEm>
}
    800023b0:	01813083          	ld	ra,24(sp)
    800023b4:	01013403          	ld	s0,16(sp)
    800023b8:	00813483          	ld	s1,8(sp)
    800023bc:	02010113          	addi	sp,sp,32
    800023c0:	00008067          	ret

00000000800023c4 <_Znam>:

void *operator new[](size_t n)
{
    800023c4:	fe010113          	addi	sp,sp,-32
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	00813823          	sd	s0,16(sp)
    800023d0:	00913423          	sd	s1,8(sp)
    800023d4:	02010413          	addi	s0,sp,32
    800023d8:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	770080e7          	jalr	1904(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    800023e4:	00048593          	mv	a1,s1
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	8c8080e7          	jalr	-1848(ra) # 80002cb0 <_ZN15MemoryAllocator9mem_allocEm>
}
    800023f0:	01813083          	ld	ra,24(sp)
    800023f4:	01013403          	ld	s0,16(sp)
    800023f8:	00813483          	ld	s1,8(sp)
    800023fc:	02010113          	addi	sp,sp,32
    80002400:	00008067          	ret

0000000080002404 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002404:	fe010113          	addi	sp,sp,-32
    80002408:	00113c23          	sd	ra,24(sp)
    8000240c:	00813823          	sd	s0,16(sp)
    80002410:	00913423          	sd	s1,8(sp)
    80002414:	02010413          	addi	s0,sp,32
    80002418:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	730080e7          	jalr	1840(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    80002424:	00048593          	mv	a1,s1
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	a08080e7          	jalr	-1528(ra) # 80002e30 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002430:	01813083          	ld	ra,24(sp)
    80002434:	01013403          	ld	s0,16(sp)
    80002438:	00813483          	ld	s1,8(sp)
    8000243c:	02010113          	addi	sp,sp,32
    80002440:	00008067          	ret

0000000080002444 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002444:	fe010113          	addi	sp,sp,-32
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	00813823          	sd	s0,16(sp)
    80002450:	00913423          	sd	s1,8(sp)
    80002454:	02010413          	addi	s0,sp,32
    80002458:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	6f0080e7          	jalr	1776(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    80002464:	00048593          	mv	a1,s1
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	9c8080e7          	jalr	-1592(ra) # 80002e30 <_ZN15MemoryAllocator8mem_freeEPv>
    80002470:	01813083          	ld	ra,24(sp)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	00813483          	ld	s1,8(sp)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00008067          	ret

0000000080002484 <_Z27debug_print_internal_stringPKc>:
        debug_print("\n");
    }
}

void debug_print_internal_string(char const *string)
{
    80002484:	fd010113          	addi	sp,sp,-48
    80002488:	02113423          	sd	ra,40(sp)
    8000248c:	02813023          	sd	s0,32(sp)
    80002490:	00913c23          	sd	s1,24(sp)
    80002494:	01213823          	sd	s2,16(sp)
    80002498:	03010413          	addi	s0,sp,48
    8000249c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024a0:	100027f3          	csrr	a5,sstatus
    800024a4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800024a8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800024ac:	00200793          	li	a5,2
    800024b0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800024b4:	0004c503          	lbu	a0,0(s1)
    800024b8:	00050a63          	beqz	a0,800024cc <_Z27debug_print_internal_stringPKc+0x48>
    {
        __putc(*string);
    800024bc:	00006097          	auipc	ra,0x6
    800024c0:	350080e7          	jalr	848(ra) # 8000880c <__putc>
        string++;
    800024c4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800024c8:	fedff06f          	j	800024b4 <_Z27debug_print_internal_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800024cc:	0009091b          	sext.w	s2,s2
    800024d0:	00297913          	andi	s2,s2,2
    800024d4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800024d8:	10092073          	csrs	sstatus,s2
}
    800024dc:	02813083          	ld	ra,40(sp)
    800024e0:	02013403          	ld	s0,32(sp)
    800024e4:	01813483          	ld	s1,24(sp)
    800024e8:	01013903          	ld	s2,16(sp)
    800024ec:	03010113          	addi	sp,sp,48
    800024f0:	00008067          	ret

00000000800024f4 <_Z11debug_printPKc>:
void debug_print(char const *string) {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    debug_print_internal_string(string);
    80002504:	00000097          	auipc	ra,0x0
    80002508:	f80080e7          	jalr	-128(ra) # 80002484 <_Z27debug_print_internal_stringPKc>
}
    8000250c:	00813083          	ld	ra,8(sp)
    80002510:	00013403          	ld	s0,0(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret

000000008000251c <_Z6assertbPKc>:
    if (!condition) {
    8000251c:	00050463          	beqz	a0,80002524 <_Z6assertbPKc+0x8>
    80002520:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80002524:	fe010113          	addi	sp,sp,-32
    80002528:	00113c23          	sd	ra,24(sp)
    8000252c:	00813823          	sd	s0,16(sp)
    80002530:	00913423          	sd	s1,8(sp)
    80002534:	02010413          	addi	s0,sp,32
    80002538:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    8000253c:	00007517          	auipc	a0,0x7
    80002540:	e5c50513          	addi	a0,a0,-420 # 80009398 <_ZZ24debug_print_internal_intmE6digits+0x10>
    80002544:	00000097          	auipc	ra,0x0
    80002548:	fb0080e7          	jalr	-80(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print(debug_message);
    8000254c:	00048513          	mv	a0,s1
    80002550:	00000097          	auipc	ra,0x0
    80002554:	fa4080e7          	jalr	-92(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("\n");
    80002558:	00007517          	auipc	a0,0x7
    8000255c:	58050513          	addi	a0,a0,1408 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80002560:	00000097          	auipc	ra,0x0
    80002564:	f94080e7          	jalr	-108(ra) # 800024f4 <_Z11debug_printPKc>
}
    80002568:	01813083          	ld	ra,24(sp)
    8000256c:	01013403          	ld	s0,16(sp)
    80002570:	00813483          	ld	s1,8(sp)
    80002574:	02010113          	addi	sp,sp,32
    80002578:	00008067          	ret

000000008000257c <_Z24debug_print_internal_intm>:

void debug_print_internal_int(uint64 integer)
{
    8000257c:	fc010113          	addi	sp,sp,-64
    80002580:	02113c23          	sd	ra,56(sp)
    80002584:	02813823          	sd	s0,48(sp)
    80002588:	02913423          	sd	s1,40(sp)
    8000258c:	03213023          	sd	s2,32(sp)
    80002590:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002594:	100027f3          	csrr	a5,sstatus
    80002598:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000259c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800025a0:	00200793          	li	a5,2
    800025a4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800025a8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800025ac:	00000713          	li	a4,0
    800025b0:	0080006f          	j	800025b8 <_Z24debug_print_internal_intm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    800025b4:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    800025b8:	00a00793          	li	a5,10
    800025bc:	02f5763b          	remuw	a2,a0,a5
    800025c0:	0017049b          	addiw	s1,a4,1
    800025c4:	00007697          	auipc	a3,0x7
    800025c8:	dc468693          	addi	a3,a3,-572 # 80009388 <_ZZ24debug_print_internal_intmE6digits>
    800025cc:	00c686b3          	add	a3,a3,a2
    800025d0:	0006c683          	lbu	a3,0(a3)
    800025d4:	fe040613          	addi	a2,s0,-32
    800025d8:	00e60733          	add	a4,a2,a4
    800025dc:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    800025e0:	02f557bb          	divuw	a5,a0,a5
    800025e4:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    800025e8:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    800025ec:	00900793          	li	a5,9
    800025f0:	fca7e2e3          	bltu	a5,a0,800025b4 <_Z24debug_print_internal_intm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800025f4:	fff4849b          	addiw	s1,s1,-1
    800025f8:	0004ce63          	bltz	s1,80002614 <_Z24debug_print_internal_intm+0x98>
    800025fc:	fe040793          	addi	a5,s0,-32
    80002600:	009787b3          	add	a5,a5,s1
    80002604:	ff07c503          	lbu	a0,-16(a5)
    80002608:	00006097          	auipc	ra,0x6
    8000260c:	204080e7          	jalr	516(ra) # 8000880c <__putc>
    80002610:	fe5ff06f          	j	800025f4 <_Z24debug_print_internal_intm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002614:	0009091b          	sext.w	s2,s2
    80002618:	00297913          	andi	s2,s2,2
    8000261c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002620:	10092073          	csrs	sstatus,s2
    80002624:	03813083          	ld	ra,56(sp)
    80002628:	03013403          	ld	s0,48(sp)
    8000262c:	02813483          	ld	s1,40(sp)
    80002630:	02013903          	ld	s2,32(sp)
    80002634:	04010113          	addi	sp,sp,64
    80002638:	00008067          	ret

000000008000263c <_Z11debug_printm>:
void debug_print(uint64 integer) {
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00113423          	sd	ra,8(sp)
    80002644:	00813023          	sd	s0,0(sp)
    80002648:	01010413          	addi	s0,sp,16
    debug_print_internal_int(integer);
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	f30080e7          	jalr	-208(ra) # 8000257c <_Z24debug_print_internal_intm>
}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_Z15userMainWrapperPv>:
#include "../h/_console.hpp"

void userMain();

void userMainWrapper(void* arg)
{
    80002664:	ff010113          	addi	sp,sp,-16
    80002668:	00813423          	sd	s0,8(sp)
    8000266c:	01010413          	addi	s0,sp,16
    // debug_print("Starting userMain\n");
    // userMain();
    // putc('A');
    return;
}
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <main>:

int main()
{
    8000267c:	fd010113          	addi	sp,sp,-48
    80002680:	02113423          	sd	ra,40(sp)
    80002684:	02813023          	sd	s0,32(sp)
    80002688:	00913c23          	sd	s1,24(sp)
    8000268c:	01213823          	sd	s2,16(sp)
    80002690:	01313423          	sd	s3,8(sp)
    80002694:	03010413          	addi	s0,sp,48
    thread_t main_handle;
    // thread_t userMain_handle;

    // Initialize console.
    debug_print("Initializing console\n");
    80002698:	00007517          	auipc	a0,0x7
    8000269c:	d1850513          	addi	a0,a0,-744 # 800093b0 <_ZZ24debug_print_internal_intmE6digits+0x28>
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	e54080e7          	jalr	-428(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("Creating buffers\n");
    800026a8:	00007517          	auipc	a0,0x7
    800026ac:	d2050513          	addi	a0,a0,-736 # 800093c8 <_ZZ24debug_print_internal_intmE6digits+0x40>
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	e44080e7          	jalr	-444(ra) # 800024f4 <_Z11debug_printPKc>
        buffer_in_ = CircularBuffer<char>::createInstance(size_);
    800026b8:	00009917          	auipc	s2,0x9
    800026bc:	23090913          	addi	s2,s2,560 # 8000b8e8 <_ZN8_console5size_E>
    800026c0:	00092983          	lw	s3,0(s2)
        CircularBuffer<T> *instance = (CircularBuffer<T>*)MemoryAllocator::getInstance()->mem_alloc(sizeof(CircularBuffer<T>));
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	488080e7          	jalr	1160(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    800026cc:	03000593          	li	a1,48
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	5e0080e7          	jalr	1504(ra) # 80002cb0 <_ZN15MemoryAllocator9mem_allocEm>
    800026d8:	00050493          	mv	s1,a0
        instance->first_idx_ = 0;
    800026dc:	00052c23          	sw	zero,24(a0)
        instance->last_idx_ = 0;
    800026e0:	00052e23          	sw	zero,28(a0)
        instance->size_ = size+1;
    800026e4:	0019879b          	addiw	a5,s3,1
    800026e8:	02f52023          	sw	a5,32(a0)
        instance->item_ = _semaphore::open(0);
    800026ec:	00000513          	li	a0,0
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	fec080e7          	jalr	-20(ra) # 800016dc <_ZN10_semaphore4openEj>
    800026f8:	00a4b023          	sd	a0,0(s1)
        instance->space_ = _semaphore::open(size);
    800026fc:	00098513          	mv	a0,s3
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	fdc080e7          	jalr	-36(ra) # 800016dc <_ZN10_semaphore4openEj>
    80002708:	00a4b423          	sd	a0,8(s1)
        instance->mutex_ = _semaphore::open(1);
    8000270c:	00100513          	li	a0,1
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	fcc080e7          	jalr	-52(ra) # 800016dc <_ZN10_semaphore4openEj>
    80002718:	00a4b823          	sd	a0,16(s1)
        instance->buffer_ = (T*)MemoryAllocator::getInstance()->mem_alloc(sizeof(T) * instance->size_);
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	430080e7          	jalr	1072(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    80002724:	0204a583          	lw	a1,32(s1)
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	588080e7          	jalr	1416(ra) # 80002cb0 <_ZN15MemoryAllocator9mem_allocEm>
    80002730:	02a4b423          	sd	a0,40(s1)
    80002734:	00009797          	auipc	a5,0x9
    80002738:	3a97b223          	sd	s1,932(a5) # 8000bad8 <_ZN8_console10buffer_in_E>
        buffer_out_ = CircularBuffer<char>::createInstance(size_);
    8000273c:	00092903          	lw	s2,0(s2)
        CircularBuffer<T> *instance = (CircularBuffer<T>*)MemoryAllocator::getInstance()->mem_alloc(sizeof(CircularBuffer<T>));
    80002740:	00000097          	auipc	ra,0x0
    80002744:	40c080e7          	jalr	1036(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    80002748:	03000593          	li	a1,48
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	564080e7          	jalr	1380(ra) # 80002cb0 <_ZN15MemoryAllocator9mem_allocEm>
    80002754:	00050493          	mv	s1,a0
        instance->first_idx_ = 0;
    80002758:	00052c23          	sw	zero,24(a0)
        instance->last_idx_ = 0;
    8000275c:	00052e23          	sw	zero,28(a0)
        instance->size_ = size+1;
    80002760:	0019079b          	addiw	a5,s2,1
    80002764:	02f52023          	sw	a5,32(a0)
        instance->item_ = _semaphore::open(0);
    80002768:	00000513          	li	a0,0
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	f70080e7          	jalr	-144(ra) # 800016dc <_ZN10_semaphore4openEj>
    80002774:	00a4b023          	sd	a0,0(s1)
        instance->space_ = _semaphore::open(size);
    80002778:	00090513          	mv	a0,s2
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	f60080e7          	jalr	-160(ra) # 800016dc <_ZN10_semaphore4openEj>
    80002784:	00a4b423          	sd	a0,8(s1)
        instance->mutex_ = _semaphore::open(1);
    80002788:	00100513          	li	a0,1
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	f50080e7          	jalr	-176(ra) # 800016dc <_ZN10_semaphore4openEj>
    80002794:	00a4b823          	sd	a0,16(s1)
        instance->buffer_ = (T*)MemoryAllocator::getInstance()->mem_alloc(sizeof(T) * instance->size_);
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	3b4080e7          	jalr	948(ra) # 80002b4c <_ZN15MemoryAllocator11getInstanceEv>
    800027a0:	0204a583          	lw	a1,32(s1)
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	50c080e7          	jalr	1292(ra) # 80002cb0 <_ZN15MemoryAllocator9mem_allocEm>
    800027ac:	02a4b423          	sd	a0,40(s1)
    800027b0:	00009797          	auipc	a5,0x9
    800027b4:	3297b023          	sd	s1,800(a5) # 8000bad0 <_ZN8_console11buffer_out_E>
        debug_print("Buffers created\n");
    800027b8:	00007517          	auipc	a0,0x7
    800027bc:	c2850513          	addi	a0,a0,-984 # 800093e0 <_ZZ24debug_print_internal_intmE6digits+0x58>
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	d34080e7          	jalr	-716(ra) # 800024f4 <_Z11debug_printPKc>
    _console::_console_init();

    // We create threads directly through TCB because we do not yet have
    // interrupts enabled.
    debug_print("Creating main thread\n");
    800027c8:	00007517          	auipc	a0,0x7
    800027cc:	c3050513          	addi	a0,a0,-976 # 800093f8 <_ZZ24debug_print_internal_intmE6digits+0x70>
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	d24080e7          	jalr	-732(ra) # 800024f4 <_Z11debug_printPKc>
    main_handle = TCB::createThread(nullptr, nullptr);
    800027d8:	00000593          	li	a1,0
    800027dc:	00000513          	li	a0,0
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	150080e7          	jalr	336(ra) # 80002930 <_ZN3TCB12createThreadEPFvPvES0_>
    800027e8:	00050493          	mv	s1,a0
    debug_print("Main thread handle: \n");
    800027ec:	00007517          	auipc	a0,0x7
    800027f0:	c2450513          	addi	a0,a0,-988 # 80009410 <_ZZ24debug_print_internal_intmE6digits+0x88>
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	d00080e7          	jalr	-768(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print((uint64)main_handle);
    800027fc:	00048513          	mv	a0,s1
    80002800:	00000097          	auipc	ra,0x0
    80002804:	e3c080e7          	jalr	-452(ra) # 8000263c <_Z11debug_printm>
    debug_print("\n");
    80002808:	00007517          	auipc	a0,0x7
    8000280c:	2d050513          	addi	a0,a0,720 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80002810:	00000097          	auipc	ra,0x0
    80002814:	ce4080e7          	jalr	-796(ra) # 800024f4 <_Z11debug_printPKc>
    // userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    // debug_print("UserMain thread handle: \n");
    // debug_print((uint64)userMain_handle);
    // debug_print("\n");

    debug_print("Setting running to main thread\n");
    80002818:	00007517          	auipc	a0,0x7
    8000281c:	c1050513          	addi	a0,a0,-1008 # 80009428 <_ZZ24debug_print_internal_intmE6digits+0xa0>
    80002820:	00000097          	auipc	ra,0x0
    80002824:	cd4080e7          	jalr	-812(ra) # 800024f4 <_Z11debug_printPKc>
    TCB::running = main_handle;
    80002828:	00009797          	auipc	a5,0x9
    8000282c:	2a97b023          	sd	s1,672(a5) # 8000bac8 <_ZN3TCB7runningE>

    debug_print("Setting supervisor trap and enabling interrupts\n");
    80002830:	00007517          	auipc	a0,0x7
    80002834:	c1850513          	addi	a0,a0,-1000 # 80009448 <_ZZ24debug_print_internal_intmE6digits+0xc0>
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	cbc080e7          	jalr	-836(ra) # 800024f4 <_Z11debug_printPKc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002840:	ffffe797          	auipc	a5,0xffffe
    80002844:	7c078793          	addi	a5,a5,1984 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002848:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000284c:	00200793          	li	a5,2
    80002850:	1007a073          	csrs	sstatus,a5
    // instrukcija. Upisom 32-bitne vrednosti 0x5555 na adresu 0x100000 emulator RISC-V
    // procesora se zaustavlja. Na ovaj način je moguće zaustaviti proces emulatora nakon što završi
    // korisnički program.
    // exit();
    return 0;
}
    80002854:	00000513          	li	a0,0
    80002858:	02813083          	ld	ra,40(sp)
    8000285c:	02013403          	ld	s0,32(sp)
    80002860:	01813483          	ld	s1,24(sp)
    80002864:	01013903          	ld	s2,16(sp)
    80002868:	00813983          	ld	s3,8(sp)
    8000286c:	03010113          	addi	sp,sp,48
    80002870:	00008067          	ret

0000000080002874 <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    80002874:	fe010113          	addi	sp,sp,-32
    80002878:	00113c23          	sd	ra,24(sp)
    8000287c:	00813823          	sd	s0,16(sp)
    80002880:	00913423          	sd	s1,8(sp)
    80002884:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	46c080e7          	jalr	1132(ra) # 80001cf4 <_ZN5Riscv10popSppSpieEv>
    debug_print("TCB: Starting thread body: ");
    80002890:	00007517          	auipc	a0,0x7
    80002894:	bf050513          	addi	a0,a0,-1040 # 80009480 <_ZZ24debug_print_internal_intmE6digits+0xf8>
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	c5c080e7          	jalr	-932(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print((uint64)running->body);
    800028a0:	00009497          	auipc	s1,0x9
    800028a4:	22848493          	addi	s1,s1,552 # 8000bac8 <_ZN3TCB7runningE>
    800028a8:	0004b783          	ld	a5,0(s1)
    800028ac:	0007b503          	ld	a0,0(a5)
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	d8c080e7          	jalr	-628(ra) # 8000263c <_Z11debug_printm>
    debug_print(" for thread: ");
    800028b8:	00007517          	auipc	a0,0x7
    800028bc:	be850513          	addi	a0,a0,-1048 # 800094a0 <_ZZ24debug_print_internal_intmE6digits+0x118>
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	c34080e7          	jalr	-972(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print((uint64)running);
    800028c8:	0004b503          	ld	a0,0(s1)
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	d70080e7          	jalr	-656(ra) # 8000263c <_Z11debug_printm>
    debug_print(" and arg: ");
    800028d4:	00007517          	auipc	a0,0x7
    800028d8:	bdc50513          	addi	a0,a0,-1060 # 800094b0 <_ZZ24debug_print_internal_intmE6digits+0x128>
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	c18080e7          	jalr	-1000(ra) # 800024f4 <_Z11debug_printPKc>
    debug_print((uint64)running->arg_);
    800028e4:	0004b783          	ld	a5,0(s1)
    800028e8:	0087b503          	ld	a0,8(a5)
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	d50080e7          	jalr	-688(ra) # 8000263c <_Z11debug_printm>
    debug_print("\n");
    800028f4:	00007517          	auipc	a0,0x7
    800028f8:	1e450513          	addi	a0,a0,484 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	bf8080e7          	jalr	-1032(ra) # 800024f4 <_Z11debug_printPKc>
    
    running->body(running->arg_);
    80002904:	0004b783          	ld	a5,0(s1)
    80002908:	0007b703          	ld	a4,0(a5)
    8000290c:	0087b503          	ld	a0,8(a5)
    80002910:	000700e7          	jalr	a4
    thread_exit();
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	048080e7          	jalr	72(ra) # 8000195c <_Z11thread_exitv>
}
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	02010113          	addi	sp,sp,32
    8000292c:	00008067          	ret

0000000080002930 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80002930:	fd010113          	addi	sp,sp,-48
    80002934:	02113423          	sd	ra,40(sp)
    80002938:	02813023          	sd	s0,32(sp)
    8000293c:	00913c23          	sd	s1,24(sp)
    80002940:	01213823          	sd	s2,16(sp)
    80002944:	01313423          	sd	s3,8(sp)
    80002948:	03010413          	addi	s0,sp,48
    8000294c:	00050913          	mv	s2,a0
    80002950:	00058993          	mv	s3,a1
    debug_print("TCB: Creating TCB\n");
    80002954:	00007517          	auipc	a0,0x7
    80002958:	b6c50513          	addi	a0,a0,-1172 # 800094c0 <_ZZ24debug_print_internal_intmE6digits+0x138>
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	b98080e7          	jalr	-1128(ra) # 800024f4 <_Z11debug_printPKc>
    return new TCB(body, arg, TIME_SLICE);
    80002964:	03800513          	li	a0,56
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	a1c080e7          	jalr	-1508(ra) # 80002384 <_Znwm>
    80002970:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished_(false),
            blocked_(false),
            sleeping_(false)
    80002974:	01253023          	sd	s2,0(a0)
    80002978:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    8000297c:	00090a63          	beqz	s2,80002990 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    80002980:	00002537          	lui	a0,0x2
    80002984:	00000097          	auipc	ra,0x0
    80002988:	a40080e7          	jalr	-1472(ra) # 800023c4 <_Znam>
    8000298c:	0080006f          	j	80002994 <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    80002990:	00000513          	li	a0,0
            sleeping_(false)
    80002994:	00a4b823          	sd	a0,16(s1)
    80002998:	00000797          	auipc	a5,0x0
    8000299c:	edc78793          	addi	a5,a5,-292 # 80002874 <_ZN3TCB13threadWrapperEv>
    800029a0:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800029a4:	02050c63          	beqz	a0,800029dc <_ZN3TCB12createThreadEPFvPvES0_+0xac>
    800029a8:	000027b7          	lui	a5,0x2
    800029ac:	00f50533          	add	a0,a0,a5
            sleeping_(false)
    800029b0:	02a4b023          	sd	a0,32(s1)
    800029b4:	00200793          	li	a5,2
    800029b8:	02f4b423          	sd	a5,40(s1)
    800029bc:	02048823          	sb	zero,48(s1)
    800029c0:	020488a3          	sb	zero,49(s1)
    800029c4:	02048923          	sb	zero,50(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800029c8:	02090c63          	beqz	s2,80002a00 <_ZN3TCB12createThreadEPFvPvES0_+0xd0>
    800029cc:	00048513          	mv	a0,s1
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	828080e7          	jalr	-2008(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
    800029d8:	0280006f          	j	80002a00 <_ZN3TCB12createThreadEPFvPvES0_+0xd0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800029dc:	00000513          	li	a0,0
    800029e0:	fd1ff06f          	j	800029b0 <_ZN3TCB12createThreadEPFvPvES0_+0x80>
    800029e4:	00050913          	mv	s2,a0
    800029e8:	00048513          	mv	a0,s1
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	a18080e7          	jalr	-1512(ra) # 80002404 <_ZdlPv>
    800029f4:	00090513          	mv	a0,s2
    800029f8:	0000a097          	auipc	ra,0xa
    800029fc:	250080e7          	jalr	592(ra) # 8000cc48 <_Unwind_Resume>
}
    80002a00:	00048513          	mv	a0,s1
    80002a04:	02813083          	ld	ra,40(sp)
    80002a08:	02013403          	ld	s0,32(sp)
    80002a0c:	01813483          	ld	s1,24(sp)
    80002a10:	01013903          	ld	s2,16(sp)
    80002a14:	00813983          	ld	s3,8(sp)
    80002a18:	03010113          	addi	sp,sp,48
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN3TCB8dispatchEv>:
{
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002a34:	00009797          	auipc	a5,0x9
    80002a38:	09478793          	addi	a5,a5,148 # 8000bac8 <_ZN3TCB7runningE>
    80002a3c:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    80002a40:	0314c783          	lbu	a5,49(s1)
    if (!old->isBlocked() && !old->isFinished() && !old->isSleeping()) { 
    80002a44:	00079a63          	bnez	a5,80002a58 <_ZN3TCB8dispatchEv+0x38>
    bool isFinished() const { return finished_; }
    80002a48:	0304c783          	lbu	a5,48(s1)
    80002a4c:	00079663          	bnez	a5,80002a58 <_ZN3TCB8dispatchEv+0x38>
    bool isSleeping() { return sleeping_; }
    80002a50:	0324c783          	lbu	a5,50(s1)
    80002a54:	02078c63          	beqz	a5,80002a8c <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80002a58:	ffffe097          	auipc	ra,0xffffe
    80002a5c:	734080e7          	jalr	1844(ra) # 8000118c <_ZN9Scheduler3getEv>
    80002a60:	00009797          	auipc	a5,0x9
    80002a64:	06a7b423          	sd	a0,104(a5) # 8000bac8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002a68:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80002a6c:	01848513          	addi	a0,s1,24
    80002a70:	ffffe097          	auipc	ra,0xffffe
    80002a74:	6a0080e7          	jalr	1696(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002a78:	01813083          	ld	ra,24(sp)
    80002a7c:	01013403          	ld	s0,16(sp)
    80002a80:	00813483          	ld	s1,8(sp)
    80002a84:	02010113          	addi	sp,sp,32
    80002a88:	00008067          	ret
        Scheduler::put(old); 
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	ffffe097          	auipc	ra,0xffffe
    80002a94:	768080e7          	jalr	1896(ra) # 800011f8 <_ZN9Scheduler3putEP3TCB>
    80002a98:	fc1ff06f          	j	80002a58 <_ZN3TCB8dispatchEv+0x38>

0000000080002a9c <_ZN3TCB5yieldEv>:
{
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00113423          	sd	ra,8(sp)
    80002aa4:	00813023          	sd	s0,0(sp)
    80002aa8:	01010413          	addi	s0,sp,16
    dispatch();
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	f74080e7          	jalr	-140(ra) # 80002a20 <_ZN3TCB8dispatchEv>
}
    80002ab4:	00813083          	ld	ra,8(sp)
    80002ab8:	00013403          	ld	s0,0(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN3TCB4exitEv>:

void TCB::exit() {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	01213023          	sd	s2,0(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    80002adc:	00007517          	auipc	a0,0x7
    80002ae0:	9fc50513          	addi	a0,a0,-1540 # 800094d8 <_ZZ24debug_print_internal_intmE6digits+0x150>
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	a10080e7          	jalr	-1520(ra) # 800024f4 <_Z11debug_printPKc>
    TCB *old = running;
    80002aec:	00009497          	auipc	s1,0x9
    80002af0:	fdc48493          	addi	s1,s1,-36 # 8000bac8 <_ZN3TCB7runningE>
    80002af4:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    80002af8:	00100793          	li	a5,1
    80002afc:	02f90823          	sb	a5,48(s2)
    old->setFinished(true);
    running = Scheduler::get();
    80002b00:	ffffe097          	auipc	ra,0xffffe
    80002b04:	68c080e7          	jalr	1676(ra) # 8000118c <_ZN9Scheduler3getEv>
    80002b08:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    80002b0c:	00007597          	auipc	a1,0x7
    80002b10:	9e458593          	addi	a1,a1,-1564 # 800094f0 <_ZZ24debug_print_internal_intmE6digits+0x168>
    80002b14:	00a03533          	snez	a0,a0
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	a04080e7          	jalr	-1532(ra) # 8000251c <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    80002b20:	0004b583          	ld	a1,0(s1)
    80002b24:	01858593          	addi	a1,a1,24
    80002b28:	01890513          	addi	a0,s2,24
    80002b2c:	ffffe097          	auipc	ra,0xffffe
    80002b30:	5e4080e7          	jalr	1508(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80002b34:	01813083          	ld	ra,24(sp)
    80002b38:	01013403          	ld	s0,16(sp)
    80002b3c:	00813483          	ld	s1,8(sp)
    80002b40:	00013903          	ld	s2,0(sp)
    80002b44:	02010113          	addi	sp,sp,32
    80002b48:	00008067          	ret

0000000080002b4c <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    80002b4c:	00009797          	auipc	a5,0x9
    80002b50:	f9478793          	addi	a5,a5,-108 # 8000bae0 <_ZN15MemoryAllocator9instance_E>
    80002b54:	0007b783          	ld	a5,0(a5)
    80002b58:	00078a63          	beqz	a5,80002b6c <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    80002b5c:	00009797          	auipc	a5,0x9
    80002b60:	f8478793          	addi	a5,a5,-124 # 8000bae0 <_ZN15MemoryAllocator9instance_E>
    80002b64:	0007b503          	ld	a0,0(a5)
    80002b68:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80002b6c:	fd010113          	addi	sp,sp,-48
    80002b70:	02113423          	sd	ra,40(sp)
    80002b74:	02813023          	sd	s0,32(sp)
    80002b78:	00913c23          	sd	s1,24(sp)
    80002b7c:	01213823          	sd	s2,16(sp)
    80002b80:	01313423          	sd	s3,8(sp)
    80002b84:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002b88:	00009997          	auipc	s3,0x9
    80002b8c:	d7098993          	addi	s3,s3,-656 # 8000b8f8 <HEAP_START_ADDR>
    80002b90:	0009b783          	ld	a5,0(s3)
    80002b94:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80002b98:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002b9c:	00009497          	auipc	s1,0x9
    80002ba0:	f4448493          	addi	s1,s1,-188 # 8000bae0 <_ZN15MemoryAllocator9instance_E>
    80002ba4:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80002ba8:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    80002bac:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    80002bb0:	0004b783          	ld	a5,0(s1)
    80002bb4:	0007b783          	ld	a5,0(a5)
    80002bb8:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    80002bbc:	0004b783          	ld	a5,0(s1)
    80002bc0:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    80002bc4:	00009917          	auipc	s2,0x9
    80002bc8:	d2c90913          	addi	s2,s2,-724 # 8000b8f0 <HEAP_END_ADDR>
    80002bcc:	00093783          	ld	a5,0(s2)
    80002bd0:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    80002bd4:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80002bd8:	00007517          	auipc	a0,0x7
    80002bdc:	94850513          	addi	a0,a0,-1720 # 80009520 <_ZZ24debug_print_internal_intmE6digits+0x198>
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	914080e7          	jalr	-1772(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80002be8:	00007517          	auipc	a0,0x7
    80002bec:	96050513          	addi	a0,a0,-1696 # 80009548 <_ZZ24debug_print_internal_intmE6digits+0x1c0>
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	904080e7          	jalr	-1788(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80002bf8:	04000513          	li	a0,64
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	a40080e7          	jalr	-1472(ra) # 8000263c <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    80002c04:	00007517          	auipc	a0,0x7
    80002c08:	95c50513          	addi	a0,a0,-1700 # 80009560 <_ZZ24debug_print_internal_intmE6digits+0x1d8>
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	8e8080e7          	jalr	-1816(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    80002c14:	0009b503          	ld	a0,0(s3)
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	a24080e7          	jalr	-1500(ra) # 8000263c <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    80002c20:	00007517          	auipc	a0,0x7
    80002c24:	95850513          	addi	a0,a0,-1704 # 80009578 <_ZZ24debug_print_internal_intmE6digits+0x1f0>
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	8cc080e7          	jalr	-1844(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    80002c30:	00093503          	ld	a0,0(s2)
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	a08080e7          	jalr	-1528(ra) # 8000263c <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    80002c3c:	00007517          	auipc	a0,0x7
    80002c40:	95450513          	addi	a0,a0,-1708 # 80009590 <_ZZ24debug_print_internal_intmE6digits+0x208>
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	8b0080e7          	jalr	-1872(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    80002c4c:	0004b783          	ld	a5,0(s1)
    80002c50:	0007b503          	ld	a0,0(a5)
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	9e8080e7          	jalr	-1560(ra) # 8000263c <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    80002c5c:	00007517          	auipc	a0,0x7
    80002c60:	95450513          	addi	a0,a0,-1708 # 800095b0 <_ZZ24debug_print_internal_intmE6digits+0x228>
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	890080e7          	jalr	-1904(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    80002c6c:	01000513          	li	a0,16
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	9cc080e7          	jalr	-1588(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    80002c78:	00007517          	auipc	a0,0x7
    80002c7c:	e6050513          	addi	a0,a0,-416 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	874080e7          	jalr	-1932(ra) # 800024f4 <_Z11debug_printPKc>
}
    80002c88:	00009797          	auipc	a5,0x9
    80002c8c:	e5878793          	addi	a5,a5,-424 # 8000bae0 <_ZN15MemoryAllocator9instance_E>
    80002c90:	0007b503          	ld	a0,0(a5)
    80002c94:	02813083          	ld	ra,40(sp)
    80002c98:	02013403          	ld	s0,32(sp)
    80002c9c:	01813483          	ld	s1,24(sp)
    80002ca0:	01013903          	ld	s2,16(sp)
    80002ca4:	00813983          	ld	s3,8(sp)
    80002ca8:	03010113          	addi	sp,sp,48
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    80002cb0:	ff010113          	addi	sp,sp,-16
    80002cb4:	00813423          	sd	s0,8(sp)
    80002cb8:	01010413          	addi	s0,sp,16
    // debug_print("Allocating memory of size: ");
    // debug_print(size);
    // debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    80002cbc:	00053783          	ld	a5,0(a0)
    80002cc0:	04078e63          	beqz	a5,80002d1c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    80002cc4:	04f58593          	addi	a1,a1,79
    80002cc8:	fc05f593          	andi	a1,a1,-64

    // debug_print("Aligned size: ");
    // debug_print(size);
    // debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002ccc:	00000693          	li	a3,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002cd0:	00078c63          	beqz	a5,80002ce8 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    80002cd4:	0087b703          	ld	a4,8(a5)
    80002cd8:	00b77863          	bgeu	a4,a1,80002ce8 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        prev_free_block = free_block;
    80002cdc:	00078693          	mv	a3,a5
        free_block = free_block->next_;
    80002ce0:	0007b783          	ld	a5,0(a5)
    while (free_block && free_block->size_ < size) {
    80002ce4:	fedff06f          	j	80002cd0 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80002ce8:	02078a63          	beqz	a5,80002d1c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    80002cec:	0087b703          	ld	a4,8(a5)
    80002cf0:	04e5f263          	bgeu	a1,a4,80002d34 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    80002cf4:	00b78633          	add	a2,a5,a1
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80002cf8:	02068a63          	beqz	a3,80002d2c <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            prev_free_block->next_ = new_free_block;
    80002cfc:	00c6b023          	sd	a2,0(a3)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80002d00:	0007b703          	ld	a4,0(a5)
    80002d04:	00e63023          	sd	a4,0(a2)
        new_free_block->size_ = free_block->size_ - size;
    80002d08:	0087b703          	ld	a4,8(a5)
    80002d0c:	40b70733          	sub	a4,a4,a1
    80002d10:	00e63423          	sd	a4,8(a2)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    80002d14:	00b7b423          	sd	a1,8(a5)
        // debug_print("Free block address: ");
        // debug_print((uint64)free_block);
        // debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002d18:	01078793          	addi	a5,a5,16
}
    80002d1c:	00078513          	mv	a0,a5
    80002d20:	00813403          	ld	s0,8(sp)
    80002d24:	01010113          	addi	sp,sp,16
    80002d28:	00008067          	ret
            free_block_ptr_ = new_free_block;
    80002d2c:	00c53023          	sd	a2,0(a0)
    80002d30:	fd1ff06f          	j	80002d00 <_ZN15MemoryAllocator9mem_allocEm+0x50>
        if (prev_free_block) {
    80002d34:	00068863          	beqz	a3,80002d44 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            prev_free_block->next_ = free_block->next_;
    80002d38:	0007b703          	ld	a4,0(a5)
    80002d3c:	00e6b023          	sd	a4,0(a3)
    80002d40:	fd5ff06f          	j	80002d14 <_ZN15MemoryAllocator9mem_allocEm+0x64>
            free_block_ptr_ = free_block->next_;
    80002d44:	0007b703          	ld	a4,0(a5)
    80002d48:	00e53023          	sd	a4,0(a0)
    80002d4c:	fc9ff06f          	j	80002d14 <_ZN15MemoryAllocator9mem_allocEm+0x64>

0000000080002d50 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002d50:	ff010113          	addi	sp,sp,-16
    80002d54:	00813423          	sd	s0,8(sp)
    80002d58:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    80002d5c:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    80002d60:	00000513          	li	a0,0
    while (free_block_iter) {
    80002d64:	00078a63          	beqz	a5,80002d78 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    80002d68:	0087b703          	ld	a4,8(a5)
    80002d6c:	fee57ce3          	bgeu	a0,a4,80002d64 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    80002d70:	00070513          	mv	a0,a4
    80002d74:	ff1ff06f          	j	80002d64 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    80002d78:	00813403          	ld	s0,8(sp)
    80002d7c:	01010113          	addi	sp,sp,16
    80002d80:	00008067          	ret

0000000080002d84 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002d84:	ff010113          	addi	sp,sp,-16
    80002d88:	00813423          	sd	s0,8(sp)
    80002d8c:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    80002d90:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    80002d94:	00000513          	li	a0,0
    while (free_block_iter) {
    80002d98:	00078a63          	beqz	a5,80002dac <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    80002d9c:	0087b703          	ld	a4,8(a5)
    80002da0:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    80002da4:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    80002da8:	ff1ff06f          	j	80002d98 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    80002dac:	00813403          	ld	s0,8(sp)
    80002db0:	01010113          	addi	sp,sp,16
    80002db4:	00008067          	ret

0000000080002db8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    80002db8:	06058a63          	beqz	a1,80002e2c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    80002dbc:	06060863          	beqz	a2,80002e2c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    80002dc0:	fe010113          	addi	sp,sp,-32
    80002dc4:	00113c23          	sd	ra,24(sp)
    80002dc8:	00813823          	sd	s0,16(sp)
    80002dcc:	00913423          	sd	s1,8(sp)
    80002dd0:	01213023          	sd	s2,0(sp)
    80002dd4:	02010413          	addi	s0,sp,32
    80002dd8:	00060913          	mv	s2,a2
    80002ddc:	00058493          	mv	s1,a1
        // debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    80002de0:	00006597          	auipc	a1,0x6
    80002de4:	7f058593          	addi	a1,a1,2032 # 800095d0 <_ZZ24debug_print_internal_intmE6digits+0x248>
    80002de8:	00c4b533          	sltu	a0,s1,a2
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	730080e7          	jalr	1840(ra) # 8000251c <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    80002df4:	0084b783          	ld	a5,8(s1)
    80002df8:	00f48733          	add	a4,s1,a5
    80002dfc:	00e91c63          	bne	s2,a4,80002e14 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        // debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002e00:	00893703          	ld	a4,8(s2)
    80002e04:	00e787b3          	add	a5,a5,a4
    80002e08:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002e0c:	00093783          	ld	a5,0(s2)
    80002e10:	00f4b023          	sd	a5,0(s1)
    80002e14:	01813083          	ld	ra,24(sp)
    80002e18:	01013403          	ld	s0,16(sp)
    80002e1c:	00813483          	ld	s1,8(sp)
    80002e20:	00013903          	ld	s2,0(sp)
    80002e24:	02010113          	addi	sp,sp,32
    80002e28:	00008067          	ret
    80002e2c:	00008067          	ret

0000000080002e30 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    80002e30:	fd010113          	addi	sp,sp,-48
    80002e34:	02113423          	sd	ra,40(sp)
    80002e38:	02813023          	sd	s0,32(sp)
    80002e3c:	00913c23          	sd	s1,24(sp)
    80002e40:	01213823          	sd	s2,16(sp)
    80002e44:	01313423          	sd	s3,8(sp)
    80002e48:	03010413          	addi	s0,sp,48
    if (!free_block_addr) {
    80002e4c:	04058263          	beqz	a1,80002e90 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80002e50:	00050993          	mv	s3,a0
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    80002e54:	ff058913          	addi	s2,a1,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    80002e58:	00090793          	mv	a5,s2
    80002e5c:	03f97713          	andi	a4,s2,63
    80002e60:	04071463          	bnez	a4,80002ea8 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002e64:	00009717          	auipc	a4,0x9
    80002e68:	a9470713          	addi	a4,a4,-1388 # 8000b8f8 <HEAP_START_ADDR>
    80002e6c:	00073703          	ld	a4,0(a4)
    80002e70:	04e96863          	bltu	s2,a4,80002ec0 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    80002e74:	00009717          	auipc	a4,0x9
    80002e78:	a7c70713          	addi	a4,a4,-1412 # 8000b8f0 <HEAP_END_ADDR>
    80002e7c:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002e80:	04e97063          	bgeu	s2,a4,80002ec0 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    80002e84:	00053603          	ld	a2,0(a0)
    80002e88:	00000493          	li	s1,0
    80002e8c:	0540006f          	j	80002ee0 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        debug_print("Free block address is null.\n");
    80002e90:	00006517          	auipc	a0,0x6
    80002e94:	78050513          	addi	a0,a0,1920 # 80009610 <_ZZ24debug_print_internal_intmE6digits+0x288>
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	65c080e7          	jalr	1628(ra) # 800024f4 <_Z11debug_printPKc>
        return -1;
    80002ea0:	fff00513          	li	a0,-1
    80002ea4:	07c0006f          	j	80002f20 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    80002ea8:	00006517          	auipc	a0,0x6
    80002eac:	78850513          	addi	a0,a0,1928 # 80009630 <_ZZ24debug_print_internal_intmE6digits+0x2a8>
    80002eb0:	fffff097          	auipc	ra,0xfffff
    80002eb4:	644080e7          	jalr	1604(ra) # 800024f4 <_Z11debug_printPKc>
        return -2;
    80002eb8:	ffe00513          	li	a0,-2
    80002ebc:	0640006f          	j	80002f20 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not in the heap.\n");
    80002ec0:	00006517          	auipc	a0,0x6
    80002ec4:	7a850513          	addi	a0,a0,1960 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x2e0>
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	62c080e7          	jalr	1580(ra) # 800024f4 <_Z11debug_printPKc>
        return -3;
    80002ed0:	ffd00513          	li	a0,-3
    80002ed4:	04c0006f          	j	80002f20 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        prev_free_block = next_free_block;
    80002ed8:	00060493          	mv	s1,a2
        next_free_block = next_free_block->next_;
    80002edc:	00063603          	ld	a2,0(a2)
    while (next_free_block &&
    80002ee0:	00060663          	beqz	a2,80002eec <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002ee4:	fec7fae3          	bgeu	a5,a2,80002ed8 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
          !(((uint64)next_free_block > (uint64)block_info) &&
    80002ee8:	fef4f8e3          	bgeu	s1,a5,80002ed8 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if (!prev_free_block) {
    80002eec:	04048863          	beqz	s1,80002f3c <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        prev_free_block->next_ = block_info;
    80002ef0:	0124b023          	sd	s2,0(s1)
    block_info->next_ = next_free_block;
    80002ef4:	fec5b823          	sd	a2,-16(a1)
    maybe_consolidate(block_info, next_free_block);
    80002ef8:	00090593          	mv	a1,s2
    80002efc:	00098513          	mv	a0,s3
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	eb8080e7          	jalr	-328(ra) # 80002db8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80002f08:	00090613          	mv	a2,s2
    80002f0c:	00048593          	mv	a1,s1
    80002f10:	00098513          	mv	a0,s3
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	ea4080e7          	jalr	-348(ra) # 80002db8 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    80002f1c:	00000513          	li	a0,0
}
    80002f20:	02813083          	ld	ra,40(sp)
    80002f24:	02013403          	ld	s0,32(sp)
    80002f28:	01813483          	ld	s1,24(sp)
    80002f2c:	01013903          	ld	s2,16(sp)
    80002f30:	00813983          	ld	s3,8(sp)
    80002f34:	03010113          	addi	sp,sp,48
    80002f38:	00008067          	ret
        free_block_ptr_ = block_info;
    80002f3c:	0129b023          	sd	s2,0(s3)
    80002f40:	fb5ff06f          	j	80002ef4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>

0000000080002f44 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80002f44:	00100793          	li	a5,1
    80002f48:	06a7f863          	bgeu	a5,a0,80002fb8 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00113c23          	sd	ra,24(sp)
    80002f54:	00813823          	sd	s0,16(sp)
    80002f58:	00913423          	sd	s1,8(sp)
    80002f5c:	01213023          	sd	s2,0(sp)
    80002f60:	02010413          	addi	s0,sp,32
    80002f64:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80002f68:	00a00793          	li	a5,10
    80002f6c:	02f577b3          	remu	a5,a0,a5
    80002f70:	02078e63          	beqz	a5,80002fac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002f74:	fff48513          	addi	a0,s1,-1
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	fcc080e7          	jalr	-52(ra) # 80002f44 <_ZL9fibonaccim>
    80002f80:	00050913          	mv	s2,a0
    80002f84:	ffe48513          	addi	a0,s1,-2
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	fbc080e7          	jalr	-68(ra) # 80002f44 <_ZL9fibonaccim>
    80002f90:	00a90533          	add	a0,s2,a0
}
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	01013403          	ld	s0,16(sp)
    80002f9c:	00813483          	ld	s1,8(sp)
    80002fa0:	00013903          	ld	s2,0(sp)
    80002fa4:	02010113          	addi	sp,sp,32
    80002fa8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002fac:	fffff097          	auipc	ra,0xfffff
    80002fb0:	a10080e7          	jalr	-1520(ra) # 800019bc <_Z15thread_dispatchv>
    80002fb4:	fc1ff06f          	j	80002f74 <_ZL9fibonaccim+0x30>
}
    80002fb8:	00008067          	ret

0000000080002fbc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002fbc:	fe010113          	addi	sp,sp,-32
    80002fc0:	00113c23          	sd	ra,24(sp)
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	01213023          	sd	s2,0(sp)
    80002fd0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002fd4:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80002fd8:	00c00793          	li	a5,12
    80002fdc:	0497e263          	bltu	a5,s1,80003020 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80002fe0:	00006517          	auipc	a0,0x6
    80002fe4:	6b050513          	addi	a0,a0,1712 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x308>
    80002fe8:	00003097          	auipc	ra,0x3
    80002fec:	abc080e7          	jalr	-1348(ra) # 80005aa4 <_Z11printStringPKc>
    80002ff0:	00000613          	li	a2,0
    80002ff4:	00a00593          	li	a1,10
    80002ff8:	00048513          	mv	a0,s1
    80002ffc:	00003097          	auipc	ra,0x3
    80003000:	c54080e7          	jalr	-940(ra) # 80005c50 <_Z8printIntiii>
    80003004:	00007517          	auipc	a0,0x7
    80003008:	ad450513          	addi	a0,a0,-1324 # 80009ad8 <_ZTV8Consumer+0x2c8>
    8000300c:	00003097          	auipc	ra,0x3
    80003010:	a98080e7          	jalr	-1384(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003014:	0014849b          	addiw	s1,s1,1
    80003018:	0ff4f493          	andi	s1,s1,255
    8000301c:	fbdff06f          	j	80002fd8 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80003020:	00006517          	auipc	a0,0x6
    80003024:	67850513          	addi	a0,a0,1656 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80003028:	00003097          	auipc	ra,0x3
    8000302c:	a7c080e7          	jalr	-1412(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003030:	00500313          	li	t1,5
    thread_dispatch();
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	988080e7          	jalr	-1656(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000303c:	01000513          	li	a0,16
    80003040:	00000097          	auipc	ra,0x0
    80003044:	f04080e7          	jalr	-252(ra) # 80002f44 <_ZL9fibonaccim>
    80003048:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000304c:	00006517          	auipc	a0,0x6
    80003050:	65c50513          	addi	a0,a0,1628 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80003054:	00003097          	auipc	ra,0x3
    80003058:	a50080e7          	jalr	-1456(ra) # 80005aa4 <_Z11printStringPKc>
    8000305c:	00000613          	li	a2,0
    80003060:	00a00593          	li	a1,10
    80003064:	0009051b          	sext.w	a0,s2
    80003068:	00003097          	auipc	ra,0x3
    8000306c:	be8080e7          	jalr	-1048(ra) # 80005c50 <_Z8printIntiii>
    80003070:	00007517          	auipc	a0,0x7
    80003074:	a6850513          	addi	a0,a0,-1432 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80003078:	00003097          	auipc	ra,0x3
    8000307c:	a2c080e7          	jalr	-1492(ra) # 80005aa4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80003080:	00f00793          	li	a5,15
    80003084:	0497e263          	bltu	a5,s1,800030c8 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80003088:	00006517          	auipc	a0,0x6
    8000308c:	60850513          	addi	a0,a0,1544 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x308>
    80003090:	00003097          	auipc	ra,0x3
    80003094:	a14080e7          	jalr	-1516(ra) # 80005aa4 <_Z11printStringPKc>
    80003098:	00000613          	li	a2,0
    8000309c:	00a00593          	li	a1,10
    800030a0:	00048513          	mv	a0,s1
    800030a4:	00003097          	auipc	ra,0x3
    800030a8:	bac080e7          	jalr	-1108(ra) # 80005c50 <_Z8printIntiii>
    800030ac:	00007517          	auipc	a0,0x7
    800030b0:	a2c50513          	addi	a0,a0,-1492 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800030b4:	00003097          	auipc	ra,0x3
    800030b8:	9f0080e7          	jalr	-1552(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800030bc:	0014849b          	addiw	s1,s1,1
    800030c0:	0ff4f493          	andi	s1,s1,255
    800030c4:	fbdff06f          	j	80003080 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    800030c8:	00006517          	auipc	a0,0x6
    800030cc:	5f050513          	addi	a0,a0,1520 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x330>
    800030d0:	00003097          	auipc	ra,0x3
    800030d4:	9d4080e7          	jalr	-1580(ra) # 80005aa4 <_Z11printStringPKc>
    finishedD = true;
    800030d8:	00100793          	li	a5,1
    800030dc:	00009717          	auipc	a4,0x9
    800030e0:	a0f70623          	sb	a5,-1524(a4) # 8000bae8 <_ZL9finishedD>
    thread_dispatch();
    800030e4:	fffff097          	auipc	ra,0xfffff
    800030e8:	8d8080e7          	jalr	-1832(ra) # 800019bc <_Z15thread_dispatchv>
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	00013903          	ld	s2,0(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret

0000000080003104 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003104:	fe010113          	addi	sp,sp,-32
    80003108:	00113c23          	sd	ra,24(sp)
    8000310c:	00813823          	sd	s0,16(sp)
    80003110:	00913423          	sd	s1,8(sp)
    80003114:	01213023          	sd	s2,0(sp)
    80003118:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000311c:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80003120:	00200793          	li	a5,2
    80003124:	0497e263          	bltu	a5,s1,80003168 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80003128:	00006517          	auipc	a0,0x6
    8000312c:	5a050513          	addi	a0,a0,1440 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80003130:	00003097          	auipc	ra,0x3
    80003134:	974080e7          	jalr	-1676(ra) # 80005aa4 <_Z11printStringPKc>
    80003138:	00000613          	li	a2,0
    8000313c:	00a00593          	li	a1,10
    80003140:	00048513          	mv	a0,s1
    80003144:	00003097          	auipc	ra,0x3
    80003148:	b0c080e7          	jalr	-1268(ra) # 80005c50 <_Z8printIntiii>
    8000314c:	00007517          	auipc	a0,0x7
    80003150:	98c50513          	addi	a0,a0,-1652 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80003154:	00003097          	auipc	ra,0x3
    80003158:	950080e7          	jalr	-1712(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000315c:	0014849b          	addiw	s1,s1,1
    80003160:	0ff4f493          	andi	s1,s1,255
    80003164:	fbdff06f          	j	80003120 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80003168:	00006517          	auipc	a0,0x6
    8000316c:	56850513          	addi	a0,a0,1384 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x348>
    80003170:	00003097          	auipc	ra,0x3
    80003174:	934080e7          	jalr	-1740(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003178:	00700313          	li	t1,7
    thread_dispatch();
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	840080e7          	jalr	-1984(ra) # 800019bc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003184:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003188:	00006517          	auipc	a0,0x6
    8000318c:	55850513          	addi	a0,a0,1368 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x358>
    80003190:	00003097          	auipc	ra,0x3
    80003194:	914080e7          	jalr	-1772(ra) # 80005aa4 <_Z11printStringPKc>
    80003198:	00000613          	li	a2,0
    8000319c:	00a00593          	li	a1,10
    800031a0:	0009051b          	sext.w	a0,s2
    800031a4:	00003097          	auipc	ra,0x3
    800031a8:	aac080e7          	jalr	-1364(ra) # 80005c50 <_Z8printIntiii>
    800031ac:	00007517          	auipc	a0,0x7
    800031b0:	92c50513          	addi	a0,a0,-1748 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800031b4:	00003097          	auipc	ra,0x3
    800031b8:	8f0080e7          	jalr	-1808(ra) # 80005aa4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800031bc:	00c00513          	li	a0,12
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	d84080e7          	jalr	-636(ra) # 80002f44 <_ZL9fibonaccim>
    800031c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800031cc:	00006517          	auipc	a0,0x6
    800031d0:	51c50513          	addi	a0,a0,1308 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    800031d4:	00003097          	auipc	ra,0x3
    800031d8:	8d0080e7          	jalr	-1840(ra) # 80005aa4 <_Z11printStringPKc>
    800031dc:	00000613          	li	a2,0
    800031e0:	00a00593          	li	a1,10
    800031e4:	0009051b          	sext.w	a0,s2
    800031e8:	00003097          	auipc	ra,0x3
    800031ec:	a68080e7          	jalr	-1432(ra) # 80005c50 <_Z8printIntiii>
    800031f0:	00007517          	auipc	a0,0x7
    800031f4:	8e850513          	addi	a0,a0,-1816 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800031f8:	00003097          	auipc	ra,0x3
    800031fc:	8ac080e7          	jalr	-1876(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003200:	00500793          	li	a5,5
    80003204:	0497e263          	bltu	a5,s1,80003248 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80003208:	00006517          	auipc	a0,0x6
    8000320c:	4c050513          	addi	a0,a0,1216 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80003210:	00003097          	auipc	ra,0x3
    80003214:	894080e7          	jalr	-1900(ra) # 80005aa4 <_Z11printStringPKc>
    80003218:	00000613          	li	a2,0
    8000321c:	00a00593          	li	a1,10
    80003220:	00048513          	mv	a0,s1
    80003224:	00003097          	auipc	ra,0x3
    80003228:	a2c080e7          	jalr	-1492(ra) # 80005c50 <_Z8printIntiii>
    8000322c:	00007517          	auipc	a0,0x7
    80003230:	8ac50513          	addi	a0,a0,-1876 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80003234:	00003097          	auipc	ra,0x3
    80003238:	870080e7          	jalr	-1936(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000323c:	0014849b          	addiw	s1,s1,1
    80003240:	0ff4f493          	andi	s1,s1,255
    80003244:	fbdff06f          	j	80003200 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    80003248:	00006517          	auipc	a0,0x6
    8000324c:	4b050513          	addi	a0,a0,1200 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x370>
    80003250:	00003097          	auipc	ra,0x3
    80003254:	854080e7          	jalr	-1964(ra) # 80005aa4 <_Z11printStringPKc>
    finishedC = true;
    80003258:	00100793          	li	a5,1
    8000325c:	00009717          	auipc	a4,0x9
    80003260:	88f706a3          	sb	a5,-1907(a4) # 8000bae9 <_ZL9finishedC>
    thread_dispatch();
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	758080e7          	jalr	1880(ra) # 800019bc <_Z15thread_dispatchv>
}
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	00013903          	ld	s2,0(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret

0000000080003284 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	01213023          	sd	s2,0(sp)
    80003298:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000329c:	00000913          	li	s2,0
    800032a0:	0380006f          	j	800032d8 <_ZL11workerBodyBPv+0x54>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800032a4:	00178793          	addi	a5,a5,1
    800032a8:	01d00713          	li	a4,29
    800032ac:	fef77ce3          	bgeu	a4,a5,800032a4 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    800032b0:	ffffe097          	auipc	ra,0xffffe
    800032b4:	70c080e7          	jalr	1804(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    800032b8:	00148493          	addi	s1,s1,1
    800032bc:	00900793          	li	a5,9
    800032c0:	0097e663          	bltu	a5,s1,800032cc <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800032c4:	00000793          	li	a5,0
    800032c8:	fe1ff06f          	j	800032a8 <_ZL11workerBodyBPv+0x24>
        if (i == 10) {
    800032cc:	00a00793          	li	a5,10
    800032d0:	04f90663          	beq	s2,a5,8000331c <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    800032d4:	00190913          	addi	s2,s2,1
    800032d8:	00f00793          	li	a5,15
    800032dc:	0527e463          	bltu	a5,s2,80003324 <_ZL11workerBodyBPv+0xa0>
        printString("B: i="); printInt(i); printString("\n");
    800032e0:	00006517          	auipc	a0,0x6
    800032e4:	42850513          	addi	a0,a0,1064 # 80009708 <_ZZ24debug_print_internal_intmE6digits+0x380>
    800032e8:	00002097          	auipc	ra,0x2
    800032ec:	7bc080e7          	jalr	1980(ra) # 80005aa4 <_Z11printStringPKc>
    800032f0:	00000613          	li	a2,0
    800032f4:	00a00593          	li	a1,10
    800032f8:	0009051b          	sext.w	a0,s2
    800032fc:	00003097          	auipc	ra,0x3
    80003300:	954080e7          	jalr	-1708(ra) # 80005c50 <_Z8printIntiii>
    80003304:	00006517          	auipc	a0,0x6
    80003308:	7d450513          	addi	a0,a0,2004 # 80009ad8 <_ZTV8Consumer+0x2c8>
    8000330c:	00002097          	auipc	ra,0x2
    80003310:	798080e7          	jalr	1944(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003314:	00000493          	li	s1,0
    80003318:	fa5ff06f          	j	800032bc <_ZL11workerBodyBPv+0x38>
            asm volatile("csrr t6, sepc");
    8000331c:	14102ff3          	csrr	t6,sepc
    80003320:	fb5ff06f          	j	800032d4 <_ZL11workerBodyBPv+0x50>
    printString("B finished!\n");
    80003324:	00006517          	auipc	a0,0x6
    80003328:	3ec50513          	addi	a0,a0,1004 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x388>
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	778080e7          	jalr	1912(ra) # 80005aa4 <_Z11printStringPKc>
    finishedB = true;
    80003334:	00100793          	li	a5,1
    80003338:	00008717          	auipc	a4,0x8
    8000333c:	7af70923          	sb	a5,1970(a4) # 8000baea <_ZL9finishedB>
    thread_dispatch();
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	67c080e7          	jalr	1660(ra) # 800019bc <_Z15thread_dispatchv>
}
    80003348:	01813083          	ld	ra,24(sp)
    8000334c:	01013403          	ld	s0,16(sp)
    80003350:	00813483          	ld	s1,8(sp)
    80003354:	00013903          	ld	s2,0(sp)
    80003358:	02010113          	addi	sp,sp,32
    8000335c:	00008067          	ret

0000000080003360 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	01213023          	sd	s2,0(sp)
    80003374:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003378:	00000913          	li	s2,0
    8000337c:	0300006f          	j	800033ac <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003380:	00178793          	addi	a5,a5,1
    80003384:	01d00713          	li	a4,29
    80003388:	fef77ce3          	bgeu	a4,a5,80003380 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	630080e7          	jalr	1584(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003394:	00148493          	addi	s1,s1,1
    80003398:	00900793          	li	a5,9
    8000339c:	0097e663          	bltu	a5,s1,800033a8 <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800033a0:	00000793          	li	a5,0
    800033a4:	fe1ff06f          	j	80003384 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    800033a8:	00190913          	addi	s2,s2,1
    800033ac:	00900793          	li	a5,9
    800033b0:	0527e063          	bltu	a5,s2,800033f0 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    800033b4:	00006517          	auipc	a0,0x6
    800033b8:	36c50513          	addi	a0,a0,876 # 80009720 <_ZZ24debug_print_internal_intmE6digits+0x398>
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	6e8080e7          	jalr	1768(ra) # 80005aa4 <_Z11printStringPKc>
    800033c4:	00000613          	li	a2,0
    800033c8:	00a00593          	li	a1,10
    800033cc:	0009051b          	sext.w	a0,s2
    800033d0:	00003097          	auipc	ra,0x3
    800033d4:	880080e7          	jalr	-1920(ra) # 80005c50 <_Z8printIntiii>
    800033d8:	00006517          	auipc	a0,0x6
    800033dc:	70050513          	addi	a0,a0,1792 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800033e0:	00002097          	auipc	ra,0x2
    800033e4:	6c4080e7          	jalr	1732(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    800033e8:	00000493          	li	s1,0
    800033ec:	fadff06f          	j	80003398 <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	30850513          	addi	a0,a0,776 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x370>
    800033f8:	00002097          	auipc	ra,0x2
    800033fc:	6ac080e7          	jalr	1708(ra) # 80005aa4 <_Z11printStringPKc>
    finishedA = true;
    80003400:	00100793          	li	a5,1
    80003404:	00008717          	auipc	a4,0x8
    80003408:	6ef703a3          	sb	a5,1767(a4) # 8000baeb <_ZL9finishedA>
}
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	00013903          	ld	s2,0(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003424:	fd010113          	addi	sp,sp,-48
    80003428:	02113423          	sd	ra,40(sp)
    8000342c:	02813023          	sd	s0,32(sp)
    80003430:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003434:	00000613          	li	a2,0
    80003438:	00000597          	auipc	a1,0x0
    8000343c:	f2858593          	addi	a1,a1,-216 # 80003360 <_ZL11workerBodyAPv>
    80003440:	fd040513          	addi	a0,s0,-48
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	4c8080e7          	jalr	1224(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	2dc50513          	addi	a0,a0,732 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	650080e7          	jalr	1616(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000345c:	00000613          	li	a2,0
    80003460:	00000597          	auipc	a1,0x0
    80003464:	e2458593          	addi	a1,a1,-476 # 80003284 <_ZL11workerBodyBPv>
    80003468:	fd840513          	addi	a0,s0,-40
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	4a0080e7          	jalr	1184(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003474:	00006517          	auipc	a0,0x6
    80003478:	2cc50513          	addi	a0,a0,716 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	628080e7          	jalr	1576(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003484:	00000613          	li	a2,0
    80003488:	00000597          	auipc	a1,0x0
    8000348c:	c7c58593          	addi	a1,a1,-900 # 80003104 <_ZL11workerBodyCPv>
    80003490:	fe040513          	addi	a0,s0,-32
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	478080e7          	jalr	1144(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000349c:	00006517          	auipc	a0,0x6
    800034a0:	2bc50513          	addi	a0,a0,700 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x3d0>
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	600080e7          	jalr	1536(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800034ac:	00000613          	li	a2,0
    800034b0:	00000597          	auipc	a1,0x0
    800034b4:	b0c58593          	addi	a1,a1,-1268 # 80002fbc <_ZL11workerBodyDPv>
    800034b8:	fe840513          	addi	a0,s0,-24
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	450080e7          	jalr	1104(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800034c4:	00006517          	auipc	a0,0x6
    800034c8:	2ac50513          	addi	a0,a0,684 # 80009770 <_ZZ24debug_print_internal_intmE6digits+0x3e8>
    800034cc:	00002097          	auipc	ra,0x2
    800034d0:	5d8080e7          	jalr	1496(ra) # 80005aa4 <_Z11printStringPKc>
    800034d4:	00c0006f          	j	800034e0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	4e4080e7          	jalr	1252(ra) # 800019bc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800034e0:	00008797          	auipc	a5,0x8
    800034e4:	60b78793          	addi	a5,a5,1547 # 8000baeb <_ZL9finishedA>
    800034e8:	0007c783          	lbu	a5,0(a5)
    800034ec:	0ff7f793          	andi	a5,a5,255
    800034f0:	fe0784e3          	beqz	a5,800034d8 <_Z16System_Mode_testv+0xb4>
    800034f4:	00008797          	auipc	a5,0x8
    800034f8:	5f678793          	addi	a5,a5,1526 # 8000baea <_ZL9finishedB>
    800034fc:	0007c783          	lbu	a5,0(a5)
    80003500:	0ff7f793          	andi	a5,a5,255
    80003504:	fc078ae3          	beqz	a5,800034d8 <_Z16System_Mode_testv+0xb4>
    80003508:	00008797          	auipc	a5,0x8
    8000350c:	5e178793          	addi	a5,a5,1505 # 8000bae9 <_ZL9finishedC>
    80003510:	0007c783          	lbu	a5,0(a5)
    80003514:	0ff7f793          	andi	a5,a5,255
    80003518:	fc0780e3          	beqz	a5,800034d8 <_Z16System_Mode_testv+0xb4>
    8000351c:	00008797          	auipc	a5,0x8
    80003520:	5cc78793          	addi	a5,a5,1484 # 8000bae8 <_ZL9finishedD>
    80003524:	0007c783          	lbu	a5,0(a5)
    80003528:	0ff7f793          	andi	a5,a5,255
    8000352c:	fa0786e3          	beqz	a5,800034d8 <_Z16System_Mode_testv+0xb4>
    }

}
    80003530:	02813083          	ld	ra,40(sp)
    80003534:	02013403          	ld	s0,32(sp)
    80003538:	03010113          	addi	sp,sp,48
    8000353c:	00008067          	ret

0000000080003540 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003540:	fe010113          	addi	sp,sp,-32
    80003544:	00113c23          	sd	ra,24(sp)
    80003548:	00813823          	sd	s0,16(sp)
    8000354c:	00913423          	sd	s1,8(sp)
    80003550:	01213023          	sd	s2,0(sp)
    80003554:	02010413          	addi	s0,sp,32
    80003558:	00050493          	mv	s1,a0
    8000355c:	00058913          	mv	s2,a1
    80003560:	0015879b          	addiw	a5,a1,1
    80003564:	0007851b          	sext.w	a0,a5
    80003568:	00f4a023          	sw	a5,0(s1)
    8000356c:	0004a823          	sw	zero,16(s1)
    80003570:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003574:	00251513          	slli	a0,a0,0x2
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	208080e7          	jalr	520(ra) # 80001780 <_Z9mem_allocm>
    80003580:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003584:	00000593          	li	a1,0
    80003588:	02048513          	addi	a0,s1,32
    8000358c:	ffffe097          	auipc	ra,0xffffe
    80003590:	47c080e7          	jalr	1148(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003594:	00090593          	mv	a1,s2
    80003598:	01848513          	addi	a0,s1,24
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	46c080e7          	jalr	1132(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    800035a4:	00100593          	li	a1,1
    800035a8:	02848513          	addi	a0,s1,40
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	45c080e7          	jalr	1116(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    800035b4:	00100593          	li	a1,1
    800035b8:	03048513          	addi	a0,s1,48
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	44c080e7          	jalr	1100(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
}
    800035c4:	01813083          	ld	ra,24(sp)
    800035c8:	01013403          	ld	s0,16(sp)
    800035cc:	00813483          	ld	s1,8(sp)
    800035d0:	00013903          	ld	s2,0(sp)
    800035d4:	02010113          	addi	sp,sp,32
    800035d8:	00008067          	ret

00000000800035dc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800035dc:	fe010113          	addi	sp,sp,-32
    800035e0:	00113c23          	sd	ra,24(sp)
    800035e4:	00813823          	sd	s0,16(sp)
    800035e8:	00913423          	sd	s1,8(sp)
    800035ec:	01213023          	sd	s2,0(sp)
    800035f0:	02010413          	addi	s0,sp,32
    800035f4:	00050493          	mv	s1,a0
    800035f8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800035fc:	01853503          	ld	a0,24(a0)
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	54c080e7          	jalr	1356(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80003608:	0304b503          	ld	a0,48(s1)
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	540080e7          	jalr	1344(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80003614:	0084b783          	ld	a5,8(s1)
    80003618:	0144a703          	lw	a4,20(s1)
    8000361c:	00271713          	slli	a4,a4,0x2
    80003620:	00e787b3          	add	a5,a5,a4
    80003624:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003628:	0144a783          	lw	a5,20(s1)
    8000362c:	0017879b          	addiw	a5,a5,1
    80003630:	0004a703          	lw	a4,0(s1)
    80003634:	02e7e7bb          	remw	a5,a5,a4
    80003638:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000363c:	0304b503          	ld	a0,48(s1)
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	55c080e7          	jalr	1372(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80003648:	0204b503          	ld	a0,32(s1)
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	550080e7          	jalr	1360(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

}
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	00013903          	ld	s2,0(sp)
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00008067          	ret

000000008000366c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000366c:	fe010113          	addi	sp,sp,-32
    80003670:	00113c23          	sd	ra,24(sp)
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00913423          	sd	s1,8(sp)
    8000367c:	01213023          	sd	s2,0(sp)
    80003680:	02010413          	addi	s0,sp,32
    80003684:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003688:	02053503          	ld	a0,32(a0)
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	4c0080e7          	jalr	1216(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    80003694:	0284b503          	ld	a0,40(s1)
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	4b4080e7          	jalr	1204(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    800036a0:	0084b703          	ld	a4,8(s1)
    800036a4:	0104a783          	lw	a5,16(s1)
    800036a8:	00279693          	slli	a3,a5,0x2
    800036ac:	00d70733          	add	a4,a4,a3
    800036b0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800036b4:	0017879b          	addiw	a5,a5,1
    800036b8:	0004a703          	lw	a4,0(s1)
    800036bc:	02e7e7bb          	remw	a5,a5,a4
    800036c0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800036c4:	0284b503          	ld	a0,40(s1)
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	4d4080e7          	jalr	1236(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    800036d0:	0184b503          	ld	a0,24(s1)
    800036d4:	ffffe097          	auipc	ra,0xffffe
    800036d8:	4c8080e7          	jalr	1224(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    800036dc:	00090513          	mv	a0,s2
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	00013903          	ld	s2,0(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret

00000000800036f8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	01213023          	sd	s2,0(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003714:	02853503          	ld	a0,40(a0)
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	434080e7          	jalr	1076(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80003720:	0304b503          	ld	a0,48(s1)
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	428080e7          	jalr	1064(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    8000372c:	0144a783          	lw	a5,20(s1)
    80003730:	0104a903          	lw	s2,16(s1)
    80003734:	0327ce63          	blt	a5,s2,80003770 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003738:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000373c:	0304b503          	ld	a0,48(s1)
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	45c080e7          	jalr	1116(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    80003748:	0284b503          	ld	a0,40(s1)
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	450080e7          	jalr	1104(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    80003754:	00090513          	mv	a0,s2
    80003758:	01813083          	ld	ra,24(sp)
    8000375c:	01013403          	ld	s0,16(sp)
    80003760:	00813483          	ld	s1,8(sp)
    80003764:	00013903          	ld	s2,0(sp)
    80003768:	02010113          	addi	sp,sp,32
    8000376c:	00008067          	ret
        ret = cap - head + tail;
    80003770:	0004a703          	lw	a4,0(s1)
    80003774:	4127093b          	subw	s2,a4,s2
    80003778:	00f9093b          	addw	s2,s2,a5
    8000377c:	fc1ff06f          	j	8000373c <_ZN6Buffer6getCntEv+0x44>

0000000080003780 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003780:	fe010113          	addi	sp,sp,-32
    80003784:	00113c23          	sd	ra,24(sp)
    80003788:	00813823          	sd	s0,16(sp)
    8000378c:	00913423          	sd	s1,8(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	00050493          	mv	s1,a0
    putc('\n');
    80003798:	00a00513          	li	a0,10
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	4f0080e7          	jalr	1264(ra) # 80001c8c <_Z4putcc>
    printString("Buffer deleted!\n");
    800037a4:	00006517          	auipc	a0,0x6
    800037a8:	fe450513          	addi	a0,a0,-28 # 80009788 <_ZZ24debug_print_internal_intmE6digits+0x400>
    800037ac:	00002097          	auipc	ra,0x2
    800037b0:	2f8080e7          	jalr	760(ra) # 80005aa4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800037b4:	00048513          	mv	a0,s1
    800037b8:	00000097          	auipc	ra,0x0
    800037bc:	f40080e7          	jalr	-192(ra) # 800036f8 <_ZN6Buffer6getCntEv>
    800037c0:	02a05c63          	blez	a0,800037f8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800037c4:	0084b783          	ld	a5,8(s1)
    800037c8:	0104a703          	lw	a4,16(s1)
    800037cc:	00271713          	slli	a4,a4,0x2
    800037d0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800037d4:	0007c503          	lbu	a0,0(a5)
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	4b4080e7          	jalr	1204(ra) # 80001c8c <_Z4putcc>
        head = (head + 1) % cap;
    800037e0:	0104a783          	lw	a5,16(s1)
    800037e4:	0017879b          	addiw	a5,a5,1
    800037e8:	0004a703          	lw	a4,0(s1)
    800037ec:	02e7e7bb          	remw	a5,a5,a4
    800037f0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800037f4:	fc1ff06f          	j	800037b4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800037f8:	02100513          	li	a0,33
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	490080e7          	jalr	1168(ra) # 80001c8c <_Z4putcc>
    putc('\n');
    80003804:	00a00513          	li	a0,10
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	484080e7          	jalr	1156(ra) # 80001c8c <_Z4putcc>
    mem_free(buffer);
    80003810:	0084b503          	ld	a0,8(s1)
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	fd4080e7          	jalr	-44(ra) # 800017e8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000381c:	0204b503          	ld	a0,32(s1)
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	2c0080e7          	jalr	704(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    80003828:	0184b503          	ld	a0,24(s1)
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	2b4080e7          	jalr	692(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    80003834:	0304b503          	ld	a0,48(s1)
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	2a8080e7          	jalr	680(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    80003840:	0284b503          	ld	a0,40(s1)
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	29c080e7          	jalr	668(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
}
    8000384c:	01813083          	ld	ra,24(sp)
    80003850:	01013403          	ld	s0,16(sp)
    80003854:	00813483          	ld	s1,8(sp)
    80003858:	02010113          	addi	sp,sp,32
    8000385c:	00008067          	ret

0000000080003860 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003860:	f8010113          	addi	sp,sp,-128
    80003864:	06113c23          	sd	ra,120(sp)
    80003868:	06813823          	sd	s0,112(sp)
    8000386c:	06913423          	sd	s1,104(sp)
    80003870:	07213023          	sd	s2,96(sp)
    80003874:	05313c23          	sd	s3,88(sp)
    80003878:	05413823          	sd	s4,80(sp)
    8000387c:	05513423          	sd	s5,72(sp)
    80003880:	05613023          	sd	s6,64(sp)
    80003884:	03713c23          	sd	s7,56(sp)
    80003888:	03813823          	sd	s8,48(sp)
    8000388c:	03913423          	sd	s9,40(sp)
    80003890:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003894:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003898:	00006517          	auipc	a0,0x6
    8000389c:	fa050513          	addi	a0,a0,-96 # 80009838 <_ZTV8Consumer+0x28>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	204080e7          	jalr	516(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    800038a8:	01e00593          	li	a1,30
    800038ac:	f8040513          	addi	a0,s0,-128
    800038b0:	00002097          	auipc	ra,0x2
    800038b4:	27c080e7          	jalr	636(ra) # 80005b2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800038b8:	f8040513          	addi	a0,s0,-128
    800038bc:	00002097          	auipc	ra,0x2
    800038c0:	344080e7          	jalr	836(ra) # 80005c00 <_Z11stringToIntPKc>
    800038c4:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    800038c8:	00006517          	auipc	a0,0x6
    800038cc:	f9050513          	addi	a0,a0,-112 # 80009858 <_ZTV8Consumer+0x48>
    800038d0:	00002097          	auipc	ra,0x2
    800038d4:	1d4080e7          	jalr	468(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    800038d8:	01e00593          	li	a1,30
    800038dc:	f8040513          	addi	a0,s0,-128
    800038e0:	00002097          	auipc	ra,0x2
    800038e4:	24c080e7          	jalr	588(ra) # 80005b2c <_Z9getStringPci>
    n = stringToInt(input);
    800038e8:	f8040513          	addi	a0,s0,-128
    800038ec:	00002097          	auipc	ra,0x2
    800038f0:	314080e7          	jalr	788(ra) # 80005c00 <_Z11stringToIntPKc>
    800038f4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800038f8:	00006517          	auipc	a0,0x6
    800038fc:	f8050513          	addi	a0,a0,-128 # 80009878 <_ZTV8Consumer+0x68>
    80003900:	00002097          	auipc	ra,0x2
    80003904:	1a4080e7          	jalr	420(ra) # 80005aa4 <_Z11printStringPKc>
    printInt(threadNum);
    80003908:	00000613          	li	a2,0
    8000390c:	00a00593          	li	a1,10
    80003910:	000a0513          	mv	a0,s4
    80003914:	00002097          	auipc	ra,0x2
    80003918:	33c080e7          	jalr	828(ra) # 80005c50 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000391c:	00006517          	auipc	a0,0x6
    80003920:	f7450513          	addi	a0,a0,-140 # 80009890 <_ZTV8Consumer+0x80>
    80003924:	00002097          	auipc	ra,0x2
    80003928:	180080e7          	jalr	384(ra) # 80005aa4 <_Z11printStringPKc>
    printInt(n);
    8000392c:	00000613          	li	a2,0
    80003930:	00a00593          	li	a1,10
    80003934:	00048513          	mv	a0,s1
    80003938:	00002097          	auipc	ra,0x2
    8000393c:	318080e7          	jalr	792(ra) # 80005c50 <_Z8printIntiii>
    printString(".\n");
    80003940:	00006517          	auipc	a0,0x6
    80003944:	f6850513          	addi	a0,a0,-152 # 800098a8 <_ZTV8Consumer+0x98>
    80003948:	00002097          	auipc	ra,0x2
    8000394c:	15c080e7          	jalr	348(ra) # 80005aa4 <_Z11printStringPKc>
    if (threadNum > n) {
    80003950:	0344c463          	blt	s1,s4,80003978 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    80003954:	03405c63          	blez	s4,8000398c <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80003958:	03800513          	li	a0,56
    8000395c:	fffff097          	auipc	ra,0xfffff
    80003960:	a28080e7          	jalr	-1496(ra) # 80002384 <_Znwm>
    80003964:	00050b13          	mv	s6,a0
    80003968:	00048593          	mv	a1,s1
    8000396c:	00003097          	auipc	ra,0x3
    80003970:	928080e7          	jalr	-1752(ra) # 80006294 <_ZN9BufferCPPC1Ei>
    80003974:	0300006f          	j	800039a4 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003978:	00006517          	auipc	a0,0x6
    8000397c:	f3850513          	addi	a0,a0,-200 # 800098b0 <_ZTV8Consumer+0xa0>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	124080e7          	jalr	292(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    80003988:	0140006f          	j	8000399c <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000398c:	00006517          	auipc	a0,0x6
    80003990:	f6450513          	addi	a0,a0,-156 # 800098f0 <_ZTV8Consumer+0xe0>
    80003994:	00002097          	auipc	ra,0x2
    80003998:	110080e7          	jalr	272(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    8000399c:	000c0113          	mv	sp,s8
    800039a0:	37c0006f          	j	80003d1c <_Z20testConsumerProducerv+0x4bc>
    waitForAll = new Semaphore(0);
    800039a4:	01000513          	li	a0,16
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	9dc080e7          	jalr	-1572(ra) # 80002384 <_Znwm>
    800039b0:	00050913          	mv	s2,a0
    void* arg;
};

class Semaphore {
    public:
    Semaphore(unsigned init = 1) {
    800039b4:	00006797          	auipc	a5,0x6
    800039b8:	dfc78793          	addi	a5,a5,-516 # 800097b0 <_ZTV9Semaphore+0x10>
    800039bc:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800039c0:	00000593          	li	a1,0
    800039c4:	00850513          	addi	a0,a0,8
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	040080e7          	jalr	64(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    800039d0:	00050463          	beqz	a0,800039d8 <_Z20testConsumerProducerv+0x178>
            myHandle = nullptr;
    800039d4:	00093423          	sd	zero,8(s2)
    800039d8:	00008797          	auipc	a5,0x8
    800039dc:	1327b023          	sd	s2,288(a5) # 8000baf8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800039e0:	003a1793          	slli	a5,s4,0x3
    800039e4:	00f78793          	addi	a5,a5,15
    800039e8:	ff07f793          	andi	a5,a5,-16
    800039ec:	40f10133          	sub	sp,sp,a5
    800039f0:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    800039f4:	001a079b          	addiw	a5,s4,1
    800039f8:	00179713          	slli	a4,a5,0x1
    800039fc:	00f70733          	add	a4,a4,a5
    80003a00:	00371793          	slli	a5,a4,0x3
    80003a04:	00f78793          	addi	a5,a5,15
    80003a08:	ff07f793          	andi	a5,a5,-16
    80003a0c:	40f10133          	sub	sp,sp,a5
    80003a10:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    80003a14:	001a1793          	slli	a5,s4,0x1
    80003a18:	014787b3          	add	a5,a5,s4
    80003a1c:	00379493          	slli	s1,a5,0x3
    80003a20:	009c84b3          	add	s1,s9,s1
    80003a24:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    80003a28:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003a2c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003a30:	02800513          	li	a0,40
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	950080e7          	jalr	-1712(ra) # 80002384 <_Znwm>
    80003a3c:	00050b93          	mv	s7,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003a40:	00053423          	sd	zero,8(a0)
    80003a44:	00053823          	sd	zero,16(a0)
    80003a48:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003a4c:	00006797          	auipc	a5,0x6
    80003a50:	dd478793          	addi	a5,a5,-556 # 80009820 <_ZTV8Consumer+0x10>
    80003a54:	00f53023          	sd	a5,0(a0)
    80003a58:	02953023          	sd	s1,32(a0)
        debug_print("CPP API: Starting thread\n");
    80003a5c:	00006517          	auipc	a0,0x6
    80003a60:	ec450513          	addi	a0,a0,-316 # 80009920 <_ZTV8Consumer+0x110>
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	a90080e7          	jalr	-1392(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	ed450513          	addi	a0,a0,-300 # 80009940 <_ZTV8Consumer+0x130>
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	a80080e7          	jalr	-1408(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003a7c:	000b8513          	mv	a0,s7
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	bbc080e7          	jalr	-1092(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    80003a88:	00006517          	auipc	a0,0x6
    80003a8c:	05050513          	addi	a0,a0,80 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	a64080e7          	jalr	-1436(ra) # 800024f4 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003a98:	000b8613          	mv	a2,s7
    80003a9c:	ffffe597          	auipc	a1,0xffffe
    80003aa0:	a3458593          	addi	a1,a1,-1484 # 800014d0 <_ZN6Thread9body_execEPv>
    80003aa4:	008b8513          	addi	a0,s7,8
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	e64080e7          	jalr	-412(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80003ab0:	0c051663          	bnez	a0,80003b7c <_Z20testConsumerProducerv+0x31c>
        debug_print("CPP API: Thread started\n");
    80003ab4:	00006517          	auipc	a0,0x6
    80003ab8:	ea450513          	addi	a0,a0,-348 # 80009958 <_ZTV8Consumer+0x148>
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	a38080e7          	jalr	-1480(ra) # 800024f4 <_Z11debug_printPKc>
    threadData[0].id = 0;
    80003ac4:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    80003ac8:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    80003acc:	00008797          	auipc	a5,0x8
    80003ad0:	02c78793          	addi	a5,a5,44 # 8000baf8 <_ZL10waitForAll>
    80003ad4:	0007b783          	ld	a5,0(a5)
    80003ad8:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003adc:	02800513          	li	a0,40
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	8a4080e7          	jalr	-1884(ra) # 80002384 <_Znwm>
    80003ae8:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003aec:	00053423          	sd	zero,8(a0)
    80003af0:	00053823          	sd	zero,16(a0)
    80003af4:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003af8:	00006797          	auipc	a5,0x6
    80003afc:	cd878793          	addi	a5,a5,-808 # 800097d0 <_ZTV16ProducerKeyborad+0x10>
    80003b00:	00f53023          	sd	a5,0(a0)
    80003b04:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003b08:	00aab023          	sd	a0,0(s5)
        debug_print("CPP API: Starting thread\n");
    80003b0c:	00006517          	auipc	a0,0x6
    80003b10:	e1450513          	addi	a0,a0,-492 # 80009920 <_ZTV8Consumer+0x110>
    80003b14:	fffff097          	auipc	ra,0xfffff
    80003b18:	9e0080e7          	jalr	-1568(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003b1c:	00006517          	auipc	a0,0x6
    80003b20:	e2450513          	addi	a0,a0,-476 # 80009940 <_ZTV8Consumer+0x130>
    80003b24:	fffff097          	auipc	ra,0xfffff
    80003b28:	9d0080e7          	jalr	-1584(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	b0c080e7          	jalr	-1268(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    80003b38:	00006517          	auipc	a0,0x6
    80003b3c:	fa050513          	addi	a0,a0,-96 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	9b4080e7          	jalr	-1612(ra) # 800024f4 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003b48:	00048613          	mv	a2,s1
    80003b4c:	ffffe597          	auipc	a1,0xffffe
    80003b50:	98458593          	addi	a1,a1,-1660 # 800014d0 <_ZN6Thread9body_execEPv>
    80003b54:	00848513          	addi	a0,s1,8
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	db4080e7          	jalr	-588(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80003b60:	02051263          	bnez	a0,80003b84 <_Z20testConsumerProducerv+0x324>
        debug_print("CPP API: Thread started\n");
    80003b64:	00006517          	auipc	a0,0x6
    80003b68:	df450513          	addi	a0,a0,-524 # 80009958 <_ZTV8Consumer+0x148>
    80003b6c:	fffff097          	auipc	ra,0xfffff
    80003b70:	988080e7          	jalr	-1656(ra) # 800024f4 <_Z11debug_printPKc>
    for (int i = 1; i < threadNum; i++) {
    80003b74:	00100993          	li	s3,1
    80003b78:	0280006f          	j	80003ba0 <_Z20testConsumerProducerv+0x340>
            myHandle = nullptr;
    80003b7c:	000bb423          	sd	zero,8(s7)
            return -1;
    80003b80:	f45ff06f          	j	80003ac4 <_Z20testConsumerProducerv+0x264>
            myHandle = nullptr;
    80003b84:	0004b423          	sd	zero,8(s1)
            return -1;
    80003b88:	fedff06f          	j	80003b74 <_Z20testConsumerProducerv+0x314>
        debug_print("CPP API: Thread started\n");
    80003b8c:	00006517          	auipc	a0,0x6
    80003b90:	dcc50513          	addi	a0,a0,-564 # 80009958 <_ZTV8Consumer+0x148>
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	960080e7          	jalr	-1696(ra) # 800024f4 <_Z11debug_printPKc>
    80003b9c:	0019899b          	addiw	s3,s3,1
    80003ba0:	0d49d263          	bge	s3,s4,80003c64 <_Z20testConsumerProducerv+0x404>
        threadData[i].id = i;
    80003ba4:	00199793          	slli	a5,s3,0x1
    80003ba8:	013787b3          	add	a5,a5,s3
    80003bac:	00379913          	slli	s2,a5,0x3
    80003bb0:	012c8933          	add	s2,s9,s2
    80003bb4:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    80003bb8:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    80003bbc:	00008797          	auipc	a5,0x8
    80003bc0:	f3c78793          	addi	a5,a5,-196 # 8000baf8 <_ZL10waitForAll>
    80003bc4:	0007b783          	ld	a5,0(a5)
    80003bc8:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    80003bcc:	02800513          	li	a0,40
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	7b4080e7          	jalr	1972(ra) # 80002384 <_Znwm>
    80003bd8:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003bdc:	00053423          	sd	zero,8(a0)
    80003be0:	00053823          	sd	zero,16(a0)
    80003be4:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003be8:	00006797          	auipc	a5,0x6
    80003bec:	c1078793          	addi	a5,a5,-1008 # 800097f8 <_ZTV8Producer+0x10>
    80003bf0:	00f53023          	sd	a5,0(a0)
    80003bf4:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    80003bf8:	00399793          	slli	a5,s3,0x3
    80003bfc:	00fa87b3          	add	a5,s5,a5
    80003c00:	00a7b023          	sd	a0,0(a5)
        debug_print("CPP API: Starting thread\n");
    80003c04:	00006517          	auipc	a0,0x6
    80003c08:	d1c50513          	addi	a0,a0,-740 # 80009920 <_ZTV8Consumer+0x110>
    80003c0c:	fffff097          	auipc	ra,0xfffff
    80003c10:	8e8080e7          	jalr	-1816(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80003c14:	00006517          	auipc	a0,0x6
    80003c18:	d2c50513          	addi	a0,a0,-724 # 80009940 <_ZTV8Consumer+0x130>
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	8d8080e7          	jalr	-1832(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80003c24:	00048513          	mv	a0,s1
    80003c28:	fffff097          	auipc	ra,0xfffff
    80003c2c:	a14080e7          	jalr	-1516(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    80003c30:	00006517          	auipc	a0,0x6
    80003c34:	ea850513          	addi	a0,a0,-344 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	8bc080e7          	jalr	-1860(ra) # 800024f4 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80003c40:	00048613          	mv	a2,s1
    80003c44:	ffffe597          	auipc	a1,0xffffe
    80003c48:	88c58593          	addi	a1,a1,-1908 # 800014d0 <_ZN6Thread9body_execEPv>
    80003c4c:	00848513          	addi	a0,s1,8
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	cbc080e7          	jalr	-836(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80003c58:	f2050ae3          	beqz	a0,80003b8c <_Z20testConsumerProducerv+0x32c>
            myHandle = nullptr;
    80003c5c:	0004b423          	sd	zero,8(s1)
            return -1;
    80003c60:	f3dff06f          	j	80003b9c <_Z20testConsumerProducerv+0x33c>
        thread_dispatch();
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	d58080e7          	jalr	-680(ra) # 800019bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003c6c:	00000493          	li	s1,0
    80003c70:	0080006f          	j	80003c78 <_Z20testConsumerProducerv+0x418>
    80003c74:	0014849b          	addiw	s1,s1,1
    80003c78:	029a4263          	blt	s4,s1,80003c9c <_Z20testConsumerProducerv+0x43c>
        waitForAll->wait();
    80003c7c:	00008797          	auipc	a5,0x8
    80003c80:	e7c78793          	addi	a5,a5,-388 # 8000baf8 <_ZL10waitForAll>
    80003c84:	0007b783          	ld	a5,0(a5)
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }
    int wait() {
        if (myHandle == nullptr) {
    80003c88:	0087b503          	ld	a0,8(a5)
    80003c8c:	fe0504e3          	beqz	a0,80003c74 <_Z20testConsumerProducerv+0x414>
            return -1;
        }
        return sem_wait(myHandle);
    80003c90:	ffffe097          	auipc	ra,0xffffe
    80003c94:	ebc080e7          	jalr	-324(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    80003c98:	fddff06f          	j	80003c74 <_Z20testConsumerProducerv+0x414>
    delete waitForAll;
    80003c9c:	00008797          	auipc	a5,0x8
    80003ca0:	e5c78793          	addi	a5,a5,-420 # 8000baf8 <_ZL10waitForAll>
    80003ca4:	0007b503          	ld	a0,0(a5)
    80003ca8:	00050863          	beqz	a0,80003cb8 <_Z20testConsumerProducerv+0x458>
    80003cac:	00053783          	ld	a5,0(a0)
    80003cb0:	0087b783          	ld	a5,8(a5)
    80003cb4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003cb8:	00000493          	li	s1,0
    80003cbc:	0080006f          	j	80003cc4 <_Z20testConsumerProducerv+0x464>
    for (int i = 0; i < threadNum; i++) {
    80003cc0:	0014849b          	addiw	s1,s1,1
    80003cc4:	0344d263          	bge	s1,s4,80003ce8 <_Z20testConsumerProducerv+0x488>
        delete producers[i];
    80003cc8:	00349793          	slli	a5,s1,0x3
    80003ccc:	00fa87b3          	add	a5,s5,a5
    80003cd0:	0007b503          	ld	a0,0(a5)
    80003cd4:	fe0506e3          	beqz	a0,80003cc0 <_Z20testConsumerProducerv+0x460>
    80003cd8:	00053783          	ld	a5,0(a0)
    80003cdc:	0087b783          	ld	a5,8(a5)
    80003ce0:	000780e7          	jalr	a5
    80003ce4:	fddff06f          	j	80003cc0 <_Z20testConsumerProducerv+0x460>
    delete consumer;
    80003ce8:	000b8a63          	beqz	s7,80003cfc <_Z20testConsumerProducerv+0x49c>
    80003cec:	000bb783          	ld	a5,0(s7)
    80003cf0:	0087b783          	ld	a5,8(a5)
    80003cf4:	000b8513          	mv	a0,s7
    80003cf8:	000780e7          	jalr	a5
    delete buffer;
    80003cfc:	000b0e63          	beqz	s6,80003d18 <_Z20testConsumerProducerv+0x4b8>
    80003d00:	000b0513          	mv	a0,s6
    80003d04:	00003097          	auipc	ra,0x3
    80003d08:	948080e7          	jalr	-1720(ra) # 8000664c <_ZN9BufferCPPD1Ev>
    80003d0c:	000b0513          	mv	a0,s6
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	6f4080e7          	jalr	1780(ra) # 80002404 <_ZdlPv>
    80003d18:	000c0113          	mv	sp,s8
}
    80003d1c:	f8040113          	addi	sp,s0,-128
    80003d20:	07813083          	ld	ra,120(sp)
    80003d24:	07013403          	ld	s0,112(sp)
    80003d28:	06813483          	ld	s1,104(sp)
    80003d2c:	06013903          	ld	s2,96(sp)
    80003d30:	05813983          	ld	s3,88(sp)
    80003d34:	05013a03          	ld	s4,80(sp)
    80003d38:	04813a83          	ld	s5,72(sp)
    80003d3c:	04013b03          	ld	s6,64(sp)
    80003d40:	03813b83          	ld	s7,56(sp)
    80003d44:	03013c03          	ld	s8,48(sp)
    80003d48:	02813c83          	ld	s9,40(sp)
    80003d4c:	08010113          	addi	sp,sp,128
    80003d50:	00008067          	ret
    80003d54:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003d58:	000b0513          	mv	a0,s6
    80003d5c:	ffffe097          	auipc	ra,0xffffe
    80003d60:	6a8080e7          	jalr	1704(ra) # 80002404 <_ZdlPv>
    80003d64:	00048513          	mv	a0,s1
    80003d68:	00009097          	auipc	ra,0x9
    80003d6c:	ee0080e7          	jalr	-288(ra) # 8000cc48 <_Unwind_Resume>
    80003d70:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003d74:	00090513          	mv	a0,s2
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	68c080e7          	jalr	1676(ra) # 80002404 <_ZdlPv>
    80003d80:	00048513          	mv	a0,s1
    80003d84:	00009097          	auipc	ra,0x9
    80003d88:	ec4080e7          	jalr	-316(ra) # 8000cc48 <_Unwind_Resume>

0000000080003d8c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003d8c:	ff010113          	addi	sp,sp,-16
    80003d90:	00813423          	sd	s0,8(sp)
    80003d94:	01010413          	addi	s0,sp,16
    80003d98:	00813403          	ld	s0,8(sp)
    80003d9c:	01010113          	addi	sp,sp,16
    80003da0:	00008067          	ret

0000000080003da4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003da4:	ff010113          	addi	sp,sp,-16
    80003da8:	00813423          	sd	s0,8(sp)
    80003dac:	01010413          	addi	s0,sp,16
    80003db0:	00813403          	ld	s0,8(sp)
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00008067          	ret

0000000080003dbc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003dbc:	ff010113          	addi	sp,sp,-16
    80003dc0:	00813423          	sd	s0,8(sp)
    80003dc4:	01010413          	addi	s0,sp,16
    80003dc8:	00813403          	ld	s0,8(sp)
    80003dcc:	01010113          	addi	sp,sp,16
    80003dd0:	00008067          	ret

0000000080003dd4 <_ZN8ConsumerD0Ev>:
class Consumer : public Thread {
    80003dd4:	ff010113          	addi	sp,sp,-16
    80003dd8:	00113423          	sd	ra,8(sp)
    80003ddc:	00813023          	sd	s0,0(sp)
    80003de0:	01010413          	addi	s0,sp,16
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	620080e7          	jalr	1568(ra) # 80002404 <_ZdlPv>
    80003dec:	00813083          	ld	ra,8(sp)
    80003df0:	00013403          	ld	s0,0(sp)
    80003df4:	01010113          	addi	sp,sp,16
    80003df8:	00008067          	ret

0000000080003dfc <_ZN16ProducerKeyboradD0Ev>:
class ProducerKeyborad : public Thread {
    80003dfc:	ff010113          	addi	sp,sp,-16
    80003e00:	00113423          	sd	ra,8(sp)
    80003e04:	00813023          	sd	s0,0(sp)
    80003e08:	01010413          	addi	s0,sp,16
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	5f8080e7          	jalr	1528(ra) # 80002404 <_ZdlPv>
    80003e14:	00813083          	ld	ra,8(sp)
    80003e18:	00013403          	ld	s0,0(sp)
    80003e1c:	01010113          	addi	sp,sp,16
    80003e20:	00008067          	ret

0000000080003e24 <_ZN8ProducerD0Ev>:
class Producer : public Thread {
    80003e24:	ff010113          	addi	sp,sp,-16
    80003e28:	00113423          	sd	ra,8(sp)
    80003e2c:	00813023          	sd	s0,0(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	5d0080e7          	jalr	1488(ra) # 80002404 <_ZdlPv>
    80003e3c:	00813083          	ld	ra,8(sp)
    80003e40:	00013403          	ld	s0,0(sp)
    80003e44:	01010113          	addi	sp,sp,16
    80003e48:	00008067          	ret

0000000080003e4c <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() {
    80003e4c:	00006797          	auipc	a5,0x6
    80003e50:	96478793          	addi	a5,a5,-1692 # 800097b0 <_ZTV9Semaphore+0x10>
    80003e54:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80003e58:	00853503          	ld	a0,8(a0)
    80003e5c:	02050663          	beqz	a0,80003e88 <_ZN9SemaphoreD1Ev+0x3c>
    virtual ~Semaphore() {
    80003e60:	ff010113          	addi	sp,sp,-16
    80003e64:	00113423          	sd	ra,8(sp)
    80003e68:	00813023          	sd	s0,0(sp)
    80003e6c:	01010413          	addi	s0,sp,16
            sem_close(myHandle);
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	c70080e7          	jalr	-912(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    }
    80003e78:	00813083          	ld	ra,8(sp)
    80003e7c:	00013403          	ld	s0,0(sp)
    80003e80:	01010113          	addi	sp,sp,16
    80003e84:	00008067          	ret
    80003e88:	00008067          	ret

0000000080003e8c <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore() {
    80003e8c:	fe010113          	addi	sp,sp,-32
    80003e90:	00113c23          	sd	ra,24(sp)
    80003e94:	00813823          	sd	s0,16(sp)
    80003e98:	00913423          	sd	s1,8(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	00050493          	mv	s1,a0
    80003ea4:	00006797          	auipc	a5,0x6
    80003ea8:	90c78793          	addi	a5,a5,-1780 # 800097b0 <_ZTV9Semaphore+0x10>
    80003eac:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80003eb0:	00853503          	ld	a0,8(a0)
    80003eb4:	00050663          	beqz	a0,80003ec0 <_ZN9SemaphoreD0Ev+0x34>
            sem_close(myHandle);
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	c28080e7          	jalr	-984(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    }
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	540080e7          	jalr	1344(ra) # 80002404 <_ZdlPv>
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret

0000000080003ee0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003ee0:	fe010113          	addi	sp,sp,-32
    80003ee4:	00113c23          	sd	ra,24(sp)
    80003ee8:	00813823          	sd	s0,16(sp)
    80003eec:	00913423          	sd	s1,8(sp)
    80003ef0:	02010413          	addi	s0,sp,32
    80003ef4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	d44080e7          	jalr	-700(ra) # 80001c3c <_Z4getcv>
    80003f00:	0005059b          	sext.w	a1,a0
    80003f04:	01b00793          	li	a5,27
    80003f08:	00f58c63          	beq	a1,a5,80003f20 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003f0c:	0204b783          	ld	a5,32(s1)
    80003f10:	0087b503          	ld	a0,8(a5)
    80003f14:	00002097          	auipc	ra,0x2
    80003f18:	534080e7          	jalr	1332(ra) # 80006448 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003f1c:	fddff06f          	j	80003ef8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003f20:	00100793          	li	a5,1
    80003f24:	00008717          	auipc	a4,0x8
    80003f28:	bcf72623          	sw	a5,-1076(a4) # 8000baf0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003f2c:	0204b783          	ld	a5,32(s1)
    80003f30:	02100593          	li	a1,33
    80003f34:	0087b503          	ld	a0,8(a5)
    80003f38:	00002097          	auipc	ra,0x2
    80003f3c:	510080e7          	jalr	1296(ra) # 80006448 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003f40:	0204b783          	ld	a5,32(s1)
    80003f44:	0107b783          	ld	a5,16(a5)
    }
    int signal() {
        if (myHandle == nullptr) {
    80003f48:	0087b503          	ld	a0,8(a5)
    80003f4c:	00050663          	beqz	a0,80003f58 <_ZN16ProducerKeyborad3runEv+0x78>
            return -1;
        }
        return sem_signal(myHandle);
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	c4c080e7          	jalr	-948(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    }
    80003f58:	01813083          	ld	ra,24(sp)
    80003f5c:	01013403          	ld	s0,16(sp)
    80003f60:	00813483          	ld	s1,8(sp)
    80003f64:	02010113          	addi	sp,sp,32
    80003f68:	00008067          	ret

0000000080003f6c <_ZN8Producer3runEv>:
    void run() override {
    80003f6c:	fe010113          	addi	sp,sp,-32
    80003f70:	00113c23          	sd	ra,24(sp)
    80003f74:	00813823          	sd	s0,16(sp)
    80003f78:	00913423          	sd	s1,8(sp)
    80003f7c:	02010413          	addi	s0,sp,32
    80003f80:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80003f84:	00008797          	auipc	a5,0x8
    80003f88:	b6c78793          	addi	a5,a5,-1172 # 8000baf0 <_ZL9threadEnd>
    80003f8c:	0007a783          	lw	a5,0(a5)
    80003f90:	0007879b          	sext.w	a5,a5
    80003f94:	02079063          	bnez	a5,80003fb4 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    80003f98:	0204b783          	ld	a5,32(s1)
    80003f9c:	0007a583          	lw	a1,0(a5)
    80003fa0:	0305859b          	addiw	a1,a1,48
    80003fa4:	0087b503          	ld	a0,8(a5)
    80003fa8:	00002097          	auipc	ra,0x2
    80003fac:	4a0080e7          	jalr	1184(ra) # 80006448 <_ZN9BufferCPP3putEi>
        return 0;
    80003fb0:	fd5ff06f          	j	80003f84 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80003fb4:	0204b783          	ld	a5,32(s1)
    80003fb8:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003fbc:	0087b503          	ld	a0,8(a5)
    80003fc0:	00050663          	beqz	a0,80003fcc <_ZN8Producer3runEv+0x60>
        return sem_signal(myHandle);
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	bd8080e7          	jalr	-1064(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    }
    80003fcc:	01813083          	ld	ra,24(sp)
    80003fd0:	01013403          	ld	s0,16(sp)
    80003fd4:	00813483          	ld	s1,8(sp)
    80003fd8:	02010113          	addi	sp,sp,32
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZN7Console4putcEc>:
};

class Console {
    public:
    static char getc() { return getc(); };
    static void putc(char c) { putc(c); };
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	00813023          	sd	s0,0(sp)
    80003fec:	01010413          	addi	s0,sp,16
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	ff0080e7          	jalr	-16(ra) # 80003fe0 <_ZN7Console4putcEc>
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN8Consumer3runEv>:
    void run() override {
    80004008:	fd010113          	addi	sp,sp,-48
    8000400c:	02113423          	sd	ra,40(sp)
    80004010:	02813023          	sd	s0,32(sp)
    80004014:	00913c23          	sd	s1,24(sp)
    80004018:	01213823          	sd	s2,16(sp)
    8000401c:	01313423          	sd	s3,8(sp)
    80004020:	03010413          	addi	s0,sp,48
    80004024:	00050913          	mv	s2,a0
        int i = 0;
    80004028:	00000993          	li	s3,0
    8000402c:	0100006f          	j	8000403c <_ZN8Consumer3runEv+0x34>
    80004030:	00a00513          	li	a0,10
    80004034:	00000097          	auipc	ra,0x0
    80004038:	fac080e7          	jalr	-84(ra) # 80003fe0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000403c:	00008797          	auipc	a5,0x8
    80004040:	ab478793          	addi	a5,a5,-1356 # 8000baf0 <_ZL9threadEnd>
    80004044:	0007a783          	lw	a5,0(a5)
    80004048:	0007879b          	sext.w	a5,a5
    8000404c:	02079c63          	bnez	a5,80004084 <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    80004050:	02093783          	ld	a5,32(s2)
    80004054:	0087b503          	ld	a0,8(a5)
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	4a0080e7          	jalr	1184(ra) # 800064f8 <_ZN9BufferCPP3getEv>
            i++;
    80004060:	0019849b          	addiw	s1,s3,1
    80004064:	0004899b          	sext.w	s3,s1
    80004068:	0ff57513          	andi	a0,a0,255
    8000406c:	00000097          	auipc	ra,0x0
    80004070:	f74080e7          	jalr	-140(ra) # 80003fe0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004074:	05000793          	li	a5,80
    80004078:	02f4e4bb          	remw	s1,s1,a5
    8000407c:	fc0490e3          	bnez	s1,8000403c <_ZN8Consumer3runEv+0x34>
    80004080:	fb1ff06f          	j	80004030 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    80004084:	02093783          	ld	a5,32(s2)
    80004088:	0087b503          	ld	a0,8(a5)
    8000408c:	00002097          	auipc	ra,0x2
    80004090:	518080e7          	jalr	1304(ra) # 800065a4 <_ZN9BufferCPP6getCntEv>
    80004094:	02a05263          	blez	a0,800040b8 <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    80004098:	02093783          	ld	a5,32(s2)
    8000409c:	0087b503          	ld	a0,8(a5)
    800040a0:	00002097          	auipc	ra,0x2
    800040a4:	458080e7          	jalr	1112(ra) # 800064f8 <_ZN9BufferCPP3getEv>
    800040a8:	0ff57513          	andi	a0,a0,255
    800040ac:	00000097          	auipc	ra,0x0
    800040b0:	f34080e7          	jalr	-204(ra) # 80003fe0 <_ZN7Console4putcEc>
    800040b4:	fd1ff06f          	j	80004084 <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    800040b8:	02093783          	ld	a5,32(s2)
    800040bc:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    800040c0:	0087b503          	ld	a0,8(a5)
    800040c4:	00050663          	beqz	a0,800040d0 <_ZN8Consumer3runEv+0xc8>
        return sem_signal(myHandle);
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	ad4080e7          	jalr	-1324(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    }
    800040d0:	02813083          	ld	ra,40(sp)
    800040d4:	02013403          	ld	s0,32(sp)
    800040d8:	01813483          	ld	s1,24(sp)
    800040dc:	01013903          	ld	s2,16(sp)
    800040e0:	00813983          	ld	s3,8(sp)
    800040e4:	03010113          	addi	sp,sp,48
    800040e8:	00008067          	ret

00000000800040ec <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800040ec:	fe010113          	addi	sp,sp,-32
    800040f0:	00113c23          	sd	ra,24(sp)
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00913423          	sd	s1,8(sp)
    800040fc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004100:	00006517          	auipc	a0,0x6
    80004104:	89850513          	addi	a0,a0,-1896 # 80009998 <_ZTV8Consumer+0x188>
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	99c080e7          	jalr	-1636(ra) # 80005aa4 <_Z11printStringPKc>
    int test = getc() - '0';
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	b2c080e7          	jalr	-1236(ra) # 80001c3c <_Z4getcv>
    80004118:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	b20080e7          	jalr	-1248(ra) # 80001c3c <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004124:	00700793          	li	a5,7
    80004128:	1097e263          	bltu	a5,s1,8000422c <_Z8userMainv+0x140>
    8000412c:	00249493          	slli	s1,s1,0x2
    80004130:	00006717          	auipc	a4,0x6
    80004134:	84470713          	addi	a4,a4,-1980 # 80009974 <_ZTV8Consumer+0x164>
    80004138:	00e484b3          	add	s1,s1,a4
    8000413c:	0004a783          	lw	a5,0(s1)
    80004140:	00e787b3          	add	a5,a5,a4
    80004144:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	e70080e7          	jalr	-400(ra) # 80004fb8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004150:	00006517          	auipc	a0,0x6
    80004154:	86850513          	addi	a0,a0,-1944 # 800099b8 <_ZTV8Consumer+0x1a8>
    80004158:	00002097          	auipc	ra,0x2
    8000415c:	94c080e7          	jalr	-1716(ra) # 80005aa4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004160:	01813083          	ld	ra,24(sp)
    80004164:	01013403          	ld	s0,16(sp)
    80004168:	00813483          	ld	s1,8(sp)
    8000416c:	02010113          	addi	sp,sp,32
    80004170:	00008067          	ret
            Threads_CPP_API_test();
    80004174:	00000097          	auipc	ra,0x0
    80004178:	59c080e7          	jalr	1436(ra) # 80004710 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000417c:	00006517          	auipc	a0,0x6
    80004180:	87c50513          	addi	a0,a0,-1924 # 800099f8 <_ZTV8Consumer+0x1e8>
    80004184:	00002097          	auipc	ra,0x2
    80004188:	920080e7          	jalr	-1760(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    8000418c:	fd5ff06f          	j	80004160 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004190:	00002097          	auipc	ra,0x2
    80004194:	e20080e7          	jalr	-480(ra) # 80005fb0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004198:	00006517          	auipc	a0,0x6
    8000419c:	8a050513          	addi	a0,a0,-1888 # 80009a38 <_ZTV8Consumer+0x228>
    800041a0:	00002097          	auipc	ra,0x2
    800041a4:	904080e7          	jalr	-1788(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    800041a8:	fb9ff06f          	j	80004160 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800041ac:	00001097          	auipc	ra,0x1
    800041b0:	19c080e7          	jalr	412(ra) # 80005348 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800041b4:	00006517          	auipc	a0,0x6
    800041b8:	8d450513          	addi	a0,a0,-1836 # 80009a88 <_ZTV8Consumer+0x278>
    800041bc:	00002097          	auipc	ra,0x2
    800041c0:	8e8080e7          	jalr	-1816(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    800041c4:	f9dff06f          	j	80004160 <_Z8userMainv+0x74>
            testSleeping();
    800041c8:	00002097          	auipc	ra,0x2
    800041cc:	844080e7          	jalr	-1980(ra) # 80005a0c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800041d0:	00006517          	auipc	a0,0x6
    800041d4:	91050513          	addi	a0,a0,-1776 # 80009ae0 <_ZTV8Consumer+0x2d0>
    800041d8:	00002097          	auipc	ra,0x2
    800041dc:	8cc080e7          	jalr	-1844(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    800041e0:	f81ff06f          	j	80004160 <_Z8userMainv+0x74>
            testConsumerProducer();
    800041e4:	fffff097          	auipc	ra,0xfffff
    800041e8:	67c080e7          	jalr	1660(ra) # 80003860 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800041ec:	00006517          	auipc	a0,0x6
    800041f0:	92450513          	addi	a0,a0,-1756 # 80009b10 <_ZTV8Consumer+0x300>
    800041f4:	00002097          	auipc	ra,0x2
    800041f8:	8b0080e7          	jalr	-1872(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    800041fc:	f65ff06f          	j	80004160 <_Z8userMainv+0x74>
            System_Mode_test();
    80004200:	fffff097          	auipc	ra,0xfffff
    80004204:	224080e7          	jalr	548(ra) # 80003424 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004208:	00006517          	auipc	a0,0x6
    8000420c:	94850513          	addi	a0,a0,-1720 # 80009b50 <_ZTV8Consumer+0x340>
    80004210:	00002097          	auipc	ra,0x2
    80004214:	894080e7          	jalr	-1900(ra) # 80005aa4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004218:	00006517          	auipc	a0,0x6
    8000421c:	95850513          	addi	a0,a0,-1704 # 80009b70 <_ZTV8Consumer+0x360>
    80004220:	00002097          	auipc	ra,0x2
    80004224:	884080e7          	jalr	-1916(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    80004228:	f39ff06f          	j	80004160 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000422c:	00006517          	auipc	a0,0x6
    80004230:	99c50513          	addi	a0,a0,-1636 # 80009bc8 <_ZTV8Consumer+0x3b8>
    80004234:	00002097          	auipc	ra,0x2
    80004238:	870080e7          	jalr	-1936(ra) # 80005aa4 <_Z11printStringPKc>
    8000423c:	f25ff06f          	j	80004160 <_Z8userMainv+0x74>

0000000080004240 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80004240:	00100793          	li	a5,1
    80004244:	06a7f863          	bgeu	a5,a0,800042b4 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80004248:	fe010113          	addi	sp,sp,-32
    8000424c:	00113c23          	sd	ra,24(sp)
    80004250:	00813823          	sd	s0,16(sp)
    80004254:	00913423          	sd	s1,8(sp)
    80004258:	01213023          	sd	s2,0(sp)
    8000425c:	02010413          	addi	s0,sp,32
    80004260:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80004264:	00a00793          	li	a5,10
    80004268:	02f577b3          	remu	a5,a0,a5
    8000426c:	02078e63          	beqz	a5,800042a8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004270:	fff48513          	addi	a0,s1,-1
    80004274:	00000097          	auipc	ra,0x0
    80004278:	fcc080e7          	jalr	-52(ra) # 80004240 <_ZL9fibonaccim>
    8000427c:	00050913          	mv	s2,a0
    80004280:	ffe48513          	addi	a0,s1,-2
    80004284:	00000097          	auipc	ra,0x0
    80004288:	fbc080e7          	jalr	-68(ra) # 80004240 <_ZL9fibonaccim>
    8000428c:	00a90533          	add	a0,s2,a0
}
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	00813483          	ld	s1,8(sp)
    8000429c:	00013903          	ld	s2,0(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800042a8:	ffffd097          	auipc	ra,0xffffd
    800042ac:	714080e7          	jalr	1812(ra) # 800019bc <_Z15thread_dispatchv>
    800042b0:	fc1ff06f          	j	80004270 <_ZL9fibonaccim+0x30>
}
    800042b4:	00008067          	ret

00000000800042b8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800042b8:	fe010113          	addi	sp,sp,-32
    800042bc:	00113c23          	sd	ra,24(sp)
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	01213023          	sd	s2,0(sp)
    800042cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800042d0:	00000913          	li	s2,0
    800042d4:	0300006f          	j	80004304 <_ZN7WorkerA11workerBodyAEPv+0x4c>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800042d8:	00178793          	addi	a5,a5,1
    800042dc:	01d00713          	li	a4,29
    800042e0:	fef77ce3          	bgeu	a4,a5,800042d8 <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	6d8080e7          	jalr	1752(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    800042ec:	00148493          	addi	s1,s1,1
    800042f0:	00900793          	li	a5,9
    800042f4:	0097e663          	bltu	a5,s1,80004300 <_ZN7WorkerA11workerBodyAEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800042f8:	00000793          	li	a5,0
    800042fc:	fe1ff06f          	j	800042dc <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80004300:	00190913          	addi	s2,s2,1
    80004304:	00900793          	li	a5,9
    80004308:	0527e063          	bltu	a5,s2,80004348 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    8000430c:	00005517          	auipc	a0,0x5
    80004310:	41450513          	addi	a0,a0,1044 # 80009720 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	790080e7          	jalr	1936(ra) # 80005aa4 <_Z11printStringPKc>
    8000431c:	00000613          	li	a2,0
    80004320:	00a00593          	li	a1,10
    80004324:	0009051b          	sext.w	a0,s2
    80004328:	00002097          	auipc	ra,0x2
    8000432c:	928080e7          	jalr	-1752(ra) # 80005c50 <_Z8printIntiii>
    80004330:	00005517          	auipc	a0,0x5
    80004334:	7a850513          	addi	a0,a0,1960 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004338:	00001097          	auipc	ra,0x1
    8000433c:	76c080e7          	jalr	1900(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004340:	00000493          	li	s1,0
    80004344:	fadff06f          	j	800042f0 <_ZN7WorkerA11workerBodyAEPv+0x38>
        }
    }
    printString("A finished!\n");
    80004348:	00005517          	auipc	a0,0x5
    8000434c:	3b050513          	addi	a0,a0,944 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x370>
    80004350:	00001097          	auipc	ra,0x1
    80004354:	754080e7          	jalr	1876(ra) # 80005aa4 <_Z11printStringPKc>
    finishedA = true;
    80004358:	00100793          	li	a5,1
    8000435c:	00007717          	auipc	a4,0x7
    80004360:	7af703a3          	sb	a5,1959(a4) # 8000bb03 <_ZL9finishedA>
}
    80004364:	01813083          	ld	ra,24(sp)
    80004368:	01013403          	ld	s0,16(sp)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	00013903          	ld	s2,0(sp)
    80004374:	02010113          	addi	sp,sp,32
    80004378:	00008067          	ret

000000008000437c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	01213023          	sd	s2,0(sp)
    80004390:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004394:	00000913          	li	s2,0
    80004398:	0300006f          	j	800043c8 <_ZN7WorkerB11workerBodyBEPv+0x4c>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    8000439c:	00178793          	addi	a5,a5,1
    800043a0:	01d00713          	li	a4,29
    800043a4:	fef77ce3          	bgeu	a4,a5,8000439c <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    800043a8:	ffffd097          	auipc	ra,0xffffd
    800043ac:	614080e7          	jalr	1556(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    800043b0:	00148493          	addi	s1,s1,1
    800043b4:	00900793          	li	a5,9
    800043b8:	0097e663          	bltu	a5,s1,800043c4 <_ZN7WorkerB11workerBodyBEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800043bc:	00000793          	li	a5,0
    800043c0:	fe1ff06f          	j	800043a0 <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    800043c4:	00190913          	addi	s2,s2,1
    800043c8:	00f00793          	li	a5,15
    800043cc:	0527e063          	bltu	a5,s2,8000440c <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    800043d0:	00005517          	auipc	a0,0x5
    800043d4:	33850513          	addi	a0,a0,824 # 80009708 <_ZZ24debug_print_internal_intmE6digits+0x380>
    800043d8:	00001097          	auipc	ra,0x1
    800043dc:	6cc080e7          	jalr	1740(ra) # 80005aa4 <_Z11printStringPKc>
    800043e0:	00000613          	li	a2,0
    800043e4:	00a00593          	li	a1,10
    800043e8:	0009051b          	sext.w	a0,s2
    800043ec:	00002097          	auipc	ra,0x2
    800043f0:	864080e7          	jalr	-1948(ra) # 80005c50 <_Z8printIntiii>
    800043f4:	00005517          	auipc	a0,0x5
    800043f8:	6e450513          	addi	a0,a0,1764 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	6a8080e7          	jalr	1704(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004404:	00000493          	li	s1,0
    80004408:	fadff06f          	j	800043b4 <_ZN7WorkerB11workerBodyBEPv+0x38>
        }
    }
    printString("B finished!\n");
    8000440c:	00005517          	auipc	a0,0x5
    80004410:	30450513          	addi	a0,a0,772 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x388>
    80004414:	00001097          	auipc	ra,0x1
    80004418:	690080e7          	jalr	1680(ra) # 80005aa4 <_Z11printStringPKc>
    finishedB = true;
    8000441c:	00100793          	li	a5,1
    80004420:	00007717          	auipc	a4,0x7
    80004424:	6ef70123          	sb	a5,1762(a4) # 8000bb02 <_ZL9finishedB>
    thread_dispatch();
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	594080e7          	jalr	1428(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004430:	01813083          	ld	ra,24(sp)
    80004434:	01013403          	ld	s0,16(sp)
    80004438:	00813483          	ld	s1,8(sp)
    8000443c:	00013903          	ld	s2,0(sp)
    80004440:	02010113          	addi	sp,sp,32
    80004444:	00008067          	ret

0000000080004448 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004448:	fe010113          	addi	sp,sp,-32
    8000444c:	00113c23          	sd	ra,24(sp)
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	00913423          	sd	s1,8(sp)
    80004458:	01213023          	sd	s2,0(sp)
    8000445c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004460:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80004464:	00200793          	li	a5,2
    80004468:	0497e263          	bltu	a5,s1,800044ac <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    8000446c:	00005517          	auipc	a0,0x5
    80004470:	25c50513          	addi	a0,a0,604 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004474:	00001097          	auipc	ra,0x1
    80004478:	630080e7          	jalr	1584(ra) # 80005aa4 <_Z11printStringPKc>
    8000447c:	00000613          	li	a2,0
    80004480:	00a00593          	li	a1,10
    80004484:	00048513          	mv	a0,s1
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	7c8080e7          	jalr	1992(ra) # 80005c50 <_Z8printIntiii>
    80004490:	00005517          	auipc	a0,0x5
    80004494:	64850513          	addi	a0,a0,1608 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004498:	00001097          	auipc	ra,0x1
    8000449c:	60c080e7          	jalr	1548(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800044a0:	0014849b          	addiw	s1,s1,1
    800044a4:	0ff4f493          	andi	s1,s1,255
    800044a8:	fbdff06f          	j	80004464 <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    800044ac:	00005517          	auipc	a0,0x5
    800044b0:	22450513          	addi	a0,a0,548 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x348>
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	5f0080e7          	jalr	1520(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800044bc:	00700313          	li	t1,7
    thread_dispatch();
    800044c0:	ffffd097          	auipc	ra,0xffffd
    800044c4:	4fc080e7          	jalr	1276(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800044c8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800044cc:	00005517          	auipc	a0,0x5
    800044d0:	21450513          	addi	a0,a0,532 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x358>
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	5d0080e7          	jalr	1488(ra) # 80005aa4 <_Z11printStringPKc>
    800044dc:	00000613          	li	a2,0
    800044e0:	00a00593          	li	a1,10
    800044e4:	0009051b          	sext.w	a0,s2
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	768080e7          	jalr	1896(ra) # 80005c50 <_Z8printIntiii>
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	5e850513          	addi	a0,a0,1512 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	5ac080e7          	jalr	1452(ra) # 80005aa4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004500:	00c00513          	li	a0,12
    80004504:	00000097          	auipc	ra,0x0
    80004508:	d3c080e7          	jalr	-708(ra) # 80004240 <_ZL9fibonaccim>
    8000450c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	1d850513          	addi	a0,a0,472 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	58c080e7          	jalr	1420(ra) # 80005aa4 <_Z11printStringPKc>
    80004520:	00000613          	li	a2,0
    80004524:	00a00593          	li	a1,10
    80004528:	0009051b          	sext.w	a0,s2
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	724080e7          	jalr	1828(ra) # 80005c50 <_Z8printIntiii>
    80004534:	00005517          	auipc	a0,0x5
    80004538:	5a450513          	addi	a0,a0,1444 # 80009ad8 <_ZTV8Consumer+0x2c8>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	568080e7          	jalr	1384(ra) # 80005aa4 <_Z11printStringPKc>

    for (; i < 6; i++) {
    80004544:	00500793          	li	a5,5
    80004548:	0497e263          	bltu	a5,s1,8000458c <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    8000454c:	00005517          	auipc	a0,0x5
    80004550:	17c50513          	addi	a0,a0,380 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004554:	00001097          	auipc	ra,0x1
    80004558:	550080e7          	jalr	1360(ra) # 80005aa4 <_Z11printStringPKc>
    8000455c:	00000613          	li	a2,0
    80004560:	00a00593          	li	a1,10
    80004564:	00048513          	mv	a0,s1
    80004568:	00001097          	auipc	ra,0x1
    8000456c:	6e8080e7          	jalr	1768(ra) # 80005c50 <_Z8printIntiii>
    80004570:	00005517          	auipc	a0,0x5
    80004574:	56850513          	addi	a0,a0,1384 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	52c080e7          	jalr	1324(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004580:	0014849b          	addiw	s1,s1,1
    80004584:	0ff4f493          	andi	s1,s1,255
    80004588:	fbdff06f          	j	80004544 <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	16c50513          	addi	a0,a0,364 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x370>
    80004594:	00001097          	auipc	ra,0x1
    80004598:	510080e7          	jalr	1296(ra) # 80005aa4 <_Z11printStringPKc>
    finishedC = true;
    8000459c:	00100793          	li	a5,1
    800045a0:	00007717          	auipc	a4,0x7
    800045a4:	56f700a3          	sb	a5,1377(a4) # 8000bb01 <_ZL9finishedC>
    thread_dispatch();
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	414080e7          	jalr	1044(ra) # 800019bc <_Z15thread_dispatchv>
}
    800045b0:	01813083          	ld	ra,24(sp)
    800045b4:	01013403          	ld	s0,16(sp)
    800045b8:	00813483          	ld	s1,8(sp)
    800045bc:	00013903          	ld	s2,0(sp)
    800045c0:	02010113          	addi	sp,sp,32
    800045c4:	00008067          	ret

00000000800045c8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	01213023          	sd	s2,0(sp)
    800045dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800045e0:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    800045e4:	00c00793          	li	a5,12
    800045e8:	0497e263          	bltu	a5,s1,8000462c <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    800045ec:	00005517          	auipc	a0,0x5
    800045f0:	0a450513          	addi	a0,a0,164 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x308>
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	4b0080e7          	jalr	1200(ra) # 80005aa4 <_Z11printStringPKc>
    800045fc:	00000613          	li	a2,0
    80004600:	00a00593          	li	a1,10
    80004604:	00048513          	mv	a0,s1
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	648080e7          	jalr	1608(ra) # 80005c50 <_Z8printIntiii>
    80004610:	00005517          	auipc	a0,0x5
    80004614:	4c850513          	addi	a0,a0,1224 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	48c080e7          	jalr	1164(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004620:	0014849b          	addiw	s1,s1,1
    80004624:	0ff4f493          	andi	s1,s1,255
    80004628:	fbdff06f          	j	800045e4 <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    8000462c:	00005517          	auipc	a0,0x5
    80004630:	06c50513          	addi	a0,a0,108 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80004634:	00001097          	auipc	ra,0x1
    80004638:	470080e7          	jalr	1136(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000463c:	00500313          	li	t1,5
    thread_dispatch();
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	37c080e7          	jalr	892(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004648:	01000513          	li	a0,16
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	bf4080e7          	jalr	-1036(ra) # 80004240 <_ZL9fibonaccim>
    80004654:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004658:	00005517          	auipc	a0,0x5
    8000465c:	05050513          	addi	a0,a0,80 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80004660:	00001097          	auipc	ra,0x1
    80004664:	444080e7          	jalr	1092(ra) # 80005aa4 <_Z11printStringPKc>
    80004668:	00000613          	li	a2,0
    8000466c:	00a00593          	li	a1,10
    80004670:	0009051b          	sext.w	a0,s2
    80004674:	00001097          	auipc	ra,0x1
    80004678:	5dc080e7          	jalr	1500(ra) # 80005c50 <_Z8printIntiii>
    8000467c:	00005517          	auipc	a0,0x5
    80004680:	45c50513          	addi	a0,a0,1116 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	420080e7          	jalr	1056(ra) # 80005aa4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    8000468c:	00f00793          	li	a5,15
    80004690:	0497e263          	bltu	a5,s1,800046d4 <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80004694:	00005517          	auipc	a0,0x5
    80004698:	ffc50513          	addi	a0,a0,-4 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x308>
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	408080e7          	jalr	1032(ra) # 80005aa4 <_Z11printStringPKc>
    800046a4:	00000613          	li	a2,0
    800046a8:	00a00593          	li	a1,10
    800046ac:	00048513          	mv	a0,s1
    800046b0:	00001097          	auipc	ra,0x1
    800046b4:	5a0080e7          	jalr	1440(ra) # 80005c50 <_Z8printIntiii>
    800046b8:	00005517          	auipc	a0,0x5
    800046bc:	42050513          	addi	a0,a0,1056 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	3e4080e7          	jalr	996(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800046c8:	0014849b          	addiw	s1,s1,1
    800046cc:	0ff4f493          	andi	s1,s1,255
    800046d0:	fbdff06f          	j	8000468c <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    800046d4:	00005517          	auipc	a0,0x5
    800046d8:	fe450513          	addi	a0,a0,-28 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x330>
    800046dc:	00001097          	auipc	ra,0x1
    800046e0:	3c8080e7          	jalr	968(ra) # 80005aa4 <_Z11printStringPKc>
    finishedD = true;
    800046e4:	00100793          	li	a5,1
    800046e8:	00007717          	auipc	a4,0x7
    800046ec:	40f70c23          	sb	a5,1048(a4) # 8000bb00 <_ZL9finishedD>
    thread_dispatch();
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	2cc080e7          	jalr	716(ra) # 800019bc <_Z15thread_dispatchv>
}
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	00013903          	ld	s2,0(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004710:	fc010113          	addi	sp,sp,-64
    80004714:	02113c23          	sd	ra,56(sp)
    80004718:	02813823          	sd	s0,48(sp)
    8000471c:	02913423          	sd	s1,40(sp)
    80004720:	03213023          	sd	s2,32(sp)
    80004724:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004728:	02000513          	li	a0,32
    8000472c:	ffffe097          	auipc	ra,0xffffe
    80004730:	c58080e7          	jalr	-936(ra) # 80002384 <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004734:	00053423          	sd	zero,8(a0)
    80004738:	00053823          	sd	zero,16(a0)
    8000473c:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    80004740:	00005797          	auipc	a5,0x5
    80004744:	4c078793          	addi	a5,a5,1216 # 80009c00 <_ZTV7WorkerA+0x10>
    80004748:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    8000474c:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80004750:	00005517          	auipc	a0,0x5
    80004754:	fd850513          	addi	a0,a0,-40 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	34c080e7          	jalr	844(ra) # 80005aa4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004760:	02000513          	li	a0,32
    80004764:	ffffe097          	auipc	ra,0xffffe
    80004768:	c20080e7          	jalr	-992(ra) # 80002384 <_Znwm>
    8000476c:	00053423          	sd	zero,8(a0)
    80004770:	00053823          	sd	zero,16(a0)
    80004774:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    80004778:	00005797          	auipc	a5,0x5
    8000477c:	4b078793          	addi	a5,a5,1200 # 80009c28 <_ZTV7WorkerB+0x10>
    80004780:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80004784:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80004788:	00005517          	auipc	a0,0x5
    8000478c:	fb850513          	addi	a0,a0,-72 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80004790:	00001097          	auipc	ra,0x1
    80004794:	314080e7          	jalr	788(ra) # 80005aa4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004798:	02000513          	li	a0,32
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	be8080e7          	jalr	-1048(ra) # 80002384 <_Znwm>
    800047a4:	00053423          	sd	zero,8(a0)
    800047a8:	00053823          	sd	zero,16(a0)
    800047ac:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    800047b0:	00005797          	auipc	a5,0x5
    800047b4:	4a078793          	addi	a5,a5,1184 # 80009c50 <_ZTV7WorkerC+0x10>
    800047b8:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    800047bc:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800047c0:	00005517          	auipc	a0,0x5
    800047c4:	f9850513          	addi	a0,a0,-104 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x3d0>
    800047c8:	00001097          	auipc	ra,0x1
    800047cc:	2dc080e7          	jalr	732(ra) # 80005aa4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800047d0:	02000513          	li	a0,32
    800047d4:	ffffe097          	auipc	ra,0xffffe
    800047d8:	bb0080e7          	jalr	-1104(ra) # 80002384 <_Znwm>
    800047dc:	00053423          	sd	zero,8(a0)
    800047e0:	00053823          	sd	zero,16(a0)
    800047e4:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    800047e8:	00005797          	auipc	a5,0x5
    800047ec:	49078793          	addi	a5,a5,1168 # 80009c78 <_ZTV7WorkerD+0x10>
    800047f0:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    800047f4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800047f8:	00005517          	auipc	a0,0x5
    800047fc:	f7850513          	addi	a0,a0,-136 # 80009770 <_ZZ24debug_print_internal_intmE6digits+0x3e8>
    80004800:	00001097          	auipc	ra,0x1
    80004804:	2a4080e7          	jalr	676(ra) # 80005aa4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004808:	00000493          	li	s1,0
    8000480c:	00c0006f          	j	80004818 <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    80004810:	00093423          	sd	zero,8(s2)
    80004814:	0014849b          	addiw	s1,s1,1
    80004818:	00300793          	li	a5,3
    8000481c:	0897c463          	blt	a5,s1,800048a4 <_Z20Threads_CPP_API_testv+0x194>
        threads[i]->start();
    80004820:	00349793          	slli	a5,s1,0x3
    80004824:	fe040713          	addi	a4,s0,-32
    80004828:	00f707b3          	add	a5,a4,a5
    8000482c:	fe07b903          	ld	s2,-32(a5)
        debug_print("CPP API: Starting thread\n");
    80004830:	00005517          	auipc	a0,0x5
    80004834:	0f050513          	addi	a0,a0,240 # 80009920 <_ZTV8Consumer+0x110>
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	cbc080e7          	jalr	-836(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80004840:	00005517          	auipc	a0,0x5
    80004844:	10050513          	addi	a0,a0,256 # 80009940 <_ZTV8Consumer+0x130>
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	cac080e7          	jalr	-852(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80004850:	00090513          	mv	a0,s2
    80004854:	ffffe097          	auipc	ra,0xffffe
    80004858:	de8080e7          	jalr	-536(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    8000485c:	00005517          	auipc	a0,0x5
    80004860:	27c50513          	addi	a0,a0,636 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004864:	ffffe097          	auipc	ra,0xffffe
    80004868:	c90080e7          	jalr	-880(ra) # 800024f4 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    8000486c:	00090613          	mv	a2,s2
    80004870:	ffffd597          	auipc	a1,0xffffd
    80004874:	c6058593          	addi	a1,a1,-928 # 800014d0 <_ZN6Thread9body_execEPv>
    80004878:	00890513          	addi	a0,s2,8
    8000487c:	ffffd097          	auipc	ra,0xffffd
    80004880:	090080e7          	jalr	144(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80004884:	f80516e3          	bnez	a0,80004810 <_Z20Threads_CPP_API_testv+0x100>
        debug_print("CPP API: Thread started\n");
    80004888:	00005517          	auipc	a0,0x5
    8000488c:	0d050513          	addi	a0,a0,208 # 80009958 <_ZTV8Consumer+0x148>
    80004890:	ffffe097          	auipc	ra,0xffffe
    80004894:	c64080e7          	jalr	-924(ra) # 800024f4 <_Z11debug_printPKc>
        return 0;
    80004898:	f7dff06f          	j	80004814 <_Z20Threads_CPP_API_testv+0x104>
        thread_dispatch();
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	120080e7          	jalr	288(ra) # 800019bc <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800048a4:	00007797          	auipc	a5,0x7
    800048a8:	25f78793          	addi	a5,a5,607 # 8000bb03 <_ZL9finishedA>
    800048ac:	0007c783          	lbu	a5,0(a5)
    800048b0:	0ff7f793          	andi	a5,a5,255
    800048b4:	fe0784e3          	beqz	a5,8000489c <_Z20Threads_CPP_API_testv+0x18c>
    800048b8:	00007797          	auipc	a5,0x7
    800048bc:	24a78793          	addi	a5,a5,586 # 8000bb02 <_ZL9finishedB>
    800048c0:	0007c783          	lbu	a5,0(a5)
    800048c4:	0ff7f793          	andi	a5,a5,255
    800048c8:	fc078ae3          	beqz	a5,8000489c <_Z20Threads_CPP_API_testv+0x18c>
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	23578793          	addi	a5,a5,565 # 8000bb01 <_ZL9finishedC>
    800048d4:	0007c783          	lbu	a5,0(a5)
    800048d8:	0ff7f793          	andi	a5,a5,255
    800048dc:	fc0780e3          	beqz	a5,8000489c <_Z20Threads_CPP_API_testv+0x18c>
    800048e0:	00007797          	auipc	a5,0x7
    800048e4:	22078793          	addi	a5,a5,544 # 8000bb00 <_ZL9finishedD>
    800048e8:	0007c783          	lbu	a5,0(a5)
    800048ec:	0ff7f793          	andi	a5,a5,255
    800048f0:	fa0786e3          	beqz	a5,8000489c <_Z20Threads_CPP_API_testv+0x18c>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    800048f4:	fc040493          	addi	s1,s0,-64
    800048f8:	0080006f          	j	80004900 <_Z20Threads_CPP_API_testv+0x1f0>
    800048fc:	00848493          	addi	s1,s1,8
    80004900:	fe040793          	addi	a5,s0,-32
    80004904:	00f48e63          	beq	s1,a5,80004920 <_Z20Threads_CPP_API_testv+0x210>
    80004908:	0004b503          	ld	a0,0(s1)
    8000490c:	fe0508e3          	beqz	a0,800048fc <_Z20Threads_CPP_API_testv+0x1ec>
    80004910:	00053783          	ld	a5,0(a0)
    80004914:	0087b783          	ld	a5,8(a5)
    80004918:	000780e7          	jalr	a5
    8000491c:	fe1ff06f          	j	800048fc <_Z20Threads_CPP_API_testv+0x1ec>
}
    80004920:	03813083          	ld	ra,56(sp)
    80004924:	03013403          	ld	s0,48(sp)
    80004928:	02813483          	ld	s1,40(sp)
    8000492c:	02013903          	ld	s2,32(sp)
    80004930:	04010113          	addi	sp,sp,64
    80004934:	00008067          	ret

0000000080004938 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004938:	ff010113          	addi	sp,sp,-16
    8000493c:	00813423          	sd	s0,8(sp)
    80004940:	01010413          	addi	s0,sp,16
    80004944:	00813403          	ld	s0,8(sp)
    80004948:	01010113          	addi	sp,sp,16
    8000494c:	00008067          	ret

0000000080004950 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004950:	ff010113          	addi	sp,sp,-16
    80004954:	00813423          	sd	s0,8(sp)
    80004958:	01010413          	addi	s0,sp,16
    8000495c:	00813403          	ld	s0,8(sp)
    80004960:	01010113          	addi	sp,sp,16
    80004964:	00008067          	ret

0000000080004968 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004968:	ff010113          	addi	sp,sp,-16
    8000496c:	00813423          	sd	s0,8(sp)
    80004970:	01010413          	addi	s0,sp,16
    80004974:	00813403          	ld	s0,8(sp)
    80004978:	01010113          	addi	sp,sp,16
    8000497c:	00008067          	ret

0000000080004980 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004980:	ff010113          	addi	sp,sp,-16
    80004984:	00813423          	sd	s0,8(sp)
    80004988:	01010413          	addi	s0,sp,16
    8000498c:	00813403          	ld	s0,8(sp)
    80004990:	01010113          	addi	sp,sp,16
    80004994:	00008067          	ret

0000000080004998 <_ZN7WorkerAD0Ev>:
    80004998:	ff010113          	addi	sp,sp,-16
    8000499c:	00113423          	sd	ra,8(sp)
    800049a0:	00813023          	sd	s0,0(sp)
    800049a4:	01010413          	addi	s0,sp,16
    800049a8:	ffffe097          	auipc	ra,0xffffe
    800049ac:	a5c080e7          	jalr	-1444(ra) # 80002404 <_ZdlPv>
    800049b0:	00813083          	ld	ra,8(sp)
    800049b4:	00013403          	ld	s0,0(sp)
    800049b8:	01010113          	addi	sp,sp,16
    800049bc:	00008067          	ret

00000000800049c0 <_ZN7WorkerBD0Ev>:
class WorkerB: public Thread {
    800049c0:	ff010113          	addi	sp,sp,-16
    800049c4:	00113423          	sd	ra,8(sp)
    800049c8:	00813023          	sd	s0,0(sp)
    800049cc:	01010413          	addi	s0,sp,16
    800049d0:	ffffe097          	auipc	ra,0xffffe
    800049d4:	a34080e7          	jalr	-1484(ra) # 80002404 <_ZdlPv>
    800049d8:	00813083          	ld	ra,8(sp)
    800049dc:	00013403          	ld	s0,0(sp)
    800049e0:	01010113          	addi	sp,sp,16
    800049e4:	00008067          	ret

00000000800049e8 <_ZN7WorkerCD0Ev>:
class WorkerC: public Thread {
    800049e8:	ff010113          	addi	sp,sp,-16
    800049ec:	00113423          	sd	ra,8(sp)
    800049f0:	00813023          	sd	s0,0(sp)
    800049f4:	01010413          	addi	s0,sp,16
    800049f8:	ffffe097          	auipc	ra,0xffffe
    800049fc:	a0c080e7          	jalr	-1524(ra) # 80002404 <_ZdlPv>
    80004a00:	00813083          	ld	ra,8(sp)
    80004a04:	00013403          	ld	s0,0(sp)
    80004a08:	01010113          	addi	sp,sp,16
    80004a0c:	00008067          	ret

0000000080004a10 <_ZN7WorkerDD0Ev>:
class WorkerD: public Thread {
    80004a10:	ff010113          	addi	sp,sp,-16
    80004a14:	00113423          	sd	ra,8(sp)
    80004a18:	00813023          	sd	s0,0(sp)
    80004a1c:	01010413          	addi	s0,sp,16
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	9e4080e7          	jalr	-1564(ra) # 80002404 <_ZdlPv>
    80004a28:	00813083          	ld	ra,8(sp)
    80004a2c:	00013403          	ld	s0,0(sp)
    80004a30:	01010113          	addi	sp,sp,16
    80004a34:	00008067          	ret

0000000080004a38 <_ZN7WorkerA3runEv>:
    void run() override {
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00113423          	sd	ra,8(sp)
    80004a40:	00813023          	sd	s0,0(sp)
    80004a44:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004a48:	00000593          	li	a1,0
    80004a4c:	00000097          	auipc	ra,0x0
    80004a50:	86c080e7          	jalr	-1940(ra) # 800042b8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004a54:	00813083          	ld	ra,8(sp)
    80004a58:	00013403          	ld	s0,0(sp)
    80004a5c:	01010113          	addi	sp,sp,16
    80004a60:	00008067          	ret

0000000080004a64 <_ZN7WorkerB3runEv>:
    void run() override {
    80004a64:	ff010113          	addi	sp,sp,-16
    80004a68:	00113423          	sd	ra,8(sp)
    80004a6c:	00813023          	sd	s0,0(sp)
    80004a70:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004a74:	00000593          	li	a1,0
    80004a78:	00000097          	auipc	ra,0x0
    80004a7c:	904080e7          	jalr	-1788(ra) # 8000437c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004a80:	00813083          	ld	ra,8(sp)
    80004a84:	00013403          	ld	s0,0(sp)
    80004a88:	01010113          	addi	sp,sp,16
    80004a8c:	00008067          	ret

0000000080004a90 <_ZN7WorkerC3runEv>:
    void run() override {
    80004a90:	ff010113          	addi	sp,sp,-16
    80004a94:	00113423          	sd	ra,8(sp)
    80004a98:	00813023          	sd	s0,0(sp)
    80004a9c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004aa0:	00000593          	li	a1,0
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	9a4080e7          	jalr	-1628(ra) # 80004448 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004aac:	00813083          	ld	ra,8(sp)
    80004ab0:	00013403          	ld	s0,0(sp)
    80004ab4:	01010113          	addi	sp,sp,16
    80004ab8:	00008067          	ret

0000000080004abc <_ZN7WorkerD3runEv>:
    void run() override {
    80004abc:	ff010113          	addi	sp,sp,-16
    80004ac0:	00113423          	sd	ra,8(sp)
    80004ac4:	00813023          	sd	s0,0(sp)
    80004ac8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004acc:	00000593          	li	a1,0
    80004ad0:	00000097          	auipc	ra,0x0
    80004ad4:	af8080e7          	jalr	-1288(ra) # 800045c8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004ad8:	00813083          	ld	ra,8(sp)
    80004adc:	00013403          	ld	s0,0(sp)
    80004ae0:	01010113          	addi	sp,sp,16
    80004ae4:	00008067          	ret

0000000080004ae8 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80004ae8:	00100793          	li	a5,1
    80004aec:	06a7f863          	bgeu	a5,a0,80004b5c <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80004af0:	fe010113          	addi	sp,sp,-32
    80004af4:	00113c23          	sd	ra,24(sp)
    80004af8:	00813823          	sd	s0,16(sp)
    80004afc:	00913423          	sd	s1,8(sp)
    80004b00:	01213023          	sd	s2,0(sp)
    80004b04:	02010413          	addi	s0,sp,32
    80004b08:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80004b0c:	00a00793          	li	a5,10
    80004b10:	02f577b3          	remu	a5,a0,a5
    80004b14:	02078e63          	beqz	a5,80004b50 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004b18:	fff48513          	addi	a0,s1,-1
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	fcc080e7          	jalr	-52(ra) # 80004ae8 <_ZL9fibonaccim>
    80004b24:	00050913          	mv	s2,a0
    80004b28:	ffe48513          	addi	a0,s1,-2
    80004b2c:	00000097          	auipc	ra,0x0
    80004b30:	fbc080e7          	jalr	-68(ra) # 80004ae8 <_ZL9fibonaccim>
    80004b34:	00a90533          	add	a0,s2,a0
}
    80004b38:	01813083          	ld	ra,24(sp)
    80004b3c:	01013403          	ld	s0,16(sp)
    80004b40:	00813483          	ld	s1,8(sp)
    80004b44:	00013903          	ld	s2,0(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	e6c080e7          	jalr	-404(ra) # 800019bc <_Z15thread_dispatchv>
    80004b58:	fc1ff06f          	j	80004b18 <_ZL9fibonaccim+0x30>
}
    80004b5c:	00008067          	ret

0000000080004b60 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b60:	fe010113          	addi	sp,sp,-32
    80004b64:	00113c23          	sd	ra,24(sp)
    80004b68:	00813823          	sd	s0,16(sp)
    80004b6c:	00913423          	sd	s1,8(sp)
    80004b70:	01213023          	sd	s2,0(sp)
    80004b74:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004b78:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80004b7c:	00c00793          	li	a5,12
    80004b80:	0497e263          	bltu	a5,s1,80004bc4 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80004b84:	00005517          	auipc	a0,0x5
    80004b88:	b0c50513          	addi	a0,a0,-1268 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x308>
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	f18080e7          	jalr	-232(ra) # 80005aa4 <_Z11printStringPKc>
    80004b94:	00000613          	li	a2,0
    80004b98:	00a00593          	li	a1,10
    80004b9c:	00048513          	mv	a0,s1
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	0b0080e7          	jalr	176(ra) # 80005c50 <_Z8printIntiii>
    80004ba8:	00005517          	auipc	a0,0x5
    80004bac:	f3050513          	addi	a0,a0,-208 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	ef4080e7          	jalr	-268(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004bb8:	0014849b          	addiw	s1,s1,1
    80004bbc:	0ff4f493          	andi	s1,s1,255
    80004bc0:	fbdff06f          	j	80004b7c <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80004bc4:	00005517          	auipc	a0,0x5
    80004bc8:	ad450513          	addi	a0,a0,-1324 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	ed8080e7          	jalr	-296(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004bd4:	00500313          	li	t1,5
    thread_dispatch();
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	de4080e7          	jalr	-540(ra) # 800019bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004be0:	01000513          	li	a0,16
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	f04080e7          	jalr	-252(ra) # 80004ae8 <_ZL9fibonaccim>
    80004bec:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004bf0:	00005517          	auipc	a0,0x5
    80004bf4:	ab850513          	addi	a0,a0,-1352 # 800096a8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	eac080e7          	jalr	-340(ra) # 80005aa4 <_Z11printStringPKc>
    80004c00:	00000613          	li	a2,0
    80004c04:	00a00593          	li	a1,10
    80004c08:	0009051b          	sext.w	a0,s2
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	044080e7          	jalr	68(ra) # 80005c50 <_Z8printIntiii>
    80004c14:	00005517          	auipc	a0,0x5
    80004c18:	ec450513          	addi	a0,a0,-316 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	e88080e7          	jalr	-376(ra) # 80005aa4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80004c24:	00f00793          	li	a5,15
    80004c28:	0497e263          	bltu	a5,s1,80004c6c <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80004c2c:	00005517          	auipc	a0,0x5
    80004c30:	a6450513          	addi	a0,a0,-1436 # 80009690 <_ZZ24debug_print_internal_intmE6digits+0x308>
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	e70080e7          	jalr	-400(ra) # 80005aa4 <_Z11printStringPKc>
    80004c3c:	00000613          	li	a2,0
    80004c40:	00a00593          	li	a1,10
    80004c44:	00048513          	mv	a0,s1
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	008080e7          	jalr	8(ra) # 80005c50 <_Z8printIntiii>
    80004c50:	00005517          	auipc	a0,0x5
    80004c54:	e8850513          	addi	a0,a0,-376 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004c58:	00001097          	auipc	ra,0x1
    80004c5c:	e4c080e7          	jalr	-436(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c60:	0014849b          	addiw	s1,s1,1
    80004c64:	0ff4f493          	andi	s1,s1,255
    80004c68:	fbdff06f          	j	80004c24 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80004c6c:	00005517          	auipc	a0,0x5
    80004c70:	a4c50513          	addi	a0,a0,-1460 # 800096b8 <_ZZ24debug_print_internal_intmE6digits+0x330>
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	e30080e7          	jalr	-464(ra) # 80005aa4 <_Z11printStringPKc>
    finishedD = true;
    80004c7c:	00100793          	li	a5,1
    80004c80:	00007717          	auipc	a4,0x7
    80004c84:	e8f70223          	sb	a5,-380(a4) # 8000bb04 <_ZL9finishedD>
    thread_dispatch();
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	d34080e7          	jalr	-716(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004c90:	01813083          	ld	ra,24(sp)
    80004c94:	01013403          	ld	s0,16(sp)
    80004c98:	00813483          	ld	s1,8(sp)
    80004c9c:	00013903          	ld	s2,0(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	01213023          	sd	s2,0(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004cc0:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80004cc4:	00200793          	li	a5,2
    80004cc8:	0497e263          	bltu	a5,s1,80004d0c <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80004ccc:	00005517          	auipc	a0,0x5
    80004cd0:	9fc50513          	addi	a0,a0,-1540 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	dd0080e7          	jalr	-560(ra) # 80005aa4 <_Z11printStringPKc>
    80004cdc:	00000613          	li	a2,0
    80004ce0:	00a00593          	li	a1,10
    80004ce4:	00048513          	mv	a0,s1
    80004ce8:	00001097          	auipc	ra,0x1
    80004cec:	f68080e7          	jalr	-152(ra) # 80005c50 <_Z8printIntiii>
    80004cf0:	00005517          	auipc	a0,0x5
    80004cf4:	de850513          	addi	a0,a0,-536 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004cf8:	00001097          	auipc	ra,0x1
    80004cfc:	dac080e7          	jalr	-596(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004d00:	0014849b          	addiw	s1,s1,1
    80004d04:	0ff4f493          	andi	s1,s1,255
    80004d08:	fbdff06f          	j	80004cc4 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80004d0c:	00005517          	auipc	a0,0x5
    80004d10:	9c450513          	addi	a0,a0,-1596 # 800096d0 <_ZZ24debug_print_internal_intmE6digits+0x348>
    80004d14:	00001097          	auipc	ra,0x1
    80004d18:	d90080e7          	jalr	-624(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004d1c:	00700313          	li	t1,7
    thread_dispatch();
    80004d20:	ffffd097          	auipc	ra,0xffffd
    80004d24:	c9c080e7          	jalr	-868(ra) # 800019bc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d28:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004d2c:	00005517          	auipc	a0,0x5
    80004d30:	9b450513          	addi	a0,a0,-1612 # 800096e0 <_ZZ24debug_print_internal_intmE6digits+0x358>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	d70080e7          	jalr	-656(ra) # 80005aa4 <_Z11printStringPKc>
    80004d3c:	00000613          	li	a2,0
    80004d40:	00a00593          	li	a1,10
    80004d44:	0009051b          	sext.w	a0,s2
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	f08080e7          	jalr	-248(ra) # 80005c50 <_Z8printIntiii>
    80004d50:	00005517          	auipc	a0,0x5
    80004d54:	d8850513          	addi	a0,a0,-632 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	d4c080e7          	jalr	-692(ra) # 80005aa4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d60:	00c00513          	li	a0,12
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	d84080e7          	jalr	-636(ra) # 80004ae8 <_ZL9fibonaccim>
    80004d6c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d70:	00005517          	auipc	a0,0x5
    80004d74:	97850513          	addi	a0,a0,-1672 # 800096e8 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	d2c080e7          	jalr	-724(ra) # 80005aa4 <_Z11printStringPKc>
    80004d80:	00000613          	li	a2,0
    80004d84:	00a00593          	li	a1,10
    80004d88:	0009051b          	sext.w	a0,s2
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	ec4080e7          	jalr	-316(ra) # 80005c50 <_Z8printIntiii>
    80004d94:	00005517          	auipc	a0,0x5
    80004d98:	d4450513          	addi	a0,a0,-700 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	d08080e7          	jalr	-760(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004da4:	00500793          	li	a5,5
    80004da8:	0497e263          	bltu	a5,s1,80004dec <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80004dac:	00005517          	auipc	a0,0x5
    80004db0:	91c50513          	addi	a0,a0,-1764 # 800096c8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	cf0080e7          	jalr	-784(ra) # 80005aa4 <_Z11printStringPKc>
    80004dbc:	00000613          	li	a2,0
    80004dc0:	00a00593          	li	a1,10
    80004dc4:	00048513          	mv	a0,s1
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	e88080e7          	jalr	-376(ra) # 80005c50 <_Z8printIntiii>
    80004dd0:	00005517          	auipc	a0,0x5
    80004dd4:	d0850513          	addi	a0,a0,-760 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	ccc080e7          	jalr	-820(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004de0:	0014849b          	addiw	s1,s1,1
    80004de4:	0ff4f493          	andi	s1,s1,255
    80004de8:	fbdff06f          	j	80004da4 <_ZL11workerBodyCPv+0xfc>
    printString("C finished!\n");
    80004dec:	00005517          	auipc	a0,0x5
    80004df0:	ea450513          	addi	a0,a0,-348 # 80009c90 <_ZTV7WorkerD+0x28>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	cb0080e7          	jalr	-848(ra) # 80005aa4 <_Z11printStringPKc>
    finishedC = true;
    80004dfc:	00100793          	li	a5,1
    80004e00:	00007717          	auipc	a4,0x7
    80004e04:	d0f702a3          	sb	a5,-763(a4) # 8000bb05 <_ZL9finishedC>
    thread_dispatch();
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	bb4080e7          	jalr	-1100(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004e10:	01813083          	ld	ra,24(sp)
    80004e14:	01013403          	ld	s0,16(sp)
    80004e18:	00813483          	ld	s1,8(sp)
    80004e1c:	00013903          	ld	s2,0(sp)
    80004e20:	02010113          	addi	sp,sp,32
    80004e24:	00008067          	ret

0000000080004e28 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004e28:	fe010113          	addi	sp,sp,-32
    80004e2c:	00113c23          	sd	ra,24(sp)
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00913423          	sd	s1,8(sp)
    80004e38:	01213023          	sd	s2,0(sp)
    80004e3c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e40:	00000913          	li	s2,0
    80004e44:	0300006f          	j	80004e74 <_ZL11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004e48:	00178793          	addi	a5,a5,1
    80004e4c:	01d00713          	li	a4,29
    80004e50:	fef77ce3          	bgeu	a4,a5,80004e48 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	b68080e7          	jalr	-1176(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004e5c:	00148493          	addi	s1,s1,1
    80004e60:	00900793          	li	a5,9
    80004e64:	0097e663          	bltu	a5,s1,80004e70 <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004e68:	00000793          	li	a5,0
    80004e6c:	fe1ff06f          	j	80004e4c <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80004e70:	00190913          	addi	s2,s2,1
    80004e74:	00f00793          	li	a5,15
    80004e78:	0527e063          	bltu	a5,s2,80004eb8 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80004e7c:	00005517          	auipc	a0,0x5
    80004e80:	88c50513          	addi	a0,a0,-1908 # 80009708 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	c20080e7          	jalr	-992(ra) # 80005aa4 <_Z11printStringPKc>
    80004e8c:	00000613          	li	a2,0
    80004e90:	00a00593          	li	a1,10
    80004e94:	0009051b          	sext.w	a0,s2
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	db8080e7          	jalr	-584(ra) # 80005c50 <_Z8printIntiii>
    80004ea0:	00005517          	auipc	a0,0x5
    80004ea4:	c3850513          	addi	a0,a0,-968 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	bfc080e7          	jalr	-1028(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004eb0:	00000493          	li	s1,0
    80004eb4:	fadff06f          	j	80004e60 <_ZL11workerBodyBPv+0x38>
    printString("B finished!\n");
    80004eb8:	00005517          	auipc	a0,0x5
    80004ebc:	85850513          	addi	a0,a0,-1960 # 80009710 <_ZZ24debug_print_internal_intmE6digits+0x388>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	be4080e7          	jalr	-1052(ra) # 80005aa4 <_Z11printStringPKc>
    finishedB = true;
    80004ec8:	00100793          	li	a5,1
    80004ecc:	00007717          	auipc	a4,0x7
    80004ed0:	c2f70d23          	sb	a5,-966(a4) # 8000bb06 <_ZL9finishedB>
    thread_dispatch();
    80004ed4:	ffffd097          	auipc	ra,0xffffd
    80004ed8:	ae8080e7          	jalr	-1304(ra) # 800019bc <_Z15thread_dispatchv>
}
    80004edc:	01813083          	ld	ra,24(sp)
    80004ee0:	01013403          	ld	s0,16(sp)
    80004ee4:	00813483          	ld	s1,8(sp)
    80004ee8:	00013903          	ld	s2,0(sp)
    80004eec:	02010113          	addi	sp,sp,32
    80004ef0:	00008067          	ret

0000000080004ef4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ef4:	fe010113          	addi	sp,sp,-32
    80004ef8:	00113c23          	sd	ra,24(sp)
    80004efc:	00813823          	sd	s0,16(sp)
    80004f00:	00913423          	sd	s1,8(sp)
    80004f04:	01213023          	sd	s2,0(sp)
    80004f08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004f0c:	00000913          	li	s2,0
    80004f10:	0300006f          	j	80004f40 <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004f14:	00178793          	addi	a5,a5,1
    80004f18:	01d00713          	li	a4,29
    80004f1c:	fef77ce3          	bgeu	a4,a5,80004f14 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	a9c080e7          	jalr	-1380(ra) # 800019bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004f28:	00148493          	addi	s1,s1,1
    80004f2c:	00900793          	li	a5,9
    80004f30:	0097e663          	bltu	a5,s1,80004f3c <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004f34:	00000793          	li	a5,0
    80004f38:	fe1ff06f          	j	80004f18 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80004f3c:	00190913          	addi	s2,s2,1
    80004f40:	00900793          	li	a5,9
    80004f44:	0527e063          	bltu	a5,s2,80004f84 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	7d850513          	addi	a0,a0,2008 # 80009720 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	b54080e7          	jalr	-1196(ra) # 80005aa4 <_Z11printStringPKc>
    80004f58:	00000613          	li	a2,0
    80004f5c:	00a00593          	li	a1,10
    80004f60:	0009051b          	sext.w	a0,s2
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	cec080e7          	jalr	-788(ra) # 80005c50 <_Z8printIntiii>
    80004f6c:	00005517          	auipc	a0,0x5
    80004f70:	b6c50513          	addi	a0,a0,-1172 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	b30080e7          	jalr	-1232(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004f7c:	00000493          	li	s1,0
    80004f80:	fadff06f          	j	80004f2c <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	77450513          	addi	a0,a0,1908 # 800096f8 <_ZZ24debug_print_internal_intmE6digits+0x370>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	b18080e7          	jalr	-1256(ra) # 80005aa4 <_Z11printStringPKc>
    finishedA = true;
    80004f94:	00100793          	li	a5,1
    80004f98:	00007717          	auipc	a4,0x7
    80004f9c:	b6f707a3          	sb	a5,-1169(a4) # 8000bb07 <_ZL9finishedA>
}
    80004fa0:	01813083          	ld	ra,24(sp)
    80004fa4:	01013403          	ld	s0,16(sp)
    80004fa8:	00813483          	ld	s1,8(sp)
    80004fac:	00013903          	ld	s2,0(sp)
    80004fb0:	02010113          	addi	sp,sp,32
    80004fb4:	00008067          	ret

0000000080004fb8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004fb8:	fd010113          	addi	sp,sp,-48
    80004fbc:	02113423          	sd	ra,40(sp)
    80004fc0:	02813023          	sd	s0,32(sp)
    80004fc4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004fc8:	00000613          	li	a2,0
    80004fcc:	00000597          	auipc	a1,0x0
    80004fd0:	f2858593          	addi	a1,a1,-216 # 80004ef4 <_ZL11workerBodyAPv>
    80004fd4:	fd040513          	addi	a0,s0,-48
    80004fd8:	ffffd097          	auipc	ra,0xffffd
    80004fdc:	934080e7          	jalr	-1740(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	74850513          	addi	a0,a0,1864 # 80009728 <_ZZ24debug_print_internal_intmE6digits+0x3a0>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	abc080e7          	jalr	-1348(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ff0:	00000613          	li	a2,0
    80004ff4:	00000597          	auipc	a1,0x0
    80004ff8:	e3458593          	addi	a1,a1,-460 # 80004e28 <_ZL11workerBodyBPv>
    80004ffc:	fd840513          	addi	a0,s0,-40
    80005000:	ffffd097          	auipc	ra,0xffffd
    80005004:	90c080e7          	jalr	-1780(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005008:	00004517          	auipc	a0,0x4
    8000500c:	73850513          	addi	a0,a0,1848 # 80009740 <_ZZ24debug_print_internal_intmE6digits+0x3b8>
    80005010:	00001097          	auipc	ra,0x1
    80005014:	a94080e7          	jalr	-1388(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005018:	00000613          	li	a2,0
    8000501c:	00000597          	auipc	a1,0x0
    80005020:	c8c58593          	addi	a1,a1,-884 # 80004ca8 <_ZL11workerBodyCPv>
    80005024:	fe040513          	addi	a0,s0,-32
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	8e4080e7          	jalr	-1820(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005030:	00004517          	auipc	a0,0x4
    80005034:	72850513          	addi	a0,a0,1832 # 80009758 <_ZZ24debug_print_internal_intmE6digits+0x3d0>
    80005038:	00001097          	auipc	ra,0x1
    8000503c:	a6c080e7          	jalr	-1428(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005040:	00000613          	li	a2,0
    80005044:	00000597          	auipc	a1,0x0
    80005048:	b1c58593          	addi	a1,a1,-1252 # 80004b60 <_ZL11workerBodyDPv>
    8000504c:	fe840513          	addi	a0,s0,-24
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	8bc080e7          	jalr	-1860(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005058:	00004517          	auipc	a0,0x4
    8000505c:	71850513          	addi	a0,a0,1816 # 80009770 <_ZZ24debug_print_internal_intmE6digits+0x3e8>
    80005060:	00001097          	auipc	ra,0x1
    80005064:	a44080e7          	jalr	-1468(ra) # 80005aa4 <_Z11printStringPKc>
    80005068:	00c0006f          	j	80005074 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000506c:	ffffd097          	auipc	ra,0xffffd
    80005070:	950080e7          	jalr	-1712(ra) # 800019bc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005074:	00007797          	auipc	a5,0x7
    80005078:	a9378793          	addi	a5,a5,-1389 # 8000bb07 <_ZL9finishedA>
    8000507c:	0007c783          	lbu	a5,0(a5)
    80005080:	0ff7f793          	andi	a5,a5,255
    80005084:	fe0784e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    80005088:	00007797          	auipc	a5,0x7
    8000508c:	a7e78793          	addi	a5,a5,-1410 # 8000bb06 <_ZL9finishedB>
    80005090:	0007c783          	lbu	a5,0(a5)
    80005094:	0ff7f793          	andi	a5,a5,255
    80005098:	fc078ae3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    8000509c:	00007797          	auipc	a5,0x7
    800050a0:	a6978793          	addi	a5,a5,-1431 # 8000bb05 <_ZL9finishedC>
    800050a4:	0007c783          	lbu	a5,0(a5)
    800050a8:	0ff7f793          	andi	a5,a5,255
    800050ac:	fc0780e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    800050b0:	00007797          	auipc	a5,0x7
    800050b4:	a5478793          	addi	a5,a5,-1452 # 8000bb04 <_ZL9finishedD>
    800050b8:	0007c783          	lbu	a5,0(a5)
    800050bc:	0ff7f793          	andi	a5,a5,255
    800050c0:	fa0786e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800050c4:	02813083          	ld	ra,40(sp)
    800050c8:	02013403          	ld	s0,32(sp)
    800050cc:	03010113          	addi	sp,sp,48
    800050d0:	00008067          	ret

00000000800050d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800050d4:	fd010113          	addi	sp,sp,-48
    800050d8:	02113423          	sd	ra,40(sp)
    800050dc:	02813023          	sd	s0,32(sp)
    800050e0:	00913c23          	sd	s1,24(sp)
    800050e4:	01213823          	sd	s2,16(sp)
    800050e8:	01313423          	sd	s3,8(sp)
    800050ec:	03010413          	addi	s0,sp,48
    800050f0:	00050993          	mv	s3,a0
    800050f4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800050f8:	00000913          	li	s2,0
    800050fc:	00c0006f          	j	80005108 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005100:	ffffd097          	auipc	ra,0xffffd
    80005104:	8bc080e7          	jalr	-1860(ra) # 800019bc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	b34080e7          	jalr	-1228(ra) # 80001c3c <_Z4getcv>
    80005110:	0005059b          	sext.w	a1,a0
    80005114:	01b00793          	li	a5,27
    80005118:	02f58a63          	beq	a1,a5,8000514c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000511c:	0084b503          	ld	a0,8(s1)
    80005120:	00001097          	auipc	ra,0x1
    80005124:	328080e7          	jalr	808(ra) # 80006448 <_ZN9BufferCPP3putEi>
        i++;
    80005128:	0019079b          	addiw	a5,s2,1
    8000512c:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80005130:	0004a683          	lw	a3,0(s1)
    80005134:	0026971b          	slliw	a4,a3,0x2
    80005138:	00d7073b          	addw	a4,a4,a3
    8000513c:	0017169b          	slliw	a3,a4,0x1
    80005140:	02d7e7bb          	remw	a5,a5,a3
    80005144:	fc0792e3          	bnez	a5,80005108 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005148:	fb9ff06f          	j	80005100 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    8000514c:	00100793          	li	a5,1
    80005150:	00007717          	auipc	a4,0x7
    80005154:	9af72c23          	sw	a5,-1608(a4) # 8000bb08 <_ZL9threadEnd>
    td->buffer->put('!');
    80005158:	0209b783          	ld	a5,32(s3)
    8000515c:	02100593          	li	a1,33
    80005160:	0087b503          	ld	a0,8(a5)
    80005164:	00001097          	auipc	ra,0x1
    80005168:	2e4080e7          	jalr	740(ra) # 80006448 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000516c:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80005170:	0087b503          	ld	a0,8(a5)
    80005174:	00050663          	beqz	a0,80005180 <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
        return sem_signal(myHandle);
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	a24080e7          	jalr	-1500(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005180:	02813083          	ld	ra,40(sp)
    80005184:	02013403          	ld	s0,32(sp)
    80005188:	01813483          	ld	s1,24(sp)
    8000518c:	01013903          	ld	s2,16(sp)
    80005190:	00813983          	ld	s3,8(sp)
    80005194:	03010113          	addi	sp,sp,48
    80005198:	00008067          	ret

000000008000519c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000519c:	fe010113          	addi	sp,sp,-32
    800051a0:	00113c23          	sd	ra,24(sp)
    800051a4:	00813823          	sd	s0,16(sp)
    800051a8:	00913423          	sd	s1,8(sp)
    800051ac:	01213023          	sd	s2,0(sp)
    800051b0:	02010413          	addi	s0,sp,32
    800051b4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800051b8:	00000913          	li	s2,0
    800051bc:	00c0006f          	j	800051c8 <_ZN12ProducerSync8producerEPv+0x2c>
        thread_dispatch();
    800051c0:	ffffc097          	auipc	ra,0xffffc
    800051c4:	7fc080e7          	jalr	2044(ra) # 800019bc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800051c8:	00007797          	auipc	a5,0x7
    800051cc:	94078793          	addi	a5,a5,-1728 # 8000bb08 <_ZL9threadEnd>
    800051d0:	0007a783          	lw	a5,0(a5)
    800051d4:	0007879b          	sext.w	a5,a5
    800051d8:	02079e63          	bnez	a5,80005214 <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    800051dc:	0004a583          	lw	a1,0(s1)
    800051e0:	0305859b          	addiw	a1,a1,48
    800051e4:	0084b503          	ld	a0,8(s1)
    800051e8:	00001097          	auipc	ra,0x1
    800051ec:	260080e7          	jalr	608(ra) # 80006448 <_ZN9BufferCPP3putEi>
        i++;
    800051f0:	0019079b          	addiw	a5,s2,1
    800051f4:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    800051f8:	0004a683          	lw	a3,0(s1)
    800051fc:	0026971b          	slliw	a4,a3,0x2
    80005200:	00d7073b          	addw	a4,a4,a3
    80005204:	0017169b          	slliw	a3,a4,0x1
    80005208:	02d7e7bb          	remw	a5,a5,a3
    8000520c:	fa079ee3          	bnez	a5,800051c8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005210:	fb1ff06f          	j	800051c0 <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80005214:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80005218:	0087b503          	ld	a0,8(a5)
    8000521c:	00050663          	beqz	a0,80005228 <_ZN12ProducerSync8producerEPv+0x8c>
        return sem_signal(myHandle);
    80005220:	ffffd097          	auipc	ra,0xffffd
    80005224:	97c080e7          	jalr	-1668(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005228:	01813083          	ld	ra,24(sp)
    8000522c:	01013403          	ld	s0,16(sp)
    80005230:	00813483          	ld	s1,8(sp)
    80005234:	00013903          	ld	s2,0(sp)
    80005238:	02010113          	addi	sp,sp,32
    8000523c:	00008067          	ret

0000000080005240 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005240:	fd010113          	addi	sp,sp,-48
    80005244:	02113423          	sd	ra,40(sp)
    80005248:	02813023          	sd	s0,32(sp)
    8000524c:	00913c23          	sd	s1,24(sp)
    80005250:	01213823          	sd	s2,16(sp)
    80005254:	01313423          	sd	s3,8(sp)
    80005258:	01413023          	sd	s4,0(sp)
    8000525c:	03010413          	addi	s0,sp,48
    80005260:	00050993          	mv	s3,a0
    80005264:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005268:	00000a13          	li	s4,0
    8000526c:	01c0006f          	j	80005288 <_ZN12ConsumerSync8consumerEPv+0x48>
        thread_dispatch();
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	74c080e7          	jalr	1868(ra) # 800019bc <_Z15thread_dispatchv>
    80005278:	0580006f          	j	800052d0 <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    8000527c:	00a00513          	li	a0,10
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	a0c080e7          	jalr	-1524(ra) # 80001c8c <_Z4putcc>
    while (!threadEnd) {
    80005288:	00007797          	auipc	a5,0x7
    8000528c:	88078793          	addi	a5,a5,-1920 # 8000bb08 <_ZL9threadEnd>
    80005290:	0007a783          	lw	a5,0(a5)
    80005294:	0007879b          	sext.w	a5,a5
    80005298:	04079463          	bnez	a5,800052e0 <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    8000529c:	00893503          	ld	a0,8(s2)
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	258080e7          	jalr	600(ra) # 800064f8 <_ZN9BufferCPP3getEv>
        i++;
    800052a8:	001a049b          	addiw	s1,s4,1
    800052ac:	00048a1b          	sext.w	s4,s1
        putc(key);
    800052b0:	0ff57513          	andi	a0,a0,255
    800052b4:	ffffd097          	auipc	ra,0xffffd
    800052b8:	9d8080e7          	jalr	-1576(ra) # 80001c8c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800052bc:	00092703          	lw	a4,0(s2)
    800052c0:	0027179b          	slliw	a5,a4,0x2
    800052c4:	00e787bb          	addw	a5,a5,a4
    800052c8:	02f4e7bb          	remw	a5,s1,a5
    800052cc:	fa0782e3          	beqz	a5,80005270 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800052d0:	05000793          	li	a5,80
    800052d4:	02f4e4bb          	remw	s1,s1,a5
    800052d8:	fa0498e3          	bnez	s1,80005288 <_ZN12ConsumerSync8consumerEPv+0x48>
    800052dc:	fa1ff06f          	j	8000527c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    800052e0:	0209b783          	ld	a5,32(s3)
    800052e4:	0087b503          	ld	a0,8(a5)
    800052e8:	00001097          	auipc	ra,0x1
    800052ec:	2bc080e7          	jalr	700(ra) # 800065a4 <_ZN9BufferCPP6getCntEv>
    800052f0:	02a05263          	blez	a0,80005314 <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    800052f4:	0209b783          	ld	a5,32(s3)
    800052f8:	0087b503          	ld	a0,8(a5)
    800052fc:	00001097          	auipc	ra,0x1
    80005300:	1fc080e7          	jalr	508(ra) # 800064f8 <_ZN9BufferCPP3getEv>
    static void putc(char c) { putc(c); };
    80005304:	0ff57513          	andi	a0,a0,255
    80005308:	fffff097          	auipc	ra,0xfffff
    8000530c:	cd8080e7          	jalr	-808(ra) # 80003fe0 <_ZN7Console4putcEc>
    80005310:	fd1ff06f          	j	800052e0 <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    80005314:	01093783          	ld	a5,16(s2)
        if (myHandle == nullptr) {
    80005318:	0087b503          	ld	a0,8(a5)
    8000531c:	00050663          	beqz	a0,80005328 <_ZN12ConsumerSync8consumerEPv+0xe8>
        return sem_signal(myHandle);
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	87c080e7          	jalr	-1924(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005328:	02813083          	ld	ra,40(sp)
    8000532c:	02013403          	ld	s0,32(sp)
    80005330:	01813483          	ld	s1,24(sp)
    80005334:	01013903          	ld	s2,16(sp)
    80005338:	00813983          	ld	s3,8(sp)
    8000533c:	00013a03          	ld	s4,0(sp)
    80005340:	03010113          	addi	sp,sp,48
    80005344:	00008067          	ret

0000000080005348 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005348:	f9010113          	addi	sp,sp,-112
    8000534c:	06113423          	sd	ra,104(sp)
    80005350:	06813023          	sd	s0,96(sp)
    80005354:	04913c23          	sd	s1,88(sp)
    80005358:	05213823          	sd	s2,80(sp)
    8000535c:	05313423          	sd	s3,72(sp)
    80005360:	05413023          	sd	s4,64(sp)
    80005364:	03513c23          	sd	s5,56(sp)
    80005368:	03613823          	sd	s6,48(sp)
    8000536c:	03713423          	sd	s7,40(sp)
    80005370:	03813023          	sd	s8,32(sp)
    80005374:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005378:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000537c:	00004517          	auipc	a0,0x4
    80005380:	4bc50513          	addi	a0,a0,1212 # 80009838 <_ZTV8Consumer+0x28>
    80005384:	00000097          	auipc	ra,0x0
    80005388:	720080e7          	jalr	1824(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    8000538c:	01e00593          	li	a1,30
    80005390:	f9040513          	addi	a0,s0,-112
    80005394:	00000097          	auipc	ra,0x0
    80005398:	798080e7          	jalr	1944(ra) # 80005b2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000539c:	f9040513          	addi	a0,s0,-112
    800053a0:	00001097          	auipc	ra,0x1
    800053a4:	860080e7          	jalr	-1952(ra) # 80005c00 <_Z11stringToIntPKc>
    800053a8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800053ac:	00004517          	auipc	a0,0x4
    800053b0:	4ac50513          	addi	a0,a0,1196 # 80009858 <_ZTV8Consumer+0x48>
    800053b4:	00000097          	auipc	ra,0x0
    800053b8:	6f0080e7          	jalr	1776(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    800053bc:	01e00593          	li	a1,30
    800053c0:	f9040513          	addi	a0,s0,-112
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	768080e7          	jalr	1896(ra) # 80005b2c <_Z9getStringPci>
    n = stringToInt(input);
    800053cc:	f9040513          	addi	a0,s0,-112
    800053d0:	00001097          	auipc	ra,0x1
    800053d4:	830080e7          	jalr	-2000(ra) # 80005c00 <_Z11stringToIntPKc>
    800053d8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800053dc:	00004517          	auipc	a0,0x4
    800053e0:	49c50513          	addi	a0,a0,1180 # 80009878 <_ZTV8Consumer+0x68>
    800053e4:	00000097          	auipc	ra,0x0
    800053e8:	6c0080e7          	jalr	1728(ra) # 80005aa4 <_Z11printStringPKc>
    800053ec:	00000613          	li	a2,0
    800053f0:	00a00593          	li	a1,10
    800053f4:	00090513          	mv	a0,s2
    800053f8:	00001097          	auipc	ra,0x1
    800053fc:	858080e7          	jalr	-1960(ra) # 80005c50 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005400:	00004517          	auipc	a0,0x4
    80005404:	49050513          	addi	a0,a0,1168 # 80009890 <_ZTV8Consumer+0x80>
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	69c080e7          	jalr	1692(ra) # 80005aa4 <_Z11printStringPKc>
    80005410:	00000613          	li	a2,0
    80005414:	00a00593          	li	a1,10
    80005418:	00048513          	mv	a0,s1
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	834080e7          	jalr	-1996(ra) # 80005c50 <_Z8printIntiii>
    printString(".\n");
    80005424:	00004517          	auipc	a0,0x4
    80005428:	48450513          	addi	a0,a0,1156 # 800098a8 <_ZTV8Consumer+0x98>
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	678080e7          	jalr	1656(ra) # 80005aa4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005434:	0324c463          	blt	s1,s2,8000545c <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80005438:	03205c63          	blez	s2,80005470 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    8000543c:	03800513          	li	a0,56
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	f44080e7          	jalr	-188(ra) # 80002384 <_Znwm>
    80005448:	00050a93          	mv	s5,a0
    8000544c:	00048593          	mv	a1,s1
    80005450:	00001097          	auipc	ra,0x1
    80005454:	e44080e7          	jalr	-444(ra) # 80006294 <_ZN9BufferCPPC1Ei>
    80005458:	0300006f          	j	80005488 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000545c:	00004517          	auipc	a0,0x4
    80005460:	45450513          	addi	a0,a0,1108 # 800098b0 <_ZTV8Consumer+0xa0>
    80005464:	00000097          	auipc	ra,0x0
    80005468:	640080e7          	jalr	1600(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    8000546c:	0140006f          	j	80005480 <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005470:	00004517          	auipc	a0,0x4
    80005474:	48050513          	addi	a0,a0,1152 # 800098f0 <_ZTV8Consumer+0xe0>
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	62c080e7          	jalr	1580(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    80005480:	000b8113          	mv	sp,s7
    80005484:	3340006f          	j	800057b8 <_Z29producerConsumer_CPP_Sync_APIv+0x470>
    waitForAll = new Semaphore(0);
    80005488:	01000513          	li	a0,16
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	ef8080e7          	jalr	-264(ra) # 80002384 <_Znwm>
    80005494:	00050493          	mv	s1,a0
    Semaphore(unsigned init = 1) {
    80005498:	00004797          	auipc	a5,0x4
    8000549c:	31878793          	addi	a5,a5,792 # 800097b0 <_ZTV9Semaphore+0x10>
    800054a0:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800054a4:	00000593          	li	a1,0
    800054a8:	00850513          	addi	a0,a0,8
    800054ac:	ffffc097          	auipc	ra,0xffffc
    800054b0:	55c080e7          	jalr	1372(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    800054b4:	00050463          	beqz	a0,800054bc <_Z29producerConsumer_CPP_Sync_APIv+0x174>
            myHandle = nullptr;
    800054b8:	0004b423          	sd	zero,8(s1)
    800054bc:	00006797          	auipc	a5,0x6
    800054c0:	6497ba23          	sd	s1,1620(a5) # 8000bb10 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800054c4:	00391793          	slli	a5,s2,0x3
    800054c8:	00f78793          	addi	a5,a5,15
    800054cc:	ff07f793          	andi	a5,a5,-16
    800054d0:	40f10133          	sub	sp,sp,a5
    800054d4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800054d8:	0019079b          	addiw	a5,s2,1
    800054dc:	00179713          	slli	a4,a5,0x1
    800054e0:	00f70733          	add	a4,a4,a5
    800054e4:	00371793          	slli	a5,a4,0x3
    800054e8:	00f78793          	addi	a5,a5,15
    800054ec:	ff07f793          	andi	a5,a5,-16
    800054f0:	40f10133          	sub	sp,sp,a5
    800054f4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800054f8:	00191c13          	slli	s8,s2,0x1
    800054fc:	012c0733          	add	a4,s8,s2
    80005500:	00371793          	slli	a5,a4,0x3
    80005504:	00fa07b3          	add	a5,s4,a5
    80005508:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000550c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005510:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005514:	02800513          	li	a0,40
    80005518:	ffffd097          	auipc	ra,0xffffd
    8000551c:	e6c080e7          	jalr	-404(ra) # 80002384 <_Znwm>
    80005520:	00050b13          	mv	s6,a0
    80005524:	012c0c33          	add	s8,s8,s2
    80005528:	003c1793          	slli	a5,s8,0x3
    8000552c:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80005530:	00053423          	sd	zero,8(a0)
    80005534:	00053823          	sd	zero,16(a0)
    80005538:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000553c:	00004717          	auipc	a4,0x4
    80005540:	7c470713          	addi	a4,a4,1988 # 80009d00 <_ZTV12ConsumerSync+0x10>
    80005544:	00e53023          	sd	a4,0(a0)
    80005548:	02f53023          	sd	a5,32(a0)
        debug_print("CPP API: Starting thread\n");
    8000554c:	00004517          	auipc	a0,0x4
    80005550:	3d450513          	addi	a0,a0,980 # 80009920 <_ZTV8Consumer+0x110>
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	fa0080e7          	jalr	-96(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    8000555c:	00004517          	auipc	a0,0x4
    80005560:	3e450513          	addi	a0,a0,996 # 80009940 <_ZTV8Consumer+0x130>
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	f90080e7          	jalr	-112(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)this);
    8000556c:	000b0513          	mv	a0,s6
    80005570:	ffffd097          	auipc	ra,0xffffd
    80005574:	0cc080e7          	jalr	204(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    80005578:	00004517          	auipc	a0,0x4
    8000557c:	56050513          	addi	a0,a0,1376 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80005580:	ffffd097          	auipc	ra,0xffffd
    80005584:	f74080e7          	jalr	-140(ra) # 800024f4 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80005588:	000b0613          	mv	a2,s6
    8000558c:	ffffc597          	auipc	a1,0xffffc
    80005590:	f4458593          	addi	a1,a1,-188 # 800014d0 <_ZN6Thread9body_execEPv>
    80005594:	008b0513          	addi	a0,s6,8
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	374080e7          	jalr	884(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    800055a0:	00051e63          	bnez	a0,800055bc <_Z29producerConsumer_CPP_Sync_APIv+0x274>
        debug_print("CPP API: Thread started\n");
    800055a4:	00004517          	auipc	a0,0x4
    800055a8:	3b450513          	addi	a0,a0,948 # 80009958 <_ZTV8Consumer+0x148>
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	f48080e7          	jalr	-184(ra) # 800024f4 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    800055b4:	00000493          	li	s1,0
    800055b8:	0c80006f          	j	80005680 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
            myHandle = nullptr;
    800055bc:	000b3423          	sd	zero,8(s6)
            return -1;
    800055c0:	ff5ff06f          	j	800055b4 <_Z29producerConsumer_CPP_Sync_APIv+0x26c>
            threads[i] = new ProducerSync(data+i);
    800055c4:	02800513          	li	a0,40
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	dbc080e7          	jalr	-580(ra) # 80002384 <_Znwm>
    800055d0:	00149713          	slli	a4,s1,0x1
    800055d4:	00970733          	add	a4,a4,s1
    800055d8:	00371793          	slli	a5,a4,0x3
    800055dc:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800055e0:	00053423          	sd	zero,8(a0)
    800055e4:	00053823          	sd	zero,16(a0)
    800055e8:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800055ec:	00004717          	auipc	a4,0x4
    800055f0:	6ec70713          	addi	a4,a4,1772 # 80009cd8 <_ZTV12ProducerSync+0x10>
    800055f4:	00e53023          	sd	a4,0(a0)
    800055f8:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    800055fc:	00349793          	slli	a5,s1,0x3
    80005600:	00f987b3          	add	a5,s3,a5
    80005604:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80005608:	00349793          	slli	a5,s1,0x3
    8000560c:	00f987b3          	add	a5,s3,a5
    80005610:	0007bc03          	ld	s8,0(a5)
        debug_print("CPP API: Starting thread\n");
    80005614:	00004517          	auipc	a0,0x4
    80005618:	30c50513          	addi	a0,a0,780 # 80009920 <_ZTV8Consumer+0x110>
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	ed8080e7          	jalr	-296(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80005624:	00004517          	auipc	a0,0x4
    80005628:	31c50513          	addi	a0,a0,796 # 80009940 <_ZTV8Consumer+0x130>
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	ec8080e7          	jalr	-312(ra) # 800024f4 <_Z11debug_printPKc>
        debug_print((uint64)this);
    80005634:	000c0513          	mv	a0,s8
    80005638:	ffffd097          	auipc	ra,0xffffd
    8000563c:	004080e7          	jalr	4(ra) # 8000263c <_Z11debug_printm>
        debug_print("\n");
    80005640:	00004517          	auipc	a0,0x4
    80005644:	49850513          	addi	a0,a0,1176 # 80009ad8 <_ZTV8Consumer+0x2c8>
    80005648:	ffffd097          	auipc	ra,0xffffd
    8000564c:	eac080e7          	jalr	-340(ra) # 800024f4 <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80005650:	000c0613          	mv	a2,s8
    80005654:	ffffc597          	auipc	a1,0xffffc
    80005658:	e7c58593          	addi	a1,a1,-388 # 800014d0 <_ZN6Thread9body_execEPv>
    8000565c:	008c0513          	addi	a0,s8,8
    80005660:	ffffc097          	auipc	ra,0xffffc
    80005664:	2ac080e7          	jalr	684(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    80005668:	08051863          	bnez	a0,800056f8 <_Z29producerConsumer_CPP_Sync_APIv+0x3b0>
        debug_print("CPP API: Thread started\n");
    8000566c:	00004517          	auipc	a0,0x4
    80005670:	2ec50513          	addi	a0,a0,748 # 80009958 <_ZTV8Consumer+0x148>
    80005674:	ffffd097          	auipc	ra,0xffffd
    80005678:	e80080e7          	jalr	-384(ra) # 800024f4 <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    8000567c:	0014849b          	addiw	s1,s1,1
    80005680:	0924d063          	bge	s1,s2,80005700 <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
        data[i].id = i;
    80005684:	00149713          	slli	a4,s1,0x1
    80005688:	00970733          	add	a4,a4,s1
    8000568c:	00371793          	slli	a5,a4,0x3
    80005690:	00fa07b3          	add	a5,s4,a5
    80005694:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005698:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000569c:	00006717          	auipc	a4,0x6
    800056a0:	47470713          	addi	a4,a4,1140 # 8000bb10 <_ZL10waitForAll>
    800056a4:	00073703          	ld	a4,0(a4)
    800056a8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800056ac:	f0904ce3          	bgtz	s1,800055c4 <_Z29producerConsumer_CPP_Sync_APIv+0x27c>
            threads[i] = new ProducerKeyboard(data+i);
    800056b0:	02800513          	li	a0,40
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	cd0080e7          	jalr	-816(ra) # 80002384 <_Znwm>
    800056bc:	00149713          	slli	a4,s1,0x1
    800056c0:	00970733          	add	a4,a4,s1
    800056c4:	00371793          	slli	a5,a4,0x3
    800056c8:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800056cc:	00053423          	sd	zero,8(a0)
    800056d0:	00053823          	sd	zero,16(a0)
    800056d4:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800056d8:	00004717          	auipc	a4,0x4
    800056dc:	5d870713          	addi	a4,a4,1496 # 80009cb0 <_ZTV16ProducerKeyboard+0x10>
    800056e0:	00e53023          	sd	a4,0(a0)
    800056e4:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    800056e8:	00349793          	slli	a5,s1,0x3
    800056ec:	00f987b3          	add	a5,s3,a5
    800056f0:	00a7b023          	sd	a0,0(a5)
    800056f4:	f15ff06f          	j	80005608 <_Z29producerConsumer_CPP_Sync_APIv+0x2c0>
            myHandle = nullptr;
    800056f8:	000c3423          	sd	zero,8(s8)
            return -1;
    800056fc:	f81ff06f          	j	8000567c <_Z29producerConsumer_CPP_Sync_APIv+0x334>
        thread_dispatch();
    80005700:	ffffc097          	auipc	ra,0xffffc
    80005704:	2bc080e7          	jalr	700(ra) # 800019bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005708:	00000493          	li	s1,0
    8000570c:	0080006f          	j	80005714 <_Z29producerConsumer_CPP_Sync_APIv+0x3cc>
    80005710:	0014849b          	addiw	s1,s1,1
    80005714:	02994263          	blt	s2,s1,80005738 <_Z29producerConsumer_CPP_Sync_APIv+0x3f0>
        waitForAll->wait();
    80005718:	00006797          	auipc	a5,0x6
    8000571c:	3f878793          	addi	a5,a5,1016 # 8000bb10 <_ZL10waitForAll>
    80005720:	0007b783          	ld	a5,0(a5)
        if (myHandle == nullptr) {
    80005724:	0087b503          	ld	a0,8(a5)
    80005728:	fe0504e3          	beqz	a0,80005710 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
        return sem_wait(myHandle);
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	420080e7          	jalr	1056(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    80005734:	fddff06f          	j	80005710 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
    for (int i = 0; i < threadNum; i++) {
    80005738:	00000493          	li	s1,0
    8000573c:	0080006f          	j	80005744 <_Z29producerConsumer_CPP_Sync_APIv+0x3fc>
    80005740:	0014849b          	addiw	s1,s1,1
    80005744:	0324d263          	bge	s1,s2,80005768 <_Z29producerConsumer_CPP_Sync_APIv+0x420>
        delete threads[i];
    80005748:	00349793          	slli	a5,s1,0x3
    8000574c:	00f987b3          	add	a5,s3,a5
    80005750:	0007b503          	ld	a0,0(a5)
    80005754:	fe0506e3          	beqz	a0,80005740 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    80005758:	00053783          	ld	a5,0(a0)
    8000575c:	0087b783          	ld	a5,8(a5)
    80005760:	000780e7          	jalr	a5
    80005764:	fddff06f          	j	80005740 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    delete consumerThread;
    80005768:	000b0a63          	beqz	s6,8000577c <_Z29producerConsumer_CPP_Sync_APIv+0x434>
    8000576c:	000b3783          	ld	a5,0(s6)
    80005770:	0087b783          	ld	a5,8(a5)
    80005774:	000b0513          	mv	a0,s6
    80005778:	000780e7          	jalr	a5
    delete waitForAll;
    8000577c:	00006797          	auipc	a5,0x6
    80005780:	39478793          	addi	a5,a5,916 # 8000bb10 <_ZL10waitForAll>
    80005784:	0007b503          	ld	a0,0(a5)
    80005788:	00050863          	beqz	a0,80005798 <_Z29producerConsumer_CPP_Sync_APIv+0x450>
    8000578c:	00053783          	ld	a5,0(a0)
    80005790:	0087b783          	ld	a5,8(a5)
    80005794:	000780e7          	jalr	a5
    delete buffer;
    80005798:	000a8e63          	beqz	s5,800057b4 <_Z29producerConsumer_CPP_Sync_APIv+0x46c>
    8000579c:	000a8513          	mv	a0,s5
    800057a0:	00001097          	auipc	ra,0x1
    800057a4:	eac080e7          	jalr	-340(ra) # 8000664c <_ZN9BufferCPPD1Ev>
    800057a8:	000a8513          	mv	a0,s5
    800057ac:	ffffd097          	auipc	ra,0xffffd
    800057b0:	c58080e7          	jalr	-936(ra) # 80002404 <_ZdlPv>
    800057b4:	000b8113          	mv	sp,s7

}
    800057b8:	f9040113          	addi	sp,s0,-112
    800057bc:	06813083          	ld	ra,104(sp)
    800057c0:	06013403          	ld	s0,96(sp)
    800057c4:	05813483          	ld	s1,88(sp)
    800057c8:	05013903          	ld	s2,80(sp)
    800057cc:	04813983          	ld	s3,72(sp)
    800057d0:	04013a03          	ld	s4,64(sp)
    800057d4:	03813a83          	ld	s5,56(sp)
    800057d8:	03013b03          	ld	s6,48(sp)
    800057dc:	02813b83          	ld	s7,40(sp)
    800057e0:	02013c03          	ld	s8,32(sp)
    800057e4:	07010113          	addi	sp,sp,112
    800057e8:	00008067          	ret
    800057ec:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800057f0:	000a8513          	mv	a0,s5
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	c10080e7          	jalr	-1008(ra) # 80002404 <_ZdlPv>
    800057fc:	00048513          	mv	a0,s1
    80005800:	00007097          	auipc	ra,0x7
    80005804:	448080e7          	jalr	1096(ra) # 8000cc48 <_Unwind_Resume>
    80005808:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000580c:	00048513          	mv	a0,s1
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	bf4080e7          	jalr	-1036(ra) # 80002404 <_ZdlPv>
    80005818:	00090513          	mv	a0,s2
    8000581c:	00007097          	auipc	ra,0x7
    80005820:	42c080e7          	jalr	1068(ra) # 8000cc48 <_Unwind_Resume>

0000000080005824 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005824:	ff010113          	addi	sp,sp,-16
    80005828:	00813423          	sd	s0,8(sp)
    8000582c:	01010413          	addi	s0,sp,16
    80005830:	00813403          	ld	s0,8(sp)
    80005834:	01010113          	addi	sp,sp,16
    80005838:	00008067          	ret

000000008000583c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000583c:	ff010113          	addi	sp,sp,-16
    80005840:	00813423          	sd	s0,8(sp)
    80005844:	01010413          	addi	s0,sp,16
    80005848:	00813403          	ld	s0,8(sp)
    8000584c:	01010113          	addi	sp,sp,16
    80005850:	00008067          	ret

0000000080005854 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005854:	ff010113          	addi	sp,sp,-16
    80005858:	00813423          	sd	s0,8(sp)
    8000585c:	01010413          	addi	s0,sp,16
    80005860:	00813403          	ld	s0,8(sp)
    80005864:	01010113          	addi	sp,sp,16
    80005868:	00008067          	ret

000000008000586c <_ZN12ConsumerSyncD0Ev>:
class ConsumerSync:public Thread {
    8000586c:	ff010113          	addi	sp,sp,-16
    80005870:	00113423          	sd	ra,8(sp)
    80005874:	00813023          	sd	s0,0(sp)
    80005878:	01010413          	addi	s0,sp,16
    8000587c:	ffffd097          	auipc	ra,0xffffd
    80005880:	b88080e7          	jalr	-1144(ra) # 80002404 <_ZdlPv>
    80005884:	00813083          	ld	ra,8(sp)
    80005888:	00013403          	ld	s0,0(sp)
    8000588c:	01010113          	addi	sp,sp,16
    80005890:	00008067          	ret

0000000080005894 <_ZN12ProducerSyncD0Ev>:
class ProducerSync:public Thread {
    80005894:	ff010113          	addi	sp,sp,-16
    80005898:	00113423          	sd	ra,8(sp)
    8000589c:	00813023          	sd	s0,0(sp)
    800058a0:	01010413          	addi	s0,sp,16
    800058a4:	ffffd097          	auipc	ra,0xffffd
    800058a8:	b60080e7          	jalr	-1184(ra) # 80002404 <_ZdlPv>
    800058ac:	00813083          	ld	ra,8(sp)
    800058b0:	00013403          	ld	s0,0(sp)
    800058b4:	01010113          	addi	sp,sp,16
    800058b8:	00008067          	ret

00000000800058bc <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    800058bc:	ff010113          	addi	sp,sp,-16
    800058c0:	00113423          	sd	ra,8(sp)
    800058c4:	00813023          	sd	s0,0(sp)
    800058c8:	01010413          	addi	s0,sp,16
    800058cc:	ffffd097          	auipc	ra,0xffffd
    800058d0:	b38080e7          	jalr	-1224(ra) # 80002404 <_ZdlPv>
    800058d4:	00813083          	ld	ra,8(sp)
    800058d8:	00013403          	ld	s0,0(sp)
    800058dc:	01010113          	addi	sp,sp,16
    800058e0:	00008067          	ret

00000000800058e4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800058e4:	ff010113          	addi	sp,sp,-16
    800058e8:	00113423          	sd	ra,8(sp)
    800058ec:	00813023          	sd	s0,0(sp)
    800058f0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800058f4:	02053583          	ld	a1,32(a0)
    800058f8:	fffff097          	auipc	ra,0xfffff
    800058fc:	7dc080e7          	jalr	2012(ra) # 800050d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005900:	00813083          	ld	ra,8(sp)
    80005904:	00013403          	ld	s0,0(sp)
    80005908:	01010113          	addi	sp,sp,16
    8000590c:	00008067          	ret

0000000080005910 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005910:	ff010113          	addi	sp,sp,-16
    80005914:	00113423          	sd	ra,8(sp)
    80005918:	00813023          	sd	s0,0(sp)
    8000591c:	01010413          	addi	s0,sp,16
        producer(td);
    80005920:	02053583          	ld	a1,32(a0)
    80005924:	00000097          	auipc	ra,0x0
    80005928:	878080e7          	jalr	-1928(ra) # 8000519c <_ZN12ProducerSync8producerEPv>
    }
    8000592c:	00813083          	ld	ra,8(sp)
    80005930:	00013403          	ld	s0,0(sp)
    80005934:	01010113          	addi	sp,sp,16
    80005938:	00008067          	ret

000000008000593c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000593c:	ff010113          	addi	sp,sp,-16
    80005940:	00113423          	sd	ra,8(sp)
    80005944:	00813023          	sd	s0,0(sp)
    80005948:	01010413          	addi	s0,sp,16
        consumer(td);
    8000594c:	02053583          	ld	a1,32(a0)
    80005950:	00000097          	auipc	ra,0x0
    80005954:	8f0080e7          	jalr	-1808(ra) # 80005240 <_ZN12ConsumerSync8consumerEPv>
    }
    80005958:	00813083          	ld	ra,8(sp)
    8000595c:	00013403          	ld	s0,0(sp)
    80005960:	01010113          	addi	sp,sp,16
    80005964:	00008067          	ret

0000000080005968 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005968:	fe010113          	addi	sp,sp,-32
    8000596c:	00113c23          	sd	ra,24(sp)
    80005970:	00813823          	sd	s0,16(sp)
    80005974:	00913423          	sd	s1,8(sp)
    80005978:	01213023          	sd	s2,0(sp)
    8000597c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005980:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005984:	00600493          	li	s1,6
    while (--i > 0) {
    80005988:	fff4849b          	addiw	s1,s1,-1
    8000598c:	04905463          	blez	s1,800059d4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005990:	00004517          	auipc	a0,0x4
    80005994:	38850513          	addi	a0,a0,904 # 80009d18 <_ZTV12ConsumerSync+0x28>
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	10c080e7          	jalr	268(ra) # 80005aa4 <_Z11printStringPKc>
        printInt(sleep_time);
    800059a0:	00000613          	li	a2,0
    800059a4:	00a00593          	li	a1,10
    800059a8:	0009051b          	sext.w	a0,s2
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	2a4080e7          	jalr	676(ra) # 80005c50 <_Z8printIntiii>
        printString(" !\n");
    800059b4:	00004517          	auipc	a0,0x4
    800059b8:	36c50513          	addi	a0,a0,876 # 80009d20 <_ZTV12ConsumerSync+0x30>
    800059bc:	00000097          	auipc	ra,0x0
    800059c0:	0e8080e7          	jalr	232(ra) # 80005aa4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800059c4:	00090513          	mv	a0,s2
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	224080e7          	jalr	548(ra) # 80001bec <_Z10time_sleepm>
    while (--i > 0) {
    800059d0:	fb9ff06f          	j	80005988 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800059d4:	00a00793          	li	a5,10
    800059d8:	02f95933          	divu	s2,s2,a5
    800059dc:	fff90913          	addi	s2,s2,-1
    800059e0:	00006797          	auipc	a5,0x6
    800059e4:	13878793          	addi	a5,a5,312 # 8000bb18 <_ZL8finished>
    800059e8:	01278933          	add	s2,a5,s2
    800059ec:	00100793          	li	a5,1
    800059f0:	00f90023          	sb	a5,0(s2)
}
    800059f4:	01813083          	ld	ra,24(sp)
    800059f8:	01013403          	ld	s0,16(sp)
    800059fc:	00813483          	ld	s1,8(sp)
    80005a00:	00013903          	ld	s2,0(sp)
    80005a04:	02010113          	addi	sp,sp,32
    80005a08:	00008067          	ret

0000000080005a0c <_Z12testSleepingv>:

void testSleeping() {
    80005a0c:	fc010113          	addi	sp,sp,-64
    80005a10:	02113c23          	sd	ra,56(sp)
    80005a14:	02813823          	sd	s0,48(sp)
    80005a18:	02913423          	sd	s1,40(sp)
    80005a1c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005a20:	00a00793          	li	a5,10
    80005a24:	fcf43823          	sd	a5,-48(s0)
    80005a28:	01400793          	li	a5,20
    80005a2c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005a30:	00000493          	li	s1,0
    80005a34:	00100793          	li	a5,1
    80005a38:	0297c863          	blt	a5,s1,80005a68 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005a3c:	00349513          	slli	a0,s1,0x3
    80005a40:	fd040793          	addi	a5,s0,-48
    80005a44:	00a78633          	add	a2,a5,a0
    80005a48:	00000597          	auipc	a1,0x0
    80005a4c:	f2058593          	addi	a1,a1,-224 # 80005968 <_ZL9sleepyRunPv>
    80005a50:	fc040793          	addi	a5,s0,-64
    80005a54:	00a78533          	add	a0,a5,a0
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	eb4080e7          	jalr	-332(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005a60:	0014849b          	addiw	s1,s1,1
    80005a64:	fd1ff06f          	j	80005a34 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    80005a68:	00006797          	auipc	a5,0x6
    80005a6c:	0b078793          	addi	a5,a5,176 # 8000bb18 <_ZL8finished>
    80005a70:	0007c783          	lbu	a5,0(a5)
    80005a74:	0ff7f793          	andi	a5,a5,255
    80005a78:	fe0788e3          	beqz	a5,80005a68 <_Z12testSleepingv+0x5c>
    80005a7c:	00006797          	auipc	a5,0x6
    80005a80:	09c78793          	addi	a5,a5,156 # 8000bb18 <_ZL8finished>
    80005a84:	0017c783          	lbu	a5,1(a5)
    80005a88:	0ff7f793          	andi	a5,a5,255
    80005a8c:	fc078ee3          	beqz	a5,80005a68 <_Z12testSleepingv+0x5c>
}
    80005a90:	03813083          	ld	ra,56(sp)
    80005a94:	03013403          	ld	s0,48(sp)
    80005a98:	02813483          	ld	s1,40(sp)
    80005a9c:	04010113          	addi	sp,sp,64
    80005aa0:	00008067          	ret

0000000080005aa4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005aa4:	fe010113          	addi	sp,sp,-32
    80005aa8:	00113c23          	sd	ra,24(sp)
    80005aac:	00813823          	sd	s0,16(sp)
    80005ab0:	00913423          	sd	s1,8(sp)
    80005ab4:	02010413          	addi	s0,sp,32
    80005ab8:	00050493          	mv	s1,a0
    LOCK();
    80005abc:	00100613          	li	a2,1
    80005ac0:	00000593          	li	a1,0
    80005ac4:	00006517          	auipc	a0,0x6
    80005ac8:	05c50513          	addi	a0,a0,92 # 8000bb20 <lockPrint>
    80005acc:	ffffb097          	auipc	ra,0xffffb
    80005ad0:	658080e7          	jalr	1624(ra) # 80001124 <copy_and_swap>
    80005ad4:	00050863          	beqz	a0,80005ae4 <_Z11printStringPKc+0x40>
    80005ad8:	ffffc097          	auipc	ra,0xffffc
    80005adc:	ee4080e7          	jalr	-284(ra) # 800019bc <_Z15thread_dispatchv>
    80005ae0:	fddff06f          	j	80005abc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ae4:	0004c503          	lbu	a0,0(s1)
    80005ae8:	00050a63          	beqz	a0,80005afc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	1a0080e7          	jalr	416(ra) # 80001c8c <_Z4putcc>
        string++;
    80005af4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005af8:	fedff06f          	j	80005ae4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005afc:	00000613          	li	a2,0
    80005b00:	00100593          	li	a1,1
    80005b04:	00006517          	auipc	a0,0x6
    80005b08:	01c50513          	addi	a0,a0,28 # 8000bb20 <lockPrint>
    80005b0c:	ffffb097          	auipc	ra,0xffffb
    80005b10:	618080e7          	jalr	1560(ra) # 80001124 <copy_and_swap>
    80005b14:	fe0514e3          	bnez	a0,80005afc <_Z11printStringPKc+0x58>
}
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	00813483          	ld	s1,8(sp)
    80005b24:	02010113          	addi	sp,sp,32
    80005b28:	00008067          	ret

0000000080005b2c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005b2c:	fd010113          	addi	sp,sp,-48
    80005b30:	02113423          	sd	ra,40(sp)
    80005b34:	02813023          	sd	s0,32(sp)
    80005b38:	00913c23          	sd	s1,24(sp)
    80005b3c:	01213823          	sd	s2,16(sp)
    80005b40:	01313423          	sd	s3,8(sp)
    80005b44:	01413023          	sd	s4,0(sp)
    80005b48:	03010413          	addi	s0,sp,48
    80005b4c:	00050993          	mv	s3,a0
    80005b50:	00058a13          	mv	s4,a1
    LOCK();
    80005b54:	00100613          	li	a2,1
    80005b58:	00000593          	li	a1,0
    80005b5c:	00006517          	auipc	a0,0x6
    80005b60:	fc450513          	addi	a0,a0,-60 # 8000bb20 <lockPrint>
    80005b64:	ffffb097          	auipc	ra,0xffffb
    80005b68:	5c0080e7          	jalr	1472(ra) # 80001124 <copy_and_swap>
    80005b6c:	00050863          	beqz	a0,80005b7c <_Z9getStringPci+0x50>
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	e4c080e7          	jalr	-436(ra) # 800019bc <_Z15thread_dispatchv>
    80005b78:	fddff06f          	j	80005b54 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b7c:	00000493          	li	s1,0
    80005b80:	0014891b          	addiw	s2,s1,1
    80005b84:	03495a63          	bge	s2,s4,80005bb8 <_Z9getStringPci+0x8c>
        cc = getc();
    80005b88:	ffffc097          	auipc	ra,0xffffc
    80005b8c:	0b4080e7          	jalr	180(ra) # 80001c3c <_Z4getcv>
        if(cc < 1)
    80005b90:	02050463          	beqz	a0,80005bb8 <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    80005b94:	009984b3          	add	s1,s3,s1
    80005b98:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005b9c:	00a00793          	li	a5,10
    80005ba0:	00f50a63          	beq	a0,a5,80005bb4 <_Z9getStringPci+0x88>
        buf[i++] = c;
    80005ba4:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    80005ba8:	00d00793          	li	a5,13
    80005bac:	fcf51ae3          	bne	a0,a5,80005b80 <_Z9getStringPci+0x54>
    80005bb0:	0080006f          	j	80005bb8 <_Z9getStringPci+0x8c>
        buf[i++] = c;
    80005bb4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005bb8:	009984b3          	add	s1,s3,s1
    80005bbc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005bc0:	00000613          	li	a2,0
    80005bc4:	00100593          	li	a1,1
    80005bc8:	00006517          	auipc	a0,0x6
    80005bcc:	f5850513          	addi	a0,a0,-168 # 8000bb20 <lockPrint>
    80005bd0:	ffffb097          	auipc	ra,0xffffb
    80005bd4:	554080e7          	jalr	1364(ra) # 80001124 <copy_and_swap>
    80005bd8:	fe0514e3          	bnez	a0,80005bc0 <_Z9getStringPci+0x94>
    return buf;
}
    80005bdc:	00098513          	mv	a0,s3
    80005be0:	02813083          	ld	ra,40(sp)
    80005be4:	02013403          	ld	s0,32(sp)
    80005be8:	01813483          	ld	s1,24(sp)
    80005bec:	01013903          	ld	s2,16(sp)
    80005bf0:	00813983          	ld	s3,8(sp)
    80005bf4:	00013a03          	ld	s4,0(sp)
    80005bf8:	03010113          	addi	sp,sp,48
    80005bfc:	00008067          	ret

0000000080005c00 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005c00:	ff010113          	addi	sp,sp,-16
    80005c04:	00813423          	sd	s0,8(sp)
    80005c08:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    80005c0c:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    80005c10:	00054603          	lbu	a2,0(a0)
    80005c14:	fd06069b          	addiw	a3,a2,-48
    80005c18:	0ff6f693          	andi	a3,a3,255
    80005c1c:	00900713          	li	a4,9
    80005c20:	02d76063          	bltu	a4,a3,80005c40 <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    80005c24:	0027969b          	slliw	a3,a5,0x2
    80005c28:	00f687bb          	addw	a5,a3,a5
    80005c2c:	0017971b          	slliw	a4,a5,0x1
    80005c30:	00150513          	addi	a0,a0,1
    80005c34:	00c707bb          	addw	a5,a4,a2
    80005c38:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    80005c3c:	fd5ff06f          	j	80005c10 <_Z11stringToIntPKc+0x10>
    return n;
}
    80005c40:	00078513          	mv	a0,a5
    80005c44:	00813403          	ld	s0,8(sp)
    80005c48:	01010113          	addi	sp,sp,16
    80005c4c:	00008067          	ret

0000000080005c50 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005c50:	fc010113          	addi	sp,sp,-64
    80005c54:	02113c23          	sd	ra,56(sp)
    80005c58:	02813823          	sd	s0,48(sp)
    80005c5c:	02913423          	sd	s1,40(sp)
    80005c60:	03213023          	sd	s2,32(sp)
    80005c64:	01313c23          	sd	s3,24(sp)
    80005c68:	04010413          	addi	s0,sp,64
    80005c6c:	00050493          	mv	s1,a0
    80005c70:	00058913          	mv	s2,a1
    80005c74:	00060993          	mv	s3,a2
    LOCK();
    80005c78:	00100613          	li	a2,1
    80005c7c:	00000593          	li	a1,0
    80005c80:	00006517          	auipc	a0,0x6
    80005c84:	ea050513          	addi	a0,a0,-352 # 8000bb20 <lockPrint>
    80005c88:	ffffb097          	auipc	ra,0xffffb
    80005c8c:	49c080e7          	jalr	1180(ra) # 80001124 <copy_and_swap>
    80005c90:	00050863          	beqz	a0,80005ca0 <_Z8printIntiii+0x50>
    80005c94:	ffffc097          	auipc	ra,0xffffc
    80005c98:	d28080e7          	jalr	-728(ra) # 800019bc <_Z15thread_dispatchv>
    80005c9c:	fddff06f          	j	80005c78 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005ca0:	00098463          	beqz	s3,80005ca8 <_Z8printIntiii+0x58>
    80005ca4:	0004ca63          	bltz	s1,80005cb8 <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005ca8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005cac:	00000593          	li	a1,0
    }

    i = 0;
    80005cb0:	00000613          	li	a2,0
    80005cb4:	0180006f          	j	80005ccc <_Z8printIntiii+0x7c>
        x = -xx;
    80005cb8:	4090053b          	negw	a0,s1
        neg = 1;
    80005cbc:	00100593          	li	a1,1
        x = -xx;
    80005cc0:	ff1ff06f          	j	80005cb0 <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    80005cc4:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    80005cc8:	00048613          	mv	a2,s1
    80005ccc:	0009079b          	sext.w	a5,s2
    80005cd0:	02f5773b          	remuw	a4,a0,a5
    80005cd4:	0016049b          	addiw	s1,a2,1
    80005cd8:	02071693          	slli	a3,a4,0x20
    80005cdc:	0206d693          	srli	a3,a3,0x20
    80005ce0:	00006717          	auipc	a4,0x6
    80005ce4:	c2070713          	addi	a4,a4,-992 # 8000b900 <digits>
    80005ce8:	00d70733          	add	a4,a4,a3
    80005cec:	00074683          	lbu	a3,0(a4)
    80005cf0:	fd040713          	addi	a4,s0,-48
    80005cf4:	00c70733          	add	a4,a4,a2
    80005cf8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005cfc:	02f5573b          	divuw	a4,a0,a5
    80005d00:	0007069b          	sext.w	a3,a4
    80005d04:	fcf570e3          	bgeu	a0,a5,80005cc4 <_Z8printIntiii+0x74>
    if(neg)
    80005d08:	00058c63          	beqz	a1,80005d20 <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    80005d0c:	fd040793          	addi	a5,s0,-48
    80005d10:	009784b3          	add	s1,a5,s1
    80005d14:	02d00793          	li	a5,45
    80005d18:	fef48823          	sb	a5,-16(s1)
    80005d1c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005d20:	fff4849b          	addiw	s1,s1,-1
    80005d24:	0004ce63          	bltz	s1,80005d40 <_Z8printIntiii+0xf0>
        putc(buf[i]);
    80005d28:	fd040793          	addi	a5,s0,-48
    80005d2c:	009787b3          	add	a5,a5,s1
    80005d30:	ff07c503          	lbu	a0,-16(a5)
    80005d34:	ffffc097          	auipc	ra,0xffffc
    80005d38:	f58080e7          	jalr	-168(ra) # 80001c8c <_Z4putcc>
    80005d3c:	fe5ff06f          	j	80005d20 <_Z8printIntiii+0xd0>

    UNLOCK();
    80005d40:	00000613          	li	a2,0
    80005d44:	00100593          	li	a1,1
    80005d48:	00006517          	auipc	a0,0x6
    80005d4c:	dd850513          	addi	a0,a0,-552 # 8000bb20 <lockPrint>
    80005d50:	ffffb097          	auipc	ra,0xffffb
    80005d54:	3d4080e7          	jalr	980(ra) # 80001124 <copy_and_swap>
    80005d58:	fe0514e3          	bnez	a0,80005d40 <_Z8printIntiii+0xf0>
    80005d5c:	03813083          	ld	ra,56(sp)
    80005d60:	03013403          	ld	s0,48(sp)
    80005d64:	02813483          	ld	s1,40(sp)
    80005d68:	02013903          	ld	s2,32(sp)
    80005d6c:	01813983          	ld	s3,24(sp)
    80005d70:	04010113          	addi	sp,sp,64
    80005d74:	00008067          	ret

0000000080005d78 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00113c23          	sd	ra,24(sp)
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	01213023          	sd	s2,0(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    80005d90:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005d94:	00000913          	li	s2,0
    80005d98:	00c0006f          	j	80005da4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	c20080e7          	jalr	-992(ra) # 800019bc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	e98080e7          	jalr	-360(ra) # 80001c3c <_Z4getcv>
    80005dac:	0005059b          	sext.w	a1,a0
    80005db0:	01b00793          	li	a5,27
    80005db4:	02f58a63          	beq	a1,a5,80005de8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80005db8:	0084b503          	ld	a0,8(s1)
    80005dbc:	ffffe097          	auipc	ra,0xffffe
    80005dc0:	820080e7          	jalr	-2016(ra) # 800035dc <_ZN6Buffer3putEi>
        i++;
    80005dc4:	0019079b          	addiw	a5,s2,1
    80005dc8:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005dcc:	0004a683          	lw	a3,0(s1)
    80005dd0:	0026971b          	slliw	a4,a3,0x2
    80005dd4:	00d7073b          	addw	a4,a4,a3
    80005dd8:	0017169b          	slliw	a3,a4,0x1
    80005ddc:	02d7e7bb          	remw	a5,a5,a3
    80005de0:	fc0792e3          	bnez	a5,80005da4 <_ZL16producerKeyboardPv+0x2c>
    80005de4:	fb9ff06f          	j	80005d9c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80005de8:	00100793          	li	a5,1
    80005dec:	00006717          	auipc	a4,0x6
    80005df0:	d2f72e23          	sw	a5,-708(a4) # 8000bb28 <_ZL9threadEnd>
    data->buffer->put('!');
    80005df4:	02100593          	li	a1,33
    80005df8:	0084b503          	ld	a0,8(s1)
    80005dfc:	ffffd097          	auipc	ra,0xffffd
    80005e00:	7e0080e7          	jalr	2016(ra) # 800035dc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80005e04:	0104b503          	ld	a0,16(s1)
    80005e08:	ffffc097          	auipc	ra,0xffffc
    80005e0c:	d94080e7          	jalr	-620(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005e10:	01813083          	ld	ra,24(sp)
    80005e14:	01013403          	ld	s0,16(sp)
    80005e18:	00813483          	ld	s1,8(sp)
    80005e1c:	00013903          	ld	s2,0(sp)
    80005e20:	02010113          	addi	sp,sp,32
    80005e24:	00008067          	ret

0000000080005e28 <_ZL8producerPv>:

static void producer(void *arg) {
    80005e28:	fe010113          	addi	sp,sp,-32
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	01213023          	sd	s2,0(sp)
    80005e3c:	02010413          	addi	s0,sp,32
    80005e40:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005e44:	00000913          	li	s2,0
    80005e48:	00c0006f          	j	80005e54 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005e4c:	ffffc097          	auipc	ra,0xffffc
    80005e50:	b70080e7          	jalr	-1168(ra) # 800019bc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80005e54:	00006797          	auipc	a5,0x6
    80005e58:	cd478793          	addi	a5,a5,-812 # 8000bb28 <_ZL9threadEnd>
    80005e5c:	0007a783          	lw	a5,0(a5)
    80005e60:	0007879b          	sext.w	a5,a5
    80005e64:	02079e63          	bnez	a5,80005ea0 <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    80005e68:	0004a583          	lw	a1,0(s1)
    80005e6c:	0305859b          	addiw	a1,a1,48
    80005e70:	0084b503          	ld	a0,8(s1)
    80005e74:	ffffd097          	auipc	ra,0xffffd
    80005e78:	768080e7          	jalr	1896(ra) # 800035dc <_ZN6Buffer3putEi>
        i++;
    80005e7c:	0019079b          	addiw	a5,s2,1
    80005e80:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005e84:	0004a683          	lw	a3,0(s1)
    80005e88:	0026971b          	slliw	a4,a3,0x2
    80005e8c:	00d7073b          	addw	a4,a4,a3
    80005e90:	0017169b          	slliw	a3,a4,0x1
    80005e94:	02d7e7bb          	remw	a5,a5,a3
    80005e98:	fa079ee3          	bnez	a5,80005e54 <_ZL8producerPv+0x2c>
    80005e9c:	fb1ff06f          	j	80005e4c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80005ea0:	0104b503          	ld	a0,16(s1)
    80005ea4:	ffffc097          	auipc	ra,0xffffc
    80005ea8:	cf8080e7          	jalr	-776(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005eac:	01813083          	ld	ra,24(sp)
    80005eb0:	01013403          	ld	s0,16(sp)
    80005eb4:	00813483          	ld	s1,8(sp)
    80005eb8:	00013903          	ld	s2,0(sp)
    80005ebc:	02010113          	addi	sp,sp,32
    80005ec0:	00008067          	ret

0000000080005ec4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80005ec4:	fd010113          	addi	sp,sp,-48
    80005ec8:	02113423          	sd	ra,40(sp)
    80005ecc:	02813023          	sd	s0,32(sp)
    80005ed0:	00913c23          	sd	s1,24(sp)
    80005ed4:	01213823          	sd	s2,16(sp)
    80005ed8:	01313423          	sd	s3,8(sp)
    80005edc:	03010413          	addi	s0,sp,48
    80005ee0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005ee4:	00000993          	li	s3,0
    80005ee8:	01c0006f          	j	80005f04 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	ad0080e7          	jalr	-1328(ra) # 800019bc <_Z15thread_dispatchv>
    80005ef4:	0580006f          	j	80005f4c <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005ef8:	00a00513          	li	a0,10
    80005efc:	ffffc097          	auipc	ra,0xffffc
    80005f00:	d90080e7          	jalr	-624(ra) # 80001c8c <_Z4putcc>
    while (!threadEnd) {
    80005f04:	00006797          	auipc	a5,0x6
    80005f08:	c2478793          	addi	a5,a5,-988 # 8000bb28 <_ZL9threadEnd>
    80005f0c:	0007a783          	lw	a5,0(a5)
    80005f10:	0007879b          	sext.w	a5,a5
    80005f14:	04079463          	bnez	a5,80005f5c <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    80005f18:	00893503          	ld	a0,8(s2)
    80005f1c:	ffffd097          	auipc	ra,0xffffd
    80005f20:	750080e7          	jalr	1872(ra) # 8000366c <_ZN6Buffer3getEv>
        i++;
    80005f24:	0019849b          	addiw	s1,s3,1
    80005f28:	0004899b          	sext.w	s3,s1
        putc(key);
    80005f2c:	0ff57513          	andi	a0,a0,255
    80005f30:	ffffc097          	auipc	ra,0xffffc
    80005f34:	d5c080e7          	jalr	-676(ra) # 80001c8c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005f38:	00092703          	lw	a4,0(s2)
    80005f3c:	0027179b          	slliw	a5,a4,0x2
    80005f40:	00e787bb          	addw	a5,a5,a4
    80005f44:	02f4e7bb          	remw	a5,s1,a5
    80005f48:	fa0782e3          	beqz	a5,80005eec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80005f4c:	05000793          	li	a5,80
    80005f50:	02f4e4bb          	remw	s1,s1,a5
    80005f54:	fa0498e3          	bnez	s1,80005f04 <_ZL8consumerPv+0x40>
    80005f58:	fa1ff06f          	j	80005ef8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    80005f5c:	00893503          	ld	a0,8(s2)
    80005f60:	ffffd097          	auipc	ra,0xffffd
    80005f64:	798080e7          	jalr	1944(ra) # 800036f8 <_ZN6Buffer6getCntEv>
    80005f68:	02a05063          	blez	a0,80005f88 <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    80005f6c:	00893503          	ld	a0,8(s2)
    80005f70:	ffffd097          	auipc	ra,0xffffd
    80005f74:	6fc080e7          	jalr	1788(ra) # 8000366c <_ZN6Buffer3getEv>
        putc(key);
    80005f78:	0ff57513          	andi	a0,a0,255
    80005f7c:	ffffc097          	auipc	ra,0xffffc
    80005f80:	d10080e7          	jalr	-752(ra) # 80001c8c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80005f84:	fd9ff06f          	j	80005f5c <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    80005f88:	01093503          	ld	a0,16(s2)
    80005f8c:	ffffc097          	auipc	ra,0xffffc
    80005f90:	c10080e7          	jalr	-1008(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
}
    80005f94:	02813083          	ld	ra,40(sp)
    80005f98:	02013403          	ld	s0,32(sp)
    80005f9c:	01813483          	ld	s1,24(sp)
    80005fa0:	01013903          	ld	s2,16(sp)
    80005fa4:	00813983          	ld	s3,8(sp)
    80005fa8:	03010113          	addi	sp,sp,48
    80005fac:	00008067          	ret

0000000080005fb0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80005fb0:	f9010113          	addi	sp,sp,-112
    80005fb4:	06113423          	sd	ra,104(sp)
    80005fb8:	06813023          	sd	s0,96(sp)
    80005fbc:	04913c23          	sd	s1,88(sp)
    80005fc0:	05213823          	sd	s2,80(sp)
    80005fc4:	05313423          	sd	s3,72(sp)
    80005fc8:	05413023          	sd	s4,64(sp)
    80005fcc:	03513c23          	sd	s5,56(sp)
    80005fd0:	03613823          	sd	s6,48(sp)
    80005fd4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80005fd8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80005fdc:	00004517          	auipc	a0,0x4
    80005fe0:	85c50513          	addi	a0,a0,-1956 # 80009838 <_ZTV8Consumer+0x28>
    80005fe4:	00000097          	auipc	ra,0x0
    80005fe8:	ac0080e7          	jalr	-1344(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    80005fec:	01e00593          	li	a1,30
    80005ff0:	fa040513          	addi	a0,s0,-96
    80005ff4:	00000097          	auipc	ra,0x0
    80005ff8:	b38080e7          	jalr	-1224(ra) # 80005b2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005ffc:	fa040513          	addi	a0,s0,-96
    80006000:	00000097          	auipc	ra,0x0
    80006004:	c00080e7          	jalr	-1024(ra) # 80005c00 <_Z11stringToIntPKc>
    80006008:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000600c:	00004517          	auipc	a0,0x4
    80006010:	84c50513          	addi	a0,a0,-1972 # 80009858 <_ZTV8Consumer+0x48>
    80006014:	00000097          	auipc	ra,0x0
    80006018:	a90080e7          	jalr	-1392(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    8000601c:	01e00593          	li	a1,30
    80006020:	fa040513          	addi	a0,s0,-96
    80006024:	00000097          	auipc	ra,0x0
    80006028:	b08080e7          	jalr	-1272(ra) # 80005b2c <_Z9getStringPci>
    n = stringToInt(input);
    8000602c:	fa040513          	addi	a0,s0,-96
    80006030:	00000097          	auipc	ra,0x0
    80006034:	bd0080e7          	jalr	-1072(ra) # 80005c00 <_Z11stringToIntPKc>
    80006038:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000603c:	00004517          	auipc	a0,0x4
    80006040:	83c50513          	addi	a0,a0,-1988 # 80009878 <_ZTV8Consumer+0x68>
    80006044:	00000097          	auipc	ra,0x0
    80006048:	a60080e7          	jalr	-1440(ra) # 80005aa4 <_Z11printStringPKc>
    8000604c:	00000613          	li	a2,0
    80006050:	00a00593          	li	a1,10
    80006054:	00090513          	mv	a0,s2
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	bf8080e7          	jalr	-1032(ra) # 80005c50 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80006060:	00004517          	auipc	a0,0x4
    80006064:	83050513          	addi	a0,a0,-2000 # 80009890 <_ZTV8Consumer+0x80>
    80006068:	00000097          	auipc	ra,0x0
    8000606c:	a3c080e7          	jalr	-1476(ra) # 80005aa4 <_Z11printStringPKc>
    80006070:	00000613          	li	a2,0
    80006074:	00a00593          	li	a1,10
    80006078:	00048513          	mv	a0,s1
    8000607c:	00000097          	auipc	ra,0x0
    80006080:	bd4080e7          	jalr	-1068(ra) # 80005c50 <_Z8printIntiii>
    printString(".\n");
    80006084:	00004517          	auipc	a0,0x4
    80006088:	82450513          	addi	a0,a0,-2012 # 800098a8 <_ZTV8Consumer+0x98>
    8000608c:	00000097          	auipc	ra,0x0
    80006090:	a18080e7          	jalr	-1512(ra) # 80005aa4 <_Z11printStringPKc>
    if(threadNum > n) {
    80006094:	0324c463          	blt	s1,s2,800060bc <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    80006098:	03205c63          	blez	s2,800060d0 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    8000609c:	03800513          	li	a0,56
    800060a0:	ffffc097          	auipc	ra,0xffffc
    800060a4:	2e4080e7          	jalr	740(ra) # 80002384 <_Znwm>
    800060a8:	00050a13          	mv	s4,a0
    800060ac:	00048593          	mv	a1,s1
    800060b0:	ffffd097          	auipc	ra,0xffffd
    800060b4:	490080e7          	jalr	1168(ra) # 80003540 <_ZN6BufferC1Ei>
    800060b8:	0300006f          	j	800060e8 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800060bc:	00003517          	auipc	a0,0x3
    800060c0:	7f450513          	addi	a0,a0,2036 # 800098b0 <_ZTV8Consumer+0xa0>
    800060c4:	00000097          	auipc	ra,0x0
    800060c8:	9e0080e7          	jalr	-1568(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    800060cc:	0140006f          	j	800060e0 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800060d0:	00004517          	auipc	a0,0x4
    800060d4:	82050513          	addi	a0,a0,-2016 # 800098f0 <_ZTV8Consumer+0xe0>
    800060d8:	00000097          	auipc	ra,0x0
    800060dc:	9cc080e7          	jalr	-1588(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    800060e0:	000b0113          	mv	sp,s6
    800060e4:	1680006f          	j	8000624c <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    800060e8:	00000593          	li	a1,0
    800060ec:	00006517          	auipc	a0,0x6
    800060f0:	a4450513          	addi	a0,a0,-1468 # 8000bb30 <_ZL10waitForAll>
    800060f4:	ffffc097          	auipc	ra,0xffffc
    800060f8:	914080e7          	jalr	-1772(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    800060fc:	00391793          	slli	a5,s2,0x3
    80006100:	00f78793          	addi	a5,a5,15
    80006104:	ff07f793          	andi	a5,a5,-16
    80006108:	40f10133          	sub	sp,sp,a5
    8000610c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80006110:	0019079b          	addiw	a5,s2,1
    80006114:	00179713          	slli	a4,a5,0x1
    80006118:	00f70733          	add	a4,a4,a5
    8000611c:	00371793          	slli	a5,a4,0x3
    80006120:	00f78793          	addi	a5,a5,15
    80006124:	ff07f793          	andi	a5,a5,-16
    80006128:	40f10133          	sub	sp,sp,a5
    8000612c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80006130:	00191713          	slli	a4,s2,0x1
    80006134:	012706b3          	add	a3,a4,s2
    80006138:	00369793          	slli	a5,a3,0x3
    8000613c:	00f987b3          	add	a5,s3,a5
    80006140:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006144:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80006148:	00006697          	auipc	a3,0x6
    8000614c:	9e868693          	addi	a3,a3,-1560 # 8000bb30 <_ZL10waitForAll>
    80006150:	0006b683          	ld	a3,0(a3)
    80006154:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80006158:	012707b3          	add	a5,a4,s2
    8000615c:	00379613          	slli	a2,a5,0x3
    80006160:	00c98633          	add	a2,s3,a2
    80006164:	00000597          	auipc	a1,0x0
    80006168:	d6058593          	addi	a1,a1,-672 # 80005ec4 <_ZL8consumerPv>
    8000616c:	f9840513          	addi	a0,s0,-104
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	79c080e7          	jalr	1948(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80006178:	00000493          	li	s1,0
    8000617c:	0280006f          	j	800061a4 <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    80006180:	00000597          	auipc	a1,0x0
    80006184:	bf858593          	addi	a1,a1,-1032 # 80005d78 <_ZL16producerKeyboardPv>
                      data + i);
    80006188:	00171793          	slli	a5,a4,0x1
    8000618c:	00e787b3          	add	a5,a5,a4
    80006190:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    80006194:	00c98633          	add	a2,s3,a2
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	774080e7          	jalr	1908(ra) # 8000190c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800061a0:	0014849b          	addiw	s1,s1,1
    800061a4:	0524d463          	bge	s1,s2,800061ec <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    800061a8:	00149713          	slli	a4,s1,0x1
    800061ac:	00970733          	add	a4,a4,s1
    800061b0:	00371793          	slli	a5,a4,0x3
    800061b4:	00f987b3          	add	a5,s3,a5
    800061b8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800061bc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800061c0:	00006717          	auipc	a4,0x6
    800061c4:	97070713          	addi	a4,a4,-1680 # 8000bb30 <_ZL10waitForAll>
    800061c8:	00073703          	ld	a4,0(a4)
    800061cc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800061d0:	00048713          	mv	a4,s1
    800061d4:	00349513          	slli	a0,s1,0x3
    800061d8:	00aa8533          	add	a0,s5,a0
    800061dc:	fa9052e3          	blez	s1,80006180 <_Z22producerConsumer_C_APIv+0x1d0>
    800061e0:	00000597          	auipc	a1,0x0
    800061e4:	c4858593          	addi	a1,a1,-952 # 80005e28 <_ZL8producerPv>
    800061e8:	fa1ff06f          	j	80006188 <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	7d0080e7          	jalr	2000(ra) # 800019bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800061f4:	00000493          	li	s1,0
    800061f8:	02994063          	blt	s2,s1,80006218 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    800061fc:	00006797          	auipc	a5,0x6
    80006200:	93478793          	addi	a5,a5,-1740 # 8000bb30 <_ZL10waitForAll>
    80006204:	0007b503          	ld	a0,0(a5)
    80006208:	ffffc097          	auipc	ra,0xffffc
    8000620c:	944080e7          	jalr	-1724(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80006210:	0014849b          	addiw	s1,s1,1
    80006214:	fe5ff06f          	j	800061f8 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    80006218:	00006797          	auipc	a5,0x6
    8000621c:	91878793          	addi	a5,a5,-1768 # 8000bb30 <_ZL10waitForAll>
    80006220:	0007b503          	ld	a0,0(a5)
    80006224:	ffffc097          	auipc	ra,0xffffc
    80006228:	8bc080e7          	jalr	-1860(ra) # 80001ae0 <_Z9sem_closeP10_semaphore>
    delete buffer;
    8000622c:	000a0e63          	beqz	s4,80006248 <_Z22producerConsumer_C_APIv+0x298>
    80006230:	000a0513          	mv	a0,s4
    80006234:	ffffd097          	auipc	ra,0xffffd
    80006238:	54c080e7          	jalr	1356(ra) # 80003780 <_ZN6BufferD1Ev>
    8000623c:	000a0513          	mv	a0,s4
    80006240:	ffffc097          	auipc	ra,0xffffc
    80006244:	1c4080e7          	jalr	452(ra) # 80002404 <_ZdlPv>
    80006248:	000b0113          	mv	sp,s6

}
    8000624c:	f9040113          	addi	sp,s0,-112
    80006250:	06813083          	ld	ra,104(sp)
    80006254:	06013403          	ld	s0,96(sp)
    80006258:	05813483          	ld	s1,88(sp)
    8000625c:	05013903          	ld	s2,80(sp)
    80006260:	04813983          	ld	s3,72(sp)
    80006264:	04013a03          	ld	s4,64(sp)
    80006268:	03813a83          	ld	s5,56(sp)
    8000626c:	03013b03          	ld	s6,48(sp)
    80006270:	07010113          	addi	sp,sp,112
    80006274:	00008067          	ret
    80006278:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000627c:	000a0513          	mv	a0,s4
    80006280:	ffffc097          	auipc	ra,0xffffc
    80006284:	184080e7          	jalr	388(ra) # 80002404 <_ZdlPv>
    80006288:	00048513          	mv	a0,s1
    8000628c:	00007097          	auipc	ra,0x7
    80006290:	9bc080e7          	jalr	-1604(ra) # 8000cc48 <_Unwind_Resume>

0000000080006294 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006294:	fd010113          	addi	sp,sp,-48
    80006298:	02113423          	sd	ra,40(sp)
    8000629c:	02813023          	sd	s0,32(sp)
    800062a0:	00913c23          	sd	s1,24(sp)
    800062a4:	01213823          	sd	s2,16(sp)
    800062a8:	01313423          	sd	s3,8(sp)
    800062ac:	03010413          	addi	s0,sp,48
    800062b0:	00050493          	mv	s1,a0
    800062b4:	00058993          	mv	s3,a1
    800062b8:	0015879b          	addiw	a5,a1,1
    800062bc:	0007851b          	sext.w	a0,a5
    800062c0:	00f4a023          	sw	a5,0(s1)
    800062c4:	0004a823          	sw	zero,16(s1)
    800062c8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800062cc:	00251513          	slli	a0,a0,0x2
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	4b0080e7          	jalr	1200(ra) # 80001780 <_Z9mem_allocm>
    800062d8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800062dc:	01000513          	li	a0,16
    800062e0:	ffffc097          	auipc	ra,0xffffc
    800062e4:	0a4080e7          	jalr	164(ra) # 80002384 <_Znwm>
    800062e8:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    800062ec:	00003797          	auipc	a5,0x3
    800062f0:	4c478793          	addi	a5,a5,1220 # 800097b0 <_ZTV9Semaphore+0x10>
    800062f4:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800062f8:	00000593          	li	a1,0
    800062fc:	00850513          	addi	a0,a0,8
    80006300:	ffffb097          	auipc	ra,0xffffb
    80006304:	708080e7          	jalr	1800(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80006308:	00050463          	beqz	a0,80006310 <_ZN9BufferCPPC1Ei+0x7c>
            myHandle = nullptr;
    8000630c:	00093423          	sd	zero,8(s2)
    80006310:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006314:	01000513          	li	a0,16
    80006318:	ffffc097          	auipc	ra,0xffffc
    8000631c:	06c080e7          	jalr	108(ra) # 80002384 <_Znwm>
    80006320:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80006324:	00003797          	auipc	a5,0x3
    80006328:	48c78793          	addi	a5,a5,1164 # 800097b0 <_ZTV9Semaphore+0x10>
    8000632c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80006330:	00098593          	mv	a1,s3
    80006334:	00850513          	addi	a0,a0,8
    80006338:	ffffb097          	auipc	ra,0xffffb
    8000633c:	6d0080e7          	jalr	1744(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80006340:	00050463          	beqz	a0,80006348 <_ZN9BufferCPPC1Ei+0xb4>
            myHandle = nullptr;
    80006344:	00093423          	sd	zero,8(s2)
    80006348:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000634c:	01000513          	li	a0,16
    80006350:	ffffc097          	auipc	ra,0xffffc
    80006354:	034080e7          	jalr	52(ra) # 80002384 <_Znwm>
    80006358:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    8000635c:	00003797          	auipc	a5,0x3
    80006360:	45478793          	addi	a5,a5,1108 # 800097b0 <_ZTV9Semaphore+0x10>
    80006364:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80006368:	00100593          	li	a1,1
    8000636c:	00850513          	addi	a0,a0,8
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	698080e7          	jalr	1688(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    80006378:	00050463          	beqz	a0,80006380 <_ZN9BufferCPPC1Ei+0xec>
            myHandle = nullptr;
    8000637c:	00093423          	sd	zero,8(s2)
    80006380:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006384:	01000513          	li	a0,16
    80006388:	ffffc097          	auipc	ra,0xffffc
    8000638c:	ffc080e7          	jalr	-4(ra) # 80002384 <_Znwm>
    80006390:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80006394:	00003797          	auipc	a5,0x3
    80006398:	41c78793          	addi	a5,a5,1052 # 800097b0 <_ZTV9Semaphore+0x10>
    8000639c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800063a0:	00100593          	li	a1,1
    800063a4:	00850513          	addi	a0,a0,8
    800063a8:	ffffb097          	auipc	ra,0xffffb
    800063ac:	660080e7          	jalr	1632(ra) # 80001a08 <_Z8sem_openPP10_semaphorej>
    800063b0:	00050463          	beqz	a0,800063b8 <_ZN9BufferCPPC1Ei+0x124>
            myHandle = nullptr;
    800063b4:	00093423          	sd	zero,8(s2)
    800063b8:	0324b823          	sd	s2,48(s1)
}
    800063bc:	02813083          	ld	ra,40(sp)
    800063c0:	02013403          	ld	s0,32(sp)
    800063c4:	01813483          	ld	s1,24(sp)
    800063c8:	01013903          	ld	s2,16(sp)
    800063cc:	00813983          	ld	s3,8(sp)
    800063d0:	03010113          	addi	sp,sp,48
    800063d4:	00008067          	ret
    800063d8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800063dc:	00090513          	mv	a0,s2
    800063e0:	ffffc097          	auipc	ra,0xffffc
    800063e4:	024080e7          	jalr	36(ra) # 80002404 <_ZdlPv>
    800063e8:	00048513          	mv	a0,s1
    800063ec:	00007097          	auipc	ra,0x7
    800063f0:	85c080e7          	jalr	-1956(ra) # 8000cc48 <_Unwind_Resume>
    800063f4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800063f8:	00090513          	mv	a0,s2
    800063fc:	ffffc097          	auipc	ra,0xffffc
    80006400:	008080e7          	jalr	8(ra) # 80002404 <_ZdlPv>
    80006404:	00048513          	mv	a0,s1
    80006408:	00007097          	auipc	ra,0x7
    8000640c:	840080e7          	jalr	-1984(ra) # 8000cc48 <_Unwind_Resume>
    80006410:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006414:	00090513          	mv	a0,s2
    80006418:	ffffc097          	auipc	ra,0xffffc
    8000641c:	fec080e7          	jalr	-20(ra) # 80002404 <_ZdlPv>
    80006420:	00048513          	mv	a0,s1
    80006424:	00007097          	auipc	ra,0x7
    80006428:	824080e7          	jalr	-2012(ra) # 8000cc48 <_Unwind_Resume>
    8000642c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006430:	00090513          	mv	a0,s2
    80006434:	ffffc097          	auipc	ra,0xffffc
    80006438:	fd0080e7          	jalr	-48(ra) # 80002404 <_ZdlPv>
    8000643c:	00048513          	mv	a0,s1
    80006440:	00007097          	auipc	ra,0x7
    80006444:	808080e7          	jalr	-2040(ra) # 8000cc48 <_Unwind_Resume>

0000000080006448 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006448:	fe010113          	addi	sp,sp,-32
    8000644c:	00113c23          	sd	ra,24(sp)
    80006450:	00813823          	sd	s0,16(sp)
    80006454:	00913423          	sd	s1,8(sp)
    80006458:	01213023          	sd	s2,0(sp)
    8000645c:	02010413          	addi	s0,sp,32
    80006460:	00050493          	mv	s1,a0
    80006464:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006468:	01853783          	ld	a5,24(a0)
        if (myHandle == nullptr) {
    8000646c:	0087b503          	ld	a0,8(a5)
    80006470:	00050663          	beqz	a0,8000647c <_ZN9BufferCPP3putEi+0x34>
        return sem_wait(myHandle);
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	6d8080e7          	jalr	1752(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    8000647c:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80006480:	0087b503          	ld	a0,8(a5)
    80006484:	00050663          	beqz	a0,80006490 <_ZN9BufferCPP3putEi+0x48>
        return sem_wait(myHandle);
    80006488:	ffffb097          	auipc	ra,0xffffb
    8000648c:	6c4080e7          	jalr	1732(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80006490:	0084b783          	ld	a5,8(s1)
    80006494:	0144a703          	lw	a4,20(s1)
    80006498:	00271713          	slli	a4,a4,0x2
    8000649c:	00e787b3          	add	a5,a5,a4
    800064a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800064a4:	0144a783          	lw	a5,20(s1)
    800064a8:	0017879b          	addiw	a5,a5,1
    800064ac:	0004a703          	lw	a4,0(s1)
    800064b0:	02e7e7bb          	remw	a5,a5,a4
    800064b4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800064b8:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800064bc:	0087b503          	ld	a0,8(a5)
    800064c0:	00050663          	beqz	a0,800064cc <_ZN9BufferCPP3putEi+0x84>
        return sem_signal(myHandle);
    800064c4:	ffffb097          	auipc	ra,0xffffb
    800064c8:	6d8080e7          	jalr	1752(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    800064cc:	0204b783          	ld	a5,32(s1)
        if (myHandle == nullptr) {
    800064d0:	0087b503          	ld	a0,8(a5)
    800064d4:	00050663          	beqz	a0,800064e0 <_ZN9BufferCPP3putEi+0x98>
        return sem_signal(myHandle);
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	6c4080e7          	jalr	1732(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

}
    800064e0:	01813083          	ld	ra,24(sp)
    800064e4:	01013403          	ld	s0,16(sp)
    800064e8:	00813483          	ld	s1,8(sp)
    800064ec:	00013903          	ld	s2,0(sp)
    800064f0:	02010113          	addi	sp,sp,32
    800064f4:	00008067          	ret

00000000800064f8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800064f8:	fe010113          	addi	sp,sp,-32
    800064fc:	00113c23          	sd	ra,24(sp)
    80006500:	00813823          	sd	s0,16(sp)
    80006504:	00913423          	sd	s1,8(sp)
    80006508:	01213023          	sd	s2,0(sp)
    8000650c:	02010413          	addi	s0,sp,32
    80006510:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006514:	02053783          	ld	a5,32(a0)
        if (myHandle == nullptr) {
    80006518:	0087b503          	ld	a0,8(a5)
    8000651c:	00050663          	beqz	a0,80006528 <_ZN9BufferCPP3getEv+0x30>
        return sem_wait(myHandle);
    80006520:	ffffb097          	auipc	ra,0xffffb
    80006524:	62c080e7          	jalr	1580(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    80006528:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    8000652c:	0087b503          	ld	a0,8(a5)
    80006530:	00050663          	beqz	a0,8000653c <_ZN9BufferCPP3getEv+0x44>
        return sem_wait(myHandle);
    80006534:	ffffb097          	auipc	ra,0xffffb
    80006538:	618080e7          	jalr	1560(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    8000653c:	0084b703          	ld	a4,8(s1)
    80006540:	0104a783          	lw	a5,16(s1)
    80006544:	00279693          	slli	a3,a5,0x2
    80006548:	00d70733          	add	a4,a4,a3
    8000654c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006550:	0017879b          	addiw	a5,a5,1
    80006554:	0004a703          	lw	a4,0(s1)
    80006558:	02e7e7bb          	remw	a5,a5,a4
    8000655c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006560:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80006564:	0087b503          	ld	a0,8(a5)
    80006568:	00050663          	beqz	a0,80006574 <_ZN9BufferCPP3getEv+0x7c>
        return sem_signal(myHandle);
    8000656c:	ffffb097          	auipc	ra,0xffffb
    80006570:	630080e7          	jalr	1584(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    80006574:	0184b783          	ld	a5,24(s1)
        if (myHandle == nullptr) {
    80006578:	0087b503          	ld	a0,8(a5)
    8000657c:	00050663          	beqz	a0,80006588 <_ZN9BufferCPP3getEv+0x90>
        return sem_signal(myHandle);
    80006580:	ffffb097          	auipc	ra,0xffffb
    80006584:	61c080e7          	jalr	1564(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    80006588:	00090513          	mv	a0,s2
    8000658c:	01813083          	ld	ra,24(sp)
    80006590:	01013403          	ld	s0,16(sp)
    80006594:	00813483          	ld	s1,8(sp)
    80006598:	00013903          	ld	s2,0(sp)
    8000659c:	02010113          	addi	sp,sp,32
    800065a0:	00008067          	ret

00000000800065a4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800065a4:	fe010113          	addi	sp,sp,-32
    800065a8:	00113c23          	sd	ra,24(sp)
    800065ac:	00813823          	sd	s0,16(sp)
    800065b0:	00913423          	sd	s1,8(sp)
    800065b4:	01213023          	sd	s2,0(sp)
    800065b8:	02010413          	addi	s0,sp,32
    800065bc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800065c0:	02853783          	ld	a5,40(a0)
        if (myHandle == nullptr) {
    800065c4:	0087b503          	ld	a0,8(a5)
    800065c8:	00050663          	beqz	a0,800065d4 <_ZN9BufferCPP6getCntEv+0x30>
        return sem_wait(myHandle);
    800065cc:	ffffb097          	auipc	ra,0xffffb
    800065d0:	580080e7          	jalr	1408(ra) # 80001b4c <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    800065d4:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800065d8:	0087b503          	ld	a0,8(a5)
    800065dc:	00050663          	beqz	a0,800065e8 <_ZN9BufferCPP6getCntEv+0x44>
        return sem_wait(myHandle);
    800065e0:	ffffb097          	auipc	ra,0xffffb
    800065e4:	56c080e7          	jalr	1388(ra) # 80001b4c <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    800065e8:	0144a783          	lw	a5,20(s1)
    800065ec:	0104a903          	lw	s2,16(s1)
    800065f0:	0527c663          	blt	a5,s2,8000663c <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    800065f4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800065f8:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800065fc:	0087b503          	ld	a0,8(a5)
    80006600:	00050663          	beqz	a0,8000660c <_ZN9BufferCPP6getCntEv+0x68>
        return sem_signal(myHandle);
    80006604:	ffffb097          	auipc	ra,0xffffb
    80006608:	598080e7          	jalr	1432(ra) # 80001b9c <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    8000660c:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80006610:	0087b503          	ld	a0,8(a5)
    80006614:	00050663          	beqz	a0,80006620 <_ZN9BufferCPP6getCntEv+0x7c>
        return sem_signal(myHandle);
    80006618:	ffffb097          	auipc	ra,0xffffb
    8000661c:	584080e7          	jalr	1412(ra) # 80001b9c <_Z10sem_signalP10_semaphore>

    return ret;
}
    80006620:	00090513          	mv	a0,s2
    80006624:	01813083          	ld	ra,24(sp)
    80006628:	01013403          	ld	s0,16(sp)
    8000662c:	00813483          	ld	s1,8(sp)
    80006630:	00013903          	ld	s2,0(sp)
    80006634:	02010113          	addi	sp,sp,32
    80006638:	00008067          	ret
        ret = cap - head + tail;
    8000663c:	0004a703          	lw	a4,0(s1)
    80006640:	4127093b          	subw	s2,a4,s2
    80006644:	00f9093b          	addw	s2,s2,a5
    80006648:	fb1ff06f          	j	800065f8 <_ZN9BufferCPP6getCntEv+0x54>

000000008000664c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000664c:	fe010113          	addi	sp,sp,-32
    80006650:	00113c23          	sd	ra,24(sp)
    80006654:	00813823          	sd	s0,16(sp)
    80006658:	00913423          	sd	s1,8(sp)
    8000665c:	01213023          	sd	s2,0(sp)
    80006660:	02010413          	addi	s0,sp,32
    80006664:	00050913          	mv	s2,a0
    static void putc(char c) { putc(c); };
    80006668:	00a00513          	li	a0,10
    8000666c:	ffffe097          	auipc	ra,0xffffe
    80006670:	974080e7          	jalr	-1676(ra) # 80003fe0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006674:	00003517          	auipc	a0,0x3
    80006678:	11450513          	addi	a0,a0,276 # 80009788 <_ZZ24debug_print_internal_intmE6digits+0x400>
    8000667c:	fffff097          	auipc	ra,0xfffff
    80006680:	428080e7          	jalr	1064(ra) # 80005aa4 <_Z11printStringPKc>
    while (getCnt()) {
    80006684:	00090513          	mv	a0,s2
    80006688:	00000097          	auipc	ra,0x0
    8000668c:	f1c080e7          	jalr	-228(ra) # 800065a4 <_ZN9BufferCPP6getCntEv>
    80006690:	02050a63          	beqz	a0,800066c4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006694:	00893783          	ld	a5,8(s2)
    80006698:	01092483          	lw	s1,16(s2)
    8000669c:	00249713          	slli	a4,s1,0x2
    800066a0:	00e787b3          	add	a5,a5,a4
    800066a4:	0007c503          	lbu	a0,0(a5)
    800066a8:	ffffe097          	auipc	ra,0xffffe
    800066ac:	938080e7          	jalr	-1736(ra) # 80003fe0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800066b0:	0014849b          	addiw	s1,s1,1
    800066b4:	00092783          	lw	a5,0(s2)
    800066b8:	02f4e4bb          	remw	s1,s1,a5
    800066bc:	00992823          	sw	s1,16(s2)
    while (getCnt()) {
    800066c0:	fc5ff06f          	j	80006684 <_ZN9BufferCPPD1Ev+0x38>
    800066c4:	02100513          	li	a0,33
    800066c8:	ffffe097          	auipc	ra,0xffffe
    800066cc:	918080e7          	jalr	-1768(ra) # 80003fe0 <_ZN7Console4putcEc>
    800066d0:	00a00513          	li	a0,10
    800066d4:	ffffe097          	auipc	ra,0xffffe
    800066d8:	90c080e7          	jalr	-1780(ra) # 80003fe0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800066dc:	00893503          	ld	a0,8(s2)
    800066e0:	ffffb097          	auipc	ra,0xffffb
    800066e4:	108080e7          	jalr	264(ra) # 800017e8 <_Z8mem_freePv>
    delete itemAvailable;
    800066e8:	02093503          	ld	a0,32(s2)
    800066ec:	00050863          	beqz	a0,800066fc <_ZN9BufferCPPD1Ev+0xb0>
    800066f0:	00053783          	ld	a5,0(a0)
    800066f4:	0087b783          	ld	a5,8(a5)
    800066f8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800066fc:	01893503          	ld	a0,24(s2)
    80006700:	00050863          	beqz	a0,80006710 <_ZN9BufferCPPD1Ev+0xc4>
    80006704:	00053783          	ld	a5,0(a0)
    80006708:	0087b783          	ld	a5,8(a5)
    8000670c:	000780e7          	jalr	a5
    delete mutexTail;
    80006710:	03093503          	ld	a0,48(s2)
    80006714:	00050863          	beqz	a0,80006724 <_ZN9BufferCPPD1Ev+0xd8>
    80006718:	00053783          	ld	a5,0(a0)
    8000671c:	0087b783          	ld	a5,8(a5)
    80006720:	000780e7          	jalr	a5
    delete mutexHead;
    80006724:	02893503          	ld	a0,40(s2)
    80006728:	00050863          	beqz	a0,80006738 <_ZN9BufferCPPD1Ev+0xec>
    8000672c:	00053783          	ld	a5,0(a0)
    80006730:	0087b783          	ld	a5,8(a5)
    80006734:	000780e7          	jalr	a5
}
    80006738:	01813083          	ld	ra,24(sp)
    8000673c:	01013403          	ld	s0,16(sp)
    80006740:	00813483          	ld	s1,8(sp)
    80006744:	00013903          	ld	s2,0(sp)
    80006748:	02010113          	addi	sp,sp,32
    8000674c:	00008067          	ret

0000000080006750 <start>:
    80006750:	ff010113          	addi	sp,sp,-16
    80006754:	00813423          	sd	s0,8(sp)
    80006758:	01010413          	addi	s0,sp,16
    8000675c:	300027f3          	csrr	a5,mstatus
    80006760:	ffffe737          	lui	a4,0xffffe
    80006764:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a1f>
    80006768:	00e7f7b3          	and	a5,a5,a4
    8000676c:	00001737          	lui	a4,0x1
    80006770:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006774:	00e7e7b3          	or	a5,a5,a4
    80006778:	30079073          	csrw	mstatus,a5
    8000677c:	00000797          	auipc	a5,0x0
    80006780:	16078793          	addi	a5,a5,352 # 800068dc <system_main>
    80006784:	34179073          	csrw	mepc,a5
    80006788:	00000793          	li	a5,0
    8000678c:	18079073          	csrw	satp,a5
    80006790:	000107b7          	lui	a5,0x10
    80006794:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006798:	30279073          	csrw	medeleg,a5
    8000679c:	30379073          	csrw	mideleg,a5
    800067a0:	104027f3          	csrr	a5,sie
    800067a4:	2227e793          	ori	a5,a5,546
    800067a8:	10479073          	csrw	sie,a5
    800067ac:	fff00793          	li	a5,-1
    800067b0:	00a7d793          	srli	a5,a5,0xa
    800067b4:	3b079073          	csrw	pmpaddr0,a5
    800067b8:	00f00793          	li	a5,15
    800067bc:	3a079073          	csrw	pmpcfg0,a5
    800067c0:	f14027f3          	csrr	a5,mhartid
    800067c4:	0200c737          	lui	a4,0x200c
    800067c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067cc:	0007869b          	sext.w	a3,a5
    800067d0:	00269713          	slli	a4,a3,0x2
    800067d4:	000f4637          	lui	a2,0xf4
    800067d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067dc:	00d70733          	add	a4,a4,a3
    800067e0:	0037979b          	slliw	a5,a5,0x3
    800067e4:	020046b7          	lui	a3,0x2004
    800067e8:	00d787b3          	add	a5,a5,a3
    800067ec:	00c585b3          	add	a1,a1,a2
    800067f0:	00371693          	slli	a3,a4,0x3
    800067f4:	00005717          	auipc	a4,0x5
    800067f8:	38c70713          	addi	a4,a4,908 # 8000bb80 <timer_scratch>
    800067fc:	00b7b023          	sd	a1,0(a5)
    80006800:	00d70733          	add	a4,a4,a3
    80006804:	00f73c23          	sd	a5,24(a4)
    80006808:	02c73023          	sd	a2,32(a4)
    8000680c:	34071073          	csrw	mscratch,a4
    80006810:	00000797          	auipc	a5,0x0
    80006814:	6e078793          	addi	a5,a5,1760 # 80006ef0 <timervec>
    80006818:	30579073          	csrw	mtvec,a5
    8000681c:	300027f3          	csrr	a5,mstatus
    80006820:	0087e793          	ori	a5,a5,8
    80006824:	30079073          	csrw	mstatus,a5
    80006828:	304027f3          	csrr	a5,mie
    8000682c:	0807e793          	ori	a5,a5,128
    80006830:	30479073          	csrw	mie,a5
    80006834:	f14027f3          	csrr	a5,mhartid
    80006838:	0007879b          	sext.w	a5,a5
    8000683c:	00078213          	mv	tp,a5
    80006840:	30200073          	mret
    80006844:	00813403          	ld	s0,8(sp)
    80006848:	01010113          	addi	sp,sp,16
    8000684c:	00008067          	ret

0000000080006850 <timerinit>:
    80006850:	ff010113          	addi	sp,sp,-16
    80006854:	00813423          	sd	s0,8(sp)
    80006858:	01010413          	addi	s0,sp,16
    8000685c:	f14027f3          	csrr	a5,mhartid
    80006860:	0200c737          	lui	a4,0x200c
    80006864:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006868:	0007869b          	sext.w	a3,a5
    8000686c:	00269713          	slli	a4,a3,0x2
    80006870:	000f4637          	lui	a2,0xf4
    80006874:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006878:	00d70733          	add	a4,a4,a3
    8000687c:	0037979b          	slliw	a5,a5,0x3
    80006880:	020046b7          	lui	a3,0x2004
    80006884:	00d787b3          	add	a5,a5,a3
    80006888:	00c585b3          	add	a1,a1,a2
    8000688c:	00371693          	slli	a3,a4,0x3
    80006890:	00005717          	auipc	a4,0x5
    80006894:	2f070713          	addi	a4,a4,752 # 8000bb80 <timer_scratch>
    80006898:	00b7b023          	sd	a1,0(a5)
    8000689c:	00d70733          	add	a4,a4,a3
    800068a0:	00f73c23          	sd	a5,24(a4)
    800068a4:	02c73023          	sd	a2,32(a4)
    800068a8:	34071073          	csrw	mscratch,a4
    800068ac:	00000797          	auipc	a5,0x0
    800068b0:	64478793          	addi	a5,a5,1604 # 80006ef0 <timervec>
    800068b4:	30579073          	csrw	mtvec,a5
    800068b8:	300027f3          	csrr	a5,mstatus
    800068bc:	0087e793          	ori	a5,a5,8
    800068c0:	30079073          	csrw	mstatus,a5
    800068c4:	304027f3          	csrr	a5,mie
    800068c8:	0807e793          	ori	a5,a5,128
    800068cc:	30479073          	csrw	mie,a5
    800068d0:	00813403          	ld	s0,8(sp)
    800068d4:	01010113          	addi	sp,sp,16
    800068d8:	00008067          	ret

00000000800068dc <system_main>:
    800068dc:	fe010113          	addi	sp,sp,-32
    800068e0:	00813823          	sd	s0,16(sp)
    800068e4:	00913423          	sd	s1,8(sp)
    800068e8:	00113c23          	sd	ra,24(sp)
    800068ec:	02010413          	addi	s0,sp,32
    800068f0:	00000097          	auipc	ra,0x0
    800068f4:	0c4080e7          	jalr	196(ra) # 800069b4 <cpuid>
    800068f8:	00005497          	auipc	s1,0x5
    800068fc:	24048493          	addi	s1,s1,576 # 8000bb38 <started>
    80006900:	02050263          	beqz	a0,80006924 <system_main+0x48>
    80006904:	0004a783          	lw	a5,0(s1)
    80006908:	0007879b          	sext.w	a5,a5
    8000690c:	fe078ce3          	beqz	a5,80006904 <system_main+0x28>
    80006910:	0ff0000f          	fence
    80006914:	00003517          	auipc	a0,0x3
    80006918:	44450513          	addi	a0,a0,1092 # 80009d58 <_ZTV12ConsumerSync+0x68>
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	a70080e7          	jalr	-1424(ra) # 8000738c <panic>
    80006924:	00001097          	auipc	ra,0x1
    80006928:	9c4080e7          	jalr	-1596(ra) # 800072e8 <consoleinit>
    8000692c:	00001097          	auipc	ra,0x1
    80006930:	150080e7          	jalr	336(ra) # 80007a7c <printfinit>
    80006934:	00003517          	auipc	a0,0x3
    80006938:	1a450513          	addi	a0,a0,420 # 80009ad8 <_ZTV8Consumer+0x2c8>
    8000693c:	00001097          	auipc	ra,0x1
    80006940:	aac080e7          	jalr	-1364(ra) # 800073e8 <__printf>
    80006944:	00003517          	auipc	a0,0x3
    80006948:	3e450513          	addi	a0,a0,996 # 80009d28 <_ZTV12ConsumerSync+0x38>
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	a9c080e7          	jalr	-1380(ra) # 800073e8 <__printf>
    80006954:	00003517          	auipc	a0,0x3
    80006958:	18450513          	addi	a0,a0,388 # 80009ad8 <_ZTV8Consumer+0x2c8>
    8000695c:	00001097          	auipc	ra,0x1
    80006960:	a8c080e7          	jalr	-1396(ra) # 800073e8 <__printf>
    80006964:	00001097          	auipc	ra,0x1
    80006968:	4a4080e7          	jalr	1188(ra) # 80007e08 <kinit>
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	148080e7          	jalr	328(ra) # 80006ab4 <trapinit>
    80006974:	00000097          	auipc	ra,0x0
    80006978:	16c080e7          	jalr	364(ra) # 80006ae0 <trapinithart>
    8000697c:	00000097          	auipc	ra,0x0
    80006980:	5b4080e7          	jalr	1460(ra) # 80006f30 <plicinit>
    80006984:	00000097          	auipc	ra,0x0
    80006988:	5d4080e7          	jalr	1492(ra) # 80006f58 <plicinithart>
    8000698c:	00000097          	auipc	ra,0x0
    80006990:	078080e7          	jalr	120(ra) # 80006a04 <userinit>
    80006994:	0ff0000f          	fence
    80006998:	00100793          	li	a5,1
    8000699c:	00003517          	auipc	a0,0x3
    800069a0:	3a450513          	addi	a0,a0,932 # 80009d40 <_ZTV12ConsumerSync+0x50>
    800069a4:	00f4a023          	sw	a5,0(s1)
    800069a8:	00001097          	auipc	ra,0x1
    800069ac:	a40080e7          	jalr	-1472(ra) # 800073e8 <__printf>
    800069b0:	0000006f          	j	800069b0 <system_main+0xd4>

00000000800069b4 <cpuid>:
    800069b4:	ff010113          	addi	sp,sp,-16
    800069b8:	00813423          	sd	s0,8(sp)
    800069bc:	01010413          	addi	s0,sp,16
    800069c0:	00020513          	mv	a0,tp
    800069c4:	00813403          	ld	s0,8(sp)
    800069c8:	0005051b          	sext.w	a0,a0
    800069cc:	01010113          	addi	sp,sp,16
    800069d0:	00008067          	ret

00000000800069d4 <mycpu>:
    800069d4:	ff010113          	addi	sp,sp,-16
    800069d8:	00813423          	sd	s0,8(sp)
    800069dc:	01010413          	addi	s0,sp,16
    800069e0:	00020793          	mv	a5,tp
    800069e4:	00813403          	ld	s0,8(sp)
    800069e8:	0007879b          	sext.w	a5,a5
    800069ec:	00779793          	slli	a5,a5,0x7
    800069f0:	00006517          	auipc	a0,0x6
    800069f4:	1c050513          	addi	a0,a0,448 # 8000cbb0 <cpus>
    800069f8:	00f50533          	add	a0,a0,a5
    800069fc:	01010113          	addi	sp,sp,16
    80006a00:	00008067          	ret

0000000080006a04 <userinit>:
    80006a04:	ff010113          	addi	sp,sp,-16
    80006a08:	00813423          	sd	s0,8(sp)
    80006a0c:	01010413          	addi	s0,sp,16
    80006a10:	00813403          	ld	s0,8(sp)
    80006a14:	01010113          	addi	sp,sp,16
    80006a18:	ffffc317          	auipc	t1,0xffffc
    80006a1c:	c6430067          	jr	-924(t1) # 8000267c <main>

0000000080006a20 <either_copyout>:
    80006a20:	ff010113          	addi	sp,sp,-16
    80006a24:	00813023          	sd	s0,0(sp)
    80006a28:	00113423          	sd	ra,8(sp)
    80006a2c:	01010413          	addi	s0,sp,16
    80006a30:	02051663          	bnez	a0,80006a5c <either_copyout+0x3c>
    80006a34:	00058513          	mv	a0,a1
    80006a38:	00060593          	mv	a1,a2
    80006a3c:	0006861b          	sext.w	a2,a3
    80006a40:	00002097          	auipc	ra,0x2
    80006a44:	c54080e7          	jalr	-940(ra) # 80008694 <__memmove>
    80006a48:	00813083          	ld	ra,8(sp)
    80006a4c:	00013403          	ld	s0,0(sp)
    80006a50:	00000513          	li	a0,0
    80006a54:	01010113          	addi	sp,sp,16
    80006a58:	00008067          	ret
    80006a5c:	00003517          	auipc	a0,0x3
    80006a60:	32450513          	addi	a0,a0,804 # 80009d80 <_ZTV12ConsumerSync+0x90>
    80006a64:	00001097          	auipc	ra,0x1
    80006a68:	928080e7          	jalr	-1752(ra) # 8000738c <panic>

0000000080006a6c <either_copyin>:
    80006a6c:	ff010113          	addi	sp,sp,-16
    80006a70:	00813023          	sd	s0,0(sp)
    80006a74:	00113423          	sd	ra,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	02059463          	bnez	a1,80006aa4 <either_copyin+0x38>
    80006a80:	00060593          	mv	a1,a2
    80006a84:	0006861b          	sext.w	a2,a3
    80006a88:	00002097          	auipc	ra,0x2
    80006a8c:	c0c080e7          	jalr	-1012(ra) # 80008694 <__memmove>
    80006a90:	00813083          	ld	ra,8(sp)
    80006a94:	00013403          	ld	s0,0(sp)
    80006a98:	00000513          	li	a0,0
    80006a9c:	01010113          	addi	sp,sp,16
    80006aa0:	00008067          	ret
    80006aa4:	00003517          	auipc	a0,0x3
    80006aa8:	30450513          	addi	a0,a0,772 # 80009da8 <_ZTV12ConsumerSync+0xb8>
    80006aac:	00001097          	auipc	ra,0x1
    80006ab0:	8e0080e7          	jalr	-1824(ra) # 8000738c <panic>

0000000080006ab4 <trapinit>:
    80006ab4:	ff010113          	addi	sp,sp,-16
    80006ab8:	00813423          	sd	s0,8(sp)
    80006abc:	01010413          	addi	s0,sp,16
    80006ac0:	00813403          	ld	s0,8(sp)
    80006ac4:	00003597          	auipc	a1,0x3
    80006ac8:	30c58593          	addi	a1,a1,780 # 80009dd0 <_ZTV12ConsumerSync+0xe0>
    80006acc:	00006517          	auipc	a0,0x6
    80006ad0:	16450513          	addi	a0,a0,356 # 8000cc30 <tickslock>
    80006ad4:	01010113          	addi	sp,sp,16
    80006ad8:	00001317          	auipc	t1,0x1
    80006adc:	5c030067          	jr	1472(t1) # 80008098 <initlock>

0000000080006ae0 <trapinithart>:
    80006ae0:	ff010113          	addi	sp,sp,-16
    80006ae4:	00813423          	sd	s0,8(sp)
    80006ae8:	01010413          	addi	s0,sp,16
    80006aec:	00000797          	auipc	a5,0x0
    80006af0:	2f478793          	addi	a5,a5,756 # 80006de0 <kernelvec>
    80006af4:	10579073          	csrw	stvec,a5
    80006af8:	00813403          	ld	s0,8(sp)
    80006afc:	01010113          	addi	sp,sp,16
    80006b00:	00008067          	ret

0000000080006b04 <usertrap>:
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00813423          	sd	s0,8(sp)
    80006b0c:	01010413          	addi	s0,sp,16
    80006b10:	00813403          	ld	s0,8(sp)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <usertrapret>:
    80006b1c:	ff010113          	addi	sp,sp,-16
    80006b20:	00813423          	sd	s0,8(sp)
    80006b24:	01010413          	addi	s0,sp,16
    80006b28:	00813403          	ld	s0,8(sp)
    80006b2c:	01010113          	addi	sp,sp,16
    80006b30:	00008067          	ret

0000000080006b34 <kerneltrap>:
    80006b34:	fe010113          	addi	sp,sp,-32
    80006b38:	00813823          	sd	s0,16(sp)
    80006b3c:	00113c23          	sd	ra,24(sp)
    80006b40:	00913423          	sd	s1,8(sp)
    80006b44:	02010413          	addi	s0,sp,32
    80006b48:	142025f3          	csrr	a1,scause
    80006b4c:	100027f3          	csrr	a5,sstatus
    80006b50:	0027f793          	andi	a5,a5,2
    80006b54:	10079c63          	bnez	a5,80006c6c <kerneltrap+0x138>
    80006b58:	142027f3          	csrr	a5,scause
    80006b5c:	0207ce63          	bltz	a5,80006b98 <kerneltrap+0x64>
    80006b60:	00003517          	auipc	a0,0x3
    80006b64:	2b850513          	addi	a0,a0,696 # 80009e18 <_ZTV12ConsumerSync+0x128>
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	880080e7          	jalr	-1920(ra) # 800073e8 <__printf>
    80006b70:	141025f3          	csrr	a1,sepc
    80006b74:	14302673          	csrr	a2,stval
    80006b78:	00003517          	auipc	a0,0x3
    80006b7c:	2b050513          	addi	a0,a0,688 # 80009e28 <_ZTV12ConsumerSync+0x138>
    80006b80:	00001097          	auipc	ra,0x1
    80006b84:	868080e7          	jalr	-1944(ra) # 800073e8 <__printf>
    80006b88:	00003517          	auipc	a0,0x3
    80006b8c:	2b850513          	addi	a0,a0,696 # 80009e40 <_ZTV12ConsumerSync+0x150>
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	7fc080e7          	jalr	2044(ra) # 8000738c <panic>
    80006b98:	0ff7f713          	andi	a4,a5,255
    80006b9c:	00900693          	li	a3,9
    80006ba0:	04d70063          	beq	a4,a3,80006be0 <kerneltrap+0xac>
    80006ba4:	fff00713          	li	a4,-1
    80006ba8:	03f71713          	slli	a4,a4,0x3f
    80006bac:	00170713          	addi	a4,a4,1
    80006bb0:	fae798e3          	bne	a5,a4,80006b60 <kerneltrap+0x2c>
    80006bb4:	00000097          	auipc	ra,0x0
    80006bb8:	e00080e7          	jalr	-512(ra) # 800069b4 <cpuid>
    80006bbc:	06050663          	beqz	a0,80006c28 <kerneltrap+0xf4>
    80006bc0:	144027f3          	csrr	a5,sip
    80006bc4:	ffd7f793          	andi	a5,a5,-3
    80006bc8:	14479073          	csrw	sip,a5
    80006bcc:	01813083          	ld	ra,24(sp)
    80006bd0:	01013403          	ld	s0,16(sp)
    80006bd4:	00813483          	ld	s1,8(sp)
    80006bd8:	02010113          	addi	sp,sp,32
    80006bdc:	00008067          	ret
    80006be0:	00000097          	auipc	ra,0x0
    80006be4:	3c4080e7          	jalr	964(ra) # 80006fa4 <plic_claim>
    80006be8:	00a00793          	li	a5,10
    80006bec:	00050493          	mv	s1,a0
    80006bf0:	06f50863          	beq	a0,a5,80006c60 <kerneltrap+0x12c>
    80006bf4:	fc050ce3          	beqz	a0,80006bcc <kerneltrap+0x98>
    80006bf8:	00050593          	mv	a1,a0
    80006bfc:	00003517          	auipc	a0,0x3
    80006c00:	1fc50513          	addi	a0,a0,508 # 80009df8 <_ZTV12ConsumerSync+0x108>
    80006c04:	00000097          	auipc	ra,0x0
    80006c08:	7e4080e7          	jalr	2020(ra) # 800073e8 <__printf>
    80006c0c:	01013403          	ld	s0,16(sp)
    80006c10:	01813083          	ld	ra,24(sp)
    80006c14:	00048513          	mv	a0,s1
    80006c18:	00813483          	ld	s1,8(sp)
    80006c1c:	02010113          	addi	sp,sp,32
    80006c20:	00000317          	auipc	t1,0x0
    80006c24:	3bc30067          	jr	956(t1) # 80006fdc <plic_complete>
    80006c28:	00006517          	auipc	a0,0x6
    80006c2c:	00850513          	addi	a0,a0,8 # 8000cc30 <tickslock>
    80006c30:	00001097          	auipc	ra,0x1
    80006c34:	48c080e7          	jalr	1164(ra) # 800080bc <acquire>
    80006c38:	00005717          	auipc	a4,0x5
    80006c3c:	f0470713          	addi	a4,a4,-252 # 8000bb3c <ticks>
    80006c40:	00072783          	lw	a5,0(a4)
    80006c44:	00006517          	auipc	a0,0x6
    80006c48:	fec50513          	addi	a0,a0,-20 # 8000cc30 <tickslock>
    80006c4c:	0017879b          	addiw	a5,a5,1
    80006c50:	00f72023          	sw	a5,0(a4)
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	534080e7          	jalr	1332(ra) # 80008188 <release>
    80006c5c:	f65ff06f          	j	80006bc0 <kerneltrap+0x8c>
    80006c60:	00001097          	auipc	ra,0x1
    80006c64:	090080e7          	jalr	144(ra) # 80007cf0 <uartintr>
    80006c68:	fa5ff06f          	j	80006c0c <kerneltrap+0xd8>
    80006c6c:	00003517          	auipc	a0,0x3
    80006c70:	16c50513          	addi	a0,a0,364 # 80009dd8 <_ZTV12ConsumerSync+0xe8>
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	718080e7          	jalr	1816(ra) # 8000738c <panic>

0000000080006c7c <clockintr>:
    80006c7c:	fe010113          	addi	sp,sp,-32
    80006c80:	00813823          	sd	s0,16(sp)
    80006c84:	00913423          	sd	s1,8(sp)
    80006c88:	00113c23          	sd	ra,24(sp)
    80006c8c:	02010413          	addi	s0,sp,32
    80006c90:	00006497          	auipc	s1,0x6
    80006c94:	fa048493          	addi	s1,s1,-96 # 8000cc30 <tickslock>
    80006c98:	00048513          	mv	a0,s1
    80006c9c:	00001097          	auipc	ra,0x1
    80006ca0:	420080e7          	jalr	1056(ra) # 800080bc <acquire>
    80006ca4:	00005717          	auipc	a4,0x5
    80006ca8:	e9870713          	addi	a4,a4,-360 # 8000bb3c <ticks>
    80006cac:	00072783          	lw	a5,0(a4)
    80006cb0:	01013403          	ld	s0,16(sp)
    80006cb4:	01813083          	ld	ra,24(sp)
    80006cb8:	00048513          	mv	a0,s1
    80006cbc:	0017879b          	addiw	a5,a5,1
    80006cc0:	00813483          	ld	s1,8(sp)
    80006cc4:	00f72023          	sw	a5,0(a4)
    80006cc8:	02010113          	addi	sp,sp,32
    80006ccc:	00001317          	auipc	t1,0x1
    80006cd0:	4bc30067          	jr	1212(t1) # 80008188 <release>

0000000080006cd4 <devintr>:
    80006cd4:	142027f3          	csrr	a5,scause
    80006cd8:	00000513          	li	a0,0
    80006cdc:	0007c463          	bltz	a5,80006ce4 <devintr+0x10>
    80006ce0:	00008067          	ret
    80006ce4:	fe010113          	addi	sp,sp,-32
    80006ce8:	00813823          	sd	s0,16(sp)
    80006cec:	00113c23          	sd	ra,24(sp)
    80006cf0:	00913423          	sd	s1,8(sp)
    80006cf4:	02010413          	addi	s0,sp,32
    80006cf8:	0ff7f713          	andi	a4,a5,255
    80006cfc:	00900693          	li	a3,9
    80006d00:	04d70c63          	beq	a4,a3,80006d58 <devintr+0x84>
    80006d04:	fff00713          	li	a4,-1
    80006d08:	03f71713          	slli	a4,a4,0x3f
    80006d0c:	00170713          	addi	a4,a4,1
    80006d10:	00e78c63          	beq	a5,a4,80006d28 <devintr+0x54>
    80006d14:	01813083          	ld	ra,24(sp)
    80006d18:	01013403          	ld	s0,16(sp)
    80006d1c:	00813483          	ld	s1,8(sp)
    80006d20:	02010113          	addi	sp,sp,32
    80006d24:	00008067          	ret
    80006d28:	00000097          	auipc	ra,0x0
    80006d2c:	c8c080e7          	jalr	-884(ra) # 800069b4 <cpuid>
    80006d30:	06050663          	beqz	a0,80006d9c <devintr+0xc8>
    80006d34:	144027f3          	csrr	a5,sip
    80006d38:	ffd7f793          	andi	a5,a5,-3
    80006d3c:	14479073          	csrw	sip,a5
    80006d40:	01813083          	ld	ra,24(sp)
    80006d44:	01013403          	ld	s0,16(sp)
    80006d48:	00813483          	ld	s1,8(sp)
    80006d4c:	00200513          	li	a0,2
    80006d50:	02010113          	addi	sp,sp,32
    80006d54:	00008067          	ret
    80006d58:	00000097          	auipc	ra,0x0
    80006d5c:	24c080e7          	jalr	588(ra) # 80006fa4 <plic_claim>
    80006d60:	00a00793          	li	a5,10
    80006d64:	00050493          	mv	s1,a0
    80006d68:	06f50663          	beq	a0,a5,80006dd4 <devintr+0x100>
    80006d6c:	00100513          	li	a0,1
    80006d70:	fa0482e3          	beqz	s1,80006d14 <devintr+0x40>
    80006d74:	00048593          	mv	a1,s1
    80006d78:	00003517          	auipc	a0,0x3
    80006d7c:	08050513          	addi	a0,a0,128 # 80009df8 <_ZTV12ConsumerSync+0x108>
    80006d80:	00000097          	auipc	ra,0x0
    80006d84:	668080e7          	jalr	1640(ra) # 800073e8 <__printf>
    80006d88:	00048513          	mv	a0,s1
    80006d8c:	00000097          	auipc	ra,0x0
    80006d90:	250080e7          	jalr	592(ra) # 80006fdc <plic_complete>
    80006d94:	00100513          	li	a0,1
    80006d98:	f7dff06f          	j	80006d14 <devintr+0x40>
    80006d9c:	00006517          	auipc	a0,0x6
    80006da0:	e9450513          	addi	a0,a0,-364 # 8000cc30 <tickslock>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	318080e7          	jalr	792(ra) # 800080bc <acquire>
    80006dac:	00005717          	auipc	a4,0x5
    80006db0:	d9070713          	addi	a4,a4,-624 # 8000bb3c <ticks>
    80006db4:	00072783          	lw	a5,0(a4)
    80006db8:	00006517          	auipc	a0,0x6
    80006dbc:	e7850513          	addi	a0,a0,-392 # 8000cc30 <tickslock>
    80006dc0:	0017879b          	addiw	a5,a5,1
    80006dc4:	00f72023          	sw	a5,0(a4)
    80006dc8:	00001097          	auipc	ra,0x1
    80006dcc:	3c0080e7          	jalr	960(ra) # 80008188 <release>
    80006dd0:	f65ff06f          	j	80006d34 <devintr+0x60>
    80006dd4:	00001097          	auipc	ra,0x1
    80006dd8:	f1c080e7          	jalr	-228(ra) # 80007cf0 <uartintr>
    80006ddc:	fadff06f          	j	80006d88 <devintr+0xb4>

0000000080006de0 <kernelvec>:
    80006de0:	f0010113          	addi	sp,sp,-256
    80006de4:	00113023          	sd	ra,0(sp)
    80006de8:	00213423          	sd	sp,8(sp)
    80006dec:	00313823          	sd	gp,16(sp)
    80006df0:	00413c23          	sd	tp,24(sp)
    80006df4:	02513023          	sd	t0,32(sp)
    80006df8:	02613423          	sd	t1,40(sp)
    80006dfc:	02713823          	sd	t2,48(sp)
    80006e00:	02813c23          	sd	s0,56(sp)
    80006e04:	04913023          	sd	s1,64(sp)
    80006e08:	04a13423          	sd	a0,72(sp)
    80006e0c:	04b13823          	sd	a1,80(sp)
    80006e10:	04c13c23          	sd	a2,88(sp)
    80006e14:	06d13023          	sd	a3,96(sp)
    80006e18:	06e13423          	sd	a4,104(sp)
    80006e1c:	06f13823          	sd	a5,112(sp)
    80006e20:	07013c23          	sd	a6,120(sp)
    80006e24:	09113023          	sd	a7,128(sp)
    80006e28:	09213423          	sd	s2,136(sp)
    80006e2c:	09313823          	sd	s3,144(sp)
    80006e30:	09413c23          	sd	s4,152(sp)
    80006e34:	0b513023          	sd	s5,160(sp)
    80006e38:	0b613423          	sd	s6,168(sp)
    80006e3c:	0b713823          	sd	s7,176(sp)
    80006e40:	0b813c23          	sd	s8,184(sp)
    80006e44:	0d913023          	sd	s9,192(sp)
    80006e48:	0da13423          	sd	s10,200(sp)
    80006e4c:	0db13823          	sd	s11,208(sp)
    80006e50:	0dc13c23          	sd	t3,216(sp)
    80006e54:	0fd13023          	sd	t4,224(sp)
    80006e58:	0fe13423          	sd	t5,232(sp)
    80006e5c:	0ff13823          	sd	t6,240(sp)
    80006e60:	cd5ff0ef          	jal	ra,80006b34 <kerneltrap>
    80006e64:	00013083          	ld	ra,0(sp)
    80006e68:	00813103          	ld	sp,8(sp)
    80006e6c:	01013183          	ld	gp,16(sp)
    80006e70:	02013283          	ld	t0,32(sp)
    80006e74:	02813303          	ld	t1,40(sp)
    80006e78:	03013383          	ld	t2,48(sp)
    80006e7c:	03813403          	ld	s0,56(sp)
    80006e80:	04013483          	ld	s1,64(sp)
    80006e84:	04813503          	ld	a0,72(sp)
    80006e88:	05013583          	ld	a1,80(sp)
    80006e8c:	05813603          	ld	a2,88(sp)
    80006e90:	06013683          	ld	a3,96(sp)
    80006e94:	06813703          	ld	a4,104(sp)
    80006e98:	07013783          	ld	a5,112(sp)
    80006e9c:	07813803          	ld	a6,120(sp)
    80006ea0:	08013883          	ld	a7,128(sp)
    80006ea4:	08813903          	ld	s2,136(sp)
    80006ea8:	09013983          	ld	s3,144(sp)
    80006eac:	09813a03          	ld	s4,152(sp)
    80006eb0:	0a013a83          	ld	s5,160(sp)
    80006eb4:	0a813b03          	ld	s6,168(sp)
    80006eb8:	0b013b83          	ld	s7,176(sp)
    80006ebc:	0b813c03          	ld	s8,184(sp)
    80006ec0:	0c013c83          	ld	s9,192(sp)
    80006ec4:	0c813d03          	ld	s10,200(sp)
    80006ec8:	0d013d83          	ld	s11,208(sp)
    80006ecc:	0d813e03          	ld	t3,216(sp)
    80006ed0:	0e013e83          	ld	t4,224(sp)
    80006ed4:	0e813f03          	ld	t5,232(sp)
    80006ed8:	0f013f83          	ld	t6,240(sp)
    80006edc:	10010113          	addi	sp,sp,256
    80006ee0:	10200073          	sret
    80006ee4:	00000013          	nop
    80006ee8:	00000013          	nop
    80006eec:	00000013          	nop

0000000080006ef0 <timervec>:
    80006ef0:	34051573          	csrrw	a0,mscratch,a0
    80006ef4:	00b53023          	sd	a1,0(a0)
    80006ef8:	00c53423          	sd	a2,8(a0)
    80006efc:	00d53823          	sd	a3,16(a0)
    80006f00:	01853583          	ld	a1,24(a0)
    80006f04:	02053603          	ld	a2,32(a0)
    80006f08:	0005b683          	ld	a3,0(a1)
    80006f0c:	00c686b3          	add	a3,a3,a2
    80006f10:	00d5b023          	sd	a3,0(a1)
    80006f14:	00200593          	li	a1,2
    80006f18:	14459073          	csrw	sip,a1
    80006f1c:	01053683          	ld	a3,16(a0)
    80006f20:	00853603          	ld	a2,8(a0)
    80006f24:	00053583          	ld	a1,0(a0)
    80006f28:	34051573          	csrrw	a0,mscratch,a0
    80006f2c:	30200073          	mret

0000000080006f30 <plicinit>:
    80006f30:	ff010113          	addi	sp,sp,-16
    80006f34:	00813423          	sd	s0,8(sp)
    80006f38:	01010413          	addi	s0,sp,16
    80006f3c:	00813403          	ld	s0,8(sp)
    80006f40:	0c0007b7          	lui	a5,0xc000
    80006f44:	00100713          	li	a4,1
    80006f48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006f4c:	00e7a223          	sw	a4,4(a5)
    80006f50:	01010113          	addi	sp,sp,16
    80006f54:	00008067          	ret

0000000080006f58 <plicinithart>:
    80006f58:	ff010113          	addi	sp,sp,-16
    80006f5c:	00813023          	sd	s0,0(sp)
    80006f60:	00113423          	sd	ra,8(sp)
    80006f64:	01010413          	addi	s0,sp,16
    80006f68:	00000097          	auipc	ra,0x0
    80006f6c:	a4c080e7          	jalr	-1460(ra) # 800069b4 <cpuid>
    80006f70:	0085171b          	slliw	a4,a0,0x8
    80006f74:	0c0027b7          	lui	a5,0xc002
    80006f78:	00e787b3          	add	a5,a5,a4
    80006f7c:	40200713          	li	a4,1026
    80006f80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006f84:	00813083          	ld	ra,8(sp)
    80006f88:	00013403          	ld	s0,0(sp)
    80006f8c:	00d5151b          	slliw	a0,a0,0xd
    80006f90:	0c2017b7          	lui	a5,0xc201
    80006f94:	00a78533          	add	a0,a5,a0
    80006f98:	00052023          	sw	zero,0(a0)
    80006f9c:	01010113          	addi	sp,sp,16
    80006fa0:	00008067          	ret

0000000080006fa4 <plic_claim>:
    80006fa4:	ff010113          	addi	sp,sp,-16
    80006fa8:	00813023          	sd	s0,0(sp)
    80006fac:	00113423          	sd	ra,8(sp)
    80006fb0:	01010413          	addi	s0,sp,16
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	a00080e7          	jalr	-1536(ra) # 800069b4 <cpuid>
    80006fbc:	00813083          	ld	ra,8(sp)
    80006fc0:	00013403          	ld	s0,0(sp)
    80006fc4:	00d5151b          	slliw	a0,a0,0xd
    80006fc8:	0c2017b7          	lui	a5,0xc201
    80006fcc:	00a78533          	add	a0,a5,a0
    80006fd0:	00452503          	lw	a0,4(a0)
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	00008067          	ret

0000000080006fdc <plic_complete>:
    80006fdc:	fe010113          	addi	sp,sp,-32
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	00113c23          	sd	ra,24(sp)
    80006fec:	02010413          	addi	s0,sp,32
    80006ff0:	00050493          	mv	s1,a0
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	9c0080e7          	jalr	-1600(ra) # 800069b4 <cpuid>
    80006ffc:	01813083          	ld	ra,24(sp)
    80007000:	01013403          	ld	s0,16(sp)
    80007004:	00d5179b          	slliw	a5,a0,0xd
    80007008:	0c201737          	lui	a4,0xc201
    8000700c:	00f707b3          	add	a5,a4,a5
    80007010:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007014:	00813483          	ld	s1,8(sp)
    80007018:	02010113          	addi	sp,sp,32
    8000701c:	00008067          	ret

0000000080007020 <consolewrite>:
    80007020:	fb010113          	addi	sp,sp,-80
    80007024:	04813023          	sd	s0,64(sp)
    80007028:	04113423          	sd	ra,72(sp)
    8000702c:	02913c23          	sd	s1,56(sp)
    80007030:	03213823          	sd	s2,48(sp)
    80007034:	03313423          	sd	s3,40(sp)
    80007038:	03413023          	sd	s4,32(sp)
    8000703c:	01513c23          	sd	s5,24(sp)
    80007040:	05010413          	addi	s0,sp,80
    80007044:	06c05c63          	blez	a2,800070bc <consolewrite+0x9c>
    80007048:	00060993          	mv	s3,a2
    8000704c:	00050a13          	mv	s4,a0
    80007050:	00058493          	mv	s1,a1
    80007054:	00000913          	li	s2,0
    80007058:	fff00a93          	li	s5,-1
    8000705c:	01c0006f          	j	80007078 <consolewrite+0x58>
    80007060:	fbf44503          	lbu	a0,-65(s0)
    80007064:	0019091b          	addiw	s2,s2,1
    80007068:	00148493          	addi	s1,s1,1
    8000706c:	00001097          	auipc	ra,0x1
    80007070:	a9c080e7          	jalr	-1380(ra) # 80007b08 <uartputc>
    80007074:	03298063          	beq	s3,s2,80007094 <consolewrite+0x74>
    80007078:	00048613          	mv	a2,s1
    8000707c:	00100693          	li	a3,1
    80007080:	000a0593          	mv	a1,s4
    80007084:	fbf40513          	addi	a0,s0,-65
    80007088:	00000097          	auipc	ra,0x0
    8000708c:	9e4080e7          	jalr	-1564(ra) # 80006a6c <either_copyin>
    80007090:	fd5518e3          	bne	a0,s5,80007060 <consolewrite+0x40>
    80007094:	04813083          	ld	ra,72(sp)
    80007098:	04013403          	ld	s0,64(sp)
    8000709c:	03813483          	ld	s1,56(sp)
    800070a0:	02813983          	ld	s3,40(sp)
    800070a4:	02013a03          	ld	s4,32(sp)
    800070a8:	01813a83          	ld	s5,24(sp)
    800070ac:	00090513          	mv	a0,s2
    800070b0:	03013903          	ld	s2,48(sp)
    800070b4:	05010113          	addi	sp,sp,80
    800070b8:	00008067          	ret
    800070bc:	00000913          	li	s2,0
    800070c0:	fd5ff06f          	j	80007094 <consolewrite+0x74>

00000000800070c4 <consoleread>:
    800070c4:	f9010113          	addi	sp,sp,-112
    800070c8:	06813023          	sd	s0,96(sp)
    800070cc:	04913c23          	sd	s1,88(sp)
    800070d0:	05213823          	sd	s2,80(sp)
    800070d4:	05313423          	sd	s3,72(sp)
    800070d8:	05413023          	sd	s4,64(sp)
    800070dc:	03513c23          	sd	s5,56(sp)
    800070e0:	03613823          	sd	s6,48(sp)
    800070e4:	03713423          	sd	s7,40(sp)
    800070e8:	03813023          	sd	s8,32(sp)
    800070ec:	06113423          	sd	ra,104(sp)
    800070f0:	01913c23          	sd	s9,24(sp)
    800070f4:	07010413          	addi	s0,sp,112
    800070f8:	00060b93          	mv	s7,a2
    800070fc:	00050913          	mv	s2,a0
    80007100:	00058c13          	mv	s8,a1
    80007104:	00060b1b          	sext.w	s6,a2
    80007108:	00006497          	auipc	s1,0x6
    8000710c:	b5048493          	addi	s1,s1,-1200 # 8000cc58 <cons>
    80007110:	00400993          	li	s3,4
    80007114:	fff00a13          	li	s4,-1
    80007118:	00a00a93          	li	s5,10
    8000711c:	05705e63          	blez	s7,80007178 <consoleread+0xb4>
    80007120:	09c4a703          	lw	a4,156(s1)
    80007124:	0984a783          	lw	a5,152(s1)
    80007128:	0007071b          	sext.w	a4,a4
    8000712c:	08e78463          	beq	a5,a4,800071b4 <consoleread+0xf0>
    80007130:	07f7f713          	andi	a4,a5,127
    80007134:	00e48733          	add	a4,s1,a4
    80007138:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000713c:	0017869b          	addiw	a3,a5,1
    80007140:	08d4ac23          	sw	a3,152(s1)
    80007144:	00070c9b          	sext.w	s9,a4
    80007148:	0b370663          	beq	a4,s3,800071f4 <consoleread+0x130>
    8000714c:	00100693          	li	a3,1
    80007150:	f9f40613          	addi	a2,s0,-97
    80007154:	000c0593          	mv	a1,s8
    80007158:	00090513          	mv	a0,s2
    8000715c:	f8e40fa3          	sb	a4,-97(s0)
    80007160:	00000097          	auipc	ra,0x0
    80007164:	8c0080e7          	jalr	-1856(ra) # 80006a20 <either_copyout>
    80007168:	01450863          	beq	a0,s4,80007178 <consoleread+0xb4>
    8000716c:	001c0c13          	addi	s8,s8,1
    80007170:	fffb8b9b          	addiw	s7,s7,-1
    80007174:	fb5c94e3          	bne	s9,s5,8000711c <consoleread+0x58>
    80007178:	000b851b          	sext.w	a0,s7
    8000717c:	06813083          	ld	ra,104(sp)
    80007180:	06013403          	ld	s0,96(sp)
    80007184:	05813483          	ld	s1,88(sp)
    80007188:	05013903          	ld	s2,80(sp)
    8000718c:	04813983          	ld	s3,72(sp)
    80007190:	04013a03          	ld	s4,64(sp)
    80007194:	03813a83          	ld	s5,56(sp)
    80007198:	02813b83          	ld	s7,40(sp)
    8000719c:	02013c03          	ld	s8,32(sp)
    800071a0:	01813c83          	ld	s9,24(sp)
    800071a4:	40ab053b          	subw	a0,s6,a0
    800071a8:	03013b03          	ld	s6,48(sp)
    800071ac:	07010113          	addi	sp,sp,112
    800071b0:	00008067          	ret
    800071b4:	00001097          	auipc	ra,0x1
    800071b8:	1d8080e7          	jalr	472(ra) # 8000838c <push_on>
    800071bc:	0984a703          	lw	a4,152(s1)
    800071c0:	09c4a783          	lw	a5,156(s1)
    800071c4:	0007879b          	sext.w	a5,a5
    800071c8:	fef70ce3          	beq	a4,a5,800071c0 <consoleread+0xfc>
    800071cc:	00001097          	auipc	ra,0x1
    800071d0:	234080e7          	jalr	564(ra) # 80008400 <pop_on>
    800071d4:	0984a783          	lw	a5,152(s1)
    800071d8:	07f7f713          	andi	a4,a5,127
    800071dc:	00e48733          	add	a4,s1,a4
    800071e0:	01874703          	lbu	a4,24(a4)
    800071e4:	0017869b          	addiw	a3,a5,1
    800071e8:	08d4ac23          	sw	a3,152(s1)
    800071ec:	00070c9b          	sext.w	s9,a4
    800071f0:	f5371ee3          	bne	a4,s3,8000714c <consoleread+0x88>
    800071f4:	000b851b          	sext.w	a0,s7
    800071f8:	f96bf2e3          	bgeu	s7,s6,8000717c <consoleread+0xb8>
    800071fc:	08f4ac23          	sw	a5,152(s1)
    80007200:	f7dff06f          	j	8000717c <consoleread+0xb8>

0000000080007204 <consputc>:
    80007204:	10000793          	li	a5,256
    80007208:	00f50663          	beq	a0,a5,80007214 <consputc+0x10>
    8000720c:	00001317          	auipc	t1,0x1
    80007210:	9f430067          	jr	-1548(t1) # 80007c00 <uartputc_sync>
    80007214:	ff010113          	addi	sp,sp,-16
    80007218:	00113423          	sd	ra,8(sp)
    8000721c:	00813023          	sd	s0,0(sp)
    80007220:	01010413          	addi	s0,sp,16
    80007224:	00800513          	li	a0,8
    80007228:	00001097          	auipc	ra,0x1
    8000722c:	9d8080e7          	jalr	-1576(ra) # 80007c00 <uartputc_sync>
    80007230:	02000513          	li	a0,32
    80007234:	00001097          	auipc	ra,0x1
    80007238:	9cc080e7          	jalr	-1588(ra) # 80007c00 <uartputc_sync>
    8000723c:	00013403          	ld	s0,0(sp)
    80007240:	00813083          	ld	ra,8(sp)
    80007244:	00800513          	li	a0,8
    80007248:	01010113          	addi	sp,sp,16
    8000724c:	00001317          	auipc	t1,0x1
    80007250:	9b430067          	jr	-1612(t1) # 80007c00 <uartputc_sync>

0000000080007254 <consoleintr>:
    80007254:	fe010113          	addi	sp,sp,-32
    80007258:	00813823          	sd	s0,16(sp)
    8000725c:	00913423          	sd	s1,8(sp)
    80007260:	01213023          	sd	s2,0(sp)
    80007264:	00113c23          	sd	ra,24(sp)
    80007268:	02010413          	addi	s0,sp,32
    8000726c:	00006917          	auipc	s2,0x6
    80007270:	9ec90913          	addi	s2,s2,-1556 # 8000cc58 <cons>
    80007274:	00050493          	mv	s1,a0
    80007278:	00090513          	mv	a0,s2
    8000727c:	00001097          	auipc	ra,0x1
    80007280:	e40080e7          	jalr	-448(ra) # 800080bc <acquire>
    80007284:	02048c63          	beqz	s1,800072bc <consoleintr+0x68>
    80007288:	0a092783          	lw	a5,160(s2)
    8000728c:	09892703          	lw	a4,152(s2)
    80007290:	07f00693          	li	a3,127
    80007294:	40e7873b          	subw	a4,a5,a4
    80007298:	02e6e263          	bltu	a3,a4,800072bc <consoleintr+0x68>
    8000729c:	00d00713          	li	a4,13
    800072a0:	04e48063          	beq	s1,a4,800072e0 <consoleintr+0x8c>
    800072a4:	07f7f713          	andi	a4,a5,127
    800072a8:	00e90733          	add	a4,s2,a4
    800072ac:	0017879b          	addiw	a5,a5,1
    800072b0:	0af92023          	sw	a5,160(s2)
    800072b4:	00970c23          	sb	s1,24(a4)
    800072b8:	08f92e23          	sw	a5,156(s2)
    800072bc:	01013403          	ld	s0,16(sp)
    800072c0:	01813083          	ld	ra,24(sp)
    800072c4:	00813483          	ld	s1,8(sp)
    800072c8:	00013903          	ld	s2,0(sp)
    800072cc:	00006517          	auipc	a0,0x6
    800072d0:	98c50513          	addi	a0,a0,-1652 # 8000cc58 <cons>
    800072d4:	02010113          	addi	sp,sp,32
    800072d8:	00001317          	auipc	t1,0x1
    800072dc:	eb030067          	jr	-336(t1) # 80008188 <release>
    800072e0:	00a00493          	li	s1,10
    800072e4:	fc1ff06f          	j	800072a4 <consoleintr+0x50>

00000000800072e8 <consoleinit>:
    800072e8:	fe010113          	addi	sp,sp,-32
    800072ec:	00113c23          	sd	ra,24(sp)
    800072f0:	00813823          	sd	s0,16(sp)
    800072f4:	00913423          	sd	s1,8(sp)
    800072f8:	02010413          	addi	s0,sp,32
    800072fc:	00006497          	auipc	s1,0x6
    80007300:	95c48493          	addi	s1,s1,-1700 # 8000cc58 <cons>
    80007304:	00048513          	mv	a0,s1
    80007308:	00003597          	auipc	a1,0x3
    8000730c:	b4858593          	addi	a1,a1,-1208 # 80009e50 <_ZTV12ConsumerSync+0x160>
    80007310:	00001097          	auipc	ra,0x1
    80007314:	d88080e7          	jalr	-632(ra) # 80008098 <initlock>
    80007318:	00000097          	auipc	ra,0x0
    8000731c:	7ac080e7          	jalr	1964(ra) # 80007ac4 <uartinit>
    80007320:	01813083          	ld	ra,24(sp)
    80007324:	01013403          	ld	s0,16(sp)
    80007328:	00000797          	auipc	a5,0x0
    8000732c:	d9c78793          	addi	a5,a5,-612 # 800070c4 <consoleread>
    80007330:	0af4bc23          	sd	a5,184(s1)
    80007334:	00000797          	auipc	a5,0x0
    80007338:	cec78793          	addi	a5,a5,-788 # 80007020 <consolewrite>
    8000733c:	0cf4b023          	sd	a5,192(s1)
    80007340:	00813483          	ld	s1,8(sp)
    80007344:	02010113          	addi	sp,sp,32
    80007348:	00008067          	ret

000000008000734c <console_read>:
    8000734c:	ff010113          	addi	sp,sp,-16
    80007350:	00813423          	sd	s0,8(sp)
    80007354:	01010413          	addi	s0,sp,16
    80007358:	00813403          	ld	s0,8(sp)
    8000735c:	00006317          	auipc	t1,0x6
    80007360:	9b433303          	ld	t1,-1612(t1) # 8000cd10 <devsw+0x10>
    80007364:	01010113          	addi	sp,sp,16
    80007368:	00030067          	jr	t1

000000008000736c <console_write>:
    8000736c:	ff010113          	addi	sp,sp,-16
    80007370:	00813423          	sd	s0,8(sp)
    80007374:	01010413          	addi	s0,sp,16
    80007378:	00813403          	ld	s0,8(sp)
    8000737c:	00006317          	auipc	t1,0x6
    80007380:	99c33303          	ld	t1,-1636(t1) # 8000cd18 <devsw+0x18>
    80007384:	01010113          	addi	sp,sp,16
    80007388:	00030067          	jr	t1

000000008000738c <panic>:
    8000738c:	fe010113          	addi	sp,sp,-32
    80007390:	00113c23          	sd	ra,24(sp)
    80007394:	00813823          	sd	s0,16(sp)
    80007398:	00913423          	sd	s1,8(sp)
    8000739c:	02010413          	addi	s0,sp,32
    800073a0:	00050493          	mv	s1,a0
    800073a4:	00003517          	auipc	a0,0x3
    800073a8:	ab450513          	addi	a0,a0,-1356 # 80009e58 <_ZTV12ConsumerSync+0x168>
    800073ac:	00006797          	auipc	a5,0x6
    800073b0:	a007a623          	sw	zero,-1524(a5) # 8000cdb8 <pr+0x18>
    800073b4:	00000097          	auipc	ra,0x0
    800073b8:	034080e7          	jalr	52(ra) # 800073e8 <__printf>
    800073bc:	00048513          	mv	a0,s1
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	028080e7          	jalr	40(ra) # 800073e8 <__printf>
    800073c8:	00002517          	auipc	a0,0x2
    800073cc:	71050513          	addi	a0,a0,1808 # 80009ad8 <_ZTV8Consumer+0x2c8>
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	018080e7          	jalr	24(ra) # 800073e8 <__printf>
    800073d8:	00100793          	li	a5,1
    800073dc:	00004717          	auipc	a4,0x4
    800073e0:	76f72223          	sw	a5,1892(a4) # 8000bb40 <panicked>
    800073e4:	0000006f          	j	800073e4 <panic+0x58>

00000000800073e8 <__printf>:
    800073e8:	f3010113          	addi	sp,sp,-208
    800073ec:	08813023          	sd	s0,128(sp)
    800073f0:	07313423          	sd	s3,104(sp)
    800073f4:	09010413          	addi	s0,sp,144
    800073f8:	05813023          	sd	s8,64(sp)
    800073fc:	08113423          	sd	ra,136(sp)
    80007400:	06913c23          	sd	s1,120(sp)
    80007404:	07213823          	sd	s2,112(sp)
    80007408:	07413023          	sd	s4,96(sp)
    8000740c:	05513c23          	sd	s5,88(sp)
    80007410:	05613823          	sd	s6,80(sp)
    80007414:	05713423          	sd	s7,72(sp)
    80007418:	03913c23          	sd	s9,56(sp)
    8000741c:	03a13823          	sd	s10,48(sp)
    80007420:	03b13423          	sd	s11,40(sp)
    80007424:	00006317          	auipc	t1,0x6
    80007428:	97c30313          	addi	t1,t1,-1668 # 8000cda0 <pr>
    8000742c:	01832c03          	lw	s8,24(t1)
    80007430:	00b43423          	sd	a1,8(s0)
    80007434:	00c43823          	sd	a2,16(s0)
    80007438:	00d43c23          	sd	a3,24(s0)
    8000743c:	02e43023          	sd	a4,32(s0)
    80007440:	02f43423          	sd	a5,40(s0)
    80007444:	03043823          	sd	a6,48(s0)
    80007448:	03143c23          	sd	a7,56(s0)
    8000744c:	00050993          	mv	s3,a0
    80007450:	4a0c1663          	bnez	s8,800078fc <__printf+0x514>
    80007454:	60098c63          	beqz	s3,80007a6c <__printf+0x684>
    80007458:	0009c503          	lbu	a0,0(s3)
    8000745c:	00840793          	addi	a5,s0,8
    80007460:	f6f43c23          	sd	a5,-136(s0)
    80007464:	00000493          	li	s1,0
    80007468:	22050063          	beqz	a0,80007688 <__printf+0x2a0>
    8000746c:	00002a37          	lui	s4,0x2
    80007470:	00018ab7          	lui	s5,0x18
    80007474:	000f4b37          	lui	s6,0xf4
    80007478:	00989bb7          	lui	s7,0x989
    8000747c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007480:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007484:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007488:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000748c:	00148c9b          	addiw	s9,s1,1
    80007490:	02500793          	li	a5,37
    80007494:	01998933          	add	s2,s3,s9
    80007498:	38f51263          	bne	a0,a5,8000781c <__printf+0x434>
    8000749c:	00094783          	lbu	a5,0(s2)
    800074a0:	00078c9b          	sext.w	s9,a5
    800074a4:	1e078263          	beqz	a5,80007688 <__printf+0x2a0>
    800074a8:	0024849b          	addiw	s1,s1,2
    800074ac:	07000713          	li	a4,112
    800074b0:	00998933          	add	s2,s3,s1
    800074b4:	38e78a63          	beq	a5,a4,80007848 <__printf+0x460>
    800074b8:	20f76863          	bltu	a4,a5,800076c8 <__printf+0x2e0>
    800074bc:	42a78863          	beq	a5,a0,800078ec <__printf+0x504>
    800074c0:	06400713          	li	a4,100
    800074c4:	40e79663          	bne	a5,a4,800078d0 <__printf+0x4e8>
    800074c8:	f7843783          	ld	a5,-136(s0)
    800074cc:	0007a603          	lw	a2,0(a5)
    800074d0:	00878793          	addi	a5,a5,8
    800074d4:	f6f43c23          	sd	a5,-136(s0)
    800074d8:	42064a63          	bltz	a2,8000790c <__printf+0x524>
    800074dc:	00a00713          	li	a4,10
    800074e0:	02e677bb          	remuw	a5,a2,a4
    800074e4:	00003d97          	auipc	s11,0x3
    800074e8:	99cd8d93          	addi	s11,s11,-1636 # 80009e80 <digits>
    800074ec:	00900593          	li	a1,9
    800074f0:	0006051b          	sext.w	a0,a2
    800074f4:	00000c93          	li	s9,0
    800074f8:	02079793          	slli	a5,a5,0x20
    800074fc:	0207d793          	srli	a5,a5,0x20
    80007500:	00fd87b3          	add	a5,s11,a5
    80007504:	0007c783          	lbu	a5,0(a5)
    80007508:	02e656bb          	divuw	a3,a2,a4
    8000750c:	f8f40023          	sb	a5,-128(s0)
    80007510:	14c5d863          	bge	a1,a2,80007660 <__printf+0x278>
    80007514:	06300593          	li	a1,99
    80007518:	00100c93          	li	s9,1
    8000751c:	02e6f7bb          	remuw	a5,a3,a4
    80007520:	02079793          	slli	a5,a5,0x20
    80007524:	0207d793          	srli	a5,a5,0x20
    80007528:	00fd87b3          	add	a5,s11,a5
    8000752c:	0007c783          	lbu	a5,0(a5)
    80007530:	02e6d73b          	divuw	a4,a3,a4
    80007534:	f8f400a3          	sb	a5,-127(s0)
    80007538:	12a5f463          	bgeu	a1,a0,80007660 <__printf+0x278>
    8000753c:	00a00693          	li	a3,10
    80007540:	00900593          	li	a1,9
    80007544:	02d777bb          	remuw	a5,a4,a3
    80007548:	02079793          	slli	a5,a5,0x20
    8000754c:	0207d793          	srli	a5,a5,0x20
    80007550:	00fd87b3          	add	a5,s11,a5
    80007554:	0007c503          	lbu	a0,0(a5)
    80007558:	02d757bb          	divuw	a5,a4,a3
    8000755c:	f8a40123          	sb	a0,-126(s0)
    80007560:	48e5f263          	bgeu	a1,a4,800079e4 <__printf+0x5fc>
    80007564:	06300513          	li	a0,99
    80007568:	02d7f5bb          	remuw	a1,a5,a3
    8000756c:	02059593          	slli	a1,a1,0x20
    80007570:	0205d593          	srli	a1,a1,0x20
    80007574:	00bd85b3          	add	a1,s11,a1
    80007578:	0005c583          	lbu	a1,0(a1)
    8000757c:	02d7d7bb          	divuw	a5,a5,a3
    80007580:	f8b401a3          	sb	a1,-125(s0)
    80007584:	48e57263          	bgeu	a0,a4,80007a08 <__printf+0x620>
    80007588:	3e700513          	li	a0,999
    8000758c:	02d7f5bb          	remuw	a1,a5,a3
    80007590:	02059593          	slli	a1,a1,0x20
    80007594:	0205d593          	srli	a1,a1,0x20
    80007598:	00bd85b3          	add	a1,s11,a1
    8000759c:	0005c583          	lbu	a1,0(a1)
    800075a0:	02d7d7bb          	divuw	a5,a5,a3
    800075a4:	f8b40223          	sb	a1,-124(s0)
    800075a8:	46e57663          	bgeu	a0,a4,80007a14 <__printf+0x62c>
    800075ac:	02d7f5bb          	remuw	a1,a5,a3
    800075b0:	02059593          	slli	a1,a1,0x20
    800075b4:	0205d593          	srli	a1,a1,0x20
    800075b8:	00bd85b3          	add	a1,s11,a1
    800075bc:	0005c583          	lbu	a1,0(a1)
    800075c0:	02d7d7bb          	divuw	a5,a5,a3
    800075c4:	f8b402a3          	sb	a1,-123(s0)
    800075c8:	46ea7863          	bgeu	s4,a4,80007a38 <__printf+0x650>
    800075cc:	02d7f5bb          	remuw	a1,a5,a3
    800075d0:	02059593          	slli	a1,a1,0x20
    800075d4:	0205d593          	srli	a1,a1,0x20
    800075d8:	00bd85b3          	add	a1,s11,a1
    800075dc:	0005c583          	lbu	a1,0(a1)
    800075e0:	02d7d7bb          	divuw	a5,a5,a3
    800075e4:	f8b40323          	sb	a1,-122(s0)
    800075e8:	3eeaf863          	bgeu	s5,a4,800079d8 <__printf+0x5f0>
    800075ec:	02d7f5bb          	remuw	a1,a5,a3
    800075f0:	02059593          	slli	a1,a1,0x20
    800075f4:	0205d593          	srli	a1,a1,0x20
    800075f8:	00bd85b3          	add	a1,s11,a1
    800075fc:	0005c583          	lbu	a1,0(a1)
    80007600:	02d7d7bb          	divuw	a5,a5,a3
    80007604:	f8b403a3          	sb	a1,-121(s0)
    80007608:	42eb7e63          	bgeu	s6,a4,80007a44 <__printf+0x65c>
    8000760c:	02d7f5bb          	remuw	a1,a5,a3
    80007610:	02059593          	slli	a1,a1,0x20
    80007614:	0205d593          	srli	a1,a1,0x20
    80007618:	00bd85b3          	add	a1,s11,a1
    8000761c:	0005c583          	lbu	a1,0(a1)
    80007620:	02d7d7bb          	divuw	a5,a5,a3
    80007624:	f8b40423          	sb	a1,-120(s0)
    80007628:	42ebfc63          	bgeu	s7,a4,80007a60 <__printf+0x678>
    8000762c:	02079793          	slli	a5,a5,0x20
    80007630:	0207d793          	srli	a5,a5,0x20
    80007634:	00fd8db3          	add	s11,s11,a5
    80007638:	000dc703          	lbu	a4,0(s11)
    8000763c:	00a00793          	li	a5,10
    80007640:	00900c93          	li	s9,9
    80007644:	f8e404a3          	sb	a4,-119(s0)
    80007648:	00065c63          	bgez	a2,80007660 <__printf+0x278>
    8000764c:	f9040713          	addi	a4,s0,-112
    80007650:	00f70733          	add	a4,a4,a5
    80007654:	02d00693          	li	a3,45
    80007658:	fed70823          	sb	a3,-16(a4)
    8000765c:	00078c93          	mv	s9,a5
    80007660:	f8040793          	addi	a5,s0,-128
    80007664:	01978cb3          	add	s9,a5,s9
    80007668:	f7f40d13          	addi	s10,s0,-129
    8000766c:	000cc503          	lbu	a0,0(s9)
    80007670:	fffc8c93          	addi	s9,s9,-1
    80007674:	00000097          	auipc	ra,0x0
    80007678:	b90080e7          	jalr	-1136(ra) # 80007204 <consputc>
    8000767c:	ffac98e3          	bne	s9,s10,8000766c <__printf+0x284>
    80007680:	00094503          	lbu	a0,0(s2)
    80007684:	e00514e3          	bnez	a0,8000748c <__printf+0xa4>
    80007688:	1a0c1663          	bnez	s8,80007834 <__printf+0x44c>
    8000768c:	08813083          	ld	ra,136(sp)
    80007690:	08013403          	ld	s0,128(sp)
    80007694:	07813483          	ld	s1,120(sp)
    80007698:	07013903          	ld	s2,112(sp)
    8000769c:	06813983          	ld	s3,104(sp)
    800076a0:	06013a03          	ld	s4,96(sp)
    800076a4:	05813a83          	ld	s5,88(sp)
    800076a8:	05013b03          	ld	s6,80(sp)
    800076ac:	04813b83          	ld	s7,72(sp)
    800076b0:	04013c03          	ld	s8,64(sp)
    800076b4:	03813c83          	ld	s9,56(sp)
    800076b8:	03013d03          	ld	s10,48(sp)
    800076bc:	02813d83          	ld	s11,40(sp)
    800076c0:	0d010113          	addi	sp,sp,208
    800076c4:	00008067          	ret
    800076c8:	07300713          	li	a4,115
    800076cc:	1ce78a63          	beq	a5,a4,800078a0 <__printf+0x4b8>
    800076d0:	07800713          	li	a4,120
    800076d4:	1ee79e63          	bne	a5,a4,800078d0 <__printf+0x4e8>
    800076d8:	f7843783          	ld	a5,-136(s0)
    800076dc:	0007a703          	lw	a4,0(a5)
    800076e0:	00878793          	addi	a5,a5,8
    800076e4:	f6f43c23          	sd	a5,-136(s0)
    800076e8:	28074263          	bltz	a4,8000796c <__printf+0x584>
    800076ec:	00002d97          	auipc	s11,0x2
    800076f0:	794d8d93          	addi	s11,s11,1940 # 80009e80 <digits>
    800076f4:	00f77793          	andi	a5,a4,15
    800076f8:	00fd87b3          	add	a5,s11,a5
    800076fc:	0007c683          	lbu	a3,0(a5)
    80007700:	00f00613          	li	a2,15
    80007704:	0007079b          	sext.w	a5,a4
    80007708:	f8d40023          	sb	a3,-128(s0)
    8000770c:	0047559b          	srliw	a1,a4,0x4
    80007710:	0047569b          	srliw	a3,a4,0x4
    80007714:	00000c93          	li	s9,0
    80007718:	0ee65063          	bge	a2,a4,800077f8 <__printf+0x410>
    8000771c:	00f6f693          	andi	a3,a3,15
    80007720:	00dd86b3          	add	a3,s11,a3
    80007724:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007728:	0087d79b          	srliw	a5,a5,0x8
    8000772c:	00100c93          	li	s9,1
    80007730:	f8d400a3          	sb	a3,-127(s0)
    80007734:	0cb67263          	bgeu	a2,a1,800077f8 <__printf+0x410>
    80007738:	00f7f693          	andi	a3,a5,15
    8000773c:	00dd86b3          	add	a3,s11,a3
    80007740:	0006c583          	lbu	a1,0(a3)
    80007744:	00f00613          	li	a2,15
    80007748:	0047d69b          	srliw	a3,a5,0x4
    8000774c:	f8b40123          	sb	a1,-126(s0)
    80007750:	0047d593          	srli	a1,a5,0x4
    80007754:	28f67e63          	bgeu	a2,a5,800079f0 <__printf+0x608>
    80007758:	00f6f693          	andi	a3,a3,15
    8000775c:	00dd86b3          	add	a3,s11,a3
    80007760:	0006c503          	lbu	a0,0(a3)
    80007764:	0087d813          	srli	a6,a5,0x8
    80007768:	0087d69b          	srliw	a3,a5,0x8
    8000776c:	f8a401a3          	sb	a0,-125(s0)
    80007770:	28b67663          	bgeu	a2,a1,800079fc <__printf+0x614>
    80007774:	00f6f693          	andi	a3,a3,15
    80007778:	00dd86b3          	add	a3,s11,a3
    8000777c:	0006c583          	lbu	a1,0(a3)
    80007780:	00c7d513          	srli	a0,a5,0xc
    80007784:	00c7d69b          	srliw	a3,a5,0xc
    80007788:	f8b40223          	sb	a1,-124(s0)
    8000778c:	29067a63          	bgeu	a2,a6,80007a20 <__printf+0x638>
    80007790:	00f6f693          	andi	a3,a3,15
    80007794:	00dd86b3          	add	a3,s11,a3
    80007798:	0006c583          	lbu	a1,0(a3)
    8000779c:	0107d813          	srli	a6,a5,0x10
    800077a0:	0107d69b          	srliw	a3,a5,0x10
    800077a4:	f8b402a3          	sb	a1,-123(s0)
    800077a8:	28a67263          	bgeu	a2,a0,80007a2c <__printf+0x644>
    800077ac:	00f6f693          	andi	a3,a3,15
    800077b0:	00dd86b3          	add	a3,s11,a3
    800077b4:	0006c683          	lbu	a3,0(a3)
    800077b8:	0147d79b          	srliw	a5,a5,0x14
    800077bc:	f8d40323          	sb	a3,-122(s0)
    800077c0:	21067663          	bgeu	a2,a6,800079cc <__printf+0x5e4>
    800077c4:	02079793          	slli	a5,a5,0x20
    800077c8:	0207d793          	srli	a5,a5,0x20
    800077cc:	00fd8db3          	add	s11,s11,a5
    800077d0:	000dc683          	lbu	a3,0(s11)
    800077d4:	00800793          	li	a5,8
    800077d8:	00700c93          	li	s9,7
    800077dc:	f8d403a3          	sb	a3,-121(s0)
    800077e0:	00075c63          	bgez	a4,800077f8 <__printf+0x410>
    800077e4:	f9040713          	addi	a4,s0,-112
    800077e8:	00f70733          	add	a4,a4,a5
    800077ec:	02d00693          	li	a3,45
    800077f0:	fed70823          	sb	a3,-16(a4)
    800077f4:	00078c93          	mv	s9,a5
    800077f8:	f8040793          	addi	a5,s0,-128
    800077fc:	01978cb3          	add	s9,a5,s9
    80007800:	f7f40d13          	addi	s10,s0,-129
    80007804:	000cc503          	lbu	a0,0(s9)
    80007808:	fffc8c93          	addi	s9,s9,-1
    8000780c:	00000097          	auipc	ra,0x0
    80007810:	9f8080e7          	jalr	-1544(ra) # 80007204 <consputc>
    80007814:	ff9d18e3          	bne	s10,s9,80007804 <__printf+0x41c>
    80007818:	0100006f          	j	80007828 <__printf+0x440>
    8000781c:	00000097          	auipc	ra,0x0
    80007820:	9e8080e7          	jalr	-1560(ra) # 80007204 <consputc>
    80007824:	000c8493          	mv	s1,s9
    80007828:	00094503          	lbu	a0,0(s2)
    8000782c:	c60510e3          	bnez	a0,8000748c <__printf+0xa4>
    80007830:	e40c0ee3          	beqz	s8,8000768c <__printf+0x2a4>
    80007834:	00005517          	auipc	a0,0x5
    80007838:	56c50513          	addi	a0,a0,1388 # 8000cda0 <pr>
    8000783c:	00001097          	auipc	ra,0x1
    80007840:	94c080e7          	jalr	-1716(ra) # 80008188 <release>
    80007844:	e49ff06f          	j	8000768c <__printf+0x2a4>
    80007848:	f7843783          	ld	a5,-136(s0)
    8000784c:	03000513          	li	a0,48
    80007850:	01000d13          	li	s10,16
    80007854:	00878713          	addi	a4,a5,8
    80007858:	0007bc83          	ld	s9,0(a5)
    8000785c:	f6e43c23          	sd	a4,-136(s0)
    80007860:	00000097          	auipc	ra,0x0
    80007864:	9a4080e7          	jalr	-1628(ra) # 80007204 <consputc>
    80007868:	07800513          	li	a0,120
    8000786c:	00000097          	auipc	ra,0x0
    80007870:	998080e7          	jalr	-1640(ra) # 80007204 <consputc>
    80007874:	00002d97          	auipc	s11,0x2
    80007878:	60cd8d93          	addi	s11,s11,1548 # 80009e80 <digits>
    8000787c:	03ccd793          	srli	a5,s9,0x3c
    80007880:	00fd87b3          	add	a5,s11,a5
    80007884:	0007c503          	lbu	a0,0(a5)
    80007888:	fffd0d1b          	addiw	s10,s10,-1
    8000788c:	004c9c93          	slli	s9,s9,0x4
    80007890:	00000097          	auipc	ra,0x0
    80007894:	974080e7          	jalr	-1676(ra) # 80007204 <consputc>
    80007898:	fe0d12e3          	bnez	s10,8000787c <__printf+0x494>
    8000789c:	f8dff06f          	j	80007828 <__printf+0x440>
    800078a0:	f7843783          	ld	a5,-136(s0)
    800078a4:	0007bc83          	ld	s9,0(a5)
    800078a8:	00878793          	addi	a5,a5,8
    800078ac:	f6f43c23          	sd	a5,-136(s0)
    800078b0:	000c9a63          	bnez	s9,800078c4 <__printf+0x4dc>
    800078b4:	1080006f          	j	800079bc <__printf+0x5d4>
    800078b8:	001c8c93          	addi	s9,s9,1
    800078bc:	00000097          	auipc	ra,0x0
    800078c0:	948080e7          	jalr	-1720(ra) # 80007204 <consputc>
    800078c4:	000cc503          	lbu	a0,0(s9)
    800078c8:	fe0518e3          	bnez	a0,800078b8 <__printf+0x4d0>
    800078cc:	f5dff06f          	j	80007828 <__printf+0x440>
    800078d0:	02500513          	li	a0,37
    800078d4:	00000097          	auipc	ra,0x0
    800078d8:	930080e7          	jalr	-1744(ra) # 80007204 <consputc>
    800078dc:	000c8513          	mv	a0,s9
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	924080e7          	jalr	-1756(ra) # 80007204 <consputc>
    800078e8:	f41ff06f          	j	80007828 <__printf+0x440>
    800078ec:	02500513          	li	a0,37
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	914080e7          	jalr	-1772(ra) # 80007204 <consputc>
    800078f8:	f31ff06f          	j	80007828 <__printf+0x440>
    800078fc:	00030513          	mv	a0,t1
    80007900:	00000097          	auipc	ra,0x0
    80007904:	7bc080e7          	jalr	1980(ra) # 800080bc <acquire>
    80007908:	b4dff06f          	j	80007454 <__printf+0x6c>
    8000790c:	40c0053b          	negw	a0,a2
    80007910:	00a00713          	li	a4,10
    80007914:	02e576bb          	remuw	a3,a0,a4
    80007918:	00002d97          	auipc	s11,0x2
    8000791c:	568d8d93          	addi	s11,s11,1384 # 80009e80 <digits>
    80007920:	ff700593          	li	a1,-9
    80007924:	02069693          	slli	a3,a3,0x20
    80007928:	0206d693          	srli	a3,a3,0x20
    8000792c:	00dd86b3          	add	a3,s11,a3
    80007930:	0006c683          	lbu	a3,0(a3)
    80007934:	02e557bb          	divuw	a5,a0,a4
    80007938:	f8d40023          	sb	a3,-128(s0)
    8000793c:	10b65e63          	bge	a2,a1,80007a58 <__printf+0x670>
    80007940:	06300593          	li	a1,99
    80007944:	02e7f6bb          	remuw	a3,a5,a4
    80007948:	02069693          	slli	a3,a3,0x20
    8000794c:	0206d693          	srli	a3,a3,0x20
    80007950:	00dd86b3          	add	a3,s11,a3
    80007954:	0006c683          	lbu	a3,0(a3)
    80007958:	02e7d73b          	divuw	a4,a5,a4
    8000795c:	00200793          	li	a5,2
    80007960:	f8d400a3          	sb	a3,-127(s0)
    80007964:	bca5ece3          	bltu	a1,a0,8000753c <__printf+0x154>
    80007968:	ce5ff06f          	j	8000764c <__printf+0x264>
    8000796c:	40e007bb          	negw	a5,a4
    80007970:	00002d97          	auipc	s11,0x2
    80007974:	510d8d93          	addi	s11,s11,1296 # 80009e80 <digits>
    80007978:	00f7f693          	andi	a3,a5,15
    8000797c:	00dd86b3          	add	a3,s11,a3
    80007980:	0006c583          	lbu	a1,0(a3)
    80007984:	ff100613          	li	a2,-15
    80007988:	0047d69b          	srliw	a3,a5,0x4
    8000798c:	f8b40023          	sb	a1,-128(s0)
    80007990:	0047d59b          	srliw	a1,a5,0x4
    80007994:	0ac75e63          	bge	a4,a2,80007a50 <__printf+0x668>
    80007998:	00f6f693          	andi	a3,a3,15
    8000799c:	00dd86b3          	add	a3,s11,a3
    800079a0:	0006c603          	lbu	a2,0(a3)
    800079a4:	00f00693          	li	a3,15
    800079a8:	0087d79b          	srliw	a5,a5,0x8
    800079ac:	f8c400a3          	sb	a2,-127(s0)
    800079b0:	d8b6e4e3          	bltu	a3,a1,80007738 <__printf+0x350>
    800079b4:	00200793          	li	a5,2
    800079b8:	e2dff06f          	j	800077e4 <__printf+0x3fc>
    800079bc:	00002c97          	auipc	s9,0x2
    800079c0:	4a4c8c93          	addi	s9,s9,1188 # 80009e60 <_ZTV12ConsumerSync+0x170>
    800079c4:	02800513          	li	a0,40
    800079c8:	ef1ff06f          	j	800078b8 <__printf+0x4d0>
    800079cc:	00700793          	li	a5,7
    800079d0:	00600c93          	li	s9,6
    800079d4:	e0dff06f          	j	800077e0 <__printf+0x3f8>
    800079d8:	00700793          	li	a5,7
    800079dc:	00600c93          	li	s9,6
    800079e0:	c69ff06f          	j	80007648 <__printf+0x260>
    800079e4:	00300793          	li	a5,3
    800079e8:	00200c93          	li	s9,2
    800079ec:	c5dff06f          	j	80007648 <__printf+0x260>
    800079f0:	00300793          	li	a5,3
    800079f4:	00200c93          	li	s9,2
    800079f8:	de9ff06f          	j	800077e0 <__printf+0x3f8>
    800079fc:	00400793          	li	a5,4
    80007a00:	00300c93          	li	s9,3
    80007a04:	dddff06f          	j	800077e0 <__printf+0x3f8>
    80007a08:	00400793          	li	a5,4
    80007a0c:	00300c93          	li	s9,3
    80007a10:	c39ff06f          	j	80007648 <__printf+0x260>
    80007a14:	00500793          	li	a5,5
    80007a18:	00400c93          	li	s9,4
    80007a1c:	c2dff06f          	j	80007648 <__printf+0x260>
    80007a20:	00500793          	li	a5,5
    80007a24:	00400c93          	li	s9,4
    80007a28:	db9ff06f          	j	800077e0 <__printf+0x3f8>
    80007a2c:	00600793          	li	a5,6
    80007a30:	00500c93          	li	s9,5
    80007a34:	dadff06f          	j	800077e0 <__printf+0x3f8>
    80007a38:	00600793          	li	a5,6
    80007a3c:	00500c93          	li	s9,5
    80007a40:	c09ff06f          	j	80007648 <__printf+0x260>
    80007a44:	00800793          	li	a5,8
    80007a48:	00700c93          	li	s9,7
    80007a4c:	bfdff06f          	j	80007648 <__printf+0x260>
    80007a50:	00100793          	li	a5,1
    80007a54:	d91ff06f          	j	800077e4 <__printf+0x3fc>
    80007a58:	00100793          	li	a5,1
    80007a5c:	bf1ff06f          	j	8000764c <__printf+0x264>
    80007a60:	00900793          	li	a5,9
    80007a64:	00800c93          	li	s9,8
    80007a68:	be1ff06f          	j	80007648 <__printf+0x260>
    80007a6c:	00002517          	auipc	a0,0x2
    80007a70:	3fc50513          	addi	a0,a0,1020 # 80009e68 <_ZTV12ConsumerSync+0x178>
    80007a74:	00000097          	auipc	ra,0x0
    80007a78:	918080e7          	jalr	-1768(ra) # 8000738c <panic>

0000000080007a7c <printfinit>:
    80007a7c:	fe010113          	addi	sp,sp,-32
    80007a80:	00813823          	sd	s0,16(sp)
    80007a84:	00913423          	sd	s1,8(sp)
    80007a88:	00113c23          	sd	ra,24(sp)
    80007a8c:	02010413          	addi	s0,sp,32
    80007a90:	00005497          	auipc	s1,0x5
    80007a94:	31048493          	addi	s1,s1,784 # 8000cda0 <pr>
    80007a98:	00048513          	mv	a0,s1
    80007a9c:	00002597          	auipc	a1,0x2
    80007aa0:	3dc58593          	addi	a1,a1,988 # 80009e78 <_ZTV12ConsumerSync+0x188>
    80007aa4:	00000097          	auipc	ra,0x0
    80007aa8:	5f4080e7          	jalr	1524(ra) # 80008098 <initlock>
    80007aac:	01813083          	ld	ra,24(sp)
    80007ab0:	01013403          	ld	s0,16(sp)
    80007ab4:	0004ac23          	sw	zero,24(s1)
    80007ab8:	00813483          	ld	s1,8(sp)
    80007abc:	02010113          	addi	sp,sp,32
    80007ac0:	00008067          	ret

0000000080007ac4 <uartinit>:
    80007ac4:	ff010113          	addi	sp,sp,-16
    80007ac8:	00813423          	sd	s0,8(sp)
    80007acc:	01010413          	addi	s0,sp,16
    80007ad0:	100007b7          	lui	a5,0x10000
    80007ad4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ad8:	f8000713          	li	a4,-128
    80007adc:	00e781a3          	sb	a4,3(a5)
    80007ae0:	00300713          	li	a4,3
    80007ae4:	00e78023          	sb	a4,0(a5)
    80007ae8:	000780a3          	sb	zero,1(a5)
    80007aec:	00e781a3          	sb	a4,3(a5)
    80007af0:	00700693          	li	a3,7
    80007af4:	00d78123          	sb	a3,2(a5)
    80007af8:	00e780a3          	sb	a4,1(a5)
    80007afc:	00813403          	ld	s0,8(sp)
    80007b00:	01010113          	addi	sp,sp,16
    80007b04:	00008067          	ret

0000000080007b08 <uartputc>:
    80007b08:	00004797          	auipc	a5,0x4
    80007b0c:	0387a783          	lw	a5,56(a5) # 8000bb40 <panicked>
    80007b10:	00078463          	beqz	a5,80007b18 <uartputc+0x10>
    80007b14:	0000006f          	j	80007b14 <uartputc+0xc>
    80007b18:	fd010113          	addi	sp,sp,-48
    80007b1c:	02813023          	sd	s0,32(sp)
    80007b20:	00913c23          	sd	s1,24(sp)
    80007b24:	01213823          	sd	s2,16(sp)
    80007b28:	01313423          	sd	s3,8(sp)
    80007b2c:	02113423          	sd	ra,40(sp)
    80007b30:	03010413          	addi	s0,sp,48
    80007b34:	00004917          	auipc	s2,0x4
    80007b38:	01490913          	addi	s2,s2,20 # 8000bb48 <uart_tx_r>
    80007b3c:	00093783          	ld	a5,0(s2)
    80007b40:	00004497          	auipc	s1,0x4
    80007b44:	01048493          	addi	s1,s1,16 # 8000bb50 <uart_tx_w>
    80007b48:	0004b703          	ld	a4,0(s1)
    80007b4c:	02078693          	addi	a3,a5,32
    80007b50:	00050993          	mv	s3,a0
    80007b54:	02e69c63          	bne	a3,a4,80007b8c <uartputc+0x84>
    80007b58:	00001097          	auipc	ra,0x1
    80007b5c:	834080e7          	jalr	-1996(ra) # 8000838c <push_on>
    80007b60:	00093783          	ld	a5,0(s2)
    80007b64:	0004b703          	ld	a4,0(s1)
    80007b68:	02078793          	addi	a5,a5,32
    80007b6c:	00e79463          	bne	a5,a4,80007b74 <uartputc+0x6c>
    80007b70:	0000006f          	j	80007b70 <uartputc+0x68>
    80007b74:	00001097          	auipc	ra,0x1
    80007b78:	88c080e7          	jalr	-1908(ra) # 80008400 <pop_on>
    80007b7c:	00093783          	ld	a5,0(s2)
    80007b80:	0004b703          	ld	a4,0(s1)
    80007b84:	02078693          	addi	a3,a5,32
    80007b88:	fce688e3          	beq	a3,a4,80007b58 <uartputc+0x50>
    80007b8c:	01f77693          	andi	a3,a4,31
    80007b90:	00005597          	auipc	a1,0x5
    80007b94:	23058593          	addi	a1,a1,560 # 8000cdc0 <uart_tx_buf>
    80007b98:	00d586b3          	add	a3,a1,a3
    80007b9c:	00170713          	addi	a4,a4,1
    80007ba0:	01368023          	sb	s3,0(a3)
    80007ba4:	00e4b023          	sd	a4,0(s1)
    80007ba8:	10000637          	lui	a2,0x10000
    80007bac:	02f71063          	bne	a4,a5,80007bcc <uartputc+0xc4>
    80007bb0:	0340006f          	j	80007be4 <uartputc+0xdc>
    80007bb4:	00074703          	lbu	a4,0(a4)
    80007bb8:	00f93023          	sd	a5,0(s2)
    80007bbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007bc0:	00093783          	ld	a5,0(s2)
    80007bc4:	0004b703          	ld	a4,0(s1)
    80007bc8:	00f70e63          	beq	a4,a5,80007be4 <uartputc+0xdc>
    80007bcc:	00564683          	lbu	a3,5(a2)
    80007bd0:	01f7f713          	andi	a4,a5,31
    80007bd4:	00e58733          	add	a4,a1,a4
    80007bd8:	0206f693          	andi	a3,a3,32
    80007bdc:	00178793          	addi	a5,a5,1
    80007be0:	fc069ae3          	bnez	a3,80007bb4 <uartputc+0xac>
    80007be4:	02813083          	ld	ra,40(sp)
    80007be8:	02013403          	ld	s0,32(sp)
    80007bec:	01813483          	ld	s1,24(sp)
    80007bf0:	01013903          	ld	s2,16(sp)
    80007bf4:	00813983          	ld	s3,8(sp)
    80007bf8:	03010113          	addi	sp,sp,48
    80007bfc:	00008067          	ret

0000000080007c00 <uartputc_sync>:
    80007c00:	ff010113          	addi	sp,sp,-16
    80007c04:	00813423          	sd	s0,8(sp)
    80007c08:	01010413          	addi	s0,sp,16
    80007c0c:	00004717          	auipc	a4,0x4
    80007c10:	f3472703          	lw	a4,-204(a4) # 8000bb40 <panicked>
    80007c14:	02071663          	bnez	a4,80007c40 <uartputc_sync+0x40>
    80007c18:	00050793          	mv	a5,a0
    80007c1c:	100006b7          	lui	a3,0x10000
    80007c20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007c24:	02077713          	andi	a4,a4,32
    80007c28:	fe070ce3          	beqz	a4,80007c20 <uartputc_sync+0x20>
    80007c2c:	0ff7f793          	andi	a5,a5,255
    80007c30:	00f68023          	sb	a5,0(a3)
    80007c34:	00813403          	ld	s0,8(sp)
    80007c38:	01010113          	addi	sp,sp,16
    80007c3c:	00008067          	ret
    80007c40:	0000006f          	j	80007c40 <uartputc_sync+0x40>

0000000080007c44 <uartstart>:
    80007c44:	ff010113          	addi	sp,sp,-16
    80007c48:	00813423          	sd	s0,8(sp)
    80007c4c:	01010413          	addi	s0,sp,16
    80007c50:	00004617          	auipc	a2,0x4
    80007c54:	ef860613          	addi	a2,a2,-264 # 8000bb48 <uart_tx_r>
    80007c58:	00004517          	auipc	a0,0x4
    80007c5c:	ef850513          	addi	a0,a0,-264 # 8000bb50 <uart_tx_w>
    80007c60:	00063783          	ld	a5,0(a2)
    80007c64:	00053703          	ld	a4,0(a0)
    80007c68:	04f70263          	beq	a4,a5,80007cac <uartstart+0x68>
    80007c6c:	100005b7          	lui	a1,0x10000
    80007c70:	00005817          	auipc	a6,0x5
    80007c74:	15080813          	addi	a6,a6,336 # 8000cdc0 <uart_tx_buf>
    80007c78:	01c0006f          	j	80007c94 <uartstart+0x50>
    80007c7c:	0006c703          	lbu	a4,0(a3)
    80007c80:	00f63023          	sd	a5,0(a2)
    80007c84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c88:	00063783          	ld	a5,0(a2)
    80007c8c:	00053703          	ld	a4,0(a0)
    80007c90:	00f70e63          	beq	a4,a5,80007cac <uartstart+0x68>
    80007c94:	01f7f713          	andi	a4,a5,31
    80007c98:	00e806b3          	add	a3,a6,a4
    80007c9c:	0055c703          	lbu	a4,5(a1)
    80007ca0:	00178793          	addi	a5,a5,1
    80007ca4:	02077713          	andi	a4,a4,32
    80007ca8:	fc071ae3          	bnez	a4,80007c7c <uartstart+0x38>
    80007cac:	00813403          	ld	s0,8(sp)
    80007cb0:	01010113          	addi	sp,sp,16
    80007cb4:	00008067          	ret

0000000080007cb8 <uartgetc>:
    80007cb8:	ff010113          	addi	sp,sp,-16
    80007cbc:	00813423          	sd	s0,8(sp)
    80007cc0:	01010413          	addi	s0,sp,16
    80007cc4:	10000737          	lui	a4,0x10000
    80007cc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007ccc:	0017f793          	andi	a5,a5,1
    80007cd0:	00078c63          	beqz	a5,80007ce8 <uartgetc+0x30>
    80007cd4:	00074503          	lbu	a0,0(a4)
    80007cd8:	0ff57513          	andi	a0,a0,255
    80007cdc:	00813403          	ld	s0,8(sp)
    80007ce0:	01010113          	addi	sp,sp,16
    80007ce4:	00008067          	ret
    80007ce8:	fff00513          	li	a0,-1
    80007cec:	ff1ff06f          	j	80007cdc <uartgetc+0x24>

0000000080007cf0 <uartintr>:
    80007cf0:	100007b7          	lui	a5,0x10000
    80007cf4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007cf8:	0017f793          	andi	a5,a5,1
    80007cfc:	0a078463          	beqz	a5,80007da4 <uartintr+0xb4>
    80007d00:	fe010113          	addi	sp,sp,-32
    80007d04:	00813823          	sd	s0,16(sp)
    80007d08:	00913423          	sd	s1,8(sp)
    80007d0c:	00113c23          	sd	ra,24(sp)
    80007d10:	02010413          	addi	s0,sp,32
    80007d14:	100004b7          	lui	s1,0x10000
    80007d18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007d1c:	0ff57513          	andi	a0,a0,255
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	534080e7          	jalr	1332(ra) # 80007254 <consoleintr>
    80007d28:	0054c783          	lbu	a5,5(s1)
    80007d2c:	0017f793          	andi	a5,a5,1
    80007d30:	fe0794e3          	bnez	a5,80007d18 <uartintr+0x28>
    80007d34:	00004617          	auipc	a2,0x4
    80007d38:	e1460613          	addi	a2,a2,-492 # 8000bb48 <uart_tx_r>
    80007d3c:	00004517          	auipc	a0,0x4
    80007d40:	e1450513          	addi	a0,a0,-492 # 8000bb50 <uart_tx_w>
    80007d44:	00063783          	ld	a5,0(a2)
    80007d48:	00053703          	ld	a4,0(a0)
    80007d4c:	04f70263          	beq	a4,a5,80007d90 <uartintr+0xa0>
    80007d50:	100005b7          	lui	a1,0x10000
    80007d54:	00005817          	auipc	a6,0x5
    80007d58:	06c80813          	addi	a6,a6,108 # 8000cdc0 <uart_tx_buf>
    80007d5c:	01c0006f          	j	80007d78 <uartintr+0x88>
    80007d60:	0006c703          	lbu	a4,0(a3)
    80007d64:	00f63023          	sd	a5,0(a2)
    80007d68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d6c:	00063783          	ld	a5,0(a2)
    80007d70:	00053703          	ld	a4,0(a0)
    80007d74:	00f70e63          	beq	a4,a5,80007d90 <uartintr+0xa0>
    80007d78:	01f7f713          	andi	a4,a5,31
    80007d7c:	00e806b3          	add	a3,a6,a4
    80007d80:	0055c703          	lbu	a4,5(a1)
    80007d84:	00178793          	addi	a5,a5,1
    80007d88:	02077713          	andi	a4,a4,32
    80007d8c:	fc071ae3          	bnez	a4,80007d60 <uartintr+0x70>
    80007d90:	01813083          	ld	ra,24(sp)
    80007d94:	01013403          	ld	s0,16(sp)
    80007d98:	00813483          	ld	s1,8(sp)
    80007d9c:	02010113          	addi	sp,sp,32
    80007da0:	00008067          	ret
    80007da4:	00004617          	auipc	a2,0x4
    80007da8:	da460613          	addi	a2,a2,-604 # 8000bb48 <uart_tx_r>
    80007dac:	00004517          	auipc	a0,0x4
    80007db0:	da450513          	addi	a0,a0,-604 # 8000bb50 <uart_tx_w>
    80007db4:	00063783          	ld	a5,0(a2)
    80007db8:	00053703          	ld	a4,0(a0)
    80007dbc:	04f70263          	beq	a4,a5,80007e00 <uartintr+0x110>
    80007dc0:	100005b7          	lui	a1,0x10000
    80007dc4:	00005817          	auipc	a6,0x5
    80007dc8:	ffc80813          	addi	a6,a6,-4 # 8000cdc0 <uart_tx_buf>
    80007dcc:	01c0006f          	j	80007de8 <uartintr+0xf8>
    80007dd0:	0006c703          	lbu	a4,0(a3)
    80007dd4:	00f63023          	sd	a5,0(a2)
    80007dd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ddc:	00063783          	ld	a5,0(a2)
    80007de0:	00053703          	ld	a4,0(a0)
    80007de4:	02f70063          	beq	a4,a5,80007e04 <uartintr+0x114>
    80007de8:	01f7f713          	andi	a4,a5,31
    80007dec:	00e806b3          	add	a3,a6,a4
    80007df0:	0055c703          	lbu	a4,5(a1)
    80007df4:	00178793          	addi	a5,a5,1
    80007df8:	02077713          	andi	a4,a4,32
    80007dfc:	fc071ae3          	bnez	a4,80007dd0 <uartintr+0xe0>
    80007e00:	00008067          	ret
    80007e04:	00008067          	ret

0000000080007e08 <kinit>:
    80007e08:	fc010113          	addi	sp,sp,-64
    80007e0c:	02913423          	sd	s1,40(sp)
    80007e10:	fffff7b7          	lui	a5,0xfffff
    80007e14:	00006497          	auipc	s1,0x6
    80007e18:	fcb48493          	addi	s1,s1,-53 # 8000dddf <end+0xfff>
    80007e1c:	02813823          	sd	s0,48(sp)
    80007e20:	01313c23          	sd	s3,24(sp)
    80007e24:	00f4f4b3          	and	s1,s1,a5
    80007e28:	02113c23          	sd	ra,56(sp)
    80007e2c:	03213023          	sd	s2,32(sp)
    80007e30:	01413823          	sd	s4,16(sp)
    80007e34:	01513423          	sd	s5,8(sp)
    80007e38:	04010413          	addi	s0,sp,64
    80007e3c:	000017b7          	lui	a5,0x1
    80007e40:	01100993          	li	s3,17
    80007e44:	00f487b3          	add	a5,s1,a5
    80007e48:	01b99993          	slli	s3,s3,0x1b
    80007e4c:	06f9e063          	bltu	s3,a5,80007eac <kinit+0xa4>
    80007e50:	00005a97          	auipc	s5,0x5
    80007e54:	f90a8a93          	addi	s5,s5,-112 # 8000cde0 <end>
    80007e58:	0754ec63          	bltu	s1,s5,80007ed0 <kinit+0xc8>
    80007e5c:	0734fa63          	bgeu	s1,s3,80007ed0 <kinit+0xc8>
    80007e60:	00088a37          	lui	s4,0x88
    80007e64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007e68:	00004917          	auipc	s2,0x4
    80007e6c:	cf090913          	addi	s2,s2,-784 # 8000bb58 <kmem>
    80007e70:	00ca1a13          	slli	s4,s4,0xc
    80007e74:	0140006f          	j	80007e88 <kinit+0x80>
    80007e78:	000017b7          	lui	a5,0x1
    80007e7c:	00f484b3          	add	s1,s1,a5
    80007e80:	0554e863          	bltu	s1,s5,80007ed0 <kinit+0xc8>
    80007e84:	0534f663          	bgeu	s1,s3,80007ed0 <kinit+0xc8>
    80007e88:	00001637          	lui	a2,0x1
    80007e8c:	00100593          	li	a1,1
    80007e90:	00048513          	mv	a0,s1
    80007e94:	00000097          	auipc	ra,0x0
    80007e98:	5e4080e7          	jalr	1508(ra) # 80008478 <__memset>
    80007e9c:	00093783          	ld	a5,0(s2)
    80007ea0:	00f4b023          	sd	a5,0(s1)
    80007ea4:	00993023          	sd	s1,0(s2)
    80007ea8:	fd4498e3          	bne	s1,s4,80007e78 <kinit+0x70>
    80007eac:	03813083          	ld	ra,56(sp)
    80007eb0:	03013403          	ld	s0,48(sp)
    80007eb4:	02813483          	ld	s1,40(sp)
    80007eb8:	02013903          	ld	s2,32(sp)
    80007ebc:	01813983          	ld	s3,24(sp)
    80007ec0:	01013a03          	ld	s4,16(sp)
    80007ec4:	00813a83          	ld	s5,8(sp)
    80007ec8:	04010113          	addi	sp,sp,64
    80007ecc:	00008067          	ret
    80007ed0:	00002517          	auipc	a0,0x2
    80007ed4:	fc850513          	addi	a0,a0,-56 # 80009e98 <digits+0x18>
    80007ed8:	fffff097          	auipc	ra,0xfffff
    80007edc:	4b4080e7          	jalr	1204(ra) # 8000738c <panic>

0000000080007ee0 <freerange>:
    80007ee0:	fc010113          	addi	sp,sp,-64
    80007ee4:	000017b7          	lui	a5,0x1
    80007ee8:	02913423          	sd	s1,40(sp)
    80007eec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ef0:	009504b3          	add	s1,a0,s1
    80007ef4:	fffff537          	lui	a0,0xfffff
    80007ef8:	02813823          	sd	s0,48(sp)
    80007efc:	02113c23          	sd	ra,56(sp)
    80007f00:	03213023          	sd	s2,32(sp)
    80007f04:	01313c23          	sd	s3,24(sp)
    80007f08:	01413823          	sd	s4,16(sp)
    80007f0c:	01513423          	sd	s5,8(sp)
    80007f10:	01613023          	sd	s6,0(sp)
    80007f14:	04010413          	addi	s0,sp,64
    80007f18:	00a4f4b3          	and	s1,s1,a0
    80007f1c:	00f487b3          	add	a5,s1,a5
    80007f20:	06f5e463          	bltu	a1,a5,80007f88 <freerange+0xa8>
    80007f24:	00005a97          	auipc	s5,0x5
    80007f28:	ebca8a93          	addi	s5,s5,-324 # 8000cde0 <end>
    80007f2c:	0954e263          	bltu	s1,s5,80007fb0 <freerange+0xd0>
    80007f30:	01100993          	li	s3,17
    80007f34:	01b99993          	slli	s3,s3,0x1b
    80007f38:	0734fc63          	bgeu	s1,s3,80007fb0 <freerange+0xd0>
    80007f3c:	00058a13          	mv	s4,a1
    80007f40:	00004917          	auipc	s2,0x4
    80007f44:	c1890913          	addi	s2,s2,-1000 # 8000bb58 <kmem>
    80007f48:	00002b37          	lui	s6,0x2
    80007f4c:	0140006f          	j	80007f60 <freerange+0x80>
    80007f50:	000017b7          	lui	a5,0x1
    80007f54:	00f484b3          	add	s1,s1,a5
    80007f58:	0554ec63          	bltu	s1,s5,80007fb0 <freerange+0xd0>
    80007f5c:	0534fa63          	bgeu	s1,s3,80007fb0 <freerange+0xd0>
    80007f60:	00001637          	lui	a2,0x1
    80007f64:	00100593          	li	a1,1
    80007f68:	00048513          	mv	a0,s1
    80007f6c:	00000097          	auipc	ra,0x0
    80007f70:	50c080e7          	jalr	1292(ra) # 80008478 <__memset>
    80007f74:	00093703          	ld	a4,0(s2)
    80007f78:	016487b3          	add	a5,s1,s6
    80007f7c:	00e4b023          	sd	a4,0(s1)
    80007f80:	00993023          	sd	s1,0(s2)
    80007f84:	fcfa76e3          	bgeu	s4,a5,80007f50 <freerange+0x70>
    80007f88:	03813083          	ld	ra,56(sp)
    80007f8c:	03013403          	ld	s0,48(sp)
    80007f90:	02813483          	ld	s1,40(sp)
    80007f94:	02013903          	ld	s2,32(sp)
    80007f98:	01813983          	ld	s3,24(sp)
    80007f9c:	01013a03          	ld	s4,16(sp)
    80007fa0:	00813a83          	ld	s5,8(sp)
    80007fa4:	00013b03          	ld	s6,0(sp)
    80007fa8:	04010113          	addi	sp,sp,64
    80007fac:	00008067          	ret
    80007fb0:	00002517          	auipc	a0,0x2
    80007fb4:	ee850513          	addi	a0,a0,-280 # 80009e98 <digits+0x18>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	3d4080e7          	jalr	980(ra) # 8000738c <panic>

0000000080007fc0 <kfree>:
    80007fc0:	fe010113          	addi	sp,sp,-32
    80007fc4:	00813823          	sd	s0,16(sp)
    80007fc8:	00113c23          	sd	ra,24(sp)
    80007fcc:	00913423          	sd	s1,8(sp)
    80007fd0:	02010413          	addi	s0,sp,32
    80007fd4:	03451793          	slli	a5,a0,0x34
    80007fd8:	04079c63          	bnez	a5,80008030 <kfree+0x70>
    80007fdc:	00005797          	auipc	a5,0x5
    80007fe0:	e0478793          	addi	a5,a5,-508 # 8000cde0 <end>
    80007fe4:	00050493          	mv	s1,a0
    80007fe8:	04f56463          	bltu	a0,a5,80008030 <kfree+0x70>
    80007fec:	01100793          	li	a5,17
    80007ff0:	01b79793          	slli	a5,a5,0x1b
    80007ff4:	02f57e63          	bgeu	a0,a5,80008030 <kfree+0x70>
    80007ff8:	00001637          	lui	a2,0x1
    80007ffc:	00100593          	li	a1,1
    80008000:	00000097          	auipc	ra,0x0
    80008004:	478080e7          	jalr	1144(ra) # 80008478 <__memset>
    80008008:	00004797          	auipc	a5,0x4
    8000800c:	b5078793          	addi	a5,a5,-1200 # 8000bb58 <kmem>
    80008010:	0007b703          	ld	a4,0(a5)
    80008014:	01813083          	ld	ra,24(sp)
    80008018:	01013403          	ld	s0,16(sp)
    8000801c:	00e4b023          	sd	a4,0(s1)
    80008020:	0097b023          	sd	s1,0(a5)
    80008024:	00813483          	ld	s1,8(sp)
    80008028:	02010113          	addi	sp,sp,32
    8000802c:	00008067          	ret
    80008030:	00002517          	auipc	a0,0x2
    80008034:	e6850513          	addi	a0,a0,-408 # 80009e98 <digits+0x18>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	354080e7          	jalr	852(ra) # 8000738c <panic>

0000000080008040 <kalloc>:
    80008040:	fe010113          	addi	sp,sp,-32
    80008044:	00813823          	sd	s0,16(sp)
    80008048:	00913423          	sd	s1,8(sp)
    8000804c:	00113c23          	sd	ra,24(sp)
    80008050:	02010413          	addi	s0,sp,32
    80008054:	00004797          	auipc	a5,0x4
    80008058:	b0478793          	addi	a5,a5,-1276 # 8000bb58 <kmem>
    8000805c:	0007b483          	ld	s1,0(a5)
    80008060:	02048063          	beqz	s1,80008080 <kalloc+0x40>
    80008064:	0004b703          	ld	a4,0(s1)
    80008068:	00001637          	lui	a2,0x1
    8000806c:	00500593          	li	a1,5
    80008070:	00048513          	mv	a0,s1
    80008074:	00e7b023          	sd	a4,0(a5)
    80008078:	00000097          	auipc	ra,0x0
    8000807c:	400080e7          	jalr	1024(ra) # 80008478 <__memset>
    80008080:	01813083          	ld	ra,24(sp)
    80008084:	01013403          	ld	s0,16(sp)
    80008088:	00048513          	mv	a0,s1
    8000808c:	00813483          	ld	s1,8(sp)
    80008090:	02010113          	addi	sp,sp,32
    80008094:	00008067          	ret

0000000080008098 <initlock>:
    80008098:	ff010113          	addi	sp,sp,-16
    8000809c:	00813423          	sd	s0,8(sp)
    800080a0:	01010413          	addi	s0,sp,16
    800080a4:	00813403          	ld	s0,8(sp)
    800080a8:	00b53423          	sd	a1,8(a0)
    800080ac:	00052023          	sw	zero,0(a0)
    800080b0:	00053823          	sd	zero,16(a0)
    800080b4:	01010113          	addi	sp,sp,16
    800080b8:	00008067          	ret

00000000800080bc <acquire>:
    800080bc:	fe010113          	addi	sp,sp,-32
    800080c0:	00813823          	sd	s0,16(sp)
    800080c4:	00913423          	sd	s1,8(sp)
    800080c8:	00113c23          	sd	ra,24(sp)
    800080cc:	01213023          	sd	s2,0(sp)
    800080d0:	02010413          	addi	s0,sp,32
    800080d4:	00050493          	mv	s1,a0
    800080d8:	10002973          	csrr	s2,sstatus
    800080dc:	100027f3          	csrr	a5,sstatus
    800080e0:	ffd7f793          	andi	a5,a5,-3
    800080e4:	10079073          	csrw	sstatus,a5
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	8ec080e7          	jalr	-1812(ra) # 800069d4 <mycpu>
    800080f0:	07852783          	lw	a5,120(a0)
    800080f4:	06078e63          	beqz	a5,80008170 <acquire+0xb4>
    800080f8:	fffff097          	auipc	ra,0xfffff
    800080fc:	8dc080e7          	jalr	-1828(ra) # 800069d4 <mycpu>
    80008100:	07852783          	lw	a5,120(a0)
    80008104:	0004a703          	lw	a4,0(s1)
    80008108:	0017879b          	addiw	a5,a5,1
    8000810c:	06f52c23          	sw	a5,120(a0)
    80008110:	04071063          	bnez	a4,80008150 <acquire+0x94>
    80008114:	00100713          	li	a4,1
    80008118:	00070793          	mv	a5,a4
    8000811c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008120:	0007879b          	sext.w	a5,a5
    80008124:	fe079ae3          	bnez	a5,80008118 <acquire+0x5c>
    80008128:	0ff0000f          	fence
    8000812c:	fffff097          	auipc	ra,0xfffff
    80008130:	8a8080e7          	jalr	-1880(ra) # 800069d4 <mycpu>
    80008134:	01813083          	ld	ra,24(sp)
    80008138:	01013403          	ld	s0,16(sp)
    8000813c:	00a4b823          	sd	a0,16(s1)
    80008140:	00013903          	ld	s2,0(sp)
    80008144:	00813483          	ld	s1,8(sp)
    80008148:	02010113          	addi	sp,sp,32
    8000814c:	00008067          	ret
    80008150:	0104b903          	ld	s2,16(s1)
    80008154:	fffff097          	auipc	ra,0xfffff
    80008158:	880080e7          	jalr	-1920(ra) # 800069d4 <mycpu>
    8000815c:	faa91ce3          	bne	s2,a0,80008114 <acquire+0x58>
    80008160:	00002517          	auipc	a0,0x2
    80008164:	d4050513          	addi	a0,a0,-704 # 80009ea0 <digits+0x20>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	224080e7          	jalr	548(ra) # 8000738c <panic>
    80008170:	00195913          	srli	s2,s2,0x1
    80008174:	fffff097          	auipc	ra,0xfffff
    80008178:	860080e7          	jalr	-1952(ra) # 800069d4 <mycpu>
    8000817c:	00197913          	andi	s2,s2,1
    80008180:	07252e23          	sw	s2,124(a0)
    80008184:	f75ff06f          	j	800080f8 <acquire+0x3c>

0000000080008188 <release>:
    80008188:	fe010113          	addi	sp,sp,-32
    8000818c:	00813823          	sd	s0,16(sp)
    80008190:	00113c23          	sd	ra,24(sp)
    80008194:	00913423          	sd	s1,8(sp)
    80008198:	01213023          	sd	s2,0(sp)
    8000819c:	02010413          	addi	s0,sp,32
    800081a0:	00052783          	lw	a5,0(a0)
    800081a4:	00079a63          	bnez	a5,800081b8 <release+0x30>
    800081a8:	00002517          	auipc	a0,0x2
    800081ac:	d0050513          	addi	a0,a0,-768 # 80009ea8 <digits+0x28>
    800081b0:	fffff097          	auipc	ra,0xfffff
    800081b4:	1dc080e7          	jalr	476(ra) # 8000738c <panic>
    800081b8:	01053903          	ld	s2,16(a0)
    800081bc:	00050493          	mv	s1,a0
    800081c0:	fffff097          	auipc	ra,0xfffff
    800081c4:	814080e7          	jalr	-2028(ra) # 800069d4 <mycpu>
    800081c8:	fea910e3          	bne	s2,a0,800081a8 <release+0x20>
    800081cc:	0004b823          	sd	zero,16(s1)
    800081d0:	0ff0000f          	fence
    800081d4:	0f50000f          	fence	iorw,ow
    800081d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800081dc:	ffffe097          	auipc	ra,0xffffe
    800081e0:	7f8080e7          	jalr	2040(ra) # 800069d4 <mycpu>
    800081e4:	100027f3          	csrr	a5,sstatus
    800081e8:	0027f793          	andi	a5,a5,2
    800081ec:	04079a63          	bnez	a5,80008240 <release+0xb8>
    800081f0:	07852783          	lw	a5,120(a0)
    800081f4:	02f05e63          	blez	a5,80008230 <release+0xa8>
    800081f8:	fff7871b          	addiw	a4,a5,-1
    800081fc:	06e52c23          	sw	a4,120(a0)
    80008200:	00071c63          	bnez	a4,80008218 <release+0x90>
    80008204:	07c52783          	lw	a5,124(a0)
    80008208:	00078863          	beqz	a5,80008218 <release+0x90>
    8000820c:	100027f3          	csrr	a5,sstatus
    80008210:	0027e793          	ori	a5,a5,2
    80008214:	10079073          	csrw	sstatus,a5
    80008218:	01813083          	ld	ra,24(sp)
    8000821c:	01013403          	ld	s0,16(sp)
    80008220:	00813483          	ld	s1,8(sp)
    80008224:	00013903          	ld	s2,0(sp)
    80008228:	02010113          	addi	sp,sp,32
    8000822c:	00008067          	ret
    80008230:	00002517          	auipc	a0,0x2
    80008234:	c9850513          	addi	a0,a0,-872 # 80009ec8 <digits+0x48>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	154080e7          	jalr	340(ra) # 8000738c <panic>
    80008240:	00002517          	auipc	a0,0x2
    80008244:	c7050513          	addi	a0,a0,-912 # 80009eb0 <digits+0x30>
    80008248:	fffff097          	auipc	ra,0xfffff
    8000824c:	144080e7          	jalr	324(ra) # 8000738c <panic>

0000000080008250 <holding>:
    80008250:	00052783          	lw	a5,0(a0)
    80008254:	00079663          	bnez	a5,80008260 <holding+0x10>
    80008258:	00000513          	li	a0,0
    8000825c:	00008067          	ret
    80008260:	fe010113          	addi	sp,sp,-32
    80008264:	00813823          	sd	s0,16(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	00113c23          	sd	ra,24(sp)
    80008270:	02010413          	addi	s0,sp,32
    80008274:	01053483          	ld	s1,16(a0)
    80008278:	ffffe097          	auipc	ra,0xffffe
    8000827c:	75c080e7          	jalr	1884(ra) # 800069d4 <mycpu>
    80008280:	01813083          	ld	ra,24(sp)
    80008284:	01013403          	ld	s0,16(sp)
    80008288:	40a48533          	sub	a0,s1,a0
    8000828c:	00153513          	seqz	a0,a0
    80008290:	00813483          	ld	s1,8(sp)
    80008294:	02010113          	addi	sp,sp,32
    80008298:	00008067          	ret

000000008000829c <push_off>:
    8000829c:	fe010113          	addi	sp,sp,-32
    800082a0:	00813823          	sd	s0,16(sp)
    800082a4:	00113c23          	sd	ra,24(sp)
    800082a8:	00913423          	sd	s1,8(sp)
    800082ac:	02010413          	addi	s0,sp,32
    800082b0:	100024f3          	csrr	s1,sstatus
    800082b4:	100027f3          	csrr	a5,sstatus
    800082b8:	ffd7f793          	andi	a5,a5,-3
    800082bc:	10079073          	csrw	sstatus,a5
    800082c0:	ffffe097          	auipc	ra,0xffffe
    800082c4:	714080e7          	jalr	1812(ra) # 800069d4 <mycpu>
    800082c8:	07852783          	lw	a5,120(a0)
    800082cc:	02078663          	beqz	a5,800082f8 <push_off+0x5c>
    800082d0:	ffffe097          	auipc	ra,0xffffe
    800082d4:	704080e7          	jalr	1796(ra) # 800069d4 <mycpu>
    800082d8:	07852783          	lw	a5,120(a0)
    800082dc:	01813083          	ld	ra,24(sp)
    800082e0:	01013403          	ld	s0,16(sp)
    800082e4:	0017879b          	addiw	a5,a5,1
    800082e8:	06f52c23          	sw	a5,120(a0)
    800082ec:	00813483          	ld	s1,8(sp)
    800082f0:	02010113          	addi	sp,sp,32
    800082f4:	00008067          	ret
    800082f8:	0014d493          	srli	s1,s1,0x1
    800082fc:	ffffe097          	auipc	ra,0xffffe
    80008300:	6d8080e7          	jalr	1752(ra) # 800069d4 <mycpu>
    80008304:	0014f493          	andi	s1,s1,1
    80008308:	06952e23          	sw	s1,124(a0)
    8000830c:	fc5ff06f          	j	800082d0 <push_off+0x34>

0000000080008310 <pop_off>:
    80008310:	ff010113          	addi	sp,sp,-16
    80008314:	00813023          	sd	s0,0(sp)
    80008318:	00113423          	sd	ra,8(sp)
    8000831c:	01010413          	addi	s0,sp,16
    80008320:	ffffe097          	auipc	ra,0xffffe
    80008324:	6b4080e7          	jalr	1716(ra) # 800069d4 <mycpu>
    80008328:	100027f3          	csrr	a5,sstatus
    8000832c:	0027f793          	andi	a5,a5,2
    80008330:	04079663          	bnez	a5,8000837c <pop_off+0x6c>
    80008334:	07852783          	lw	a5,120(a0)
    80008338:	02f05a63          	blez	a5,8000836c <pop_off+0x5c>
    8000833c:	fff7871b          	addiw	a4,a5,-1
    80008340:	06e52c23          	sw	a4,120(a0)
    80008344:	00071c63          	bnez	a4,8000835c <pop_off+0x4c>
    80008348:	07c52783          	lw	a5,124(a0)
    8000834c:	00078863          	beqz	a5,8000835c <pop_off+0x4c>
    80008350:	100027f3          	csrr	a5,sstatus
    80008354:	0027e793          	ori	a5,a5,2
    80008358:	10079073          	csrw	sstatus,a5
    8000835c:	00813083          	ld	ra,8(sp)
    80008360:	00013403          	ld	s0,0(sp)
    80008364:	01010113          	addi	sp,sp,16
    80008368:	00008067          	ret
    8000836c:	00002517          	auipc	a0,0x2
    80008370:	b5c50513          	addi	a0,a0,-1188 # 80009ec8 <digits+0x48>
    80008374:	fffff097          	auipc	ra,0xfffff
    80008378:	018080e7          	jalr	24(ra) # 8000738c <panic>
    8000837c:	00002517          	auipc	a0,0x2
    80008380:	b3450513          	addi	a0,a0,-1228 # 80009eb0 <digits+0x30>
    80008384:	fffff097          	auipc	ra,0xfffff
    80008388:	008080e7          	jalr	8(ra) # 8000738c <panic>

000000008000838c <push_on>:
    8000838c:	fe010113          	addi	sp,sp,-32
    80008390:	00813823          	sd	s0,16(sp)
    80008394:	00113c23          	sd	ra,24(sp)
    80008398:	00913423          	sd	s1,8(sp)
    8000839c:	02010413          	addi	s0,sp,32
    800083a0:	100024f3          	csrr	s1,sstatus
    800083a4:	100027f3          	csrr	a5,sstatus
    800083a8:	0027e793          	ori	a5,a5,2
    800083ac:	10079073          	csrw	sstatus,a5
    800083b0:	ffffe097          	auipc	ra,0xffffe
    800083b4:	624080e7          	jalr	1572(ra) # 800069d4 <mycpu>
    800083b8:	07852783          	lw	a5,120(a0)
    800083bc:	02078663          	beqz	a5,800083e8 <push_on+0x5c>
    800083c0:	ffffe097          	auipc	ra,0xffffe
    800083c4:	614080e7          	jalr	1556(ra) # 800069d4 <mycpu>
    800083c8:	07852783          	lw	a5,120(a0)
    800083cc:	01813083          	ld	ra,24(sp)
    800083d0:	01013403          	ld	s0,16(sp)
    800083d4:	0017879b          	addiw	a5,a5,1
    800083d8:	06f52c23          	sw	a5,120(a0)
    800083dc:	00813483          	ld	s1,8(sp)
    800083e0:	02010113          	addi	sp,sp,32
    800083e4:	00008067          	ret
    800083e8:	0014d493          	srli	s1,s1,0x1
    800083ec:	ffffe097          	auipc	ra,0xffffe
    800083f0:	5e8080e7          	jalr	1512(ra) # 800069d4 <mycpu>
    800083f4:	0014f493          	andi	s1,s1,1
    800083f8:	06952e23          	sw	s1,124(a0)
    800083fc:	fc5ff06f          	j	800083c0 <push_on+0x34>

0000000080008400 <pop_on>:
    80008400:	ff010113          	addi	sp,sp,-16
    80008404:	00813023          	sd	s0,0(sp)
    80008408:	00113423          	sd	ra,8(sp)
    8000840c:	01010413          	addi	s0,sp,16
    80008410:	ffffe097          	auipc	ra,0xffffe
    80008414:	5c4080e7          	jalr	1476(ra) # 800069d4 <mycpu>
    80008418:	100027f3          	csrr	a5,sstatus
    8000841c:	0027f793          	andi	a5,a5,2
    80008420:	04078463          	beqz	a5,80008468 <pop_on+0x68>
    80008424:	07852783          	lw	a5,120(a0)
    80008428:	02f05863          	blez	a5,80008458 <pop_on+0x58>
    8000842c:	fff7879b          	addiw	a5,a5,-1
    80008430:	06f52c23          	sw	a5,120(a0)
    80008434:	07853783          	ld	a5,120(a0)
    80008438:	00079863          	bnez	a5,80008448 <pop_on+0x48>
    8000843c:	100027f3          	csrr	a5,sstatus
    80008440:	ffd7f793          	andi	a5,a5,-3
    80008444:	10079073          	csrw	sstatus,a5
    80008448:	00813083          	ld	ra,8(sp)
    8000844c:	00013403          	ld	s0,0(sp)
    80008450:	01010113          	addi	sp,sp,16
    80008454:	00008067          	ret
    80008458:	00002517          	auipc	a0,0x2
    8000845c:	a9850513          	addi	a0,a0,-1384 # 80009ef0 <digits+0x70>
    80008460:	fffff097          	auipc	ra,0xfffff
    80008464:	f2c080e7          	jalr	-212(ra) # 8000738c <panic>
    80008468:	00002517          	auipc	a0,0x2
    8000846c:	a6850513          	addi	a0,a0,-1432 # 80009ed0 <digits+0x50>
    80008470:	fffff097          	auipc	ra,0xfffff
    80008474:	f1c080e7          	jalr	-228(ra) # 8000738c <panic>

0000000080008478 <__memset>:
    80008478:	ff010113          	addi	sp,sp,-16
    8000847c:	00813423          	sd	s0,8(sp)
    80008480:	01010413          	addi	s0,sp,16
    80008484:	1a060e63          	beqz	a2,80008640 <__memset+0x1c8>
    80008488:	40a007b3          	neg	a5,a0
    8000848c:	0077f793          	andi	a5,a5,7
    80008490:	00778693          	addi	a3,a5,7
    80008494:	00b00813          	li	a6,11
    80008498:	0ff5f593          	andi	a1,a1,255
    8000849c:	fff6071b          	addiw	a4,a2,-1
    800084a0:	1b06e663          	bltu	a3,a6,8000864c <__memset+0x1d4>
    800084a4:	1cd76463          	bltu	a4,a3,8000866c <__memset+0x1f4>
    800084a8:	1a078e63          	beqz	a5,80008664 <__memset+0x1ec>
    800084ac:	00b50023          	sb	a1,0(a0)
    800084b0:	00100713          	li	a4,1
    800084b4:	1ae78463          	beq	a5,a4,8000865c <__memset+0x1e4>
    800084b8:	00b500a3          	sb	a1,1(a0)
    800084bc:	00200713          	li	a4,2
    800084c0:	1ae78a63          	beq	a5,a4,80008674 <__memset+0x1fc>
    800084c4:	00b50123          	sb	a1,2(a0)
    800084c8:	00300713          	li	a4,3
    800084cc:	18e78463          	beq	a5,a4,80008654 <__memset+0x1dc>
    800084d0:	00b501a3          	sb	a1,3(a0)
    800084d4:	00400713          	li	a4,4
    800084d8:	1ae78263          	beq	a5,a4,8000867c <__memset+0x204>
    800084dc:	00b50223          	sb	a1,4(a0)
    800084e0:	00500713          	li	a4,5
    800084e4:	1ae78063          	beq	a5,a4,80008684 <__memset+0x20c>
    800084e8:	00b502a3          	sb	a1,5(a0)
    800084ec:	00700713          	li	a4,7
    800084f0:	18e79e63          	bne	a5,a4,8000868c <__memset+0x214>
    800084f4:	00b50323          	sb	a1,6(a0)
    800084f8:	00700e93          	li	t4,7
    800084fc:	00859713          	slli	a4,a1,0x8
    80008500:	00e5e733          	or	a4,a1,a4
    80008504:	01059e13          	slli	t3,a1,0x10
    80008508:	01c76e33          	or	t3,a4,t3
    8000850c:	01859313          	slli	t1,a1,0x18
    80008510:	006e6333          	or	t1,t3,t1
    80008514:	02059893          	slli	a7,a1,0x20
    80008518:	40f60e3b          	subw	t3,a2,a5
    8000851c:	011368b3          	or	a7,t1,a7
    80008520:	02859813          	slli	a6,a1,0x28
    80008524:	0108e833          	or	a6,a7,a6
    80008528:	03059693          	slli	a3,a1,0x30
    8000852c:	003e589b          	srliw	a7,t3,0x3
    80008530:	00d866b3          	or	a3,a6,a3
    80008534:	03859713          	slli	a4,a1,0x38
    80008538:	00389813          	slli	a6,a7,0x3
    8000853c:	00f507b3          	add	a5,a0,a5
    80008540:	00e6e733          	or	a4,a3,a4
    80008544:	000e089b          	sext.w	a7,t3
    80008548:	00f806b3          	add	a3,a6,a5
    8000854c:	00e7b023          	sd	a4,0(a5)
    80008550:	00878793          	addi	a5,a5,8
    80008554:	fed79ce3          	bne	a5,a3,8000854c <__memset+0xd4>
    80008558:	ff8e7793          	andi	a5,t3,-8
    8000855c:	0007871b          	sext.w	a4,a5
    80008560:	01d787bb          	addw	a5,a5,t4
    80008564:	0ce88e63          	beq	a7,a4,80008640 <__memset+0x1c8>
    80008568:	00f50733          	add	a4,a0,a5
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	0017871b          	addiw	a4,a5,1
    80008574:	0cc77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008578:	00e50733          	add	a4,a0,a4
    8000857c:	00b70023          	sb	a1,0(a4)
    80008580:	0027871b          	addiw	a4,a5,2
    80008584:	0ac77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008588:	00e50733          	add	a4,a0,a4
    8000858c:	00b70023          	sb	a1,0(a4)
    80008590:	0037871b          	addiw	a4,a5,3
    80008594:	0ac77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008598:	00e50733          	add	a4,a0,a4
    8000859c:	00b70023          	sb	a1,0(a4)
    800085a0:	0047871b          	addiw	a4,a5,4
    800085a4:	08c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00b70023          	sb	a1,0(a4)
    800085b0:	0057871b          	addiw	a4,a5,5
    800085b4:	08c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085b8:	00e50733          	add	a4,a0,a4
    800085bc:	00b70023          	sb	a1,0(a4)
    800085c0:	0067871b          	addiw	a4,a5,6
    800085c4:	06c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085c8:	00e50733          	add	a4,a0,a4
    800085cc:	00b70023          	sb	a1,0(a4)
    800085d0:	0077871b          	addiw	a4,a5,7
    800085d4:	06c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085d8:	00e50733          	add	a4,a0,a4
    800085dc:	00b70023          	sb	a1,0(a4)
    800085e0:	0087871b          	addiw	a4,a5,8
    800085e4:	04c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00b70023          	sb	a1,0(a4)
    800085f0:	0097871b          	addiw	a4,a5,9
    800085f4:	04c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085f8:	00e50733          	add	a4,a0,a4
    800085fc:	00b70023          	sb	a1,0(a4)
    80008600:	00a7871b          	addiw	a4,a5,10
    80008604:	02c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008608:	00e50733          	add	a4,a0,a4
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	00b7871b          	addiw	a4,a5,11
    80008614:	02c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008618:	00e50733          	add	a4,a0,a4
    8000861c:	00b70023          	sb	a1,0(a4)
    80008620:	00c7871b          	addiw	a4,a5,12
    80008624:	00c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008628:	00e50733          	add	a4,a0,a4
    8000862c:	00b70023          	sb	a1,0(a4)
    80008630:	00d7879b          	addiw	a5,a5,13
    80008634:	00c7f663          	bgeu	a5,a2,80008640 <__memset+0x1c8>
    80008638:	00f507b3          	add	a5,a0,a5
    8000863c:	00b78023          	sb	a1,0(a5)
    80008640:	00813403          	ld	s0,8(sp)
    80008644:	01010113          	addi	sp,sp,16
    80008648:	00008067          	ret
    8000864c:	00b00693          	li	a3,11
    80008650:	e55ff06f          	j	800084a4 <__memset+0x2c>
    80008654:	00300e93          	li	t4,3
    80008658:	ea5ff06f          	j	800084fc <__memset+0x84>
    8000865c:	00100e93          	li	t4,1
    80008660:	e9dff06f          	j	800084fc <__memset+0x84>
    80008664:	00000e93          	li	t4,0
    80008668:	e95ff06f          	j	800084fc <__memset+0x84>
    8000866c:	00000793          	li	a5,0
    80008670:	ef9ff06f          	j	80008568 <__memset+0xf0>
    80008674:	00200e93          	li	t4,2
    80008678:	e85ff06f          	j	800084fc <__memset+0x84>
    8000867c:	00400e93          	li	t4,4
    80008680:	e7dff06f          	j	800084fc <__memset+0x84>
    80008684:	00500e93          	li	t4,5
    80008688:	e75ff06f          	j	800084fc <__memset+0x84>
    8000868c:	00600e93          	li	t4,6
    80008690:	e6dff06f          	j	800084fc <__memset+0x84>

0000000080008694 <__memmove>:
    80008694:	ff010113          	addi	sp,sp,-16
    80008698:	00813423          	sd	s0,8(sp)
    8000869c:	01010413          	addi	s0,sp,16
    800086a0:	0e060863          	beqz	a2,80008790 <__memmove+0xfc>
    800086a4:	fff6069b          	addiw	a3,a2,-1
    800086a8:	0006881b          	sext.w	a6,a3
    800086ac:	0ea5e863          	bltu	a1,a0,8000879c <__memmove+0x108>
    800086b0:	00758713          	addi	a4,a1,7
    800086b4:	00a5e7b3          	or	a5,a1,a0
    800086b8:	40a70733          	sub	a4,a4,a0
    800086bc:	0077f793          	andi	a5,a5,7
    800086c0:	00f73713          	sltiu	a4,a4,15
    800086c4:	00174713          	xori	a4,a4,1
    800086c8:	0017b793          	seqz	a5,a5
    800086cc:	00e7f7b3          	and	a5,a5,a4
    800086d0:	10078863          	beqz	a5,800087e0 <__memmove+0x14c>
    800086d4:	00900793          	li	a5,9
    800086d8:	1107f463          	bgeu	a5,a6,800087e0 <__memmove+0x14c>
    800086dc:	0036581b          	srliw	a6,a2,0x3
    800086e0:	fff8081b          	addiw	a6,a6,-1
    800086e4:	02081813          	slli	a6,a6,0x20
    800086e8:	01d85893          	srli	a7,a6,0x1d
    800086ec:	00858813          	addi	a6,a1,8
    800086f0:	00058793          	mv	a5,a1
    800086f4:	00050713          	mv	a4,a0
    800086f8:	01088833          	add	a6,a7,a6
    800086fc:	0007b883          	ld	a7,0(a5)
    80008700:	00878793          	addi	a5,a5,8
    80008704:	00870713          	addi	a4,a4,8
    80008708:	ff173c23          	sd	a7,-8(a4)
    8000870c:	ff0798e3          	bne	a5,a6,800086fc <__memmove+0x68>
    80008710:	ff867713          	andi	a4,a2,-8
    80008714:	02071793          	slli	a5,a4,0x20
    80008718:	0207d793          	srli	a5,a5,0x20
    8000871c:	00f585b3          	add	a1,a1,a5
    80008720:	40e686bb          	subw	a3,a3,a4
    80008724:	00f507b3          	add	a5,a0,a5
    80008728:	06e60463          	beq	a2,a4,80008790 <__memmove+0xfc>
    8000872c:	0005c703          	lbu	a4,0(a1)
    80008730:	00e78023          	sb	a4,0(a5)
    80008734:	04068e63          	beqz	a3,80008790 <__memmove+0xfc>
    80008738:	0015c603          	lbu	a2,1(a1)
    8000873c:	00100713          	li	a4,1
    80008740:	00c780a3          	sb	a2,1(a5)
    80008744:	04e68663          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008748:	0025c603          	lbu	a2,2(a1)
    8000874c:	00200713          	li	a4,2
    80008750:	00c78123          	sb	a2,2(a5)
    80008754:	02e68e63          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008758:	0035c603          	lbu	a2,3(a1)
    8000875c:	00300713          	li	a4,3
    80008760:	00c781a3          	sb	a2,3(a5)
    80008764:	02e68663          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008768:	0045c603          	lbu	a2,4(a1)
    8000876c:	00400713          	li	a4,4
    80008770:	00c78223          	sb	a2,4(a5)
    80008774:	00e68e63          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008778:	0055c603          	lbu	a2,5(a1)
    8000877c:	00500713          	li	a4,5
    80008780:	00c782a3          	sb	a2,5(a5)
    80008784:	00e68663          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008788:	0065c703          	lbu	a4,6(a1)
    8000878c:	00e78323          	sb	a4,6(a5)
    80008790:	00813403          	ld	s0,8(sp)
    80008794:	01010113          	addi	sp,sp,16
    80008798:	00008067          	ret
    8000879c:	02061713          	slli	a4,a2,0x20
    800087a0:	02075713          	srli	a4,a4,0x20
    800087a4:	00e587b3          	add	a5,a1,a4
    800087a8:	f0f574e3          	bgeu	a0,a5,800086b0 <__memmove+0x1c>
    800087ac:	02069613          	slli	a2,a3,0x20
    800087b0:	02065613          	srli	a2,a2,0x20
    800087b4:	fff64613          	not	a2,a2
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00c78633          	add	a2,a5,a2
    800087c0:	fff7c683          	lbu	a3,-1(a5)
    800087c4:	fff78793          	addi	a5,a5,-1
    800087c8:	fff70713          	addi	a4,a4,-1
    800087cc:	00d70023          	sb	a3,0(a4)
    800087d0:	fec798e3          	bne	a5,a2,800087c0 <__memmove+0x12c>
    800087d4:	00813403          	ld	s0,8(sp)
    800087d8:	01010113          	addi	sp,sp,16
    800087dc:	00008067          	ret
    800087e0:	02069713          	slli	a4,a3,0x20
    800087e4:	02075713          	srli	a4,a4,0x20
    800087e8:	00170713          	addi	a4,a4,1
    800087ec:	00e50733          	add	a4,a0,a4
    800087f0:	00050793          	mv	a5,a0
    800087f4:	0005c683          	lbu	a3,0(a1)
    800087f8:	00178793          	addi	a5,a5,1
    800087fc:	00158593          	addi	a1,a1,1
    80008800:	fed78fa3          	sb	a3,-1(a5)
    80008804:	fee798e3          	bne	a5,a4,800087f4 <__memmove+0x160>
    80008808:	f89ff06f          	j	80008790 <__memmove+0xfc>

000000008000880c <__putc>:
    8000880c:	fe010113          	addi	sp,sp,-32
    80008810:	00813823          	sd	s0,16(sp)
    80008814:	00113c23          	sd	ra,24(sp)
    80008818:	02010413          	addi	s0,sp,32
    8000881c:	00050793          	mv	a5,a0
    80008820:	fef40593          	addi	a1,s0,-17
    80008824:	00100613          	li	a2,1
    80008828:	00000513          	li	a0,0
    8000882c:	fef407a3          	sb	a5,-17(s0)
    80008830:	fffff097          	auipc	ra,0xfffff
    80008834:	b3c080e7          	jalr	-1220(ra) # 8000736c <console_write>
    80008838:	01813083          	ld	ra,24(sp)
    8000883c:	01013403          	ld	s0,16(sp)
    80008840:	02010113          	addi	sp,sp,32
    80008844:	00008067          	ret

0000000080008848 <__getc>:
    80008848:	fe010113          	addi	sp,sp,-32
    8000884c:	00813823          	sd	s0,16(sp)
    80008850:	00113c23          	sd	ra,24(sp)
    80008854:	02010413          	addi	s0,sp,32
    80008858:	fe840593          	addi	a1,s0,-24
    8000885c:	00100613          	li	a2,1
    80008860:	00000513          	li	a0,0
    80008864:	fffff097          	auipc	ra,0xfffff
    80008868:	ae8080e7          	jalr	-1304(ra) # 8000734c <console_read>
    8000886c:	fe844503          	lbu	a0,-24(s0)
    80008870:	01813083          	ld	ra,24(sp)
    80008874:	01013403          	ld	s0,16(sp)
    80008878:	02010113          	addi	sp,sp,32
    8000887c:	00008067          	ret

0000000080008880 <console_handler>:
    80008880:	fe010113          	addi	sp,sp,-32
    80008884:	00813823          	sd	s0,16(sp)
    80008888:	00113c23          	sd	ra,24(sp)
    8000888c:	00913423          	sd	s1,8(sp)
    80008890:	02010413          	addi	s0,sp,32
    80008894:	14202773          	csrr	a4,scause
    80008898:	100027f3          	csrr	a5,sstatus
    8000889c:	0027f793          	andi	a5,a5,2
    800088a0:	06079e63          	bnez	a5,8000891c <console_handler+0x9c>
    800088a4:	00074c63          	bltz	a4,800088bc <console_handler+0x3c>
    800088a8:	01813083          	ld	ra,24(sp)
    800088ac:	01013403          	ld	s0,16(sp)
    800088b0:	00813483          	ld	s1,8(sp)
    800088b4:	02010113          	addi	sp,sp,32
    800088b8:	00008067          	ret
    800088bc:	0ff77713          	andi	a4,a4,255
    800088c0:	00900793          	li	a5,9
    800088c4:	fef712e3          	bne	a4,a5,800088a8 <console_handler+0x28>
    800088c8:	ffffe097          	auipc	ra,0xffffe
    800088cc:	6dc080e7          	jalr	1756(ra) # 80006fa4 <plic_claim>
    800088d0:	00a00793          	li	a5,10
    800088d4:	00050493          	mv	s1,a0
    800088d8:	02f50c63          	beq	a0,a5,80008910 <console_handler+0x90>
    800088dc:	fc0506e3          	beqz	a0,800088a8 <console_handler+0x28>
    800088e0:	00050593          	mv	a1,a0
    800088e4:	00001517          	auipc	a0,0x1
    800088e8:	51450513          	addi	a0,a0,1300 # 80009df8 <_ZTV12ConsumerSync+0x108>
    800088ec:	fffff097          	auipc	ra,0xfffff
    800088f0:	afc080e7          	jalr	-1284(ra) # 800073e8 <__printf>
    800088f4:	01013403          	ld	s0,16(sp)
    800088f8:	01813083          	ld	ra,24(sp)
    800088fc:	00048513          	mv	a0,s1
    80008900:	00813483          	ld	s1,8(sp)
    80008904:	02010113          	addi	sp,sp,32
    80008908:	ffffe317          	auipc	t1,0xffffe
    8000890c:	6d430067          	jr	1748(t1) # 80006fdc <plic_complete>
    80008910:	fffff097          	auipc	ra,0xfffff
    80008914:	3e0080e7          	jalr	992(ra) # 80007cf0 <uartintr>
    80008918:	fddff06f          	j	800088f4 <console_handler+0x74>
    8000891c:	00001517          	auipc	a0,0x1
    80008920:	5dc50513          	addi	a0,a0,1500 # 80009ef8 <digits+0x78>
    80008924:	fffff097          	auipc	ra,0xfffff
    80008928:	a68080e7          	jalr	-1432(ra) # 8000738c <panic>
	...
