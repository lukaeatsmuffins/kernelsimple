
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	07013103          	ld	sp,112(sp) # 8000d070 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1e5070ef          	jal	ra,80007a00 <start>

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
    80001084:	749000ef          	jal	ra,80001fcc <_ZN5Riscv20handleSupervisorTrapEv>

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
        st->tcb_->unjoin();

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
    80001170:	0000c797          	auipc	a5,0xc
    80001174:	15078793          	addi	a5,a5,336 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    80001178:	0007b023          	sd	zero,0(a5)
    8000117c:	0007b423          	sd	zero,8(a5)
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(0), tail(0) {}
    80001180:	0007b823          	sd	zero,16(a5)
    80001184:	0007bc23          	sd	zero,24(a5)
    80001188:	0207b023          	sd	zero,32(a5)
    8000118c:	0207b423          	sd	zero,40(a5)
    80001190:	fc9ff06f          	j	80001158 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001194 <_ZN9Scheduler3getEv>:
{
    80001194:	fe010113          	addi	sp,sp,-32
    80001198:	00113c23          	sd	ra,24(sp)
    8000119c:	00813823          	sd	s0,16(sp)
    800011a0:	00913423          	sd	s1,8(sp)
    800011a4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800011a8:	0000c797          	auipc	a5,0xc
    800011ac:	11878793          	addi	a5,a5,280 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    800011b0:	0007b503          	ld	a0,0(a5)
    800011b4:	04050263          	beqz	a0,800011f8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011b8:	00853783          	ld	a5,8(a0)
    800011bc:	0000c717          	auipc	a4,0xc
    800011c0:	10f73223          	sd	a5,260(a4) # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011c4:	02078463          	beqz	a5,800011ec <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011c8:	00053483          	ld	s1,0(a0)
        delete elem;
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	280080e7          	jalr	640(ra) # 8000244c <_ZdlPv>
}
    800011d4:	00048513          	mv	a0,s1
    800011d8:	01813083          	ld	ra,24(sp)
    800011dc:	01013403          	ld	s0,16(sp)
    800011e0:	00813483          	ld	s1,8(sp)
    800011e4:	02010113          	addi	sp,sp,32
    800011e8:	00008067          	ret
        if (!head) { tail = 0; }
    800011ec:	0000c797          	auipc	a5,0xc
    800011f0:	0c07be23          	sd	zero,220(a5) # 8000d2c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800011f4:	fd5ff06f          	j	800011c8 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    800011f8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800011fc:	fd9ff06f          	j	800011d4 <_ZN9Scheduler3getEv+0x40>

0000000080001200 <_ZN9Scheduler3putEP3TCB>:
{
    80001200:	fe010113          	addi	sp,sp,-32
    80001204:	00113c23          	sd	ra,24(sp)
    80001208:	00813823          	sd	s0,16(sp)
    8000120c:	00913423          	sd	s1,8(sp)
    80001210:	02010413          	addi	s0,sp,32
    80001214:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001218:	01000513          	li	a0,16
    8000121c:	00001097          	auipc	ra,0x1
    80001220:	1b0080e7          	jalr	432(ra) # 800023cc <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001224:	00953023          	sd	s1,0(a0)
    80001228:	00053423          	sd	zero,8(a0)
        if (tail)
    8000122c:	0000c797          	auipc	a5,0xc
    80001230:	09478793          	addi	a5,a5,148 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    80001234:	0087b783          	ld	a5,8(a5)
    80001238:	02078263          	beqz	a5,8000125c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000123c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001240:	0000c797          	auipc	a5,0xc
    80001244:	08a7b423          	sd	a0,136(a5) # 8000d2c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001248:	01813083          	ld	ra,24(sp)
    8000124c:	01013403          	ld	s0,16(sp)
    80001250:	00813483          	ld	s1,8(sp)
    80001254:	02010113          	addi	sp,sp,32
    80001258:	00008067          	ret
            head = tail = elem;
    8000125c:	0000c797          	auipc	a5,0xc
    80001260:	06478793          	addi	a5,a5,100 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    80001264:	00a7b423          	sd	a0,8(a5)
    80001268:	00a7b023          	sd	a0,0(a5)
    8000126c:	fddff06f          	j	80001248 <_ZN9Scheduler3putEP3TCB+0x48>

0000000080001270 <_ZN9Scheduler10putToSleepEm>:
{
    80001270:	fc010113          	addi	sp,sp,-64
    80001274:	02113c23          	sd	ra,56(sp)
    80001278:	02813823          	sd	s0,48(sp)
    8000127c:	02913423          	sd	s1,40(sp)
    80001280:	03213023          	sd	s2,32(sp)
    80001284:	01313c23          	sd	s3,24(sp)
    80001288:	01413823          	sd	s4,16(sp)
    8000128c:	01513423          	sd	s5,8(sp)
    80001290:	01613023          	sd	s6,0(sp)
    80001294:	04010413          	addi	s0,sp,64
    80001298:	00050b13          	mv	s6,a0
    thread_t t = TCB::running;
    8000129c:	0000c797          	auipc	a5,0xc
    800012a0:	f7c78793          	addi	a5,a5,-132 # 8000d218 <_ZN3TCB7runningE>
    800012a4:	0007b983          	ld	s3,0(a5)

    void unjoin() { joined_ = false; }

    bool isBlocked() { return blocked_; }

    void setSleeping(bool value) { sleeping_ = value; }
    800012a8:	00100793          	li	a5,1
    800012ac:	02f98b23          	sb	a5,54(s3)
    sleepingThreadQueue.addSleepingThread(new SleepingThread(t, time_slices_left));
    800012b0:	01000513          	li	a0,16
    800012b4:	00001097          	auipc	ra,0x1
    800012b8:	118080e7          	jalr	280(ra) # 800023cc <_Znwm>
    800012bc:	00050913          	mv	s2,a0
    SleepingThread(TCB *tcb, uint64 time_slices_left) : tcb_(tcb), time_slices_left_(time_slices_left) {}
    800012c0:	01353023          	sd	s3,0(a0)
    800012c4:	01653423          	sd	s6,8(a0)
        if (!tail) { return 0; }
        return tail->data;
    }

    void addSleepingThread(SleepingThread *data) {
        Elem* prev = nullptr, *curr = head;
    800012c8:	0000c797          	auipc	a5,0xc
    800012cc:	ff878793          	addi	a5,a5,-8 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    800012d0:	0107b483          	ld	s1,16(a5)
        uint64 counter = 0;
    800012d4:	00000a13          	li	s4,0
        Elem* prev = nullptr, *curr = head;
    800012d8:	00000a93          	li	s5,0

        while (curr && (counter + curr->data->time_slices_left_ <= data->time_slices_left_)) {
    800012dc:	02048463          	beqz	s1,80001304 <_ZN9Scheduler10putToSleepEm+0x94>
    800012e0:	0004b783          	ld	a5,0(s1)
    800012e4:	0087b783          	ld	a5,8(a5)
    800012e8:	014787b3          	add	a5,a5,s4
    800012ec:	00893703          	ld	a4,8(s2)
    800012f0:	00f76a63          	bltu	a4,a5,80001304 <_ZN9Scheduler10putToSleepEm+0x94>
            counter += curr->data->time_slices_left_;
            prev = curr;
    800012f4:	00048a93          	mv	s5,s1
            counter += curr->data->time_slices_left_;
    800012f8:	00078a13          	mv	s4,a5
            curr = curr->next;
    800012fc:	0084b483          	ld	s1,8(s1)
    80001300:	fddff06f          	j	800012dc <_ZN9Scheduler10putToSleepEm+0x6c>
        }

        Elem* elem = new Elem(data, curr);
    80001304:	01000513          	li	a0,16
    80001308:	00001097          	auipc	ra,0x1
    8000130c:	0c4080e7          	jalr	196(ra) # 800023cc <_Znwm>
        Elem(SleepingThread *data, Elem *next) : data(data), next(next) {}
    80001310:	01253023          	sd	s2,0(a0)
    80001314:	00953423          	sd	s1,8(a0)

        data->time_slices_left_ -= counter;
    80001318:	00893783          	ld	a5,8(s2)
    8000131c:	414787b3          	sub	a5,a5,s4
    80001320:	00f93423          	sd	a5,8(s2)

        if (curr) { curr->data->time_slices_left_ -= data->time_slices_left_; }
    80001324:	00048a63          	beqz	s1,80001338 <_ZN9Scheduler10putToSleepEm+0xc8>
    80001328:	0004b683          	ld	a3,0(s1)
    8000132c:	0086b703          	ld	a4,8(a3)
    80001330:	40f707b3          	sub	a5,a4,a5
    80001334:	00f6b423          	sd	a5,8(a3)

        if (prev) { prev->next = elem; }
    80001338:	060a8a63          	beqz	s5,800013ac <_ZN9Scheduler10putToSleepEm+0x13c>
    8000133c:	00aab423          	sd	a0,8(s5)
        else { head = elem; }
        if (!curr) { tail = elem; }
    80001340:	06048c63          	beqz	s1,800013b8 <_ZN9Scheduler10putToSleepEm+0x148>
    debug_print("Putting to sleep\n");
    80001344:	00009517          	auipc	a0,0x9
    80001348:	cdc50513          	addi	a0,a0,-804 # 8000a020 <CONSOLE_STATUS+0x10>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	1f0080e7          	jalr	496(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)t);
    80001354:	00098513          	mv	a0,s3
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	32c080e7          	jalr	812(ra) # 80002684 <_Z11debug_printm>
    debug_print((uint64)time_slices_left);
    80001360:	000b0513          	mv	a0,s6
    80001364:	00001097          	auipc	ra,0x1
    80001368:	320080e7          	jalr	800(ra) # 80002684 <_Z11debug_printm>
    debug_print("\n");
    8000136c:	00009517          	auipc	a0,0x9
    80001370:	0cc50513          	addi	a0,a0,204 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80001374:	00001097          	auipc	ra,0x1
    80001378:	1c8080e7          	jalr	456(ra) # 8000253c <_Z11debug_printPKc>
    TCB::yield();
    8000137c:	00002097          	auipc	ra,0x2
    80001380:	a34080e7          	jalr	-1484(ra) # 80002db0 <_ZN3TCB5yieldEv>
}
    80001384:	03813083          	ld	ra,56(sp)
    80001388:	03013403          	ld	s0,48(sp)
    8000138c:	02813483          	ld	s1,40(sp)
    80001390:	02013903          	ld	s2,32(sp)
    80001394:	01813983          	ld	s3,24(sp)
    80001398:	01013a03          	ld	s4,16(sp)
    8000139c:	00813a83          	ld	s5,8(sp)
    800013a0:	00013b03          	ld	s6,0(sp)
    800013a4:	04010113          	addi	sp,sp,64
    800013a8:	00008067          	ret
        else { head = elem; }
    800013ac:	0000c797          	auipc	a5,0xc
    800013b0:	f2a7b223          	sd	a0,-220(a5) # 8000d2d0 <_ZN9Scheduler19sleepingThreadQueueE>
    800013b4:	f8dff06f          	j	80001340 <_ZN9Scheduler10putToSleepEm+0xd0>
        if (!curr) { tail = elem; }
    800013b8:	0000c797          	auipc	a5,0xc
    800013bc:	f2a7b023          	sd	a0,-224(a5) # 8000d2d8 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    800013c0:	f85ff06f          	j	80001344 <_ZN9Scheduler10putToSleepEm+0xd4>

00000000800013c4 <_ZN9Scheduler16maybeWakeThreadsEv>:
void Scheduler::maybeWakeThreads() {
    800013c4:	fe010113          	addi	sp,sp,-32
    800013c8:	00113c23          	sd	ra,24(sp)
    800013cc:	00813823          	sd	s0,16(sp)
    800013d0:	00913423          	sd	s1,8(sp)
    800013d4:	01213023          	sd	s2,0(sp)
    800013d8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800013dc:	0000c797          	auipc	a5,0xc
    800013e0:	ee478793          	addi	a5,a5,-284 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    800013e4:	0107b483          	ld	s1,16(a5)
    800013e8:	0c048463          	beqz	s1,800014b0 <_ZN9Scheduler16maybeWakeThreadsEv+0xec>
        return head->data;
    800013ec:	0004b483          	ld	s1,0(s1)
    if (st) {
    800013f0:	0c048063          	beqz	s1,800014b0 <_ZN9Scheduler16maybeWakeThreadsEv+0xec>
        st->time_slices_left_--;
    800013f4:	0084b783          	ld	a5,8(s1)
    800013f8:	fff78793          	addi	a5,a5,-1
    800013fc:	00f4b423          	sd	a5,8(s1)
        assert(st->time_slices_left_ >= 0, "Thread should already be out of sleep.");
    80001400:	00009597          	auipc	a1,0x9
    80001404:	c3858593          	addi	a1,a1,-968 # 8000a038 <CONSOLE_STATUS+0x28>
    80001408:	00100513          	li	a0,1
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	158080e7          	jalr	344(ra) # 80002564 <_Z6assertbPKc>
    80001414:	09c0006f          	j	800014b0 <_ZN9Scheduler16maybeWakeThreadsEv+0xec>
        if (!head) { tail = 0; }
    80001418:	0000c797          	auipc	a5,0xc
    8000141c:	ec07b023          	sd	zero,-320(a5) # 8000d2d8 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
        delete elem;
    80001420:	00001097          	auipc	ra,0x1
    80001424:	02c080e7          	jalr	44(ra) # 8000244c <_ZdlPv>
        st->tcb_->setSleeping(false);
    80001428:	0004b783          	ld	a5,0(s1)
    8000142c:	02078b23          	sb	zero,54(a5)
        readyThreadQueue.addLast(st->tcb_);
    80001430:	0004b903          	ld	s2,0(s1)
        Elem *elem = new Elem(data, 0);
    80001434:	01000513          	li	a0,16
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	f94080e7          	jalr	-108(ra) # 800023cc <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001440:	01253023          	sd	s2,0(a0)
    80001444:	00053423          	sd	zero,8(a0)
        if (tail)
    80001448:	0000c797          	auipc	a5,0xc
    8000144c:	e7878793          	addi	a5,a5,-392 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    80001450:	0087b783          	ld	a5,8(a5)
    80001454:	08078663          	beqz	a5,800014e0 <_ZN9Scheduler16maybeWakeThreadsEv+0x11c>
            tail->next = elem;
    80001458:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000145c:	0000c797          	auipc	a5,0xc
    80001460:	e6a7b623          	sd	a0,-404(a5) # 8000d2c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
        delete st;
    80001464:	00048513          	mv	a0,s1
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	fe4080e7          	jalr	-28(ra) # 8000244c <_ZdlPv>
        debug_print("Waking up thread\n");
    80001470:	00009517          	auipc	a0,0x9
    80001474:	bf050513          	addi	a0,a0,-1040 # 8000a060 <CONSOLE_STATUS+0x50>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	0c4080e7          	jalr	196(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)st->tcb_);
    80001480:	0004b503          	ld	a0,0(s1)
    80001484:	00001097          	auipc	ra,0x1
    80001488:	200080e7          	jalr	512(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    8000148c:	00009517          	auipc	a0,0x9
    80001490:	fac50513          	addi	a0,a0,-84 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80001494:	00001097          	auipc	ra,0x1
    80001498:	0a8080e7          	jalr	168(ra) # 8000253c <_Z11debug_printPKc>
        if (!head) { return 0; }
    8000149c:	0000c797          	auipc	a5,0xc
    800014a0:	e2478793          	addi	a5,a5,-476 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    800014a4:	0107b783          	ld	a5,16(a5)
    800014a8:	04078663          	beqz	a5,800014f4 <_ZN9Scheduler16maybeWakeThreadsEv+0x130>
        return head->data;
    800014ac:	0007b483          	ld	s1,0(a5)
    while (st && st->time_slices_left_ == 0) {
    800014b0:	04048263          	beqz	s1,800014f4 <_ZN9Scheduler16maybeWakeThreadsEv+0x130>
    800014b4:	0084b783          	ld	a5,8(s1)
    800014b8:	02079e63          	bnez	a5,800014f4 <_ZN9Scheduler16maybeWakeThreadsEv+0x130>
        if (!head) { return 0; }
    800014bc:	0000c797          	auipc	a5,0xc
    800014c0:	e0478793          	addi	a5,a5,-508 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    800014c4:	0107b503          	ld	a0,16(a5)
    800014c8:	f60500e3          	beqz	a0,80001428 <_ZN9Scheduler16maybeWakeThreadsEv+0x64>
        head = head->next;
    800014cc:	00853783          	ld	a5,8(a0)
    800014d0:	0000c717          	auipc	a4,0xc
    800014d4:	e0f73023          	sd	a5,-512(a4) # 8000d2d0 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    800014d8:	f40794e3          	bnez	a5,80001420 <_ZN9Scheduler16maybeWakeThreadsEv+0x5c>
    800014dc:	f3dff06f          	j	80001418 <_ZN9Scheduler16maybeWakeThreadsEv+0x54>
            head = tail = elem;
    800014e0:	0000c797          	auipc	a5,0xc
    800014e4:	de078793          	addi	a5,a5,-544 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    800014e8:	00a7b423          	sd	a0,8(a5)
    800014ec:	00a7b023          	sd	a0,0(a5)
    800014f0:	f75ff06f          	j	80001464 <_ZN9Scheduler16maybeWakeThreadsEv+0xa0>
}
    800014f4:	01813083          	ld	ra,24(sp)
    800014f8:	01013403          	ld	s0,16(sp)
    800014fc:	00813483          	ld	s1,8(sp)
    80001500:	00013903          	ld	s2,0(sp)
    80001504:	02010113          	addi	sp,sp,32
    80001508:	00008067          	ret

000000008000150c <_ZN9Scheduler4joinEm>:
{
    8000150c:	fd010113          	addi	sp,sp,-48
    80001510:	02113423          	sd	ra,40(sp)
    80001514:	02813023          	sd	s0,32(sp)
    80001518:	00913c23          	sd	s1,24(sp)
    8000151c:	01213823          	sd	s2,16(sp)
    80001520:	01313423          	sd	s3,8(sp)
    80001524:	01413023          	sd	s4,0(sp)
    80001528:	03010413          	addi	s0,sp,48
    8000152c:	00050493          	mv	s1,a0
    thread_t t = TCB::running;
    80001530:	0000c797          	auipc	a5,0xc
    80001534:	ce878793          	addi	a5,a5,-792 # 8000d218 <_ZN3TCB7runningE>
    80001538:	0007b983          	ld	s3,0(a5)
    joiningThreadQueue.addSleepingThread(new SleepingThread(t, time_slices_left));
    8000153c:	01000513          	li	a0,16
    80001540:	00001097          	auipc	ra,0x1
    80001544:	e8c080e7          	jalr	-372(ra) # 800023cc <_Znwm>
    80001548:	00050913          	mv	s2,a0
    SleepingThread(TCB *tcb, uint64 time_slices_left) : tcb_(tcb), time_slices_left_(time_slices_left) {}
    8000154c:	01353023          	sd	s3,0(a0)
    80001550:	00953423          	sd	s1,8(a0)
        Elem* prev = nullptr, *curr = head;
    80001554:	0000c797          	auipc	a5,0xc
    80001558:	d6c78793          	addi	a5,a5,-660 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    8000155c:	0207b483          	ld	s1,32(a5)
        uint64 counter = 0;
    80001560:	00000993          	li	s3,0
        Elem* prev = nullptr, *curr = head;
    80001564:	00000a13          	li	s4,0
        while (curr && (counter + curr->data->time_slices_left_ <= data->time_slices_left_)) {
    80001568:	02048463          	beqz	s1,80001590 <_ZN9Scheduler4joinEm+0x84>
    8000156c:	0004b783          	ld	a5,0(s1)
    80001570:	0087b783          	ld	a5,8(a5)
    80001574:	013787b3          	add	a5,a5,s3
    80001578:	00893703          	ld	a4,8(s2)
    8000157c:	00f76a63          	bltu	a4,a5,80001590 <_ZN9Scheduler4joinEm+0x84>
            prev = curr;
    80001580:	00048a13          	mv	s4,s1
            counter += curr->data->time_slices_left_;
    80001584:	00078993          	mv	s3,a5
            curr = curr->next;
    80001588:	0084b483          	ld	s1,8(s1)
    8000158c:	fddff06f          	j	80001568 <_ZN9Scheduler4joinEm+0x5c>
        Elem* elem = new Elem(data, curr);
    80001590:	01000513          	li	a0,16
    80001594:	00001097          	auipc	ra,0x1
    80001598:	e38080e7          	jalr	-456(ra) # 800023cc <_Znwm>
        Elem(SleepingThread *data, Elem *next) : data(data), next(next) {}
    8000159c:	01253023          	sd	s2,0(a0)
    800015a0:	00953423          	sd	s1,8(a0)
        data->time_slices_left_ -= counter;
    800015a4:	00893783          	ld	a5,8(s2)
    800015a8:	413787b3          	sub	a5,a5,s3
    800015ac:	00f93423          	sd	a5,8(s2)
        if (curr) { curr->data->time_slices_left_ -= data->time_slices_left_; }
    800015b0:	00048a63          	beqz	s1,800015c4 <_ZN9Scheduler4joinEm+0xb8>
    800015b4:	0004b683          	ld	a3,0(s1)
    800015b8:	0086b703          	ld	a4,8(a3)
    800015bc:	40f707b3          	sub	a5,a4,a5
    800015c0:	00f6b423          	sd	a5,8(a3)
        if (prev) { prev->next = elem; }
    800015c4:	020a0a63          	beqz	s4,800015f8 <_ZN9Scheduler4joinEm+0xec>
    800015c8:	00aa3423          	sd	a0,8(s4)
        if (!curr) { tail = elem; }
    800015cc:	02048c63          	beqz	s1,80001604 <_ZN9Scheduler4joinEm+0xf8>
    TCB::yield();
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	7e0080e7          	jalr	2016(ra) # 80002db0 <_ZN3TCB5yieldEv>
}
    800015d8:	02813083          	ld	ra,40(sp)
    800015dc:	02013403          	ld	s0,32(sp)
    800015e0:	01813483          	ld	s1,24(sp)
    800015e4:	01013903          	ld	s2,16(sp)
    800015e8:	00813983          	ld	s3,8(sp)
    800015ec:	00013a03          	ld	s4,0(sp)
    800015f0:	03010113          	addi	sp,sp,48
    800015f4:	00008067          	ret
        else { head = elem; }
    800015f8:	0000c797          	auipc	a5,0xc
    800015fc:	cea7b423          	sd	a0,-792(a5) # 8000d2e0 <_ZN9Scheduler18joiningThreadQueueE>
    80001600:	fcdff06f          	j	800015cc <_ZN9Scheduler4joinEm+0xc0>
        if (!curr) { tail = elem; }
    80001604:	0000c797          	auipc	a5,0xc
    80001608:	cea7b223          	sd	a0,-796(a5) # 8000d2e8 <_ZN9Scheduler18joiningThreadQueueE+0x8>
    8000160c:	fc5ff06f          	j	800015d0 <_ZN9Scheduler4joinEm+0xc4>

0000000080001610 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv>:
void Scheduler::maybeReleaseJoiningThreads() {
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	00813823          	sd	s0,16(sp)
    8000161c:	00913423          	sd	s1,8(sp)
    80001620:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001624:	0000c797          	auipc	a5,0xc
    80001628:	c9c78793          	addi	a5,a5,-868 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    8000162c:	0207b483          	ld	s1,32(a5)
    80001630:	06048463          	beqz	s1,80001698 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0x88>
        return head->data;
    80001634:	0004b483          	ld	s1,0(s1)
    if (st) {
    80001638:	06048063          	beqz	s1,80001698 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0x88>
        st->time_slices_left_--;
    8000163c:	0084b783          	ld	a5,8(s1)
    80001640:	fff78793          	addi	a5,a5,-1
    80001644:	00f4b423          	sd	a5,8(s1)
        assert(st->time_slices_left_ >= 0, "Thread should already be out of sleep.");
    80001648:	00009597          	auipc	a1,0x9
    8000164c:	9f058593          	addi	a1,a1,-1552 # 8000a038 <CONSOLE_STATUS+0x28>
    80001650:	00100513          	li	a0,1
    80001654:	00001097          	auipc	ra,0x1
    80001658:	f10080e7          	jalr	-240(ra) # 80002564 <_Z6assertbPKc>
    8000165c:	03c0006f          	j	80001698 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0x88>
        if (!head) { tail = 0; }
    80001660:	0000c797          	auipc	a5,0xc
    80001664:	c807b423          	sd	zero,-888(a5) # 8000d2e8 <_ZN9Scheduler18joiningThreadQueueE+0x8>
        delete elem;
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	de4080e7          	jalr	-540(ra) # 8000244c <_ZdlPv>
        st->tcb_->unjoin();
    80001670:	0004b783          	ld	a5,0(s1)
    void unjoin() { joined_ = false; }
    80001674:	02078ba3          	sb	zero,55(a5)
        delete st;
    80001678:	00048513          	mv	a0,s1
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	dd0080e7          	jalr	-560(ra) # 8000244c <_ZdlPv>
        if (!head) { return 0; }
    80001684:	0000c797          	auipc	a5,0xc
    80001688:	c3c78793          	addi	a5,a5,-964 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    8000168c:	0107b783          	ld	a5,16(a5)
    80001690:	02078c63          	beqz	a5,800016c8 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0xb8>
        return head->data;
    80001694:	0007b483          	ld	s1,0(a5)
    while (st && st->time_slices_left_ == 0) {
    80001698:	02048863          	beqz	s1,800016c8 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0xb8>
    8000169c:	0084b783          	ld	a5,8(s1)
    800016a0:	02079463          	bnez	a5,800016c8 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0xb8>
        if (!head) { return 0; }
    800016a4:	0000c797          	auipc	a5,0xc
    800016a8:	c1c78793          	addi	a5,a5,-996 # 8000d2c0 <_ZN9Scheduler16readyThreadQueueE>
    800016ac:	0207b503          	ld	a0,32(a5)
    800016b0:	fc0500e3          	beqz	a0,80001670 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0x60>
        head = head->next;
    800016b4:	00853783          	ld	a5,8(a0)
    800016b8:	0000c717          	auipc	a4,0xc
    800016bc:	c2f73423          	sd	a5,-984(a4) # 8000d2e0 <_ZN9Scheduler18joiningThreadQueueE>
        if (!head) { tail = 0; }
    800016c0:	fa0794e3          	bnez	a5,80001668 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0x58>
    800016c4:	f9dff06f          	j	80001660 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv+0x50>
    800016c8:	01813083          	ld	ra,24(sp)
    800016cc:	01013403          	ld	s0,16(sp)
    800016d0:	00813483          	ld	s1,8(sp)
    800016d4:	02010113          	addi	sp,sp,32
    800016d8:	00008067          	ret

00000000800016dc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800016dc:	ff010113          	addi	sp,sp,-16
    800016e0:	00113423          	sd	ra,8(sp)
    800016e4:	00813023          	sd	s0,0(sp)
    800016e8:	01010413          	addi	s0,sp,16
    800016ec:	000105b7          	lui	a1,0x10
    800016f0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016f4:	00100513          	li	a0,1
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	a4c080e7          	jalr	-1460(ra) # 80001144 <_Z41__static_initialization_and_destruction_0ii>
    80001700:	00813083          	ld	ra,8(sp)
    80001704:	00013403          	ld	s0,0(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <_ZN6Thread9body_execEPv>:
// Out-of-line implementation for the C++ syscall trampoline.
#include "../h/syscall_cpp.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void Thread::body_exec(void* thread) {
    80001710:	fe010113          	addi	sp,sp,-32
    80001714:	00113c23          	sd	ra,24(sp)
    80001718:	00813823          	sd	s0,16(sp)
    8000171c:	00913423          	sd	s1,8(sp)
    80001720:	02010413          	addi	s0,sp,32
    80001724:	00050493          	mv	s1,a0
    debug_print("Thread body exec\n");
    80001728:	00009517          	auipc	a0,0x9
    8000172c:	95050513          	addi	a0,a0,-1712 # 8000a078 <CONSOLE_STATUS+0x68>
    80001730:	00001097          	auipc	ra,0x1
    80001734:	e0c080e7          	jalr	-500(ra) # 8000253c <_Z11debug_printPKc>
    // this weird
    static_cast<Thread*>(thread)->run();
    80001738:	0004b783          	ld	a5,0(s1)
    8000173c:	0107b783          	ld	a5,16(a5)
    80001740:	00048513          	mv	a0,s1
    80001744:	000780e7          	jalr	a5
    debug_print("Thread body exec done\n");
    80001748:	00009517          	auipc	a0,0x9
    8000174c:	94850513          	addi	a0,a0,-1720 # 8000a090 <CONSOLE_STATUS+0x80>
    80001750:	00001097          	auipc	ra,0x1
    80001754:	dec080e7          	jalr	-532(ra) # 8000253c <_Z11debug_printPKc>
}
    80001758:	01813083          	ld	ra,24(sp)
    8000175c:	01013403          	ld	s0,16(sp)
    80001760:	00813483          	ld	s1,8(sp)
    80001764:	02010113          	addi	sp,sp,32
    80001768:	00008067          	ret

000000008000176c <_ZN10_semaphore5closeEv>:
    debug_print("\n");
    return new _semaphore((int)init);
}

void _semaphore::close()
{
    8000176c:	fe010113          	addi	sp,sp,-32
    80001770:	00113c23          	sd	ra,24(sp)
    80001774:	00813823          	sd	s0,16(sp)
    80001778:	00913423          	sd	s1,8(sp)
    8000177c:	01213023          	sd	s2,0(sp)
    80001780:	02010413          	addi	s0,sp,32
    80001784:	00050913          	mv	s2,a0
    debug_print("Semaphore close: Closing semaphore\n");
    80001788:	00009517          	auipc	a0,0x9
    8000178c:	92050513          	addi	a0,a0,-1760 # 8000a0a8 <CONSOLE_STATUS+0x98>
    80001790:	00001097          	auipc	ra,0x1
    80001794:	dac080e7          	jalr	-596(ra) # 8000253c <_Z11debug_printPKc>
    closed_ = true;
    80001798:	00100793          	li	a5,1
    8000179c:	00f90223          	sb	a5,4(s2)
    800017a0:	0280006f          	j	800017c8 <_ZN10_semaphore5closeEv+0x5c>
        if (!head) { tail = 0; }
    800017a4:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    800017a8:	00053483          	ld	s1,0(a0)
        delete elem;
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	ca0080e7          	jalr	-864(ra) # 8000244c <_ZdlPv>
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    800017b4:	02048663          	beqz	s1,800017e0 <_ZN10_semaphore5closeEv+0x74>
    void unblock() { blocked_ = false; }
    800017b8:	02048aa3          	sb	zero,53(s1)
    {
        t->unblock();
        Scheduler::put(t);
    800017bc:	00048513          	mv	a0,s1
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	a40080e7          	jalr	-1472(ra) # 80001200 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800017c8:	00893503          	ld	a0,8(s2)
    800017cc:	00050a63          	beqz	a0,800017e0 <_ZN10_semaphore5closeEv+0x74>
        head = head->next;
    800017d0:	00853783          	ld	a5,8(a0)
    800017d4:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    800017d8:	fc0798e3          	bnez	a5,800017a8 <_ZN10_semaphore5closeEv+0x3c>
    800017dc:	fc9ff06f          	j	800017a4 <_ZN10_semaphore5closeEv+0x38>
    }
}
    800017e0:	01813083          	ld	ra,24(sp)
    800017e4:	01013403          	ld	s0,16(sp)
    800017e8:	00813483          	ld	s1,8(sp)
    800017ec:	00013903          	ld	s2,0(sp)
    800017f0:	02010113          	addi	sp,sp,32
    800017f4:	00008067          	ret

00000000800017f8 <_ZN10_semaphore4waitEv>:

int _semaphore::wait()
{
    // Cannot wait on a closed semaphore.
    if (closed_)
    800017f8:	00454783          	lbu	a5,4(a0)
    800017fc:	0a079063          	bnez	a5,8000189c <_ZN10_semaphore4waitEv+0xa4>
    {
        return -1;
    }

    if (value_ > 0)
    80001800:	00052783          	lw	a5,0(a0)
    80001804:	00f05a63          	blez	a5,80001818 <_ZN10_semaphore4waitEv+0x20>
    {
        value_ -= 1;
    80001808:	fff7879b          	addiw	a5,a5,-1
    8000180c:	00f52023          	sw	a5,0(a0)
        return 0;
    80001810:	00000513          	li	a0,0
    80001814:	00008067          	ret
{
    80001818:	fe010113          	addi	sp,sp,-32
    8000181c:	00113c23          	sd	ra,24(sp)
    80001820:	00813823          	sd	s0,16(sp)
    80001824:	00913423          	sd	s1,8(sp)
    80001828:	01213023          	sd	s2,0(sp)
    8000182c:	02010413          	addi	s0,sp,32
    80001830:	00050493          	mv	s1,a0
    }

    // We do not need to remove the thread from the scheduler, just block it, 
    // and add it to the blocked list (waiting queue), then dispatch.
    TCB* old = TCB::running;
    80001834:	0000c797          	auipc	a5,0xc
    80001838:	9e478793          	addi	a5,a5,-1564 # 8000d218 <_ZN3TCB7runningE>
    8000183c:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    80001840:	00100793          	li	a5,1
    80001844:	02f90aa3          	sb	a5,53(s2)
        Elem *elem = new Elem(data, 0);
    80001848:	01000513          	li	a0,16
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	b80080e7          	jalr	-1152(ra) # 800023cc <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001854:	01253023          	sd	s2,0(a0)
    80001858:	00053423          	sd	zero,8(a0)
        if (tail)
    8000185c:	0104b783          	ld	a5,16(s1)
    80001860:	02078863          	beqz	a5,80001890 <_ZN10_semaphore4waitEv+0x98>
            tail->next = elem;
    80001864:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001868:	00a4b823          	sd	a0,16(s1)
    old->block();
    blocked_.addLast(old);
    TCB::yield();
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	544080e7          	jalr	1348(ra) # 80002db0 <_ZN3TCB5yieldEv>

    // TODO: Check if this works as a way of detecting closed semaphores.
    return 0;
    80001874:	00000513          	li	a0,0
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	00013903          	ld	s2,0(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret
            head = tail = elem;
    80001890:	00a4b823          	sd	a0,16(s1)
    80001894:	00a4b423          	sd	a0,8(s1)
    80001898:	fd5ff06f          	j	8000186c <_ZN10_semaphore4waitEv+0x74>
        return -1;
    8000189c:	fff00513          	li	a0,-1
}
    800018a0:	00008067          	ret

00000000800018a4 <_ZN10_semaphore6signalEv>:

void _semaphore::signal()
{
    800018a4:	fe010113          	addi	sp,sp,-32
    800018a8:	00113c23          	sd	ra,24(sp)
    800018ac:	00813823          	sd	s0,16(sp)
    800018b0:	00913423          	sd	s1,8(sp)
    800018b4:	01213023          	sd	s2,0(sp)
    800018b8:	02010413          	addi	s0,sp,32
    800018bc:	00050493          	mv	s1,a0
        if (!head) { return 0; }
    800018c0:	00853503          	ld	a0,8(a0)
    800018c4:	02050e63          	beqz	a0,80001900 <_ZN10_semaphore6signalEv+0x5c>
        head = head->next;
    800018c8:	00853783          	ld	a5,8(a0)
    800018cc:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800018d0:	02078463          	beqz	a5,800018f8 <_ZN10_semaphore6signalEv+0x54>
        T *ret = elem->data;
    800018d4:	00053903          	ld	s2,0(a0)
        delete elem;
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	b74080e7          	jalr	-1164(ra) # 8000244c <_ZdlPv>
    if (TCB *t = blocked_.removeFirst())
    800018e0:	02090063          	beqz	s2,80001900 <_ZN10_semaphore6signalEv+0x5c>
    void unblock() { blocked_ = false; }
    800018e4:	02090aa3          	sb	zero,53(s2)
    {
        t->unblock();
        Scheduler::put(t);
    800018e8:	00090513          	mv	a0,s2
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	914080e7          	jalr	-1772(ra) # 80001200 <_ZN9Scheduler3putEP3TCB>
    800018f4:	0180006f          	j	8000190c <_ZN10_semaphore6signalEv+0x68>
        if (!head) { tail = 0; }
    800018f8:	0004b823          	sd	zero,16(s1)
    800018fc:	fd9ff06f          	j	800018d4 <_ZN10_semaphore6signalEv+0x30>
    }
    else
    {
        value_ += 1;
    80001900:	0004a783          	lw	a5,0(s1)
    80001904:	0017879b          	addiw	a5,a5,1
    80001908:	00f4a023          	sw	a5,0(s1)
    }
}
    8000190c:	01813083          	ld	ra,24(sp)
    80001910:	01013403          	ld	s0,16(sp)
    80001914:	00813483          	ld	s1,8(sp)
    80001918:	00013903          	ld	s2,0(sp)
    8000191c:	02010113          	addi	sp,sp,32
    80001920:	00008067          	ret

0000000080001924 <_ZN10_semaphoreC1Ei>:

    80001924:	ff010113          	addi	sp,sp,-16
    80001928:	00813423          	sd	s0,8(sp)
    8000192c:	01010413          	addi	s0,sp,16
    80001930:	00b52023          	sw	a1,0(a0)
    80001934:	00050223          	sb	zero,4(a0)
    List() : head(0), tail(0) {}
    80001938:	00053423          	sd	zero,8(a0)
    8000193c:	00053823          	sd	zero,16(a0)
    80001940:	00813403          	ld	s0,8(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_ZN10_semaphore4openEj>:
{
    8000194c:	fe010113          	addi	sp,sp,-32
    80001950:	00113c23          	sd	ra,24(sp)
    80001954:	00813823          	sd	s0,16(sp)
    80001958:	00913423          	sd	s1,8(sp)
    8000195c:	01213023          	sd	s2,0(sp)
    80001960:	02010413          	addi	s0,sp,32
    80001964:	00050493          	mv	s1,a0
    debug_print("Semaphore open: Initializing semaphore with value: ");
    80001968:	00008517          	auipc	a0,0x8
    8000196c:	76850513          	addi	a0,a0,1896 # 8000a0d0 <CONSOLE_STATUS+0xc0>
    80001970:	00001097          	auipc	ra,0x1
    80001974:	bcc080e7          	jalr	-1076(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001978:	02049513          	slli	a0,s1,0x20
    8000197c:	02055513          	srli	a0,a0,0x20
    80001980:	00001097          	auipc	ra,0x1
    80001984:	d04080e7          	jalr	-764(ra) # 80002684 <_Z11debug_printm>
    debug_print("\n");
    80001988:	00009517          	auipc	a0,0x9
    8000198c:	ab050513          	addi	a0,a0,-1360 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80001990:	00001097          	auipc	ra,0x1
    80001994:	bac080e7          	jalr	-1108(ra) # 8000253c <_Z11debug_printPKc>
    return new _semaphore((int)init);
    80001998:	01800513          	li	a0,24
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	a30080e7          	jalr	-1488(ra) # 800023cc <_Znwm>
    800019a4:	00050913          	mv	s2,a0
    800019a8:	00048593          	mv	a1,s1
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	f78080e7          	jalr	-136(ra) # 80001924 <_ZN10_semaphoreC1Ei>
}
    800019b4:	00090513          	mv	a0,s2
    800019b8:	01813083          	ld	ra,24(sp)
    800019bc:	01013403          	ld	s0,16(sp)
    800019c0:	00813483          	ld	s1,8(sp)
    800019c4:	00013903          	ld	s2,0(sp)
    800019c8:	02010113          	addi	sp,sp,32
    800019cc:	00008067          	ret

00000000800019d0 <_Z7syscall11SyscallCodemmmmmmmm>:
#include "../h/syscall_c.h"
#include "../h/print.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00813423          	sd	s0,8(sp)
    800019d8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800019dc:	00000073          	ecall
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    800019e0:	00050513          	mv	a0,a0
    return result;
}
    800019e4:	00813403          	ld	s0,8(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret

00000000800019f0 <_Z9mem_allocm>:

// TODO: Do this with number of blocks instead of size.
void* mem_alloc (size_t size) {
    800019f0:	fe010113          	addi	sp,sp,-32
    800019f4:	00113c23          	sd	ra,24(sp)
    800019f8:	00813823          	sd	s0,16(sp)
    800019fc:	02010413          	addi	s0,sp,32
    // debug_print("Syscall malloc called\n");
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    80001a00:	00013023          	sd	zero,0(sp)
    80001a04:	00000893          	li	a7,0
    80001a08:	00000813          	li	a6,0
    80001a0c:	00000793          	li	a5,0
    80001a10:	00000713          	li	a4,0
    80001a14:	00000693          	li	a3,0
    80001a18:	00000613          	li	a2,0
    80001a1c:	00050593          	mv	a1,a0
    80001a20:	00100513          	li	a0,1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	fac080e7          	jalr	-84(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	02010113          	addi	sp,sp,32
    80001a38:	00008067          	ret

0000000080001a3c <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001a3c:	fe010113          	addi	sp,sp,-32
    80001a40:	00113c23          	sd	ra,24(sp)
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	02010413          	addi	s0,sp,32
    // debug_print("Syscall free called\n");
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    80001a4c:	00013023          	sd	zero,0(sp)
    80001a50:	00000893          	li	a7,0
    80001a54:	00000813          	li	a6,0
    80001a58:	00000793          	li	a5,0
    80001a5c:	00000713          	li	a4,0
    80001a60:	00000693          	li	a3,0
    80001a64:	00000613          	li	a2,0
    80001a68:	00050593          	mv	a1,a0
    80001a6c:	00200513          	li	a0,2
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	f60080e7          	jalr	-160(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001a78:	0005051b          	sext.w	a0,a0
    80001a7c:	01813083          	ld	ra,24(sp)
    80001a80:	01013403          	ld	s0,16(sp)
    80001a84:	02010113          	addi	sp,sp,32
    80001a88:	00008067          	ret

0000000080001a8c <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001a8c:	fe010113          	addi	sp,sp,-32
    80001a90:	00113c23          	sd	ra,24(sp)
    80001a94:	00813823          	sd	s0,16(sp)
    80001a98:	02010413          	addi	s0,sp,32
    debug_print("Syscall get free space called\n");
    80001a9c:	00008517          	auipc	a0,0x8
    80001aa0:	66c50513          	addi	a0,a0,1644 # 8000a108 <CONSOLE_STATUS+0xf8>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	a98080e7          	jalr	-1384(ra) # 8000253c <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    80001aac:	00013023          	sd	zero,0(sp)
    80001ab0:	00000893          	li	a7,0
    80001ab4:	00000813          	li	a6,0
    80001ab8:	00000793          	li	a5,0
    80001abc:	00000713          	li	a4,0
    80001ac0:	00000693          	li	a3,0
    80001ac4:	00000613          	li	a2,0
    80001ac8:	00000593          	li	a1,0
    80001acc:	00300513          	li	a0,3
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	f00080e7          	jalr	-256(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001ad8:	01813083          	ld	ra,24(sp)
    80001adc:	01013403          	ld	s0,16(sp)
    80001ae0:	02010113          	addi	sp,sp,32
    80001ae4:	00008067          	ret

0000000080001ae8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    80001ae8:	fe010113          	addi	sp,sp,-32
    80001aec:	00113c23          	sd	ra,24(sp)
    80001af0:	00813823          	sd	s0,16(sp)
    80001af4:	02010413          	addi	s0,sp,32
    debug_print("Syscall get largest free block called\n");
    80001af8:	00008517          	auipc	a0,0x8
    80001afc:	63050513          	addi	a0,a0,1584 # 8000a128 <CONSOLE_STATUS+0x118>
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	a3c080e7          	jalr	-1476(ra) # 8000253c <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    80001b08:	00013023          	sd	zero,0(sp)
    80001b0c:	00000893          	li	a7,0
    80001b10:	00000813          	li	a6,0
    80001b14:	00000793          	li	a5,0
    80001b18:	00000713          	li	a4,0
    80001b1c:	00000693          	li	a3,0
    80001b20:	00000613          	li	a2,0
    80001b24:	00000593          	li	a1,0
    80001b28:	00400513          	li	a0,4
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	ea4080e7          	jalr	-348(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001b34:	01813083          	ld	ra,24(sp)
    80001b38:	01013403          	ld	s0,16(sp)
    80001b3c:	02010113          	addi	sp,sp,32
    80001b40:	00008067          	ret

0000000080001b44 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001b44:	fe010113          	addi	sp,sp,-32
    80001b48:	00113c23          	sd	ra,24(sp)
    80001b4c:	00813823          	sd	s0,16(sp)
    80001b50:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    80001b54:	00013023          	sd	zero,0(sp)
    80001b58:	00000893          	li	a7,0
    80001b5c:	00000813          	li	a6,0
    80001b60:	00000793          	li	a5,0
    80001b64:	00000713          	li	a4,0
    80001b68:	00060693          	mv	a3,a2
    80001b6c:	00058613          	mv	a2,a1
    80001b70:	00050593          	mv	a1,a0
    80001b74:	01100513          	li	a0,17
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	e58080e7          	jalr	-424(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001b80:	0005051b          	sext.w	a0,a0
    80001b84:	01813083          	ld	ra,24(sp)
    80001b88:	01013403          	ld	s0,16(sp)
    80001b8c:	02010113          	addi	sp,sp,32
    80001b90:	00008067          	ret

0000000080001b94 <_Z11thread_exitv>:

int thread_exit () {
    80001b94:	fe010113          	addi	sp,sp,-32
    80001b98:	00113c23          	sd	ra,24(sp)
    80001b9c:	00813823          	sd	s0,16(sp)
    80001ba0:	02010413          	addi	s0,sp,32
    // this never returns, changes context. is this intended?
    debug_print("Syscall thread exit called\n");
    80001ba4:	00008517          	auipc	a0,0x8
    80001ba8:	5ac50513          	addi	a0,a0,1452 # 8000a150 <CONSOLE_STATUS+0x140>
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	990080e7          	jalr	-1648(ra) # 8000253c <_Z11debug_printPKc>
    return syscall(SyscallCode::THREAD_EXIT);
    80001bb4:	00013023          	sd	zero,0(sp)
    80001bb8:	00000893          	li	a7,0
    80001bbc:	00000813          	li	a6,0
    80001bc0:	00000793          	li	a5,0
    80001bc4:	00000713          	li	a4,0
    80001bc8:	00000693          	li	a3,0
    80001bcc:	00000613          	li	a2,0
    80001bd0:	00000593          	li	a1,0
    80001bd4:	01200513          	li	a0,18
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	df8080e7          	jalr	-520(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001be0:	0005051b          	sext.w	a0,a0
    80001be4:	01813083          	ld	ra,24(sp)
    80001be8:	01013403          	ld	s0,16(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret

0000000080001bf4 <_Z15thread_dispatchv>:

void thread_dispatch () {
    80001bf4:	fe010113          	addi	sp,sp,-32
    80001bf8:	00113c23          	sd	ra,24(sp)
    80001bfc:	00813823          	sd	s0,16(sp)
    80001c00:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_DISPATCH);
    80001c04:	00013023          	sd	zero,0(sp)
    80001c08:	00000893          	li	a7,0
    80001c0c:	00000813          	li	a6,0
    80001c10:	00000793          	li	a5,0
    80001c14:	00000713          	li	a4,0
    80001c18:	00000693          	li	a3,0
    80001c1c:	00000613          	li	a2,0
    80001c20:	00000593          	li	a1,0
    80001c24:	01300513          	li	a0,19
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	da8080e7          	jalr	-600(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001c30:	01813083          	ld	ra,24(sp)
    80001c34:	01013403          	ld	s0,16(sp)
    80001c38:	02010113          	addi	sp,sp,32
    80001c3c:	00008067          	ret

0000000080001c40 <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init) {
    80001c40:	fd010113          	addi	sp,sp,-48
    80001c44:	02113423          	sd	ra,40(sp)
    80001c48:	02813023          	sd	s0,32(sp)
    80001c4c:	00913c23          	sd	s1,24(sp)
    80001c50:	01213823          	sd	s2,16(sp)
    80001c54:	03010413          	addi	s0,sp,48
    80001c58:	00050913          	mv	s2,a0
    80001c5c:	00058493          	mv	s1,a1
    debug_print("Syscall sem open called\n");
    80001c60:	00008517          	auipc	a0,0x8
    80001c64:	51050513          	addi	a0,a0,1296 # 8000a170 <CONSOLE_STATUS+0x160>
    80001c68:	00001097          	auipc	ra,0x1
    80001c6c:	8d4080e7          	jalr	-1836(ra) # 8000253c <_Z11debug_printPKc>
    debug_print("Syscall sem open: Handle: ");
    80001c70:	00008517          	auipc	a0,0x8
    80001c74:	52050513          	addi	a0,a0,1312 # 8000a190 <CONSOLE_STATUS+0x180>
    80001c78:	00001097          	auipc	ra,0x1
    80001c7c:	8c4080e7          	jalr	-1852(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)handle);
    80001c80:	00090513          	mv	a0,s2
    80001c84:	00001097          	auipc	ra,0x1
    80001c88:	a00080e7          	jalr	-1536(ra) # 80002684 <_Z11debug_printm>
    debug_print("\n");
    80001c8c:	00008517          	auipc	a0,0x8
    80001c90:	7ac50513          	addi	a0,a0,1964 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	8a8080e7          	jalr	-1880(ra) # 8000253c <_Z11debug_printPKc>
    debug_print("Syscall sem open: Init: ");
    80001c9c:	00008517          	auipc	a0,0x8
    80001ca0:	51450513          	addi	a0,a0,1300 # 8000a1b0 <CONSOLE_STATUS+0x1a0>
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	898080e7          	jalr	-1896(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)init);
    80001cac:	02049493          	slli	s1,s1,0x20
    80001cb0:	0204d493          	srli	s1,s1,0x20
    80001cb4:	00048513          	mv	a0,s1
    80001cb8:	00001097          	auipc	ra,0x1
    80001cbc:	9cc080e7          	jalr	-1588(ra) # 80002684 <_Z11debug_printm>
    debug_print("\n");
    80001cc0:	00008517          	auipc	a0,0x8
    80001cc4:	77850513          	addi	a0,a0,1912 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80001cc8:	00001097          	auipc	ra,0x1
    80001ccc:	874080e7          	jalr	-1932(ra) # 8000253c <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
    80001cd0:	00013023          	sd	zero,0(sp)
    80001cd4:	00000893          	li	a7,0
    80001cd8:	00000813          	li	a6,0
    80001cdc:	00000793          	li	a5,0
    80001ce0:	00000713          	li	a4,0
    80001ce4:	00000693          	li	a3,0
    80001ce8:	00048613          	mv	a2,s1
    80001cec:	00090593          	mv	a1,s2
    80001cf0:	02100513          	li	a0,33
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	cdc080e7          	jalr	-804(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001cfc:	0005051b          	sext.w	a0,a0
    80001d00:	02813083          	ld	ra,40(sp)
    80001d04:	02013403          	ld	s0,32(sp)
    80001d08:	01813483          	ld	s1,24(sp)
    80001d0c:	01013903          	ld	s2,16(sp)
    80001d10:	03010113          	addi	sp,sp,48
    80001d14:	00008067          	ret

0000000080001d18 <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle) {
    80001d18:	fd010113          	addi	sp,sp,-48
    80001d1c:	02113423          	sd	ra,40(sp)
    80001d20:	02813023          	sd	s0,32(sp)
    80001d24:	00913c23          	sd	s1,24(sp)
    80001d28:	03010413          	addi	s0,sp,48
    80001d2c:	00050493          	mv	s1,a0
    debug_print("Syscall sem close called\n");
    80001d30:	00008517          	auipc	a0,0x8
    80001d34:	4a050513          	addi	a0,a0,1184 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	804080e7          	jalr	-2044(ra) # 8000253c <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
    80001d40:	00013023          	sd	zero,0(sp)
    80001d44:	00000893          	li	a7,0
    80001d48:	00000813          	li	a6,0
    80001d4c:	00000793          	li	a5,0
    80001d50:	00000713          	li	a4,0
    80001d54:	00000693          	li	a3,0
    80001d58:	00000613          	li	a2,0
    80001d5c:	00048593          	mv	a1,s1
    80001d60:	02200513          	li	a0,34
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	c6c080e7          	jalr	-916(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001d6c:	0005051b          	sext.w	a0,a0
    80001d70:	02813083          	ld	ra,40(sp)
    80001d74:	02013403          	ld	s0,32(sp)
    80001d78:	01813483          	ld	s1,24(sp)
    80001d7c:	03010113          	addi	sp,sp,48
    80001d80:	00008067          	ret

0000000080001d84 <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id) {
    80001d84:	fe010113          	addi	sp,sp,-32
    80001d88:	00113c23          	sd	ra,24(sp)
    80001d8c:	00813823          	sd	s0,16(sp)
    80001d90:	02010413          	addi	s0,sp,32

    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
    80001d94:	00013023          	sd	zero,0(sp)
    80001d98:	00000893          	li	a7,0
    80001d9c:	00000813          	li	a6,0
    80001da0:	00000793          	li	a5,0
    80001da4:	00000713          	li	a4,0
    80001da8:	00000693          	li	a3,0
    80001dac:	00000613          	li	a2,0
    80001db0:	00050593          	mv	a1,a0
    80001db4:	02300513          	li	a0,35
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	c18080e7          	jalr	-1000(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001dc0:	0005051b          	sext.w	a0,a0
    80001dc4:	01813083          	ld	ra,24(sp)
    80001dc8:	01013403          	ld	s0,16(sp)
    80001dcc:	02010113          	addi	sp,sp,32
    80001dd0:	00008067          	ret

0000000080001dd4 <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id) {
    80001dd4:	fe010113          	addi	sp,sp,-32
    80001dd8:	00113c23          	sd	ra,24(sp)
    80001ddc:	00813823          	sd	s0,16(sp)
    80001de0:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
    80001de4:	00013023          	sd	zero,0(sp)
    80001de8:	00000893          	li	a7,0
    80001dec:	00000813          	li	a6,0
    80001df0:	00000793          	li	a5,0
    80001df4:	00000713          	li	a4,0
    80001df8:	00000693          	li	a3,0
    80001dfc:	00000613          	li	a2,0
    80001e00:	00050593          	mv	a1,a0
    80001e04:	02400513          	li	a0,36
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	bc8080e7          	jalr	-1080(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001e10:	0005051b          	sext.w	a0,a0
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret

0000000080001e24 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    80001e24:	fe010113          	addi	sp,sp,-32
    80001e28:	00113c23          	sd	ra,24(sp)
    80001e2c:	00813823          	sd	s0,16(sp)
    80001e30:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::TIME_SLEEP, (uint64)time);
    80001e34:	00013023          	sd	zero,0(sp)
    80001e38:	00000893          	li	a7,0
    80001e3c:	00000813          	li	a6,0
    80001e40:	00000793          	li	a5,0
    80001e44:	00000713          	li	a4,0
    80001e48:	00000693          	li	a3,0
    80001e4c:	00000613          	li	a2,0
    80001e50:	00050593          	mv	a1,a0
    80001e54:	03100513          	li	a0,49
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	b78080e7          	jalr	-1160(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001e60:	0005051b          	sext.w	a0,a0
    80001e64:	01813083          	ld	ra,24(sp)
    80001e68:	01013403          	ld	s0,16(sp)
    80001e6c:	02010113          	addi	sp,sp,32
    80001e70:	00008067          	ret

0000000080001e74 <_Z4getcv>:

char getc () {
    80001e74:	fe010113          	addi	sp,sp,-32
    80001e78:	00113c23          	sd	ra,24(sp)
    80001e7c:	00813823          	sd	s0,16(sp)
    80001e80:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::GETC);
    80001e84:	00013023          	sd	zero,0(sp)
    80001e88:	00000893          	li	a7,0
    80001e8c:	00000813          	li	a6,0
    80001e90:	00000793          	li	a5,0
    80001e94:	00000713          	li	a4,0
    80001e98:	00000693          	li	a3,0
    80001e9c:	00000613          	li	a2,0
    80001ea0:	00000593          	li	a1,0
    80001ea4:	04100513          	li	a0,65
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	b28080e7          	jalr	-1240(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001eb0:	0ff57513          	andi	a0,a0,255
    80001eb4:	01813083          	ld	ra,24(sp)
    80001eb8:	01013403          	ld	s0,16(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret

0000000080001ec4 <_Z4putcc>:

void putc (char c) {
    80001ec4:	fe010113          	addi	sp,sp,-32
    80001ec8:	00113c23          	sd	ra,24(sp)
    80001ecc:	00813823          	sd	s0,16(sp)
    80001ed0:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::PUTC, (uint64)c);
    80001ed4:	00013023          	sd	zero,0(sp)
    80001ed8:	00000893          	li	a7,0
    80001edc:	00000813          	li	a6,0
    80001ee0:	00000793          	li	a5,0
    80001ee4:	00000713          	li	a4,0
    80001ee8:	00000693          	li	a3,0
    80001eec:	00000613          	li	a2,0
    80001ef0:	00050593          	mv	a1,a0
    80001ef4:	04200513          	li	a0,66
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	ad8080e7          	jalr	-1320(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001f00:	01813083          	ld	ra,24(sp)
    80001f04:	01013403          	ld	s0,16(sp)
    80001f08:	02010113          	addi	sp,sp,32
    80001f0c:	00008067          	ret

0000000080001f10 <_Z11getThreadIdv>:

int getThreadId() {
    80001f10:	fe010113          	addi	sp,sp,-32
    80001f14:	00113c23          	sd	ra,24(sp)
    80001f18:	00813823          	sd	s0,16(sp)
    80001f1c:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::GET_THREAD_ID);
    80001f20:	00013023          	sd	zero,0(sp)
    80001f24:	00000893          	li	a7,0
    80001f28:	00000813          	li	a6,0
    80001f2c:	00000793          	li	a5,0
    80001f30:	00000713          	li	a4,0
    80001f34:	00000693          	li	a3,0
    80001f38:	00000613          	li	a2,0
    80001f3c:	00000593          	li	a1,0
    80001f40:	04300513          	li	a0,67
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	a8c080e7          	jalr	-1396(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001f4c:	0005051b          	sext.w	a0,a0
    80001f50:	01813083          	ld	ra,24(sp)
    80001f54:	01013403          	ld	s0,16(sp)
    80001f58:	02010113          	addi	sp,sp,32
    80001f5c:	00008067          	ret

0000000080001f60 <_Z11thread_joinPP3TCBm>:

void thread_join(thread_t* handle, time_t time) {
    80001f60:	fe010113          	addi	sp,sp,-32
    80001f64:	00113c23          	sd	ra,24(sp)
    80001f68:	00813823          	sd	s0,16(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_JOIN, (uint64)handle, (uint64)time);
    80001f70:	00013023          	sd	zero,0(sp)
    80001f74:	00000893          	li	a7,0
    80001f78:	00000813          	li	a6,0
    80001f7c:	00000793          	li	a5,0
    80001f80:	00000713          	li	a4,0
    80001f84:	00000693          	li	a3,0
    80001f88:	00058613          	mv	a2,a1
    80001f8c:	00050593          	mv	a1,a0
    80001f90:	04400513          	li	a0,68
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	a3c080e7          	jalr	-1476(ra) # 800019d0 <_Z7syscall11SyscallCodemmmmmmmm>
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"
#include "../h/mem.hpp"
#include "../h/_console.hpp"

void Riscv::popSppSpie()
{
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00813423          	sd	s0,8(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001fb8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001fbc:	10200073          	sret
}
    80001fc0:	00813403          	ld	s0,8(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001fcc:	f9010113          	addi	sp,sp,-112
    80001fd0:	06113423          	sd	ra,104(sp)
    80001fd4:	06813023          	sd	s0,96(sp)
    80001fd8:	04913c23          	sd	s1,88(sp)
    80001fdc:	05213823          	sd	s2,80(sp)
    80001fe0:	07010413          	addi	s0,sp,112
    uint64 a0, a1, a2, a3, a4, a5, a6, a7;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001fe4:	00050793          	mv	a5,a0
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001fe8:	00058913          	mv	s2,a1
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001fec:	00060513          	mv	a0,a2
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001ff0:	00068593          	mv	a1,a3
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001ff4:	00070713          	mv	a4,a4
    __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001ff8:	00078713          	mv	a4,a5
    __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001ffc:	00080713          	mv	a4,a6
    __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80002000:	00088713          	mv	a4,a7
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002004:	14202773          	csrr	a4,scause
    80002008:	fae43c23          	sd	a4,-72(s0)
    return scause;
    8000200c:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002010:	ff870813          	addi	a6,a4,-8
    80002014:	00100693          	li	a3,1
    80002018:	0306f863          	bgeu	a3,a6,80002048 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    8000201c:	fff00793          	li	a5,-1
    80002020:	03f79793          	slli	a5,a5,0x3f
    80002024:	00178793          	addi	a5,a5,1
    80002028:	30f70a63          	beq	a4,a5,8000233c <_ZN5Riscv20handleSupervisorTrapEv+0x370>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    8000202c:	fff00793          	li	a5,-1
    80002030:	03f79793          	slli	a5,a5,0x3f
    80002034:	00978793          	addi	a5,a5,9
    80002038:	08f71263          	bne	a4,a5,800020bc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    {
        _console::handle_console_input();
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	f24080e7          	jalr	-220(ra) # 80002f60 <_ZN8_console20handle_console_inputEv>
    }
    else
    {
        // unexpected trap cause
    }
    80002044:	0780006f          	j	800020bc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002048:	14102773          	csrr	a4,sepc
    8000204c:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80002050:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002054:	00470713          	addi	a4,a4,4
    80002058:	f8e43c23          	sd	a4,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000205c:	10002773          	csrr	a4,sstatus
    80002060:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80002064:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002068:	fae43023          	sd	a4,-96(s0)
        switch (a0) {
    8000206c:	04400713          	li	a4,68
    80002070:	2af76663          	bltu	a4,a5,8000231c <_ZN5Riscv20handleSupervisorTrapEv+0x350>
    80002074:	00279793          	slli	a5,a5,0x2
    80002078:	00008717          	auipc	a4,0x8
    8000207c:	17470713          	addi	a4,a4,372 # 8000a1ec <CONSOLE_STATUS+0x1dc>
    80002080:	00e787b3          	add	a5,a5,a4
    80002084:	0007a783          	lw	a5,0(a5)
    80002088:	00e787b3          	add	a5,a5,a4
    8000208c:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80002090:	00001097          	auipc	ra,0x1
    80002094:	12c080e7          	jalr	300(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    80002098:	00090593          	mv	a1,s2
    8000209c:	00001097          	auipc	ra,0x1
    800020a0:	284080e7          	jalr	644(ra) # 80003320 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    800020a4:	00050513          	mv	a0,a0
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    800020a8:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    800020ac:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020b0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800020b4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020b8:	14179073          	csrw	sepc,a5
    800020bc:	06813083          	ld	ra,104(sp)
    800020c0:	06013403          	ld	s0,96(sp)
    800020c4:	05813483          	ld	s1,88(sp)
    800020c8:	05013903          	ld	s2,80(sp)
    800020cc:	07010113          	addi	sp,sp,112
    800020d0:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	0e8080e7          	jalr	232(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    800020dc:	00090593          	mv	a1,s2
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	3c0080e7          	jalr	960(ra) # 800034a0 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    800020e8:	fbdff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                MemoryAllocator::getInstance()->mem_get_free_space();
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	0d0080e7          	jalr	208(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	300080e7          	jalr	768(ra) # 800033f4 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    800020fc:	00000513          	li	a0,0
                break;
    80002100:	fa5ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80002104:	00001097          	auipc	ra,0x1
    80002108:	0b8080e7          	jalr	184(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	2b4080e7          	jalr	692(ra) # 800033c0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80002114:	00000513          	li	a0,0
                break;
    80002118:	f8dff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	b0c080e7          	jalr	-1268(ra) # 80002c28 <_ZN3TCB12createThreadEPFvPvES0_>
    80002124:	00a93023          	sd	a0,0(s2)
                if (!(*handle))
    80002128:	1e050e63          	beqz	a0,80002324 <_ZN5Riscv20handleSupervisorTrapEv+0x358>
        uint64 res = 0;
    8000212c:	00000513          	li	a0,0
    80002130:	f75ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                TCB::exit();
    80002134:	00001097          	auipc	ra,0x1
    80002138:	ca4080e7          	jalr	-860(ra) # 80002dd8 <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    8000213c:	00093783          	ld	a5,0(s2)
    80002140:	0000b717          	auipc	a4,0xb
    80002144:	0d870713          	addi	a4,a4,216 # 8000d218 <_ZN3TCB7runningE>
    80002148:	00073503          	ld	a0,0(a4)
    8000214c:	40f50533          	sub	a0,a0,a5
    80002150:	00008597          	auipc	a1,0x8
    80002154:	1b058593          	addi	a1,a1,432 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80002158:	00153513          	seqz	a0,a0
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	408080e7          	jalr	1032(ra) # 80002564 <_Z6assertbPKc>
                delete *handle;
    80002164:	00093483          	ld	s1,0(s2)
    80002168:	1c048263          	beqz	s1,8000232c <_ZN5Riscv20handleSupervisorTrapEv+0x360>
    ~TCB() { delete[] stack; }
    8000216c:	0104b503          	ld	a0,16(s1)
    80002170:	00050663          	beqz	a0,8000217c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    80002174:	00000097          	auipc	ra,0x0
    80002178:	318080e7          	jalr	792(ra) # 8000248c <_ZdaPv>
    8000217c:	00048513          	mv	a0,s1
    80002180:	00000097          	auipc	ra,0x0
    80002184:	2cc080e7          	jalr	716(ra) # 8000244c <_ZdlPv>
        uint64 res = 0;
    80002188:	00000513          	li	a0,0
    8000218c:	f19ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                TCB::dispatch();
    80002190:	00001097          	auipc	ra,0x1
    80002194:	ba4080e7          	jalr	-1116(ra) # 80002d34 <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80002198:	00000513          	li	a0,0
                break;
    8000219c:	f09ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                *handle = (sem_t)_semaphore::open(a2);
    800021a0:	0005051b          	sext.w	a0,a0
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	7a8080e7          	jalr	1960(ra) # 8000194c <_ZN10_semaphore4openEj>
    800021ac:	00a93023          	sd	a0,0(s2)
                if (!(*handle))
    800021b0:	18050263          	beqz	a0,80002334 <_ZN5Riscv20handleSupervisorTrapEv+0x368>
        uint64 res = 0;
    800021b4:	00000513          	li	a0,0
    800021b8:	eedff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                handle->close();
    800021bc:	00090513          	mv	a0,s2
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	5ac080e7          	jalr	1452(ra) # 8000176c <_ZN10_semaphore5closeEv>
                delete handle;
    800021c8:	00090513          	mv	a0,s2
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	280080e7          	jalr	640(ra) # 8000244c <_ZdlPv>
        uint64 res = 0;
    800021d4:	00000513          	li	a0,0
                break;
    800021d8:	ecdff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                res = handle->wait();
    800021dc:	00090513          	mv	a0,s2
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	618080e7          	jalr	1560(ra) # 800017f8 <_ZN10_semaphore4waitEv>
                break;
    800021e8:	ebdff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                handle->signal();
    800021ec:	00090513          	mv	a0,s2
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	6b4080e7          	jalr	1716(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    800021f8:	00000513          	li	a0,0
                break;
    800021fc:	ea9ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                Scheduler::putToSleep(time_slices_left);
    80002200:	00195513          	srli	a0,s2,0x1
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	06c080e7          	jalr	108(ra) # 80001270 <_ZN9Scheduler10putToSleepEm>
        uint64 res = 0;
    8000220c:	00000513          	li	a0,0
                break;
    80002210:	e95ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
        delete buffer_in_;
        delete buffer_out_;
    }

    static char _getc() {
        return buffer_in_->removeFirst();
    80002214:	0000b797          	auipc	a5,0xb
    80002218:	01478793          	addi	a5,a5,20 # 8000d228 <_ZN8_console10buffer_in_E>
    8000221c:	0007b903          	ld	s2,0(a5)
        space_->close();
        mutex_->close();
    }

    T removeFirst() {
        item_->wait();
    80002220:	00093503          	ld	a0,0(s2)
    80002224:	fffff097          	auipc	ra,0xfffff
    80002228:	5d4080e7          	jalr	1492(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    8000222c:	01093503          	ld	a0,16(s2)
    80002230:	fffff097          	auipc	ra,0xfffff
    80002234:	5c8080e7          	jalr	1480(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        T ret = buffer_[first_idx_];
    80002238:	02893703          	ld	a4,40(s2)
    8000223c:	01892783          	lw	a5,24(s2)
    80002240:	00f70733          	add	a4,a4,a5
    80002244:	00074483          	lbu	s1,0(a4)
        first_idx_ = (first_idx_ + 1) % size_;
    80002248:	0017879b          	addiw	a5,a5,1
    8000224c:	02092703          	lw	a4,32(s2)
    80002250:	02e7e7bb          	remw	a5,a5,a4
    80002254:	00f92c23          	sw	a5,24(s2)
        mutex_->signal();
    80002258:	01093503          	ld	a0,16(s2)
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	648080e7          	jalr	1608(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        space_->signal();
    80002264:	00893503          	ld	a0,8(s2)
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	63c080e7          	jalr	1596(ra) # 800018a4 <_ZN10_semaphore6signalEv>
                res = _console::_getc();
    80002270:	00048513          	mv	a0,s1
                break;
    80002274:	e31ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                _console::_putc((char)a1);
    80002278:	0ff97913          	andi	s2,s2,255
    }

    static void _putc(char c) {
        buffer_out_->addLast(c);
    8000227c:	0000b797          	auipc	a5,0xb
    80002280:	fa478793          	addi	a5,a5,-92 # 8000d220 <_ZN8_console11buffer_out_E>
    80002284:	0007b483          	ld	s1,0(a5)
        return ret;
    }

    T addLast(T c) {
        space_->wait();
    80002288:	0084b503          	ld	a0,8(s1)
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	56c080e7          	jalr	1388(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    80002294:	0104b503          	ld	a0,16(s1)
    80002298:	fffff097          	auipc	ra,0xfffff
    8000229c:	560080e7          	jalr	1376(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        T ret = buffer_[last_idx_];
    800022a0:	0284b783          	ld	a5,40(s1)
    800022a4:	01c4a703          	lw	a4,28(s1)
    800022a8:	00e787b3          	add	a5,a5,a4
        buffer_[last_idx_] = c;
    800022ac:	01278023          	sb	s2,0(a5)
        last_idx_ = (last_idx_ + 1) % size_;
    800022b0:	01c4a783          	lw	a5,28(s1)
    800022b4:	0017879b          	addiw	a5,a5,1
    800022b8:	0204a703          	lw	a4,32(s1)
    800022bc:	02e7e7bb          	remw	a5,a5,a4
    800022c0:	00f4ae23          	sw	a5,28(s1)
        mutex_->signal();
    800022c4:	0104b503          	ld	a0,16(s1)
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	5dc080e7          	jalr	1500(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        item_->signal();
    800022d0:	0004b503          	ld	a0,0(s1)
    800022d4:	fffff097          	auipc	ra,0xfffff
    800022d8:	5d0080e7          	jalr	1488(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    800022dc:	00000513          	li	a0,0
    800022e0:	dc5ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    // Let's scheduler decide the next process.
    static void yield();

    static TCB *running;

    static int getThreadId() { return running->tid_; }
    800022e4:	0000b797          	auipc	a5,0xb
    800022e8:	f3478793          	addi	a5,a5,-204 # 8000d218 <_ZN3TCB7runningE>
    800022ec:	0007b783          	ld	a5,0(a5)
    800022f0:	0307a503          	lw	a0,48(a5)
                break;
    800022f4:	db1ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                TCB::running->join(*handle, time);
    800022f8:	00050613          	mv	a2,a0
    800022fc:	00093583          	ld	a1,0(s2)
    80002300:	0000b797          	auipc	a5,0xb
    80002304:	f1878793          	addi	a5,a5,-232 # 8000d218 <_ZN3TCB7runningE>
    80002308:	0007b503          	ld	a0,0(a5)
    8000230c:	00001097          	auipc	ra,0x1
    80002310:	b54080e7          	jalr	-1196(ra) # 80002e60 <_ZN3TCB4joinEPS_m>
        uint64 res = 0;
    80002314:	00000513          	li	a0,0
                break;
    80002318:	d8dff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
        uint64 res = 0;
    8000231c:	00000513          	li	a0,0
    80002320:	d85ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                    res = -1;
    80002324:	fff00513          	li	a0,-1
    80002328:	d7dff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
        uint64 res = 0;
    8000232c:	00000513          	li	a0,0
    80002330:	d75ff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                    res = -1;
    80002334:	fff00513          	li	a0,-1
    80002338:	d6dff06f          	j	800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000233c:	00200793          	li	a5,2
    80002340:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002344:	0000b497          	auipc	s1,0xb
    80002348:	ecc48493          	addi	s1,s1,-308 # 8000d210 <_ZN3TCB16timeSliceCounterE>
    8000234c:	0004b783          	ld	a5,0(s1)
    80002350:	00178793          	addi	a5,a5,1
    80002354:	00f4b023          	sd	a5,0(s1)
        _console::handle_console_output();
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	d58080e7          	jalr	-680(ra) # 800030b0 <_ZN8_console21handle_console_outputEv>
        Scheduler::maybeWakeThreads();
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	064080e7          	jalr	100(ra) # 800013c4 <_ZN9Scheduler16maybeWakeThreadsEv>
        Scheduler::maybeReleaseJoiningThreads();
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	2a8080e7          	jalr	680(ra) # 80001610 <_ZN9Scheduler26maybeReleaseJoiningThreadsEv>
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002370:	0000b797          	auipc	a5,0xb
    80002374:	ea878793          	addi	a5,a5,-344 # 8000d218 <_ZN3TCB7runningE>
    80002378:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const { return timeSlice; }
    8000237c:	0287b783          	ld	a5,40(a5)
    80002380:	0004b703          	ld	a4,0(s1)
    80002384:	d2f76ce3          	bltu	a4,a5,800020bc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002388:	141027f3          	csrr	a5,sepc
    8000238c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002390:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80002394:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002398:	100027f3          	csrr	a5,sstatus
    8000239c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800023a0:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    800023a4:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    800023a8:	0000b797          	auipc	a5,0xb
    800023ac:	e607b423          	sd	zero,-408(a5) # 8000d210 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	984080e7          	jalr	-1660(ra) # 80002d34 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800023b8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023bc:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800023c0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023c4:	14179073          	csrw	sepc,a5
    800023c8:	cf5ff06f          	j	800020bc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

00000000800023cc <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00113c23          	sd	ra,24(sp)
    800023d4:	00813823          	sd	s0,16(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	02010413          	addi	s0,sp,32
    800023e0:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	dd8080e7          	jalr	-552(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    800023ec:	00048593          	mv	a1,s1
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	f30080e7          	jalr	-208(ra) # 80003320 <_ZN15MemoryAllocator9mem_allocEm>
}
    800023f8:	01813083          	ld	ra,24(sp)
    800023fc:	01013403          	ld	s0,16(sp)
    80002400:	00813483          	ld	s1,8(sp)
    80002404:	02010113          	addi	sp,sp,32
    80002408:	00008067          	ret

000000008000240c <_Znam>:

void *operator new[](size_t n)
{
    8000240c:	fe010113          	addi	sp,sp,-32
    80002410:	00113c23          	sd	ra,24(sp)
    80002414:	00813823          	sd	s0,16(sp)
    80002418:	00913423          	sd	s1,8(sp)
    8000241c:	02010413          	addi	s0,sp,32
    80002420:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80002424:	00001097          	auipc	ra,0x1
    80002428:	d98080e7          	jalr	-616(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    8000242c:	00048593          	mv	a1,s1
    80002430:	00001097          	auipc	ra,0x1
    80002434:	ef0080e7          	jalr	-272(ra) # 80003320 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002438:	01813083          	ld	ra,24(sp)
    8000243c:	01013403          	ld	s0,16(sp)
    80002440:	00813483          	ld	s1,8(sp)
    80002444:	02010113          	addi	sp,sp,32
    80002448:	00008067          	ret

000000008000244c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000244c:	fe010113          	addi	sp,sp,-32
    80002450:	00113c23          	sd	ra,24(sp)
    80002454:	00813823          	sd	s0,16(sp)
    80002458:	00913423          	sd	s1,8(sp)
    8000245c:	02010413          	addi	s0,sp,32
    80002460:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80002464:	00001097          	auipc	ra,0x1
    80002468:	d58080e7          	jalr	-680(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    8000246c:	00048593          	mv	a1,s1
    80002470:	00001097          	auipc	ra,0x1
    80002474:	030080e7          	jalr	48(ra) # 800034a0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002478:	01813083          	ld	ra,24(sp)
    8000247c:	01013403          	ld	s0,16(sp)
    80002480:	00813483          	ld	s1,8(sp)
    80002484:	02010113          	addi	sp,sp,32
    80002488:	00008067          	ret

000000008000248c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	02010413          	addi	s0,sp,32
    800024a0:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	d18080e7          	jalr	-744(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    800024ac:	00048593          	mv	a1,s1
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	ff0080e7          	jalr	-16(ra) # 800034a0 <_ZN15MemoryAllocator8mem_freeEPv>
    800024b8:	01813083          	ld	ra,24(sp)
    800024bc:	01013403          	ld	s0,16(sp)
    800024c0:	00813483          	ld	s1,8(sp)
    800024c4:	02010113          	addi	sp,sp,32
    800024c8:	00008067          	ret

00000000800024cc <_Z27debug_print_internal_stringPKc>:
        debug_print("\n");
    }
}

void debug_print_internal_string(char const *string)
{
    800024cc:	fd010113          	addi	sp,sp,-48
    800024d0:	02113423          	sd	ra,40(sp)
    800024d4:	02813023          	sd	s0,32(sp)
    800024d8:	00913c23          	sd	s1,24(sp)
    800024dc:	01213823          	sd	s2,16(sp)
    800024e0:	03010413          	addi	s0,sp,48
    800024e4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024e8:	100027f3          	csrr	a5,sstatus
    800024ec:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800024f0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800024f4:	00200793          	li	a5,2
    800024f8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800024fc:	0004c503          	lbu	a0,0(s1)
    80002500:	00050a63          	beqz	a0,80002514 <_Z27debug_print_internal_stringPKc+0x48>
    {
        consputc(*string);
    80002504:	00006097          	auipc	ra,0x6
    80002508:	86c080e7          	jalr	-1940(ra) # 80007d70 <consputc>
        string++;
    8000250c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002510:	fedff06f          	j	800024fc <_Z27debug_print_internal_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002514:	0009091b          	sext.w	s2,s2
    80002518:	00297913          	andi	s2,s2,2
    8000251c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002520:	10092073          	csrs	sstatus,s2
}
    80002524:	02813083          	ld	ra,40(sp)
    80002528:	02013403          	ld	s0,32(sp)
    8000252c:	01813483          	ld	s1,24(sp)
    80002530:	01013903          	ld	s2,16(sp)
    80002534:	03010113          	addi	sp,sp,48
    80002538:	00008067          	ret

000000008000253c <_Z11debug_printPKc>:
void debug_print(char const *string) {
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00113423          	sd	ra,8(sp)
    80002544:	00813023          	sd	s0,0(sp)
    80002548:	01010413          	addi	s0,sp,16
    debug_print_internal_string(string);
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	f80080e7          	jalr	-128(ra) # 800024cc <_Z27debug_print_internal_stringPKc>
}
    80002554:	00813083          	ld	ra,8(sp)
    80002558:	00013403          	ld	s0,0(sp)
    8000255c:	01010113          	addi	sp,sp,16
    80002560:	00008067          	ret

0000000080002564 <_Z6assertbPKc>:
    if (!condition) {
    80002564:	00050463          	beqz	a0,8000256c <_Z6assertbPKc+0x8>
    80002568:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    8000256c:	fe010113          	addi	sp,sp,-32
    80002570:	00113c23          	sd	ra,24(sp)
    80002574:	00813823          	sd	s0,16(sp)
    80002578:	00913423          	sd	s1,8(sp)
    8000257c:	02010413          	addi	s0,sp,32
    80002580:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80002584:	00008517          	auipc	a0,0x8
    80002588:	dc450513          	addi	a0,a0,-572 # 8000a348 <_ZZ24debug_print_internal_intmE6digits+0x10>
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	fb0080e7          	jalr	-80(ra) # 8000253c <_Z11debug_printPKc>
        debug_print(debug_message);
    80002594:	00048513          	mv	a0,s1
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	fa4080e7          	jalr	-92(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("\n");
    800025a0:	00008517          	auipc	a0,0x8
    800025a4:	e9850513          	addi	a0,a0,-360 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	f94080e7          	jalr	-108(ra) # 8000253c <_Z11debug_printPKc>
}
    800025b0:	01813083          	ld	ra,24(sp)
    800025b4:	01013403          	ld	s0,16(sp)
    800025b8:	00813483          	ld	s1,8(sp)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret

00000000800025c4 <_Z24debug_print_internal_intm>:

void debug_print_internal_int(uint64 integer)
{
    800025c4:	fc010113          	addi	sp,sp,-64
    800025c8:	02113c23          	sd	ra,56(sp)
    800025cc:	02813823          	sd	s0,48(sp)
    800025d0:	02913423          	sd	s1,40(sp)
    800025d4:	03213023          	sd	s2,32(sp)
    800025d8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025dc:	100027f3          	csrr	a5,sstatus
    800025e0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800025e4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800025e8:	00200793          	li	a5,2
    800025ec:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800025f0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800025f4:	00000713          	li	a4,0
    800025f8:	0080006f          	j	80002600 <_Z24debug_print_internal_intm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    800025fc:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    80002600:	00a00793          	li	a5,10
    80002604:	02f5763b          	remuw	a2,a0,a5
    80002608:	0017049b          	addiw	s1,a4,1
    8000260c:	00008697          	auipc	a3,0x8
    80002610:	d2c68693          	addi	a3,a3,-724 # 8000a338 <_ZZ24debug_print_internal_intmE6digits>
    80002614:	00c686b3          	add	a3,a3,a2
    80002618:	0006c683          	lbu	a3,0(a3)
    8000261c:	fe040613          	addi	a2,s0,-32
    80002620:	00e60733          	add	a4,a2,a4
    80002624:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    80002628:	02f557bb          	divuw	a5,a0,a5
    8000262c:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    80002630:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80002634:	00900793          	li	a5,9
    80002638:	fca7e2e3          	bltu	a5,a0,800025fc <_Z24debug_print_internal_intm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { consputc(buf[i]); }
    8000263c:	fff4849b          	addiw	s1,s1,-1
    80002640:	0004ce63          	bltz	s1,8000265c <_Z24debug_print_internal_intm+0x98>
    80002644:	fe040793          	addi	a5,s0,-32
    80002648:	009787b3          	add	a5,a5,s1
    8000264c:	ff07c503          	lbu	a0,-16(a5)
    80002650:	00005097          	auipc	ra,0x5
    80002654:	720080e7          	jalr	1824(ra) # 80007d70 <consputc>
    80002658:	fe5ff06f          	j	8000263c <_Z24debug_print_internal_intm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000265c:	0009091b          	sext.w	s2,s2
    80002660:	00297913          	andi	s2,s2,2
    80002664:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002668:	10092073          	csrs	sstatus,s2
    8000266c:	03813083          	ld	ra,56(sp)
    80002670:	03013403          	ld	s0,48(sp)
    80002674:	02813483          	ld	s1,40(sp)
    80002678:	02013903          	ld	s2,32(sp)
    8000267c:	04010113          	addi	sp,sp,64
    80002680:	00008067          	ret

0000000080002684 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    debug_print_internal_int(integer);
    80002694:	00000097          	auipc	ra,0x0
    80002698:	f30080e7          	jalr	-208(ra) # 800025c4 <_Z24debug_print_internal_intm>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_Z11workerBodyAPv>:
    private:
    char c;
};


void workerBodyA(void* arg) {
    800026ac:	fe010113          	addi	sp,sp,-32
    800026b0:	00113c23          	sd	ra,24(sp)
    800026b4:	00813823          	sd	s0,16(sp)
    800026b8:	00913423          	sd	s1,8(sp)
    800026bc:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    800026c0:	00000493          	li	s1,0
    800026c4:	00900793          	li	a5,9
    800026c8:	0497c663          	blt	a5,s1,80002714 <_Z11workerBodyAPv+0x68>
        time_sleep(5);
    800026cc:	00500513          	li	a0,5
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	754080e7          	jalr	1876(ra) # 80001e24 <_Z10time_sleepm>
        printString("A: i=");
    800026d8:	00008517          	auipc	a0,0x8
    800026dc:	c8850513          	addi	a0,a0,-888 # 8000a360 <_ZZ24debug_print_internal_intmE6digits+0x28>
    800026e0:	00004097          	auipc	ra,0x4
    800026e4:	674080e7          	jalr	1652(ra) # 80006d54 <_Z11printStringPKc>
        printInt(i);
    800026e8:	00000613          	li	a2,0
    800026ec:	00a00593          	li	a1,10
    800026f0:	00048513          	mv	a0,s1
    800026f4:	00005097          	auipc	ra,0x5
    800026f8:	80c080e7          	jalr	-2036(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    800026fc:	00008517          	auipc	a0,0x8
    80002700:	d3c50513          	addi	a0,a0,-708 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80002704:	00004097          	auipc	ra,0x4
    80002708:	650080e7          	jalr	1616(ra) # 80006d54 <_Z11printStringPKc>
    for (int i = 0; i < 10; i++) {
    8000270c:	0014849b          	addiw	s1,s1,1
    80002710:	fb5ff06f          	j	800026c4 <_Z11workerBodyAPv+0x18>
    }
}
    80002714:	01813083          	ld	ra,24(sp)
    80002718:	01013403          	ld	s0,16(sp)
    8000271c:	00813483          	ld	s1,8(sp)
    80002720:	02010113          	addi	sp,sp,32
    80002724:	00008067          	ret

0000000080002728 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80002728:	fe010113          	addi	sp,sp,-32
    8000272c:	00113c23          	sd	ra,24(sp)
    80002730:	00813823          	sd	s0,16(sp)
    80002734:	00913423          	sd	s1,8(sp)
    80002738:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 16; i++) {
    8000273c:	00000493          	li	s1,0
    80002740:	00f00793          	li	a5,15
    80002744:	0497c663          	blt	a5,s1,80002790 <_Z11workerBodyBPv+0x68>
        time_sleep(5);
    80002748:	00500513          	li	a0,5
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	6d8080e7          	jalr	1752(ra) # 80001e24 <_Z10time_sleepm>
        printString("B: i=");
    80002754:	00008517          	auipc	a0,0x8
    80002758:	c1450513          	addi	a0,a0,-1004 # 8000a368 <_ZZ24debug_print_internal_intmE6digits+0x30>
    8000275c:	00004097          	auipc	ra,0x4
    80002760:	5f8080e7          	jalr	1528(ra) # 80006d54 <_Z11printStringPKc>
        printInt(i);
    80002764:	00000613          	li	a2,0
    80002768:	00a00593          	li	a1,10
    8000276c:	00048513          	mv	a0,s1
    80002770:	00004097          	auipc	ra,0x4
    80002774:	790080e7          	jalr	1936(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80002778:	00008517          	auipc	a0,0x8
    8000277c:	cc050513          	addi	a0,a0,-832 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80002780:	00004097          	auipc	ra,0x4
    80002784:	5d4080e7          	jalr	1492(ra) # 80006d54 <_Z11printStringPKc>
    for (int i = 0; i < 16; i++) {
    80002788:	0014849b          	addiw	s1,s1,1
    8000278c:	fb5ff06f          	j	80002740 <_Z11workerBodyBPv+0x18>
    }
}
    80002790:	01813083          	ld	ra,24(sp)
    80002794:	01013403          	ld	s0,16(sp)
    80002798:	00813483          	ld	s1,8(sp)
    8000279c:	02010113          	addi	sp,sp,32
    800027a0:	00008067          	ret

00000000800027a4 <_Z4exitv>:
void exit() {
    800027a4:	ff010113          	addi	sp,sp,-16
    800027a8:	00113423          	sd	ra,8(sp)
    800027ac:	00813023          	sd	s0,0(sp)
    800027b0:	01010413          	addi	s0,sp,16
    debug_print("Exiting kernel.\n");
    800027b4:	00008517          	auipc	a0,0x8
    800027b8:	bbc50513          	addi	a0,a0,-1092 # 8000a370 <_ZZ24debug_print_internal_intmE6digits+0x38>
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	d80080e7          	jalr	-640(ra) # 8000253c <_Z11debug_printPKc>
    *((uint32*)0x100000) = 0x5555;
    800027c4:	00100737          	lui	a4,0x100
    800027c8:	000057b7          	lui	a5,0x5
    800027cc:	55578793          	addi	a5,a5,1365 # 5555 <_entry-0x7fffaaab>
    800027d0:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
}
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <main>:
{
    800027e4:	fd010113          	addi	sp,sp,-48
    800027e8:	02113423          	sd	ra,40(sp)
    800027ec:	02813023          	sd	s0,32(sp)
    800027f0:	00913c23          	sd	s1,24(sp)
    800027f4:	01213823          	sd	s2,16(sp)
    800027f8:	01313423          	sd	s3,8(sp)
    800027fc:	03010413          	addi	s0,sp,48
    debug_print("Initializing console\n");
    80002800:	00008517          	auipc	a0,0x8
    80002804:	b8850513          	addi	a0,a0,-1144 # 8000a388 <_ZZ24debug_print_internal_intmE6digits+0x50>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	d34080e7          	jalr	-716(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("Creating buffers\n");
    80002810:	00008517          	auipc	a0,0x8
    80002814:	b9050513          	addi	a0,a0,-1136 # 8000a3a0 <_ZZ24debug_print_internal_intmE6digits+0x68>
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	d24080e7          	jalr	-732(ra) # 8000253c <_Z11debug_printPKc>
        buffer_in_ = CircularBuffer<char>::createInstance(size_);
    80002820:	0000b917          	auipc	s2,0xb
    80002824:	81c90913          	addi	s2,s2,-2020 # 8000d03c <_ZN8_console5size_E>
    80002828:	00092983          	lw	s3,0(s2)
        CircularBuffer<T> *instance = (CircularBuffer<T>*)MemoryAllocator::getInstance()->mem_alloc(sizeof(CircularBuffer<T>));
    8000282c:	00001097          	auipc	ra,0x1
    80002830:	990080e7          	jalr	-1648(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    80002834:	03000593          	li	a1,48
    80002838:	00001097          	auipc	ra,0x1
    8000283c:	ae8080e7          	jalr	-1304(ra) # 80003320 <_ZN15MemoryAllocator9mem_allocEm>
    80002840:	00050493          	mv	s1,a0
        instance->first_idx_ = 0;
    80002844:	00052c23          	sw	zero,24(a0)
        instance->last_idx_ = 0;
    80002848:	00052e23          	sw	zero,28(a0)
        instance->size_ = size+1;
    8000284c:	0019879b          	addiw	a5,s3,1
    80002850:	02f52023          	sw	a5,32(a0)
        instance->item_ = _semaphore::open(0);
    80002854:	00000513          	li	a0,0
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	0f4080e7          	jalr	244(ra) # 8000194c <_ZN10_semaphore4openEj>
    80002860:	00a4b023          	sd	a0,0(s1)
        instance->space_ = _semaphore::open(size);
    80002864:	00098513          	mv	a0,s3
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	0e4080e7          	jalr	228(ra) # 8000194c <_ZN10_semaphore4openEj>
    80002870:	00a4b423          	sd	a0,8(s1)
        instance->mutex_ = _semaphore::open(1);
    80002874:	00100513          	li	a0,1
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	0d4080e7          	jalr	212(ra) # 8000194c <_ZN10_semaphore4openEj>
    80002880:	00a4b823          	sd	a0,16(s1)
        instance->buffer_ = (T*)MemoryAllocator::getInstance()->mem_alloc(sizeof(T) * instance->size_);
    80002884:	00001097          	auipc	ra,0x1
    80002888:	938080e7          	jalr	-1736(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    8000288c:	0204a583          	lw	a1,32(s1)
    80002890:	00001097          	auipc	ra,0x1
    80002894:	a90080e7          	jalr	-1392(ra) # 80003320 <_ZN15MemoryAllocator9mem_allocEm>
    80002898:	02a4b423          	sd	a0,40(s1)
    8000289c:	0000b797          	auipc	a5,0xb
    800028a0:	9897b623          	sd	s1,-1652(a5) # 8000d228 <_ZN8_console10buffer_in_E>
        buffer_out_ = CircularBuffer<char>::createInstance(size_);
    800028a4:	00092903          	lw	s2,0(s2)
        CircularBuffer<T> *instance = (CircularBuffer<T>*)MemoryAllocator::getInstance()->mem_alloc(sizeof(CircularBuffer<T>));
    800028a8:	00001097          	auipc	ra,0x1
    800028ac:	914080e7          	jalr	-1772(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    800028b0:	03000593          	li	a1,48
    800028b4:	00001097          	auipc	ra,0x1
    800028b8:	a6c080e7          	jalr	-1428(ra) # 80003320 <_ZN15MemoryAllocator9mem_allocEm>
    800028bc:	00050493          	mv	s1,a0
        instance->first_idx_ = 0;
    800028c0:	00052c23          	sw	zero,24(a0)
        instance->last_idx_ = 0;
    800028c4:	00052e23          	sw	zero,28(a0)
        instance->size_ = size+1;
    800028c8:	0019079b          	addiw	a5,s2,1
    800028cc:	02f52023          	sw	a5,32(a0)
        instance->item_ = _semaphore::open(0);
    800028d0:	00000513          	li	a0,0
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	078080e7          	jalr	120(ra) # 8000194c <_ZN10_semaphore4openEj>
    800028dc:	00a4b023          	sd	a0,0(s1)
        instance->space_ = _semaphore::open(size);
    800028e0:	00090513          	mv	a0,s2
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	068080e7          	jalr	104(ra) # 8000194c <_ZN10_semaphore4openEj>
    800028ec:	00a4b423          	sd	a0,8(s1)
        instance->mutex_ = _semaphore::open(1);
    800028f0:	00100513          	li	a0,1
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	058080e7          	jalr	88(ra) # 8000194c <_ZN10_semaphore4openEj>
    800028fc:	00a4b823          	sd	a0,16(s1)
        instance->buffer_ = (T*)MemoryAllocator::getInstance()->mem_alloc(sizeof(T) * instance->size_);
    80002900:	00001097          	auipc	ra,0x1
    80002904:	8bc080e7          	jalr	-1860(ra) # 800031bc <_ZN15MemoryAllocator11getInstanceEv>
    80002908:	0204a583          	lw	a1,32(s1)
    8000290c:	00001097          	auipc	ra,0x1
    80002910:	a14080e7          	jalr	-1516(ra) # 80003320 <_ZN15MemoryAllocator9mem_allocEm>
    80002914:	02a4b423          	sd	a0,40(s1)
    80002918:	0000b797          	auipc	a5,0xb
    8000291c:	9097b423          	sd	s1,-1784(a5) # 8000d220 <_ZN8_console11buffer_out_E>
        debug_print("Buffers created\n");
    80002920:	00008517          	auipc	a0,0x8
    80002924:	a9850513          	addi	a0,a0,-1384 # 8000a3b8 <_ZZ24debug_print_internal_intmE6digits+0x80>
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	c14080e7          	jalr	-1004(ra) # 8000253c <_Z11debug_printPKc>
    debug_print("Creating main thread\n");
    80002930:	00008517          	auipc	a0,0x8
    80002934:	aa050513          	addi	a0,a0,-1376 # 8000a3d0 <_ZZ24debug_print_internal_intmE6digits+0x98>
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	c04080e7          	jalr	-1020(ra) # 8000253c <_Z11debug_printPKc>
    main_handle = TCB::createThread(nullptr, nullptr);
    80002940:	00000593          	li	a1,0
    80002944:	00000513          	li	a0,0
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	2e0080e7          	jalr	736(ra) # 80002c28 <_ZN3TCB12createThreadEPFvPvES0_>
    80002950:	00050913          	mv	s2,a0
    debug_print("Main thread handle: \n");
    80002954:	00008517          	auipc	a0,0x8
    80002958:	a9450513          	addi	a0,a0,-1388 # 8000a3e8 <_ZZ24debug_print_internal_intmE6digits+0xb0>
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	be0080e7          	jalr	-1056(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)main_handle);
    80002964:	00090513          	mv	a0,s2
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	d1c080e7          	jalr	-740(ra) # 80002684 <_Z11debug_printm>
    debug_print("\n");
    80002970:	00008517          	auipc	a0,0x8
    80002974:	ac850513          	addi	a0,a0,-1336 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	bc4080e7          	jalr	-1084(ra) # 8000253c <_Z11debug_printPKc>
    debug_print("Creating userMain thread\n");
    80002980:	00008517          	auipc	a0,0x8
    80002984:	a8050513          	addi	a0,a0,-1408 # 8000a400 <_ZZ24debug_print_internal_intmE6digits+0xc8>
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	bb4080e7          	jalr	-1100(ra) # 8000253c <_Z11debug_printPKc>
    userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    80002990:	00000593          	li	a1,0
    80002994:	00000517          	auipc	a0,0x0
    80002998:	1a050513          	addi	a0,a0,416 # 80002b34 <_Z15userMainWrapperPv>
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	28c080e7          	jalr	652(ra) # 80002c28 <_ZN3TCB12createThreadEPFvPvES0_>
    800029a4:	00050493          	mv	s1,a0
    debug_print("UserMain thread handle: \n");
    800029a8:	00008517          	auipc	a0,0x8
    800029ac:	a7850513          	addi	a0,a0,-1416 # 8000a420 <_ZZ24debug_print_internal_intmE6digits+0xe8>
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	b8c080e7          	jalr	-1140(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)userMain_handle);
    800029b8:	00048513          	mv	a0,s1
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	cc8080e7          	jalr	-824(ra) # 80002684 <_Z11debug_printm>
    debug_print("\n");
    800029c4:	00008517          	auipc	a0,0x8
    800029c8:	a7450513          	addi	a0,a0,-1420 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	b70080e7          	jalr	-1168(ra) # 8000253c <_Z11debug_printPKc>
    debug_print("Setting running to main thread\n");
    800029d4:	00008517          	auipc	a0,0x8
    800029d8:	a6c50513          	addi	a0,a0,-1428 # 8000a440 <_ZZ24debug_print_internal_intmE6digits+0x108>
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	b60080e7          	jalr	-1184(ra) # 8000253c <_Z11debug_printPKc>
    TCB::running = main_handle;
    800029e4:	0000b797          	auipc	a5,0xb
    800029e8:	8327ba23          	sd	s2,-1996(a5) # 8000d218 <_ZN3TCB7runningE>
    debug_print("Setting supervisor trap and enabling interrupts\n");
    800029ec:	00008517          	auipc	a0,0x8
    800029f0:	a7450513          	addi	a0,a0,-1420 # 8000a460 <_ZZ24debug_print_internal_intmE6digits+0x128>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	b48080e7          	jalr	-1208(ra) # 8000253c <_Z11debug_printPKc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800029fc:	ffffe797          	auipc	a5,0xffffe
    80002a00:	60478793          	addi	a5,a5,1540 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002a04:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a08:	00200793          	li	a5,2
    80002a0c:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished_; }
    80002a10:	0344c783          	lbu	a5,52(s1)
    while (!userMain_handle->isFinished()) {
    80002a14:	00079863          	bnez	a5,80002a24 <main+0x240>
        thread_dispatch();
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	1dc080e7          	jalr	476(ra) # 80001bf4 <_Z15thread_dispatchv>
    while (!userMain_handle->isFinished()) {
    80002a20:	ff1ff06f          	j	80002a10 <main+0x22c>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002a24:	00200793          	li	a5,2
    80002a28:	1007b073          	csrc	sstatus,a5
    debug_print("Exiting main\n");
    80002a2c:	00008517          	auipc	a0,0x8
    80002a30:	a6c50513          	addi	a0,a0,-1428 # 8000a498 <_ZZ24debug_print_internal_intmE6digits+0x160>
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	b08080e7          	jalr	-1272(ra) # 8000253c <_Z11debug_printPKc>
    80002a3c:	0380006f          	j	80002a74 <main+0x290>
        mutex_->wait();

        if (last_idx_ >= first_idx_) {
            ret = last_idx_ - first_idx_;
        } else {
            ret = size_ - first_idx_ + last_idx_;
    80002a40:	0204a703          	lw	a4,32(s1)
    80002a44:	4127093b          	subw	s2,a4,s2
    80002a48:	00f9093b          	addw	s2,s2,a5
        }

        mutex_->signal();
    80002a4c:	0104b503          	ld	a0,16(s1)
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	e54080e7          	jalr	-428(ra) # 800018a4 <_ZN10_semaphore6signalEv>
    while(_console::_can_output()) {
    80002a58:	05205463          	blez	s2,80002aa0 <main+0x2bc>
        _console::handle_console_output();
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	654080e7          	jalr	1620(ra) # 800030b0 <_ZN8_console21handle_console_outputEv>
        debug_print("Can output\n");
    80002a64:	00008517          	auipc	a0,0x8
    80002a68:	a4450513          	addi	a0,a0,-1468 # 8000a4a8 <_ZZ24debug_print_internal_intmE6digits+0x170>
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	ad0080e7          	jalr	-1328(ra) # 8000253c <_Z11debug_printPKc>
    }

    static bool _can_output() {
        auto ret = buffer_out_->getCnt();
    80002a74:	0000a797          	auipc	a5,0xa
    80002a78:	7ac78793          	addi	a5,a5,1964 # 8000d220 <_ZN8_console11buffer_out_E>
    80002a7c:	0007b483          	ld	s1,0(a5)
        mutex_->wait();
    80002a80:	0104b503          	ld	a0,16(s1)
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	d74080e7          	jalr	-652(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        if (last_idx_ >= first_idx_) {
    80002a8c:	01c4a783          	lw	a5,28(s1)
    80002a90:	0184a903          	lw	s2,24(s1)
    80002a94:	fb27c6e3          	blt	a5,s2,80002a40 <main+0x25c>
            ret = last_idx_ - first_idx_;
    80002a98:	4127893b          	subw	s2,a5,s2
    80002a9c:	fb1ff06f          	j	80002a4c <main+0x268>
    exit();
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	d04080e7          	jalr	-764(ra) # 800027a4 <_Z4exitv>
}
    80002aa8:	02813083          	ld	ra,40(sp)
    80002aac:	02013403          	ld	s0,32(sp)
    80002ab0:	01813483          	ld	s1,24(sp)
    80002ab4:	01013903          	ld	s2,16(sp)
    80002ab8:	00813983          	ld	s3,8(sp)
    80002abc:	03010113          	addi	sp,sp,48
    80002ac0:	00008067          	ret

0000000080002ac4 <_Z4testv>:

void test() { 
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	02010413          	addi	s0,sp,32
    thread_t a;
    thread_t b;

    thread_create(&a, workerBodyA, nullptr);
    80002ad4:	00000613          	li	a2,0
    80002ad8:	00000597          	auipc	a1,0x0
    80002adc:	bd458593          	addi	a1,a1,-1068 # 800026ac <_Z11workerBodyAPv>
    80002ae0:	fe840513          	addi	a0,s0,-24
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	060080e7          	jalr	96(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_join(&a, 0);
    80002aec:	00000593          	li	a1,0
    80002af0:	fe840513          	addi	a0,s0,-24
    80002af4:	fffff097          	auipc	ra,0xfffff
    80002af8:	46c080e7          	jalr	1132(ra) # 80001f60 <_Z11thread_joinPP3TCBm>

    thread_create(&b, workerBodyB, nullptr);
    80002afc:	00000613          	li	a2,0
    80002b00:	00000597          	auipc	a1,0x0
    80002b04:	c2858593          	addi	a1,a1,-984 # 80002728 <_Z11workerBodyBPv>
    80002b08:	fe040513          	addi	a0,s0,-32
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	038080e7          	jalr	56(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_join(&b, 0);
    80002b14:	00000593          	li	a1,0
    80002b18:	fe040513          	addi	a0,s0,-32
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	444080e7          	jalr	1092(ra) # 80001f60 <_Z11thread_joinPP3TCBm>
}
    80002b24:	01813083          	ld	ra,24(sp)
    80002b28:	01013403          	ld	s0,16(sp)
    80002b2c:	02010113          	addi	sp,sp,32
    80002b30:	00008067          	ret

0000000080002b34 <_Z15userMainWrapperPv>:
{
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00113423          	sd	ra,8(sp)
    80002b3c:	00813023          	sd	s0,0(sp)
    80002b40:	01010413          	addi	s0,sp,16
    test();
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	f80080e7          	jalr	-128(ra) # 80002ac4 <_Z4testv>
    printString("==============================\n");
    80002b4c:	00008517          	auipc	a0,0x8
    80002b50:	96c50513          	addi	a0,a0,-1684 # 8000a4b8 <_ZZ24debug_print_internal_intmE6digits+0x180>
    80002b54:	00004097          	auipc	ra,0x4
    80002b58:	200080e7          	jalr	512(ra) # 80006d54 <_Z11printStringPKc>
}
    80002b5c:	00813083          	ld	ra,8(sp)
    80002b60:	00013403          	ld	s0,0(sp)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret

0000000080002b6c <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    80002b6c:	fe010113          	addi	sp,sp,-32
    80002b70:	00113c23          	sd	ra,24(sp)
    80002b74:	00813823          	sd	s0,16(sp)
    80002b78:	00913423          	sd	s1,8(sp)
    80002b7c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002b80:	fffff097          	auipc	ra,0xfffff
    80002b84:	42c080e7          	jalr	1068(ra) # 80001fac <_ZN5Riscv10popSppSpieEv>
    debug_print("TCB: Starting thread body: ");
    80002b88:	00008517          	auipc	a0,0x8
    80002b8c:	95050513          	addi	a0,a0,-1712 # 8000a4d8 <_ZZ24debug_print_internal_intmE6digits+0x1a0>
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	9ac080e7          	jalr	-1620(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)running->body);
    80002b98:	0000a497          	auipc	s1,0xa
    80002b9c:	68048493          	addi	s1,s1,1664 # 8000d218 <_ZN3TCB7runningE>
    80002ba0:	0004b783          	ld	a5,0(s1)
    80002ba4:	0007b503          	ld	a0,0(a5)
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	adc080e7          	jalr	-1316(ra) # 80002684 <_Z11debug_printm>
    debug_print(" for thread: ");
    80002bb0:	00008517          	auipc	a0,0x8
    80002bb4:	94850513          	addi	a0,a0,-1720 # 8000a4f8 <_ZZ24debug_print_internal_intmE6digits+0x1c0>
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	984080e7          	jalr	-1660(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)running);
    80002bc0:	0004b503          	ld	a0,0(s1)
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	ac0080e7          	jalr	-1344(ra) # 80002684 <_Z11debug_printm>
    debug_print(" and arg: ");
    80002bcc:	00008517          	auipc	a0,0x8
    80002bd0:	93c50513          	addi	a0,a0,-1732 # 8000a508 <_ZZ24debug_print_internal_intmE6digits+0x1d0>
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	968080e7          	jalr	-1688(ra) # 8000253c <_Z11debug_printPKc>
    debug_print((uint64)running->arg_);
    80002bdc:	0004b783          	ld	a5,0(s1)
    80002be0:	0087b503          	ld	a0,8(a5)
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	aa0080e7          	jalr	-1376(ra) # 80002684 <_Z11debug_printm>
    debug_print("\n");
    80002bec:	00008517          	auipc	a0,0x8
    80002bf0:	84c50513          	addi	a0,a0,-1972 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	948080e7          	jalr	-1720(ra) # 8000253c <_Z11debug_printPKc>
    
    running->body(running->arg_);
    80002bfc:	0004b783          	ld	a5,0(s1)
    80002c00:	0007b703          	ld	a4,0(a5)
    80002c04:	0087b503          	ld	a0,8(a5)
    80002c08:	000700e7          	jalr	a4
    thread_exit();
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	f88080e7          	jalr	-120(ra) # 80001b94 <_Z11thread_exitv>
}
    80002c14:	01813083          	ld	ra,24(sp)
    80002c18:	01013403          	ld	s0,16(sp)
    80002c1c:	00813483          	ld	s1,8(sp)
    80002c20:	02010113          	addi	sp,sp,32
    80002c24:	00008067          	ret

0000000080002c28 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80002c28:	fd010113          	addi	sp,sp,-48
    80002c2c:	02113423          	sd	ra,40(sp)
    80002c30:	02813023          	sd	s0,32(sp)
    80002c34:	00913c23          	sd	s1,24(sp)
    80002c38:	01213823          	sd	s2,16(sp)
    80002c3c:	01313423          	sd	s3,8(sp)
    80002c40:	03010413          	addi	s0,sp,48
    80002c44:	00050913          	mv	s2,a0
    80002c48:	00058993          	mv	s3,a1
    debug_print("TCB: Creating TCB\n");
    80002c4c:	00008517          	auipc	a0,0x8
    80002c50:	8cc50513          	addi	a0,a0,-1844 # 8000a518 <_ZZ24debug_print_internal_intmE6digits+0x1e0>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	8e8080e7          	jalr	-1816(ra) # 8000253c <_Z11debug_printPKc>
    return new TCB(body, arg, TIME_SLICE);
    80002c5c:	03800513          	li	a0,56
    80002c60:	fffff097          	auipc	ra,0xfffff
    80002c64:	76c080e7          	jalr	1900(ra) # 800023cc <_Znwm>
    80002c68:	00050493          	mv	s1,a0
            timeSlice(timeSlice),
            tid_(++TCB::lastThreadId),
            finished_(false),
            blocked_(false),
            sleeping_(false),
            joined_(false)
    80002c6c:	01253023          	sd	s2,0(a0)
    80002c70:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002c74:	00090a63          	beqz	s2,80002c88 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    80002c78:	00002537          	lui	a0,0x2
    80002c7c:	fffff097          	auipc	ra,0xfffff
    80002c80:	790080e7          	jalr	1936(ra) # 8000240c <_Znam>
    80002c84:	0080006f          	j	80002c8c <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    80002c88:	00000513          	li	a0,0
            joined_(false)
    80002c8c:	00a4b823          	sd	a0,16(s1)
    80002c90:	00000797          	auipc	a5,0x0
    80002c94:	edc78793          	addi	a5,a5,-292 # 80002b6c <_ZN3TCB13threadWrapperEv>
    80002c98:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002c9c:	04050a63          	beqz	a0,80002cf0 <_ZN3TCB12createThreadEPFvPvES0_+0xc8>
    80002ca0:	000027b7          	lui	a5,0x2
    80002ca4:	00f50533          	add	a0,a0,a5
            joined_(false)
    80002ca8:	02a4b023          	sd	a0,32(s1)
    80002cac:	00200793          	li	a5,2
    80002cb0:	02f4b423          	sd	a5,40(s1)
            tid_(++TCB::lastThreadId),
    80002cb4:	0000a717          	auipc	a4,0xa
    80002cb8:	38470713          	addi	a4,a4,900 # 8000d038 <_ZN3TCB12lastThreadIdE>
    80002cbc:	00072783          	lw	a5,0(a4)
    80002cc0:	0017879b          	addiw	a5,a5,1
            joined_(false)
    80002cc4:	00f72023          	sw	a5,0(a4)
    80002cc8:	02f4a823          	sw	a5,48(s1)
    80002ccc:	02048a23          	sb	zero,52(s1)
    80002cd0:	02048aa3          	sb	zero,53(s1)
    80002cd4:	02048b23          	sb	zero,54(s1)
    80002cd8:	02048ba3          	sb	zero,55(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80002cdc:	02090c63          	beqz	s2,80002d14 <_ZN3TCB12createThreadEPFvPvES0_+0xec>
    80002ce0:	00048513          	mv	a0,s1
    80002ce4:	ffffe097          	auipc	ra,0xffffe
    80002ce8:	51c080e7          	jalr	1308(ra) # 80001200 <_ZN9Scheduler3putEP3TCB>
    80002cec:	0280006f          	j	80002d14 <_ZN3TCB12createThreadEPFvPvES0_+0xec>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002cf0:	00000513          	li	a0,0
    80002cf4:	fb5ff06f          	j	80002ca8 <_ZN3TCB12createThreadEPFvPvES0_+0x80>
    80002cf8:	00050913          	mv	s2,a0
    80002cfc:	00048513          	mv	a0,s1
    80002d00:	fffff097          	auipc	ra,0xfffff
    80002d04:	74c080e7          	jalr	1868(ra) # 8000244c <_ZdlPv>
    80002d08:	00090513          	mv	a0,s2
    80002d0c:	0000c097          	auipc	ra,0xc
    80002d10:	814080e7          	jalr	-2028(ra) # 8000e520 <_Unwind_Resume>
}
    80002d14:	00048513          	mv	a0,s1
    80002d18:	02813083          	ld	ra,40(sp)
    80002d1c:	02013403          	ld	s0,32(sp)
    80002d20:	01813483          	ld	s1,24(sp)
    80002d24:	01013903          	ld	s2,16(sp)
    80002d28:	00813983          	ld	s3,8(sp)
    80002d2c:	03010113          	addi	sp,sp,48
    80002d30:	00008067          	ret

0000000080002d34 <_ZN3TCB8dispatchEv>:
{
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00113c23          	sd	ra,24(sp)
    80002d3c:	00813823          	sd	s0,16(sp)
    80002d40:	00913423          	sd	s1,8(sp)
    80002d44:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002d48:	0000a797          	auipc	a5,0xa
    80002d4c:	4d078793          	addi	a5,a5,1232 # 8000d218 <_ZN3TCB7runningE>
    80002d50:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    80002d54:	0354c783          	lbu	a5,53(s1)
    if (!old->isBlocked() && !old->isFinished() && !old->isSleeping()) { 
    80002d58:	00079a63          	bnez	a5,80002d6c <_ZN3TCB8dispatchEv+0x38>
    bool isFinished() const { return finished_; }
    80002d5c:	0344c783          	lbu	a5,52(s1)
    80002d60:	00079663          	bnez	a5,80002d6c <_ZN3TCB8dispatchEv+0x38>
    bool isSleeping() { return sleeping_; }
    80002d64:	0364c783          	lbu	a5,54(s1)
    80002d68:	02078c63          	beqz	a5,80002da0 <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80002d6c:	ffffe097          	auipc	ra,0xffffe
    80002d70:	428080e7          	jalr	1064(ra) # 80001194 <_ZN9Scheduler3getEv>
    80002d74:	0000a797          	auipc	a5,0xa
    80002d78:	4aa7b223          	sd	a0,1188(a5) # 8000d218 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002d7c:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80002d80:	01848513          	addi	a0,s1,24
    80002d84:	ffffe097          	auipc	ra,0xffffe
    80002d88:	38c080e7          	jalr	908(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002d8c:	01813083          	ld	ra,24(sp)
    80002d90:	01013403          	ld	s0,16(sp)
    80002d94:	00813483          	ld	s1,8(sp)
    80002d98:	02010113          	addi	sp,sp,32
    80002d9c:	00008067          	ret
        Scheduler::put(old); 
    80002da0:	00048513          	mv	a0,s1
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	45c080e7          	jalr	1116(ra) # 80001200 <_ZN9Scheduler3putEP3TCB>
    80002dac:	fc1ff06f          	j	80002d6c <_ZN3TCB8dispatchEv+0x38>

0000000080002db0 <_ZN3TCB5yieldEv>:
{
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00113423          	sd	ra,8(sp)
    80002db8:	00813023          	sd	s0,0(sp)
    80002dbc:	01010413          	addi	s0,sp,16
    dispatch();
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	f74080e7          	jalr	-140(ra) # 80002d34 <_ZN3TCB8dispatchEv>
}
    80002dc8:	00813083          	ld	ra,8(sp)
    80002dcc:	00013403          	ld	s0,0(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN3TCB4exitEv>:

void TCB::exit() {
    80002dd8:	fe010113          	addi	sp,sp,-32
    80002ddc:	00113c23          	sd	ra,24(sp)
    80002de0:	00813823          	sd	s0,16(sp)
    80002de4:	00913423          	sd	s1,8(sp)
    80002de8:	01213023          	sd	s2,0(sp)
    80002dec:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    80002df0:	00007517          	auipc	a0,0x7
    80002df4:	74050513          	addi	a0,a0,1856 # 8000a530 <_ZZ24debug_print_internal_intmE6digits+0x1f8>
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	744080e7          	jalr	1860(ra) # 8000253c <_Z11debug_printPKc>
    TCB *old = running;
    80002e00:	0000a497          	auipc	s1,0xa
    80002e04:	41848493          	addi	s1,s1,1048 # 8000d218 <_ZN3TCB7runningE>
    80002e08:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    80002e0c:	00100793          	li	a5,1
    80002e10:	02f90a23          	sb	a5,52(s2)
    old->setFinished(true);
    running = Scheduler::get();
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	380080e7          	jalr	896(ra) # 80001194 <_ZN9Scheduler3getEv>
    80002e1c:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    80002e20:	00007597          	auipc	a1,0x7
    80002e24:	72858593          	addi	a1,a1,1832 # 8000a548 <_ZZ24debug_print_internal_intmE6digits+0x210>
    80002e28:	00a03533          	snez	a0,a0
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	738080e7          	jalr	1848(ra) # 80002564 <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    80002e34:	0004b583          	ld	a1,0(s1)
    80002e38:	01858593          	addi	a1,a1,24
    80002e3c:	01890513          	addi	a0,s2,24
    80002e40:	ffffe097          	auipc	ra,0xffffe
    80002e44:	2d0080e7          	jalr	720(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002e48:	01813083          	ld	ra,24(sp)
    80002e4c:	01013403          	ld	s0,16(sp)
    80002e50:	00813483          	ld	s1,8(sp)
    80002e54:	00013903          	ld	s2,0(sp)
    80002e58:	02010113          	addi	sp,sp,32
    80002e5c:	00008067          	ret

0000000080002e60 <_ZN3TCB4joinEPS_m>:

void TCB::join(thread_t handle, time_t time) {
    80002e60:	fd010113          	addi	sp,sp,-48
    80002e64:	02113423          	sd	ra,40(sp)
    80002e68:	02813023          	sd	s0,32(sp)
    80002e6c:	00913c23          	sd	s1,24(sp)
    80002e70:	01213823          	sd	s2,16(sp)
    80002e74:	01313423          	sd	s3,8(sp)
    80002e78:	03010413          	addi	s0,sp,48
    80002e7c:	00050913          	mv	s2,a0
    80002e80:	00058493          	mv	s1,a1
    joined_ = true;
    80002e84:	00100793          	li	a5,1
    80002e88:	02f50ba3          	sb	a5,55(a0)
    if (time) {
    80002e8c:	02061a63          	bnez	a2,80002ec0 <_ZN3TCB4joinEPS_m+0x60>
        debug_print("TCB: Joining thread in scheduler\n");
        Scheduler::join(time);
    }
    while(handle && !handle->isFinished() && joined_) {
    80002e90:	04048a63          	beqz	s1,80002ee4 <_ZN3TCB4joinEPS_m+0x84>
    bool isFinished() const { return finished_; }
    80002e94:	0344c783          	lbu	a5,52(s1)
    80002e98:	04079663          	bnez	a5,80002ee4 <_ZN3TCB4joinEPS_m+0x84>
    80002e9c:	03794783          	lbu	a5,55(s2)
    80002ea0:	04078263          	beqz	a5,80002ee4 <_ZN3TCB4joinEPS_m+0x84>
        debug_print("TCB: YIELDING\n");
    80002ea4:	00007517          	auipc	a0,0x7
    80002ea8:	6fc50513          	addi	a0,a0,1788 # 8000a5a0 <_ZZ24debug_print_internal_intmE6digits+0x268>
    80002eac:	fffff097          	auipc	ra,0xfffff
    80002eb0:	690080e7          	jalr	1680(ra) # 8000253c <_Z11debug_printPKc>
        yield();
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	efc080e7          	jalr	-260(ra) # 80002db0 <_ZN3TCB5yieldEv>
    while(handle && !handle->isFinished() && joined_) {
    80002ebc:	fd5ff06f          	j	80002e90 <_ZN3TCB4joinEPS_m+0x30>
    80002ec0:	00060993          	mv	s3,a2
        debug_print("TCB: Joining thread in scheduler\n");
    80002ec4:	00007517          	auipc	a0,0x7
    80002ec8:	6b450513          	addi	a0,a0,1716 # 8000a578 <_ZZ24debug_print_internal_intmE6digits+0x240>
    80002ecc:	fffff097          	auipc	ra,0xfffff
    80002ed0:	670080e7          	jalr	1648(ra) # 8000253c <_Z11debug_printPKc>
        Scheduler::join(time);
    80002ed4:	00098513          	mv	a0,s3
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	634080e7          	jalr	1588(ra) # 8000150c <_ZN9Scheduler4joinEm>
    80002ee0:	fb1ff06f          	j	80002e90 <_ZN3TCB4joinEPS_m+0x30>
    80002ee4:	0344c783          	lbu	a5,52(s1)
    }
    if (!handle->isFinished()) {
    80002ee8:	04078863          	beqz	a5,80002f38 <_ZN3TCB4joinEPS_m+0xd8>
        debug_print("TCB: HANDLE IS NOT FINISHED\n");
    }
    if (!joined_) {
    80002eec:	03794783          	lbu	a5,55(s2)
    80002ef0:	04078e63          	beqz	a5,80002f4c <_ZN3TCB4joinEPS_m+0xec>
        debug_print("TCB: JOINED IS NOT TRUE\n");
    }
    if (handle) {
    80002ef4:	00048a63          	beqz	s1,80002f08 <_ZN3TCB4joinEPS_m+0xa8>
        debug_print("TCB: HANDLE IS NOT NULL\n");
    80002ef8:	00007517          	auipc	a0,0x7
    80002efc:	6f850513          	addi	a0,a0,1784 # 8000a5f0 <_ZZ24debug_print_internal_intmE6digits+0x2b8>
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	63c080e7          	jalr	1596(ra) # 8000253c <_Z11debug_printPKc>
    }
    debug_print("TCB: LEAVING\n");
    80002f08:	00007517          	auipc	a0,0x7
    80002f0c:	70850513          	addi	a0,a0,1800 # 8000a610 <_ZZ24debug_print_internal_intmE6digits+0x2d8>
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	62c080e7          	jalr	1580(ra) # 8000253c <_Z11debug_printPKc>
    joined_ = false;
    80002f18:	02090ba3          	sb	zero,55(s2)
    80002f1c:	02813083          	ld	ra,40(sp)
    80002f20:	02013403          	ld	s0,32(sp)
    80002f24:	01813483          	ld	s1,24(sp)
    80002f28:	01013903          	ld	s2,16(sp)
    80002f2c:	00813983          	ld	s3,8(sp)
    80002f30:	03010113          	addi	sp,sp,48
    80002f34:	00008067          	ret
        debug_print("TCB: HANDLE IS NOT FINISHED\n");
    80002f38:	00007517          	auipc	a0,0x7
    80002f3c:	67850513          	addi	a0,a0,1656 # 8000a5b0 <_ZZ24debug_print_internal_intmE6digits+0x278>
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	5fc080e7          	jalr	1532(ra) # 8000253c <_Z11debug_printPKc>
    80002f48:	fa5ff06f          	j	80002eec <_ZN3TCB4joinEPS_m+0x8c>
        debug_print("TCB: JOINED IS NOT TRUE\n");
    80002f4c:	00007517          	auipc	a0,0x7
    80002f50:	68450513          	addi	a0,a0,1668 # 8000a5d0 <_ZZ24debug_print_internal_intmE6digits+0x298>
    80002f54:	fffff097          	auipc	ra,0xfffff
    80002f58:	5e8080e7          	jalr	1512(ra) # 8000253c <_Z11debug_printPKc>
    80002f5c:	f99ff06f          	j	80002ef4 <_ZN3TCB4joinEPS_m+0x94>

0000000080002f60 <_ZN8_console20handle_console_inputEv>:
int _console::size_ = 128;
CircularBuffer<char>* _console::buffer_in_ = nullptr;
CircularBuffer<char>* _console::buffer_out_ = nullptr;

void _console::handle_console_input()
{
    80002f60:	fd010113          	addi	sp,sp,-48
    80002f64:	02113423          	sd	ra,40(sp)
    80002f68:	02813023          	sd	s0,32(sp)
    80002f6c:	00913c23          	sd	s1,24(sp)
    80002f70:	01213823          	sd	s2,16(sp)
    80002f74:	01313423          	sd	s3,8(sp)
    80002f78:	01413023          	sd	s4,0(sp)
    80002f7c:	03010413          	addi	s0,sp,48
    // TODO: Return EOF on error getc.
    uint64 irq = plic_claim();
    80002f80:	00006097          	auipc	ra,0x6
    80002f84:	d64080e7          	jalr	-668(ra) # 80008ce4 <plic_claim>
    80002f88:	00050a13          	mv	s4,a0
    if (irq != CONSOLE_IRQ) {
    80002f8c:	00a00793          	li	a5,10
    80002f90:	00f51c63          	bne	a0,a5,80002fa8 <_ZN8_console20handle_console_inputEv+0x48>
        plic_complete(irq);
        return;
    }

    uint8 c_stat = *(uint8*)CONSOLE_STATUS;
    80002f94:	00007797          	auipc	a5,0x7
    80002f98:	07c78793          	addi	a5,a5,124 # 8000a010 <CONSOLE_STATUS>
    80002f9c:	0007b983          	ld	s3,0(a5)
    80002fa0:	0009c783          	lbu	a5,0(s3)
    80002fa4:	0ac0006f          	j	80003050 <_ZN8_console20handle_console_inputEv+0xf0>
        plic_complete(irq);
    80002fa8:	00006097          	auipc	ra,0x6
    80002fac:	d74080e7          	jalr	-652(ra) # 80008d1c <plic_complete>
        return;
    80002fb0:	0e00006f          	j	80003090 <_ZN8_console20handle_console_inputEv+0x130>
            ret = size_ - first_idx_ + last_idx_;
    80002fb4:	0204a703          	lw	a4,32(s1)
    80002fb8:	4127093b          	subw	s2,a4,s2
    80002fbc:	00f9093b          	addw	s2,s2,a5
        mutex_->signal();
    80002fc0:	0104b503          	ld	a0,16(s1)
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	8e0080e7          	jalr	-1824(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        return ret > 0;
    }

    static bool _can_input() {
        return buffer_in_->getCnt() < size_;
    80002fcc:	0000a797          	auipc	a5,0xa
    80002fd0:	07078793          	addi	a5,a5,112 # 8000d03c <_ZN8_console5size_E>
    80002fd4:	0007a783          	lw	a5,0(a5)

    while ((c_stat & CONSOLE_RX_STATUS_BIT) && _console::_can_input()) {
    80002fd8:	0af95663          	bge	s2,a5,80003084 <_ZN8_console20handle_console_inputEv+0x124>
        char c = *(uint8*)CONSOLE_RX_DATA;
    80002fdc:	00007797          	auipc	a5,0x7
    80002fe0:	02478793          	addi	a5,a5,36 # 8000a000 <CONSOLE_RX_DATA>
    80002fe4:	0007b783          	ld	a5,0(a5)
    80002fe8:	0007c903          	lbu	s2,0(a5)
    static char _remove_from_out() {
        char ret = buffer_out_->removeFirst();
        return ret;
    }
    static void _add_to_in(char c) {
        buffer_in_->addLast(c);
    80002fec:	0000a797          	auipc	a5,0xa
    80002ff0:	23c78793          	addi	a5,a5,572 # 8000d228 <_ZN8_console10buffer_in_E>
    80002ff4:	0007b483          	ld	s1,0(a5)
        space_->wait();
    80002ff8:	0084b503          	ld	a0,8(s1)
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	7fc080e7          	jalr	2044(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    80003004:	0104b503          	ld	a0,16(s1)
    80003008:	ffffe097          	auipc	ra,0xffffe
    8000300c:	7f0080e7          	jalr	2032(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        T ret = buffer_[last_idx_];
    80003010:	0284b783          	ld	a5,40(s1)
    80003014:	01c4a703          	lw	a4,28(s1)
    80003018:	00e787b3          	add	a5,a5,a4
        buffer_[last_idx_] = c;
    8000301c:	01278023          	sb	s2,0(a5)
        last_idx_ = (last_idx_ + 1) % size_;
    80003020:	01c4a783          	lw	a5,28(s1)
    80003024:	0017879b          	addiw	a5,a5,1
    80003028:	0204a703          	lw	a4,32(s1)
    8000302c:	02e7e7bb          	remw	a5,a5,a4
    80003030:	00f4ae23          	sw	a5,28(s1)
        mutex_->signal();
    80003034:	0104b503          	ld	a0,16(s1)
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	86c080e7          	jalr	-1940(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        item_->signal();
    80003040:	0004b503          	ld	a0,0(s1)
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	860080e7          	jalr	-1952(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        _console::_add_to_in(c);
        c_stat = *(uint8*)CONSOLE_STATUS;
    8000304c:	0009c783          	lbu	a5,0(s3)
    while ((c_stat & CONSOLE_RX_STATUS_BIT) && _console::_can_input()) {
    80003050:	0017f793          	andi	a5,a5,1
    80003054:	02078863          	beqz	a5,80003084 <_ZN8_console20handle_console_inputEv+0x124>
        return buffer_in_->getCnt() < size_;
    80003058:	0000a797          	auipc	a5,0xa
    8000305c:	1d078793          	addi	a5,a5,464 # 8000d228 <_ZN8_console10buffer_in_E>
    80003060:	0007b483          	ld	s1,0(a5)
        mutex_->wait();
    80003064:	0104b503          	ld	a0,16(s1)
    80003068:	ffffe097          	auipc	ra,0xffffe
    8000306c:	790080e7          	jalr	1936(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        if (last_idx_ >= first_idx_) {
    80003070:	01c4a783          	lw	a5,28(s1)
    80003074:	0184a903          	lw	s2,24(s1)
    80003078:	f327cee3          	blt	a5,s2,80002fb4 <_ZN8_console20handle_console_inputEv+0x54>
            ret = last_idx_ - first_idx_;
    8000307c:	4127893b          	subw	s2,a5,s2
    80003080:	f41ff06f          	j	80002fc0 <_ZN8_console20handle_console_inputEv+0x60>
    }

    plic_complete(irq);
    80003084:	000a0513          	mv	a0,s4
    80003088:	00006097          	auipc	ra,0x6
    8000308c:	c94080e7          	jalr	-876(ra) # 80008d1c <plic_complete>
}
    80003090:	02813083          	ld	ra,40(sp)
    80003094:	02013403          	ld	s0,32(sp)
    80003098:	01813483          	ld	s1,24(sp)
    8000309c:	01013903          	ld	s2,16(sp)
    800030a0:	00813983          	ld	s3,8(sp)
    800030a4:	00013a03          	ld	s4,0(sp)
    800030a8:	03010113          	addi	sp,sp,48
    800030ac:	00008067          	ret

00000000800030b0 <_ZN8_console21handle_console_outputEv>:

void _console::handle_console_output()
{
    800030b0:	fd010113          	addi	sp,sp,-48
    800030b4:	02113423          	sd	ra,40(sp)
    800030b8:	02813023          	sd	s0,32(sp)
    800030bc:	00913c23          	sd	s1,24(sp)
    800030c0:	01213823          	sd	s2,16(sp)
    800030c4:	01313423          	sd	s3,8(sp)
    800030c8:	03010413          	addi	s0,sp,48
    uint8 c_stat = *(uint8*)CONSOLE_STATUS;
    800030cc:	00007797          	auipc	a5,0x7
    800030d0:	f4478793          	addi	a5,a5,-188 # 8000a010 <CONSOLE_STATUS>
    800030d4:	0007b983          	ld	s3,0(a5)
    800030d8:	0009c783          	lbu	a5,0(s3)
    800030dc:	0900006f          	j	8000316c <_ZN8_console21handle_console_outputEv+0xbc>
            ret = size_ - first_idx_ + last_idx_;
    800030e0:	0204a703          	lw	a4,32(s1)
    800030e4:	4127093b          	subw	s2,a4,s2
    800030e8:	00f9093b          	addw	s2,s2,a5
        mutex_->signal();
    800030ec:	0104b503          	ld	a0,16(s1)
    800030f0:	ffffe097          	auipc	ra,0xffffe
    800030f4:	7b4080e7          	jalr	1972(ra) # 800018a4 <_ZN10_semaphore6signalEv>
    while ((c_stat & CONSOLE_TX_STATUS_BIT) && _console::_can_output()) {
    800030f8:	0b205463          	blez	s2,800031a0 <_ZN8_console21handle_console_outputEv+0xf0>
        char ret = buffer_out_->removeFirst();
    800030fc:	0000a797          	auipc	a5,0xa
    80003100:	12478793          	addi	a5,a5,292 # 8000d220 <_ZN8_console11buffer_out_E>
    80003104:	0007b483          	ld	s1,0(a5)
        item_->wait();
    80003108:	0004b503          	ld	a0,0(s1)
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	6ec080e7          	jalr	1772(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        mutex_->wait();
    80003114:	0104b503          	ld	a0,16(s1)
    80003118:	ffffe097          	auipc	ra,0xffffe
    8000311c:	6e0080e7          	jalr	1760(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        T ret = buffer_[first_idx_];
    80003120:	0284b703          	ld	a4,40(s1)
    80003124:	0184a783          	lw	a5,24(s1)
    80003128:	00f70733          	add	a4,a4,a5
    8000312c:	00074903          	lbu	s2,0(a4)
        first_idx_ = (first_idx_ + 1) % size_;
    80003130:	0017879b          	addiw	a5,a5,1
    80003134:	0204a703          	lw	a4,32(s1)
    80003138:	02e7e7bb          	remw	a5,a5,a4
    8000313c:	00f4ac23          	sw	a5,24(s1)
        mutex_->signal();
    80003140:	0104b503          	ld	a0,16(s1)
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	760080e7          	jalr	1888(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        space_->signal();
    8000314c:	0084b503          	ld	a0,8(s1)
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	754080e7          	jalr	1876(ra) # 800018a4 <_ZN10_semaphore6signalEv>
        char c = _console::_remove_from_out();
        *(uint8*)CONSOLE_TX_DATA = c;
    80003158:	00007797          	auipc	a5,0x7
    8000315c:	eb078793          	addi	a5,a5,-336 # 8000a008 <CONSOLE_TX_DATA>
    80003160:	0007b783          	ld	a5,0(a5)
    80003164:	01278023          	sb	s2,0(a5)
        c_stat = *(uint8*)CONSOLE_STATUS;
    80003168:	0009c783          	lbu	a5,0(s3)
    while ((c_stat & CONSOLE_TX_STATUS_BIT) && _console::_can_output()) {
    8000316c:	0207f793          	andi	a5,a5,32
    80003170:	02078863          	beqz	a5,800031a0 <_ZN8_console21handle_console_outputEv+0xf0>
        auto ret = buffer_out_->getCnt();
    80003174:	0000a797          	auipc	a5,0xa
    80003178:	0ac78793          	addi	a5,a5,172 # 8000d220 <_ZN8_console11buffer_out_E>
    8000317c:	0007b483          	ld	s1,0(a5)
        mutex_->wait();
    80003180:	0104b503          	ld	a0,16(s1)
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	674080e7          	jalr	1652(ra) # 800017f8 <_ZN10_semaphore4waitEv>
        if (last_idx_ >= first_idx_) {
    8000318c:	01c4a783          	lw	a5,28(s1)
    80003190:	0184a903          	lw	s2,24(s1)
    80003194:	f527c6e3          	blt	a5,s2,800030e0 <_ZN8_console21handle_console_outputEv+0x30>
            ret = last_idx_ - first_idx_;
    80003198:	4127893b          	subw	s2,a5,s2
    8000319c:	f51ff06f          	j	800030ec <_ZN8_console21handle_console_outputEv+0x3c>
    }
}
    800031a0:	02813083          	ld	ra,40(sp)
    800031a4:	02013403          	ld	s0,32(sp)
    800031a8:	01813483          	ld	s1,24(sp)
    800031ac:	01013903          	ld	s2,16(sp)
    800031b0:	00813983          	ld	s3,8(sp)
    800031b4:	03010113          	addi	sp,sp,48
    800031b8:	00008067          	ret

00000000800031bc <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    800031bc:	0000a797          	auipc	a5,0xa
    800031c0:	07478793          	addi	a5,a5,116 # 8000d230 <_ZN15MemoryAllocator9instance_E>
    800031c4:	0007b783          	ld	a5,0(a5)
    800031c8:	00078a63          	beqz	a5,800031dc <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    800031cc:	0000a797          	auipc	a5,0xa
    800031d0:	06478793          	addi	a5,a5,100 # 8000d230 <_ZN15MemoryAllocator9instance_E>
    800031d4:	0007b503          	ld	a0,0(a5)
    800031d8:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    800031dc:	fd010113          	addi	sp,sp,-48
    800031e0:	02113423          	sd	ra,40(sp)
    800031e4:	02813023          	sd	s0,32(sp)
    800031e8:	00913c23          	sd	s1,24(sp)
    800031ec:	01213823          	sd	s2,16(sp)
    800031f0:	01313423          	sd	s3,8(sp)
    800031f4:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    800031f8:	0000a997          	auipc	s3,0xa
    800031fc:	e5098993          	addi	s3,s3,-432 # 8000d048 <HEAP_START_ADDR>
    80003200:	0009b783          	ld	a5,0(s3)
    80003204:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80003208:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    8000320c:	0000a497          	auipc	s1,0xa
    80003210:	02448493          	addi	s1,s1,36 # 8000d230 <_ZN15MemoryAllocator9instance_E>
    80003214:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80003218:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    8000321c:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    80003220:	0004b783          	ld	a5,0(s1)
    80003224:	0007b783          	ld	a5,0(a5)
    80003228:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    8000322c:	0004b783          	ld	a5,0(s1)
    80003230:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    80003234:	0000a917          	auipc	s2,0xa
    80003238:	e0c90913          	addi	s2,s2,-500 # 8000d040 <HEAP_END_ADDR>
    8000323c:	00093783          	ld	a5,0(s2)
    80003240:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    80003244:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80003248:	00007517          	auipc	a0,0x7
    8000324c:	3d850513          	addi	a0,a0,984 # 8000a620 <_ZZ24debug_print_internal_intmE6digits+0x2e8>
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	2ec080e7          	jalr	748(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80003258:	00007517          	auipc	a0,0x7
    8000325c:	3f050513          	addi	a0,a0,1008 # 8000a648 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	2dc080e7          	jalr	732(ra) # 8000253c <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80003268:	04000513          	li	a0,64
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	418080e7          	jalr	1048(ra) # 80002684 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    80003274:	00007517          	auipc	a0,0x7
    80003278:	3ec50513          	addi	a0,a0,1004 # 8000a660 <_ZZ24debug_print_internal_intmE6digits+0x328>
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	2c0080e7          	jalr	704(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    80003284:	0009b503          	ld	a0,0(s3)
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	3fc080e7          	jalr	1020(ra) # 80002684 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    80003290:	00007517          	auipc	a0,0x7
    80003294:	3e850513          	addi	a0,a0,1000 # 8000a678 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	2a4080e7          	jalr	676(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    800032a0:	00093503          	ld	a0,0(s2)
    800032a4:	fffff097          	auipc	ra,0xfffff
    800032a8:	3e0080e7          	jalr	992(ra) # 80002684 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    800032ac:	00007517          	auipc	a0,0x7
    800032b0:	3e450513          	addi	a0,a0,996 # 8000a690 <_ZZ24debug_print_internal_intmE6digits+0x358>
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	288080e7          	jalr	648(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    800032bc:	0004b783          	ld	a5,0(s1)
    800032c0:	0007b503          	ld	a0,0(a5)
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	3c0080e7          	jalr	960(ra) # 80002684 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    800032cc:	00007517          	auipc	a0,0x7
    800032d0:	3e450513          	addi	a0,a0,996 # 8000a6b0 <_ZZ24debug_print_internal_intmE6digits+0x378>
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	268080e7          	jalr	616(ra) # 8000253c <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    800032dc:	01000513          	li	a0,16
    800032e0:	fffff097          	auipc	ra,0xfffff
    800032e4:	3a4080e7          	jalr	932(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    800032e8:	00007517          	auipc	a0,0x7
    800032ec:	15050513          	addi	a0,a0,336 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	24c080e7          	jalr	588(ra) # 8000253c <_Z11debug_printPKc>
}
    800032f8:	0000a797          	auipc	a5,0xa
    800032fc:	f3878793          	addi	a5,a5,-200 # 8000d230 <_ZN15MemoryAllocator9instance_E>
    80003300:	0007b503          	ld	a0,0(a5)
    80003304:	02813083          	ld	ra,40(sp)
    80003308:	02013403          	ld	s0,32(sp)
    8000330c:	01813483          	ld	s1,24(sp)
    80003310:	01013903          	ld	s2,16(sp)
    80003314:	00813983          	ld	s3,8(sp)
    80003318:	03010113          	addi	sp,sp,48
    8000331c:	00008067          	ret

0000000080003320 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00813423          	sd	s0,8(sp)
    80003328:	01010413          	addi	s0,sp,16
    // debug_print("Allocating memory of size: ");
    // debug_print(size);
    // debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    8000332c:	00053783          	ld	a5,0(a0)
    80003330:	04078e63          	beqz	a5,8000338c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    80003334:	04f58593          	addi	a1,a1,79
    80003338:	fc05f593          	andi	a1,a1,-64

    // debug_print("Aligned size: ");
    // debug_print(size);
    // debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    8000333c:	00000693          	li	a3,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80003340:	00078c63          	beqz	a5,80003358 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    80003344:	0087b703          	ld	a4,8(a5)
    80003348:	00b77863          	bgeu	a4,a1,80003358 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        prev_free_block = free_block;
    8000334c:	00078693          	mv	a3,a5
        free_block = free_block->next_;
    80003350:	0007b783          	ld	a5,0(a5)
    while (free_block && free_block->size_ < size) {
    80003354:	fedff06f          	j	80003340 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80003358:	02078a63          	beqz	a5,8000338c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    8000335c:	0087b703          	ld	a4,8(a5)
    80003360:	04e5f263          	bgeu	a1,a4,800033a4 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    80003364:	00b78633          	add	a2,a5,a1
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80003368:	02068a63          	beqz	a3,8000339c <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            prev_free_block->next_ = new_free_block;
    8000336c:	00c6b023          	sd	a2,0(a3)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80003370:	0007b703          	ld	a4,0(a5)
    80003374:	00e63023          	sd	a4,0(a2)
        new_free_block->size_ = free_block->size_ - size;
    80003378:	0087b703          	ld	a4,8(a5)
    8000337c:	40b70733          	sub	a4,a4,a1
    80003380:	00e63423          	sd	a4,8(a2)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    80003384:	00b7b423          	sd	a1,8(a5)
        // debug_print("Free block address: ");
        // debug_print((uint64)free_block);
        // debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80003388:	01078793          	addi	a5,a5,16
}
    8000338c:	00078513          	mv	a0,a5
    80003390:	00813403          	ld	s0,8(sp)
    80003394:	01010113          	addi	sp,sp,16
    80003398:	00008067          	ret
            free_block_ptr_ = new_free_block;
    8000339c:	00c53023          	sd	a2,0(a0)
    800033a0:	fd1ff06f          	j	80003370 <_ZN15MemoryAllocator9mem_allocEm+0x50>
        if (prev_free_block) {
    800033a4:	00068863          	beqz	a3,800033b4 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            prev_free_block->next_ = free_block->next_;
    800033a8:	0007b703          	ld	a4,0(a5)
    800033ac:	00e6b023          	sd	a4,0(a3)
    800033b0:	fd5ff06f          	j	80003384 <_ZN15MemoryAllocator9mem_allocEm+0x64>
            free_block_ptr_ = free_block->next_;
    800033b4:	0007b703          	ld	a4,0(a5)
    800033b8:	00e53023          	sd	a4,0(a0)
    800033bc:	fc9ff06f          	j	80003384 <_ZN15MemoryAllocator9mem_allocEm+0x64>

00000000800033c0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    800033cc:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    800033d0:	00000513          	li	a0,0
    while (free_block_iter) {
    800033d4:	00078a63          	beqz	a5,800033e8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    800033d8:	0087b703          	ld	a4,8(a5)
    800033dc:	fee57ce3          	bgeu	a0,a4,800033d4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    800033e0:	00070513          	mv	a0,a4
    800033e4:	ff1ff06f          	j	800033d4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    800033e8:	00813403          	ld	s0,8(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    80003400:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    80003404:	00000513          	li	a0,0
    while (free_block_iter) {
    80003408:	00078a63          	beqz	a5,8000341c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    8000340c:	0087b703          	ld	a4,8(a5)
    80003410:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    80003414:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    80003418:	ff1ff06f          	j	80003408 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    8000341c:	00813403          	ld	s0,8(sp)
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret

0000000080003428 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    80003428:	06058a63          	beqz	a1,8000349c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    8000342c:	06060863          	beqz	a2,8000349c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00813823          	sd	s0,16(sp)
    8000343c:	00913423          	sd	s1,8(sp)
    80003440:	01213023          	sd	s2,0(sp)
    80003444:	02010413          	addi	s0,sp,32
    80003448:	00060913          	mv	s2,a2
    8000344c:	00058493          	mv	s1,a1
        // debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    80003450:	00007597          	auipc	a1,0x7
    80003454:	28058593          	addi	a1,a1,640 # 8000a6d0 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80003458:	00c4b533          	sltu	a0,s1,a2
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	108080e7          	jalr	264(ra) # 80002564 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    80003464:	0084b783          	ld	a5,8(s1)
    80003468:	00f48733          	add	a4,s1,a5
    8000346c:	00e91c63          	bne	s2,a4,80003484 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        // debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80003470:	00893703          	ld	a4,8(s2)
    80003474:	00e787b3          	add	a5,a5,a4
    80003478:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    8000347c:	00093783          	ld	a5,0(s2)
    80003480:	00f4b023          	sd	a5,0(s1)
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00813483          	ld	s1,8(sp)
    80003490:	00013903          	ld	s2,0(sp)
    80003494:	02010113          	addi	sp,sp,32
    80003498:	00008067          	ret
    8000349c:	00008067          	ret

00000000800034a0 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    800034a0:	fd010113          	addi	sp,sp,-48
    800034a4:	02113423          	sd	ra,40(sp)
    800034a8:	02813023          	sd	s0,32(sp)
    800034ac:	00913c23          	sd	s1,24(sp)
    800034b0:	01213823          	sd	s2,16(sp)
    800034b4:	01313423          	sd	s3,8(sp)
    800034b8:	03010413          	addi	s0,sp,48
    if (!free_block_addr) {
    800034bc:	04058263          	beqz	a1,80003500 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    800034c0:	00050993          	mv	s3,a0
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    800034c4:	ff058913          	addi	s2,a1,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    800034c8:	00090793          	mv	a5,s2
    800034cc:	03f97713          	andi	a4,s2,63
    800034d0:	04071463          	bnez	a4,80003518 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    800034d4:	0000a717          	auipc	a4,0xa
    800034d8:	b7470713          	addi	a4,a4,-1164 # 8000d048 <HEAP_START_ADDR>
    800034dc:	00073703          	ld	a4,0(a4)
    800034e0:	04e96863          	bltu	s2,a4,80003530 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    800034e4:	0000a717          	auipc	a4,0xa
    800034e8:	b5c70713          	addi	a4,a4,-1188 # 8000d040 <HEAP_END_ADDR>
    800034ec:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    800034f0:	04e97063          	bgeu	s2,a4,80003530 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    800034f4:	00053603          	ld	a2,0(a0)
    800034f8:	00000493          	li	s1,0
    800034fc:	0540006f          	j	80003550 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        debug_print("Free block address is null.\n");
    80003500:	00007517          	auipc	a0,0x7
    80003504:	21050513          	addi	a0,a0,528 # 8000a710 <_ZZ24debug_print_internal_intmE6digits+0x3d8>
    80003508:	fffff097          	auipc	ra,0xfffff
    8000350c:	034080e7          	jalr	52(ra) # 8000253c <_Z11debug_printPKc>
        return -1;
    80003510:	fff00513          	li	a0,-1
    80003514:	07c0006f          	j	80003590 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    80003518:	00007517          	auipc	a0,0x7
    8000351c:	21850513          	addi	a0,a0,536 # 8000a730 <_ZZ24debug_print_internal_intmE6digits+0x3f8>
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	01c080e7          	jalr	28(ra) # 8000253c <_Z11debug_printPKc>
        return -2;
    80003528:	ffe00513          	li	a0,-2
    8000352c:	0640006f          	j	80003590 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not in the heap.\n");
    80003530:	00007517          	auipc	a0,0x7
    80003534:	23850513          	addi	a0,a0,568 # 8000a768 <_ZZ24debug_print_internal_intmE6digits+0x430>
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	004080e7          	jalr	4(ra) # 8000253c <_Z11debug_printPKc>
        return -3;
    80003540:	ffd00513          	li	a0,-3
    80003544:	04c0006f          	j	80003590 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        prev_free_block = next_free_block;
    80003548:	00060493          	mv	s1,a2
        next_free_block = next_free_block->next_;
    8000354c:	00063603          	ld	a2,0(a2)
    while (next_free_block &&
    80003550:	00060663          	beqz	a2,8000355c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80003554:	fec7fae3          	bgeu	a5,a2,80003548 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
          !(((uint64)next_free_block > (uint64)block_info) &&
    80003558:	fef4f8e3          	bgeu	s1,a5,80003548 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if (!prev_free_block) {
    8000355c:	04048863          	beqz	s1,800035ac <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        prev_free_block->next_ = block_info;
    80003560:	0124b023          	sd	s2,0(s1)
    block_info->next_ = next_free_block;
    80003564:	fec5b823          	sd	a2,-16(a1)
    maybe_consolidate(block_info, next_free_block);
    80003568:	00090593          	mv	a1,s2
    8000356c:	00098513          	mv	a0,s3
    80003570:	00000097          	auipc	ra,0x0
    80003574:	eb8080e7          	jalr	-328(ra) # 80003428 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80003578:	00090613          	mv	a2,s2
    8000357c:	00048593          	mv	a1,s1
    80003580:	00098513          	mv	a0,s3
    80003584:	00000097          	auipc	ra,0x0
    80003588:	ea4080e7          	jalr	-348(ra) # 80003428 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    8000358c:	00000513          	li	a0,0
}
    80003590:	02813083          	ld	ra,40(sp)
    80003594:	02013403          	ld	s0,32(sp)
    80003598:	01813483          	ld	s1,24(sp)
    8000359c:	01013903          	ld	s2,16(sp)
    800035a0:	00813983          	ld	s3,8(sp)
    800035a4:	03010113          	addi	sp,sp,48
    800035a8:	00008067          	ret
        free_block_ptr_ = block_info;
    800035ac:	0129b023          	sd	s2,0(s3)
    800035b0:	fb5ff06f          	j	80003564 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>

00000000800035b4 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800035b4:	00100793          	li	a5,1
    800035b8:	06a7f863          	bgeu	a5,a0,80003628 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800035bc:	fe010113          	addi	sp,sp,-32
    800035c0:	00113c23          	sd	ra,24(sp)
    800035c4:	00813823          	sd	s0,16(sp)
    800035c8:	00913423          	sd	s1,8(sp)
    800035cc:	01213023          	sd	s2,0(sp)
    800035d0:	02010413          	addi	s0,sp,32
    800035d4:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    800035d8:	00a00793          	li	a5,10
    800035dc:	02f577b3          	remu	a5,a0,a5
    800035e0:	02078e63          	beqz	a5,8000361c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800035e4:	fff48513          	addi	a0,s1,-1
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	fcc080e7          	jalr	-52(ra) # 800035b4 <_ZL9fibonaccim>
    800035f0:	00050913          	mv	s2,a0
    800035f4:	ffe48513          	addi	a0,s1,-2
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	fbc080e7          	jalr	-68(ra) # 800035b4 <_ZL9fibonaccim>
    80003600:	00a90533          	add	a0,s2,a0
}
    80003604:	01813083          	ld	ra,24(sp)
    80003608:	01013403          	ld	s0,16(sp)
    8000360c:	00813483          	ld	s1,8(sp)
    80003610:	00013903          	ld	s2,0(sp)
    80003614:	02010113          	addi	sp,sp,32
    80003618:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	5d8080e7          	jalr	1496(ra) # 80001bf4 <_Z15thread_dispatchv>
    80003624:	fc1ff06f          	j	800035e4 <_ZL9fibonaccim+0x30>
}
    80003628:	00008067          	ret

000000008000362c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00113c23          	sd	ra,24(sp)
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	01213023          	sd	s2,0(sp)
    80003640:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003644:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80003648:	00c00793          	li	a5,12
    8000364c:	0497e263          	bltu	a5,s1,80003690 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80003650:	00007517          	auipc	a0,0x7
    80003654:	14050513          	addi	a0,a0,320 # 8000a790 <_ZZ24debug_print_internal_intmE6digits+0x458>
    80003658:	00003097          	auipc	ra,0x3
    8000365c:	6fc080e7          	jalr	1788(ra) # 80006d54 <_Z11printStringPKc>
    80003660:	00000613          	li	a2,0
    80003664:	00a00593          	li	a1,10
    80003668:	00048513          	mv	a0,s1
    8000366c:	00004097          	auipc	ra,0x4
    80003670:	894080e7          	jalr	-1900(ra) # 80006f00 <_Z8printIntiii>
    80003674:	00007517          	auipc	a0,0x7
    80003678:	dc450513          	addi	a0,a0,-572 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    8000367c:	00003097          	auipc	ra,0x3
    80003680:	6d8080e7          	jalr	1752(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003684:	0014849b          	addiw	s1,s1,1
    80003688:	0ff4f493          	andi	s1,s1,255
    8000368c:	fbdff06f          	j	80003648 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80003690:	00007517          	auipc	a0,0x7
    80003694:	10850513          	addi	a0,a0,264 # 8000a798 <_ZZ24debug_print_internal_intmE6digits+0x460>
    80003698:	00003097          	auipc	ra,0x3
    8000369c:	6bc080e7          	jalr	1724(ra) # 80006d54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036a0:	00500313          	li	t1,5
    thread_dispatch();
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	550080e7          	jalr	1360(ra) # 80001bf4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036ac:	01000513          	li	a0,16
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	f04080e7          	jalr	-252(ra) # 800035b4 <_ZL9fibonaccim>
    800036b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036bc:	00007517          	auipc	a0,0x7
    800036c0:	0ec50513          	addi	a0,a0,236 # 8000a7a8 <_ZZ24debug_print_internal_intmE6digits+0x470>
    800036c4:	00003097          	auipc	ra,0x3
    800036c8:	690080e7          	jalr	1680(ra) # 80006d54 <_Z11printStringPKc>
    800036cc:	00000613          	li	a2,0
    800036d0:	00a00593          	li	a1,10
    800036d4:	0009051b          	sext.w	a0,s2
    800036d8:	00004097          	auipc	ra,0x4
    800036dc:	828080e7          	jalr	-2008(ra) # 80006f00 <_Z8printIntiii>
    800036e0:	00007517          	auipc	a0,0x7
    800036e4:	d5850513          	addi	a0,a0,-680 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800036e8:	00003097          	auipc	ra,0x3
    800036ec:	66c080e7          	jalr	1644(ra) # 80006d54 <_Z11printStringPKc>

    for (; i < 16; i++) {
    800036f0:	00f00793          	li	a5,15
    800036f4:	0497e263          	bltu	a5,s1,80003738 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    800036f8:	00007517          	auipc	a0,0x7
    800036fc:	09850513          	addi	a0,a0,152 # 8000a790 <_ZZ24debug_print_internal_intmE6digits+0x458>
    80003700:	00003097          	auipc	ra,0x3
    80003704:	654080e7          	jalr	1620(ra) # 80006d54 <_Z11printStringPKc>
    80003708:	00000613          	li	a2,0
    8000370c:	00a00593          	li	a1,10
    80003710:	00048513          	mv	a0,s1
    80003714:	00003097          	auipc	ra,0x3
    80003718:	7ec080e7          	jalr	2028(ra) # 80006f00 <_Z8printIntiii>
    8000371c:	00007517          	auipc	a0,0x7
    80003720:	d1c50513          	addi	a0,a0,-740 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80003724:	00003097          	auipc	ra,0x3
    80003728:	630080e7          	jalr	1584(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000372c:	0014849b          	addiw	s1,s1,1
    80003730:	0ff4f493          	andi	s1,s1,255
    80003734:	fbdff06f          	j	800036f0 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80003738:	00007517          	auipc	a0,0x7
    8000373c:	08050513          	addi	a0,a0,128 # 8000a7b8 <_ZZ24debug_print_internal_intmE6digits+0x480>
    80003740:	00003097          	auipc	ra,0x3
    80003744:	614080e7          	jalr	1556(ra) # 80006d54 <_Z11printStringPKc>
    finishedD = true;
    80003748:	00100793          	li	a5,1
    8000374c:	0000a717          	auipc	a4,0xa
    80003750:	aef70623          	sb	a5,-1300(a4) # 8000d238 <_ZL9finishedD>
    thread_dispatch();
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	4a0080e7          	jalr	1184(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	00813483          	ld	s1,8(sp)
    80003768:	00013903          	ld	s2,0(sp)
    8000376c:	02010113          	addi	sp,sp,32
    80003770:	00008067          	ret

0000000080003774 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003774:	fe010113          	addi	sp,sp,-32
    80003778:	00113c23          	sd	ra,24(sp)
    8000377c:	00813823          	sd	s0,16(sp)
    80003780:	00913423          	sd	s1,8(sp)
    80003784:	01213023          	sd	s2,0(sp)
    80003788:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000378c:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80003790:	00200793          	li	a5,2
    80003794:	0497e263          	bltu	a5,s1,800037d8 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80003798:	00007517          	auipc	a0,0x7
    8000379c:	03050513          	addi	a0,a0,48 # 8000a7c8 <_ZZ24debug_print_internal_intmE6digits+0x490>
    800037a0:	00003097          	auipc	ra,0x3
    800037a4:	5b4080e7          	jalr	1460(ra) # 80006d54 <_Z11printStringPKc>
    800037a8:	00000613          	li	a2,0
    800037ac:	00a00593          	li	a1,10
    800037b0:	00048513          	mv	a0,s1
    800037b4:	00003097          	auipc	ra,0x3
    800037b8:	74c080e7          	jalr	1868(ra) # 80006f00 <_Z8printIntiii>
    800037bc:	00007517          	auipc	a0,0x7
    800037c0:	c7c50513          	addi	a0,a0,-900 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800037c4:	00003097          	auipc	ra,0x3
    800037c8:	590080e7          	jalr	1424(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800037cc:	0014849b          	addiw	s1,s1,1
    800037d0:	0ff4f493          	andi	s1,s1,255
    800037d4:	fbdff06f          	j	80003790 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    800037d8:	00007517          	auipc	a0,0x7
    800037dc:	ff850513          	addi	a0,a0,-8 # 8000a7d0 <_ZZ24debug_print_internal_intmE6digits+0x498>
    800037e0:	00003097          	auipc	ra,0x3
    800037e4:	574080e7          	jalr	1396(ra) # 80006d54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800037e8:	00700313          	li	t1,7
    thread_dispatch();
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	408080e7          	jalr	1032(ra) # 80001bf4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800037f4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800037f8:	00007517          	auipc	a0,0x7
    800037fc:	fe850513          	addi	a0,a0,-24 # 8000a7e0 <_ZZ24debug_print_internal_intmE6digits+0x4a8>
    80003800:	00003097          	auipc	ra,0x3
    80003804:	554080e7          	jalr	1364(ra) # 80006d54 <_Z11printStringPKc>
    80003808:	00000613          	li	a2,0
    8000380c:	00a00593          	li	a1,10
    80003810:	0009051b          	sext.w	a0,s2
    80003814:	00003097          	auipc	ra,0x3
    80003818:	6ec080e7          	jalr	1772(ra) # 80006f00 <_Z8printIntiii>
    8000381c:	00007517          	auipc	a0,0x7
    80003820:	c1c50513          	addi	a0,a0,-996 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80003824:	00003097          	auipc	ra,0x3
    80003828:	530080e7          	jalr	1328(ra) # 80006d54 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000382c:	00c00513          	li	a0,12
    80003830:	00000097          	auipc	ra,0x0
    80003834:	d84080e7          	jalr	-636(ra) # 800035b4 <_ZL9fibonaccim>
    80003838:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000383c:	00007517          	auipc	a0,0x7
    80003840:	fac50513          	addi	a0,a0,-84 # 8000a7e8 <_ZZ24debug_print_internal_intmE6digits+0x4b0>
    80003844:	00003097          	auipc	ra,0x3
    80003848:	510080e7          	jalr	1296(ra) # 80006d54 <_Z11printStringPKc>
    8000384c:	00000613          	li	a2,0
    80003850:	00a00593          	li	a1,10
    80003854:	0009051b          	sext.w	a0,s2
    80003858:	00003097          	auipc	ra,0x3
    8000385c:	6a8080e7          	jalr	1704(ra) # 80006f00 <_Z8printIntiii>
    80003860:	00007517          	auipc	a0,0x7
    80003864:	bd850513          	addi	a0,a0,-1064 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80003868:	00003097          	auipc	ra,0x3
    8000386c:	4ec080e7          	jalr	1260(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003870:	00500793          	li	a5,5
    80003874:	0497e263          	bltu	a5,s1,800038b8 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80003878:	00007517          	auipc	a0,0x7
    8000387c:	f5050513          	addi	a0,a0,-176 # 8000a7c8 <_ZZ24debug_print_internal_intmE6digits+0x490>
    80003880:	00003097          	auipc	ra,0x3
    80003884:	4d4080e7          	jalr	1236(ra) # 80006d54 <_Z11printStringPKc>
    80003888:	00000613          	li	a2,0
    8000388c:	00a00593          	li	a1,10
    80003890:	00048513          	mv	a0,s1
    80003894:	00003097          	auipc	ra,0x3
    80003898:	66c080e7          	jalr	1644(ra) # 80006f00 <_Z8printIntiii>
    8000389c:	00007517          	auipc	a0,0x7
    800038a0:	b9c50513          	addi	a0,a0,-1124 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800038a4:	00003097          	auipc	ra,0x3
    800038a8:	4b0080e7          	jalr	1200(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800038ac:	0014849b          	addiw	s1,s1,1
    800038b0:	0ff4f493          	andi	s1,s1,255
    800038b4:	fbdff06f          	j	80003870 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    800038b8:	00007517          	auipc	a0,0x7
    800038bc:	f4050513          	addi	a0,a0,-192 # 8000a7f8 <_ZZ24debug_print_internal_intmE6digits+0x4c0>
    800038c0:	00003097          	auipc	ra,0x3
    800038c4:	494080e7          	jalr	1172(ra) # 80006d54 <_Z11printStringPKc>
    finishedC = true;
    800038c8:	00100793          	li	a5,1
    800038cc:	0000a717          	auipc	a4,0xa
    800038d0:	96f706a3          	sb	a5,-1683(a4) # 8000d239 <_ZL9finishedC>
    thread_dispatch();
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	320080e7          	jalr	800(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	00813483          	ld	s1,8(sp)
    800038e8:	00013903          	ld	s2,0(sp)
    800038ec:	02010113          	addi	sp,sp,32
    800038f0:	00008067          	ret

00000000800038f4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	01213023          	sd	s2,0(sp)
    80003908:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000390c:	00000913          	li	s2,0
    80003910:	0400006f          	j	80003950 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	2e0080e7          	jalr	736(ra) # 80001bf4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000391c:	00148493          	addi	s1,s1,1
    80003920:	000027b7          	lui	a5,0x2
    80003924:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003928:	0097ee63          	bltu	a5,s1,80003944 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000392c:	00000713          	li	a4,0
    80003930:	000077b7          	lui	a5,0x7
    80003934:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003938:	fce7eee3          	bltu	a5,a4,80003914 <_ZL11workerBodyBPv+0x20>
    8000393c:	00170713          	addi	a4,a4,1
    80003940:	ff1ff06f          	j	80003930 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003944:	00a00793          	li	a5,10
    80003948:	04f90663          	beq	s2,a5,80003994 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000394c:	00190913          	addi	s2,s2,1
    80003950:	00f00793          	li	a5,15
    80003954:	0527e463          	bltu	a5,s2,8000399c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003958:	00007517          	auipc	a0,0x7
    8000395c:	a1050513          	addi	a0,a0,-1520 # 8000a368 <_ZZ24debug_print_internal_intmE6digits+0x30>
    80003960:	00003097          	auipc	ra,0x3
    80003964:	3f4080e7          	jalr	1012(ra) # 80006d54 <_Z11printStringPKc>
    80003968:	00000613          	li	a2,0
    8000396c:	00a00593          	li	a1,10
    80003970:	0009051b          	sext.w	a0,s2
    80003974:	00003097          	auipc	ra,0x3
    80003978:	58c080e7          	jalr	1420(ra) # 80006f00 <_Z8printIntiii>
    8000397c:	00007517          	auipc	a0,0x7
    80003980:	abc50513          	addi	a0,a0,-1348 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80003984:	00003097          	auipc	ra,0x3
    80003988:	3d0080e7          	jalr	976(ra) # 80006d54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000398c:	00000493          	li	s1,0
    80003990:	f91ff06f          	j	80003920 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003994:	14102ff3          	csrr	t6,sepc
    80003998:	fb5ff06f          	j	8000394c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000399c:	00007517          	auipc	a0,0x7
    800039a0:	e6c50513          	addi	a0,a0,-404 # 8000a808 <_ZZ24debug_print_internal_intmE6digits+0x4d0>
    800039a4:	00003097          	auipc	ra,0x3
    800039a8:	3b0080e7          	jalr	944(ra) # 80006d54 <_Z11printStringPKc>
    finishedB = true;
    800039ac:	00100793          	li	a5,1
    800039b0:	0000a717          	auipc	a4,0xa
    800039b4:	88f70523          	sb	a5,-1910(a4) # 8000d23a <_ZL9finishedB>
    thread_dispatch();
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	23c080e7          	jalr	572(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	00813483          	ld	s1,8(sp)
    800039cc:	00013903          	ld	s2,0(sp)
    800039d0:	02010113          	addi	sp,sp,32
    800039d4:	00008067          	ret

00000000800039d8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800039d8:	fe010113          	addi	sp,sp,-32
    800039dc:	00113c23          	sd	ra,24(sp)
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00913423          	sd	s1,8(sp)
    800039e8:	01213023          	sd	s2,0(sp)
    800039ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800039f0:	00000913          	li	s2,0
    800039f4:	0380006f          	j	80003a2c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	1fc080e7          	jalr	508(ra) # 80001bf4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a00:	00148493          	addi	s1,s1,1
    80003a04:	000027b7          	lui	a5,0x2
    80003a08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a0c:	0097ee63          	bltu	a5,s1,80003a28 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a10:	00000713          	li	a4,0
    80003a14:	000077b7          	lui	a5,0x7
    80003a18:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a1c:	fce7eee3          	bltu	a5,a4,800039f8 <_ZL11workerBodyAPv+0x20>
    80003a20:	00170713          	addi	a4,a4,1
    80003a24:	ff1ff06f          	j	80003a14 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003a28:	00190913          	addi	s2,s2,1
    80003a2c:	00900793          	li	a5,9
    80003a30:	0527e063          	bltu	a5,s2,80003a70 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003a34:	00007517          	auipc	a0,0x7
    80003a38:	92c50513          	addi	a0,a0,-1748 # 8000a360 <_ZZ24debug_print_internal_intmE6digits+0x28>
    80003a3c:	00003097          	auipc	ra,0x3
    80003a40:	318080e7          	jalr	792(ra) # 80006d54 <_Z11printStringPKc>
    80003a44:	00000613          	li	a2,0
    80003a48:	00a00593          	li	a1,10
    80003a4c:	0009051b          	sext.w	a0,s2
    80003a50:	00003097          	auipc	ra,0x3
    80003a54:	4b0080e7          	jalr	1200(ra) # 80006f00 <_Z8printIntiii>
    80003a58:	00007517          	auipc	a0,0x7
    80003a5c:	9e050513          	addi	a0,a0,-1568 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80003a60:	00003097          	auipc	ra,0x3
    80003a64:	2f4080e7          	jalr	756(ra) # 80006d54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a68:	00000493          	li	s1,0
    80003a6c:	f99ff06f          	j	80003a04 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003a70:	00007517          	auipc	a0,0x7
    80003a74:	d8850513          	addi	a0,a0,-632 # 8000a7f8 <_ZZ24debug_print_internal_intmE6digits+0x4c0>
    80003a78:	00003097          	auipc	ra,0x3
    80003a7c:	2dc080e7          	jalr	732(ra) # 80006d54 <_Z11printStringPKc>
    finishedA = true;
    80003a80:	00100793          	li	a5,1
    80003a84:	00009717          	auipc	a4,0x9
    80003a88:	7af70ba3          	sb	a5,1975(a4) # 8000d23b <_ZL9finishedA>
}
    80003a8c:	01813083          	ld	ra,24(sp)
    80003a90:	01013403          	ld	s0,16(sp)
    80003a94:	00813483          	ld	s1,8(sp)
    80003a98:	00013903          	ld	s2,0(sp)
    80003a9c:	02010113          	addi	sp,sp,32
    80003aa0:	00008067          	ret

0000000080003aa4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003aa4:	fd010113          	addi	sp,sp,-48
    80003aa8:	02113423          	sd	ra,40(sp)
    80003aac:	02813023          	sd	s0,32(sp)
    80003ab0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003ab4:	00000613          	li	a2,0
    80003ab8:	00000597          	auipc	a1,0x0
    80003abc:	f2058593          	addi	a1,a1,-224 # 800039d8 <_ZL11workerBodyAPv>
    80003ac0:	fd040513          	addi	a0,s0,-48
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	080080e7          	jalr	128(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003acc:	00007517          	auipc	a0,0x7
    80003ad0:	d4c50513          	addi	a0,a0,-692 # 8000a818 <_ZZ24debug_print_internal_intmE6digits+0x4e0>
    80003ad4:	00003097          	auipc	ra,0x3
    80003ad8:	280080e7          	jalr	640(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003adc:	00000613          	li	a2,0
    80003ae0:	00000597          	auipc	a1,0x0
    80003ae4:	e1458593          	addi	a1,a1,-492 # 800038f4 <_ZL11workerBodyBPv>
    80003ae8:	fd840513          	addi	a0,s0,-40
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	058080e7          	jalr	88(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003af4:	00007517          	auipc	a0,0x7
    80003af8:	d3c50513          	addi	a0,a0,-708 # 8000a830 <_ZZ24debug_print_internal_intmE6digits+0x4f8>
    80003afc:	00003097          	auipc	ra,0x3
    80003b00:	258080e7          	jalr	600(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003b04:	00000613          	li	a2,0
    80003b08:	00000597          	auipc	a1,0x0
    80003b0c:	c6c58593          	addi	a1,a1,-916 # 80003774 <_ZL11workerBodyCPv>
    80003b10:	fe040513          	addi	a0,s0,-32
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	030080e7          	jalr	48(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003b1c:	00007517          	auipc	a0,0x7
    80003b20:	d2c50513          	addi	a0,a0,-724 # 8000a848 <_ZZ24debug_print_internal_intmE6digits+0x510>
    80003b24:	00003097          	auipc	ra,0x3
    80003b28:	230080e7          	jalr	560(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003b2c:	00000613          	li	a2,0
    80003b30:	00000597          	auipc	a1,0x0
    80003b34:	afc58593          	addi	a1,a1,-1284 # 8000362c <_ZL11workerBodyDPv>
    80003b38:	fe840513          	addi	a0,s0,-24
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	008080e7          	jalr	8(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003b44:	00007517          	auipc	a0,0x7
    80003b48:	d1c50513          	addi	a0,a0,-740 # 8000a860 <_ZZ24debug_print_internal_intmE6digits+0x528>
    80003b4c:	00003097          	auipc	ra,0x3
    80003b50:	208080e7          	jalr	520(ra) # 80006d54 <_Z11printStringPKc>
    80003b54:	00c0006f          	j	80003b60 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	09c080e7          	jalr	156(ra) # 80001bf4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003b60:	00009797          	auipc	a5,0x9
    80003b64:	6db78793          	addi	a5,a5,1755 # 8000d23b <_ZL9finishedA>
    80003b68:	0007c783          	lbu	a5,0(a5)
    80003b6c:	0ff7f793          	andi	a5,a5,255
    80003b70:	fe0784e3          	beqz	a5,80003b58 <_Z16System_Mode_testv+0xb4>
    80003b74:	00009797          	auipc	a5,0x9
    80003b78:	6c678793          	addi	a5,a5,1734 # 8000d23a <_ZL9finishedB>
    80003b7c:	0007c783          	lbu	a5,0(a5)
    80003b80:	0ff7f793          	andi	a5,a5,255
    80003b84:	fc078ae3          	beqz	a5,80003b58 <_Z16System_Mode_testv+0xb4>
    80003b88:	00009797          	auipc	a5,0x9
    80003b8c:	6b178793          	addi	a5,a5,1713 # 8000d239 <_ZL9finishedC>
    80003b90:	0007c783          	lbu	a5,0(a5)
    80003b94:	0ff7f793          	andi	a5,a5,255
    80003b98:	fc0780e3          	beqz	a5,80003b58 <_Z16System_Mode_testv+0xb4>
    80003b9c:	00009797          	auipc	a5,0x9
    80003ba0:	69c78793          	addi	a5,a5,1692 # 8000d238 <_ZL9finishedD>
    80003ba4:	0007c783          	lbu	a5,0(a5)
    80003ba8:	0ff7f793          	andi	a5,a5,255
    80003bac:	fa0786e3          	beqz	a5,80003b58 <_Z16System_Mode_testv+0xb4>
    }

}
    80003bb0:	02813083          	ld	ra,40(sp)
    80003bb4:	02013403          	ld	s0,32(sp)
    80003bb8:	03010113          	addi	sp,sp,48
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003bc0:	fe010113          	addi	sp,sp,-32
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00813823          	sd	s0,16(sp)
    80003bcc:	00913423          	sd	s1,8(sp)
    80003bd0:	01213023          	sd	s2,0(sp)
    80003bd4:	02010413          	addi	s0,sp,32
    80003bd8:	00050493          	mv	s1,a0
    80003bdc:	00058913          	mv	s2,a1
    80003be0:	0015879b          	addiw	a5,a1,1
    80003be4:	0007851b          	sext.w	a0,a5
    80003be8:	00f4a023          	sw	a5,0(s1)
    80003bec:	0004a823          	sw	zero,16(s1)
    80003bf0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003bf4:	00251513          	slli	a0,a0,0x2
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	df8080e7          	jalr	-520(ra) # 800019f0 <_Z9mem_allocm>
    80003c00:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003c04:	00000593          	li	a1,0
    80003c08:	02048513          	addi	a0,s1,32
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	034080e7          	jalr	52(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003c14:	00090593          	mv	a1,s2
    80003c18:	01848513          	addi	a0,s1,24
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	024080e7          	jalr	36(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    80003c24:	00100593          	li	a1,1
    80003c28:	02848513          	addi	a0,s1,40
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	014080e7          	jalr	20(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    80003c34:	00100593          	li	a1,1
    80003c38:	03048513          	addi	a0,s1,48
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	004080e7          	jalr	4(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
}
    80003c44:	01813083          	ld	ra,24(sp)
    80003c48:	01013403          	ld	s0,16(sp)
    80003c4c:	00813483          	ld	s1,8(sp)
    80003c50:	00013903          	ld	s2,0(sp)
    80003c54:	02010113          	addi	sp,sp,32
    80003c58:	00008067          	ret

0000000080003c5c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003c5c:	fe010113          	addi	sp,sp,-32
    80003c60:	00113c23          	sd	ra,24(sp)
    80003c64:	00813823          	sd	s0,16(sp)
    80003c68:	00913423          	sd	s1,8(sp)
    80003c6c:	01213023          	sd	s2,0(sp)
    80003c70:	02010413          	addi	s0,sp,32
    80003c74:	00050493          	mv	s1,a0
    80003c78:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003c7c:	01853503          	ld	a0,24(a0)
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	104080e7          	jalr	260(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80003c88:	0304b503          	ld	a0,48(s1)
    80003c8c:	ffffe097          	auipc	ra,0xffffe
    80003c90:	0f8080e7          	jalr	248(ra) # 80001d84 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80003c94:	0084b783          	ld	a5,8(s1)
    80003c98:	0144a703          	lw	a4,20(s1)
    80003c9c:	00271713          	slli	a4,a4,0x2
    80003ca0:	00e787b3          	add	a5,a5,a4
    80003ca4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003ca8:	0144a783          	lw	a5,20(s1)
    80003cac:	0017879b          	addiw	a5,a5,1
    80003cb0:	0004a703          	lw	a4,0(s1)
    80003cb4:	02e7e7bb          	remw	a5,a5,a4
    80003cb8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003cbc:	0304b503          	ld	a0,48(s1)
    80003cc0:	ffffe097          	auipc	ra,0xffffe
    80003cc4:	114080e7          	jalr	276(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80003cc8:	0204b503          	ld	a0,32(s1)
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	108080e7          	jalr	264(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

}
    80003cd4:	01813083          	ld	ra,24(sp)
    80003cd8:	01013403          	ld	s0,16(sp)
    80003cdc:	00813483          	ld	s1,8(sp)
    80003ce0:	00013903          	ld	s2,0(sp)
    80003ce4:	02010113          	addi	sp,sp,32
    80003ce8:	00008067          	ret

0000000080003cec <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00113c23          	sd	ra,24(sp)
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	01213023          	sd	s2,0(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003d08:	02053503          	ld	a0,32(a0)
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	078080e7          	jalr	120(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    80003d14:	0284b503          	ld	a0,40(s1)
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	06c080e7          	jalr	108(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80003d20:	0084b703          	ld	a4,8(s1)
    80003d24:	0104a783          	lw	a5,16(s1)
    80003d28:	00279693          	slli	a3,a5,0x2
    80003d2c:	00d70733          	add	a4,a4,a3
    80003d30:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003d34:	0017879b          	addiw	a5,a5,1
    80003d38:	0004a703          	lw	a4,0(s1)
    80003d3c:	02e7e7bb          	remw	a5,a5,a4
    80003d40:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003d44:	0284b503          	ld	a0,40(s1)
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	08c080e7          	jalr	140(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    80003d50:	0184b503          	ld	a0,24(s1)
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	080080e7          	jalr	128(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80003d5c:	00090513          	mv	a0,s2
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	00813483          	ld	s1,8(sp)
    80003d6c:	00013903          	ld	s2,0(sp)
    80003d70:	02010113          	addi	sp,sp,32
    80003d74:	00008067          	ret

0000000080003d78 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003d78:	fe010113          	addi	sp,sp,-32
    80003d7c:	00113c23          	sd	ra,24(sp)
    80003d80:	00813823          	sd	s0,16(sp)
    80003d84:	00913423          	sd	s1,8(sp)
    80003d88:	01213023          	sd	s2,0(sp)
    80003d8c:	02010413          	addi	s0,sp,32
    80003d90:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003d94:	02853503          	ld	a0,40(a0)
    80003d98:	ffffe097          	auipc	ra,0xffffe
    80003d9c:	fec080e7          	jalr	-20(ra) # 80001d84 <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80003da0:	0304b503          	ld	a0,48(s1)
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	fe0080e7          	jalr	-32(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80003dac:	0144a783          	lw	a5,20(s1)
    80003db0:	0104a903          	lw	s2,16(s1)
    80003db4:	0327ce63          	blt	a5,s2,80003df0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003db8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003dbc:	0304b503          	ld	a0,48(s1)
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	014080e7          	jalr	20(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    80003dc8:	0284b503          	ld	a0,40(s1)
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	008080e7          	jalr	8(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80003dd4:	00090513          	mv	a0,s2
    80003dd8:	01813083          	ld	ra,24(sp)
    80003ddc:	01013403          	ld	s0,16(sp)
    80003de0:	00813483          	ld	s1,8(sp)
    80003de4:	00013903          	ld	s2,0(sp)
    80003de8:	02010113          	addi	sp,sp,32
    80003dec:	00008067          	ret
        ret = cap - head + tail;
    80003df0:	0004a703          	lw	a4,0(s1)
    80003df4:	4127093b          	subw	s2,a4,s2
    80003df8:	00f9093b          	addw	s2,s2,a5
    80003dfc:	fc1ff06f          	j	80003dbc <_ZN6Buffer6getCntEv+0x44>

0000000080003e00 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003e00:	fe010113          	addi	sp,sp,-32
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	00813823          	sd	s0,16(sp)
    80003e0c:	00913423          	sd	s1,8(sp)
    80003e10:	02010413          	addi	s0,sp,32
    80003e14:	00050493          	mv	s1,a0
    putc('\n');
    80003e18:	00a00513          	li	a0,10
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	0a8080e7          	jalr	168(ra) # 80001ec4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003e24:	00007517          	auipc	a0,0x7
    80003e28:	a5450513          	addi	a0,a0,-1452 # 8000a878 <_ZZ24debug_print_internal_intmE6digits+0x540>
    80003e2c:	00003097          	auipc	ra,0x3
    80003e30:	f28080e7          	jalr	-216(ra) # 80006d54 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003e34:	00048513          	mv	a0,s1
    80003e38:	00000097          	auipc	ra,0x0
    80003e3c:	f40080e7          	jalr	-192(ra) # 80003d78 <_ZN6Buffer6getCntEv>
    80003e40:	02a05c63          	blez	a0,80003e78 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003e44:	0084b783          	ld	a5,8(s1)
    80003e48:	0104a703          	lw	a4,16(s1)
    80003e4c:	00271713          	slli	a4,a4,0x2
    80003e50:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003e54:	0007c503          	lbu	a0,0(a5)
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	06c080e7          	jalr	108(ra) # 80001ec4 <_Z4putcc>
        head = (head + 1) % cap;
    80003e60:	0104a783          	lw	a5,16(s1)
    80003e64:	0017879b          	addiw	a5,a5,1
    80003e68:	0004a703          	lw	a4,0(s1)
    80003e6c:	02e7e7bb          	remw	a5,a5,a4
    80003e70:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003e74:	fc1ff06f          	j	80003e34 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003e78:	02100513          	li	a0,33
    80003e7c:	ffffe097          	auipc	ra,0xffffe
    80003e80:	048080e7          	jalr	72(ra) # 80001ec4 <_Z4putcc>
    putc('\n');
    80003e84:	00a00513          	li	a0,10
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	03c080e7          	jalr	60(ra) # 80001ec4 <_Z4putcc>
    mem_free(buffer);
    80003e90:	0084b503          	ld	a0,8(s1)
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	ba8080e7          	jalr	-1112(ra) # 80001a3c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003e9c:	0204b503          	ld	a0,32(s1)
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	e78080e7          	jalr	-392(ra) # 80001d18 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    80003ea8:	0184b503          	ld	a0,24(s1)
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	e6c080e7          	jalr	-404(ra) # 80001d18 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    80003eb4:	0304b503          	ld	a0,48(s1)
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	e60080e7          	jalr	-416(ra) # 80001d18 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    80003ec0:	0284b503          	ld	a0,40(s1)
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	e54080e7          	jalr	-428(ra) # 80001d18 <_Z9sem_closeP10_semaphore>
}
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret

0000000080003ee0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003ee0:	f8010113          	addi	sp,sp,-128
    80003ee4:	06113c23          	sd	ra,120(sp)
    80003ee8:	06813823          	sd	s0,112(sp)
    80003eec:	06913423          	sd	s1,104(sp)
    80003ef0:	07213023          	sd	s2,96(sp)
    80003ef4:	05313c23          	sd	s3,88(sp)
    80003ef8:	05413823          	sd	s4,80(sp)
    80003efc:	05513423          	sd	s5,72(sp)
    80003f00:	05613023          	sd	s6,64(sp)
    80003f04:	03713c23          	sd	s7,56(sp)
    80003f08:	03813823          	sd	s8,48(sp)
    80003f0c:	03913423          	sd	s9,40(sp)
    80003f10:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f14:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f18:	00007517          	auipc	a0,0x7
    80003f1c:	a1050513          	addi	a0,a0,-1520 # 8000a928 <_ZTV8Consumer+0x28>
    80003f20:	00003097          	auipc	ra,0x3
    80003f24:	e34080e7          	jalr	-460(ra) # 80006d54 <_Z11printStringPKc>
    getString(input, 30);
    80003f28:	01e00593          	li	a1,30
    80003f2c:	f8040513          	addi	a0,s0,-128
    80003f30:	00003097          	auipc	ra,0x3
    80003f34:	eac080e7          	jalr	-340(ra) # 80006ddc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f38:	f8040513          	addi	a0,s0,-128
    80003f3c:	00003097          	auipc	ra,0x3
    80003f40:	f74080e7          	jalr	-140(ra) # 80006eb0 <_Z11stringToIntPKc>
    80003f44:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    80003f48:	00007517          	auipc	a0,0x7
    80003f4c:	a0050513          	addi	a0,a0,-1536 # 8000a948 <_ZTV8Consumer+0x48>
    80003f50:	00003097          	auipc	ra,0x3
    80003f54:	e04080e7          	jalr	-508(ra) # 80006d54 <_Z11printStringPKc>
    getString(input, 30);
    80003f58:	01e00593          	li	a1,30
    80003f5c:	f8040513          	addi	a0,s0,-128
    80003f60:	00003097          	auipc	ra,0x3
    80003f64:	e7c080e7          	jalr	-388(ra) # 80006ddc <_Z9getStringPci>
    n = stringToInt(input);
    80003f68:	f8040513          	addi	a0,s0,-128
    80003f6c:	00003097          	auipc	ra,0x3
    80003f70:	f44080e7          	jalr	-188(ra) # 80006eb0 <_Z11stringToIntPKc>
    80003f74:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003f78:	00007517          	auipc	a0,0x7
    80003f7c:	9f050513          	addi	a0,a0,-1552 # 8000a968 <_ZTV8Consumer+0x68>
    80003f80:	00003097          	auipc	ra,0x3
    80003f84:	dd4080e7          	jalr	-556(ra) # 80006d54 <_Z11printStringPKc>
    printInt(threadNum);
    80003f88:	00000613          	li	a2,0
    80003f8c:	00a00593          	li	a1,10
    80003f90:	000a0513          	mv	a0,s4
    80003f94:	00003097          	auipc	ra,0x3
    80003f98:	f6c080e7          	jalr	-148(ra) # 80006f00 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003f9c:	00007517          	auipc	a0,0x7
    80003fa0:	9e450513          	addi	a0,a0,-1564 # 8000a980 <_ZTV8Consumer+0x80>
    80003fa4:	00003097          	auipc	ra,0x3
    80003fa8:	db0080e7          	jalr	-592(ra) # 80006d54 <_Z11printStringPKc>
    printInt(n);
    80003fac:	00000613          	li	a2,0
    80003fb0:	00a00593          	li	a1,10
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00003097          	auipc	ra,0x3
    80003fbc:	f48080e7          	jalr	-184(ra) # 80006f00 <_Z8printIntiii>
    printString(".\n");
    80003fc0:	00007517          	auipc	a0,0x7
    80003fc4:	9d850513          	addi	a0,a0,-1576 # 8000a998 <_ZTV8Consumer+0x98>
    80003fc8:	00003097          	auipc	ra,0x3
    80003fcc:	d8c080e7          	jalr	-628(ra) # 80006d54 <_Z11printStringPKc>
    if (threadNum > n) {
    80003fd0:	0344c463          	blt	s1,s4,80003ff8 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    80003fd4:	03405c63          	blez	s4,8000400c <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80003fd8:	03800513          	li	a0,56
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	3f0080e7          	jalr	1008(ra) # 800023cc <_Znwm>
    80003fe4:	00050b13          	mv	s6,a0
    80003fe8:	00048593          	mv	a1,s1
    80003fec:	00003097          	auipc	ra,0x3
    80003ff0:	558080e7          	jalr	1368(ra) # 80007544 <_ZN9BufferCPPC1Ei>
    80003ff4:	0300006f          	j	80004024 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ff8:	00007517          	auipc	a0,0x7
    80003ffc:	9a850513          	addi	a0,a0,-1624 # 8000a9a0 <_ZTV8Consumer+0xa0>
    80004000:	00003097          	auipc	ra,0x3
    80004004:	d54080e7          	jalr	-684(ra) # 80006d54 <_Z11printStringPKc>
        return;
    80004008:	0140006f          	j	8000401c <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000400c:	00007517          	auipc	a0,0x7
    80004010:	9d450513          	addi	a0,a0,-1580 # 8000a9e0 <_ZTV8Consumer+0xe0>
    80004014:	00003097          	auipc	ra,0x3
    80004018:	d40080e7          	jalr	-704(ra) # 80006d54 <_Z11printStringPKc>
        return;
    8000401c:	000c0113          	mv	sp,s8
    80004020:	37c0006f          	j	8000439c <_Z20testConsumerProducerv+0x4bc>
    waitForAll = new Semaphore(0);
    80004024:	01000513          	li	a0,16
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	3a4080e7          	jalr	932(ra) # 800023cc <_Znwm>
    80004030:	00050913          	mv	s2,a0
    void* arg;
};

class Semaphore {
    public:
    Semaphore(unsigned init = 1) {
    80004034:	00007797          	auipc	a5,0x7
    80004038:	86c78793          	addi	a5,a5,-1940 # 8000a8a0 <_ZTV9Semaphore+0x10>
    8000403c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80004040:	00000593          	li	a1,0
    80004044:	00850513          	addi	a0,a0,8
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	bf8080e7          	jalr	-1032(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    80004050:	00050463          	beqz	a0,80004058 <_Z20testConsumerProducerv+0x178>
            myHandle = nullptr;
    80004054:	00093423          	sd	zero,8(s2)
    80004058:	00009797          	auipc	a5,0x9
    8000405c:	1f27b823          	sd	s2,496(a5) # 8000d248 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004060:	003a1793          	slli	a5,s4,0x3
    80004064:	00f78793          	addi	a5,a5,15
    80004068:	ff07f793          	andi	a5,a5,-16
    8000406c:	40f10133          	sub	sp,sp,a5
    80004070:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    80004074:	001a079b          	addiw	a5,s4,1
    80004078:	00179713          	slli	a4,a5,0x1
    8000407c:	00f70733          	add	a4,a4,a5
    80004080:	00371793          	slli	a5,a4,0x3
    80004084:	00f78793          	addi	a5,a5,15
    80004088:	ff07f793          	andi	a5,a5,-16
    8000408c:	40f10133          	sub	sp,sp,a5
    80004090:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    80004094:	001a1793          	slli	a5,s4,0x1
    80004098:	014787b3          	add	a5,a5,s4
    8000409c:	00379493          	slli	s1,a5,0x3
    800040a0:	009c84b3          	add	s1,s9,s1
    800040a4:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    800040a8:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    800040ac:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040b0:	02800513          	li	a0,40
    800040b4:	ffffe097          	auipc	ra,0xffffe
    800040b8:	318080e7          	jalr	792(ra) # 800023cc <_Znwm>
    800040bc:	00050b93          	mv	s7,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800040c0:	00053423          	sd	zero,8(a0)
    800040c4:	00053823          	sd	zero,16(a0)
    800040c8:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800040cc:	00007797          	auipc	a5,0x7
    800040d0:	84478793          	addi	a5,a5,-1980 # 8000a910 <_ZTV8Consumer+0x10>
    800040d4:	00f53023          	sd	a5,0(a0)
    800040d8:	02953023          	sd	s1,32(a0)
        debug_print("CPP API: Starting thread\n");
    800040dc:	00007517          	auipc	a0,0x7
    800040e0:	93450513          	addi	a0,a0,-1740 # 8000aa10 <_ZTV8Consumer+0x110>
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	458080e7          	jalr	1112(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    800040ec:	00007517          	auipc	a0,0x7
    800040f0:	94450513          	addi	a0,a0,-1724 # 8000aa30 <_ZTV8Consumer+0x130>
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	448080e7          	jalr	1096(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)this);
    800040fc:	000b8513          	mv	a0,s7
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	584080e7          	jalr	1412(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    80004108:	00006517          	auipc	a0,0x6
    8000410c:	33050513          	addi	a0,a0,816 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	42c080e7          	jalr	1068(ra) # 8000253c <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80004118:	000b8613          	mv	a2,s7
    8000411c:	ffffd597          	auipc	a1,0xffffd
    80004120:	5f458593          	addi	a1,a1,1524 # 80001710 <_ZN6Thread9body_execEPv>
    80004124:	008b8513          	addi	a0,s7,8
    80004128:	ffffe097          	auipc	ra,0xffffe
    8000412c:	a1c080e7          	jalr	-1508(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    80004130:	0c051663          	bnez	a0,800041fc <_Z20testConsumerProducerv+0x31c>
        debug_print("CPP API: Thread started\n");
    80004134:	00007517          	auipc	a0,0x7
    80004138:	91450513          	addi	a0,a0,-1772 # 8000aa48 <_ZTV8Consumer+0x148>
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	400080e7          	jalr	1024(ra) # 8000253c <_Z11debug_printPKc>
    threadData[0].id = 0;
    80004144:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    80004148:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    8000414c:	00009797          	auipc	a5,0x9
    80004150:	0fc78793          	addi	a5,a5,252 # 8000d248 <_ZL10waitForAll>
    80004154:	0007b783          	ld	a5,0(a5)
    80004158:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000415c:	02800513          	li	a0,40
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	26c080e7          	jalr	620(ra) # 800023cc <_Znwm>
    80004168:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    8000416c:	00053423          	sd	zero,8(a0)
    80004170:	00053823          	sd	zero,16(a0)
    80004174:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004178:	00006797          	auipc	a5,0x6
    8000417c:	74878793          	addi	a5,a5,1864 # 8000a8c0 <_ZTV16ProducerKeyborad+0x10>
    80004180:	00f53023          	sd	a5,0(a0)
    80004184:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004188:	00aab023          	sd	a0,0(s5)
        debug_print("CPP API: Starting thread\n");
    8000418c:	00007517          	auipc	a0,0x7
    80004190:	88450513          	addi	a0,a0,-1916 # 8000aa10 <_ZTV8Consumer+0x110>
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	3a8080e7          	jalr	936(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    8000419c:	00007517          	auipc	a0,0x7
    800041a0:	89450513          	addi	a0,a0,-1900 # 8000aa30 <_ZTV8Consumer+0x130>
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	398080e7          	jalr	920(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)this);
    800041ac:	00048513          	mv	a0,s1
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	4d4080e7          	jalr	1236(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    800041b8:	00006517          	auipc	a0,0x6
    800041bc:	28050513          	addi	a0,a0,640 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	37c080e7          	jalr	892(ra) # 8000253c <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    800041c8:	00048613          	mv	a2,s1
    800041cc:	ffffd597          	auipc	a1,0xffffd
    800041d0:	54458593          	addi	a1,a1,1348 # 80001710 <_ZN6Thread9body_execEPv>
    800041d4:	00848513          	addi	a0,s1,8
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	96c080e7          	jalr	-1684(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    800041e0:	02051263          	bnez	a0,80004204 <_Z20testConsumerProducerv+0x324>
        debug_print("CPP API: Thread started\n");
    800041e4:	00007517          	auipc	a0,0x7
    800041e8:	86450513          	addi	a0,a0,-1948 # 8000aa48 <_ZTV8Consumer+0x148>
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	350080e7          	jalr	848(ra) # 8000253c <_Z11debug_printPKc>
    for (int i = 1; i < threadNum; i++) {
    800041f4:	00100993          	li	s3,1
    800041f8:	0280006f          	j	80004220 <_Z20testConsumerProducerv+0x340>
            myHandle = nullptr;
    800041fc:	000bb423          	sd	zero,8(s7)
            return -1;
    80004200:	f45ff06f          	j	80004144 <_Z20testConsumerProducerv+0x264>
            myHandle = nullptr;
    80004204:	0004b423          	sd	zero,8(s1)
            return -1;
    80004208:	fedff06f          	j	800041f4 <_Z20testConsumerProducerv+0x314>
        debug_print("CPP API: Thread started\n");
    8000420c:	00007517          	auipc	a0,0x7
    80004210:	83c50513          	addi	a0,a0,-1988 # 8000aa48 <_ZTV8Consumer+0x148>
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	328080e7          	jalr	808(ra) # 8000253c <_Z11debug_printPKc>
    8000421c:	0019899b          	addiw	s3,s3,1
    80004220:	0d49d263          	bge	s3,s4,800042e4 <_Z20testConsumerProducerv+0x404>
        threadData[i].id = i;
    80004224:	00199793          	slli	a5,s3,0x1
    80004228:	013787b3          	add	a5,a5,s3
    8000422c:	00379913          	slli	s2,a5,0x3
    80004230:	012c8933          	add	s2,s9,s2
    80004234:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    80004238:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    8000423c:	00009797          	auipc	a5,0x9
    80004240:	00c78793          	addi	a5,a5,12 # 8000d248 <_ZL10waitForAll>
    80004244:	0007b783          	ld	a5,0(a5)
    80004248:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    8000424c:	02800513          	li	a0,40
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	17c080e7          	jalr	380(ra) # 800023cc <_Znwm>
    80004258:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    8000425c:	00053423          	sd	zero,8(a0)
    80004260:	00053823          	sd	zero,16(a0)
    80004264:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004268:	00006797          	auipc	a5,0x6
    8000426c:	68078793          	addi	a5,a5,1664 # 8000a8e8 <_ZTV8Producer+0x10>
    80004270:	00f53023          	sd	a5,0(a0)
    80004274:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    80004278:	00399793          	slli	a5,s3,0x3
    8000427c:	00fa87b3          	add	a5,s5,a5
    80004280:	00a7b023          	sd	a0,0(a5)
        debug_print("CPP API: Starting thread\n");
    80004284:	00006517          	auipc	a0,0x6
    80004288:	78c50513          	addi	a0,a0,1932 # 8000aa10 <_ZTV8Consumer+0x110>
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	2b0080e7          	jalr	688(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80004294:	00006517          	auipc	a0,0x6
    80004298:	79c50513          	addi	a0,a0,1948 # 8000aa30 <_ZTV8Consumer+0x130>
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	2a0080e7          	jalr	672(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)this);
    800042a4:	00048513          	mv	a0,s1
    800042a8:	ffffe097          	auipc	ra,0xffffe
    800042ac:	3dc080e7          	jalr	988(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    800042b0:	00006517          	auipc	a0,0x6
    800042b4:	18850513          	addi	a0,a0,392 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	284080e7          	jalr	644(ra) # 8000253c <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    800042c0:	00048613          	mv	a2,s1
    800042c4:	ffffd597          	auipc	a1,0xffffd
    800042c8:	44c58593          	addi	a1,a1,1100 # 80001710 <_ZN6Thread9body_execEPv>
    800042cc:	00848513          	addi	a0,s1,8
    800042d0:	ffffe097          	auipc	ra,0xffffe
    800042d4:	874080e7          	jalr	-1932(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    800042d8:	f2050ae3          	beqz	a0,8000420c <_Z20testConsumerProducerv+0x32c>
            myHandle = nullptr;
    800042dc:	0004b423          	sd	zero,8(s1)
            return -1;
    800042e0:	f3dff06f          	j	8000421c <_Z20testConsumerProducerv+0x33c>
        thread_dispatch();
    800042e4:	ffffe097          	auipc	ra,0xffffe
    800042e8:	910080e7          	jalr	-1776(ra) # 80001bf4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800042ec:	00000493          	li	s1,0
    800042f0:	0080006f          	j	800042f8 <_Z20testConsumerProducerv+0x418>
    800042f4:	0014849b          	addiw	s1,s1,1
    800042f8:	029a4263          	blt	s4,s1,8000431c <_Z20testConsumerProducerv+0x43c>
        waitForAll->wait();
    800042fc:	00009797          	auipc	a5,0x9
    80004300:	f4c78793          	addi	a5,a5,-180 # 8000d248 <_ZL10waitForAll>
    80004304:	0007b783          	ld	a5,0(a5)
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }
    int wait() {
        if (myHandle == nullptr) {
    80004308:	0087b503          	ld	a0,8(a5)
    8000430c:	fe0504e3          	beqz	a0,800042f4 <_Z20testConsumerProducerv+0x414>
            return -1;
        }
        return sem_wait(myHandle);
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	a74080e7          	jalr	-1420(ra) # 80001d84 <_Z8sem_waitP10_semaphore>
    80004318:	fddff06f          	j	800042f4 <_Z20testConsumerProducerv+0x414>
    delete waitForAll;
    8000431c:	00009797          	auipc	a5,0x9
    80004320:	f2c78793          	addi	a5,a5,-212 # 8000d248 <_ZL10waitForAll>
    80004324:	0007b503          	ld	a0,0(a5)
    80004328:	00050863          	beqz	a0,80004338 <_Z20testConsumerProducerv+0x458>
    8000432c:	00053783          	ld	a5,0(a0)
    80004330:	0087b783          	ld	a5,8(a5)
    80004334:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004338:	00000493          	li	s1,0
    8000433c:	0080006f          	j	80004344 <_Z20testConsumerProducerv+0x464>
    for (int i = 0; i < threadNum; i++) {
    80004340:	0014849b          	addiw	s1,s1,1
    80004344:	0344d263          	bge	s1,s4,80004368 <_Z20testConsumerProducerv+0x488>
        delete producers[i];
    80004348:	00349793          	slli	a5,s1,0x3
    8000434c:	00fa87b3          	add	a5,s5,a5
    80004350:	0007b503          	ld	a0,0(a5)
    80004354:	fe0506e3          	beqz	a0,80004340 <_Z20testConsumerProducerv+0x460>
    80004358:	00053783          	ld	a5,0(a0)
    8000435c:	0087b783          	ld	a5,8(a5)
    80004360:	000780e7          	jalr	a5
    80004364:	fddff06f          	j	80004340 <_Z20testConsumerProducerv+0x460>
    delete consumer;
    80004368:	000b8a63          	beqz	s7,8000437c <_Z20testConsumerProducerv+0x49c>
    8000436c:	000bb783          	ld	a5,0(s7)
    80004370:	0087b783          	ld	a5,8(a5)
    80004374:	000b8513          	mv	a0,s7
    80004378:	000780e7          	jalr	a5
    delete buffer;
    8000437c:	000b0e63          	beqz	s6,80004398 <_Z20testConsumerProducerv+0x4b8>
    80004380:	000b0513          	mv	a0,s6
    80004384:	00003097          	auipc	ra,0x3
    80004388:	578080e7          	jalr	1400(ra) # 800078fc <_ZN9BufferCPPD1Ev>
    8000438c:	000b0513          	mv	a0,s6
    80004390:	ffffe097          	auipc	ra,0xffffe
    80004394:	0bc080e7          	jalr	188(ra) # 8000244c <_ZdlPv>
    80004398:	000c0113          	mv	sp,s8
}
    8000439c:	f8040113          	addi	sp,s0,-128
    800043a0:	07813083          	ld	ra,120(sp)
    800043a4:	07013403          	ld	s0,112(sp)
    800043a8:	06813483          	ld	s1,104(sp)
    800043ac:	06013903          	ld	s2,96(sp)
    800043b0:	05813983          	ld	s3,88(sp)
    800043b4:	05013a03          	ld	s4,80(sp)
    800043b8:	04813a83          	ld	s5,72(sp)
    800043bc:	04013b03          	ld	s6,64(sp)
    800043c0:	03813b83          	ld	s7,56(sp)
    800043c4:	03013c03          	ld	s8,48(sp)
    800043c8:	02813c83          	ld	s9,40(sp)
    800043cc:	08010113          	addi	sp,sp,128
    800043d0:	00008067          	ret
    800043d4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800043d8:	000b0513          	mv	a0,s6
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	070080e7          	jalr	112(ra) # 8000244c <_ZdlPv>
    800043e4:	00048513          	mv	a0,s1
    800043e8:	0000a097          	auipc	ra,0xa
    800043ec:	138080e7          	jalr	312(ra) # 8000e520 <_Unwind_Resume>
    800043f0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800043f4:	00090513          	mv	a0,s2
    800043f8:	ffffe097          	auipc	ra,0xffffe
    800043fc:	054080e7          	jalr	84(ra) # 8000244c <_ZdlPv>
    80004400:	00048513          	mv	a0,s1
    80004404:	0000a097          	auipc	ra,0xa
    80004408:	11c080e7          	jalr	284(ra) # 8000e520 <_Unwind_Resume>

000000008000440c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000440c:	ff010113          	addi	sp,sp,-16
    80004410:	00813423          	sd	s0,8(sp)
    80004414:	01010413          	addi	s0,sp,16
    80004418:	00813403          	ld	s0,8(sp)
    8000441c:	01010113          	addi	sp,sp,16
    80004420:	00008067          	ret

0000000080004424 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004424:	ff010113          	addi	sp,sp,-16
    80004428:	00813423          	sd	s0,8(sp)
    8000442c:	01010413          	addi	s0,sp,16
    80004430:	00813403          	ld	s0,8(sp)
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00008067          	ret

000000008000443c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000443c:	ff010113          	addi	sp,sp,-16
    80004440:	00813423          	sd	s0,8(sp)
    80004444:	01010413          	addi	s0,sp,16
    80004448:	00813403          	ld	s0,8(sp)
    8000444c:	01010113          	addi	sp,sp,16
    80004450:	00008067          	ret

0000000080004454 <_ZN8ConsumerD0Ev>:
class Consumer : public Thread {
    80004454:	ff010113          	addi	sp,sp,-16
    80004458:	00113423          	sd	ra,8(sp)
    8000445c:	00813023          	sd	s0,0(sp)
    80004460:	01010413          	addi	s0,sp,16
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	fe8080e7          	jalr	-24(ra) # 8000244c <_ZdlPv>
    8000446c:	00813083          	ld	ra,8(sp)
    80004470:	00013403          	ld	s0,0(sp)
    80004474:	01010113          	addi	sp,sp,16
    80004478:	00008067          	ret

000000008000447c <_ZN16ProducerKeyboradD0Ev>:
class ProducerKeyborad : public Thread {
    8000447c:	ff010113          	addi	sp,sp,-16
    80004480:	00113423          	sd	ra,8(sp)
    80004484:	00813023          	sd	s0,0(sp)
    80004488:	01010413          	addi	s0,sp,16
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	fc0080e7          	jalr	-64(ra) # 8000244c <_ZdlPv>
    80004494:	00813083          	ld	ra,8(sp)
    80004498:	00013403          	ld	s0,0(sp)
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00008067          	ret

00000000800044a4 <_ZN8ProducerD0Ev>:
class Producer : public Thread {
    800044a4:	ff010113          	addi	sp,sp,-16
    800044a8:	00113423          	sd	ra,8(sp)
    800044ac:	00813023          	sd	s0,0(sp)
    800044b0:	01010413          	addi	s0,sp,16
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	f98080e7          	jalr	-104(ra) # 8000244c <_ZdlPv>
    800044bc:	00813083          	ld	ra,8(sp)
    800044c0:	00013403          	ld	s0,0(sp)
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00008067          	ret

00000000800044cc <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() {
    800044cc:	00006797          	auipc	a5,0x6
    800044d0:	3d478793          	addi	a5,a5,980 # 8000a8a0 <_ZTV9Semaphore+0x10>
    800044d4:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    800044d8:	00853503          	ld	a0,8(a0)
    800044dc:	02050663          	beqz	a0,80004508 <_ZN9SemaphoreD1Ev+0x3c>
    virtual ~Semaphore() {
    800044e0:	ff010113          	addi	sp,sp,-16
    800044e4:	00113423          	sd	ra,8(sp)
    800044e8:	00813023          	sd	s0,0(sp)
    800044ec:	01010413          	addi	s0,sp,16
            sem_close(myHandle);
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	828080e7          	jalr	-2008(ra) # 80001d18 <_Z9sem_closeP10_semaphore>
    }
    800044f8:	00813083          	ld	ra,8(sp)
    800044fc:	00013403          	ld	s0,0(sp)
    80004500:	01010113          	addi	sp,sp,16
    80004504:	00008067          	ret
    80004508:	00008067          	ret

000000008000450c <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore() {
    8000450c:	fe010113          	addi	sp,sp,-32
    80004510:	00113c23          	sd	ra,24(sp)
    80004514:	00813823          	sd	s0,16(sp)
    80004518:	00913423          	sd	s1,8(sp)
    8000451c:	02010413          	addi	s0,sp,32
    80004520:	00050493          	mv	s1,a0
    80004524:	00006797          	auipc	a5,0x6
    80004528:	37c78793          	addi	a5,a5,892 # 8000a8a0 <_ZTV9Semaphore+0x10>
    8000452c:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80004530:	00853503          	ld	a0,8(a0)
    80004534:	00050663          	beqz	a0,80004540 <_ZN9SemaphoreD0Ev+0x34>
            sem_close(myHandle);
    80004538:	ffffd097          	auipc	ra,0xffffd
    8000453c:	7e0080e7          	jalr	2016(ra) # 80001d18 <_Z9sem_closeP10_semaphore>
    }
    80004540:	00048513          	mv	a0,s1
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	f08080e7          	jalr	-248(ra) # 8000244c <_ZdlPv>
    8000454c:	01813083          	ld	ra,24(sp)
    80004550:	01013403          	ld	s0,16(sp)
    80004554:	00813483          	ld	s1,8(sp)
    80004558:	02010113          	addi	sp,sp,32
    8000455c:	00008067          	ret

0000000080004560 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004560:	fe010113          	addi	sp,sp,-32
    80004564:	00113c23          	sd	ra,24(sp)
    80004568:	00813823          	sd	s0,16(sp)
    8000456c:	00913423          	sd	s1,8(sp)
    80004570:	02010413          	addi	s0,sp,32
    80004574:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004578:	ffffe097          	auipc	ra,0xffffe
    8000457c:	8fc080e7          	jalr	-1796(ra) # 80001e74 <_Z4getcv>
    80004580:	0005059b          	sext.w	a1,a0
    80004584:	01b00793          	li	a5,27
    80004588:	00f58c63          	beq	a1,a5,800045a0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000458c:	0204b783          	ld	a5,32(s1)
    80004590:	0087b503          	ld	a0,8(a5)
    80004594:	00003097          	auipc	ra,0x3
    80004598:	164080e7          	jalr	356(ra) # 800076f8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000459c:	fddff06f          	j	80004578 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800045a0:	00100793          	li	a5,1
    800045a4:	00009717          	auipc	a4,0x9
    800045a8:	c8f72e23          	sw	a5,-868(a4) # 8000d240 <_ZL9threadEnd>
        td->buffer->put('!');
    800045ac:	0204b783          	ld	a5,32(s1)
    800045b0:	02100593          	li	a1,33
    800045b4:	0087b503          	ld	a0,8(a5)
    800045b8:	00003097          	auipc	ra,0x3
    800045bc:	140080e7          	jalr	320(ra) # 800076f8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800045c0:	0204b783          	ld	a5,32(s1)
    800045c4:	0107b783          	ld	a5,16(a5)
    }
    int signal() {
        if (myHandle == nullptr) {
    800045c8:	0087b503          	ld	a0,8(a5)
    800045cc:	00050663          	beqz	a0,800045d8 <_ZN16ProducerKeyborad3runEv+0x78>
            return -1;
        }
        return sem_signal(myHandle);
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	804080e7          	jalr	-2044(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
    }
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	01013403          	ld	s0,16(sp)
    800045e0:	00813483          	ld	s1,8(sp)
    800045e4:	02010113          	addi	sp,sp,32
    800045e8:	00008067          	ret

00000000800045ec <_ZN8Producer3runEv>:
    void run() override {
    800045ec:	fe010113          	addi	sp,sp,-32
    800045f0:	00113c23          	sd	ra,24(sp)
    800045f4:	00813823          	sd	s0,16(sp)
    800045f8:	00913423          	sd	s1,8(sp)
    800045fc:	02010413          	addi	s0,sp,32
    80004600:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80004604:	00009797          	auipc	a5,0x9
    80004608:	c3c78793          	addi	a5,a5,-964 # 8000d240 <_ZL9threadEnd>
    8000460c:	0007a783          	lw	a5,0(a5)
    80004610:	0007879b          	sext.w	a5,a5
    80004614:	02079063          	bnez	a5,80004634 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    80004618:	0204b783          	ld	a5,32(s1)
    8000461c:	0007a583          	lw	a1,0(a5)
    80004620:	0305859b          	addiw	a1,a1,48
    80004624:	0087b503          	ld	a0,8(a5)
    80004628:	00003097          	auipc	ra,0x3
    8000462c:	0d0080e7          	jalr	208(ra) # 800076f8 <_ZN9BufferCPP3putEi>
        return 0;
    80004630:	fd5ff06f          	j	80004604 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80004634:	0204b783          	ld	a5,32(s1)
    80004638:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    8000463c:	0087b503          	ld	a0,8(a5)
    80004640:	00050663          	beqz	a0,8000464c <_ZN8Producer3runEv+0x60>
        return sem_signal(myHandle);
    80004644:	ffffd097          	auipc	ra,0xffffd
    80004648:	790080e7          	jalr	1936(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
    }
    8000464c:	01813083          	ld	ra,24(sp)
    80004650:	01013403          	ld	s0,16(sp)
    80004654:	00813483          	ld	s1,8(sp)
    80004658:	02010113          	addi	sp,sp,32
    8000465c:	00008067          	ret

0000000080004660 <_ZN7Console4putcEc>:
};

class Console {
    public:
    static char getc() { return getc(); };
    static void putc(char c) { putc(c); };
    80004660:	ff010113          	addi	sp,sp,-16
    80004664:	00113423          	sd	ra,8(sp)
    80004668:	00813023          	sd	s0,0(sp)
    8000466c:	01010413          	addi	s0,sp,16
    80004670:	00000097          	auipc	ra,0x0
    80004674:	ff0080e7          	jalr	-16(ra) # 80004660 <_ZN7Console4putcEc>
    80004678:	00813083          	ld	ra,8(sp)
    8000467c:	00013403          	ld	s0,0(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <_ZN8Consumer3runEv>:
    void run() override {
    80004688:	fd010113          	addi	sp,sp,-48
    8000468c:	02113423          	sd	ra,40(sp)
    80004690:	02813023          	sd	s0,32(sp)
    80004694:	00913c23          	sd	s1,24(sp)
    80004698:	01213823          	sd	s2,16(sp)
    8000469c:	01313423          	sd	s3,8(sp)
    800046a0:	03010413          	addi	s0,sp,48
    800046a4:	00050913          	mv	s2,a0
        int i = 0;
    800046a8:	00000993          	li	s3,0
    800046ac:	0100006f          	j	800046bc <_ZN8Consumer3runEv+0x34>
    800046b0:	00a00513          	li	a0,10
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	fac080e7          	jalr	-84(ra) # 80004660 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800046bc:	00009797          	auipc	a5,0x9
    800046c0:	b8478793          	addi	a5,a5,-1148 # 8000d240 <_ZL9threadEnd>
    800046c4:	0007a783          	lw	a5,0(a5)
    800046c8:	0007879b          	sext.w	a5,a5
    800046cc:	02079c63          	bnez	a5,80004704 <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    800046d0:	02093783          	ld	a5,32(s2)
    800046d4:	0087b503          	ld	a0,8(a5)
    800046d8:	00003097          	auipc	ra,0x3
    800046dc:	0d0080e7          	jalr	208(ra) # 800077a8 <_ZN9BufferCPP3getEv>
            i++;
    800046e0:	0019849b          	addiw	s1,s3,1
    800046e4:	0004899b          	sext.w	s3,s1
    800046e8:	0ff57513          	andi	a0,a0,255
    800046ec:	00000097          	auipc	ra,0x0
    800046f0:	f74080e7          	jalr	-140(ra) # 80004660 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800046f4:	05000793          	li	a5,80
    800046f8:	02f4e4bb          	remw	s1,s1,a5
    800046fc:	fc0490e3          	bnez	s1,800046bc <_ZN8Consumer3runEv+0x34>
    80004700:	fb1ff06f          	j	800046b0 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    80004704:	02093783          	ld	a5,32(s2)
    80004708:	0087b503          	ld	a0,8(a5)
    8000470c:	00003097          	auipc	ra,0x3
    80004710:	148080e7          	jalr	328(ra) # 80007854 <_ZN9BufferCPP6getCntEv>
    80004714:	02a05263          	blez	a0,80004738 <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    80004718:	02093783          	ld	a5,32(s2)
    8000471c:	0087b503          	ld	a0,8(a5)
    80004720:	00003097          	auipc	ra,0x3
    80004724:	088080e7          	jalr	136(ra) # 800077a8 <_ZN9BufferCPP3getEv>
    80004728:	0ff57513          	andi	a0,a0,255
    8000472c:	00000097          	auipc	ra,0x0
    80004730:	f34080e7          	jalr	-204(ra) # 80004660 <_ZN7Console4putcEc>
    80004734:	fd1ff06f          	j	80004704 <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    80004738:	02093783          	ld	a5,32(s2)
    8000473c:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80004740:	0087b503          	ld	a0,8(a5)
    80004744:	00050663          	beqz	a0,80004750 <_ZN8Consumer3runEv+0xc8>
        return sem_signal(myHandle);
    80004748:	ffffd097          	auipc	ra,0xffffd
    8000474c:	68c080e7          	jalr	1676(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
    }
    80004750:	02813083          	ld	ra,40(sp)
    80004754:	02013403          	ld	s0,32(sp)
    80004758:	01813483          	ld	s1,24(sp)
    8000475c:	01013903          	ld	s2,16(sp)
    80004760:	00813983          	ld	s3,8(sp)
    80004764:	03010113          	addi	sp,sp,48
    80004768:	00008067          	ret

000000008000476c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000476c:	fe010113          	addi	sp,sp,-32
    80004770:	00113c23          	sd	ra,24(sp)
    80004774:	00813823          	sd	s0,16(sp)
    80004778:	00913423          	sd	s1,8(sp)
    8000477c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-9]\n");
    80004780:	00006517          	auipc	a0,0x6
    80004784:	30850513          	addi	a0,a0,776 # 8000aa88 <_ZTV8Consumer+0x188>
    80004788:	00002097          	auipc	ra,0x2
    8000478c:	5cc080e7          	jalr	1484(ra) # 80006d54 <_Z11printStringPKc>
    int test = getc() - '0';
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	6e4080e7          	jalr	1764(ra) # 80001e74 <_Z4getcv>
    80004798:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	6d8080e7          	jalr	1752(ra) # 80001e74 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800047a4:	00800793          	li	a5,8
    800047a8:	1297e063          	bltu	a5,s1,800048c8 <_Z8userMainv+0x15c>
    800047ac:	00249493          	slli	s1,s1,0x2
    800047b0:	00006717          	auipc	a4,0x6
    800047b4:	2b470713          	addi	a4,a4,692 # 8000aa64 <_ZTV8Consumer+0x164>
    800047b8:	00e484b3          	add	s1,s1,a4
    800047bc:	0004a783          	lw	a5,0(s1)
    800047c0:	00e787b3          	add	a5,a5,a4
    800047c4:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800047c8:	00002097          	auipc	ra,0x2
    800047cc:	aa0080e7          	jalr	-1376(ra) # 80006268 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800047d0:	00006517          	auipc	a0,0x6
    800047d4:	2d850513          	addi	a0,a0,728 # 8000aaa8 <_ZTV8Consumer+0x1a8>
    800047d8:	00002097          	auipc	ra,0x2
    800047dc:	57c080e7          	jalr	1404(ra) # 80006d54 <_Z11printStringPKc>
            printString("TEST 8 (getThreadId test)\n");
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret
            Threads_CPP_API_test();
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	1bc080e7          	jalr	444(ra) # 800059b0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800047fc:	00006517          	auipc	a0,0x6
    80004800:	2ec50513          	addi	a0,a0,748 # 8000aae8 <_ZTV8Consumer+0x1e8>
    80004804:	00002097          	auipc	ra,0x2
    80004808:	550080e7          	jalr	1360(ra) # 80006d54 <_Z11printStringPKc>
            break;
    8000480c:	fd5ff06f          	j	800047e0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004810:	00003097          	auipc	ra,0x3
    80004814:	a50080e7          	jalr	-1456(ra) # 80007260 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004818:	00006517          	auipc	a0,0x6
    8000481c:	31050513          	addi	a0,a0,784 # 8000ab28 <_ZTV8Consumer+0x228>
    80004820:	00002097          	auipc	ra,0x2
    80004824:	534080e7          	jalr	1332(ra) # 80006d54 <_Z11printStringPKc>
            break;
    80004828:	fb9ff06f          	j	800047e0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000482c:	00002097          	auipc	ra,0x2
    80004830:	dcc080e7          	jalr	-564(ra) # 800065f8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004834:	00006517          	auipc	a0,0x6
    80004838:	34450513          	addi	a0,a0,836 # 8000ab78 <_ZTV8Consumer+0x278>
    8000483c:	00002097          	auipc	ra,0x2
    80004840:	518080e7          	jalr	1304(ra) # 80006d54 <_Z11printStringPKc>
            break;
    80004844:	f9dff06f          	j	800047e0 <_Z8userMainv+0x74>
            testSleeping();
    80004848:	00002097          	auipc	ra,0x2
    8000484c:	474080e7          	jalr	1140(ra) # 80006cbc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80004850:	00006517          	auipc	a0,0x6
    80004854:	38050513          	addi	a0,a0,896 # 8000abd0 <_ZTV8Consumer+0x2d0>
    80004858:	00002097          	auipc	ra,0x2
    8000485c:	4fc080e7          	jalr	1276(ra) # 80006d54 <_Z11printStringPKc>
            break;
    80004860:	f81ff06f          	j	800047e0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80004864:	fffff097          	auipc	ra,0xfffff
    80004868:	67c080e7          	jalr	1660(ra) # 80003ee0 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000486c:	00006517          	auipc	a0,0x6
    80004870:	39450513          	addi	a0,a0,916 # 8000ac00 <_ZTV8Consumer+0x300>
    80004874:	00002097          	auipc	ra,0x2
    80004878:	4e0080e7          	jalr	1248(ra) # 80006d54 <_Z11printStringPKc>
            break;
    8000487c:	f65ff06f          	j	800047e0 <_Z8userMainv+0x74>
            System_Mode_test();
    80004880:	fffff097          	auipc	ra,0xfffff
    80004884:	224080e7          	jalr	548(ra) # 80003aa4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004888:	00006517          	auipc	a0,0x6
    8000488c:	3b850513          	addi	a0,a0,952 # 8000ac40 <_ZTV8Consumer+0x340>
    80004890:	00002097          	auipc	ra,0x2
    80004894:	4c4080e7          	jalr	1220(ra) # 80006d54 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004898:	00006517          	auipc	a0,0x6
    8000489c:	3c850513          	addi	a0,a0,968 # 8000ac60 <_ZTV8Consumer+0x360>
    800048a0:	00002097          	auipc	ra,0x2
    800048a4:	4b4080e7          	jalr	1204(ra) # 80006d54 <_Z11printStringPKc>
            break;
    800048a8:	f39ff06f          	j	800047e0 <_Z8userMainv+0x74>
            getThreadIdTest();
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	8ec080e7          	jalr	-1812(ra) # 80005198 <_Z15getThreadIdTestv>
            printString("TEST 8 (getThreadId test)\n");
    800048b4:	00006517          	auipc	a0,0x6
    800048b8:	40450513          	addi	a0,a0,1028 # 8000acb8 <_ZTV8Consumer+0x3b8>
    800048bc:	00002097          	auipc	ra,0x2
    800048c0:	498080e7          	jalr	1176(ra) # 80006d54 <_Z11printStringPKc>
            break;
    800048c4:	f1dff06f          	j	800047e0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800048c8:	00006517          	auipc	a0,0x6
    800048cc:	41050513          	addi	a0,a0,1040 # 8000acd8 <_ZTV8Consumer+0x3d8>
    800048d0:	00002097          	auipc	ra,0x2
    800048d4:	484080e7          	jalr	1156(ra) # 80006d54 <_Z11printStringPKc>
    800048d8:	f09ff06f          	j	800047e0 <_Z8userMainv+0x74>

00000000800048dc <_ZL11workerBodyMPv>:
        time_sleep(50);
    }
    finishedL = true;
}

static void workerBodyM(void* arg) {
    800048dc:	fe010113          	addi	sp,sp,-32
    800048e0:	00113c23          	sd	ra,24(sp)
    800048e4:	00813823          	sd	s0,16(sp)
    800048e8:	00913423          	sd	s1,8(sp)
    800048ec:	01213023          	sd	s2,0(sp)
    800048f0:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    800048f4:	00000493          	li	s1,0
    800048f8:	00900793          	li	a5,9
    800048fc:	0697c463          	blt	a5,s1,80004964 <_ZL11workerBodyMPv+0x88>
        int tid = getThreadId();
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	610080e7          	jalr	1552(ra) # 80001f10 <_Z11getThreadIdv>
    80004908:	00050913          	mv	s2,a0
        printString("Thread name: m\n");
    8000490c:	00006517          	auipc	a0,0x6
    80004910:	3f450513          	addi	a0,a0,1012 # 8000ad00 <_ZTV8Consumer+0x400>
    80004914:	00002097          	auipc	ra,0x2
    80004918:	440080e7          	jalr	1088(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    8000491c:	00006517          	auipc	a0,0x6
    80004920:	3f450513          	addi	a0,a0,1012 # 8000ad10 <_ZTV8Consumer+0x410>
    80004924:	00002097          	auipc	ra,0x2
    80004928:	430080e7          	jalr	1072(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    8000492c:	00000613          	li	a2,0
    80004930:	00a00593          	li	a1,10
    80004934:	00090513          	mv	a0,s2
    80004938:	00002097          	auipc	ra,0x2
    8000493c:	5c8080e7          	jalr	1480(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004940:	00006517          	auipc	a0,0x6
    80004944:	af850513          	addi	a0,a0,-1288 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004948:	00002097          	auipc	ra,0x2
    8000494c:	40c080e7          	jalr	1036(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004950:	03200513          	li	a0,50
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	4d0080e7          	jalr	1232(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    8000495c:	0014849b          	addiw	s1,s1,1
    80004960:	f99ff06f          	j	800048f8 <_ZL11workerBodyMPv+0x1c>
    }
    finishedM = true;
    80004964:	00100793          	li	a5,1
    80004968:	00009717          	auipc	a4,0x9
    8000496c:	8ef70423          	sb	a5,-1816(a4) # 8000d250 <_ZL9finishedM>
}
    80004970:	01813083          	ld	ra,24(sp)
    80004974:	01013403          	ld	s0,16(sp)
    80004978:	00813483          	ld	s1,8(sp)
    8000497c:	00013903          	ld	s2,0(sp)
    80004980:	02010113          	addi	sp,sp,32
    80004984:	00008067          	ret

0000000080004988 <_ZL11workerBodyLPv>:
static void workerBodyL(void* arg) {
    80004988:	fe010113          	addi	sp,sp,-32
    8000498c:	00113c23          	sd	ra,24(sp)
    80004990:	00813823          	sd	s0,16(sp)
    80004994:	00913423          	sd	s1,8(sp)
    80004998:	01213023          	sd	s2,0(sp)
    8000499c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    800049a0:	00000493          	li	s1,0
    800049a4:	00900793          	li	a5,9
    800049a8:	0697c463          	blt	a5,s1,80004a10 <_ZL11workerBodyLPv+0x88>
        int tid = getThreadId();
    800049ac:	ffffd097          	auipc	ra,0xffffd
    800049b0:	564080e7          	jalr	1380(ra) # 80001f10 <_Z11getThreadIdv>
    800049b4:	00050913          	mv	s2,a0
        printString("Thread name: l\n");
    800049b8:	00006517          	auipc	a0,0x6
    800049bc:	36850513          	addi	a0,a0,872 # 8000ad20 <_ZTV8Consumer+0x420>
    800049c0:	00002097          	auipc	ra,0x2
    800049c4:	394080e7          	jalr	916(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    800049c8:	00006517          	auipc	a0,0x6
    800049cc:	34850513          	addi	a0,a0,840 # 8000ad10 <_ZTV8Consumer+0x410>
    800049d0:	00002097          	auipc	ra,0x2
    800049d4:	384080e7          	jalr	900(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    800049d8:	00000613          	li	a2,0
    800049dc:	00a00593          	li	a1,10
    800049e0:	00090513          	mv	a0,s2
    800049e4:	00002097          	auipc	ra,0x2
    800049e8:	51c080e7          	jalr	1308(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    800049ec:	00006517          	auipc	a0,0x6
    800049f0:	a4c50513          	addi	a0,a0,-1460 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800049f4:	00002097          	auipc	ra,0x2
    800049f8:	360080e7          	jalr	864(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    800049fc:	03200513          	li	a0,50
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	424080e7          	jalr	1060(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004a08:	0014849b          	addiw	s1,s1,1
    80004a0c:	f99ff06f          	j	800049a4 <_ZL11workerBodyLPv+0x1c>
    finishedL = true;
    80004a10:	00100793          	li	a5,1
    80004a14:	00009717          	auipc	a4,0x9
    80004a18:	82f70ea3          	sb	a5,-1987(a4) # 8000d251 <_ZL9finishedL>
}
    80004a1c:	01813083          	ld	ra,24(sp)
    80004a20:	01013403          	ld	s0,16(sp)
    80004a24:	00813483          	ld	s1,8(sp)
    80004a28:	00013903          	ld	s2,0(sp)
    80004a2c:	02010113          	addi	sp,sp,32
    80004a30:	00008067          	ret

0000000080004a34 <_ZL11workerBodyKPv>:
static void workerBodyK(void* arg) {
    80004a34:	fe010113          	addi	sp,sp,-32
    80004a38:	00113c23          	sd	ra,24(sp)
    80004a3c:	00813823          	sd	s0,16(sp)
    80004a40:	00913423          	sd	s1,8(sp)
    80004a44:	01213023          	sd	s2,0(sp)
    80004a48:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004a4c:	00000493          	li	s1,0
    80004a50:	00900793          	li	a5,9
    80004a54:	0697c463          	blt	a5,s1,80004abc <_ZL11workerBodyKPv+0x88>
        int tid = getThreadId();
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	4b8080e7          	jalr	1208(ra) # 80001f10 <_Z11getThreadIdv>
    80004a60:	00050913          	mv	s2,a0
        printString("Thread name: k\n");
    80004a64:	00006517          	auipc	a0,0x6
    80004a68:	2cc50513          	addi	a0,a0,716 # 8000ad30 <_ZTV8Consumer+0x430>
    80004a6c:	00002097          	auipc	ra,0x2
    80004a70:	2e8080e7          	jalr	744(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004a74:	00006517          	auipc	a0,0x6
    80004a78:	29c50513          	addi	a0,a0,668 # 8000ad10 <_ZTV8Consumer+0x410>
    80004a7c:	00002097          	auipc	ra,0x2
    80004a80:	2d8080e7          	jalr	728(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004a84:	00000613          	li	a2,0
    80004a88:	00a00593          	li	a1,10
    80004a8c:	00090513          	mv	a0,s2
    80004a90:	00002097          	auipc	ra,0x2
    80004a94:	470080e7          	jalr	1136(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004a98:	00006517          	auipc	a0,0x6
    80004a9c:	9a050513          	addi	a0,a0,-1632 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004aa0:	00002097          	auipc	ra,0x2
    80004aa4:	2b4080e7          	jalr	692(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004aa8:	03200513          	li	a0,50
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	378080e7          	jalr	888(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004ab4:	0014849b          	addiw	s1,s1,1
    80004ab8:	f99ff06f          	j	80004a50 <_ZL11workerBodyKPv+0x1c>
    finishedK = true;
    80004abc:	00100793          	li	a5,1
    80004ac0:	00008717          	auipc	a4,0x8
    80004ac4:	78f70923          	sb	a5,1938(a4) # 8000d252 <_ZL9finishedK>
}
    80004ac8:	01813083          	ld	ra,24(sp)
    80004acc:	01013403          	ld	s0,16(sp)
    80004ad0:	00813483          	ld	s1,8(sp)
    80004ad4:	00013903          	ld	s2,0(sp)
    80004ad8:	02010113          	addi	sp,sp,32
    80004adc:	00008067          	ret

0000000080004ae0 <_ZL11workerBodyJPv>:
static void workerBodyJ(void* arg) {
    80004ae0:	fe010113          	addi	sp,sp,-32
    80004ae4:	00113c23          	sd	ra,24(sp)
    80004ae8:	00813823          	sd	s0,16(sp)
    80004aec:	00913423          	sd	s1,8(sp)
    80004af0:	01213023          	sd	s2,0(sp)
    80004af4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004af8:	00000493          	li	s1,0
    80004afc:	00900793          	li	a5,9
    80004b00:	0697c463          	blt	a5,s1,80004b68 <_ZL11workerBodyJPv+0x88>
        int tid = getThreadId();
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	40c080e7          	jalr	1036(ra) # 80001f10 <_Z11getThreadIdv>
    80004b0c:	00050913          	mv	s2,a0
        printString("Thread name: j\n");
    80004b10:	00006517          	auipc	a0,0x6
    80004b14:	23050513          	addi	a0,a0,560 # 8000ad40 <_ZTV8Consumer+0x440>
    80004b18:	00002097          	auipc	ra,0x2
    80004b1c:	23c080e7          	jalr	572(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004b20:	00006517          	auipc	a0,0x6
    80004b24:	1f050513          	addi	a0,a0,496 # 8000ad10 <_ZTV8Consumer+0x410>
    80004b28:	00002097          	auipc	ra,0x2
    80004b2c:	22c080e7          	jalr	556(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004b30:	00000613          	li	a2,0
    80004b34:	00a00593          	li	a1,10
    80004b38:	00090513          	mv	a0,s2
    80004b3c:	00002097          	auipc	ra,0x2
    80004b40:	3c4080e7          	jalr	964(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004b44:	00006517          	auipc	a0,0x6
    80004b48:	8f450513          	addi	a0,a0,-1804 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004b4c:	00002097          	auipc	ra,0x2
    80004b50:	208080e7          	jalr	520(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004b54:	03200513          	li	a0,50
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	2cc080e7          	jalr	716(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004b60:	0014849b          	addiw	s1,s1,1
    80004b64:	f99ff06f          	j	80004afc <_ZL11workerBodyJPv+0x1c>
    finishedJ = true;
    80004b68:	00100793          	li	a5,1
    80004b6c:	00008717          	auipc	a4,0x8
    80004b70:	6ef703a3          	sb	a5,1767(a4) # 8000d253 <_ZL9finishedJ>
}
    80004b74:	01813083          	ld	ra,24(sp)
    80004b78:	01013403          	ld	s0,16(sp)
    80004b7c:	00813483          	ld	s1,8(sp)
    80004b80:	00013903          	ld	s2,0(sp)
    80004b84:	02010113          	addi	sp,sp,32
    80004b88:	00008067          	ret

0000000080004b8c <_ZL11workerBodyIPv>:
static void workerBodyI(void* arg) {
    80004b8c:	fe010113          	addi	sp,sp,-32
    80004b90:	00113c23          	sd	ra,24(sp)
    80004b94:	00813823          	sd	s0,16(sp)
    80004b98:	00913423          	sd	s1,8(sp)
    80004b9c:	01213023          	sd	s2,0(sp)
    80004ba0:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004ba4:	00000493          	li	s1,0
    80004ba8:	00900793          	li	a5,9
    80004bac:	0697c463          	blt	a5,s1,80004c14 <_ZL11workerBodyIPv+0x88>
        int tid = getThreadId();
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	360080e7          	jalr	864(ra) # 80001f10 <_Z11getThreadIdv>
    80004bb8:	00050913          	mv	s2,a0
        printString("Thread name: i\n");
    80004bbc:	00006517          	auipc	a0,0x6
    80004bc0:	19450513          	addi	a0,a0,404 # 8000ad50 <_ZTV8Consumer+0x450>
    80004bc4:	00002097          	auipc	ra,0x2
    80004bc8:	190080e7          	jalr	400(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004bcc:	00006517          	auipc	a0,0x6
    80004bd0:	14450513          	addi	a0,a0,324 # 8000ad10 <_ZTV8Consumer+0x410>
    80004bd4:	00002097          	auipc	ra,0x2
    80004bd8:	180080e7          	jalr	384(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004bdc:	00000613          	li	a2,0
    80004be0:	00a00593          	li	a1,10
    80004be4:	00090513          	mv	a0,s2
    80004be8:	00002097          	auipc	ra,0x2
    80004bec:	318080e7          	jalr	792(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004bf0:	00006517          	auipc	a0,0x6
    80004bf4:	84850513          	addi	a0,a0,-1976 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004bf8:	00002097          	auipc	ra,0x2
    80004bfc:	15c080e7          	jalr	348(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004c00:	03200513          	li	a0,50
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	220080e7          	jalr	544(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004c0c:	0014849b          	addiw	s1,s1,1
    80004c10:	f99ff06f          	j	80004ba8 <_ZL11workerBodyIPv+0x1c>
    finishedI = true;
    80004c14:	00100793          	li	a5,1
    80004c18:	00008717          	auipc	a4,0x8
    80004c1c:	62f70e23          	sb	a5,1596(a4) # 8000d254 <_ZL9finishedI>
}
    80004c20:	01813083          	ld	ra,24(sp)
    80004c24:	01013403          	ld	s0,16(sp)
    80004c28:	00813483          	ld	s1,8(sp)
    80004c2c:	00013903          	ld	s2,0(sp)
    80004c30:	02010113          	addi	sp,sp,32
    80004c34:	00008067          	ret

0000000080004c38 <_ZL11workerBodyHPv>:
static void workerBodyH(void* arg) {
    80004c38:	fe010113          	addi	sp,sp,-32
    80004c3c:	00113c23          	sd	ra,24(sp)
    80004c40:	00813823          	sd	s0,16(sp)
    80004c44:	00913423          	sd	s1,8(sp)
    80004c48:	01213023          	sd	s2,0(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004c50:	00000493          	li	s1,0
    80004c54:	00900793          	li	a5,9
    80004c58:	0697c463          	blt	a5,s1,80004cc0 <_ZL11workerBodyHPv+0x88>
        int tid = getThreadId();
    80004c5c:	ffffd097          	auipc	ra,0xffffd
    80004c60:	2b4080e7          	jalr	692(ra) # 80001f10 <_Z11getThreadIdv>
    80004c64:	00050913          	mv	s2,a0
        printString("Thread name: h\n");
    80004c68:	00006517          	auipc	a0,0x6
    80004c6c:	0f850513          	addi	a0,a0,248 # 8000ad60 <_ZTV8Consumer+0x460>
    80004c70:	00002097          	auipc	ra,0x2
    80004c74:	0e4080e7          	jalr	228(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004c78:	00006517          	auipc	a0,0x6
    80004c7c:	09850513          	addi	a0,a0,152 # 8000ad10 <_ZTV8Consumer+0x410>
    80004c80:	00002097          	auipc	ra,0x2
    80004c84:	0d4080e7          	jalr	212(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004c88:	00000613          	li	a2,0
    80004c8c:	00a00593          	li	a1,10
    80004c90:	00090513          	mv	a0,s2
    80004c94:	00002097          	auipc	ra,0x2
    80004c98:	26c080e7          	jalr	620(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004c9c:	00005517          	auipc	a0,0x5
    80004ca0:	79c50513          	addi	a0,a0,1948 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004ca4:	00002097          	auipc	ra,0x2
    80004ca8:	0b0080e7          	jalr	176(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004cac:	03200513          	li	a0,50
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	174080e7          	jalr	372(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004cb8:	0014849b          	addiw	s1,s1,1
    80004cbc:	f99ff06f          	j	80004c54 <_ZL11workerBodyHPv+0x1c>
    finishedH = true;
    80004cc0:	00100793          	li	a5,1
    80004cc4:	00008717          	auipc	a4,0x8
    80004cc8:	58f708a3          	sb	a5,1425(a4) # 8000d255 <_ZL9finishedH>
}
    80004ccc:	01813083          	ld	ra,24(sp)
    80004cd0:	01013403          	ld	s0,16(sp)
    80004cd4:	00813483          	ld	s1,8(sp)
    80004cd8:	00013903          	ld	s2,0(sp)
    80004cdc:	02010113          	addi	sp,sp,32
    80004ce0:	00008067          	ret

0000000080004ce4 <_ZL11workerBodyGPv>:
static void workerBodyG(void* arg) {
    80004ce4:	fe010113          	addi	sp,sp,-32
    80004ce8:	00113c23          	sd	ra,24(sp)
    80004cec:	00813823          	sd	s0,16(sp)
    80004cf0:	00913423          	sd	s1,8(sp)
    80004cf4:	01213023          	sd	s2,0(sp)
    80004cf8:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004cfc:	00000493          	li	s1,0
    80004d00:	00900793          	li	a5,9
    80004d04:	0697c463          	blt	a5,s1,80004d6c <_ZL11workerBodyGPv+0x88>
        int tid = getThreadId();
    80004d08:	ffffd097          	auipc	ra,0xffffd
    80004d0c:	208080e7          	jalr	520(ra) # 80001f10 <_Z11getThreadIdv>
    80004d10:	00050913          	mv	s2,a0
        printString("Thread name: g\n");
    80004d14:	00006517          	auipc	a0,0x6
    80004d18:	05c50513          	addi	a0,a0,92 # 8000ad70 <_ZTV8Consumer+0x470>
    80004d1c:	00002097          	auipc	ra,0x2
    80004d20:	038080e7          	jalr	56(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004d24:	00006517          	auipc	a0,0x6
    80004d28:	fec50513          	addi	a0,a0,-20 # 8000ad10 <_ZTV8Consumer+0x410>
    80004d2c:	00002097          	auipc	ra,0x2
    80004d30:	028080e7          	jalr	40(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004d34:	00000613          	li	a2,0
    80004d38:	00a00593          	li	a1,10
    80004d3c:	00090513          	mv	a0,s2
    80004d40:	00002097          	auipc	ra,0x2
    80004d44:	1c0080e7          	jalr	448(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004d48:	00005517          	auipc	a0,0x5
    80004d4c:	6f050513          	addi	a0,a0,1776 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004d50:	00002097          	auipc	ra,0x2
    80004d54:	004080e7          	jalr	4(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004d58:	03200513          	li	a0,50
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	0c8080e7          	jalr	200(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004d64:	0014849b          	addiw	s1,s1,1
    80004d68:	f99ff06f          	j	80004d00 <_ZL11workerBodyGPv+0x1c>
    finishedG = true;
    80004d6c:	00100793          	li	a5,1
    80004d70:	00008717          	auipc	a4,0x8
    80004d74:	4ef70323          	sb	a5,1254(a4) # 8000d256 <_ZL9finishedG>
}
    80004d78:	01813083          	ld	ra,24(sp)
    80004d7c:	01013403          	ld	s0,16(sp)
    80004d80:	00813483          	ld	s1,8(sp)
    80004d84:	00013903          	ld	s2,0(sp)
    80004d88:	02010113          	addi	sp,sp,32
    80004d8c:	00008067          	ret

0000000080004d90 <_ZL11workerBodyFPv>:
static void workerBodyF(void* arg) {
    80004d90:	fe010113          	addi	sp,sp,-32
    80004d94:	00113c23          	sd	ra,24(sp)
    80004d98:	00813823          	sd	s0,16(sp)
    80004d9c:	00913423          	sd	s1,8(sp)
    80004da0:	01213023          	sd	s2,0(sp)
    80004da4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004da8:	00000493          	li	s1,0
    80004dac:	00900793          	li	a5,9
    80004db0:	0697c463          	blt	a5,s1,80004e18 <_ZL11workerBodyFPv+0x88>
        int tid = getThreadId();
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	15c080e7          	jalr	348(ra) # 80001f10 <_Z11getThreadIdv>
    80004dbc:	00050913          	mv	s2,a0
        printString("Thread name: f\n");
    80004dc0:	00006517          	auipc	a0,0x6
    80004dc4:	fc050513          	addi	a0,a0,-64 # 8000ad80 <_ZTV8Consumer+0x480>
    80004dc8:	00002097          	auipc	ra,0x2
    80004dcc:	f8c080e7          	jalr	-116(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004dd0:	00006517          	auipc	a0,0x6
    80004dd4:	f4050513          	addi	a0,a0,-192 # 8000ad10 <_ZTV8Consumer+0x410>
    80004dd8:	00002097          	auipc	ra,0x2
    80004ddc:	f7c080e7          	jalr	-132(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004de0:	00000613          	li	a2,0
    80004de4:	00a00593          	li	a1,10
    80004de8:	00090513          	mv	a0,s2
    80004dec:	00002097          	auipc	ra,0x2
    80004df0:	114080e7          	jalr	276(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004df4:	00005517          	auipc	a0,0x5
    80004df8:	64450513          	addi	a0,a0,1604 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004dfc:	00002097          	auipc	ra,0x2
    80004e00:	f58080e7          	jalr	-168(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004e04:	03200513          	li	a0,50
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	01c080e7          	jalr	28(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004e10:	0014849b          	addiw	s1,s1,1
    80004e14:	f99ff06f          	j	80004dac <_ZL11workerBodyFPv+0x1c>
    finishedF = true;
    80004e18:	00100793          	li	a5,1
    80004e1c:	00008717          	auipc	a4,0x8
    80004e20:	42f70da3          	sb	a5,1083(a4) # 8000d257 <_ZL9finishedF>
}
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	01013403          	ld	s0,16(sp)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	00013903          	ld	s2,0(sp)
    80004e34:	02010113          	addi	sp,sp,32
    80004e38:	00008067          	ret

0000000080004e3c <_ZL11workerBodyEPv>:
static void workerBodyE(void* arg) {
    80004e3c:	fe010113          	addi	sp,sp,-32
    80004e40:	00113c23          	sd	ra,24(sp)
    80004e44:	00813823          	sd	s0,16(sp)
    80004e48:	00913423          	sd	s1,8(sp)
    80004e4c:	01213023          	sd	s2,0(sp)
    80004e50:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004e54:	00000493          	li	s1,0
    80004e58:	00900793          	li	a5,9
    80004e5c:	0697c463          	blt	a5,s1,80004ec4 <_ZL11workerBodyEPv+0x88>
        int tid = getThreadId();
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	0b0080e7          	jalr	176(ra) # 80001f10 <_Z11getThreadIdv>
    80004e68:	00050913          	mv	s2,a0
        printString("Thread name: e\n");
    80004e6c:	00006517          	auipc	a0,0x6
    80004e70:	f2450513          	addi	a0,a0,-220 # 8000ad90 <_ZTV8Consumer+0x490>
    80004e74:	00002097          	auipc	ra,0x2
    80004e78:	ee0080e7          	jalr	-288(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004e7c:	00006517          	auipc	a0,0x6
    80004e80:	e9450513          	addi	a0,a0,-364 # 8000ad10 <_ZTV8Consumer+0x410>
    80004e84:	00002097          	auipc	ra,0x2
    80004e88:	ed0080e7          	jalr	-304(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004e8c:	00000613          	li	a2,0
    80004e90:	00a00593          	li	a1,10
    80004e94:	00090513          	mv	a0,s2
    80004e98:	00002097          	auipc	ra,0x2
    80004e9c:	068080e7          	jalr	104(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004ea0:	00005517          	auipc	a0,0x5
    80004ea4:	59850513          	addi	a0,a0,1432 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004ea8:	00002097          	auipc	ra,0x2
    80004eac:	eac080e7          	jalr	-340(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004eb0:	03200513          	li	a0,50
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	f70080e7          	jalr	-144(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004ebc:	0014849b          	addiw	s1,s1,1
    80004ec0:	f99ff06f          	j	80004e58 <_ZL11workerBodyEPv+0x1c>
    finishedE = true;
    80004ec4:	00100793          	li	a5,1
    80004ec8:	00008717          	auipc	a4,0x8
    80004ecc:	38f70823          	sb	a5,912(a4) # 8000d258 <_ZL9finishedE>
}
    80004ed0:	01813083          	ld	ra,24(sp)
    80004ed4:	01013403          	ld	s0,16(sp)
    80004ed8:	00813483          	ld	s1,8(sp)
    80004edc:	00013903          	ld	s2,0(sp)
    80004ee0:	02010113          	addi	sp,sp,32
    80004ee4:	00008067          	ret

0000000080004ee8 <_ZL11workerBodyDPv>:
static void workerBodyD(void* arg) {
    80004ee8:	fe010113          	addi	sp,sp,-32
    80004eec:	00113c23          	sd	ra,24(sp)
    80004ef0:	00813823          	sd	s0,16(sp)
    80004ef4:	00913423          	sd	s1,8(sp)
    80004ef8:	01213023          	sd	s2,0(sp)
    80004efc:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004f00:	00000493          	li	s1,0
    80004f04:	00900793          	li	a5,9
    80004f08:	0697c463          	blt	a5,s1,80004f70 <_ZL11workerBodyDPv+0x88>
        int tid = getThreadId();
    80004f0c:	ffffd097          	auipc	ra,0xffffd
    80004f10:	004080e7          	jalr	4(ra) # 80001f10 <_Z11getThreadIdv>
    80004f14:	00050913          	mv	s2,a0
        printString("Thread name: d\n");
    80004f18:	00006517          	auipc	a0,0x6
    80004f1c:	e8850513          	addi	a0,a0,-376 # 8000ada0 <_ZTV8Consumer+0x4a0>
    80004f20:	00002097          	auipc	ra,0x2
    80004f24:	e34080e7          	jalr	-460(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004f28:	00006517          	auipc	a0,0x6
    80004f2c:	de850513          	addi	a0,a0,-536 # 8000ad10 <_ZTV8Consumer+0x410>
    80004f30:	00002097          	auipc	ra,0x2
    80004f34:	e24080e7          	jalr	-476(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004f38:	00000613          	li	a2,0
    80004f3c:	00a00593          	li	a1,10
    80004f40:	00090513          	mv	a0,s2
    80004f44:	00002097          	auipc	ra,0x2
    80004f48:	fbc080e7          	jalr	-68(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004f4c:	00005517          	auipc	a0,0x5
    80004f50:	4ec50513          	addi	a0,a0,1260 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80004f54:	00002097          	auipc	ra,0x2
    80004f58:	e00080e7          	jalr	-512(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80004f5c:	03200513          	li	a0,50
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	ec4080e7          	jalr	-316(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80004f68:	0014849b          	addiw	s1,s1,1
    80004f6c:	f99ff06f          	j	80004f04 <_ZL11workerBodyDPv+0x1c>
    finishedD = true;
    80004f70:	00100793          	li	a5,1
    80004f74:	00008717          	auipc	a4,0x8
    80004f78:	2ef702a3          	sb	a5,741(a4) # 8000d259 <_ZL9finishedD>
}
    80004f7c:	01813083          	ld	ra,24(sp)
    80004f80:	01013403          	ld	s0,16(sp)
    80004f84:	00813483          	ld	s1,8(sp)
    80004f88:	00013903          	ld	s2,0(sp)
    80004f8c:	02010113          	addi	sp,sp,32
    80004f90:	00008067          	ret

0000000080004f94 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004f94:	fe010113          	addi	sp,sp,-32
    80004f98:	00113c23          	sd	ra,24(sp)
    80004f9c:	00813823          	sd	s0,16(sp)
    80004fa0:	00913423          	sd	s1,8(sp)
    80004fa4:	01213023          	sd	s2,0(sp)
    80004fa8:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80004fac:	00000493          	li	s1,0
    80004fb0:	00900793          	li	a5,9
    80004fb4:	0697c463          	blt	a5,s1,8000501c <_ZL11workerBodyCPv+0x88>
        int tid = getThreadId();
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	f58080e7          	jalr	-168(ra) # 80001f10 <_Z11getThreadIdv>
    80004fc0:	00050913          	mv	s2,a0
        printString("Thread name: c\n");
    80004fc4:	00006517          	auipc	a0,0x6
    80004fc8:	dec50513          	addi	a0,a0,-532 # 8000adb0 <_ZTV8Consumer+0x4b0>
    80004fcc:	00002097          	auipc	ra,0x2
    80004fd0:	d88080e7          	jalr	-632(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80004fd4:	00006517          	auipc	a0,0x6
    80004fd8:	d3c50513          	addi	a0,a0,-708 # 8000ad10 <_ZTV8Consumer+0x410>
    80004fdc:	00002097          	auipc	ra,0x2
    80004fe0:	d78080e7          	jalr	-648(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80004fe4:	00000613          	li	a2,0
    80004fe8:	00a00593          	li	a1,10
    80004fec:	00090513          	mv	a0,s2
    80004ff0:	00002097          	auipc	ra,0x2
    80004ff4:	f10080e7          	jalr	-240(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80004ff8:	00005517          	auipc	a0,0x5
    80004ffc:	44050513          	addi	a0,a0,1088 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005000:	00002097          	auipc	ra,0x2
    80005004:	d54080e7          	jalr	-684(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80005008:	03200513          	li	a0,50
    8000500c:	ffffd097          	auipc	ra,0xffffd
    80005010:	e18080e7          	jalr	-488(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    80005014:	0014849b          	addiw	s1,s1,1
    80005018:	f99ff06f          	j	80004fb0 <_ZL11workerBodyCPv+0x1c>
    finishedC = true;
    8000501c:	00100793          	li	a5,1
    80005020:	00008717          	auipc	a4,0x8
    80005024:	22f70d23          	sb	a5,570(a4) # 8000d25a <_ZL9finishedC>
}
    80005028:	01813083          	ld	ra,24(sp)
    8000502c:	01013403          	ld	s0,16(sp)
    80005030:	00813483          	ld	s1,8(sp)
    80005034:	00013903          	ld	s2,0(sp)
    80005038:	02010113          	addi	sp,sp,32
    8000503c:	00008067          	ret

0000000080005040 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005040:	fe010113          	addi	sp,sp,-32
    80005044:	00113c23          	sd	ra,24(sp)
    80005048:	00813823          	sd	s0,16(sp)
    8000504c:	00913423          	sd	s1,8(sp)
    80005050:	01213023          	sd	s2,0(sp)
    80005054:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80005058:	00000493          	li	s1,0
    8000505c:	00900793          	li	a5,9
    80005060:	0697c463          	blt	a5,s1,800050c8 <_ZL11workerBodyBPv+0x88>
    int tid = getThreadId();
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	eac080e7          	jalr	-340(ra) # 80001f10 <_Z11getThreadIdv>
    8000506c:	00050913          	mv	s2,a0
    printString("Thread name: b\n");
    80005070:	00006517          	auipc	a0,0x6
    80005074:	d5050513          	addi	a0,a0,-688 # 8000adc0 <_ZTV8Consumer+0x4c0>
    80005078:	00002097          	auipc	ra,0x2
    8000507c:	cdc080e7          	jalr	-804(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    80005080:	00006517          	auipc	a0,0x6
    80005084:	c9050513          	addi	a0,a0,-880 # 8000ad10 <_ZTV8Consumer+0x410>
    80005088:	00002097          	auipc	ra,0x2
    8000508c:	ccc080e7          	jalr	-820(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    80005090:	00000613          	li	a2,0
    80005094:	00a00593          	li	a1,10
    80005098:	00090513          	mv	a0,s2
    8000509c:	00002097          	auipc	ra,0x2
    800050a0:	e64080e7          	jalr	-412(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    800050a4:	00005517          	auipc	a0,0x5
    800050a8:	39450513          	addi	a0,a0,916 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800050ac:	00002097          	auipc	ra,0x2
    800050b0:	ca8080e7          	jalr	-856(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    800050b4:	03200513          	li	a0,50
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	d6c080e7          	jalr	-660(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    800050c0:	0014849b          	addiw	s1,s1,1
    800050c4:	f99ff06f          	j	8000505c <_ZL11workerBodyBPv+0x1c>
    finishedB = true;
    800050c8:	00100793          	li	a5,1
    800050cc:	00008717          	auipc	a4,0x8
    800050d0:	18f707a3          	sb	a5,399(a4) # 8000d25b <_ZL9finishedB>
}
    800050d4:	01813083          	ld	ra,24(sp)
    800050d8:	01013403          	ld	s0,16(sp)
    800050dc:	00813483          	ld	s1,8(sp)
    800050e0:	00013903          	ld	s2,0(sp)
    800050e4:	02010113          	addi	sp,sp,32
    800050e8:	00008067          	ret

00000000800050ec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800050ec:	fe010113          	addi	sp,sp,-32
    800050f0:	00113c23          	sd	ra,24(sp)
    800050f4:	00813823          	sd	s0,16(sp)
    800050f8:	00913423          	sd	s1,8(sp)
    800050fc:	01213023          	sd	s2,0(sp)
    80005100:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80005104:	00000493          	li	s1,0
    80005108:	00900793          	li	a5,9
    8000510c:	0697c463          	blt	a5,s1,80005174 <_ZL11workerBodyAPv+0x88>
        int tid = getThreadId();
    80005110:	ffffd097          	auipc	ra,0xffffd
    80005114:	e00080e7          	jalr	-512(ra) # 80001f10 <_Z11getThreadIdv>
    80005118:	00050913          	mv	s2,a0
        printString("Thread name: a\n");
    8000511c:	00006517          	auipc	a0,0x6
    80005120:	cb450513          	addi	a0,a0,-844 # 8000add0 <_ZTV8Consumer+0x4d0>
    80005124:	00002097          	auipc	ra,0x2
    80005128:	c30080e7          	jalr	-976(ra) # 80006d54 <_Z11printStringPKc>
        printString("Thread ID: ");
    8000512c:	00006517          	auipc	a0,0x6
    80005130:	be450513          	addi	a0,a0,-1052 # 8000ad10 <_ZTV8Consumer+0x410>
    80005134:	00002097          	auipc	ra,0x2
    80005138:	c20080e7          	jalr	-992(ra) # 80006d54 <_Z11printStringPKc>
        printInt(tid);
    8000513c:	00000613          	li	a2,0
    80005140:	00a00593          	li	a1,10
    80005144:	00090513          	mv	a0,s2
    80005148:	00002097          	auipc	ra,0x2
    8000514c:	db8080e7          	jalr	-584(ra) # 80006f00 <_Z8printIntiii>
        printString("\n");
    80005150:	00005517          	auipc	a0,0x5
    80005154:	2e850513          	addi	a0,a0,744 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005158:	00002097          	auipc	ra,0x2
    8000515c:	bfc080e7          	jalr	-1028(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(50);
    80005160:	03200513          	li	a0,50
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	cc0080e7          	jalr	-832(ra) # 80001e24 <_Z10time_sleepm>
    for (int i = 0; i < 10; i++) {
    8000516c:	0014849b          	addiw	s1,s1,1
    80005170:	f99ff06f          	j	80005108 <_ZL11workerBodyAPv+0x1c>
    finishedA = true;
    80005174:	00100793          	li	a5,1
    80005178:	00008717          	auipc	a4,0x8
    8000517c:	0ef70223          	sb	a5,228(a4) # 8000d25c <_ZL9finishedA>
}
    80005180:	01813083          	ld	ra,24(sp)
    80005184:	01013403          	ld	s0,16(sp)
    80005188:	00813483          	ld	s1,8(sp)
    8000518c:	00013903          	ld	s2,0(sp)
    80005190:	02010113          	addi	sp,sp,32
    80005194:	00008067          	ret

0000000080005198 <_Z15getThreadIdTestv>:
 
void getThreadIdTest() {
    80005198:	f8010113          	addi	sp,sp,-128
    8000519c:	06113c23          	sd	ra,120(sp)
    800051a0:	06813823          	sd	s0,112(sp)
    800051a4:	08010413          	addi	s0,sp,128
    thread_t threads[13];

    thread_create(&threads[0], workerBodyA, nullptr);
    800051a8:	00000613          	li	a2,0
    800051ac:	00000597          	auipc	a1,0x0
    800051b0:	f4058593          	addi	a1,a1,-192 # 800050ec <_ZL11workerBodyAPv>
    800051b4:	f8840513          	addi	a0,s0,-120
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	98c080e7          	jalr	-1652(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800051c0:	00005517          	auipc	a0,0x5
    800051c4:	65850513          	addi	a0,a0,1624 # 8000a818 <_ZZ24debug_print_internal_intmE6digits+0x4e0>
    800051c8:	00002097          	auipc	ra,0x2
    800051cc:	b8c080e7          	jalr	-1140(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800051d0:	00000613          	li	a2,0
    800051d4:	00000597          	auipc	a1,0x0
    800051d8:	e6c58593          	addi	a1,a1,-404 # 80005040 <_ZL11workerBodyBPv>
    800051dc:	f9040513          	addi	a0,s0,-112
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	964080e7          	jalr	-1692(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800051e8:	00005517          	auipc	a0,0x5
    800051ec:	64850513          	addi	a0,a0,1608 # 8000a830 <_ZZ24debug_print_internal_intmE6digits+0x4f8>
    800051f0:	00002097          	auipc	ra,0x2
    800051f4:	b64080e7          	jalr	-1180(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800051f8:	00000613          	li	a2,0
    800051fc:	00000597          	auipc	a1,0x0
    80005200:	d9858593          	addi	a1,a1,-616 # 80004f94 <_ZL11workerBodyCPv>
    80005204:	f9840513          	addi	a0,s0,-104
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	93c080e7          	jalr	-1732(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005210:	00005517          	auipc	a0,0x5
    80005214:	63850513          	addi	a0,a0,1592 # 8000a848 <_ZZ24debug_print_internal_intmE6digits+0x510>
    80005218:	00002097          	auipc	ra,0x2
    8000521c:	b3c080e7          	jalr	-1220(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005220:	00000613          	li	a2,0
    80005224:	00000597          	auipc	a1,0x0
    80005228:	cc458593          	addi	a1,a1,-828 # 80004ee8 <_ZL11workerBodyDPv>
    8000522c:	fa040513          	addi	a0,s0,-96
    80005230:	ffffd097          	auipc	ra,0xffffd
    80005234:	914080e7          	jalr	-1772(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005238:	00005517          	auipc	a0,0x5
    8000523c:	62850513          	addi	a0,a0,1576 # 8000a860 <_ZZ24debug_print_internal_intmE6digits+0x528>
    80005240:	00002097          	auipc	ra,0x2
    80005244:	b14080e7          	jalr	-1260(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[4], workerBodyE, nullptr);
    80005248:	00000613          	li	a2,0
    8000524c:	00000597          	auipc	a1,0x0
    80005250:	bf058593          	addi	a1,a1,-1040 # 80004e3c <_ZL11workerBodyEPv>
    80005254:	fa840513          	addi	a0,s0,-88
    80005258:	ffffd097          	auipc	ra,0xffffd
    8000525c:	8ec080e7          	jalr	-1812(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadE created\n");
    80005260:	00006517          	auipc	a0,0x6
    80005264:	b8050513          	addi	a0,a0,-1152 # 8000ade0 <_ZTV8Consumer+0x4e0>
    80005268:	00002097          	auipc	ra,0x2
    8000526c:	aec080e7          	jalr	-1300(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[5], workerBodyF, nullptr);
    80005270:	00000613          	li	a2,0
    80005274:	00000597          	auipc	a1,0x0
    80005278:	b1c58593          	addi	a1,a1,-1252 # 80004d90 <_ZL11workerBodyFPv>
    8000527c:	fb040513          	addi	a0,s0,-80
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	8c4080e7          	jalr	-1852(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadF created\n");
    80005288:	00006517          	auipc	a0,0x6
    8000528c:	b7050513          	addi	a0,a0,-1168 # 8000adf8 <_ZTV8Consumer+0x4f8>
    80005290:	00002097          	auipc	ra,0x2
    80005294:	ac4080e7          	jalr	-1340(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[6], workerBodyG, nullptr);
    80005298:	00000613          	li	a2,0
    8000529c:	00000597          	auipc	a1,0x0
    800052a0:	a4858593          	addi	a1,a1,-1464 # 80004ce4 <_ZL11workerBodyGPv>
    800052a4:	fb840513          	addi	a0,s0,-72
    800052a8:	ffffd097          	auipc	ra,0xffffd
    800052ac:	89c080e7          	jalr	-1892(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadG created\n");
    800052b0:	00006517          	auipc	a0,0x6
    800052b4:	b6050513          	addi	a0,a0,-1184 # 8000ae10 <_ZTV8Consumer+0x510>
    800052b8:	00002097          	auipc	ra,0x2
    800052bc:	a9c080e7          	jalr	-1380(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[7], workerBodyH, nullptr);
    800052c0:	00000613          	li	a2,0
    800052c4:	00000597          	auipc	a1,0x0
    800052c8:	97458593          	addi	a1,a1,-1676 # 80004c38 <_ZL11workerBodyHPv>
    800052cc:	fc040513          	addi	a0,s0,-64
    800052d0:	ffffd097          	auipc	ra,0xffffd
    800052d4:	874080e7          	jalr	-1932(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadH created\n");
    800052d8:	00006517          	auipc	a0,0x6
    800052dc:	b5050513          	addi	a0,a0,-1200 # 8000ae28 <_ZTV8Consumer+0x528>
    800052e0:	00002097          	auipc	ra,0x2
    800052e4:	a74080e7          	jalr	-1420(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[8], workerBodyI, nullptr);
    800052e8:	00000613          	li	a2,0
    800052ec:	00000597          	auipc	a1,0x0
    800052f0:	8a058593          	addi	a1,a1,-1888 # 80004b8c <_ZL11workerBodyIPv>
    800052f4:	fc840513          	addi	a0,s0,-56
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	84c080e7          	jalr	-1972(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadI created\n");
    80005300:	00006517          	auipc	a0,0x6
    80005304:	b4050513          	addi	a0,a0,-1216 # 8000ae40 <_ZTV8Consumer+0x540>
    80005308:	00002097          	auipc	ra,0x2
    8000530c:	a4c080e7          	jalr	-1460(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[9], workerBodyJ, nullptr);
    80005310:	00000613          	li	a2,0
    80005314:	fffff597          	auipc	a1,0xfffff
    80005318:	7cc58593          	addi	a1,a1,1996 # 80004ae0 <_ZL11workerBodyJPv>
    8000531c:	fd040513          	addi	a0,s0,-48
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	824080e7          	jalr	-2012(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadJ created\n");
    80005328:	00006517          	auipc	a0,0x6
    8000532c:	b3050513          	addi	a0,a0,-1232 # 8000ae58 <_ZTV8Consumer+0x558>
    80005330:	00002097          	auipc	ra,0x2
    80005334:	a24080e7          	jalr	-1500(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[10], workerBodyK, nullptr);
    80005338:	00000613          	li	a2,0
    8000533c:	fffff597          	auipc	a1,0xfffff
    80005340:	6f858593          	addi	a1,a1,1784 # 80004a34 <_ZL11workerBodyKPv>
    80005344:	fd840513          	addi	a0,s0,-40
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	7fc080e7          	jalr	2044(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadK created\n");
    80005350:	00006517          	auipc	a0,0x6
    80005354:	b2050513          	addi	a0,a0,-1248 # 8000ae70 <_ZTV8Consumer+0x570>
    80005358:	00002097          	auipc	ra,0x2
    8000535c:	9fc080e7          	jalr	-1540(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[11], workerBodyL, nullptr);
    80005360:	00000613          	li	a2,0
    80005364:	fffff597          	auipc	a1,0xfffff
    80005368:	62458593          	addi	a1,a1,1572 # 80004988 <_ZL11workerBodyLPv>
    8000536c:	fe040513          	addi	a0,s0,-32
    80005370:	ffffc097          	auipc	ra,0xffffc
    80005374:	7d4080e7          	jalr	2004(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadL created\n");
    80005378:	00006517          	auipc	a0,0x6
    8000537c:	b1050513          	addi	a0,a0,-1264 # 8000ae88 <_ZTV8Consumer+0x588>
    80005380:	00002097          	auipc	ra,0x2
    80005384:	9d4080e7          	jalr	-1580(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[12], workerBodyM, nullptr);
    80005388:	00000613          	li	a2,0
    8000538c:	fffff597          	auipc	a1,0xfffff
    80005390:	55058593          	addi	a1,a1,1360 # 800048dc <_ZL11workerBodyMPv>
    80005394:	fe840513          	addi	a0,s0,-24
    80005398:	ffffc097          	auipc	ra,0xffffc
    8000539c:	7ac080e7          	jalr	1964(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadM created\n");
    800053a0:	00006517          	auipc	a0,0x6
    800053a4:	b0050513          	addi	a0,a0,-1280 # 8000aea0 <_ZTV8Consumer+0x5a0>
    800053a8:	00002097          	auipc	ra,0x2
    800053ac:	9ac080e7          	jalr	-1620(ra) # 80006d54 <_Z11printStringPKc>
    800053b0:	00c0006f          	j	800053bc <_Z15getThreadIdTestv+0x224>

    while (!(finishedA && finishedB && finishedC && finishedD && finishedE && finishedF && finishedG && finishedH && finishedI && finishedJ && finishedK && finishedL && finishedM)) {
        thread_dispatch();
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	840080e7          	jalr	-1984(ra) # 80001bf4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD && finishedE && finishedF && finishedG && finishedH && finishedI && finishedJ && finishedK && finishedL && finishedM)) {
    800053bc:	00008797          	auipc	a5,0x8
    800053c0:	ea078793          	addi	a5,a5,-352 # 8000d25c <_ZL9finishedA>
    800053c4:	0007c783          	lbu	a5,0(a5)
    800053c8:	0ff7f793          	andi	a5,a5,255
    800053cc:	fe0784e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    800053d0:	00008797          	auipc	a5,0x8
    800053d4:	e8b78793          	addi	a5,a5,-373 # 8000d25b <_ZL9finishedB>
    800053d8:	0007c783          	lbu	a5,0(a5)
    800053dc:	0ff7f793          	andi	a5,a5,255
    800053e0:	fc078ae3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    800053e4:	00008797          	auipc	a5,0x8
    800053e8:	e7678793          	addi	a5,a5,-394 # 8000d25a <_ZL9finishedC>
    800053ec:	0007c783          	lbu	a5,0(a5)
    800053f0:	0ff7f793          	andi	a5,a5,255
    800053f4:	fc0780e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    800053f8:	00008797          	auipc	a5,0x8
    800053fc:	e6178793          	addi	a5,a5,-415 # 8000d259 <_ZL9finishedD>
    80005400:	0007c783          	lbu	a5,0(a5)
    80005404:	0ff7f793          	andi	a5,a5,255
    80005408:	fa0786e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    8000540c:	00008797          	auipc	a5,0x8
    80005410:	e4c78793          	addi	a5,a5,-436 # 8000d258 <_ZL9finishedE>
    80005414:	0007c783          	lbu	a5,0(a5)
    80005418:	0ff7f793          	andi	a5,a5,255
    8000541c:	f8078ce3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    80005420:	00008797          	auipc	a5,0x8
    80005424:	e3778793          	addi	a5,a5,-457 # 8000d257 <_ZL9finishedF>
    80005428:	0007c783          	lbu	a5,0(a5)
    8000542c:	0ff7f793          	andi	a5,a5,255
    80005430:	f80782e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    80005434:	00008797          	auipc	a5,0x8
    80005438:	e2278793          	addi	a5,a5,-478 # 8000d256 <_ZL9finishedG>
    8000543c:	0007c783          	lbu	a5,0(a5)
    80005440:	0ff7f793          	andi	a5,a5,255
    80005444:	f60788e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    80005448:	00008797          	auipc	a5,0x8
    8000544c:	e0d78793          	addi	a5,a5,-499 # 8000d255 <_ZL9finishedH>
    80005450:	0007c783          	lbu	a5,0(a5)
    80005454:	0ff7f793          	andi	a5,a5,255
    80005458:	f4078ee3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    8000545c:	00008797          	auipc	a5,0x8
    80005460:	df878793          	addi	a5,a5,-520 # 8000d254 <_ZL9finishedI>
    80005464:	0007c783          	lbu	a5,0(a5)
    80005468:	0ff7f793          	andi	a5,a5,255
    8000546c:	f40784e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    80005470:	00008797          	auipc	a5,0x8
    80005474:	de378793          	addi	a5,a5,-541 # 8000d253 <_ZL9finishedJ>
    80005478:	0007c783          	lbu	a5,0(a5)
    8000547c:	0ff7f793          	andi	a5,a5,255
    80005480:	f2078ae3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    80005484:	00008797          	auipc	a5,0x8
    80005488:	dce78793          	addi	a5,a5,-562 # 8000d252 <_ZL9finishedK>
    8000548c:	0007c783          	lbu	a5,0(a5)
    80005490:	0ff7f793          	andi	a5,a5,255
    80005494:	f20780e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    80005498:	00008797          	auipc	a5,0x8
    8000549c:	db978793          	addi	a5,a5,-583 # 8000d251 <_ZL9finishedL>
    800054a0:	0007c783          	lbu	a5,0(a5)
    800054a4:	0ff7f793          	andi	a5,a5,255
    800054a8:	f00786e3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    800054ac:	00008797          	auipc	a5,0x8
    800054b0:	da478793          	addi	a5,a5,-604 # 8000d250 <_ZL9finishedM>
    800054b4:	0007c783          	lbu	a5,0(a5)
    800054b8:	0ff7f793          	andi	a5,a5,255
    800054bc:	ee078ce3          	beqz	a5,800053b4 <_Z15getThreadIdTestv+0x21c>
    }
}
    800054c0:	07813083          	ld	ra,120(sp)
    800054c4:	07013403          	ld	s0,112(sp)
    800054c8:	08010113          	addi	sp,sp,128
    800054cc:	00008067          	ret

00000000800054d0 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800054d0:	00100793          	li	a5,1
    800054d4:	06a7f863          	bgeu	a5,a0,80005544 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800054d8:	fe010113          	addi	sp,sp,-32
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	00813823          	sd	s0,16(sp)
    800054e4:	00913423          	sd	s1,8(sp)
    800054e8:	01213023          	sd	s2,0(sp)
    800054ec:	02010413          	addi	s0,sp,32
    800054f0:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    800054f4:	00a00793          	li	a5,10
    800054f8:	02f577b3          	remu	a5,a0,a5
    800054fc:	02078e63          	beqz	a5,80005538 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005500:	fff48513          	addi	a0,s1,-1
    80005504:	00000097          	auipc	ra,0x0
    80005508:	fcc080e7          	jalr	-52(ra) # 800054d0 <_ZL9fibonaccim>
    8000550c:	00050913          	mv	s2,a0
    80005510:	ffe48513          	addi	a0,s1,-2
    80005514:	00000097          	auipc	ra,0x0
    80005518:	fbc080e7          	jalr	-68(ra) # 800054d0 <_ZL9fibonaccim>
    8000551c:	00a90533          	add	a0,s2,a0
}
    80005520:	01813083          	ld	ra,24(sp)
    80005524:	01013403          	ld	s0,16(sp)
    80005528:	00813483          	ld	s1,8(sp)
    8000552c:	00013903          	ld	s2,0(sp)
    80005530:	02010113          	addi	sp,sp,32
    80005534:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	6bc080e7          	jalr	1724(ra) # 80001bf4 <_Z15thread_dispatchv>
    80005540:	fc1ff06f          	j	80005500 <_ZL9fibonaccim+0x30>
}
    80005544:	00008067          	ret

0000000080005548 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80005548:	fe010113          	addi	sp,sp,-32
    8000554c:	00113c23          	sd	ra,24(sp)
    80005550:	00813823          	sd	s0,16(sp)
    80005554:	00913423          	sd	s1,8(sp)
    80005558:	01213023          	sd	s2,0(sp)
    8000555c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005560:	00000913          	li	s2,0
    80005564:	0380006f          	j	8000559c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	68c080e7          	jalr	1676(ra) # 80001bf4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005570:	00148493          	addi	s1,s1,1
    80005574:	000027b7          	lui	a5,0x2
    80005578:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000557c:	0097ee63          	bltu	a5,s1,80005598 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005580:	00000713          	li	a4,0
    80005584:	000077b7          	lui	a5,0x7
    80005588:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000558c:	fce7eee3          	bltu	a5,a4,80005568 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80005590:	00170713          	addi	a4,a4,1
    80005594:	ff1ff06f          	j	80005584 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005598:	00190913          	addi	s2,s2,1
    8000559c:	00900793          	li	a5,9
    800055a0:	0527e063          	bltu	a5,s2,800055e0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800055a4:	00005517          	auipc	a0,0x5
    800055a8:	dbc50513          	addi	a0,a0,-580 # 8000a360 <_ZZ24debug_print_internal_intmE6digits+0x28>
    800055ac:	00001097          	auipc	ra,0x1
    800055b0:	7a8080e7          	jalr	1960(ra) # 80006d54 <_Z11printStringPKc>
    800055b4:	00000613          	li	a2,0
    800055b8:	00a00593          	li	a1,10
    800055bc:	0009051b          	sext.w	a0,s2
    800055c0:	00002097          	auipc	ra,0x2
    800055c4:	940080e7          	jalr	-1728(ra) # 80006f00 <_Z8printIntiii>
    800055c8:	00005517          	auipc	a0,0x5
    800055cc:	e7050513          	addi	a0,a0,-400 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800055d0:	00001097          	auipc	ra,0x1
    800055d4:	784080e7          	jalr	1924(ra) # 80006d54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800055d8:	00000493          	li	s1,0
    800055dc:	f99ff06f          	j	80005574 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800055e0:	00005517          	auipc	a0,0x5
    800055e4:	21850513          	addi	a0,a0,536 # 8000a7f8 <_ZZ24debug_print_internal_intmE6digits+0x4c0>
    800055e8:	00001097          	auipc	ra,0x1
    800055ec:	76c080e7          	jalr	1900(ra) # 80006d54 <_Z11printStringPKc>
    finishedA = true;
    800055f0:	00100793          	li	a5,1
    800055f4:	00008717          	auipc	a4,0x8
    800055f8:	c6f70623          	sb	a5,-916(a4) # 8000d260 <_ZL9finishedA>
}
    800055fc:	01813083          	ld	ra,24(sp)
    80005600:	01013403          	ld	s0,16(sp)
    80005604:	00813483          	ld	s1,8(sp)
    80005608:	00013903          	ld	s2,0(sp)
    8000560c:	02010113          	addi	sp,sp,32
    80005610:	00008067          	ret

0000000080005614 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80005614:	fe010113          	addi	sp,sp,-32
    80005618:	00113c23          	sd	ra,24(sp)
    8000561c:	00813823          	sd	s0,16(sp)
    80005620:	00913423          	sd	s1,8(sp)
    80005624:	01213023          	sd	s2,0(sp)
    80005628:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000562c:	00000913          	li	s2,0
    80005630:	0380006f          	j	80005668 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005634:	ffffc097          	auipc	ra,0xffffc
    80005638:	5c0080e7          	jalr	1472(ra) # 80001bf4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000563c:	00148493          	addi	s1,s1,1
    80005640:	000027b7          	lui	a5,0x2
    80005644:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005648:	0097ee63          	bltu	a5,s1,80005664 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000564c:	00000713          	li	a4,0
    80005650:	000077b7          	lui	a5,0x7
    80005654:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005658:	fce7eee3          	bltu	a5,a4,80005634 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000565c:	00170713          	addi	a4,a4,1
    80005660:	ff1ff06f          	j	80005650 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005664:	00190913          	addi	s2,s2,1
    80005668:	00f00793          	li	a5,15
    8000566c:	0527e063          	bltu	a5,s2,800056ac <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005670:	00005517          	auipc	a0,0x5
    80005674:	cf850513          	addi	a0,a0,-776 # 8000a368 <_ZZ24debug_print_internal_intmE6digits+0x30>
    80005678:	00001097          	auipc	ra,0x1
    8000567c:	6dc080e7          	jalr	1756(ra) # 80006d54 <_Z11printStringPKc>
    80005680:	00000613          	li	a2,0
    80005684:	00a00593          	li	a1,10
    80005688:	0009051b          	sext.w	a0,s2
    8000568c:	00002097          	auipc	ra,0x2
    80005690:	874080e7          	jalr	-1932(ra) # 80006f00 <_Z8printIntiii>
    80005694:	00005517          	auipc	a0,0x5
    80005698:	da450513          	addi	a0,a0,-604 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    8000569c:	00001097          	auipc	ra,0x1
    800056a0:	6b8080e7          	jalr	1720(ra) # 80006d54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056a4:	00000493          	li	s1,0
    800056a8:	f99ff06f          	j	80005640 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800056ac:	00005517          	auipc	a0,0x5
    800056b0:	15c50513          	addi	a0,a0,348 # 8000a808 <_ZZ24debug_print_internal_intmE6digits+0x4d0>
    800056b4:	00001097          	auipc	ra,0x1
    800056b8:	6a0080e7          	jalr	1696(ra) # 80006d54 <_Z11printStringPKc>
    finishedB = true;
    800056bc:	00100793          	li	a5,1
    800056c0:	00008717          	auipc	a4,0x8
    800056c4:	b8f70fa3          	sb	a5,-1121(a4) # 8000d25f <_ZL9finishedB>
    thread_dispatch();
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	52c080e7          	jalr	1324(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    800056d0:	01813083          	ld	ra,24(sp)
    800056d4:	01013403          	ld	s0,16(sp)
    800056d8:	00813483          	ld	s1,8(sp)
    800056dc:	00013903          	ld	s2,0(sp)
    800056e0:	02010113          	addi	sp,sp,32
    800056e4:	00008067          	ret

00000000800056e8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800056e8:	fe010113          	addi	sp,sp,-32
    800056ec:	00113c23          	sd	ra,24(sp)
    800056f0:	00813823          	sd	s0,16(sp)
    800056f4:	00913423          	sd	s1,8(sp)
    800056f8:	01213023          	sd	s2,0(sp)
    800056fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005700:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80005704:	00200793          	li	a5,2
    80005708:	0497e263          	bltu	a5,s1,8000574c <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    8000570c:	00005517          	auipc	a0,0x5
    80005710:	0bc50513          	addi	a0,a0,188 # 8000a7c8 <_ZZ24debug_print_internal_intmE6digits+0x490>
    80005714:	00001097          	auipc	ra,0x1
    80005718:	640080e7          	jalr	1600(ra) # 80006d54 <_Z11printStringPKc>
    8000571c:	00000613          	li	a2,0
    80005720:	00a00593          	li	a1,10
    80005724:	00048513          	mv	a0,s1
    80005728:	00001097          	auipc	ra,0x1
    8000572c:	7d8080e7          	jalr	2008(ra) # 80006f00 <_Z8printIntiii>
    80005730:	00005517          	auipc	a0,0x5
    80005734:	d0850513          	addi	a0,a0,-760 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005738:	00001097          	auipc	ra,0x1
    8000573c:	61c080e7          	jalr	1564(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005740:	0014849b          	addiw	s1,s1,1
    80005744:	0ff4f493          	andi	s1,s1,255
    80005748:	fbdff06f          	j	80005704 <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    8000574c:	00005517          	auipc	a0,0x5
    80005750:	08450513          	addi	a0,a0,132 # 8000a7d0 <_ZZ24debug_print_internal_intmE6digits+0x498>
    80005754:	00001097          	auipc	ra,0x1
    80005758:	600080e7          	jalr	1536(ra) # 80006d54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000575c:	00700313          	li	t1,7
    thread_dispatch();
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	494080e7          	jalr	1172(ra) # 80001bf4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005768:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000576c:	00005517          	auipc	a0,0x5
    80005770:	07450513          	addi	a0,a0,116 # 8000a7e0 <_ZZ24debug_print_internal_intmE6digits+0x4a8>
    80005774:	00001097          	auipc	ra,0x1
    80005778:	5e0080e7          	jalr	1504(ra) # 80006d54 <_Z11printStringPKc>
    8000577c:	00000613          	li	a2,0
    80005780:	00a00593          	li	a1,10
    80005784:	0009051b          	sext.w	a0,s2
    80005788:	00001097          	auipc	ra,0x1
    8000578c:	778080e7          	jalr	1912(ra) # 80006f00 <_Z8printIntiii>
    80005790:	00005517          	auipc	a0,0x5
    80005794:	ca850513          	addi	a0,a0,-856 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005798:	00001097          	auipc	ra,0x1
    8000579c:	5bc080e7          	jalr	1468(ra) # 80006d54 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800057a0:	00c00513          	li	a0,12
    800057a4:	00000097          	auipc	ra,0x0
    800057a8:	d2c080e7          	jalr	-724(ra) # 800054d0 <_ZL9fibonaccim>
    800057ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800057b0:	00005517          	auipc	a0,0x5
    800057b4:	03850513          	addi	a0,a0,56 # 8000a7e8 <_ZZ24debug_print_internal_intmE6digits+0x4b0>
    800057b8:	00001097          	auipc	ra,0x1
    800057bc:	59c080e7          	jalr	1436(ra) # 80006d54 <_Z11printStringPKc>
    800057c0:	00000613          	li	a2,0
    800057c4:	00a00593          	li	a1,10
    800057c8:	0009051b          	sext.w	a0,s2
    800057cc:	00001097          	auipc	ra,0x1
    800057d0:	734080e7          	jalr	1844(ra) # 80006f00 <_Z8printIntiii>
    800057d4:	00005517          	auipc	a0,0x5
    800057d8:	c6450513          	addi	a0,a0,-924 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800057dc:	00001097          	auipc	ra,0x1
    800057e0:	578080e7          	jalr	1400(ra) # 80006d54 <_Z11printStringPKc>

    for (; i < 6; i++) {
    800057e4:	00500793          	li	a5,5
    800057e8:	0497e263          	bltu	a5,s1,8000582c <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    800057ec:	00005517          	auipc	a0,0x5
    800057f0:	fdc50513          	addi	a0,a0,-36 # 8000a7c8 <_ZZ24debug_print_internal_intmE6digits+0x490>
    800057f4:	00001097          	auipc	ra,0x1
    800057f8:	560080e7          	jalr	1376(ra) # 80006d54 <_Z11printStringPKc>
    800057fc:	00000613          	li	a2,0
    80005800:	00a00593          	li	a1,10
    80005804:	00048513          	mv	a0,s1
    80005808:	00001097          	auipc	ra,0x1
    8000580c:	6f8080e7          	jalr	1784(ra) # 80006f00 <_Z8printIntiii>
    80005810:	00005517          	auipc	a0,0x5
    80005814:	c2850513          	addi	a0,a0,-984 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005818:	00001097          	auipc	ra,0x1
    8000581c:	53c080e7          	jalr	1340(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005820:	0014849b          	addiw	s1,s1,1
    80005824:	0ff4f493          	andi	s1,s1,255
    80005828:	fbdff06f          	j	800057e4 <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    8000582c:	00005517          	auipc	a0,0x5
    80005830:	fcc50513          	addi	a0,a0,-52 # 8000a7f8 <_ZZ24debug_print_internal_intmE6digits+0x4c0>
    80005834:	00001097          	auipc	ra,0x1
    80005838:	520080e7          	jalr	1312(ra) # 80006d54 <_Z11printStringPKc>
    finishedC = true;
    8000583c:	00100793          	li	a5,1
    80005840:	00008717          	auipc	a4,0x8
    80005844:	a0f70f23          	sb	a5,-1506(a4) # 8000d25e <_ZL9finishedC>
    thread_dispatch();
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	3ac080e7          	jalr	940(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    80005850:	01813083          	ld	ra,24(sp)
    80005854:	01013403          	ld	s0,16(sp)
    80005858:	00813483          	ld	s1,8(sp)
    8000585c:	00013903          	ld	s2,0(sp)
    80005860:	02010113          	addi	sp,sp,32
    80005864:	00008067          	ret

0000000080005868 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005868:	fe010113          	addi	sp,sp,-32
    8000586c:	00113c23          	sd	ra,24(sp)
    80005870:	00813823          	sd	s0,16(sp)
    80005874:	00913423          	sd	s1,8(sp)
    80005878:	01213023          	sd	s2,0(sp)
    8000587c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005880:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80005884:	00c00793          	li	a5,12
    80005888:	0497e263          	bltu	a5,s1,800058cc <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    8000588c:	00005517          	auipc	a0,0x5
    80005890:	f0450513          	addi	a0,a0,-252 # 8000a790 <_ZZ24debug_print_internal_intmE6digits+0x458>
    80005894:	00001097          	auipc	ra,0x1
    80005898:	4c0080e7          	jalr	1216(ra) # 80006d54 <_Z11printStringPKc>
    8000589c:	00000613          	li	a2,0
    800058a0:	00a00593          	li	a1,10
    800058a4:	00048513          	mv	a0,s1
    800058a8:	00001097          	auipc	ra,0x1
    800058ac:	658080e7          	jalr	1624(ra) # 80006f00 <_Z8printIntiii>
    800058b0:	00005517          	auipc	a0,0x5
    800058b4:	b8850513          	addi	a0,a0,-1144 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800058b8:	00001097          	auipc	ra,0x1
    800058bc:	49c080e7          	jalr	1180(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800058c0:	0014849b          	addiw	s1,s1,1
    800058c4:	0ff4f493          	andi	s1,s1,255
    800058c8:	fbdff06f          	j	80005884 <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    800058cc:	00005517          	auipc	a0,0x5
    800058d0:	ecc50513          	addi	a0,a0,-308 # 8000a798 <_ZZ24debug_print_internal_intmE6digits+0x460>
    800058d4:	00001097          	auipc	ra,0x1
    800058d8:	480080e7          	jalr	1152(ra) # 80006d54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800058dc:	00500313          	li	t1,5
    thread_dispatch();
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	314080e7          	jalr	788(ra) # 80001bf4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800058e8:	01000513          	li	a0,16
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	be4080e7          	jalr	-1052(ra) # 800054d0 <_ZL9fibonaccim>
    800058f4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800058f8:	00005517          	auipc	a0,0x5
    800058fc:	eb050513          	addi	a0,a0,-336 # 8000a7a8 <_ZZ24debug_print_internal_intmE6digits+0x470>
    80005900:	00001097          	auipc	ra,0x1
    80005904:	454080e7          	jalr	1108(ra) # 80006d54 <_Z11printStringPKc>
    80005908:	00000613          	li	a2,0
    8000590c:	00a00593          	li	a1,10
    80005910:	0009051b          	sext.w	a0,s2
    80005914:	00001097          	auipc	ra,0x1
    80005918:	5ec080e7          	jalr	1516(ra) # 80006f00 <_Z8printIntiii>
    8000591c:	00005517          	auipc	a0,0x5
    80005920:	b1c50513          	addi	a0,a0,-1252 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005924:	00001097          	auipc	ra,0x1
    80005928:	430080e7          	jalr	1072(ra) # 80006d54 <_Z11printStringPKc>

    for (; i < 16; i++) {
    8000592c:	00f00793          	li	a5,15
    80005930:	0497e263          	bltu	a5,s1,80005974 <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80005934:	00005517          	auipc	a0,0x5
    80005938:	e5c50513          	addi	a0,a0,-420 # 8000a790 <_ZZ24debug_print_internal_intmE6digits+0x458>
    8000593c:	00001097          	auipc	ra,0x1
    80005940:	418080e7          	jalr	1048(ra) # 80006d54 <_Z11printStringPKc>
    80005944:	00000613          	li	a2,0
    80005948:	00a00593          	li	a1,10
    8000594c:	00048513          	mv	a0,s1
    80005950:	00001097          	auipc	ra,0x1
    80005954:	5b0080e7          	jalr	1456(ra) # 80006f00 <_Z8printIntiii>
    80005958:	00005517          	auipc	a0,0x5
    8000595c:	ae050513          	addi	a0,a0,-1312 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005960:	00001097          	auipc	ra,0x1
    80005964:	3f4080e7          	jalr	1012(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005968:	0014849b          	addiw	s1,s1,1
    8000596c:	0ff4f493          	andi	s1,s1,255
    80005970:	fbdff06f          	j	8000592c <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    80005974:	00005517          	auipc	a0,0x5
    80005978:	e4450513          	addi	a0,a0,-444 # 8000a7b8 <_ZZ24debug_print_internal_intmE6digits+0x480>
    8000597c:	00001097          	auipc	ra,0x1
    80005980:	3d8080e7          	jalr	984(ra) # 80006d54 <_Z11printStringPKc>
    finishedD = true;
    80005984:	00100793          	li	a5,1
    80005988:	00008717          	auipc	a4,0x8
    8000598c:	8cf70aa3          	sb	a5,-1835(a4) # 8000d25d <_ZL9finishedD>
    thread_dispatch();
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	264080e7          	jalr	612(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    80005998:	01813083          	ld	ra,24(sp)
    8000599c:	01013403          	ld	s0,16(sp)
    800059a0:	00813483          	ld	s1,8(sp)
    800059a4:	00013903          	ld	s2,0(sp)
    800059a8:	02010113          	addi	sp,sp,32
    800059ac:	00008067          	ret

00000000800059b0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800059b0:	fc010113          	addi	sp,sp,-64
    800059b4:	02113c23          	sd	ra,56(sp)
    800059b8:	02813823          	sd	s0,48(sp)
    800059bc:	02913423          	sd	s1,40(sp)
    800059c0:	03213023          	sd	s2,32(sp)
    800059c4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800059c8:	02000513          	li	a0,32
    800059cc:	ffffd097          	auipc	ra,0xffffd
    800059d0:	a00080e7          	jalr	-1536(ra) # 800023cc <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800059d4:	00053423          	sd	zero,8(a0)
    800059d8:	00053823          	sd	zero,16(a0)
    800059dc:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    800059e0:	00005797          	auipc	a5,0x5
    800059e4:	4e878793          	addi	a5,a5,1256 # 8000aec8 <_ZTV7WorkerA+0x10>
    800059e8:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    800059ec:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    800059f0:	00005517          	auipc	a0,0x5
    800059f4:	e2850513          	addi	a0,a0,-472 # 8000a818 <_ZZ24debug_print_internal_intmE6digits+0x4e0>
    800059f8:	00001097          	auipc	ra,0x1
    800059fc:	35c080e7          	jalr	860(ra) # 80006d54 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80005a00:	02000513          	li	a0,32
    80005a04:	ffffd097          	auipc	ra,0xffffd
    80005a08:	9c8080e7          	jalr	-1592(ra) # 800023cc <_Znwm>
    80005a0c:	00053423          	sd	zero,8(a0)
    80005a10:	00053823          	sd	zero,16(a0)
    80005a14:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    80005a18:	00005797          	auipc	a5,0x5
    80005a1c:	4d878793          	addi	a5,a5,1240 # 8000aef0 <_ZTV7WorkerB+0x10>
    80005a20:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80005a24:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80005a28:	00005517          	auipc	a0,0x5
    80005a2c:	e0850513          	addi	a0,a0,-504 # 8000a830 <_ZZ24debug_print_internal_intmE6digits+0x4f8>
    80005a30:	00001097          	auipc	ra,0x1
    80005a34:	324080e7          	jalr	804(ra) # 80006d54 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005a38:	02000513          	li	a0,32
    80005a3c:	ffffd097          	auipc	ra,0xffffd
    80005a40:	990080e7          	jalr	-1648(ra) # 800023cc <_Znwm>
    80005a44:	00053423          	sd	zero,8(a0)
    80005a48:	00053823          	sd	zero,16(a0)
    80005a4c:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    80005a50:	00005797          	auipc	a5,0x5
    80005a54:	4c878793          	addi	a5,a5,1224 # 8000af18 <_ZTV7WorkerC+0x10>
    80005a58:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    80005a5c:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80005a60:	00005517          	auipc	a0,0x5
    80005a64:	de850513          	addi	a0,a0,-536 # 8000a848 <_ZZ24debug_print_internal_intmE6digits+0x510>
    80005a68:	00001097          	auipc	ra,0x1
    80005a6c:	2ec080e7          	jalr	748(ra) # 80006d54 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005a70:	02000513          	li	a0,32
    80005a74:	ffffd097          	auipc	ra,0xffffd
    80005a78:	958080e7          	jalr	-1704(ra) # 800023cc <_Znwm>
    80005a7c:	00053423          	sd	zero,8(a0)
    80005a80:	00053823          	sd	zero,16(a0)
    80005a84:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    80005a88:	00005797          	auipc	a5,0x5
    80005a8c:	4b878793          	addi	a5,a5,1208 # 8000af40 <_ZTV7WorkerD+0x10>
    80005a90:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    80005a94:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80005a98:	00005517          	auipc	a0,0x5
    80005a9c:	dc850513          	addi	a0,a0,-568 # 8000a860 <_ZZ24debug_print_internal_intmE6digits+0x528>
    80005aa0:	00001097          	auipc	ra,0x1
    80005aa4:	2b4080e7          	jalr	692(ra) # 80006d54 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005aa8:	00000493          	li	s1,0
    80005aac:	00c0006f          	j	80005ab8 <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    80005ab0:	00093423          	sd	zero,8(s2)
    80005ab4:	0014849b          	addiw	s1,s1,1
    80005ab8:	00300793          	li	a5,3
    80005abc:	0897c463          	blt	a5,s1,80005b44 <_Z20Threads_CPP_API_testv+0x194>
        threads[i]->start();
    80005ac0:	00349793          	slli	a5,s1,0x3
    80005ac4:	fe040713          	addi	a4,s0,-32
    80005ac8:	00f707b3          	add	a5,a4,a5
    80005acc:	fe07b903          	ld	s2,-32(a5)
        debug_print("CPP API: Starting thread\n");
    80005ad0:	00005517          	auipc	a0,0x5
    80005ad4:	f4050513          	addi	a0,a0,-192 # 8000aa10 <_ZTV8Consumer+0x110>
    80005ad8:	ffffd097          	auipc	ra,0xffffd
    80005adc:	a64080e7          	jalr	-1436(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    80005ae0:	00005517          	auipc	a0,0x5
    80005ae4:	f5050513          	addi	a0,a0,-176 # 8000aa30 <_ZTV8Consumer+0x130>
    80005ae8:	ffffd097          	auipc	ra,0xffffd
    80005aec:	a54080e7          	jalr	-1452(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)this);
    80005af0:	00090513          	mv	a0,s2
    80005af4:	ffffd097          	auipc	ra,0xffffd
    80005af8:	b90080e7          	jalr	-1136(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    80005afc:	00005517          	auipc	a0,0x5
    80005b00:	93c50513          	addi	a0,a0,-1732 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005b04:	ffffd097          	auipc	ra,0xffffd
    80005b08:	a38080e7          	jalr	-1480(ra) # 8000253c <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80005b0c:	00090613          	mv	a2,s2
    80005b10:	ffffc597          	auipc	a1,0xffffc
    80005b14:	c0058593          	addi	a1,a1,-1024 # 80001710 <_ZN6Thread9body_execEPv>
    80005b18:	00890513          	addi	a0,s2,8
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	028080e7          	jalr	40(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    80005b24:	f80516e3          	bnez	a0,80005ab0 <_Z20Threads_CPP_API_testv+0x100>
        debug_print("CPP API: Thread started\n");
    80005b28:	00005517          	auipc	a0,0x5
    80005b2c:	f2050513          	addi	a0,a0,-224 # 8000aa48 <_ZTV8Consumer+0x148>
    80005b30:	ffffd097          	auipc	ra,0xffffd
    80005b34:	a0c080e7          	jalr	-1524(ra) # 8000253c <_Z11debug_printPKc>
        return 0;
    80005b38:	f7dff06f          	j	80005ab4 <_Z20Threads_CPP_API_testv+0x104>
        thread_dispatch();
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	0b8080e7          	jalr	184(ra) # 80001bf4 <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005b44:	00007797          	auipc	a5,0x7
    80005b48:	71c78793          	addi	a5,a5,1820 # 8000d260 <_ZL9finishedA>
    80005b4c:	0007c783          	lbu	a5,0(a5)
    80005b50:	0ff7f793          	andi	a5,a5,255
    80005b54:	fe0784e3          	beqz	a5,80005b3c <_Z20Threads_CPP_API_testv+0x18c>
    80005b58:	00007797          	auipc	a5,0x7
    80005b5c:	70778793          	addi	a5,a5,1799 # 8000d25f <_ZL9finishedB>
    80005b60:	0007c783          	lbu	a5,0(a5)
    80005b64:	0ff7f793          	andi	a5,a5,255
    80005b68:	fc078ae3          	beqz	a5,80005b3c <_Z20Threads_CPP_API_testv+0x18c>
    80005b6c:	00007797          	auipc	a5,0x7
    80005b70:	6f278793          	addi	a5,a5,1778 # 8000d25e <_ZL9finishedC>
    80005b74:	0007c783          	lbu	a5,0(a5)
    80005b78:	0ff7f793          	andi	a5,a5,255
    80005b7c:	fc0780e3          	beqz	a5,80005b3c <_Z20Threads_CPP_API_testv+0x18c>
    80005b80:	00007797          	auipc	a5,0x7
    80005b84:	6dd78793          	addi	a5,a5,1757 # 8000d25d <_ZL9finishedD>
    80005b88:	0007c783          	lbu	a5,0(a5)
    80005b8c:	0ff7f793          	andi	a5,a5,255
    80005b90:	fa0786e3          	beqz	a5,80005b3c <_Z20Threads_CPP_API_testv+0x18c>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    80005b94:	fc040493          	addi	s1,s0,-64
    80005b98:	0080006f          	j	80005ba0 <_Z20Threads_CPP_API_testv+0x1f0>
    80005b9c:	00848493          	addi	s1,s1,8
    80005ba0:	fe040793          	addi	a5,s0,-32
    80005ba4:	00f48e63          	beq	s1,a5,80005bc0 <_Z20Threads_CPP_API_testv+0x210>
    80005ba8:	0004b503          	ld	a0,0(s1)
    80005bac:	fe0508e3          	beqz	a0,80005b9c <_Z20Threads_CPP_API_testv+0x1ec>
    80005bb0:	00053783          	ld	a5,0(a0)
    80005bb4:	0087b783          	ld	a5,8(a5)
    80005bb8:	000780e7          	jalr	a5
    80005bbc:	fe1ff06f          	j	80005b9c <_Z20Threads_CPP_API_testv+0x1ec>
}
    80005bc0:	03813083          	ld	ra,56(sp)
    80005bc4:	03013403          	ld	s0,48(sp)
    80005bc8:	02813483          	ld	s1,40(sp)
    80005bcc:	02013903          	ld	s2,32(sp)
    80005bd0:	04010113          	addi	sp,sp,64
    80005bd4:	00008067          	ret

0000000080005bd8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005bd8:	ff010113          	addi	sp,sp,-16
    80005bdc:	00813423          	sd	s0,8(sp)
    80005be0:	01010413          	addi	s0,sp,16
    80005be4:	00813403          	ld	s0,8(sp)
    80005be8:	01010113          	addi	sp,sp,16
    80005bec:	00008067          	ret

0000000080005bf0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005bf0:	ff010113          	addi	sp,sp,-16
    80005bf4:	00813423          	sd	s0,8(sp)
    80005bf8:	01010413          	addi	s0,sp,16
    80005bfc:	00813403          	ld	s0,8(sp)
    80005c00:	01010113          	addi	sp,sp,16
    80005c04:	00008067          	ret

0000000080005c08 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005c08:	ff010113          	addi	sp,sp,-16
    80005c0c:	00813423          	sd	s0,8(sp)
    80005c10:	01010413          	addi	s0,sp,16
    80005c14:	00813403          	ld	s0,8(sp)
    80005c18:	01010113          	addi	sp,sp,16
    80005c1c:	00008067          	ret

0000000080005c20 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005c20:	ff010113          	addi	sp,sp,-16
    80005c24:	00813423          	sd	s0,8(sp)
    80005c28:	01010413          	addi	s0,sp,16
    80005c2c:	00813403          	ld	s0,8(sp)
    80005c30:	01010113          	addi	sp,sp,16
    80005c34:	00008067          	ret

0000000080005c38 <_ZN7WorkerAD0Ev>:
    80005c38:	ff010113          	addi	sp,sp,-16
    80005c3c:	00113423          	sd	ra,8(sp)
    80005c40:	00813023          	sd	s0,0(sp)
    80005c44:	01010413          	addi	s0,sp,16
    80005c48:	ffffd097          	auipc	ra,0xffffd
    80005c4c:	804080e7          	jalr	-2044(ra) # 8000244c <_ZdlPv>
    80005c50:	00813083          	ld	ra,8(sp)
    80005c54:	00013403          	ld	s0,0(sp)
    80005c58:	01010113          	addi	sp,sp,16
    80005c5c:	00008067          	ret

0000000080005c60 <_ZN7WorkerBD0Ev>:
class WorkerB: public Thread {
    80005c60:	ff010113          	addi	sp,sp,-16
    80005c64:	00113423          	sd	ra,8(sp)
    80005c68:	00813023          	sd	s0,0(sp)
    80005c6c:	01010413          	addi	s0,sp,16
    80005c70:	ffffc097          	auipc	ra,0xffffc
    80005c74:	7dc080e7          	jalr	2012(ra) # 8000244c <_ZdlPv>
    80005c78:	00813083          	ld	ra,8(sp)
    80005c7c:	00013403          	ld	s0,0(sp)
    80005c80:	01010113          	addi	sp,sp,16
    80005c84:	00008067          	ret

0000000080005c88 <_ZN7WorkerCD0Ev>:
class WorkerC: public Thread {
    80005c88:	ff010113          	addi	sp,sp,-16
    80005c8c:	00113423          	sd	ra,8(sp)
    80005c90:	00813023          	sd	s0,0(sp)
    80005c94:	01010413          	addi	s0,sp,16
    80005c98:	ffffc097          	auipc	ra,0xffffc
    80005c9c:	7b4080e7          	jalr	1972(ra) # 8000244c <_ZdlPv>
    80005ca0:	00813083          	ld	ra,8(sp)
    80005ca4:	00013403          	ld	s0,0(sp)
    80005ca8:	01010113          	addi	sp,sp,16
    80005cac:	00008067          	ret

0000000080005cb0 <_ZN7WorkerDD0Ev>:
class WorkerD: public Thread {
    80005cb0:	ff010113          	addi	sp,sp,-16
    80005cb4:	00113423          	sd	ra,8(sp)
    80005cb8:	00813023          	sd	s0,0(sp)
    80005cbc:	01010413          	addi	s0,sp,16
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	78c080e7          	jalr	1932(ra) # 8000244c <_ZdlPv>
    80005cc8:	00813083          	ld	ra,8(sp)
    80005ccc:	00013403          	ld	s0,0(sp)
    80005cd0:	01010113          	addi	sp,sp,16
    80005cd4:	00008067          	ret

0000000080005cd8 <_ZN7WorkerA3runEv>:
    void run() override {
    80005cd8:	ff010113          	addi	sp,sp,-16
    80005cdc:	00113423          	sd	ra,8(sp)
    80005ce0:	00813023          	sd	s0,0(sp)
    80005ce4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005ce8:	00000593          	li	a1,0
    80005cec:	00000097          	auipc	ra,0x0
    80005cf0:	85c080e7          	jalr	-1956(ra) # 80005548 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005cf4:	00813083          	ld	ra,8(sp)
    80005cf8:	00013403          	ld	s0,0(sp)
    80005cfc:	01010113          	addi	sp,sp,16
    80005d00:	00008067          	ret

0000000080005d04 <_ZN7WorkerB3runEv>:
    void run() override {
    80005d04:	ff010113          	addi	sp,sp,-16
    80005d08:	00113423          	sd	ra,8(sp)
    80005d0c:	00813023          	sd	s0,0(sp)
    80005d10:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005d14:	00000593          	li	a1,0
    80005d18:	00000097          	auipc	ra,0x0
    80005d1c:	8fc080e7          	jalr	-1796(ra) # 80005614 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005d20:	00813083          	ld	ra,8(sp)
    80005d24:	00013403          	ld	s0,0(sp)
    80005d28:	01010113          	addi	sp,sp,16
    80005d2c:	00008067          	ret

0000000080005d30 <_ZN7WorkerC3runEv>:
    void run() override {
    80005d30:	ff010113          	addi	sp,sp,-16
    80005d34:	00113423          	sd	ra,8(sp)
    80005d38:	00813023          	sd	s0,0(sp)
    80005d3c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005d40:	00000593          	li	a1,0
    80005d44:	00000097          	auipc	ra,0x0
    80005d48:	9a4080e7          	jalr	-1628(ra) # 800056e8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005d4c:	00813083          	ld	ra,8(sp)
    80005d50:	00013403          	ld	s0,0(sp)
    80005d54:	01010113          	addi	sp,sp,16
    80005d58:	00008067          	ret

0000000080005d5c <_ZN7WorkerD3runEv>:
    void run() override {
    80005d5c:	ff010113          	addi	sp,sp,-16
    80005d60:	00113423          	sd	ra,8(sp)
    80005d64:	00813023          	sd	s0,0(sp)
    80005d68:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005d6c:	00000593          	li	a1,0
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	af8080e7          	jalr	-1288(ra) # 80005868 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005d78:	00813083          	ld	ra,8(sp)
    80005d7c:	00013403          	ld	s0,0(sp)
    80005d80:	01010113          	addi	sp,sp,16
    80005d84:	00008067          	ret

0000000080005d88 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80005d88:	00100793          	li	a5,1
    80005d8c:	06a7f863          	bgeu	a5,a0,80005dfc <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80005d90:	fe010113          	addi	sp,sp,-32
    80005d94:	00113c23          	sd	ra,24(sp)
    80005d98:	00813823          	sd	s0,16(sp)
    80005d9c:	00913423          	sd	s1,8(sp)
    80005da0:	01213023          	sd	s2,0(sp)
    80005da4:	02010413          	addi	s0,sp,32
    80005da8:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80005dac:	00a00793          	li	a5,10
    80005db0:	02f577b3          	remu	a5,a0,a5
    80005db4:	02078e63          	beqz	a5,80005df0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005db8:	fff48513          	addi	a0,s1,-1
    80005dbc:	00000097          	auipc	ra,0x0
    80005dc0:	fcc080e7          	jalr	-52(ra) # 80005d88 <_ZL9fibonaccim>
    80005dc4:	00050913          	mv	s2,a0
    80005dc8:	ffe48513          	addi	a0,s1,-2
    80005dcc:	00000097          	auipc	ra,0x0
    80005dd0:	fbc080e7          	jalr	-68(ra) # 80005d88 <_ZL9fibonaccim>
    80005dd4:	00a90533          	add	a0,s2,a0
}
    80005dd8:	01813083          	ld	ra,24(sp)
    80005ddc:	01013403          	ld	s0,16(sp)
    80005de0:	00813483          	ld	s1,8(sp)
    80005de4:	00013903          	ld	s2,0(sp)
    80005de8:	02010113          	addi	sp,sp,32
    80005dec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005df0:	ffffc097          	auipc	ra,0xffffc
    80005df4:	e04080e7          	jalr	-508(ra) # 80001bf4 <_Z15thread_dispatchv>
    80005df8:	fc1ff06f          	j	80005db8 <_ZL9fibonaccim+0x30>
}
    80005dfc:	00008067          	ret

0000000080005e00 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005e00:	fe010113          	addi	sp,sp,-32
    80005e04:	00113c23          	sd	ra,24(sp)
    80005e08:	00813823          	sd	s0,16(sp)
    80005e0c:	00913423          	sd	s1,8(sp)
    80005e10:	01213023          	sd	s2,0(sp)
    80005e14:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005e18:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80005e1c:	00c00793          	li	a5,12
    80005e20:	0497e263          	bltu	a5,s1,80005e64 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80005e24:	00005517          	auipc	a0,0x5
    80005e28:	96c50513          	addi	a0,a0,-1684 # 8000a790 <_ZZ24debug_print_internal_intmE6digits+0x458>
    80005e2c:	00001097          	auipc	ra,0x1
    80005e30:	f28080e7          	jalr	-216(ra) # 80006d54 <_Z11printStringPKc>
    80005e34:	00000613          	li	a2,0
    80005e38:	00a00593          	li	a1,10
    80005e3c:	00048513          	mv	a0,s1
    80005e40:	00001097          	auipc	ra,0x1
    80005e44:	0c0080e7          	jalr	192(ra) # 80006f00 <_Z8printIntiii>
    80005e48:	00004517          	auipc	a0,0x4
    80005e4c:	5f050513          	addi	a0,a0,1520 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005e50:	00001097          	auipc	ra,0x1
    80005e54:	f04080e7          	jalr	-252(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005e58:	0014849b          	addiw	s1,s1,1
    80005e5c:	0ff4f493          	andi	s1,s1,255
    80005e60:	fbdff06f          	j	80005e1c <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80005e64:	00005517          	auipc	a0,0x5
    80005e68:	93450513          	addi	a0,a0,-1740 # 8000a798 <_ZZ24debug_print_internal_intmE6digits+0x460>
    80005e6c:	00001097          	auipc	ra,0x1
    80005e70:	ee8080e7          	jalr	-280(ra) # 80006d54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005e74:	00500313          	li	t1,5
    thread_dispatch();
    80005e78:	ffffc097          	auipc	ra,0xffffc
    80005e7c:	d7c080e7          	jalr	-644(ra) # 80001bf4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005e80:	01000513          	li	a0,16
    80005e84:	00000097          	auipc	ra,0x0
    80005e88:	f04080e7          	jalr	-252(ra) # 80005d88 <_ZL9fibonaccim>
    80005e8c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005e90:	00005517          	auipc	a0,0x5
    80005e94:	91850513          	addi	a0,a0,-1768 # 8000a7a8 <_ZZ24debug_print_internal_intmE6digits+0x470>
    80005e98:	00001097          	auipc	ra,0x1
    80005e9c:	ebc080e7          	jalr	-324(ra) # 80006d54 <_Z11printStringPKc>
    80005ea0:	00000613          	li	a2,0
    80005ea4:	00a00593          	li	a1,10
    80005ea8:	0009051b          	sext.w	a0,s2
    80005eac:	00001097          	auipc	ra,0x1
    80005eb0:	054080e7          	jalr	84(ra) # 80006f00 <_Z8printIntiii>
    80005eb4:	00004517          	auipc	a0,0x4
    80005eb8:	58450513          	addi	a0,a0,1412 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005ebc:	00001097          	auipc	ra,0x1
    80005ec0:	e98080e7          	jalr	-360(ra) # 80006d54 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80005ec4:	00f00793          	li	a5,15
    80005ec8:	0497e263          	bltu	a5,s1,80005f0c <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80005ecc:	00005517          	auipc	a0,0x5
    80005ed0:	8c450513          	addi	a0,a0,-1852 # 8000a790 <_ZZ24debug_print_internal_intmE6digits+0x458>
    80005ed4:	00001097          	auipc	ra,0x1
    80005ed8:	e80080e7          	jalr	-384(ra) # 80006d54 <_Z11printStringPKc>
    80005edc:	00000613          	li	a2,0
    80005ee0:	00a00593          	li	a1,10
    80005ee4:	00048513          	mv	a0,s1
    80005ee8:	00001097          	auipc	ra,0x1
    80005eec:	018080e7          	jalr	24(ra) # 80006f00 <_Z8printIntiii>
    80005ef0:	00004517          	auipc	a0,0x4
    80005ef4:	54850513          	addi	a0,a0,1352 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005ef8:	00001097          	auipc	ra,0x1
    80005efc:	e5c080e7          	jalr	-420(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005f00:	0014849b          	addiw	s1,s1,1
    80005f04:	0ff4f493          	andi	s1,s1,255
    80005f08:	fbdff06f          	j	80005ec4 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80005f0c:	00005517          	auipc	a0,0x5
    80005f10:	8ac50513          	addi	a0,a0,-1876 # 8000a7b8 <_ZZ24debug_print_internal_intmE6digits+0x480>
    80005f14:	00001097          	auipc	ra,0x1
    80005f18:	e40080e7          	jalr	-448(ra) # 80006d54 <_Z11printStringPKc>
    finishedD = true;
    80005f1c:	00100793          	li	a5,1
    80005f20:	00007717          	auipc	a4,0x7
    80005f24:	34f700a3          	sb	a5,833(a4) # 8000d261 <_ZL9finishedD>
    thread_dispatch();
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	ccc080e7          	jalr	-820(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    80005f30:	01813083          	ld	ra,24(sp)
    80005f34:	01013403          	ld	s0,16(sp)
    80005f38:	00813483          	ld	s1,8(sp)
    80005f3c:	00013903          	ld	s2,0(sp)
    80005f40:	02010113          	addi	sp,sp,32
    80005f44:	00008067          	ret

0000000080005f48 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005f48:	fe010113          	addi	sp,sp,-32
    80005f4c:	00113c23          	sd	ra,24(sp)
    80005f50:	00813823          	sd	s0,16(sp)
    80005f54:	00913423          	sd	s1,8(sp)
    80005f58:	01213023          	sd	s2,0(sp)
    80005f5c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f60:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80005f64:	00200793          	li	a5,2
    80005f68:	0497e263          	bltu	a5,s1,80005fac <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80005f6c:	00005517          	auipc	a0,0x5
    80005f70:	85c50513          	addi	a0,a0,-1956 # 8000a7c8 <_ZZ24debug_print_internal_intmE6digits+0x490>
    80005f74:	00001097          	auipc	ra,0x1
    80005f78:	de0080e7          	jalr	-544(ra) # 80006d54 <_Z11printStringPKc>
    80005f7c:	00000613          	li	a2,0
    80005f80:	00a00593          	li	a1,10
    80005f84:	00048513          	mv	a0,s1
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	f78080e7          	jalr	-136(ra) # 80006f00 <_Z8printIntiii>
    80005f90:	00004517          	auipc	a0,0x4
    80005f94:	4a850513          	addi	a0,a0,1192 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005f98:	00001097          	auipc	ra,0x1
    80005f9c:	dbc080e7          	jalr	-580(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005fa0:	0014849b          	addiw	s1,s1,1
    80005fa4:	0ff4f493          	andi	s1,s1,255
    80005fa8:	fbdff06f          	j	80005f64 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80005fac:	00005517          	auipc	a0,0x5
    80005fb0:	82450513          	addi	a0,a0,-2012 # 8000a7d0 <_ZZ24debug_print_internal_intmE6digits+0x498>
    80005fb4:	00001097          	auipc	ra,0x1
    80005fb8:	da0080e7          	jalr	-608(ra) # 80006d54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005fbc:	00700313          	li	t1,7
    thread_dispatch();
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	c34080e7          	jalr	-972(ra) # 80001bf4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005fc8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005fcc:	00005517          	auipc	a0,0x5
    80005fd0:	81450513          	addi	a0,a0,-2028 # 8000a7e0 <_ZZ24debug_print_internal_intmE6digits+0x4a8>
    80005fd4:	00001097          	auipc	ra,0x1
    80005fd8:	d80080e7          	jalr	-640(ra) # 80006d54 <_Z11printStringPKc>
    80005fdc:	00000613          	li	a2,0
    80005fe0:	00a00593          	li	a1,10
    80005fe4:	0009051b          	sext.w	a0,s2
    80005fe8:	00001097          	auipc	ra,0x1
    80005fec:	f18080e7          	jalr	-232(ra) # 80006f00 <_Z8printIntiii>
    80005ff0:	00004517          	auipc	a0,0x4
    80005ff4:	44850513          	addi	a0,a0,1096 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80005ff8:	00001097          	auipc	ra,0x1
    80005ffc:	d5c080e7          	jalr	-676(ra) # 80006d54 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006000:	00c00513          	li	a0,12
    80006004:	00000097          	auipc	ra,0x0
    80006008:	d84080e7          	jalr	-636(ra) # 80005d88 <_ZL9fibonaccim>
    8000600c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006010:	00004517          	auipc	a0,0x4
    80006014:	7d850513          	addi	a0,a0,2008 # 8000a7e8 <_ZZ24debug_print_internal_intmE6digits+0x4b0>
    80006018:	00001097          	auipc	ra,0x1
    8000601c:	d3c080e7          	jalr	-708(ra) # 80006d54 <_Z11printStringPKc>
    80006020:	00000613          	li	a2,0
    80006024:	00a00593          	li	a1,10
    80006028:	0009051b          	sext.w	a0,s2
    8000602c:	00001097          	auipc	ra,0x1
    80006030:	ed4080e7          	jalr	-300(ra) # 80006f00 <_Z8printIntiii>
    80006034:	00004517          	auipc	a0,0x4
    80006038:	40450513          	addi	a0,a0,1028 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    8000603c:	00001097          	auipc	ra,0x1
    80006040:	d18080e7          	jalr	-744(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006044:	00500793          	li	a5,5
    80006048:	0497e263          	bltu	a5,s1,8000608c <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    8000604c:	00004517          	auipc	a0,0x4
    80006050:	77c50513          	addi	a0,a0,1916 # 8000a7c8 <_ZZ24debug_print_internal_intmE6digits+0x490>
    80006054:	00001097          	auipc	ra,0x1
    80006058:	d00080e7          	jalr	-768(ra) # 80006d54 <_Z11printStringPKc>
    8000605c:	00000613          	li	a2,0
    80006060:	00a00593          	li	a1,10
    80006064:	00048513          	mv	a0,s1
    80006068:	00001097          	auipc	ra,0x1
    8000606c:	e98080e7          	jalr	-360(ra) # 80006f00 <_Z8printIntiii>
    80006070:	00004517          	auipc	a0,0x4
    80006074:	3c850513          	addi	a0,a0,968 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80006078:	00001097          	auipc	ra,0x1
    8000607c:	cdc080e7          	jalr	-804(ra) # 80006d54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006080:	0014849b          	addiw	s1,s1,1
    80006084:	0ff4f493          	andi	s1,s1,255
    80006088:	fbdff06f          	j	80006044 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    8000608c:	00004517          	auipc	a0,0x4
    80006090:	76c50513          	addi	a0,a0,1900 # 8000a7f8 <_ZZ24debug_print_internal_intmE6digits+0x4c0>
    80006094:	00001097          	auipc	ra,0x1
    80006098:	cc0080e7          	jalr	-832(ra) # 80006d54 <_Z11printStringPKc>
    finishedC = true;
    8000609c:	00100793          	li	a5,1
    800060a0:	00007717          	auipc	a4,0x7
    800060a4:	1cf70123          	sb	a5,450(a4) # 8000d262 <_ZL9finishedC>
    thread_dispatch();
    800060a8:	ffffc097          	auipc	ra,0xffffc
    800060ac:	b4c080e7          	jalr	-1204(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    800060b0:	01813083          	ld	ra,24(sp)
    800060b4:	01013403          	ld	s0,16(sp)
    800060b8:	00813483          	ld	s1,8(sp)
    800060bc:	00013903          	ld	s2,0(sp)
    800060c0:	02010113          	addi	sp,sp,32
    800060c4:	00008067          	ret

00000000800060c8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800060c8:	fe010113          	addi	sp,sp,-32
    800060cc:	00113c23          	sd	ra,24(sp)
    800060d0:	00813823          	sd	s0,16(sp)
    800060d4:	00913423          	sd	s1,8(sp)
    800060d8:	01213023          	sd	s2,0(sp)
    800060dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800060e0:	00000913          	li	s2,0
    800060e4:	0380006f          	j	8000611c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800060e8:	ffffc097          	auipc	ra,0xffffc
    800060ec:	b0c080e7          	jalr	-1268(ra) # 80001bf4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060f0:	00148493          	addi	s1,s1,1
    800060f4:	000027b7          	lui	a5,0x2
    800060f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060fc:	0097ee63          	bltu	a5,s1,80006118 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006100:	00000713          	li	a4,0
    80006104:	000077b7          	lui	a5,0x7
    80006108:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000610c:	fce7eee3          	bltu	a5,a4,800060e8 <_ZL11workerBodyBPv+0x20>
    80006110:	00170713          	addi	a4,a4,1
    80006114:	ff1ff06f          	j	80006104 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80006118:	00190913          	addi	s2,s2,1
    8000611c:	00f00793          	li	a5,15
    80006120:	0527e063          	bltu	a5,s2,80006160 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80006124:	00004517          	auipc	a0,0x4
    80006128:	24450513          	addi	a0,a0,580 # 8000a368 <_ZZ24debug_print_internal_intmE6digits+0x30>
    8000612c:	00001097          	auipc	ra,0x1
    80006130:	c28080e7          	jalr	-984(ra) # 80006d54 <_Z11printStringPKc>
    80006134:	00000613          	li	a2,0
    80006138:	00a00593          	li	a1,10
    8000613c:	0009051b          	sext.w	a0,s2
    80006140:	00001097          	auipc	ra,0x1
    80006144:	dc0080e7          	jalr	-576(ra) # 80006f00 <_Z8printIntiii>
    80006148:	00004517          	auipc	a0,0x4
    8000614c:	2f050513          	addi	a0,a0,752 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80006150:	00001097          	auipc	ra,0x1
    80006154:	c04080e7          	jalr	-1020(ra) # 80006d54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006158:	00000493          	li	s1,0
    8000615c:	f99ff06f          	j	800060f4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80006160:	00004517          	auipc	a0,0x4
    80006164:	6a850513          	addi	a0,a0,1704 # 8000a808 <_ZZ24debug_print_internal_intmE6digits+0x4d0>
    80006168:	00001097          	auipc	ra,0x1
    8000616c:	bec080e7          	jalr	-1044(ra) # 80006d54 <_Z11printStringPKc>
    finishedB = true;
    80006170:	00100793          	li	a5,1
    80006174:	00007717          	auipc	a4,0x7
    80006178:	0ef707a3          	sb	a5,239(a4) # 8000d263 <_ZL9finishedB>
    thread_dispatch();
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	a78080e7          	jalr	-1416(ra) # 80001bf4 <_Z15thread_dispatchv>
}
    80006184:	01813083          	ld	ra,24(sp)
    80006188:	01013403          	ld	s0,16(sp)
    8000618c:	00813483          	ld	s1,8(sp)
    80006190:	00013903          	ld	s2,0(sp)
    80006194:	02010113          	addi	sp,sp,32
    80006198:	00008067          	ret

000000008000619c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000619c:	fe010113          	addi	sp,sp,-32
    800061a0:	00113c23          	sd	ra,24(sp)
    800061a4:	00813823          	sd	s0,16(sp)
    800061a8:	00913423          	sd	s1,8(sp)
    800061ac:	01213023          	sd	s2,0(sp)
    800061b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800061b4:	00000913          	li	s2,0
    800061b8:	0380006f          	j	800061f0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	a38080e7          	jalr	-1480(ra) # 80001bf4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800061c4:	00148493          	addi	s1,s1,1
    800061c8:	000027b7          	lui	a5,0x2
    800061cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800061d0:	0097ee63          	bltu	a5,s1,800061ec <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800061d4:	00000713          	li	a4,0
    800061d8:	000077b7          	lui	a5,0x7
    800061dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800061e0:	fce7eee3          	bltu	a5,a4,800061bc <_ZL11workerBodyAPv+0x20>
    800061e4:	00170713          	addi	a4,a4,1
    800061e8:	ff1ff06f          	j	800061d8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800061ec:	00190913          	addi	s2,s2,1
    800061f0:	00900793          	li	a5,9
    800061f4:	0527e063          	bltu	a5,s2,80006234 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800061f8:	00004517          	auipc	a0,0x4
    800061fc:	16850513          	addi	a0,a0,360 # 8000a360 <_ZZ24debug_print_internal_intmE6digits+0x28>
    80006200:	00001097          	auipc	ra,0x1
    80006204:	b54080e7          	jalr	-1196(ra) # 80006d54 <_Z11printStringPKc>
    80006208:	00000613          	li	a2,0
    8000620c:	00a00593          	li	a1,10
    80006210:	0009051b          	sext.w	a0,s2
    80006214:	00001097          	auipc	ra,0x1
    80006218:	cec080e7          	jalr	-788(ra) # 80006f00 <_Z8printIntiii>
    8000621c:	00004517          	auipc	a0,0x4
    80006220:	21c50513          	addi	a0,a0,540 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80006224:	00001097          	auipc	ra,0x1
    80006228:	b30080e7          	jalr	-1232(ra) # 80006d54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000622c:	00000493          	li	s1,0
    80006230:	f99ff06f          	j	800061c8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006234:	00004517          	auipc	a0,0x4
    80006238:	5c450513          	addi	a0,a0,1476 # 8000a7f8 <_ZZ24debug_print_internal_intmE6digits+0x4c0>
    8000623c:	00001097          	auipc	ra,0x1
    80006240:	b18080e7          	jalr	-1256(ra) # 80006d54 <_Z11printStringPKc>
    finishedA = true;
    80006244:	00100793          	li	a5,1
    80006248:	00007717          	auipc	a4,0x7
    8000624c:	00f70e23          	sb	a5,28(a4) # 8000d264 <_ZL9finishedA>
}
    80006250:	01813083          	ld	ra,24(sp)
    80006254:	01013403          	ld	s0,16(sp)
    80006258:	00813483          	ld	s1,8(sp)
    8000625c:	00013903          	ld	s2,0(sp)
    80006260:	02010113          	addi	sp,sp,32
    80006264:	00008067          	ret

0000000080006268 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80006268:	fd010113          	addi	sp,sp,-48
    8000626c:	02113423          	sd	ra,40(sp)
    80006270:	02813023          	sd	s0,32(sp)
    80006274:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006278:	00000613          	li	a2,0
    8000627c:	00000597          	auipc	a1,0x0
    80006280:	f2058593          	addi	a1,a1,-224 # 8000619c <_ZL11workerBodyAPv>
    80006284:	fd040513          	addi	a0,s0,-48
    80006288:	ffffc097          	auipc	ra,0xffffc
    8000628c:	8bc080e7          	jalr	-1860(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006290:	00004517          	auipc	a0,0x4
    80006294:	58850513          	addi	a0,a0,1416 # 8000a818 <_ZZ24debug_print_internal_intmE6digits+0x4e0>
    80006298:	00001097          	auipc	ra,0x1
    8000629c:	abc080e7          	jalr	-1348(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800062a0:	00000613          	li	a2,0
    800062a4:	00000597          	auipc	a1,0x0
    800062a8:	e2458593          	addi	a1,a1,-476 # 800060c8 <_ZL11workerBodyBPv>
    800062ac:	fd840513          	addi	a0,s0,-40
    800062b0:	ffffc097          	auipc	ra,0xffffc
    800062b4:	894080e7          	jalr	-1900(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800062b8:	00004517          	auipc	a0,0x4
    800062bc:	57850513          	addi	a0,a0,1400 # 8000a830 <_ZZ24debug_print_internal_intmE6digits+0x4f8>
    800062c0:	00001097          	auipc	ra,0x1
    800062c4:	a94080e7          	jalr	-1388(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800062c8:	00000613          	li	a2,0
    800062cc:	00000597          	auipc	a1,0x0
    800062d0:	c7c58593          	addi	a1,a1,-900 # 80005f48 <_ZL11workerBodyCPv>
    800062d4:	fe040513          	addi	a0,s0,-32
    800062d8:	ffffc097          	auipc	ra,0xffffc
    800062dc:	86c080e7          	jalr	-1940(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800062e0:	00004517          	auipc	a0,0x4
    800062e4:	56850513          	addi	a0,a0,1384 # 8000a848 <_ZZ24debug_print_internal_intmE6digits+0x510>
    800062e8:	00001097          	auipc	ra,0x1
    800062ec:	a6c080e7          	jalr	-1428(ra) # 80006d54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800062f0:	00000613          	li	a2,0
    800062f4:	00000597          	auipc	a1,0x0
    800062f8:	b0c58593          	addi	a1,a1,-1268 # 80005e00 <_ZL11workerBodyDPv>
    800062fc:	fe840513          	addi	a0,s0,-24
    80006300:	ffffc097          	auipc	ra,0xffffc
    80006304:	844080e7          	jalr	-1980(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006308:	00004517          	auipc	a0,0x4
    8000630c:	55850513          	addi	a0,a0,1368 # 8000a860 <_ZZ24debug_print_internal_intmE6digits+0x528>
    80006310:	00001097          	auipc	ra,0x1
    80006314:	a44080e7          	jalr	-1468(ra) # 80006d54 <_Z11printStringPKc>
    80006318:	00c0006f          	j	80006324 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000631c:	ffffc097          	auipc	ra,0xffffc
    80006320:	8d8080e7          	jalr	-1832(ra) # 80001bf4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006324:	00007797          	auipc	a5,0x7
    80006328:	f4078793          	addi	a5,a5,-192 # 8000d264 <_ZL9finishedA>
    8000632c:	0007c783          	lbu	a5,0(a5)
    80006330:	0ff7f793          	andi	a5,a5,255
    80006334:	fe0784e3          	beqz	a5,8000631c <_Z18Threads_C_API_testv+0xb4>
    80006338:	00007797          	auipc	a5,0x7
    8000633c:	f2b78793          	addi	a5,a5,-213 # 8000d263 <_ZL9finishedB>
    80006340:	0007c783          	lbu	a5,0(a5)
    80006344:	0ff7f793          	andi	a5,a5,255
    80006348:	fc078ae3          	beqz	a5,8000631c <_Z18Threads_C_API_testv+0xb4>
    8000634c:	00007797          	auipc	a5,0x7
    80006350:	f1678793          	addi	a5,a5,-234 # 8000d262 <_ZL9finishedC>
    80006354:	0007c783          	lbu	a5,0(a5)
    80006358:	0ff7f793          	andi	a5,a5,255
    8000635c:	fc0780e3          	beqz	a5,8000631c <_Z18Threads_C_API_testv+0xb4>
    80006360:	00007797          	auipc	a5,0x7
    80006364:	f0178793          	addi	a5,a5,-255 # 8000d261 <_ZL9finishedD>
    80006368:	0007c783          	lbu	a5,0(a5)
    8000636c:	0ff7f793          	andi	a5,a5,255
    80006370:	fa0786e3          	beqz	a5,8000631c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80006374:	02813083          	ld	ra,40(sp)
    80006378:	02013403          	ld	s0,32(sp)
    8000637c:	03010113          	addi	sp,sp,48
    80006380:	00008067          	ret

0000000080006384 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80006384:	fd010113          	addi	sp,sp,-48
    80006388:	02113423          	sd	ra,40(sp)
    8000638c:	02813023          	sd	s0,32(sp)
    80006390:	00913c23          	sd	s1,24(sp)
    80006394:	01213823          	sd	s2,16(sp)
    80006398:	01313423          	sd	s3,8(sp)
    8000639c:	03010413          	addi	s0,sp,48
    800063a0:	00050993          	mv	s3,a0
    800063a4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800063a8:	00000913          	li	s2,0
    800063ac:	00c0006f          	j	800063b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800063b0:	ffffc097          	auipc	ra,0xffffc
    800063b4:	844080e7          	jalr	-1980(ra) # 80001bf4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800063b8:	ffffc097          	auipc	ra,0xffffc
    800063bc:	abc080e7          	jalr	-1348(ra) # 80001e74 <_Z4getcv>
    800063c0:	0005059b          	sext.w	a1,a0
    800063c4:	01b00793          	li	a5,27
    800063c8:	02f58a63          	beq	a1,a5,800063fc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800063cc:	0084b503          	ld	a0,8(s1)
    800063d0:	00001097          	auipc	ra,0x1
    800063d4:	328080e7          	jalr	808(ra) # 800076f8 <_ZN9BufferCPP3putEi>
        i++;
    800063d8:	0019079b          	addiw	a5,s2,1
    800063dc:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    800063e0:	0004a683          	lw	a3,0(s1)
    800063e4:	0026971b          	slliw	a4,a3,0x2
    800063e8:	00d7073b          	addw	a4,a4,a3
    800063ec:	0017169b          	slliw	a3,a4,0x1
    800063f0:	02d7e7bb          	remw	a5,a5,a3
    800063f4:	fc0792e3          	bnez	a5,800063b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800063f8:	fb9ff06f          	j	800063b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    800063fc:	00100793          	li	a5,1
    80006400:	00007717          	auipc	a4,0x7
    80006404:	e6f72423          	sw	a5,-408(a4) # 8000d268 <_ZL9threadEnd>
    td->buffer->put('!');
    80006408:	0209b783          	ld	a5,32(s3)
    8000640c:	02100593          	li	a1,33
    80006410:	0087b503          	ld	a0,8(a5)
    80006414:	00001097          	auipc	ra,0x1
    80006418:	2e4080e7          	jalr	740(ra) # 800076f8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000641c:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80006420:	0087b503          	ld	a0,8(a5)
    80006424:	00050663          	beqz	a0,80006430 <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
        return sem_signal(myHandle);
    80006428:	ffffc097          	auipc	ra,0xffffc
    8000642c:	9ac080e7          	jalr	-1620(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
}
    80006430:	02813083          	ld	ra,40(sp)
    80006434:	02013403          	ld	s0,32(sp)
    80006438:	01813483          	ld	s1,24(sp)
    8000643c:	01013903          	ld	s2,16(sp)
    80006440:	00813983          	ld	s3,8(sp)
    80006444:	03010113          	addi	sp,sp,48
    80006448:	00008067          	ret

000000008000644c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000644c:	fe010113          	addi	sp,sp,-32
    80006450:	00113c23          	sd	ra,24(sp)
    80006454:	00813823          	sd	s0,16(sp)
    80006458:	00913423          	sd	s1,8(sp)
    8000645c:	01213023          	sd	s2,0(sp)
    80006460:	02010413          	addi	s0,sp,32
    80006464:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006468:	00000913          	li	s2,0
    8000646c:	00c0006f          	j	80006478 <_ZN12ProducerSync8producerEPv+0x2c>
        thread_dispatch();
    80006470:	ffffb097          	auipc	ra,0xffffb
    80006474:	784080e7          	jalr	1924(ra) # 80001bf4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80006478:	00007797          	auipc	a5,0x7
    8000647c:	df078793          	addi	a5,a5,-528 # 8000d268 <_ZL9threadEnd>
    80006480:	0007a783          	lw	a5,0(a5)
    80006484:	0007879b          	sext.w	a5,a5
    80006488:	02079e63          	bnez	a5,800064c4 <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    8000648c:	0004a583          	lw	a1,0(s1)
    80006490:	0305859b          	addiw	a1,a1,48
    80006494:	0084b503          	ld	a0,8(s1)
    80006498:	00001097          	auipc	ra,0x1
    8000649c:	260080e7          	jalr	608(ra) # 800076f8 <_ZN9BufferCPP3putEi>
        i++;
    800064a0:	0019079b          	addiw	a5,s2,1
    800064a4:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    800064a8:	0004a683          	lw	a3,0(s1)
    800064ac:	0026971b          	slliw	a4,a3,0x2
    800064b0:	00d7073b          	addw	a4,a4,a3
    800064b4:	0017169b          	slliw	a3,a4,0x1
    800064b8:	02d7e7bb          	remw	a5,a5,a3
    800064bc:	fa079ee3          	bnez	a5,80006478 <_ZN12ProducerSync8producerEPv+0x2c>
    800064c0:	fb1ff06f          	j	80006470 <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    800064c4:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    800064c8:	0087b503          	ld	a0,8(a5)
    800064cc:	00050663          	beqz	a0,800064d8 <_ZN12ProducerSync8producerEPv+0x8c>
        return sem_signal(myHandle);
    800064d0:	ffffc097          	auipc	ra,0xffffc
    800064d4:	904080e7          	jalr	-1788(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
}
    800064d8:	01813083          	ld	ra,24(sp)
    800064dc:	01013403          	ld	s0,16(sp)
    800064e0:	00813483          	ld	s1,8(sp)
    800064e4:	00013903          	ld	s2,0(sp)
    800064e8:	02010113          	addi	sp,sp,32
    800064ec:	00008067          	ret

00000000800064f0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800064f0:	fd010113          	addi	sp,sp,-48
    800064f4:	02113423          	sd	ra,40(sp)
    800064f8:	02813023          	sd	s0,32(sp)
    800064fc:	00913c23          	sd	s1,24(sp)
    80006500:	01213823          	sd	s2,16(sp)
    80006504:	01313423          	sd	s3,8(sp)
    80006508:	01413023          	sd	s4,0(sp)
    8000650c:	03010413          	addi	s0,sp,48
    80006510:	00050993          	mv	s3,a0
    80006514:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006518:	00000a13          	li	s4,0
    8000651c:	01c0006f          	j	80006538 <_ZN12ConsumerSync8consumerEPv+0x48>
        thread_dispatch();
    80006520:	ffffb097          	auipc	ra,0xffffb
    80006524:	6d4080e7          	jalr	1748(ra) # 80001bf4 <_Z15thread_dispatchv>
    80006528:	0580006f          	j	80006580 <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    8000652c:	00a00513          	li	a0,10
    80006530:	ffffc097          	auipc	ra,0xffffc
    80006534:	994080e7          	jalr	-1644(ra) # 80001ec4 <_Z4putcc>
    while (!threadEnd) {
    80006538:	00007797          	auipc	a5,0x7
    8000653c:	d3078793          	addi	a5,a5,-720 # 8000d268 <_ZL9threadEnd>
    80006540:	0007a783          	lw	a5,0(a5)
    80006544:	0007879b          	sext.w	a5,a5
    80006548:	04079463          	bnez	a5,80006590 <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    8000654c:	00893503          	ld	a0,8(s2)
    80006550:	00001097          	auipc	ra,0x1
    80006554:	258080e7          	jalr	600(ra) # 800077a8 <_ZN9BufferCPP3getEv>
        i++;
    80006558:	001a049b          	addiw	s1,s4,1
    8000655c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80006560:	0ff57513          	andi	a0,a0,255
    80006564:	ffffc097          	auipc	ra,0xffffc
    80006568:	960080e7          	jalr	-1696(ra) # 80001ec4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000656c:	00092703          	lw	a4,0(s2)
    80006570:	0027179b          	slliw	a5,a4,0x2
    80006574:	00e787bb          	addw	a5,a5,a4
    80006578:	02f4e7bb          	remw	a5,s1,a5
    8000657c:	fa0782e3          	beqz	a5,80006520 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80006580:	05000793          	li	a5,80
    80006584:	02f4e4bb          	remw	s1,s1,a5
    80006588:	fa0498e3          	bnez	s1,80006538 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000658c:	fa1ff06f          	j	8000652c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    80006590:	0209b783          	ld	a5,32(s3)
    80006594:	0087b503          	ld	a0,8(a5)
    80006598:	00001097          	auipc	ra,0x1
    8000659c:	2bc080e7          	jalr	700(ra) # 80007854 <_ZN9BufferCPP6getCntEv>
    800065a0:	02a05263          	blez	a0,800065c4 <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    800065a4:	0209b783          	ld	a5,32(s3)
    800065a8:	0087b503          	ld	a0,8(a5)
    800065ac:	00001097          	auipc	ra,0x1
    800065b0:	1fc080e7          	jalr	508(ra) # 800077a8 <_ZN9BufferCPP3getEv>
    static void putc(char c) { putc(c); };
    800065b4:	0ff57513          	andi	a0,a0,255
    800065b8:	ffffe097          	auipc	ra,0xffffe
    800065bc:	0a8080e7          	jalr	168(ra) # 80004660 <_ZN7Console4putcEc>
    800065c0:	fd1ff06f          	j	80006590 <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    800065c4:	01093783          	ld	a5,16(s2)
        if (myHandle == nullptr) {
    800065c8:	0087b503          	ld	a0,8(a5)
    800065cc:	00050663          	beqz	a0,800065d8 <_ZN12ConsumerSync8consumerEPv+0xe8>
        return sem_signal(myHandle);
    800065d0:	ffffc097          	auipc	ra,0xffffc
    800065d4:	804080e7          	jalr	-2044(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
}
    800065d8:	02813083          	ld	ra,40(sp)
    800065dc:	02013403          	ld	s0,32(sp)
    800065e0:	01813483          	ld	s1,24(sp)
    800065e4:	01013903          	ld	s2,16(sp)
    800065e8:	00813983          	ld	s3,8(sp)
    800065ec:	00013a03          	ld	s4,0(sp)
    800065f0:	03010113          	addi	sp,sp,48
    800065f4:	00008067          	ret

00000000800065f8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800065f8:	f9010113          	addi	sp,sp,-112
    800065fc:	06113423          	sd	ra,104(sp)
    80006600:	06813023          	sd	s0,96(sp)
    80006604:	04913c23          	sd	s1,88(sp)
    80006608:	05213823          	sd	s2,80(sp)
    8000660c:	05313423          	sd	s3,72(sp)
    80006610:	05413023          	sd	s4,64(sp)
    80006614:	03513c23          	sd	s5,56(sp)
    80006618:	03613823          	sd	s6,48(sp)
    8000661c:	03713423          	sd	s7,40(sp)
    80006620:	03813023          	sd	s8,32(sp)
    80006624:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80006628:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000662c:	00004517          	auipc	a0,0x4
    80006630:	2fc50513          	addi	a0,a0,764 # 8000a928 <_ZTV8Consumer+0x28>
    80006634:	00000097          	auipc	ra,0x0
    80006638:	720080e7          	jalr	1824(ra) # 80006d54 <_Z11printStringPKc>
    getString(input, 30);
    8000663c:	01e00593          	li	a1,30
    80006640:	f9040513          	addi	a0,s0,-112
    80006644:	00000097          	auipc	ra,0x0
    80006648:	798080e7          	jalr	1944(ra) # 80006ddc <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000664c:	f9040513          	addi	a0,s0,-112
    80006650:	00001097          	auipc	ra,0x1
    80006654:	860080e7          	jalr	-1952(ra) # 80006eb0 <_Z11stringToIntPKc>
    80006658:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000665c:	00004517          	auipc	a0,0x4
    80006660:	2ec50513          	addi	a0,a0,748 # 8000a948 <_ZTV8Consumer+0x48>
    80006664:	00000097          	auipc	ra,0x0
    80006668:	6f0080e7          	jalr	1776(ra) # 80006d54 <_Z11printStringPKc>
    getString(input, 30);
    8000666c:	01e00593          	li	a1,30
    80006670:	f9040513          	addi	a0,s0,-112
    80006674:	00000097          	auipc	ra,0x0
    80006678:	768080e7          	jalr	1896(ra) # 80006ddc <_Z9getStringPci>
    n = stringToInt(input);
    8000667c:	f9040513          	addi	a0,s0,-112
    80006680:	00001097          	auipc	ra,0x1
    80006684:	830080e7          	jalr	-2000(ra) # 80006eb0 <_Z11stringToIntPKc>
    80006688:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000668c:	00004517          	auipc	a0,0x4
    80006690:	2dc50513          	addi	a0,a0,732 # 8000a968 <_ZTV8Consumer+0x68>
    80006694:	00000097          	auipc	ra,0x0
    80006698:	6c0080e7          	jalr	1728(ra) # 80006d54 <_Z11printStringPKc>
    8000669c:	00000613          	li	a2,0
    800066a0:	00a00593          	li	a1,10
    800066a4:	00090513          	mv	a0,s2
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	858080e7          	jalr	-1960(ra) # 80006f00 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800066b0:	00004517          	auipc	a0,0x4
    800066b4:	2d050513          	addi	a0,a0,720 # 8000a980 <_ZTV8Consumer+0x80>
    800066b8:	00000097          	auipc	ra,0x0
    800066bc:	69c080e7          	jalr	1692(ra) # 80006d54 <_Z11printStringPKc>
    800066c0:	00000613          	li	a2,0
    800066c4:	00a00593          	li	a1,10
    800066c8:	00048513          	mv	a0,s1
    800066cc:	00001097          	auipc	ra,0x1
    800066d0:	834080e7          	jalr	-1996(ra) # 80006f00 <_Z8printIntiii>
    printString(".\n");
    800066d4:	00004517          	auipc	a0,0x4
    800066d8:	2c450513          	addi	a0,a0,708 # 8000a998 <_ZTV8Consumer+0x98>
    800066dc:	00000097          	auipc	ra,0x0
    800066e0:	678080e7          	jalr	1656(ra) # 80006d54 <_Z11printStringPKc>
    if(threadNum > n) {
    800066e4:	0324c463          	blt	s1,s2,8000670c <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    800066e8:	03205c63          	blez	s2,80006720 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    800066ec:	03800513          	li	a0,56
    800066f0:	ffffc097          	auipc	ra,0xffffc
    800066f4:	cdc080e7          	jalr	-804(ra) # 800023cc <_Znwm>
    800066f8:	00050a93          	mv	s5,a0
    800066fc:	00048593          	mv	a1,s1
    80006700:	00001097          	auipc	ra,0x1
    80006704:	e44080e7          	jalr	-444(ra) # 80007544 <_ZN9BufferCPPC1Ei>
    80006708:	0300006f          	j	80006738 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000670c:	00004517          	auipc	a0,0x4
    80006710:	29450513          	addi	a0,a0,660 # 8000a9a0 <_ZTV8Consumer+0xa0>
    80006714:	00000097          	auipc	ra,0x0
    80006718:	640080e7          	jalr	1600(ra) # 80006d54 <_Z11printStringPKc>
        return;
    8000671c:	0140006f          	j	80006730 <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80006720:	00004517          	auipc	a0,0x4
    80006724:	2c050513          	addi	a0,a0,704 # 8000a9e0 <_ZTV8Consumer+0xe0>
    80006728:	00000097          	auipc	ra,0x0
    8000672c:	62c080e7          	jalr	1580(ra) # 80006d54 <_Z11printStringPKc>
        return;
    80006730:	000b8113          	mv	sp,s7
    80006734:	3340006f          	j	80006a68 <_Z29producerConsumer_CPP_Sync_APIv+0x470>
    waitForAll = new Semaphore(0);
    80006738:	01000513          	li	a0,16
    8000673c:	ffffc097          	auipc	ra,0xffffc
    80006740:	c90080e7          	jalr	-880(ra) # 800023cc <_Znwm>
    80006744:	00050493          	mv	s1,a0
    Semaphore(unsigned init = 1) {
    80006748:	00004797          	auipc	a5,0x4
    8000674c:	15878793          	addi	a5,a5,344 # 8000a8a0 <_ZTV9Semaphore+0x10>
    80006750:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80006754:	00000593          	li	a1,0
    80006758:	00850513          	addi	a0,a0,8
    8000675c:	ffffb097          	auipc	ra,0xffffb
    80006760:	4e4080e7          	jalr	1252(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    80006764:	00050463          	beqz	a0,8000676c <_Z29producerConsumer_CPP_Sync_APIv+0x174>
            myHandle = nullptr;
    80006768:	0004b423          	sd	zero,8(s1)
    8000676c:	00007797          	auipc	a5,0x7
    80006770:	b097b223          	sd	s1,-1276(a5) # 8000d270 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80006774:	00391793          	slli	a5,s2,0x3
    80006778:	00f78793          	addi	a5,a5,15
    8000677c:	ff07f793          	andi	a5,a5,-16
    80006780:	40f10133          	sub	sp,sp,a5
    80006784:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80006788:	0019079b          	addiw	a5,s2,1
    8000678c:	00179713          	slli	a4,a5,0x1
    80006790:	00f70733          	add	a4,a4,a5
    80006794:	00371793          	slli	a5,a4,0x3
    80006798:	00f78793          	addi	a5,a5,15
    8000679c:	ff07f793          	andi	a5,a5,-16
    800067a0:	40f10133          	sub	sp,sp,a5
    800067a4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800067a8:	00191c13          	slli	s8,s2,0x1
    800067ac:	012c0733          	add	a4,s8,s2
    800067b0:	00371793          	slli	a5,a4,0x3
    800067b4:	00fa07b3          	add	a5,s4,a5
    800067b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800067bc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800067c0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800067c4:	02800513          	li	a0,40
    800067c8:	ffffc097          	auipc	ra,0xffffc
    800067cc:	c04080e7          	jalr	-1020(ra) # 800023cc <_Znwm>
    800067d0:	00050b13          	mv	s6,a0
    800067d4:	012c0c33          	add	s8,s8,s2
    800067d8:	003c1793          	slli	a5,s8,0x3
    800067dc:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800067e0:	00053423          	sd	zero,8(a0)
    800067e4:	00053823          	sd	zero,16(a0)
    800067e8:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800067ec:	00004717          	auipc	a4,0x4
    800067f0:	7cc70713          	addi	a4,a4,1996 # 8000afb8 <_ZTV12ConsumerSync+0x10>
    800067f4:	00e53023          	sd	a4,0(a0)
    800067f8:	02f53023          	sd	a5,32(a0)
        debug_print("CPP API: Starting thread\n");
    800067fc:	00004517          	auipc	a0,0x4
    80006800:	21450513          	addi	a0,a0,532 # 8000aa10 <_ZTV8Consumer+0x110>
    80006804:	ffffc097          	auipc	ra,0xffffc
    80006808:	d38080e7          	jalr	-712(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    8000680c:	00004517          	auipc	a0,0x4
    80006810:	22450513          	addi	a0,a0,548 # 8000aa30 <_ZTV8Consumer+0x130>
    80006814:	ffffc097          	auipc	ra,0xffffc
    80006818:	d28080e7          	jalr	-728(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)this);
    8000681c:	000b0513          	mv	a0,s6
    80006820:	ffffc097          	auipc	ra,0xffffc
    80006824:	e64080e7          	jalr	-412(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    80006828:	00004517          	auipc	a0,0x4
    8000682c:	c1050513          	addi	a0,a0,-1008 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80006830:	ffffc097          	auipc	ra,0xffffc
    80006834:	d0c080e7          	jalr	-756(ra) # 8000253c <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80006838:	000b0613          	mv	a2,s6
    8000683c:	ffffb597          	auipc	a1,0xffffb
    80006840:	ed458593          	addi	a1,a1,-300 # 80001710 <_ZN6Thread9body_execEPv>
    80006844:	008b0513          	addi	a0,s6,8
    80006848:	ffffb097          	auipc	ra,0xffffb
    8000684c:	2fc080e7          	jalr	764(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    80006850:	00051e63          	bnez	a0,8000686c <_Z29producerConsumer_CPP_Sync_APIv+0x274>
        debug_print("CPP API: Thread started\n");
    80006854:	00004517          	auipc	a0,0x4
    80006858:	1f450513          	addi	a0,a0,500 # 8000aa48 <_ZTV8Consumer+0x148>
    8000685c:	ffffc097          	auipc	ra,0xffffc
    80006860:	ce0080e7          	jalr	-800(ra) # 8000253c <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    80006864:	00000493          	li	s1,0
    80006868:	0c80006f          	j	80006930 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
            myHandle = nullptr;
    8000686c:	000b3423          	sd	zero,8(s6)
            return -1;
    80006870:	ff5ff06f          	j	80006864 <_Z29producerConsumer_CPP_Sync_APIv+0x26c>
            threads[i] = new ProducerSync(data+i);
    80006874:	02800513          	li	a0,40
    80006878:	ffffc097          	auipc	ra,0xffffc
    8000687c:	b54080e7          	jalr	-1196(ra) # 800023cc <_Znwm>
    80006880:	00149713          	slli	a4,s1,0x1
    80006884:	00970733          	add	a4,a4,s1
    80006888:	00371793          	slli	a5,a4,0x3
    8000688c:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80006890:	00053423          	sd	zero,8(a0)
    80006894:	00053823          	sd	zero,16(a0)
    80006898:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000689c:	00004717          	auipc	a4,0x4
    800068a0:	6f470713          	addi	a4,a4,1780 # 8000af90 <_ZTV12ProducerSync+0x10>
    800068a4:	00e53023          	sd	a4,0(a0)
    800068a8:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    800068ac:	00349793          	slli	a5,s1,0x3
    800068b0:	00f987b3          	add	a5,s3,a5
    800068b4:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    800068b8:	00349793          	slli	a5,s1,0x3
    800068bc:	00f987b3          	add	a5,s3,a5
    800068c0:	0007bc03          	ld	s8,0(a5)
        debug_print("CPP API: Starting thread\n");
    800068c4:	00004517          	auipc	a0,0x4
    800068c8:	14c50513          	addi	a0,a0,332 # 8000aa10 <_ZTV8Consumer+0x110>
    800068cc:	ffffc097          	auipc	ra,0xffffc
    800068d0:	c70080e7          	jalr	-912(ra) # 8000253c <_Z11debug_printPKc>
        debug_print("CPP API: THIS POINTER: ");
    800068d4:	00004517          	auipc	a0,0x4
    800068d8:	15c50513          	addi	a0,a0,348 # 8000aa30 <_ZTV8Consumer+0x130>
    800068dc:	ffffc097          	auipc	ra,0xffffc
    800068e0:	c60080e7          	jalr	-928(ra) # 8000253c <_Z11debug_printPKc>
        debug_print((uint64)this);
    800068e4:	000c0513          	mv	a0,s8
    800068e8:	ffffc097          	auipc	ra,0xffffc
    800068ec:	d9c080e7          	jalr	-612(ra) # 80002684 <_Z11debug_printm>
        debug_print("\n");
    800068f0:	00004517          	auipc	a0,0x4
    800068f4:	b4850513          	addi	a0,a0,-1208 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    800068f8:	ffffc097          	auipc	ra,0xffffc
    800068fc:	c44080e7          	jalr	-956(ra) # 8000253c <_Z11debug_printPKc>
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
    80006900:	000c0613          	mv	a2,s8
    80006904:	ffffb597          	auipc	a1,0xffffb
    80006908:	e0c58593          	addi	a1,a1,-500 # 80001710 <_ZN6Thread9body_execEPv>
    8000690c:	008c0513          	addi	a0,s8,8
    80006910:	ffffb097          	auipc	ra,0xffffb
    80006914:	234080e7          	jalr	564(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    80006918:	08051863          	bnez	a0,800069a8 <_Z29producerConsumer_CPP_Sync_APIv+0x3b0>
        debug_print("CPP API: Thread started\n");
    8000691c:	00004517          	auipc	a0,0x4
    80006920:	12c50513          	addi	a0,a0,300 # 8000aa48 <_ZTV8Consumer+0x148>
    80006924:	ffffc097          	auipc	ra,0xffffc
    80006928:	c18080e7          	jalr	-1000(ra) # 8000253c <_Z11debug_printPKc>
    for (int i = 0; i < threadNum; i++) {
    8000692c:	0014849b          	addiw	s1,s1,1
    80006930:	0924d063          	bge	s1,s2,800069b0 <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
        data[i].id = i;
    80006934:	00149713          	slli	a4,s1,0x1
    80006938:	00970733          	add	a4,a4,s1
    8000693c:	00371793          	slli	a5,a4,0x3
    80006940:	00fa07b3          	add	a5,s4,a5
    80006944:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80006948:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000694c:	00007717          	auipc	a4,0x7
    80006950:	92470713          	addi	a4,a4,-1756 # 8000d270 <_ZL10waitForAll>
    80006954:	00073703          	ld	a4,0(a4)
    80006958:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000695c:	f0904ce3          	bgtz	s1,80006874 <_Z29producerConsumer_CPP_Sync_APIv+0x27c>
            threads[i] = new ProducerKeyboard(data+i);
    80006960:	02800513          	li	a0,40
    80006964:	ffffc097          	auipc	ra,0xffffc
    80006968:	a68080e7          	jalr	-1432(ra) # 800023cc <_Znwm>
    8000696c:	00149713          	slli	a4,s1,0x1
    80006970:	00970733          	add	a4,a4,s1
    80006974:	00371793          	slli	a5,a4,0x3
    80006978:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    8000697c:	00053423          	sd	zero,8(a0)
    80006980:	00053823          	sd	zero,16(a0)
    80006984:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80006988:	00004717          	auipc	a4,0x4
    8000698c:	5e070713          	addi	a4,a4,1504 # 8000af68 <_ZTV16ProducerKeyboard+0x10>
    80006990:	00e53023          	sd	a4,0(a0)
    80006994:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    80006998:	00349793          	slli	a5,s1,0x3
    8000699c:	00f987b3          	add	a5,s3,a5
    800069a0:	00a7b023          	sd	a0,0(a5)
    800069a4:	f15ff06f          	j	800068b8 <_Z29producerConsumer_CPP_Sync_APIv+0x2c0>
            myHandle = nullptr;
    800069a8:	000c3423          	sd	zero,8(s8)
            return -1;
    800069ac:	f81ff06f          	j	8000692c <_Z29producerConsumer_CPP_Sync_APIv+0x334>
        thread_dispatch();
    800069b0:	ffffb097          	auipc	ra,0xffffb
    800069b4:	244080e7          	jalr	580(ra) # 80001bf4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800069b8:	00000493          	li	s1,0
    800069bc:	0080006f          	j	800069c4 <_Z29producerConsumer_CPP_Sync_APIv+0x3cc>
    800069c0:	0014849b          	addiw	s1,s1,1
    800069c4:	02994263          	blt	s2,s1,800069e8 <_Z29producerConsumer_CPP_Sync_APIv+0x3f0>
        waitForAll->wait();
    800069c8:	00007797          	auipc	a5,0x7
    800069cc:	8a878793          	addi	a5,a5,-1880 # 8000d270 <_ZL10waitForAll>
    800069d0:	0007b783          	ld	a5,0(a5)
        if (myHandle == nullptr) {
    800069d4:	0087b503          	ld	a0,8(a5)
    800069d8:	fe0504e3          	beqz	a0,800069c0 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
        return sem_wait(myHandle);
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	3a8080e7          	jalr	936(ra) # 80001d84 <_Z8sem_waitP10_semaphore>
    800069e4:	fddff06f          	j	800069c0 <_Z29producerConsumer_CPP_Sync_APIv+0x3c8>
    for (int i = 0; i < threadNum; i++) {
    800069e8:	00000493          	li	s1,0
    800069ec:	0080006f          	j	800069f4 <_Z29producerConsumer_CPP_Sync_APIv+0x3fc>
    800069f0:	0014849b          	addiw	s1,s1,1
    800069f4:	0324d263          	bge	s1,s2,80006a18 <_Z29producerConsumer_CPP_Sync_APIv+0x420>
        delete threads[i];
    800069f8:	00349793          	slli	a5,s1,0x3
    800069fc:	00f987b3          	add	a5,s3,a5
    80006a00:	0007b503          	ld	a0,0(a5)
    80006a04:	fe0506e3          	beqz	a0,800069f0 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    80006a08:	00053783          	ld	a5,0(a0)
    80006a0c:	0087b783          	ld	a5,8(a5)
    80006a10:	000780e7          	jalr	a5
    80006a14:	fddff06f          	j	800069f0 <_Z29producerConsumer_CPP_Sync_APIv+0x3f8>
    delete consumerThread;
    80006a18:	000b0a63          	beqz	s6,80006a2c <_Z29producerConsumer_CPP_Sync_APIv+0x434>
    80006a1c:	000b3783          	ld	a5,0(s6)
    80006a20:	0087b783          	ld	a5,8(a5)
    80006a24:	000b0513          	mv	a0,s6
    80006a28:	000780e7          	jalr	a5
    delete waitForAll;
    80006a2c:	00007797          	auipc	a5,0x7
    80006a30:	84478793          	addi	a5,a5,-1980 # 8000d270 <_ZL10waitForAll>
    80006a34:	0007b503          	ld	a0,0(a5)
    80006a38:	00050863          	beqz	a0,80006a48 <_Z29producerConsumer_CPP_Sync_APIv+0x450>
    80006a3c:	00053783          	ld	a5,0(a0)
    80006a40:	0087b783          	ld	a5,8(a5)
    80006a44:	000780e7          	jalr	a5
    delete buffer;
    80006a48:	000a8e63          	beqz	s5,80006a64 <_Z29producerConsumer_CPP_Sync_APIv+0x46c>
    80006a4c:	000a8513          	mv	a0,s5
    80006a50:	00001097          	auipc	ra,0x1
    80006a54:	eac080e7          	jalr	-340(ra) # 800078fc <_ZN9BufferCPPD1Ev>
    80006a58:	000a8513          	mv	a0,s5
    80006a5c:	ffffc097          	auipc	ra,0xffffc
    80006a60:	9f0080e7          	jalr	-1552(ra) # 8000244c <_ZdlPv>
    80006a64:	000b8113          	mv	sp,s7

}
    80006a68:	f9040113          	addi	sp,s0,-112
    80006a6c:	06813083          	ld	ra,104(sp)
    80006a70:	06013403          	ld	s0,96(sp)
    80006a74:	05813483          	ld	s1,88(sp)
    80006a78:	05013903          	ld	s2,80(sp)
    80006a7c:	04813983          	ld	s3,72(sp)
    80006a80:	04013a03          	ld	s4,64(sp)
    80006a84:	03813a83          	ld	s5,56(sp)
    80006a88:	03013b03          	ld	s6,48(sp)
    80006a8c:	02813b83          	ld	s7,40(sp)
    80006a90:	02013c03          	ld	s8,32(sp)
    80006a94:	07010113          	addi	sp,sp,112
    80006a98:	00008067          	ret
    80006a9c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006aa0:	000a8513          	mv	a0,s5
    80006aa4:	ffffc097          	auipc	ra,0xffffc
    80006aa8:	9a8080e7          	jalr	-1624(ra) # 8000244c <_ZdlPv>
    80006aac:	00048513          	mv	a0,s1
    80006ab0:	00008097          	auipc	ra,0x8
    80006ab4:	a70080e7          	jalr	-1424(ra) # 8000e520 <_Unwind_Resume>
    80006ab8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006abc:	00048513          	mv	a0,s1
    80006ac0:	ffffc097          	auipc	ra,0xffffc
    80006ac4:	98c080e7          	jalr	-1652(ra) # 8000244c <_ZdlPv>
    80006ac8:	00090513          	mv	a0,s2
    80006acc:	00008097          	auipc	ra,0x8
    80006ad0:	a54080e7          	jalr	-1452(ra) # 8000e520 <_Unwind_Resume>

0000000080006ad4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80006ad4:	ff010113          	addi	sp,sp,-16
    80006ad8:	00813423          	sd	s0,8(sp)
    80006adc:	01010413          	addi	s0,sp,16
    80006ae0:	00813403          	ld	s0,8(sp)
    80006ae4:	01010113          	addi	sp,sp,16
    80006ae8:	00008067          	ret

0000000080006aec <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80006aec:	ff010113          	addi	sp,sp,-16
    80006af0:	00813423          	sd	s0,8(sp)
    80006af4:	01010413          	addi	s0,sp,16
    80006af8:	00813403          	ld	s0,8(sp)
    80006afc:	01010113          	addi	sp,sp,16
    80006b00:	00008067          	ret

0000000080006b04 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00813423          	sd	s0,8(sp)
    80006b0c:	01010413          	addi	s0,sp,16
    80006b10:	00813403          	ld	s0,8(sp)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <_ZN12ConsumerSyncD0Ev>:
class ConsumerSync:public Thread {
    80006b1c:	ff010113          	addi	sp,sp,-16
    80006b20:	00113423          	sd	ra,8(sp)
    80006b24:	00813023          	sd	s0,0(sp)
    80006b28:	01010413          	addi	s0,sp,16
    80006b2c:	ffffc097          	auipc	ra,0xffffc
    80006b30:	920080e7          	jalr	-1760(ra) # 8000244c <_ZdlPv>
    80006b34:	00813083          	ld	ra,8(sp)
    80006b38:	00013403          	ld	s0,0(sp)
    80006b3c:	01010113          	addi	sp,sp,16
    80006b40:	00008067          	ret

0000000080006b44 <_ZN12ProducerSyncD0Ev>:
class ProducerSync:public Thread {
    80006b44:	ff010113          	addi	sp,sp,-16
    80006b48:	00113423          	sd	ra,8(sp)
    80006b4c:	00813023          	sd	s0,0(sp)
    80006b50:	01010413          	addi	s0,sp,16
    80006b54:	ffffc097          	auipc	ra,0xffffc
    80006b58:	8f8080e7          	jalr	-1800(ra) # 8000244c <_ZdlPv>
    80006b5c:	00813083          	ld	ra,8(sp)
    80006b60:	00013403          	ld	s0,0(sp)
    80006b64:	01010113          	addi	sp,sp,16
    80006b68:	00008067          	ret

0000000080006b6c <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    80006b6c:	ff010113          	addi	sp,sp,-16
    80006b70:	00113423          	sd	ra,8(sp)
    80006b74:	00813023          	sd	s0,0(sp)
    80006b78:	01010413          	addi	s0,sp,16
    80006b7c:	ffffc097          	auipc	ra,0xffffc
    80006b80:	8d0080e7          	jalr	-1840(ra) # 8000244c <_ZdlPv>
    80006b84:	00813083          	ld	ra,8(sp)
    80006b88:	00013403          	ld	s0,0(sp)
    80006b8c:	01010113          	addi	sp,sp,16
    80006b90:	00008067          	ret

0000000080006b94 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006b94:	ff010113          	addi	sp,sp,-16
    80006b98:	00113423          	sd	ra,8(sp)
    80006b9c:	00813023          	sd	s0,0(sp)
    80006ba0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006ba4:	02053583          	ld	a1,32(a0)
    80006ba8:	fffff097          	auipc	ra,0xfffff
    80006bac:	7dc080e7          	jalr	2012(ra) # 80006384 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80006bb0:	00813083          	ld	ra,8(sp)
    80006bb4:	00013403          	ld	s0,0(sp)
    80006bb8:	01010113          	addi	sp,sp,16
    80006bbc:	00008067          	ret

0000000080006bc0 <_ZN12ProducerSync3runEv>:
    void run() override {
    80006bc0:	ff010113          	addi	sp,sp,-16
    80006bc4:	00113423          	sd	ra,8(sp)
    80006bc8:	00813023          	sd	s0,0(sp)
    80006bcc:	01010413          	addi	s0,sp,16
        producer(td);
    80006bd0:	02053583          	ld	a1,32(a0)
    80006bd4:	00000097          	auipc	ra,0x0
    80006bd8:	878080e7          	jalr	-1928(ra) # 8000644c <_ZN12ProducerSync8producerEPv>
    }
    80006bdc:	00813083          	ld	ra,8(sp)
    80006be0:	00013403          	ld	s0,0(sp)
    80006be4:	01010113          	addi	sp,sp,16
    80006be8:	00008067          	ret

0000000080006bec <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006bec:	ff010113          	addi	sp,sp,-16
    80006bf0:	00113423          	sd	ra,8(sp)
    80006bf4:	00813023          	sd	s0,0(sp)
    80006bf8:	01010413          	addi	s0,sp,16
        consumer(td);
    80006bfc:	02053583          	ld	a1,32(a0)
    80006c00:	00000097          	auipc	ra,0x0
    80006c04:	8f0080e7          	jalr	-1808(ra) # 800064f0 <_ZN12ConsumerSync8consumerEPv>
    }
    80006c08:	00813083          	ld	ra,8(sp)
    80006c0c:	00013403          	ld	s0,0(sp)
    80006c10:	01010113          	addi	sp,sp,16
    80006c14:	00008067          	ret

0000000080006c18 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006c18:	fe010113          	addi	sp,sp,-32
    80006c1c:	00113c23          	sd	ra,24(sp)
    80006c20:	00813823          	sd	s0,16(sp)
    80006c24:	00913423          	sd	s1,8(sp)
    80006c28:	01213023          	sd	s2,0(sp)
    80006c2c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006c30:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006c34:	00600493          	li	s1,6
    while (--i > 0) {
    80006c38:	fff4849b          	addiw	s1,s1,-1
    80006c3c:	04905463          	blez	s1,80006c84 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006c40:	00004517          	auipc	a0,0x4
    80006c44:	39050513          	addi	a0,a0,912 # 8000afd0 <_ZTV12ConsumerSync+0x28>
    80006c48:	00000097          	auipc	ra,0x0
    80006c4c:	10c080e7          	jalr	268(ra) # 80006d54 <_Z11printStringPKc>
        printInt(sleep_time);
    80006c50:	00000613          	li	a2,0
    80006c54:	00a00593          	li	a1,10
    80006c58:	0009051b          	sext.w	a0,s2
    80006c5c:	00000097          	auipc	ra,0x0
    80006c60:	2a4080e7          	jalr	676(ra) # 80006f00 <_Z8printIntiii>
        printString(" !\n");
    80006c64:	00004517          	auipc	a0,0x4
    80006c68:	37450513          	addi	a0,a0,884 # 8000afd8 <_ZTV12ConsumerSync+0x30>
    80006c6c:	00000097          	auipc	ra,0x0
    80006c70:	0e8080e7          	jalr	232(ra) # 80006d54 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006c74:	00090513          	mv	a0,s2
    80006c78:	ffffb097          	auipc	ra,0xffffb
    80006c7c:	1ac080e7          	jalr	428(ra) # 80001e24 <_Z10time_sleepm>
    while (--i > 0) {
    80006c80:	fb9ff06f          	j	80006c38 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006c84:	00a00793          	li	a5,10
    80006c88:	02f95933          	divu	s2,s2,a5
    80006c8c:	fff90913          	addi	s2,s2,-1
    80006c90:	00006797          	auipc	a5,0x6
    80006c94:	5e878793          	addi	a5,a5,1512 # 8000d278 <_ZL8finished>
    80006c98:	01278933          	add	s2,a5,s2
    80006c9c:	00100793          	li	a5,1
    80006ca0:	00f90023          	sb	a5,0(s2)
}
    80006ca4:	01813083          	ld	ra,24(sp)
    80006ca8:	01013403          	ld	s0,16(sp)
    80006cac:	00813483          	ld	s1,8(sp)
    80006cb0:	00013903          	ld	s2,0(sp)
    80006cb4:	02010113          	addi	sp,sp,32
    80006cb8:	00008067          	ret

0000000080006cbc <_Z12testSleepingv>:

void testSleeping() {
    80006cbc:	fc010113          	addi	sp,sp,-64
    80006cc0:	02113c23          	sd	ra,56(sp)
    80006cc4:	02813823          	sd	s0,48(sp)
    80006cc8:	02913423          	sd	s1,40(sp)
    80006ccc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006cd0:	00a00793          	li	a5,10
    80006cd4:	fcf43823          	sd	a5,-48(s0)
    80006cd8:	01400793          	li	a5,20
    80006cdc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006ce0:	00000493          	li	s1,0
    80006ce4:	00100793          	li	a5,1
    80006ce8:	0297c863          	blt	a5,s1,80006d18 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006cec:	00349513          	slli	a0,s1,0x3
    80006cf0:	fd040793          	addi	a5,s0,-48
    80006cf4:	00a78633          	add	a2,a5,a0
    80006cf8:	00000597          	auipc	a1,0x0
    80006cfc:	f2058593          	addi	a1,a1,-224 # 80006c18 <_ZL9sleepyRunPv>
    80006d00:	fc040793          	addi	a5,s0,-64
    80006d04:	00a78533          	add	a0,a5,a0
    80006d08:	ffffb097          	auipc	ra,0xffffb
    80006d0c:	e3c080e7          	jalr	-452(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006d10:	0014849b          	addiw	s1,s1,1
    80006d14:	fd1ff06f          	j	80006ce4 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    80006d18:	00006797          	auipc	a5,0x6
    80006d1c:	56078793          	addi	a5,a5,1376 # 8000d278 <_ZL8finished>
    80006d20:	0007c783          	lbu	a5,0(a5)
    80006d24:	0ff7f793          	andi	a5,a5,255
    80006d28:	fe0788e3          	beqz	a5,80006d18 <_Z12testSleepingv+0x5c>
    80006d2c:	00006797          	auipc	a5,0x6
    80006d30:	54c78793          	addi	a5,a5,1356 # 8000d278 <_ZL8finished>
    80006d34:	0017c783          	lbu	a5,1(a5)
    80006d38:	0ff7f793          	andi	a5,a5,255
    80006d3c:	fc078ee3          	beqz	a5,80006d18 <_Z12testSleepingv+0x5c>
}
    80006d40:	03813083          	ld	ra,56(sp)
    80006d44:	03013403          	ld	s0,48(sp)
    80006d48:	02813483          	ld	s1,40(sp)
    80006d4c:	04010113          	addi	sp,sp,64
    80006d50:	00008067          	ret

0000000080006d54 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006d54:	fe010113          	addi	sp,sp,-32
    80006d58:	00113c23          	sd	ra,24(sp)
    80006d5c:	00813823          	sd	s0,16(sp)
    80006d60:	00913423          	sd	s1,8(sp)
    80006d64:	02010413          	addi	s0,sp,32
    80006d68:	00050493          	mv	s1,a0
    LOCK();
    80006d6c:	00100613          	li	a2,1
    80006d70:	00000593          	li	a1,0
    80006d74:	00006517          	auipc	a0,0x6
    80006d78:	50c50513          	addi	a0,a0,1292 # 8000d280 <lockPrint>
    80006d7c:	ffffa097          	auipc	ra,0xffffa
    80006d80:	3a8080e7          	jalr	936(ra) # 80001124 <copy_and_swap>
    80006d84:	00050863          	beqz	a0,80006d94 <_Z11printStringPKc+0x40>
    80006d88:	ffffb097          	auipc	ra,0xffffb
    80006d8c:	e6c080e7          	jalr	-404(ra) # 80001bf4 <_Z15thread_dispatchv>
    80006d90:	fddff06f          	j	80006d6c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006d94:	0004c503          	lbu	a0,0(s1)
    80006d98:	00050a63          	beqz	a0,80006dac <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006d9c:	ffffb097          	auipc	ra,0xffffb
    80006da0:	128080e7          	jalr	296(ra) # 80001ec4 <_Z4putcc>
        string++;
    80006da4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006da8:	fedff06f          	j	80006d94 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006dac:	00000613          	li	a2,0
    80006db0:	00100593          	li	a1,1
    80006db4:	00006517          	auipc	a0,0x6
    80006db8:	4cc50513          	addi	a0,a0,1228 # 8000d280 <lockPrint>
    80006dbc:	ffffa097          	auipc	ra,0xffffa
    80006dc0:	368080e7          	jalr	872(ra) # 80001124 <copy_and_swap>
    80006dc4:	fe0514e3          	bnez	a0,80006dac <_Z11printStringPKc+0x58>
}
    80006dc8:	01813083          	ld	ra,24(sp)
    80006dcc:	01013403          	ld	s0,16(sp)
    80006dd0:	00813483          	ld	s1,8(sp)
    80006dd4:	02010113          	addi	sp,sp,32
    80006dd8:	00008067          	ret

0000000080006ddc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006ddc:	fd010113          	addi	sp,sp,-48
    80006de0:	02113423          	sd	ra,40(sp)
    80006de4:	02813023          	sd	s0,32(sp)
    80006de8:	00913c23          	sd	s1,24(sp)
    80006dec:	01213823          	sd	s2,16(sp)
    80006df0:	01313423          	sd	s3,8(sp)
    80006df4:	01413023          	sd	s4,0(sp)
    80006df8:	03010413          	addi	s0,sp,48
    80006dfc:	00050993          	mv	s3,a0
    80006e00:	00058a13          	mv	s4,a1
    LOCK();
    80006e04:	00100613          	li	a2,1
    80006e08:	00000593          	li	a1,0
    80006e0c:	00006517          	auipc	a0,0x6
    80006e10:	47450513          	addi	a0,a0,1140 # 8000d280 <lockPrint>
    80006e14:	ffffa097          	auipc	ra,0xffffa
    80006e18:	310080e7          	jalr	784(ra) # 80001124 <copy_and_swap>
    80006e1c:	00050863          	beqz	a0,80006e2c <_Z9getStringPci+0x50>
    80006e20:	ffffb097          	auipc	ra,0xffffb
    80006e24:	dd4080e7          	jalr	-556(ra) # 80001bf4 <_Z15thread_dispatchv>
    80006e28:	fddff06f          	j	80006e04 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006e2c:	00000493          	li	s1,0
    80006e30:	0014891b          	addiw	s2,s1,1
    80006e34:	03495a63          	bge	s2,s4,80006e68 <_Z9getStringPci+0x8c>
        cc = getc();
    80006e38:	ffffb097          	auipc	ra,0xffffb
    80006e3c:	03c080e7          	jalr	60(ra) # 80001e74 <_Z4getcv>
        if(cc < 1)
    80006e40:	02050463          	beqz	a0,80006e68 <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    80006e44:	009984b3          	add	s1,s3,s1
    80006e48:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006e4c:	00a00793          	li	a5,10
    80006e50:	00f50a63          	beq	a0,a5,80006e64 <_Z9getStringPci+0x88>
        buf[i++] = c;
    80006e54:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    80006e58:	00d00793          	li	a5,13
    80006e5c:	fcf51ae3          	bne	a0,a5,80006e30 <_Z9getStringPci+0x54>
    80006e60:	0080006f          	j	80006e68 <_Z9getStringPci+0x8c>
        buf[i++] = c;
    80006e64:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006e68:	009984b3          	add	s1,s3,s1
    80006e6c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006e70:	00000613          	li	a2,0
    80006e74:	00100593          	li	a1,1
    80006e78:	00006517          	auipc	a0,0x6
    80006e7c:	40850513          	addi	a0,a0,1032 # 8000d280 <lockPrint>
    80006e80:	ffffa097          	auipc	ra,0xffffa
    80006e84:	2a4080e7          	jalr	676(ra) # 80001124 <copy_and_swap>
    80006e88:	fe0514e3          	bnez	a0,80006e70 <_Z9getStringPci+0x94>
    return buf;
}
    80006e8c:	00098513          	mv	a0,s3
    80006e90:	02813083          	ld	ra,40(sp)
    80006e94:	02013403          	ld	s0,32(sp)
    80006e98:	01813483          	ld	s1,24(sp)
    80006e9c:	01013903          	ld	s2,16(sp)
    80006ea0:	00813983          	ld	s3,8(sp)
    80006ea4:	00013a03          	ld	s4,0(sp)
    80006ea8:	03010113          	addi	sp,sp,48
    80006eac:	00008067          	ret

0000000080006eb0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006eb0:	ff010113          	addi	sp,sp,-16
    80006eb4:	00813423          	sd	s0,8(sp)
    80006eb8:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    80006ebc:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    80006ec0:	00054603          	lbu	a2,0(a0)
    80006ec4:	fd06069b          	addiw	a3,a2,-48
    80006ec8:	0ff6f693          	andi	a3,a3,255
    80006ecc:	00900713          	li	a4,9
    80006ed0:	02d76063          	bltu	a4,a3,80006ef0 <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    80006ed4:	0027969b          	slliw	a3,a5,0x2
    80006ed8:	00f687bb          	addw	a5,a3,a5
    80006edc:	0017971b          	slliw	a4,a5,0x1
    80006ee0:	00150513          	addi	a0,a0,1
    80006ee4:	00c707bb          	addw	a5,a4,a2
    80006ee8:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    80006eec:	fd5ff06f          	j	80006ec0 <_Z11stringToIntPKc+0x10>
    return n;
}
    80006ef0:	00078513          	mv	a0,a5
    80006ef4:	00813403          	ld	s0,8(sp)
    80006ef8:	01010113          	addi	sp,sp,16
    80006efc:	00008067          	ret

0000000080006f00 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006f00:	fc010113          	addi	sp,sp,-64
    80006f04:	02113c23          	sd	ra,56(sp)
    80006f08:	02813823          	sd	s0,48(sp)
    80006f0c:	02913423          	sd	s1,40(sp)
    80006f10:	03213023          	sd	s2,32(sp)
    80006f14:	01313c23          	sd	s3,24(sp)
    80006f18:	04010413          	addi	s0,sp,64
    80006f1c:	00050493          	mv	s1,a0
    80006f20:	00058913          	mv	s2,a1
    80006f24:	00060993          	mv	s3,a2
    LOCK();
    80006f28:	00100613          	li	a2,1
    80006f2c:	00000593          	li	a1,0
    80006f30:	00006517          	auipc	a0,0x6
    80006f34:	35050513          	addi	a0,a0,848 # 8000d280 <lockPrint>
    80006f38:	ffffa097          	auipc	ra,0xffffa
    80006f3c:	1ec080e7          	jalr	492(ra) # 80001124 <copy_and_swap>
    80006f40:	00050863          	beqz	a0,80006f50 <_Z8printIntiii+0x50>
    80006f44:	ffffb097          	auipc	ra,0xffffb
    80006f48:	cb0080e7          	jalr	-848(ra) # 80001bf4 <_Z15thread_dispatchv>
    80006f4c:	fddff06f          	j	80006f28 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006f50:	00098463          	beqz	s3,80006f58 <_Z8printIntiii+0x58>
    80006f54:	0004ca63          	bltz	s1,80006f68 <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006f58:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006f5c:	00000593          	li	a1,0
    }

    i = 0;
    80006f60:	00000613          	li	a2,0
    80006f64:	0180006f          	j	80006f7c <_Z8printIntiii+0x7c>
        x = -xx;
    80006f68:	4090053b          	negw	a0,s1
        neg = 1;
    80006f6c:	00100593          	li	a1,1
        x = -xx;
    80006f70:	ff1ff06f          	j	80006f60 <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    80006f74:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    80006f78:	00048613          	mv	a2,s1
    80006f7c:	0009079b          	sext.w	a5,s2
    80006f80:	02f5773b          	remuw	a4,a0,a5
    80006f84:	0016049b          	addiw	s1,a2,1
    80006f88:	02071693          	slli	a3,a4,0x20
    80006f8c:	0206d693          	srli	a3,a3,0x20
    80006f90:	00006717          	auipc	a4,0x6
    80006f94:	0c070713          	addi	a4,a4,192 # 8000d050 <digits>
    80006f98:	00d70733          	add	a4,a4,a3
    80006f9c:	00074683          	lbu	a3,0(a4)
    80006fa0:	fd040713          	addi	a4,s0,-48
    80006fa4:	00c70733          	add	a4,a4,a2
    80006fa8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006fac:	02f5573b          	divuw	a4,a0,a5
    80006fb0:	0007069b          	sext.w	a3,a4
    80006fb4:	fcf570e3          	bgeu	a0,a5,80006f74 <_Z8printIntiii+0x74>
    if(neg)
    80006fb8:	00058c63          	beqz	a1,80006fd0 <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    80006fbc:	fd040793          	addi	a5,s0,-48
    80006fc0:	009784b3          	add	s1,a5,s1
    80006fc4:	02d00793          	li	a5,45
    80006fc8:	fef48823          	sb	a5,-16(s1)
    80006fcc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006fd0:	fff4849b          	addiw	s1,s1,-1
    80006fd4:	0004ce63          	bltz	s1,80006ff0 <_Z8printIntiii+0xf0>
        putc(buf[i]);
    80006fd8:	fd040793          	addi	a5,s0,-48
    80006fdc:	009787b3          	add	a5,a5,s1
    80006fe0:	ff07c503          	lbu	a0,-16(a5)
    80006fe4:	ffffb097          	auipc	ra,0xffffb
    80006fe8:	ee0080e7          	jalr	-288(ra) # 80001ec4 <_Z4putcc>
    80006fec:	fe5ff06f          	j	80006fd0 <_Z8printIntiii+0xd0>

    UNLOCK();
    80006ff0:	00000613          	li	a2,0
    80006ff4:	00100593          	li	a1,1
    80006ff8:	00006517          	auipc	a0,0x6
    80006ffc:	28850513          	addi	a0,a0,648 # 8000d280 <lockPrint>
    80007000:	ffffa097          	auipc	ra,0xffffa
    80007004:	124080e7          	jalr	292(ra) # 80001124 <copy_and_swap>
    80007008:	fe0514e3          	bnez	a0,80006ff0 <_Z8printIntiii+0xf0>
    8000700c:	03813083          	ld	ra,56(sp)
    80007010:	03013403          	ld	s0,48(sp)
    80007014:	02813483          	ld	s1,40(sp)
    80007018:	02013903          	ld	s2,32(sp)
    8000701c:	01813983          	ld	s3,24(sp)
    80007020:	04010113          	addi	sp,sp,64
    80007024:	00008067          	ret

0000000080007028 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80007028:	fe010113          	addi	sp,sp,-32
    8000702c:	00113c23          	sd	ra,24(sp)
    80007030:	00813823          	sd	s0,16(sp)
    80007034:	00913423          	sd	s1,8(sp)
    80007038:	01213023          	sd	s2,0(sp)
    8000703c:	02010413          	addi	s0,sp,32
    80007040:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80007044:	00000913          	li	s2,0
    80007048:	00c0006f          	j	80007054 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000704c:	ffffb097          	auipc	ra,0xffffb
    80007050:	ba8080e7          	jalr	-1112(ra) # 80001bf4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80007054:	ffffb097          	auipc	ra,0xffffb
    80007058:	e20080e7          	jalr	-480(ra) # 80001e74 <_Z4getcv>
    8000705c:	0005059b          	sext.w	a1,a0
    80007060:	01b00793          	li	a5,27
    80007064:	02f58a63          	beq	a1,a5,80007098 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80007068:	0084b503          	ld	a0,8(s1)
    8000706c:	ffffd097          	auipc	ra,0xffffd
    80007070:	bf0080e7          	jalr	-1040(ra) # 80003c5c <_ZN6Buffer3putEi>
        i++;
    80007074:	0019079b          	addiw	a5,s2,1
    80007078:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    8000707c:	0004a683          	lw	a3,0(s1)
    80007080:	0026971b          	slliw	a4,a3,0x2
    80007084:	00d7073b          	addw	a4,a4,a3
    80007088:	0017169b          	slliw	a3,a4,0x1
    8000708c:	02d7e7bb          	remw	a5,a5,a3
    80007090:	fc0792e3          	bnez	a5,80007054 <_ZL16producerKeyboardPv+0x2c>
    80007094:	fb9ff06f          	j	8000704c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80007098:	00100793          	li	a5,1
    8000709c:	00006717          	auipc	a4,0x6
    800070a0:	1ef72623          	sw	a5,492(a4) # 8000d288 <_ZL9threadEnd>
    data->buffer->put('!');
    800070a4:	02100593          	li	a1,33
    800070a8:	0084b503          	ld	a0,8(s1)
    800070ac:	ffffd097          	auipc	ra,0xffffd
    800070b0:	bb0080e7          	jalr	-1104(ra) # 80003c5c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800070b4:	0104b503          	ld	a0,16(s1)
    800070b8:	ffffb097          	auipc	ra,0xffffb
    800070bc:	d1c080e7          	jalr	-740(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
}
    800070c0:	01813083          	ld	ra,24(sp)
    800070c4:	01013403          	ld	s0,16(sp)
    800070c8:	00813483          	ld	s1,8(sp)
    800070cc:	00013903          	ld	s2,0(sp)
    800070d0:	02010113          	addi	sp,sp,32
    800070d4:	00008067          	ret

00000000800070d8 <_ZL8producerPv>:

static void producer(void *arg) {
    800070d8:	fe010113          	addi	sp,sp,-32
    800070dc:	00113c23          	sd	ra,24(sp)
    800070e0:	00813823          	sd	s0,16(sp)
    800070e4:	00913423          	sd	s1,8(sp)
    800070e8:	01213023          	sd	s2,0(sp)
    800070ec:	02010413          	addi	s0,sp,32
    800070f0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800070f4:	00000913          	li	s2,0
    800070f8:	00c0006f          	j	80007104 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800070fc:	ffffb097          	auipc	ra,0xffffb
    80007100:	af8080e7          	jalr	-1288(ra) # 80001bf4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80007104:	00006797          	auipc	a5,0x6
    80007108:	18478793          	addi	a5,a5,388 # 8000d288 <_ZL9threadEnd>
    8000710c:	0007a783          	lw	a5,0(a5)
    80007110:	0007879b          	sext.w	a5,a5
    80007114:	02079e63          	bnez	a5,80007150 <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    80007118:	0004a583          	lw	a1,0(s1)
    8000711c:	0305859b          	addiw	a1,a1,48
    80007120:	0084b503          	ld	a0,8(s1)
    80007124:	ffffd097          	auipc	ra,0xffffd
    80007128:	b38080e7          	jalr	-1224(ra) # 80003c5c <_ZN6Buffer3putEi>
        i++;
    8000712c:	0019079b          	addiw	a5,s2,1
    80007130:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80007134:	0004a683          	lw	a3,0(s1)
    80007138:	0026971b          	slliw	a4,a3,0x2
    8000713c:	00d7073b          	addw	a4,a4,a3
    80007140:	0017169b          	slliw	a3,a4,0x1
    80007144:	02d7e7bb          	remw	a5,a5,a3
    80007148:	fa079ee3          	bnez	a5,80007104 <_ZL8producerPv+0x2c>
    8000714c:	fb1ff06f          	j	800070fc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80007150:	0104b503          	ld	a0,16(s1)
    80007154:	ffffb097          	auipc	ra,0xffffb
    80007158:	c80080e7          	jalr	-896(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
}
    8000715c:	01813083          	ld	ra,24(sp)
    80007160:	01013403          	ld	s0,16(sp)
    80007164:	00813483          	ld	s1,8(sp)
    80007168:	00013903          	ld	s2,0(sp)
    8000716c:	02010113          	addi	sp,sp,32
    80007170:	00008067          	ret

0000000080007174 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80007174:	fd010113          	addi	sp,sp,-48
    80007178:	02113423          	sd	ra,40(sp)
    8000717c:	02813023          	sd	s0,32(sp)
    80007180:	00913c23          	sd	s1,24(sp)
    80007184:	01213823          	sd	s2,16(sp)
    80007188:	01313423          	sd	s3,8(sp)
    8000718c:	03010413          	addi	s0,sp,48
    80007190:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80007194:	00000993          	li	s3,0
    80007198:	01c0006f          	j	800071b4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000719c:	ffffb097          	auipc	ra,0xffffb
    800071a0:	a58080e7          	jalr	-1448(ra) # 80001bf4 <_Z15thread_dispatchv>
    800071a4:	0580006f          	j	800071fc <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800071a8:	00a00513          	li	a0,10
    800071ac:	ffffb097          	auipc	ra,0xffffb
    800071b0:	d18080e7          	jalr	-744(ra) # 80001ec4 <_Z4putcc>
    while (!threadEnd) {
    800071b4:	00006797          	auipc	a5,0x6
    800071b8:	0d478793          	addi	a5,a5,212 # 8000d288 <_ZL9threadEnd>
    800071bc:	0007a783          	lw	a5,0(a5)
    800071c0:	0007879b          	sext.w	a5,a5
    800071c4:	04079463          	bnez	a5,8000720c <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    800071c8:	00893503          	ld	a0,8(s2)
    800071cc:	ffffd097          	auipc	ra,0xffffd
    800071d0:	b20080e7          	jalr	-1248(ra) # 80003cec <_ZN6Buffer3getEv>
        i++;
    800071d4:	0019849b          	addiw	s1,s3,1
    800071d8:	0004899b          	sext.w	s3,s1
        putc(key);
    800071dc:	0ff57513          	andi	a0,a0,255
    800071e0:	ffffb097          	auipc	ra,0xffffb
    800071e4:	ce4080e7          	jalr	-796(ra) # 80001ec4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800071e8:	00092703          	lw	a4,0(s2)
    800071ec:	0027179b          	slliw	a5,a4,0x2
    800071f0:	00e787bb          	addw	a5,a5,a4
    800071f4:	02f4e7bb          	remw	a5,s1,a5
    800071f8:	fa0782e3          	beqz	a5,8000719c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800071fc:	05000793          	li	a5,80
    80007200:	02f4e4bb          	remw	s1,s1,a5
    80007204:	fa0498e3          	bnez	s1,800071b4 <_ZL8consumerPv+0x40>
    80007208:	fa1ff06f          	j	800071a8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    8000720c:	00893503          	ld	a0,8(s2)
    80007210:	ffffd097          	auipc	ra,0xffffd
    80007214:	b68080e7          	jalr	-1176(ra) # 80003d78 <_ZN6Buffer6getCntEv>
    80007218:	02a05063          	blez	a0,80007238 <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    8000721c:	00893503          	ld	a0,8(s2)
    80007220:	ffffd097          	auipc	ra,0xffffd
    80007224:	acc080e7          	jalr	-1332(ra) # 80003cec <_ZN6Buffer3getEv>
        putc(key);
    80007228:	0ff57513          	andi	a0,a0,255
    8000722c:	ffffb097          	auipc	ra,0xffffb
    80007230:	c98080e7          	jalr	-872(ra) # 80001ec4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80007234:	fd9ff06f          	j	8000720c <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    80007238:	01093503          	ld	a0,16(s2)
    8000723c:	ffffb097          	auipc	ra,0xffffb
    80007240:	b98080e7          	jalr	-1128(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
}
    80007244:	02813083          	ld	ra,40(sp)
    80007248:	02013403          	ld	s0,32(sp)
    8000724c:	01813483          	ld	s1,24(sp)
    80007250:	01013903          	ld	s2,16(sp)
    80007254:	00813983          	ld	s3,8(sp)
    80007258:	03010113          	addi	sp,sp,48
    8000725c:	00008067          	ret

0000000080007260 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80007260:	f9010113          	addi	sp,sp,-112
    80007264:	06113423          	sd	ra,104(sp)
    80007268:	06813023          	sd	s0,96(sp)
    8000726c:	04913c23          	sd	s1,88(sp)
    80007270:	05213823          	sd	s2,80(sp)
    80007274:	05313423          	sd	s3,72(sp)
    80007278:	05413023          	sd	s4,64(sp)
    8000727c:	03513c23          	sd	s5,56(sp)
    80007280:	03613823          	sd	s6,48(sp)
    80007284:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80007288:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000728c:	00003517          	auipc	a0,0x3
    80007290:	69c50513          	addi	a0,a0,1692 # 8000a928 <_ZTV8Consumer+0x28>
    80007294:	00000097          	auipc	ra,0x0
    80007298:	ac0080e7          	jalr	-1344(ra) # 80006d54 <_Z11printStringPKc>
    getString(input, 30);
    8000729c:	01e00593          	li	a1,30
    800072a0:	fa040513          	addi	a0,s0,-96
    800072a4:	00000097          	auipc	ra,0x0
    800072a8:	b38080e7          	jalr	-1224(ra) # 80006ddc <_Z9getStringPci>
    threadNum = stringToInt(input);
    800072ac:	fa040513          	addi	a0,s0,-96
    800072b0:	00000097          	auipc	ra,0x0
    800072b4:	c00080e7          	jalr	-1024(ra) # 80006eb0 <_Z11stringToIntPKc>
    800072b8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800072bc:	00003517          	auipc	a0,0x3
    800072c0:	68c50513          	addi	a0,a0,1676 # 8000a948 <_ZTV8Consumer+0x48>
    800072c4:	00000097          	auipc	ra,0x0
    800072c8:	a90080e7          	jalr	-1392(ra) # 80006d54 <_Z11printStringPKc>
    getString(input, 30);
    800072cc:	01e00593          	li	a1,30
    800072d0:	fa040513          	addi	a0,s0,-96
    800072d4:	00000097          	auipc	ra,0x0
    800072d8:	b08080e7          	jalr	-1272(ra) # 80006ddc <_Z9getStringPci>
    n = stringToInt(input);
    800072dc:	fa040513          	addi	a0,s0,-96
    800072e0:	00000097          	auipc	ra,0x0
    800072e4:	bd0080e7          	jalr	-1072(ra) # 80006eb0 <_Z11stringToIntPKc>
    800072e8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800072ec:	00003517          	auipc	a0,0x3
    800072f0:	67c50513          	addi	a0,a0,1660 # 8000a968 <_ZTV8Consumer+0x68>
    800072f4:	00000097          	auipc	ra,0x0
    800072f8:	a60080e7          	jalr	-1440(ra) # 80006d54 <_Z11printStringPKc>
    800072fc:	00000613          	li	a2,0
    80007300:	00a00593          	li	a1,10
    80007304:	00090513          	mv	a0,s2
    80007308:	00000097          	auipc	ra,0x0
    8000730c:	bf8080e7          	jalr	-1032(ra) # 80006f00 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80007310:	00003517          	auipc	a0,0x3
    80007314:	67050513          	addi	a0,a0,1648 # 8000a980 <_ZTV8Consumer+0x80>
    80007318:	00000097          	auipc	ra,0x0
    8000731c:	a3c080e7          	jalr	-1476(ra) # 80006d54 <_Z11printStringPKc>
    80007320:	00000613          	li	a2,0
    80007324:	00a00593          	li	a1,10
    80007328:	00048513          	mv	a0,s1
    8000732c:	00000097          	auipc	ra,0x0
    80007330:	bd4080e7          	jalr	-1068(ra) # 80006f00 <_Z8printIntiii>
    printString(".\n");
    80007334:	00003517          	auipc	a0,0x3
    80007338:	66450513          	addi	a0,a0,1636 # 8000a998 <_ZTV8Consumer+0x98>
    8000733c:	00000097          	auipc	ra,0x0
    80007340:	a18080e7          	jalr	-1512(ra) # 80006d54 <_Z11printStringPKc>
    if(threadNum > n) {
    80007344:	0324c463          	blt	s1,s2,8000736c <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    80007348:	03205c63          	blez	s2,80007380 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    8000734c:	03800513          	li	a0,56
    80007350:	ffffb097          	auipc	ra,0xffffb
    80007354:	07c080e7          	jalr	124(ra) # 800023cc <_Znwm>
    80007358:	00050a13          	mv	s4,a0
    8000735c:	00048593          	mv	a1,s1
    80007360:	ffffd097          	auipc	ra,0xffffd
    80007364:	860080e7          	jalr	-1952(ra) # 80003bc0 <_ZN6BufferC1Ei>
    80007368:	0300006f          	j	80007398 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000736c:	00003517          	auipc	a0,0x3
    80007370:	63450513          	addi	a0,a0,1588 # 8000a9a0 <_ZTV8Consumer+0xa0>
    80007374:	00000097          	auipc	ra,0x0
    80007378:	9e0080e7          	jalr	-1568(ra) # 80006d54 <_Z11printStringPKc>
        return;
    8000737c:	0140006f          	j	80007390 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80007380:	00003517          	auipc	a0,0x3
    80007384:	66050513          	addi	a0,a0,1632 # 8000a9e0 <_ZTV8Consumer+0xe0>
    80007388:	00000097          	auipc	ra,0x0
    8000738c:	9cc080e7          	jalr	-1588(ra) # 80006d54 <_Z11printStringPKc>
        return;
    80007390:	000b0113          	mv	sp,s6
    80007394:	1680006f          	j	800074fc <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80007398:	00000593          	li	a1,0
    8000739c:	00006517          	auipc	a0,0x6
    800073a0:	ef450513          	addi	a0,a0,-268 # 8000d290 <_ZL10waitForAll>
    800073a4:	ffffb097          	auipc	ra,0xffffb
    800073a8:	89c080e7          	jalr	-1892(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    800073ac:	00391793          	slli	a5,s2,0x3
    800073b0:	00f78793          	addi	a5,a5,15
    800073b4:	ff07f793          	andi	a5,a5,-16
    800073b8:	40f10133          	sub	sp,sp,a5
    800073bc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800073c0:	0019079b          	addiw	a5,s2,1
    800073c4:	00179713          	slli	a4,a5,0x1
    800073c8:	00f70733          	add	a4,a4,a5
    800073cc:	00371793          	slli	a5,a4,0x3
    800073d0:	00f78793          	addi	a5,a5,15
    800073d4:	ff07f793          	andi	a5,a5,-16
    800073d8:	40f10133          	sub	sp,sp,a5
    800073dc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800073e0:	00191713          	slli	a4,s2,0x1
    800073e4:	012706b3          	add	a3,a4,s2
    800073e8:	00369793          	slli	a5,a3,0x3
    800073ec:	00f987b3          	add	a5,s3,a5
    800073f0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800073f4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800073f8:	00006697          	auipc	a3,0x6
    800073fc:	e9868693          	addi	a3,a3,-360 # 8000d290 <_ZL10waitForAll>
    80007400:	0006b683          	ld	a3,0(a3)
    80007404:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80007408:	012707b3          	add	a5,a4,s2
    8000740c:	00379613          	slli	a2,a5,0x3
    80007410:	00c98633          	add	a2,s3,a2
    80007414:	00000597          	auipc	a1,0x0
    80007418:	d6058593          	addi	a1,a1,-672 # 80007174 <_ZL8consumerPv>
    8000741c:	f9840513          	addi	a0,s0,-104
    80007420:	ffffa097          	auipc	ra,0xffffa
    80007424:	724080e7          	jalr	1828(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80007428:	00000493          	li	s1,0
    8000742c:	0280006f          	j	80007454 <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    80007430:	00000597          	auipc	a1,0x0
    80007434:	bf858593          	addi	a1,a1,-1032 # 80007028 <_ZL16producerKeyboardPv>
                      data + i);
    80007438:	00171793          	slli	a5,a4,0x1
    8000743c:	00e787b3          	add	a5,a5,a4
    80007440:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    80007444:	00c98633          	add	a2,s3,a2
    80007448:	ffffa097          	auipc	ra,0xffffa
    8000744c:	6fc080e7          	jalr	1788(ra) # 80001b44 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80007450:	0014849b          	addiw	s1,s1,1
    80007454:	0524d463          	bge	s1,s2,8000749c <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    80007458:	00149713          	slli	a4,s1,0x1
    8000745c:	00970733          	add	a4,a4,s1
    80007460:	00371793          	slli	a5,a4,0x3
    80007464:	00f987b3          	add	a5,s3,a5
    80007468:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000746c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80007470:	00006717          	auipc	a4,0x6
    80007474:	e2070713          	addi	a4,a4,-480 # 8000d290 <_ZL10waitForAll>
    80007478:	00073703          	ld	a4,0(a4)
    8000747c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80007480:	00048713          	mv	a4,s1
    80007484:	00349513          	slli	a0,s1,0x3
    80007488:	00aa8533          	add	a0,s5,a0
    8000748c:	fa9052e3          	blez	s1,80007430 <_Z22producerConsumer_C_APIv+0x1d0>
    80007490:	00000597          	auipc	a1,0x0
    80007494:	c4858593          	addi	a1,a1,-952 # 800070d8 <_ZL8producerPv>
    80007498:	fa1ff06f          	j	80007438 <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    8000749c:	ffffa097          	auipc	ra,0xffffa
    800074a0:	758080e7          	jalr	1880(ra) # 80001bf4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800074a4:	00000493          	li	s1,0
    800074a8:	02994063          	blt	s2,s1,800074c8 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    800074ac:	00006797          	auipc	a5,0x6
    800074b0:	de478793          	addi	a5,a5,-540 # 8000d290 <_ZL10waitForAll>
    800074b4:	0007b503          	ld	a0,0(a5)
    800074b8:	ffffb097          	auipc	ra,0xffffb
    800074bc:	8cc080e7          	jalr	-1844(ra) # 80001d84 <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    800074c0:	0014849b          	addiw	s1,s1,1
    800074c4:	fe5ff06f          	j	800074a8 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    800074c8:	00006797          	auipc	a5,0x6
    800074cc:	dc878793          	addi	a5,a5,-568 # 8000d290 <_ZL10waitForAll>
    800074d0:	0007b503          	ld	a0,0(a5)
    800074d4:	ffffb097          	auipc	ra,0xffffb
    800074d8:	844080e7          	jalr	-1980(ra) # 80001d18 <_Z9sem_closeP10_semaphore>
    delete buffer;
    800074dc:	000a0e63          	beqz	s4,800074f8 <_Z22producerConsumer_C_APIv+0x298>
    800074e0:	000a0513          	mv	a0,s4
    800074e4:	ffffd097          	auipc	ra,0xffffd
    800074e8:	91c080e7          	jalr	-1764(ra) # 80003e00 <_ZN6BufferD1Ev>
    800074ec:	000a0513          	mv	a0,s4
    800074f0:	ffffb097          	auipc	ra,0xffffb
    800074f4:	f5c080e7          	jalr	-164(ra) # 8000244c <_ZdlPv>
    800074f8:	000b0113          	mv	sp,s6

}
    800074fc:	f9040113          	addi	sp,s0,-112
    80007500:	06813083          	ld	ra,104(sp)
    80007504:	06013403          	ld	s0,96(sp)
    80007508:	05813483          	ld	s1,88(sp)
    8000750c:	05013903          	ld	s2,80(sp)
    80007510:	04813983          	ld	s3,72(sp)
    80007514:	04013a03          	ld	s4,64(sp)
    80007518:	03813a83          	ld	s5,56(sp)
    8000751c:	03013b03          	ld	s6,48(sp)
    80007520:	07010113          	addi	sp,sp,112
    80007524:	00008067          	ret
    80007528:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000752c:	000a0513          	mv	a0,s4
    80007530:	ffffb097          	auipc	ra,0xffffb
    80007534:	f1c080e7          	jalr	-228(ra) # 8000244c <_ZdlPv>
    80007538:	00048513          	mv	a0,s1
    8000753c:	00007097          	auipc	ra,0x7
    80007540:	fe4080e7          	jalr	-28(ra) # 8000e520 <_Unwind_Resume>

0000000080007544 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80007544:	fd010113          	addi	sp,sp,-48
    80007548:	02113423          	sd	ra,40(sp)
    8000754c:	02813023          	sd	s0,32(sp)
    80007550:	00913c23          	sd	s1,24(sp)
    80007554:	01213823          	sd	s2,16(sp)
    80007558:	01313423          	sd	s3,8(sp)
    8000755c:	03010413          	addi	s0,sp,48
    80007560:	00050493          	mv	s1,a0
    80007564:	00058993          	mv	s3,a1
    80007568:	0015879b          	addiw	a5,a1,1
    8000756c:	0007851b          	sext.w	a0,a5
    80007570:	00f4a023          	sw	a5,0(s1)
    80007574:	0004a823          	sw	zero,16(s1)
    80007578:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000757c:	00251513          	slli	a0,a0,0x2
    80007580:	ffffa097          	auipc	ra,0xffffa
    80007584:	470080e7          	jalr	1136(ra) # 800019f0 <_Z9mem_allocm>
    80007588:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000758c:	01000513          	li	a0,16
    80007590:	ffffb097          	auipc	ra,0xffffb
    80007594:	e3c080e7          	jalr	-452(ra) # 800023cc <_Znwm>
    80007598:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    8000759c:	00003797          	auipc	a5,0x3
    800075a0:	30478793          	addi	a5,a5,772 # 8000a8a0 <_ZTV9Semaphore+0x10>
    800075a4:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800075a8:	00000593          	li	a1,0
    800075ac:	00850513          	addi	a0,a0,8
    800075b0:	ffffa097          	auipc	ra,0xffffa
    800075b4:	690080e7          	jalr	1680(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    800075b8:	00050463          	beqz	a0,800075c0 <_ZN9BufferCPPC1Ei+0x7c>
            myHandle = nullptr;
    800075bc:	00093423          	sd	zero,8(s2)
    800075c0:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800075c4:	01000513          	li	a0,16
    800075c8:	ffffb097          	auipc	ra,0xffffb
    800075cc:	e04080e7          	jalr	-508(ra) # 800023cc <_Znwm>
    800075d0:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    800075d4:	00003797          	auipc	a5,0x3
    800075d8:	2cc78793          	addi	a5,a5,716 # 8000a8a0 <_ZTV9Semaphore+0x10>
    800075dc:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800075e0:	00098593          	mv	a1,s3
    800075e4:	00850513          	addi	a0,a0,8
    800075e8:	ffffa097          	auipc	ra,0xffffa
    800075ec:	658080e7          	jalr	1624(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    800075f0:	00050463          	beqz	a0,800075f8 <_ZN9BufferCPPC1Ei+0xb4>
            myHandle = nullptr;
    800075f4:	00093423          	sd	zero,8(s2)
    800075f8:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800075fc:	01000513          	li	a0,16
    80007600:	ffffb097          	auipc	ra,0xffffb
    80007604:	dcc080e7          	jalr	-564(ra) # 800023cc <_Znwm>
    80007608:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    8000760c:	00003797          	auipc	a5,0x3
    80007610:	29478793          	addi	a5,a5,660 # 8000a8a0 <_ZTV9Semaphore+0x10>
    80007614:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80007618:	00100593          	li	a1,1
    8000761c:	00850513          	addi	a0,a0,8
    80007620:	ffffa097          	auipc	ra,0xffffa
    80007624:	620080e7          	jalr	1568(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    80007628:	00050463          	beqz	a0,80007630 <_ZN9BufferCPPC1Ei+0xec>
            myHandle = nullptr;
    8000762c:	00093423          	sd	zero,8(s2)
    80007630:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80007634:	01000513          	li	a0,16
    80007638:	ffffb097          	auipc	ra,0xffffb
    8000763c:	d94080e7          	jalr	-620(ra) # 800023cc <_Znwm>
    80007640:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80007644:	00003797          	auipc	a5,0x3
    80007648:	25c78793          	addi	a5,a5,604 # 8000a8a0 <_ZTV9Semaphore+0x10>
    8000764c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80007650:	00100593          	li	a1,1
    80007654:	00850513          	addi	a0,a0,8
    80007658:	ffffa097          	auipc	ra,0xffffa
    8000765c:	5e8080e7          	jalr	1512(ra) # 80001c40 <_Z8sem_openPP10_semaphorej>
    80007660:	00050463          	beqz	a0,80007668 <_ZN9BufferCPPC1Ei+0x124>
            myHandle = nullptr;
    80007664:	00093423          	sd	zero,8(s2)
    80007668:	0324b823          	sd	s2,48(s1)
}
    8000766c:	02813083          	ld	ra,40(sp)
    80007670:	02013403          	ld	s0,32(sp)
    80007674:	01813483          	ld	s1,24(sp)
    80007678:	01013903          	ld	s2,16(sp)
    8000767c:	00813983          	ld	s3,8(sp)
    80007680:	03010113          	addi	sp,sp,48
    80007684:	00008067          	ret
    80007688:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000768c:	00090513          	mv	a0,s2
    80007690:	ffffb097          	auipc	ra,0xffffb
    80007694:	dbc080e7          	jalr	-580(ra) # 8000244c <_ZdlPv>
    80007698:	00048513          	mv	a0,s1
    8000769c:	00007097          	auipc	ra,0x7
    800076a0:	e84080e7          	jalr	-380(ra) # 8000e520 <_Unwind_Resume>
    800076a4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800076a8:	00090513          	mv	a0,s2
    800076ac:	ffffb097          	auipc	ra,0xffffb
    800076b0:	da0080e7          	jalr	-608(ra) # 8000244c <_ZdlPv>
    800076b4:	00048513          	mv	a0,s1
    800076b8:	00007097          	auipc	ra,0x7
    800076bc:	e68080e7          	jalr	-408(ra) # 8000e520 <_Unwind_Resume>
    800076c0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800076c4:	00090513          	mv	a0,s2
    800076c8:	ffffb097          	auipc	ra,0xffffb
    800076cc:	d84080e7          	jalr	-636(ra) # 8000244c <_ZdlPv>
    800076d0:	00048513          	mv	a0,s1
    800076d4:	00007097          	auipc	ra,0x7
    800076d8:	e4c080e7          	jalr	-436(ra) # 8000e520 <_Unwind_Resume>
    800076dc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800076e0:	00090513          	mv	a0,s2
    800076e4:	ffffb097          	auipc	ra,0xffffb
    800076e8:	d68080e7          	jalr	-664(ra) # 8000244c <_ZdlPv>
    800076ec:	00048513          	mv	a0,s1
    800076f0:	00007097          	auipc	ra,0x7
    800076f4:	e30080e7          	jalr	-464(ra) # 8000e520 <_Unwind_Resume>

00000000800076f8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800076f8:	fe010113          	addi	sp,sp,-32
    800076fc:	00113c23          	sd	ra,24(sp)
    80007700:	00813823          	sd	s0,16(sp)
    80007704:	00913423          	sd	s1,8(sp)
    80007708:	01213023          	sd	s2,0(sp)
    8000770c:	02010413          	addi	s0,sp,32
    80007710:	00050493          	mv	s1,a0
    80007714:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80007718:	01853783          	ld	a5,24(a0)
        if (myHandle == nullptr) {
    8000771c:	0087b503          	ld	a0,8(a5)
    80007720:	00050663          	beqz	a0,8000772c <_ZN9BufferCPP3putEi+0x34>
        return sem_wait(myHandle);
    80007724:	ffffa097          	auipc	ra,0xffffa
    80007728:	660080e7          	jalr	1632(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    8000772c:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80007730:	0087b503          	ld	a0,8(a5)
    80007734:	00050663          	beqz	a0,80007740 <_ZN9BufferCPP3putEi+0x48>
        return sem_wait(myHandle);
    80007738:	ffffa097          	auipc	ra,0xffffa
    8000773c:	64c080e7          	jalr	1612(ra) # 80001d84 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80007740:	0084b783          	ld	a5,8(s1)
    80007744:	0144a703          	lw	a4,20(s1)
    80007748:	00271713          	slli	a4,a4,0x2
    8000774c:	00e787b3          	add	a5,a5,a4
    80007750:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007754:	0144a783          	lw	a5,20(s1)
    80007758:	0017879b          	addiw	a5,a5,1
    8000775c:	0004a703          	lw	a4,0(s1)
    80007760:	02e7e7bb          	remw	a5,a5,a4
    80007764:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80007768:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    8000776c:	0087b503          	ld	a0,8(a5)
    80007770:	00050663          	beqz	a0,8000777c <_ZN9BufferCPP3putEi+0x84>
        return sem_signal(myHandle);
    80007774:	ffffa097          	auipc	ra,0xffffa
    80007778:	660080e7          	jalr	1632(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    8000777c:	0204b783          	ld	a5,32(s1)
        if (myHandle == nullptr) {
    80007780:	0087b503          	ld	a0,8(a5)
    80007784:	00050663          	beqz	a0,80007790 <_ZN9BufferCPP3putEi+0x98>
        return sem_signal(myHandle);
    80007788:	ffffa097          	auipc	ra,0xffffa
    8000778c:	64c080e7          	jalr	1612(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

}
    80007790:	01813083          	ld	ra,24(sp)
    80007794:	01013403          	ld	s0,16(sp)
    80007798:	00813483          	ld	s1,8(sp)
    8000779c:	00013903          	ld	s2,0(sp)
    800077a0:	02010113          	addi	sp,sp,32
    800077a4:	00008067          	ret

00000000800077a8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800077a8:	fe010113          	addi	sp,sp,-32
    800077ac:	00113c23          	sd	ra,24(sp)
    800077b0:	00813823          	sd	s0,16(sp)
    800077b4:	00913423          	sd	s1,8(sp)
    800077b8:	01213023          	sd	s2,0(sp)
    800077bc:	02010413          	addi	s0,sp,32
    800077c0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800077c4:	02053783          	ld	a5,32(a0)
        if (myHandle == nullptr) {
    800077c8:	0087b503          	ld	a0,8(a5)
    800077cc:	00050663          	beqz	a0,800077d8 <_ZN9BufferCPP3getEv+0x30>
        return sem_wait(myHandle);
    800077d0:	ffffa097          	auipc	ra,0xffffa
    800077d4:	5b4080e7          	jalr	1460(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    800077d8:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    800077dc:	0087b503          	ld	a0,8(a5)
    800077e0:	00050663          	beqz	a0,800077ec <_ZN9BufferCPP3getEv+0x44>
        return sem_wait(myHandle);
    800077e4:	ffffa097          	auipc	ra,0xffffa
    800077e8:	5a0080e7          	jalr	1440(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    800077ec:	0084b703          	ld	a4,8(s1)
    800077f0:	0104a783          	lw	a5,16(s1)
    800077f4:	00279693          	slli	a3,a5,0x2
    800077f8:	00d70733          	add	a4,a4,a3
    800077fc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80007800:	0017879b          	addiw	a5,a5,1
    80007804:	0004a703          	lw	a4,0(s1)
    80007808:	02e7e7bb          	remw	a5,a5,a4
    8000780c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80007810:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80007814:	0087b503          	ld	a0,8(a5)
    80007818:	00050663          	beqz	a0,80007824 <_ZN9BufferCPP3getEv+0x7c>
        return sem_signal(myHandle);
    8000781c:	ffffa097          	auipc	ra,0xffffa
    80007820:	5b8080e7          	jalr	1464(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    80007824:	0184b783          	ld	a5,24(s1)
        if (myHandle == nullptr) {
    80007828:	0087b503          	ld	a0,8(a5)
    8000782c:	00050663          	beqz	a0,80007838 <_ZN9BufferCPP3getEv+0x90>
        return sem_signal(myHandle);
    80007830:	ffffa097          	auipc	ra,0xffffa
    80007834:	5a4080e7          	jalr	1444(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80007838:	00090513          	mv	a0,s2
    8000783c:	01813083          	ld	ra,24(sp)
    80007840:	01013403          	ld	s0,16(sp)
    80007844:	00813483          	ld	s1,8(sp)
    80007848:	00013903          	ld	s2,0(sp)
    8000784c:	02010113          	addi	sp,sp,32
    80007850:	00008067          	ret

0000000080007854 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80007854:	fe010113          	addi	sp,sp,-32
    80007858:	00113c23          	sd	ra,24(sp)
    8000785c:	00813823          	sd	s0,16(sp)
    80007860:	00913423          	sd	s1,8(sp)
    80007864:	01213023          	sd	s2,0(sp)
    80007868:	02010413          	addi	s0,sp,32
    8000786c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80007870:	02853783          	ld	a5,40(a0)
        if (myHandle == nullptr) {
    80007874:	0087b503          	ld	a0,8(a5)
    80007878:	00050663          	beqz	a0,80007884 <_ZN9BufferCPP6getCntEv+0x30>
        return sem_wait(myHandle);
    8000787c:	ffffa097          	auipc	ra,0xffffa
    80007880:	508080e7          	jalr	1288(ra) # 80001d84 <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    80007884:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80007888:	0087b503          	ld	a0,8(a5)
    8000788c:	00050663          	beqz	a0,80007898 <_ZN9BufferCPP6getCntEv+0x44>
        return sem_wait(myHandle);
    80007890:	ffffa097          	auipc	ra,0xffffa
    80007894:	4f4080e7          	jalr	1268(ra) # 80001d84 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80007898:	0144a783          	lw	a5,20(s1)
    8000789c:	0104a903          	lw	s2,16(s1)
    800078a0:	0527c663          	blt	a5,s2,800078ec <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    800078a4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800078a8:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    800078ac:	0087b503          	ld	a0,8(a5)
    800078b0:	00050663          	beqz	a0,800078bc <_ZN9BufferCPP6getCntEv+0x68>
        return sem_signal(myHandle);
    800078b4:	ffffa097          	auipc	ra,0xffffa
    800078b8:	520080e7          	jalr	1312(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    800078bc:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    800078c0:	0087b503          	ld	a0,8(a5)
    800078c4:	00050663          	beqz	a0,800078d0 <_ZN9BufferCPP6getCntEv+0x7c>
        return sem_signal(myHandle);
    800078c8:	ffffa097          	auipc	ra,0xffffa
    800078cc:	50c080e7          	jalr	1292(ra) # 80001dd4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    800078d0:	00090513          	mv	a0,s2
    800078d4:	01813083          	ld	ra,24(sp)
    800078d8:	01013403          	ld	s0,16(sp)
    800078dc:	00813483          	ld	s1,8(sp)
    800078e0:	00013903          	ld	s2,0(sp)
    800078e4:	02010113          	addi	sp,sp,32
    800078e8:	00008067          	ret
        ret = cap - head + tail;
    800078ec:	0004a703          	lw	a4,0(s1)
    800078f0:	4127093b          	subw	s2,a4,s2
    800078f4:	00f9093b          	addw	s2,s2,a5
    800078f8:	fb1ff06f          	j	800078a8 <_ZN9BufferCPP6getCntEv+0x54>

00000000800078fc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800078fc:	fe010113          	addi	sp,sp,-32
    80007900:	00113c23          	sd	ra,24(sp)
    80007904:	00813823          	sd	s0,16(sp)
    80007908:	00913423          	sd	s1,8(sp)
    8000790c:	01213023          	sd	s2,0(sp)
    80007910:	02010413          	addi	s0,sp,32
    80007914:	00050913          	mv	s2,a0
    static void putc(char c) { putc(c); };
    80007918:	00a00513          	li	a0,10
    8000791c:	ffffd097          	auipc	ra,0xffffd
    80007920:	d44080e7          	jalr	-700(ra) # 80004660 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80007924:	00003517          	auipc	a0,0x3
    80007928:	f5450513          	addi	a0,a0,-172 # 8000a878 <_ZZ24debug_print_internal_intmE6digits+0x540>
    8000792c:	fffff097          	auipc	ra,0xfffff
    80007930:	428080e7          	jalr	1064(ra) # 80006d54 <_Z11printStringPKc>
    while (getCnt()) {
    80007934:	00090513          	mv	a0,s2
    80007938:	00000097          	auipc	ra,0x0
    8000793c:	f1c080e7          	jalr	-228(ra) # 80007854 <_ZN9BufferCPP6getCntEv>
    80007940:	02050a63          	beqz	a0,80007974 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80007944:	00893783          	ld	a5,8(s2)
    80007948:	01092483          	lw	s1,16(s2)
    8000794c:	00249713          	slli	a4,s1,0x2
    80007950:	00e787b3          	add	a5,a5,a4
    80007954:	0007c503          	lbu	a0,0(a5)
    80007958:	ffffd097          	auipc	ra,0xffffd
    8000795c:	d08080e7          	jalr	-760(ra) # 80004660 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80007960:	0014849b          	addiw	s1,s1,1
    80007964:	00092783          	lw	a5,0(s2)
    80007968:	02f4e4bb          	remw	s1,s1,a5
    8000796c:	00992823          	sw	s1,16(s2)
    while (getCnt()) {
    80007970:	fc5ff06f          	j	80007934 <_ZN9BufferCPPD1Ev+0x38>
    80007974:	02100513          	li	a0,33
    80007978:	ffffd097          	auipc	ra,0xffffd
    8000797c:	ce8080e7          	jalr	-792(ra) # 80004660 <_ZN7Console4putcEc>
    80007980:	00a00513          	li	a0,10
    80007984:	ffffd097          	auipc	ra,0xffffd
    80007988:	cdc080e7          	jalr	-804(ra) # 80004660 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000798c:	00893503          	ld	a0,8(s2)
    80007990:	ffffa097          	auipc	ra,0xffffa
    80007994:	0ac080e7          	jalr	172(ra) # 80001a3c <_Z8mem_freePv>
    delete itemAvailable;
    80007998:	02093503          	ld	a0,32(s2)
    8000799c:	00050863          	beqz	a0,800079ac <_ZN9BufferCPPD1Ev+0xb0>
    800079a0:	00053783          	ld	a5,0(a0)
    800079a4:	0087b783          	ld	a5,8(a5)
    800079a8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800079ac:	01893503          	ld	a0,24(s2)
    800079b0:	00050863          	beqz	a0,800079c0 <_ZN9BufferCPPD1Ev+0xc4>
    800079b4:	00053783          	ld	a5,0(a0)
    800079b8:	0087b783          	ld	a5,8(a5)
    800079bc:	000780e7          	jalr	a5
    delete mutexTail;
    800079c0:	03093503          	ld	a0,48(s2)
    800079c4:	00050863          	beqz	a0,800079d4 <_ZN9BufferCPPD1Ev+0xd8>
    800079c8:	00053783          	ld	a5,0(a0)
    800079cc:	0087b783          	ld	a5,8(a5)
    800079d0:	000780e7          	jalr	a5
    delete mutexHead;
    800079d4:	02893503          	ld	a0,40(s2)
    800079d8:	00050863          	beqz	a0,800079e8 <_ZN9BufferCPPD1Ev+0xec>
    800079dc:	00053783          	ld	a5,0(a0)
    800079e0:	0087b783          	ld	a5,8(a5)
    800079e4:	000780e7          	jalr	a5
}
    800079e8:	01813083          	ld	ra,24(sp)
    800079ec:	01013403          	ld	s0,16(sp)
    800079f0:	00813483          	ld	s1,8(sp)
    800079f4:	00013903          	ld	s2,0(sp)
    800079f8:	02010113          	addi	sp,sp,32
    800079fc:	00008067          	ret

0000000080007a00 <start>:
    80007a00:	ff010113          	addi	sp,sp,-16
    80007a04:	00813423          	sd	s0,8(sp)
    80007a08:	01010413          	addi	s0,sp,16
    80007a0c:	300027f3          	csrr	a5,mstatus
    80007a10:	ffffe737          	lui	a4,0xffffe
    80007a14:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff02af>
    80007a18:	00e7f7b3          	and	a5,a5,a4
    80007a1c:	00001737          	lui	a4,0x1
    80007a20:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007a24:	00e7e7b3          	or	a5,a5,a4
    80007a28:	30079073          	csrw	mstatus,a5
    80007a2c:	00001797          	auipc	a5,0x1
    80007a30:	bf078793          	addi	a5,a5,-1040 # 8000861c <system_main>
    80007a34:	34179073          	csrw	mepc,a5
    80007a38:	00000793          	li	a5,0
    80007a3c:	18079073          	csrw	satp,a5
    80007a40:	000107b7          	lui	a5,0x10
    80007a44:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007a48:	30279073          	csrw	medeleg,a5
    80007a4c:	30379073          	csrw	mideleg,a5
    80007a50:	104027f3          	csrr	a5,sie
    80007a54:	2227e793          	ori	a5,a5,546
    80007a58:	10479073          	csrw	sie,a5
    80007a5c:	fff00793          	li	a5,-1
    80007a60:	00a7d793          	srli	a5,a5,0xa
    80007a64:	3b079073          	csrw	pmpaddr0,a5
    80007a68:	00f00793          	li	a5,15
    80007a6c:	3a079073          	csrw	pmpcfg0,a5
    80007a70:	f14027f3          	csrr	a5,mhartid
    80007a74:	0200c737          	lui	a4,0x200c
    80007a78:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007a7c:	0007869b          	sext.w	a3,a5
    80007a80:	00269713          	slli	a4,a3,0x2
    80007a84:	000f4637          	lui	a2,0xf4
    80007a88:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007a8c:	00d70733          	add	a4,a4,a3
    80007a90:	0037979b          	slliw	a5,a5,0x3
    80007a94:	020046b7          	lui	a3,0x2004
    80007a98:	00d787b3          	add	a5,a5,a3
    80007a9c:	00c585b3          	add	a1,a1,a2
    80007aa0:	00371693          	slli	a3,a4,0x3
    80007aa4:	00006717          	auipc	a4,0x6
    80007aa8:	84c70713          	addi	a4,a4,-1972 # 8000d2f0 <timer_scratch>
    80007aac:	00b7b023          	sd	a1,0(a5)
    80007ab0:	00d70733          	add	a4,a4,a3
    80007ab4:	00f73c23          	sd	a5,24(a4)
    80007ab8:	02c73023          	sd	a2,32(a4)
    80007abc:	34071073          	csrw	mscratch,a4
    80007ac0:	00001797          	auipc	a5,0x1
    80007ac4:	17078793          	addi	a5,a5,368 # 80008c30 <timervec>
    80007ac8:	30579073          	csrw	mtvec,a5
    80007acc:	300027f3          	csrr	a5,mstatus
    80007ad0:	0087e793          	ori	a5,a5,8
    80007ad4:	30079073          	csrw	mstatus,a5
    80007ad8:	304027f3          	csrr	a5,mie
    80007adc:	0807e793          	ori	a5,a5,128
    80007ae0:	30479073          	csrw	mie,a5
    80007ae4:	f14027f3          	csrr	a5,mhartid
    80007ae8:	0007879b          	sext.w	a5,a5
    80007aec:	00078213          	mv	tp,a5
    80007af0:	30200073          	mret
    80007af4:	00813403          	ld	s0,8(sp)
    80007af8:	01010113          	addi	sp,sp,16
    80007afc:	00008067          	ret

0000000080007b00 <timerinit>:
    80007b00:	ff010113          	addi	sp,sp,-16
    80007b04:	00813423          	sd	s0,8(sp)
    80007b08:	01010413          	addi	s0,sp,16
    80007b0c:	f14027f3          	csrr	a5,mhartid
    80007b10:	0200c737          	lui	a4,0x200c
    80007b14:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007b18:	0007869b          	sext.w	a3,a5
    80007b1c:	00269713          	slli	a4,a3,0x2
    80007b20:	000f4637          	lui	a2,0xf4
    80007b24:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007b28:	00d70733          	add	a4,a4,a3
    80007b2c:	0037979b          	slliw	a5,a5,0x3
    80007b30:	020046b7          	lui	a3,0x2004
    80007b34:	00d787b3          	add	a5,a5,a3
    80007b38:	00c585b3          	add	a1,a1,a2
    80007b3c:	00371693          	slli	a3,a4,0x3
    80007b40:	00005717          	auipc	a4,0x5
    80007b44:	7b070713          	addi	a4,a4,1968 # 8000d2f0 <timer_scratch>
    80007b48:	00b7b023          	sd	a1,0(a5)
    80007b4c:	00d70733          	add	a4,a4,a3
    80007b50:	00f73c23          	sd	a5,24(a4)
    80007b54:	02c73023          	sd	a2,32(a4)
    80007b58:	34071073          	csrw	mscratch,a4
    80007b5c:	00001797          	auipc	a5,0x1
    80007b60:	0d478793          	addi	a5,a5,212 # 80008c30 <timervec>
    80007b64:	30579073          	csrw	mtvec,a5
    80007b68:	300027f3          	csrr	a5,mstatus
    80007b6c:	0087e793          	ori	a5,a5,8
    80007b70:	30079073          	csrw	mstatus,a5
    80007b74:	304027f3          	csrr	a5,mie
    80007b78:	0807e793          	ori	a5,a5,128
    80007b7c:	30479073          	csrw	mie,a5
    80007b80:	00813403          	ld	s0,8(sp)
    80007b84:	01010113          	addi	sp,sp,16
    80007b88:	00008067          	ret

0000000080007b8c <consolewrite>:
    80007b8c:	fb010113          	addi	sp,sp,-80
    80007b90:	04813023          	sd	s0,64(sp)
    80007b94:	04113423          	sd	ra,72(sp)
    80007b98:	02913c23          	sd	s1,56(sp)
    80007b9c:	03213823          	sd	s2,48(sp)
    80007ba0:	03313423          	sd	s3,40(sp)
    80007ba4:	03413023          	sd	s4,32(sp)
    80007ba8:	01513c23          	sd	s5,24(sp)
    80007bac:	05010413          	addi	s0,sp,80
    80007bb0:	06c05c63          	blez	a2,80007c28 <consolewrite+0x9c>
    80007bb4:	00060993          	mv	s3,a2
    80007bb8:	00050a13          	mv	s4,a0
    80007bbc:	00058493          	mv	s1,a1
    80007bc0:	00000913          	li	s2,0
    80007bc4:	fff00a93          	li	s5,-1
    80007bc8:	01c0006f          	j	80007be4 <consolewrite+0x58>
    80007bcc:	fbf44503          	lbu	a0,-65(s0)
    80007bd0:	0019091b          	addiw	s2,s2,1
    80007bd4:	00148493          	addi	s1,s1,1
    80007bd8:	00000097          	auipc	ra,0x0
    80007bdc:	364080e7          	jalr	868(ra) # 80007f3c <uartputc>
    80007be0:	03298063          	beq	s3,s2,80007c00 <consolewrite+0x74>
    80007be4:	00048613          	mv	a2,s1
    80007be8:	00100693          	li	a3,1
    80007bec:	000a0593          	mv	a1,s4
    80007bf0:	fbf40513          	addi	a0,s0,-65
    80007bf4:	00001097          	auipc	ra,0x1
    80007bf8:	bb8080e7          	jalr	-1096(ra) # 800087ac <either_copyin>
    80007bfc:	fd5518e3          	bne	a0,s5,80007bcc <consolewrite+0x40>
    80007c00:	04813083          	ld	ra,72(sp)
    80007c04:	04013403          	ld	s0,64(sp)
    80007c08:	03813483          	ld	s1,56(sp)
    80007c0c:	02813983          	ld	s3,40(sp)
    80007c10:	02013a03          	ld	s4,32(sp)
    80007c14:	01813a83          	ld	s5,24(sp)
    80007c18:	00090513          	mv	a0,s2
    80007c1c:	03013903          	ld	s2,48(sp)
    80007c20:	05010113          	addi	sp,sp,80
    80007c24:	00008067          	ret
    80007c28:	00000913          	li	s2,0
    80007c2c:	fd5ff06f          	j	80007c00 <consolewrite+0x74>

0000000080007c30 <consoleread>:
    80007c30:	f9010113          	addi	sp,sp,-112
    80007c34:	06813023          	sd	s0,96(sp)
    80007c38:	04913c23          	sd	s1,88(sp)
    80007c3c:	05213823          	sd	s2,80(sp)
    80007c40:	05313423          	sd	s3,72(sp)
    80007c44:	05413023          	sd	s4,64(sp)
    80007c48:	03513c23          	sd	s5,56(sp)
    80007c4c:	03613823          	sd	s6,48(sp)
    80007c50:	03713423          	sd	s7,40(sp)
    80007c54:	03813023          	sd	s8,32(sp)
    80007c58:	06113423          	sd	ra,104(sp)
    80007c5c:	01913c23          	sd	s9,24(sp)
    80007c60:	07010413          	addi	s0,sp,112
    80007c64:	00060b93          	mv	s7,a2
    80007c68:	00050913          	mv	s2,a0
    80007c6c:	00058c13          	mv	s8,a1
    80007c70:	00060b1b          	sext.w	s6,a2
    80007c74:	00006497          	auipc	s1,0x6
    80007c78:	6ac48493          	addi	s1,s1,1708 # 8000e320 <cons>
    80007c7c:	00400993          	li	s3,4
    80007c80:	fff00a13          	li	s4,-1
    80007c84:	00a00a93          	li	s5,10
    80007c88:	05705e63          	blez	s7,80007ce4 <consoleread+0xb4>
    80007c8c:	09c4a703          	lw	a4,156(s1)
    80007c90:	0984a783          	lw	a5,152(s1)
    80007c94:	0007071b          	sext.w	a4,a4
    80007c98:	08e78463          	beq	a5,a4,80007d20 <consoleread+0xf0>
    80007c9c:	07f7f713          	andi	a4,a5,127
    80007ca0:	00e48733          	add	a4,s1,a4
    80007ca4:	01874703          	lbu	a4,24(a4)
    80007ca8:	0017869b          	addiw	a3,a5,1
    80007cac:	08d4ac23          	sw	a3,152(s1)
    80007cb0:	00070c9b          	sext.w	s9,a4
    80007cb4:	0b370663          	beq	a4,s3,80007d60 <consoleread+0x130>
    80007cb8:	00100693          	li	a3,1
    80007cbc:	f9f40613          	addi	a2,s0,-97
    80007cc0:	000c0593          	mv	a1,s8
    80007cc4:	00090513          	mv	a0,s2
    80007cc8:	f8e40fa3          	sb	a4,-97(s0)
    80007ccc:	00001097          	auipc	ra,0x1
    80007cd0:	a94080e7          	jalr	-1388(ra) # 80008760 <either_copyout>
    80007cd4:	01450863          	beq	a0,s4,80007ce4 <consoleread+0xb4>
    80007cd8:	001c0c13          	addi	s8,s8,1
    80007cdc:	fffb8b9b          	addiw	s7,s7,-1
    80007ce0:	fb5c94e3          	bne	s9,s5,80007c88 <consoleread+0x58>
    80007ce4:	000b851b          	sext.w	a0,s7
    80007ce8:	06813083          	ld	ra,104(sp)
    80007cec:	06013403          	ld	s0,96(sp)
    80007cf0:	05813483          	ld	s1,88(sp)
    80007cf4:	05013903          	ld	s2,80(sp)
    80007cf8:	04813983          	ld	s3,72(sp)
    80007cfc:	04013a03          	ld	s4,64(sp)
    80007d00:	03813a83          	ld	s5,56(sp)
    80007d04:	02813b83          	ld	s7,40(sp)
    80007d08:	02013c03          	ld	s8,32(sp)
    80007d0c:	01813c83          	ld	s9,24(sp)
    80007d10:	40ab053b          	subw	a0,s6,a0
    80007d14:	03013b03          	ld	s6,48(sp)
    80007d18:	07010113          	addi	sp,sp,112
    80007d1c:	00008067          	ret
    80007d20:	00001097          	auipc	ra,0x1
    80007d24:	810080e7          	jalr	-2032(ra) # 80008530 <push_on>
    80007d28:	0984a703          	lw	a4,152(s1)
    80007d2c:	09c4a783          	lw	a5,156(s1)
    80007d30:	0007879b          	sext.w	a5,a5
    80007d34:	fef70ce3          	beq	a4,a5,80007d2c <consoleread+0xfc>
    80007d38:	00001097          	auipc	ra,0x1
    80007d3c:	86c080e7          	jalr	-1940(ra) # 800085a4 <pop_on>
    80007d40:	0984a783          	lw	a5,152(s1)
    80007d44:	07f7f713          	andi	a4,a5,127
    80007d48:	00e48733          	add	a4,s1,a4
    80007d4c:	01874703          	lbu	a4,24(a4)
    80007d50:	0017869b          	addiw	a3,a5,1
    80007d54:	08d4ac23          	sw	a3,152(s1)
    80007d58:	00070c9b          	sext.w	s9,a4
    80007d5c:	f5371ee3          	bne	a4,s3,80007cb8 <consoleread+0x88>
    80007d60:	000b851b          	sext.w	a0,s7
    80007d64:	f96bf2e3          	bgeu	s7,s6,80007ce8 <consoleread+0xb8>
    80007d68:	08f4ac23          	sw	a5,152(s1)
    80007d6c:	f7dff06f          	j	80007ce8 <consoleread+0xb8>

0000000080007d70 <consputc>:
    80007d70:	10000793          	li	a5,256
    80007d74:	00f50663          	beq	a0,a5,80007d80 <consputc+0x10>
    80007d78:	00000317          	auipc	t1,0x0
    80007d7c:	2bc30067          	jr	700(t1) # 80008034 <uartputc_sync>
    80007d80:	ff010113          	addi	sp,sp,-16
    80007d84:	00113423          	sd	ra,8(sp)
    80007d88:	00813023          	sd	s0,0(sp)
    80007d8c:	01010413          	addi	s0,sp,16
    80007d90:	00800513          	li	a0,8
    80007d94:	00000097          	auipc	ra,0x0
    80007d98:	2a0080e7          	jalr	672(ra) # 80008034 <uartputc_sync>
    80007d9c:	02000513          	li	a0,32
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	294080e7          	jalr	660(ra) # 80008034 <uartputc_sync>
    80007da8:	00013403          	ld	s0,0(sp)
    80007dac:	00813083          	ld	ra,8(sp)
    80007db0:	00800513          	li	a0,8
    80007db4:	01010113          	addi	sp,sp,16
    80007db8:	00000317          	auipc	t1,0x0
    80007dbc:	27c30067          	jr	636(t1) # 80008034 <uartputc_sync>

0000000080007dc0 <consoleintr>:
    80007dc0:	fe010113          	addi	sp,sp,-32
    80007dc4:	00813823          	sd	s0,16(sp)
    80007dc8:	00913423          	sd	s1,8(sp)
    80007dcc:	01213023          	sd	s2,0(sp)
    80007dd0:	00113c23          	sd	ra,24(sp)
    80007dd4:	02010413          	addi	s0,sp,32
    80007dd8:	00006917          	auipc	s2,0x6
    80007ddc:	54890913          	addi	s2,s2,1352 # 8000e320 <cons>
    80007de0:	00050493          	mv	s1,a0
    80007de4:	00090513          	mv	a0,s2
    80007de8:	00000097          	auipc	ra,0x0
    80007dec:	478080e7          	jalr	1144(ra) # 80008260 <acquire>
    80007df0:	02048c63          	beqz	s1,80007e28 <consoleintr+0x68>
    80007df4:	0a092783          	lw	a5,160(s2)
    80007df8:	09892703          	lw	a4,152(s2)
    80007dfc:	07f00693          	li	a3,127
    80007e00:	40e7873b          	subw	a4,a5,a4
    80007e04:	02e6e263          	bltu	a3,a4,80007e28 <consoleintr+0x68>
    80007e08:	00d00713          	li	a4,13
    80007e0c:	04e48063          	beq	s1,a4,80007e4c <consoleintr+0x8c>
    80007e10:	07f7f713          	andi	a4,a5,127
    80007e14:	00e90733          	add	a4,s2,a4
    80007e18:	0017879b          	addiw	a5,a5,1
    80007e1c:	0af92023          	sw	a5,160(s2)
    80007e20:	00970c23          	sb	s1,24(a4)
    80007e24:	08f92e23          	sw	a5,156(s2)
    80007e28:	01013403          	ld	s0,16(sp)
    80007e2c:	01813083          	ld	ra,24(sp)
    80007e30:	00813483          	ld	s1,8(sp)
    80007e34:	00013903          	ld	s2,0(sp)
    80007e38:	00006517          	auipc	a0,0x6
    80007e3c:	4e850513          	addi	a0,a0,1256 # 8000e320 <cons>
    80007e40:	02010113          	addi	sp,sp,32
    80007e44:	00000317          	auipc	t1,0x0
    80007e48:	4e830067          	jr	1256(t1) # 8000832c <release>
    80007e4c:	00a00493          	li	s1,10
    80007e50:	fc1ff06f          	j	80007e10 <consoleintr+0x50>

0000000080007e54 <consoleinit>:
    80007e54:	fe010113          	addi	sp,sp,-32
    80007e58:	00113c23          	sd	ra,24(sp)
    80007e5c:	00813823          	sd	s0,16(sp)
    80007e60:	00913423          	sd	s1,8(sp)
    80007e64:	02010413          	addi	s0,sp,32
    80007e68:	00006497          	auipc	s1,0x6
    80007e6c:	4b848493          	addi	s1,s1,1208 # 8000e320 <cons>
    80007e70:	00048513          	mv	a0,s1
    80007e74:	00003597          	auipc	a1,0x3
    80007e78:	16c58593          	addi	a1,a1,364 # 8000afe0 <_ZTV12ConsumerSync+0x38>
    80007e7c:	00000097          	auipc	ra,0x0
    80007e80:	3c0080e7          	jalr	960(ra) # 8000823c <initlock>
    80007e84:	00000097          	auipc	ra,0x0
    80007e88:	074080e7          	jalr	116(ra) # 80007ef8 <uartinit>
    80007e8c:	01813083          	ld	ra,24(sp)
    80007e90:	01013403          	ld	s0,16(sp)
    80007e94:	00000797          	auipc	a5,0x0
    80007e98:	d9c78793          	addi	a5,a5,-612 # 80007c30 <consoleread>
    80007e9c:	0af4bc23          	sd	a5,184(s1)
    80007ea0:	00000797          	auipc	a5,0x0
    80007ea4:	cec78793          	addi	a5,a5,-788 # 80007b8c <consolewrite>
    80007ea8:	0cf4b023          	sd	a5,192(s1)
    80007eac:	00813483          	ld	s1,8(sp)
    80007eb0:	02010113          	addi	sp,sp,32
    80007eb4:	00008067          	ret

0000000080007eb8 <console_read>:
    80007eb8:	ff010113          	addi	sp,sp,-16
    80007ebc:	00813423          	sd	s0,8(sp)
    80007ec0:	01010413          	addi	s0,sp,16
    80007ec4:	00813403          	ld	s0,8(sp)
    80007ec8:	00006317          	auipc	t1,0x6
    80007ecc:	51033303          	ld	t1,1296(t1) # 8000e3d8 <devsw+0x10>
    80007ed0:	01010113          	addi	sp,sp,16
    80007ed4:	00030067          	jr	t1

0000000080007ed8 <console_write>:
    80007ed8:	ff010113          	addi	sp,sp,-16
    80007edc:	00813423          	sd	s0,8(sp)
    80007ee0:	01010413          	addi	s0,sp,16
    80007ee4:	00813403          	ld	s0,8(sp)
    80007ee8:	00006317          	auipc	t1,0x6
    80007eec:	4f833303          	ld	t1,1272(t1) # 8000e3e0 <devsw+0x18>
    80007ef0:	01010113          	addi	sp,sp,16
    80007ef4:	00030067          	jr	t1

0000000080007ef8 <uartinit>:
    80007ef8:	ff010113          	addi	sp,sp,-16
    80007efc:	00813423          	sd	s0,8(sp)
    80007f00:	01010413          	addi	s0,sp,16
    80007f04:	100007b7          	lui	a5,0x10000
    80007f08:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007f0c:	f8000713          	li	a4,-128
    80007f10:	00e781a3          	sb	a4,3(a5)
    80007f14:	00300713          	li	a4,3
    80007f18:	00e78023          	sb	a4,0(a5)
    80007f1c:	000780a3          	sb	zero,1(a5)
    80007f20:	00e781a3          	sb	a4,3(a5)
    80007f24:	00700693          	li	a3,7
    80007f28:	00d78123          	sb	a3,2(a5)
    80007f2c:	00e780a3          	sb	a4,1(a5)
    80007f30:	00813403          	ld	s0,8(sp)
    80007f34:	01010113          	addi	sp,sp,16
    80007f38:	00008067          	ret

0000000080007f3c <uartputc>:
    80007f3c:	00005797          	auipc	a5,0x5
    80007f40:	3747a783          	lw	a5,884(a5) # 8000d2b0 <panicked>
    80007f44:	00078463          	beqz	a5,80007f4c <uartputc+0x10>
    80007f48:	0000006f          	j	80007f48 <uartputc+0xc>
    80007f4c:	fd010113          	addi	sp,sp,-48
    80007f50:	02813023          	sd	s0,32(sp)
    80007f54:	00913c23          	sd	s1,24(sp)
    80007f58:	01213823          	sd	s2,16(sp)
    80007f5c:	01313423          	sd	s3,8(sp)
    80007f60:	02113423          	sd	ra,40(sp)
    80007f64:	03010413          	addi	s0,sp,48
    80007f68:	00005917          	auipc	s2,0x5
    80007f6c:	33090913          	addi	s2,s2,816 # 8000d298 <uart_tx_r>
    80007f70:	00093783          	ld	a5,0(s2)
    80007f74:	00005497          	auipc	s1,0x5
    80007f78:	32c48493          	addi	s1,s1,812 # 8000d2a0 <uart_tx_w>
    80007f7c:	0004b703          	ld	a4,0(s1)
    80007f80:	02078693          	addi	a3,a5,32
    80007f84:	00050993          	mv	s3,a0
    80007f88:	02e69c63          	bne	a3,a4,80007fc0 <uartputc+0x84>
    80007f8c:	00000097          	auipc	ra,0x0
    80007f90:	5a4080e7          	jalr	1444(ra) # 80008530 <push_on>
    80007f94:	00093783          	ld	a5,0(s2)
    80007f98:	0004b703          	ld	a4,0(s1)
    80007f9c:	02078793          	addi	a5,a5,32
    80007fa0:	00e79463          	bne	a5,a4,80007fa8 <uartputc+0x6c>
    80007fa4:	0000006f          	j	80007fa4 <uartputc+0x68>
    80007fa8:	00000097          	auipc	ra,0x0
    80007fac:	5fc080e7          	jalr	1532(ra) # 800085a4 <pop_on>
    80007fb0:	00093783          	ld	a5,0(s2)
    80007fb4:	0004b703          	ld	a4,0(s1)
    80007fb8:	02078693          	addi	a3,a5,32
    80007fbc:	fce688e3          	beq	a3,a4,80007f8c <uartputc+0x50>
    80007fc0:	01f77693          	andi	a3,a4,31
    80007fc4:	00006597          	auipc	a1,0x6
    80007fc8:	4a458593          	addi	a1,a1,1188 # 8000e468 <uart_tx_buf>
    80007fcc:	00d586b3          	add	a3,a1,a3
    80007fd0:	00170713          	addi	a4,a4,1
    80007fd4:	01368023          	sb	s3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007fd8:	00e4b023          	sd	a4,0(s1)
    80007fdc:	10000637          	lui	a2,0x10000
    80007fe0:	02f71063          	bne	a4,a5,80008000 <uartputc+0xc4>
    80007fe4:	0340006f          	j	80008018 <uartputc+0xdc>
    80007fe8:	00074703          	lbu	a4,0(a4)
    80007fec:	00f93023          	sd	a5,0(s2)
    80007ff0:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ff4:	00093783          	ld	a5,0(s2)
    80007ff8:	0004b703          	ld	a4,0(s1)
    80007ffc:	00f70e63          	beq	a4,a5,80008018 <uartputc+0xdc>
    80008000:	00564683          	lbu	a3,5(a2)
    80008004:	01f7f713          	andi	a4,a5,31
    80008008:	00e58733          	add	a4,a1,a4
    8000800c:	0206f693          	andi	a3,a3,32
    80008010:	00178793          	addi	a5,a5,1
    80008014:	fc069ae3          	bnez	a3,80007fe8 <uartputc+0xac>
    80008018:	02813083          	ld	ra,40(sp)
    8000801c:	02013403          	ld	s0,32(sp)
    80008020:	01813483          	ld	s1,24(sp)
    80008024:	01013903          	ld	s2,16(sp)
    80008028:	00813983          	ld	s3,8(sp)
    8000802c:	03010113          	addi	sp,sp,48
    80008030:	00008067          	ret

0000000080008034 <uartputc_sync>:
    80008034:	ff010113          	addi	sp,sp,-16
    80008038:	00813423          	sd	s0,8(sp)
    8000803c:	01010413          	addi	s0,sp,16
    80008040:	00005717          	auipc	a4,0x5
    80008044:	27072703          	lw	a4,624(a4) # 8000d2b0 <panicked>
    80008048:	02071663          	bnez	a4,80008074 <uartputc_sync+0x40>
    8000804c:	00050793          	mv	a5,a0
    80008050:	100006b7          	lui	a3,0x10000
    80008054:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008058:	02077713          	andi	a4,a4,32
    8000805c:	fe070ce3          	beqz	a4,80008054 <uartputc_sync+0x20>
    80008060:	0ff7f793          	andi	a5,a5,255
    80008064:	00f68023          	sb	a5,0(a3)
    80008068:	00813403          	ld	s0,8(sp)
    8000806c:	01010113          	addi	sp,sp,16
    80008070:	00008067          	ret
    80008074:	0000006f          	j	80008074 <uartputc_sync+0x40>

0000000080008078 <uartstart>:
    80008078:	ff010113          	addi	sp,sp,-16
    8000807c:	00813423          	sd	s0,8(sp)
    80008080:	01010413          	addi	s0,sp,16
    80008084:	00005617          	auipc	a2,0x5
    80008088:	21460613          	addi	a2,a2,532 # 8000d298 <uart_tx_r>
    8000808c:	00005517          	auipc	a0,0x5
    80008090:	21450513          	addi	a0,a0,532 # 8000d2a0 <uart_tx_w>
    80008094:	00063783          	ld	a5,0(a2)
    80008098:	00053703          	ld	a4,0(a0)
    8000809c:	04f70263          	beq	a4,a5,800080e0 <uartstart+0x68>
    800080a0:	100005b7          	lui	a1,0x10000
    800080a4:	00006817          	auipc	a6,0x6
    800080a8:	3c480813          	addi	a6,a6,964 # 8000e468 <uart_tx_buf>
    800080ac:	01c0006f          	j	800080c8 <uartstart+0x50>
    800080b0:	0006c703          	lbu	a4,0(a3)
    800080b4:	00f63023          	sd	a5,0(a2)
    800080b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080bc:	00063783          	ld	a5,0(a2)
    800080c0:	00053703          	ld	a4,0(a0)
    800080c4:	00f70e63          	beq	a4,a5,800080e0 <uartstart+0x68>
    800080c8:	01f7f713          	andi	a4,a5,31
    800080cc:	00e806b3          	add	a3,a6,a4
    800080d0:	0055c703          	lbu	a4,5(a1)
    800080d4:	00178793          	addi	a5,a5,1
    800080d8:	02077713          	andi	a4,a4,32
    800080dc:	fc071ae3          	bnez	a4,800080b0 <uartstart+0x38>
    800080e0:	00813403          	ld	s0,8(sp)
    800080e4:	01010113          	addi	sp,sp,16
    800080e8:	00008067          	ret

00000000800080ec <uartgetc>:
    800080ec:	ff010113          	addi	sp,sp,-16
    800080f0:	00813423          	sd	s0,8(sp)
    800080f4:	01010413          	addi	s0,sp,16
    800080f8:	10000737          	lui	a4,0x10000
    800080fc:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008100:	0017f793          	andi	a5,a5,1
    80008104:	00078c63          	beqz	a5,8000811c <uartgetc+0x30>
    80008108:	00074503          	lbu	a0,0(a4)
    8000810c:	0ff57513          	andi	a0,a0,255
    80008110:	00813403          	ld	s0,8(sp)
    80008114:	01010113          	addi	sp,sp,16
    80008118:	00008067          	ret
    8000811c:	fff00513          	li	a0,-1
    80008120:	ff1ff06f          	j	80008110 <uartgetc+0x24>

0000000080008124 <uartintr>:
    80008124:	100007b7          	lui	a5,0x10000
    80008128:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    8000812c:	0017f793          	andi	a5,a5,1
    80008130:	0a078463          	beqz	a5,800081d8 <uartintr+0xb4>
    80008134:	fe010113          	addi	sp,sp,-32
    80008138:	00813823          	sd	s0,16(sp)
    8000813c:	00913423          	sd	s1,8(sp)
    80008140:	00113c23          	sd	ra,24(sp)
    80008144:	02010413          	addi	s0,sp,32
    80008148:	100004b7          	lui	s1,0x10000
    8000814c:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80008150:	0ff57513          	andi	a0,a0,255
    80008154:	00000097          	auipc	ra,0x0
    80008158:	c6c080e7          	jalr	-916(ra) # 80007dc0 <consoleintr>
    8000815c:	0054c783          	lbu	a5,5(s1)
    80008160:	0017f793          	andi	a5,a5,1
    80008164:	fe0794e3          	bnez	a5,8000814c <uartintr+0x28>
    80008168:	00005617          	auipc	a2,0x5
    8000816c:	13060613          	addi	a2,a2,304 # 8000d298 <uart_tx_r>
    80008170:	00005517          	auipc	a0,0x5
    80008174:	13050513          	addi	a0,a0,304 # 8000d2a0 <uart_tx_w>
    80008178:	00063783          	ld	a5,0(a2)
    8000817c:	00053703          	ld	a4,0(a0)
    80008180:	04f70263          	beq	a4,a5,800081c4 <uartintr+0xa0>
    80008184:	100005b7          	lui	a1,0x10000
    80008188:	00006817          	auipc	a6,0x6
    8000818c:	2e080813          	addi	a6,a6,736 # 8000e468 <uart_tx_buf>
    80008190:	01c0006f          	j	800081ac <uartintr+0x88>
    80008194:	0006c703          	lbu	a4,0(a3)
    80008198:	00f63023          	sd	a5,0(a2)
    8000819c:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081a0:	00063783          	ld	a5,0(a2)
    800081a4:	00053703          	ld	a4,0(a0)
    800081a8:	00f70e63          	beq	a4,a5,800081c4 <uartintr+0xa0>
    800081ac:	01f7f713          	andi	a4,a5,31
    800081b0:	00e806b3          	add	a3,a6,a4
    800081b4:	0055c703          	lbu	a4,5(a1)
    800081b8:	00178793          	addi	a5,a5,1
    800081bc:	02077713          	andi	a4,a4,32
    800081c0:	fc071ae3          	bnez	a4,80008194 <uartintr+0x70>
    800081c4:	01813083          	ld	ra,24(sp)
    800081c8:	01013403          	ld	s0,16(sp)
    800081cc:	00813483          	ld	s1,8(sp)
    800081d0:	02010113          	addi	sp,sp,32
    800081d4:	00008067          	ret
    800081d8:	00005617          	auipc	a2,0x5
    800081dc:	0c060613          	addi	a2,a2,192 # 8000d298 <uart_tx_r>
    800081e0:	00005517          	auipc	a0,0x5
    800081e4:	0c050513          	addi	a0,a0,192 # 8000d2a0 <uart_tx_w>
    800081e8:	00063783          	ld	a5,0(a2)
    800081ec:	00053703          	ld	a4,0(a0)
    800081f0:	04f70263          	beq	a4,a5,80008234 <uartintr+0x110>
    800081f4:	100005b7          	lui	a1,0x10000
    800081f8:	00006817          	auipc	a6,0x6
    800081fc:	27080813          	addi	a6,a6,624 # 8000e468 <uart_tx_buf>
    80008200:	01c0006f          	j	8000821c <uartintr+0xf8>
    80008204:	0006c703          	lbu	a4,0(a3)
    80008208:	00f63023          	sd	a5,0(a2)
    8000820c:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008210:	00063783          	ld	a5,0(a2)
    80008214:	00053703          	ld	a4,0(a0)
    80008218:	02f70063          	beq	a4,a5,80008238 <uartintr+0x114>
    8000821c:	01f7f713          	andi	a4,a5,31
    80008220:	00e806b3          	add	a3,a6,a4
    80008224:	0055c703          	lbu	a4,5(a1)
    80008228:	00178793          	addi	a5,a5,1
    8000822c:	02077713          	andi	a4,a4,32
    80008230:	fc071ae3          	bnez	a4,80008204 <uartintr+0xe0>
    80008234:	00008067          	ret
    80008238:	00008067          	ret

000000008000823c <initlock>:
    8000823c:	ff010113          	addi	sp,sp,-16
    80008240:	00813423          	sd	s0,8(sp)
    80008244:	01010413          	addi	s0,sp,16
    80008248:	00813403          	ld	s0,8(sp)
    8000824c:	00b53423          	sd	a1,8(a0)
    80008250:	00052023          	sw	zero,0(a0)
    80008254:	00053823          	sd	zero,16(a0)
    80008258:	01010113          	addi	sp,sp,16
    8000825c:	00008067          	ret

0000000080008260 <acquire>:
    80008260:	fe010113          	addi	sp,sp,-32
    80008264:	00813823          	sd	s0,16(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	00113c23          	sd	ra,24(sp)
    80008270:	01213023          	sd	s2,0(sp)
    80008274:	02010413          	addi	s0,sp,32
    80008278:	00050493          	mv	s1,a0
    8000827c:	10002973          	csrr	s2,sstatus
    80008280:	100027f3          	csrr	a5,sstatus
    80008284:	ffd7f793          	andi	a5,a5,-3
    80008288:	10079073          	csrw	sstatus,a5
    8000828c:	00000097          	auipc	ra,0x0
    80008290:	488080e7          	jalr	1160(ra) # 80008714 <mycpu>
    80008294:	07852783          	lw	a5,120(a0)
    80008298:	06078e63          	beqz	a5,80008314 <acquire+0xb4>
    8000829c:	00000097          	auipc	ra,0x0
    800082a0:	478080e7          	jalr	1144(ra) # 80008714 <mycpu>
    800082a4:	07852783          	lw	a5,120(a0)
    800082a8:	0004a703          	lw	a4,0(s1)
    800082ac:	0017879b          	addiw	a5,a5,1
    800082b0:	06f52c23          	sw	a5,120(a0)
    800082b4:	04071063          	bnez	a4,800082f4 <acquire+0x94>
    800082b8:	00100713          	li	a4,1
    800082bc:	00070793          	mv	a5,a4
    800082c0:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800082c4:	0007879b          	sext.w	a5,a5
    800082c8:	fe079ae3          	bnez	a5,800082bc <acquire+0x5c>
    800082cc:	0ff0000f          	fence
    800082d0:	00000097          	auipc	ra,0x0
    800082d4:	444080e7          	jalr	1092(ra) # 80008714 <mycpu>
    800082d8:	01813083          	ld	ra,24(sp)
    800082dc:	01013403          	ld	s0,16(sp)
    800082e0:	00a4b823          	sd	a0,16(s1)
    800082e4:	00013903          	ld	s2,0(sp)
    800082e8:	00813483          	ld	s1,8(sp)
    800082ec:	02010113          	addi	sp,sp,32
    800082f0:	00008067          	ret
    800082f4:	0104b903          	ld	s2,16(s1)
    800082f8:	00000097          	auipc	ra,0x0
    800082fc:	41c080e7          	jalr	1052(ra) # 80008714 <mycpu>
    80008300:	faa91ce3          	bne	s2,a0,800082b8 <acquire+0x58>
    80008304:	00003517          	auipc	a0,0x3
    80008308:	ce450513          	addi	a0,a0,-796 # 8000afe8 <_ZTV12ConsumerSync+0x40>
    8000830c:	00001097          	auipc	ra,0x1
    80008310:	a54080e7          	jalr	-1452(ra) # 80008d60 <panic>
    80008314:	00195913          	srli	s2,s2,0x1
    80008318:	00000097          	auipc	ra,0x0
    8000831c:	3fc080e7          	jalr	1020(ra) # 80008714 <mycpu>
    80008320:	00197913          	andi	s2,s2,1
    80008324:	07252e23          	sw	s2,124(a0)
    80008328:	f75ff06f          	j	8000829c <acquire+0x3c>

000000008000832c <release>:
    8000832c:	fe010113          	addi	sp,sp,-32
    80008330:	00813823          	sd	s0,16(sp)
    80008334:	00113c23          	sd	ra,24(sp)
    80008338:	00913423          	sd	s1,8(sp)
    8000833c:	01213023          	sd	s2,0(sp)
    80008340:	02010413          	addi	s0,sp,32
    80008344:	00052783          	lw	a5,0(a0)
    80008348:	00079a63          	bnez	a5,8000835c <release+0x30>
    8000834c:	00003517          	auipc	a0,0x3
    80008350:	ca450513          	addi	a0,a0,-860 # 8000aff0 <_ZTV12ConsumerSync+0x48>
    80008354:	00001097          	auipc	ra,0x1
    80008358:	a0c080e7          	jalr	-1524(ra) # 80008d60 <panic>
    8000835c:	01053903          	ld	s2,16(a0)
    80008360:	00050493          	mv	s1,a0
    80008364:	00000097          	auipc	ra,0x0
    80008368:	3b0080e7          	jalr	944(ra) # 80008714 <mycpu>
    8000836c:	fea910e3          	bne	s2,a0,8000834c <release+0x20>
    80008370:	0004b823          	sd	zero,16(s1)
    80008374:	0ff0000f          	fence
    80008378:	0f50000f          	fence	iorw,ow
    8000837c:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008380:	00000097          	auipc	ra,0x0
    80008384:	394080e7          	jalr	916(ra) # 80008714 <mycpu>
    80008388:	100027f3          	csrr	a5,sstatus
    8000838c:	0027f793          	andi	a5,a5,2
    80008390:	04079a63          	bnez	a5,800083e4 <release+0xb8>
    80008394:	07852783          	lw	a5,120(a0)
    80008398:	02f05e63          	blez	a5,800083d4 <release+0xa8>
    8000839c:	fff7871b          	addiw	a4,a5,-1
    800083a0:	06e52c23          	sw	a4,120(a0)
    800083a4:	00071c63          	bnez	a4,800083bc <release+0x90>
    800083a8:	07c52783          	lw	a5,124(a0)
    800083ac:	00078863          	beqz	a5,800083bc <release+0x90>
    800083b0:	100027f3          	csrr	a5,sstatus
    800083b4:	0027e793          	ori	a5,a5,2
    800083b8:	10079073          	csrw	sstatus,a5
    800083bc:	01813083          	ld	ra,24(sp)
    800083c0:	01013403          	ld	s0,16(sp)
    800083c4:	00813483          	ld	s1,8(sp)
    800083c8:	00013903          	ld	s2,0(sp)
    800083cc:	02010113          	addi	sp,sp,32
    800083d0:	00008067          	ret
    800083d4:	00003517          	auipc	a0,0x3
    800083d8:	c3c50513          	addi	a0,a0,-964 # 8000b010 <_ZTV12ConsumerSync+0x68>
    800083dc:	00001097          	auipc	ra,0x1
    800083e0:	984080e7          	jalr	-1660(ra) # 80008d60 <panic>
    800083e4:	00003517          	auipc	a0,0x3
    800083e8:	c1450513          	addi	a0,a0,-1004 # 8000aff8 <_ZTV12ConsumerSync+0x50>
    800083ec:	00001097          	auipc	ra,0x1
    800083f0:	974080e7          	jalr	-1676(ra) # 80008d60 <panic>

00000000800083f4 <holding>:
    800083f4:	00052783          	lw	a5,0(a0)
    800083f8:	00079663          	bnez	a5,80008404 <holding+0x10>
    800083fc:	00000513          	li	a0,0
    80008400:	00008067          	ret
    80008404:	fe010113          	addi	sp,sp,-32
    80008408:	00813823          	sd	s0,16(sp)
    8000840c:	00913423          	sd	s1,8(sp)
    80008410:	00113c23          	sd	ra,24(sp)
    80008414:	02010413          	addi	s0,sp,32
    80008418:	01053483          	ld	s1,16(a0)
    8000841c:	00000097          	auipc	ra,0x0
    80008420:	2f8080e7          	jalr	760(ra) # 80008714 <mycpu>
    80008424:	01813083          	ld	ra,24(sp)
    80008428:	01013403          	ld	s0,16(sp)
    8000842c:	40a48533          	sub	a0,s1,a0
    80008430:	00153513          	seqz	a0,a0
    80008434:	00813483          	ld	s1,8(sp)
    80008438:	02010113          	addi	sp,sp,32
    8000843c:	00008067          	ret

0000000080008440 <push_off>:
    80008440:	fe010113          	addi	sp,sp,-32
    80008444:	00813823          	sd	s0,16(sp)
    80008448:	00113c23          	sd	ra,24(sp)
    8000844c:	00913423          	sd	s1,8(sp)
    80008450:	02010413          	addi	s0,sp,32
    80008454:	100024f3          	csrr	s1,sstatus
    80008458:	100027f3          	csrr	a5,sstatus
    8000845c:	ffd7f793          	andi	a5,a5,-3
    80008460:	10079073          	csrw	sstatus,a5
    80008464:	00000097          	auipc	ra,0x0
    80008468:	2b0080e7          	jalr	688(ra) # 80008714 <mycpu>
    8000846c:	07852783          	lw	a5,120(a0)
    80008470:	02078663          	beqz	a5,8000849c <push_off+0x5c>
    80008474:	00000097          	auipc	ra,0x0
    80008478:	2a0080e7          	jalr	672(ra) # 80008714 <mycpu>
    8000847c:	07852783          	lw	a5,120(a0)
    80008480:	01813083          	ld	ra,24(sp)
    80008484:	01013403          	ld	s0,16(sp)
    80008488:	0017879b          	addiw	a5,a5,1
    8000848c:	06f52c23          	sw	a5,120(a0)
    80008490:	00813483          	ld	s1,8(sp)
    80008494:	02010113          	addi	sp,sp,32
    80008498:	00008067          	ret
    8000849c:	0014d493          	srli	s1,s1,0x1
    800084a0:	00000097          	auipc	ra,0x0
    800084a4:	274080e7          	jalr	628(ra) # 80008714 <mycpu>
    800084a8:	0014f493          	andi	s1,s1,1
    800084ac:	06952e23          	sw	s1,124(a0)
    800084b0:	fc5ff06f          	j	80008474 <push_off+0x34>

00000000800084b4 <pop_off>:
    800084b4:	ff010113          	addi	sp,sp,-16
    800084b8:	00813023          	sd	s0,0(sp)
    800084bc:	00113423          	sd	ra,8(sp)
    800084c0:	01010413          	addi	s0,sp,16
    800084c4:	00000097          	auipc	ra,0x0
    800084c8:	250080e7          	jalr	592(ra) # 80008714 <mycpu>
    800084cc:	100027f3          	csrr	a5,sstatus
    800084d0:	0027f793          	andi	a5,a5,2
    800084d4:	04079663          	bnez	a5,80008520 <pop_off+0x6c>
    800084d8:	07852783          	lw	a5,120(a0)
    800084dc:	02f05a63          	blez	a5,80008510 <pop_off+0x5c>
    800084e0:	fff7871b          	addiw	a4,a5,-1
    800084e4:	06e52c23          	sw	a4,120(a0)
    800084e8:	00071c63          	bnez	a4,80008500 <pop_off+0x4c>
    800084ec:	07c52783          	lw	a5,124(a0)
    800084f0:	00078863          	beqz	a5,80008500 <pop_off+0x4c>
    800084f4:	100027f3          	csrr	a5,sstatus
    800084f8:	0027e793          	ori	a5,a5,2
    800084fc:	10079073          	csrw	sstatus,a5
    80008500:	00813083          	ld	ra,8(sp)
    80008504:	00013403          	ld	s0,0(sp)
    80008508:	01010113          	addi	sp,sp,16
    8000850c:	00008067          	ret
    80008510:	00003517          	auipc	a0,0x3
    80008514:	b0050513          	addi	a0,a0,-1280 # 8000b010 <_ZTV12ConsumerSync+0x68>
    80008518:	00001097          	auipc	ra,0x1
    8000851c:	848080e7          	jalr	-1976(ra) # 80008d60 <panic>
    80008520:	00003517          	auipc	a0,0x3
    80008524:	ad850513          	addi	a0,a0,-1320 # 8000aff8 <_ZTV12ConsumerSync+0x50>
    80008528:	00001097          	auipc	ra,0x1
    8000852c:	838080e7          	jalr	-1992(ra) # 80008d60 <panic>

0000000080008530 <push_on>:
    80008530:	fe010113          	addi	sp,sp,-32
    80008534:	00813823          	sd	s0,16(sp)
    80008538:	00113c23          	sd	ra,24(sp)
    8000853c:	00913423          	sd	s1,8(sp)
    80008540:	02010413          	addi	s0,sp,32
    80008544:	100024f3          	csrr	s1,sstatus
    80008548:	100027f3          	csrr	a5,sstatus
    8000854c:	0027e793          	ori	a5,a5,2
    80008550:	10079073          	csrw	sstatus,a5
    80008554:	00000097          	auipc	ra,0x0
    80008558:	1c0080e7          	jalr	448(ra) # 80008714 <mycpu>
    8000855c:	07852783          	lw	a5,120(a0)
    80008560:	02078663          	beqz	a5,8000858c <push_on+0x5c>
    80008564:	00000097          	auipc	ra,0x0
    80008568:	1b0080e7          	jalr	432(ra) # 80008714 <mycpu>
    8000856c:	07852783          	lw	a5,120(a0)
    80008570:	01813083          	ld	ra,24(sp)
    80008574:	01013403          	ld	s0,16(sp)
    80008578:	0017879b          	addiw	a5,a5,1
    8000857c:	06f52c23          	sw	a5,120(a0)
    80008580:	00813483          	ld	s1,8(sp)
    80008584:	02010113          	addi	sp,sp,32
    80008588:	00008067          	ret
    8000858c:	0014d493          	srli	s1,s1,0x1
    80008590:	00000097          	auipc	ra,0x0
    80008594:	184080e7          	jalr	388(ra) # 80008714 <mycpu>
    80008598:	0014f493          	andi	s1,s1,1
    8000859c:	06952e23          	sw	s1,124(a0)
    800085a0:	fc5ff06f          	j	80008564 <push_on+0x34>

00000000800085a4 <pop_on>:
    800085a4:	ff010113          	addi	sp,sp,-16
    800085a8:	00813023          	sd	s0,0(sp)
    800085ac:	00113423          	sd	ra,8(sp)
    800085b0:	01010413          	addi	s0,sp,16
    800085b4:	00000097          	auipc	ra,0x0
    800085b8:	160080e7          	jalr	352(ra) # 80008714 <mycpu>
    800085bc:	100027f3          	csrr	a5,sstatus
    800085c0:	0027f793          	andi	a5,a5,2
    800085c4:	04078463          	beqz	a5,8000860c <pop_on+0x68>
    800085c8:	07852783          	lw	a5,120(a0)
    800085cc:	02f05863          	blez	a5,800085fc <pop_on+0x58>
    800085d0:	fff7879b          	addiw	a5,a5,-1
    800085d4:	06f52c23          	sw	a5,120(a0)
    800085d8:	07853783          	ld	a5,120(a0)
    800085dc:	00079863          	bnez	a5,800085ec <pop_on+0x48>
    800085e0:	100027f3          	csrr	a5,sstatus
    800085e4:	ffd7f793          	andi	a5,a5,-3
    800085e8:	10079073          	csrw	sstatus,a5
    800085ec:	00813083          	ld	ra,8(sp)
    800085f0:	00013403          	ld	s0,0(sp)
    800085f4:	01010113          	addi	sp,sp,16
    800085f8:	00008067          	ret
    800085fc:	00003517          	auipc	a0,0x3
    80008600:	a3c50513          	addi	a0,a0,-1476 # 8000b038 <_ZTV12ConsumerSync+0x90>
    80008604:	00000097          	auipc	ra,0x0
    80008608:	75c080e7          	jalr	1884(ra) # 80008d60 <panic>
    8000860c:	00003517          	auipc	a0,0x3
    80008610:	a0c50513          	addi	a0,a0,-1524 # 8000b018 <_ZTV12ConsumerSync+0x70>
    80008614:	00000097          	auipc	ra,0x0
    80008618:	74c080e7          	jalr	1868(ra) # 80008d60 <panic>

000000008000861c <system_main>:
    8000861c:	fe010113          	addi	sp,sp,-32
    80008620:	00813823          	sd	s0,16(sp)
    80008624:	00913423          	sd	s1,8(sp)
    80008628:	00113c23          	sd	ra,24(sp)
    8000862c:	02010413          	addi	s0,sp,32
    80008630:	00000097          	auipc	ra,0x0
    80008634:	0c4080e7          	jalr	196(ra) # 800086f4 <cpuid>
    80008638:	00005497          	auipc	s1,0x5
    8000863c:	c7048493          	addi	s1,s1,-912 # 8000d2a8 <started>
    80008640:	02050263          	beqz	a0,80008664 <system_main+0x48>
    80008644:	0004a783          	lw	a5,0(s1)
    80008648:	0007879b          	sext.w	a5,a5
    8000864c:	fe078ce3          	beqz	a5,80008644 <system_main+0x28>
    80008650:	0ff0000f          	fence
    80008654:	00003517          	auipc	a0,0x3
    80008658:	a1c50513          	addi	a0,a0,-1508 # 8000b070 <_ZTV12ConsumerSync+0xc8>
    8000865c:	00000097          	auipc	ra,0x0
    80008660:	704080e7          	jalr	1796(ra) # 80008d60 <panic>
    80008664:	fffff097          	auipc	ra,0xfffff
    80008668:	7f0080e7          	jalr	2032(ra) # 80007e54 <consoleinit>
    8000866c:	00001097          	auipc	ra,0x1
    80008670:	de4080e7          	jalr	-540(ra) # 80009450 <printfinit>
    80008674:	00002517          	auipc	a0,0x2
    80008678:	dc450513          	addi	a0,a0,-572 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    8000867c:	00000097          	auipc	ra,0x0
    80008680:	740080e7          	jalr	1856(ra) # 80008dbc <__printf>
    80008684:	00003517          	auipc	a0,0x3
    80008688:	9bc50513          	addi	a0,a0,-1604 # 8000b040 <_ZTV12ConsumerSync+0x98>
    8000868c:	00000097          	auipc	ra,0x0
    80008690:	730080e7          	jalr	1840(ra) # 80008dbc <__printf>
    80008694:	00002517          	auipc	a0,0x2
    80008698:	da450513          	addi	a0,a0,-604 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    8000869c:	00000097          	auipc	ra,0x0
    800086a0:	720080e7          	jalr	1824(ra) # 80008dbc <__printf>
    800086a4:	00001097          	auipc	ra,0x1
    800086a8:	df4080e7          	jalr	-524(ra) # 80009498 <kinit>
    800086ac:	00000097          	auipc	ra,0x0
    800086b0:	148080e7          	jalr	328(ra) # 800087f4 <trapinit>
    800086b4:	00000097          	auipc	ra,0x0
    800086b8:	16c080e7          	jalr	364(ra) # 80008820 <trapinithart>
    800086bc:	00000097          	auipc	ra,0x0
    800086c0:	5b4080e7          	jalr	1460(ra) # 80008c70 <plicinit>
    800086c4:	00000097          	auipc	ra,0x0
    800086c8:	5d4080e7          	jalr	1492(ra) # 80008c98 <plicinithart>
    800086cc:	00000097          	auipc	ra,0x0
    800086d0:	078080e7          	jalr	120(ra) # 80008744 <userinit>
    800086d4:	0ff0000f          	fence
    800086d8:	00100793          	li	a5,1
    800086dc:	00003517          	auipc	a0,0x3
    800086e0:	97c50513          	addi	a0,a0,-1668 # 8000b058 <_ZTV12ConsumerSync+0xb0>
    800086e4:	00f4a023          	sw	a5,0(s1)
    800086e8:	00000097          	auipc	ra,0x0
    800086ec:	6d4080e7          	jalr	1748(ra) # 80008dbc <__printf>
    800086f0:	0000006f          	j	800086f0 <system_main+0xd4>

00000000800086f4 <cpuid>:
    800086f4:	ff010113          	addi	sp,sp,-16
    800086f8:	00813423          	sd	s0,8(sp)
    800086fc:	01010413          	addi	s0,sp,16
    80008700:	00020513          	mv	a0,tp
    80008704:	00813403          	ld	s0,8(sp)
    80008708:	0005051b          	sext.w	a0,a0
    8000870c:	01010113          	addi	sp,sp,16
    80008710:	00008067          	ret

0000000080008714 <mycpu>:
    80008714:	ff010113          	addi	sp,sp,-16
    80008718:	00813423          	sd	s0,8(sp)
    8000871c:	01010413          	addi	s0,sp,16
    80008720:	00020793          	mv	a5,tp
    80008724:	00813403          	ld	s0,8(sp)
    80008728:	0007879b          	sext.w	a5,a5
    8000872c:	00779793          	slli	a5,a5,0x7
    80008730:	00006517          	auipc	a0,0x6
    80008734:	d5850513          	addi	a0,a0,-680 # 8000e488 <cpus>
    80008738:	00f50533          	add	a0,a0,a5
    8000873c:	01010113          	addi	sp,sp,16
    80008740:	00008067          	ret

0000000080008744 <userinit>:
    80008744:	ff010113          	addi	sp,sp,-16
    80008748:	00813423          	sd	s0,8(sp)
    8000874c:	01010413          	addi	s0,sp,16
    80008750:	00813403          	ld	s0,8(sp)
    80008754:	01010113          	addi	sp,sp,16
    80008758:	ffffa317          	auipc	t1,0xffffa
    8000875c:	08c30067          	jr	140(t1) # 800027e4 <main>

0000000080008760 <either_copyout>:
    80008760:	ff010113          	addi	sp,sp,-16
    80008764:	00813023          	sd	s0,0(sp)
    80008768:	00113423          	sd	ra,8(sp)
    8000876c:	01010413          	addi	s0,sp,16
    80008770:	02051663          	bnez	a0,8000879c <either_copyout+0x3c>
    80008774:	00058513          	mv	a0,a1
    80008778:	00060593          	mv	a1,a2
    8000877c:	0006861b          	sext.w	a2,a3
    80008780:	00001097          	auipc	ra,0x1
    80008784:	1c4080e7          	jalr	452(ra) # 80009944 <__memmove>
    80008788:	00813083          	ld	ra,8(sp)
    8000878c:	00013403          	ld	s0,0(sp)
    80008790:	00000513          	li	a0,0
    80008794:	01010113          	addi	sp,sp,16
    80008798:	00008067          	ret
    8000879c:	00003517          	auipc	a0,0x3
    800087a0:	8fc50513          	addi	a0,a0,-1796 # 8000b098 <_ZTV12ConsumerSync+0xf0>
    800087a4:	00000097          	auipc	ra,0x0
    800087a8:	5bc080e7          	jalr	1468(ra) # 80008d60 <panic>

00000000800087ac <either_copyin>:
    800087ac:	ff010113          	addi	sp,sp,-16
    800087b0:	00813023          	sd	s0,0(sp)
    800087b4:	00113423          	sd	ra,8(sp)
    800087b8:	01010413          	addi	s0,sp,16
    800087bc:	02059463          	bnez	a1,800087e4 <either_copyin+0x38>
    800087c0:	00060593          	mv	a1,a2
    800087c4:	0006861b          	sext.w	a2,a3
    800087c8:	00001097          	auipc	ra,0x1
    800087cc:	17c080e7          	jalr	380(ra) # 80009944 <__memmove>
    800087d0:	00813083          	ld	ra,8(sp)
    800087d4:	00013403          	ld	s0,0(sp)
    800087d8:	00000513          	li	a0,0
    800087dc:	01010113          	addi	sp,sp,16
    800087e0:	00008067          	ret
    800087e4:	00003517          	auipc	a0,0x3
    800087e8:	8dc50513          	addi	a0,a0,-1828 # 8000b0c0 <_ZTV12ConsumerSync+0x118>
    800087ec:	00000097          	auipc	ra,0x0
    800087f0:	574080e7          	jalr	1396(ra) # 80008d60 <panic>

00000000800087f4 <trapinit>:
    800087f4:	ff010113          	addi	sp,sp,-16
    800087f8:	00813423          	sd	s0,8(sp)
    800087fc:	01010413          	addi	s0,sp,16
    80008800:	00813403          	ld	s0,8(sp)
    80008804:	00003597          	auipc	a1,0x3
    80008808:	8e458593          	addi	a1,a1,-1820 # 8000b0e8 <_ZTV12ConsumerSync+0x140>
    8000880c:	00006517          	auipc	a0,0x6
    80008810:	cfc50513          	addi	a0,a0,-772 # 8000e508 <tickslock>
    80008814:	01010113          	addi	sp,sp,16
    80008818:	00000317          	auipc	t1,0x0
    8000881c:	a2430067          	jr	-1500(t1) # 8000823c <initlock>

0000000080008820 <trapinithart>:
    80008820:	ff010113          	addi	sp,sp,-16
    80008824:	00813423          	sd	s0,8(sp)
    80008828:	01010413          	addi	s0,sp,16
    8000882c:	00000797          	auipc	a5,0x0
    80008830:	2f478793          	addi	a5,a5,756 # 80008b20 <kernelvec>
    80008834:	10579073          	csrw	stvec,a5
    80008838:	00813403          	ld	s0,8(sp)
    8000883c:	01010113          	addi	sp,sp,16
    80008840:	00008067          	ret

0000000080008844 <usertrap>:
    80008844:	ff010113          	addi	sp,sp,-16
    80008848:	00813423          	sd	s0,8(sp)
    8000884c:	01010413          	addi	s0,sp,16
    80008850:	00813403          	ld	s0,8(sp)
    80008854:	01010113          	addi	sp,sp,16
    80008858:	00008067          	ret

000000008000885c <usertrapret>:
    8000885c:	ff010113          	addi	sp,sp,-16
    80008860:	00813423          	sd	s0,8(sp)
    80008864:	01010413          	addi	s0,sp,16
    80008868:	00813403          	ld	s0,8(sp)
    8000886c:	01010113          	addi	sp,sp,16
    80008870:	00008067          	ret

0000000080008874 <kerneltrap>:
    80008874:	fe010113          	addi	sp,sp,-32
    80008878:	00813823          	sd	s0,16(sp)
    8000887c:	00113c23          	sd	ra,24(sp)
    80008880:	00913423          	sd	s1,8(sp)
    80008884:	02010413          	addi	s0,sp,32
    80008888:	142025f3          	csrr	a1,scause
    8000888c:	100027f3          	csrr	a5,sstatus
    80008890:	0027f793          	andi	a5,a5,2
    80008894:	10079c63          	bnez	a5,800089ac <kerneltrap+0x138>
    80008898:	142027f3          	csrr	a5,scause
    8000889c:	0207ce63          	bltz	a5,800088d8 <kerneltrap+0x64>
    800088a0:	00003517          	auipc	a0,0x3
    800088a4:	89050513          	addi	a0,a0,-1904 # 8000b130 <_ZTV12ConsumerSync+0x188>
    800088a8:	00000097          	auipc	ra,0x0
    800088ac:	514080e7          	jalr	1300(ra) # 80008dbc <__printf>
    800088b0:	141025f3          	csrr	a1,sepc
    800088b4:	14302673          	csrr	a2,stval
    800088b8:	00003517          	auipc	a0,0x3
    800088bc:	88850513          	addi	a0,a0,-1912 # 8000b140 <_ZTV12ConsumerSync+0x198>
    800088c0:	00000097          	auipc	ra,0x0
    800088c4:	4fc080e7          	jalr	1276(ra) # 80008dbc <__printf>
    800088c8:	00003517          	auipc	a0,0x3
    800088cc:	89050513          	addi	a0,a0,-1904 # 8000b158 <_ZTV12ConsumerSync+0x1b0>
    800088d0:	00000097          	auipc	ra,0x0
    800088d4:	490080e7          	jalr	1168(ra) # 80008d60 <panic>
    800088d8:	0ff7f713          	andi	a4,a5,255
    800088dc:	00900693          	li	a3,9
    800088e0:	04d70063          	beq	a4,a3,80008920 <kerneltrap+0xac>
    800088e4:	fff00713          	li	a4,-1
    800088e8:	03f71713          	slli	a4,a4,0x3f
    800088ec:	00170713          	addi	a4,a4,1
    800088f0:	fae798e3          	bne	a5,a4,800088a0 <kerneltrap+0x2c>
    800088f4:	00000097          	auipc	ra,0x0
    800088f8:	e00080e7          	jalr	-512(ra) # 800086f4 <cpuid>
    800088fc:	06050663          	beqz	a0,80008968 <kerneltrap+0xf4>
    80008900:	144027f3          	csrr	a5,sip
    80008904:	ffd7f793          	andi	a5,a5,-3
    80008908:	14479073          	csrw	sip,a5
    8000890c:	01813083          	ld	ra,24(sp)
    80008910:	01013403          	ld	s0,16(sp)
    80008914:	00813483          	ld	s1,8(sp)
    80008918:	02010113          	addi	sp,sp,32
    8000891c:	00008067          	ret
    80008920:	00000097          	auipc	ra,0x0
    80008924:	3c4080e7          	jalr	964(ra) # 80008ce4 <plic_claim>
    80008928:	00a00793          	li	a5,10
    8000892c:	00050493          	mv	s1,a0
    80008930:	06f50863          	beq	a0,a5,800089a0 <kerneltrap+0x12c>
    80008934:	fc050ce3          	beqz	a0,8000890c <kerneltrap+0x98>
    80008938:	00050593          	mv	a1,a0
    8000893c:	00002517          	auipc	a0,0x2
    80008940:	7d450513          	addi	a0,a0,2004 # 8000b110 <_ZTV12ConsumerSync+0x168>
    80008944:	00000097          	auipc	ra,0x0
    80008948:	478080e7          	jalr	1144(ra) # 80008dbc <__printf>
    8000894c:	01013403          	ld	s0,16(sp)
    80008950:	01813083          	ld	ra,24(sp)
    80008954:	00048513          	mv	a0,s1
    80008958:	00813483          	ld	s1,8(sp)
    8000895c:	02010113          	addi	sp,sp,32
    80008960:	00000317          	auipc	t1,0x0
    80008964:	3bc30067          	jr	956(t1) # 80008d1c <plic_complete>
    80008968:	00006517          	auipc	a0,0x6
    8000896c:	ba050513          	addi	a0,a0,-1120 # 8000e508 <tickslock>
    80008970:	00000097          	auipc	ra,0x0
    80008974:	8f0080e7          	jalr	-1808(ra) # 80008260 <acquire>
    80008978:	00005717          	auipc	a4,0x5
    8000897c:	93470713          	addi	a4,a4,-1740 # 8000d2ac <ticks>
    80008980:	00072783          	lw	a5,0(a4)
    80008984:	00006517          	auipc	a0,0x6
    80008988:	b8450513          	addi	a0,a0,-1148 # 8000e508 <tickslock>
    8000898c:	0017879b          	addiw	a5,a5,1
    80008990:	00f72023          	sw	a5,0(a4)
    80008994:	00000097          	auipc	ra,0x0
    80008998:	998080e7          	jalr	-1640(ra) # 8000832c <release>
    8000899c:	f65ff06f          	j	80008900 <kerneltrap+0x8c>
    800089a0:	fffff097          	auipc	ra,0xfffff
    800089a4:	784080e7          	jalr	1924(ra) # 80008124 <uartintr>
    800089a8:	fa5ff06f          	j	8000894c <kerneltrap+0xd8>
    800089ac:	00002517          	auipc	a0,0x2
    800089b0:	74450513          	addi	a0,a0,1860 # 8000b0f0 <_ZTV12ConsumerSync+0x148>
    800089b4:	00000097          	auipc	ra,0x0
    800089b8:	3ac080e7          	jalr	940(ra) # 80008d60 <panic>

00000000800089bc <clockintr>:
    800089bc:	fe010113          	addi	sp,sp,-32
    800089c0:	00813823          	sd	s0,16(sp)
    800089c4:	00913423          	sd	s1,8(sp)
    800089c8:	00113c23          	sd	ra,24(sp)
    800089cc:	02010413          	addi	s0,sp,32
    800089d0:	00006497          	auipc	s1,0x6
    800089d4:	b3848493          	addi	s1,s1,-1224 # 8000e508 <tickslock>
    800089d8:	00048513          	mv	a0,s1
    800089dc:	00000097          	auipc	ra,0x0
    800089e0:	884080e7          	jalr	-1916(ra) # 80008260 <acquire>
    800089e4:	00005717          	auipc	a4,0x5
    800089e8:	8c870713          	addi	a4,a4,-1848 # 8000d2ac <ticks>
    800089ec:	00072783          	lw	a5,0(a4)
    800089f0:	01013403          	ld	s0,16(sp)
    800089f4:	01813083          	ld	ra,24(sp)
    800089f8:	00048513          	mv	a0,s1
    800089fc:	0017879b          	addiw	a5,a5,1
    80008a00:	00813483          	ld	s1,8(sp)
    80008a04:	00f72023          	sw	a5,0(a4)
    80008a08:	02010113          	addi	sp,sp,32
    80008a0c:	00000317          	auipc	t1,0x0
    80008a10:	92030067          	jr	-1760(t1) # 8000832c <release>

0000000080008a14 <devintr>:
    80008a14:	142027f3          	csrr	a5,scause
    80008a18:	00000513          	li	a0,0
    80008a1c:	0007c463          	bltz	a5,80008a24 <devintr+0x10>
    80008a20:	00008067          	ret
    80008a24:	fe010113          	addi	sp,sp,-32
    80008a28:	00813823          	sd	s0,16(sp)
    80008a2c:	00113c23          	sd	ra,24(sp)
    80008a30:	00913423          	sd	s1,8(sp)
    80008a34:	02010413          	addi	s0,sp,32
    80008a38:	0ff7f713          	andi	a4,a5,255
    80008a3c:	00900693          	li	a3,9
    80008a40:	04d70c63          	beq	a4,a3,80008a98 <devintr+0x84>
    80008a44:	fff00713          	li	a4,-1
    80008a48:	03f71713          	slli	a4,a4,0x3f
    80008a4c:	00170713          	addi	a4,a4,1
    80008a50:	00e78c63          	beq	a5,a4,80008a68 <devintr+0x54>
    80008a54:	01813083          	ld	ra,24(sp)
    80008a58:	01013403          	ld	s0,16(sp)
    80008a5c:	00813483          	ld	s1,8(sp)
    80008a60:	02010113          	addi	sp,sp,32
    80008a64:	00008067          	ret
    80008a68:	00000097          	auipc	ra,0x0
    80008a6c:	c8c080e7          	jalr	-884(ra) # 800086f4 <cpuid>
    80008a70:	06050663          	beqz	a0,80008adc <devintr+0xc8>
    80008a74:	144027f3          	csrr	a5,sip
    80008a78:	ffd7f793          	andi	a5,a5,-3
    80008a7c:	14479073          	csrw	sip,a5
    80008a80:	01813083          	ld	ra,24(sp)
    80008a84:	01013403          	ld	s0,16(sp)
    80008a88:	00813483          	ld	s1,8(sp)
    80008a8c:	00200513          	li	a0,2
    80008a90:	02010113          	addi	sp,sp,32
    80008a94:	00008067          	ret
    80008a98:	00000097          	auipc	ra,0x0
    80008a9c:	24c080e7          	jalr	588(ra) # 80008ce4 <plic_claim>
    80008aa0:	00a00793          	li	a5,10
    80008aa4:	00050493          	mv	s1,a0
    80008aa8:	06f50663          	beq	a0,a5,80008b14 <devintr+0x100>
    80008aac:	00100513          	li	a0,1
    80008ab0:	fa0482e3          	beqz	s1,80008a54 <devintr+0x40>
    80008ab4:	00048593          	mv	a1,s1
    80008ab8:	00002517          	auipc	a0,0x2
    80008abc:	65850513          	addi	a0,a0,1624 # 8000b110 <_ZTV12ConsumerSync+0x168>
    80008ac0:	00000097          	auipc	ra,0x0
    80008ac4:	2fc080e7          	jalr	764(ra) # 80008dbc <__printf>
    80008ac8:	00048513          	mv	a0,s1
    80008acc:	00000097          	auipc	ra,0x0
    80008ad0:	250080e7          	jalr	592(ra) # 80008d1c <plic_complete>
    80008ad4:	00100513          	li	a0,1
    80008ad8:	f7dff06f          	j	80008a54 <devintr+0x40>
    80008adc:	00006517          	auipc	a0,0x6
    80008ae0:	a2c50513          	addi	a0,a0,-1492 # 8000e508 <tickslock>
    80008ae4:	fffff097          	auipc	ra,0xfffff
    80008ae8:	77c080e7          	jalr	1916(ra) # 80008260 <acquire>
    80008aec:	00004717          	auipc	a4,0x4
    80008af0:	7c070713          	addi	a4,a4,1984 # 8000d2ac <ticks>
    80008af4:	00072783          	lw	a5,0(a4)
    80008af8:	00006517          	auipc	a0,0x6
    80008afc:	a1050513          	addi	a0,a0,-1520 # 8000e508 <tickslock>
    80008b00:	0017879b          	addiw	a5,a5,1
    80008b04:	00f72023          	sw	a5,0(a4)
    80008b08:	00000097          	auipc	ra,0x0
    80008b0c:	824080e7          	jalr	-2012(ra) # 8000832c <release>
    80008b10:	f65ff06f          	j	80008a74 <devintr+0x60>
    80008b14:	fffff097          	auipc	ra,0xfffff
    80008b18:	610080e7          	jalr	1552(ra) # 80008124 <uartintr>
    80008b1c:	fadff06f          	j	80008ac8 <devintr+0xb4>

0000000080008b20 <kernelvec>:
    80008b20:	f0010113          	addi	sp,sp,-256
    80008b24:	00113023          	sd	ra,0(sp)
    80008b28:	00213423          	sd	sp,8(sp)
    80008b2c:	00313823          	sd	gp,16(sp)
    80008b30:	00413c23          	sd	tp,24(sp)
    80008b34:	02513023          	sd	t0,32(sp)
    80008b38:	02613423          	sd	t1,40(sp)
    80008b3c:	02713823          	sd	t2,48(sp)
    80008b40:	02813c23          	sd	s0,56(sp)
    80008b44:	04913023          	sd	s1,64(sp)
    80008b48:	04a13423          	sd	a0,72(sp)
    80008b4c:	04b13823          	sd	a1,80(sp)
    80008b50:	04c13c23          	sd	a2,88(sp)
    80008b54:	06d13023          	sd	a3,96(sp)
    80008b58:	06e13423          	sd	a4,104(sp)
    80008b5c:	06f13823          	sd	a5,112(sp)
    80008b60:	07013c23          	sd	a6,120(sp)
    80008b64:	09113023          	sd	a7,128(sp)
    80008b68:	09213423          	sd	s2,136(sp)
    80008b6c:	09313823          	sd	s3,144(sp)
    80008b70:	09413c23          	sd	s4,152(sp)
    80008b74:	0b513023          	sd	s5,160(sp)
    80008b78:	0b613423          	sd	s6,168(sp)
    80008b7c:	0b713823          	sd	s7,176(sp)
    80008b80:	0b813c23          	sd	s8,184(sp)
    80008b84:	0d913023          	sd	s9,192(sp)
    80008b88:	0da13423          	sd	s10,200(sp)
    80008b8c:	0db13823          	sd	s11,208(sp)
    80008b90:	0dc13c23          	sd	t3,216(sp)
    80008b94:	0fd13023          	sd	t4,224(sp)
    80008b98:	0fe13423          	sd	t5,232(sp)
    80008b9c:	0ff13823          	sd	t6,240(sp)
    80008ba0:	cd5ff0ef          	jal	ra,80008874 <kerneltrap>
    80008ba4:	00013083          	ld	ra,0(sp)
    80008ba8:	00813103          	ld	sp,8(sp)
    80008bac:	01013183          	ld	gp,16(sp)
    80008bb0:	02013283          	ld	t0,32(sp)
    80008bb4:	02813303          	ld	t1,40(sp)
    80008bb8:	03013383          	ld	t2,48(sp)
    80008bbc:	03813403          	ld	s0,56(sp)
    80008bc0:	04013483          	ld	s1,64(sp)
    80008bc4:	04813503          	ld	a0,72(sp)
    80008bc8:	05013583          	ld	a1,80(sp)
    80008bcc:	05813603          	ld	a2,88(sp)
    80008bd0:	06013683          	ld	a3,96(sp)
    80008bd4:	06813703          	ld	a4,104(sp)
    80008bd8:	07013783          	ld	a5,112(sp)
    80008bdc:	07813803          	ld	a6,120(sp)
    80008be0:	08013883          	ld	a7,128(sp)
    80008be4:	08813903          	ld	s2,136(sp)
    80008be8:	09013983          	ld	s3,144(sp)
    80008bec:	09813a03          	ld	s4,152(sp)
    80008bf0:	0a013a83          	ld	s5,160(sp)
    80008bf4:	0a813b03          	ld	s6,168(sp)
    80008bf8:	0b013b83          	ld	s7,176(sp)
    80008bfc:	0b813c03          	ld	s8,184(sp)
    80008c00:	0c013c83          	ld	s9,192(sp)
    80008c04:	0c813d03          	ld	s10,200(sp)
    80008c08:	0d013d83          	ld	s11,208(sp)
    80008c0c:	0d813e03          	ld	t3,216(sp)
    80008c10:	0e013e83          	ld	t4,224(sp)
    80008c14:	0e813f03          	ld	t5,232(sp)
    80008c18:	0f013f83          	ld	t6,240(sp)
    80008c1c:	10010113          	addi	sp,sp,256
    80008c20:	10200073          	sret
    80008c24:	00000013          	nop
    80008c28:	00000013          	nop
    80008c2c:	00000013          	nop

0000000080008c30 <timervec>:
    80008c30:	34051573          	csrrw	a0,mscratch,a0
    80008c34:	00b53023          	sd	a1,0(a0)
    80008c38:	00c53423          	sd	a2,8(a0)
    80008c3c:	00d53823          	sd	a3,16(a0)
    80008c40:	01853583          	ld	a1,24(a0)
    80008c44:	02053603          	ld	a2,32(a0)
    80008c48:	0005b683          	ld	a3,0(a1)
    80008c4c:	00c686b3          	add	a3,a3,a2
    80008c50:	00d5b023          	sd	a3,0(a1)
    80008c54:	00200593          	li	a1,2
    80008c58:	14459073          	csrw	sip,a1
    80008c5c:	01053683          	ld	a3,16(a0)
    80008c60:	00853603          	ld	a2,8(a0)
    80008c64:	00053583          	ld	a1,0(a0)
    80008c68:	34051573          	csrrw	a0,mscratch,a0
    80008c6c:	30200073          	mret

0000000080008c70 <plicinit>:
    80008c70:	ff010113          	addi	sp,sp,-16
    80008c74:	00813423          	sd	s0,8(sp)
    80008c78:	01010413          	addi	s0,sp,16
    80008c7c:	00813403          	ld	s0,8(sp)
    80008c80:	0c0007b7          	lui	a5,0xc000
    80008c84:	00100713          	li	a4,1
    80008c88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80008c8c:	00e7a223          	sw	a4,4(a5)
    80008c90:	01010113          	addi	sp,sp,16
    80008c94:	00008067          	ret

0000000080008c98 <plicinithart>:
    80008c98:	ff010113          	addi	sp,sp,-16
    80008c9c:	00813023          	sd	s0,0(sp)
    80008ca0:	00113423          	sd	ra,8(sp)
    80008ca4:	01010413          	addi	s0,sp,16
    80008ca8:	00000097          	auipc	ra,0x0
    80008cac:	a4c080e7          	jalr	-1460(ra) # 800086f4 <cpuid>
    80008cb0:	0085171b          	slliw	a4,a0,0x8
    80008cb4:	0c0027b7          	lui	a5,0xc002
    80008cb8:	00e787b3          	add	a5,a5,a4
    80008cbc:	40200713          	li	a4,1026
    80008cc0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80008cc4:	00813083          	ld	ra,8(sp)
    80008cc8:	00013403          	ld	s0,0(sp)
    80008ccc:	00d5151b          	slliw	a0,a0,0xd
    80008cd0:	0c2017b7          	lui	a5,0xc201
    80008cd4:	00a78533          	add	a0,a5,a0
    80008cd8:	00052023          	sw	zero,0(a0)
    80008cdc:	01010113          	addi	sp,sp,16
    80008ce0:	00008067          	ret

0000000080008ce4 <plic_claim>:
    80008ce4:	ff010113          	addi	sp,sp,-16
    80008ce8:	00813023          	sd	s0,0(sp)
    80008cec:	00113423          	sd	ra,8(sp)
    80008cf0:	01010413          	addi	s0,sp,16
    80008cf4:	00000097          	auipc	ra,0x0
    80008cf8:	a00080e7          	jalr	-1536(ra) # 800086f4 <cpuid>
    80008cfc:	00813083          	ld	ra,8(sp)
    80008d00:	00013403          	ld	s0,0(sp)
    80008d04:	00d5151b          	slliw	a0,a0,0xd
    80008d08:	0c2017b7          	lui	a5,0xc201
    80008d0c:	00a78533          	add	a0,a5,a0
    80008d10:	00452503          	lw	a0,4(a0)
    80008d14:	01010113          	addi	sp,sp,16
    80008d18:	00008067          	ret

0000000080008d1c <plic_complete>:
    80008d1c:	fe010113          	addi	sp,sp,-32
    80008d20:	00813823          	sd	s0,16(sp)
    80008d24:	00913423          	sd	s1,8(sp)
    80008d28:	00113c23          	sd	ra,24(sp)
    80008d2c:	02010413          	addi	s0,sp,32
    80008d30:	00050493          	mv	s1,a0
    80008d34:	00000097          	auipc	ra,0x0
    80008d38:	9c0080e7          	jalr	-1600(ra) # 800086f4 <cpuid>
    80008d3c:	01813083          	ld	ra,24(sp)
    80008d40:	01013403          	ld	s0,16(sp)
    80008d44:	00d5179b          	slliw	a5,a0,0xd
    80008d48:	0c201737          	lui	a4,0xc201
    80008d4c:	00f707b3          	add	a5,a4,a5
    80008d50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80008d54:	00813483          	ld	s1,8(sp)
    80008d58:	02010113          	addi	sp,sp,32
    80008d5c:	00008067          	ret

0000000080008d60 <panic>:
    80008d60:	fe010113          	addi	sp,sp,-32
    80008d64:	00113c23          	sd	ra,24(sp)
    80008d68:	00813823          	sd	s0,16(sp)
    80008d6c:	00913423          	sd	s1,8(sp)
    80008d70:	02010413          	addi	s0,sp,32
    80008d74:	00050493          	mv	s1,a0
    80008d78:	00002517          	auipc	a0,0x2
    80008d7c:	3f050513          	addi	a0,a0,1008 # 8000b168 <_ZTV12ConsumerSync+0x1c0>
    80008d80:	00005797          	auipc	a5,0x5
    80008d84:	7c07a423          	sw	zero,1992(a5) # 8000e548 <pr+0x18>
    80008d88:	00000097          	auipc	ra,0x0
    80008d8c:	034080e7          	jalr	52(ra) # 80008dbc <__printf>
    80008d90:	00048513          	mv	a0,s1
    80008d94:	00000097          	auipc	ra,0x0
    80008d98:	028080e7          	jalr	40(ra) # 80008dbc <__printf>
    80008d9c:	00001517          	auipc	a0,0x1
    80008da0:	69c50513          	addi	a0,a0,1692 # 8000a438 <_ZZ24debug_print_internal_intmE6digits+0x100>
    80008da4:	00000097          	auipc	ra,0x0
    80008da8:	018080e7          	jalr	24(ra) # 80008dbc <__printf>
    80008dac:	00100793          	li	a5,1
    80008db0:	00004717          	auipc	a4,0x4
    80008db4:	50f72023          	sw	a5,1280(a4) # 8000d2b0 <panicked>
    80008db8:	0000006f          	j	80008db8 <panic+0x58>

0000000080008dbc <__printf>:
    80008dbc:	f3010113          	addi	sp,sp,-208
    80008dc0:	08813023          	sd	s0,128(sp)
    80008dc4:	07313423          	sd	s3,104(sp)
    80008dc8:	09010413          	addi	s0,sp,144
    80008dcc:	05813023          	sd	s8,64(sp)
    80008dd0:	08113423          	sd	ra,136(sp)
    80008dd4:	06913c23          	sd	s1,120(sp)
    80008dd8:	07213823          	sd	s2,112(sp)
    80008ddc:	07413023          	sd	s4,96(sp)
    80008de0:	05513c23          	sd	s5,88(sp)
    80008de4:	05613823          	sd	s6,80(sp)
    80008de8:	05713423          	sd	s7,72(sp)
    80008dec:	03913c23          	sd	s9,56(sp)
    80008df0:	03a13823          	sd	s10,48(sp)
    80008df4:	03b13423          	sd	s11,40(sp)
    80008df8:	00005317          	auipc	t1,0x5
    80008dfc:	73830313          	addi	t1,t1,1848 # 8000e530 <pr>
    80008e00:	01832c03          	lw	s8,24(t1)
    80008e04:	00b43423          	sd	a1,8(s0)
    80008e08:	00c43823          	sd	a2,16(s0)
    80008e0c:	00d43c23          	sd	a3,24(s0)
    80008e10:	02e43023          	sd	a4,32(s0)
    80008e14:	02f43423          	sd	a5,40(s0)
    80008e18:	03043823          	sd	a6,48(s0)
    80008e1c:	03143c23          	sd	a7,56(s0)
    80008e20:	00050993          	mv	s3,a0
    80008e24:	4a0c1663          	bnez	s8,800092d0 <__printf+0x514>
    80008e28:	60098c63          	beqz	s3,80009440 <__printf+0x684>
    80008e2c:	0009c503          	lbu	a0,0(s3)
    80008e30:	00840793          	addi	a5,s0,8
    80008e34:	f6f43c23          	sd	a5,-136(s0)
    80008e38:	00000493          	li	s1,0
    80008e3c:	22050063          	beqz	a0,8000905c <__printf+0x2a0>
    80008e40:	00002a37          	lui	s4,0x2
    80008e44:	00018ab7          	lui	s5,0x18
    80008e48:	000f4b37          	lui	s6,0xf4
    80008e4c:	00989bb7          	lui	s7,0x989
    80008e50:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008e54:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008e58:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008e5c:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80008e60:	00148c9b          	addiw	s9,s1,1
    80008e64:	02500793          	li	a5,37
    80008e68:	01998933          	add	s2,s3,s9
    80008e6c:	38f51263          	bne	a0,a5,800091f0 <__printf+0x434>
    80008e70:	00094783          	lbu	a5,0(s2)
    80008e74:	00078c9b          	sext.w	s9,a5
    80008e78:	1e078263          	beqz	a5,8000905c <__printf+0x2a0>
    80008e7c:	0024849b          	addiw	s1,s1,2
    80008e80:	07000713          	li	a4,112
    80008e84:	00998933          	add	s2,s3,s1
    80008e88:	38e78a63          	beq	a5,a4,8000921c <__printf+0x460>
    80008e8c:	20f76863          	bltu	a4,a5,8000909c <__printf+0x2e0>
    80008e90:	42a78863          	beq	a5,a0,800092c0 <__printf+0x504>
    80008e94:	06400713          	li	a4,100
    80008e98:	40e79663          	bne	a5,a4,800092a4 <__printf+0x4e8>
    80008e9c:	f7843783          	ld	a5,-136(s0)
    80008ea0:	0007a603          	lw	a2,0(a5)
    80008ea4:	00878793          	addi	a5,a5,8
    80008ea8:	f6f43c23          	sd	a5,-136(s0)
    80008eac:	42064a63          	bltz	a2,800092e0 <__printf+0x524>
    80008eb0:	00a00713          	li	a4,10
    80008eb4:	02e677bb          	remuw	a5,a2,a4
    80008eb8:	00002d97          	auipc	s11,0x2
    80008ebc:	2d8d8d93          	addi	s11,s11,728 # 8000b190 <digits>
    80008ec0:	00900593          	li	a1,9
    80008ec4:	0006051b          	sext.w	a0,a2
    80008ec8:	00000c93          	li	s9,0
    80008ecc:	02079793          	slli	a5,a5,0x20
    80008ed0:	0207d793          	srli	a5,a5,0x20
    80008ed4:	00fd87b3          	add	a5,s11,a5
    80008ed8:	0007c783          	lbu	a5,0(a5)
    80008edc:	02e656bb          	divuw	a3,a2,a4
    80008ee0:	f8f40023          	sb	a5,-128(s0)
    80008ee4:	14c5d863          	bge	a1,a2,80009034 <__printf+0x278>
    80008ee8:	06300593          	li	a1,99
    80008eec:	00100c93          	li	s9,1
    80008ef0:	02e6f7bb          	remuw	a5,a3,a4
    80008ef4:	02079793          	slli	a5,a5,0x20
    80008ef8:	0207d793          	srli	a5,a5,0x20
    80008efc:	00fd87b3          	add	a5,s11,a5
    80008f00:	0007c783          	lbu	a5,0(a5)
    80008f04:	02e6d73b          	divuw	a4,a3,a4
    80008f08:	f8f400a3          	sb	a5,-127(s0)
    80008f0c:	12a5f463          	bgeu	a1,a0,80009034 <__printf+0x278>
    80008f10:	00a00693          	li	a3,10
    80008f14:	00900593          	li	a1,9
    80008f18:	02d777bb          	remuw	a5,a4,a3
    80008f1c:	02079793          	slli	a5,a5,0x20
    80008f20:	0207d793          	srli	a5,a5,0x20
    80008f24:	00fd87b3          	add	a5,s11,a5
    80008f28:	0007c503          	lbu	a0,0(a5)
    80008f2c:	02d757bb          	divuw	a5,a4,a3
    80008f30:	f8a40123          	sb	a0,-126(s0)
    80008f34:	48e5f263          	bgeu	a1,a4,800093b8 <__printf+0x5fc>
    80008f38:	06300513          	li	a0,99
    80008f3c:	02d7f5bb          	remuw	a1,a5,a3
    80008f40:	02059593          	slli	a1,a1,0x20
    80008f44:	0205d593          	srli	a1,a1,0x20
    80008f48:	00bd85b3          	add	a1,s11,a1
    80008f4c:	0005c583          	lbu	a1,0(a1)
    80008f50:	02d7d7bb          	divuw	a5,a5,a3
    80008f54:	f8b401a3          	sb	a1,-125(s0)
    80008f58:	48e57263          	bgeu	a0,a4,800093dc <__printf+0x620>
    80008f5c:	3e700513          	li	a0,999
    80008f60:	02d7f5bb          	remuw	a1,a5,a3
    80008f64:	02059593          	slli	a1,a1,0x20
    80008f68:	0205d593          	srli	a1,a1,0x20
    80008f6c:	00bd85b3          	add	a1,s11,a1
    80008f70:	0005c583          	lbu	a1,0(a1)
    80008f74:	02d7d7bb          	divuw	a5,a5,a3
    80008f78:	f8b40223          	sb	a1,-124(s0)
    80008f7c:	46e57663          	bgeu	a0,a4,800093e8 <__printf+0x62c>
    80008f80:	02d7f5bb          	remuw	a1,a5,a3
    80008f84:	02059593          	slli	a1,a1,0x20
    80008f88:	0205d593          	srli	a1,a1,0x20
    80008f8c:	00bd85b3          	add	a1,s11,a1
    80008f90:	0005c583          	lbu	a1,0(a1)
    80008f94:	02d7d7bb          	divuw	a5,a5,a3
    80008f98:	f8b402a3          	sb	a1,-123(s0)
    80008f9c:	46ea7863          	bgeu	s4,a4,8000940c <__printf+0x650>
    80008fa0:	02d7f5bb          	remuw	a1,a5,a3
    80008fa4:	02059593          	slli	a1,a1,0x20
    80008fa8:	0205d593          	srli	a1,a1,0x20
    80008fac:	00bd85b3          	add	a1,s11,a1
    80008fb0:	0005c583          	lbu	a1,0(a1)
    80008fb4:	02d7d7bb          	divuw	a5,a5,a3
    80008fb8:	f8b40323          	sb	a1,-122(s0)
    80008fbc:	3eeaf863          	bgeu	s5,a4,800093ac <__printf+0x5f0>
    80008fc0:	02d7f5bb          	remuw	a1,a5,a3
    80008fc4:	02059593          	slli	a1,a1,0x20
    80008fc8:	0205d593          	srli	a1,a1,0x20
    80008fcc:	00bd85b3          	add	a1,s11,a1
    80008fd0:	0005c583          	lbu	a1,0(a1)
    80008fd4:	02d7d7bb          	divuw	a5,a5,a3
    80008fd8:	f8b403a3          	sb	a1,-121(s0)
    80008fdc:	42eb7e63          	bgeu	s6,a4,80009418 <__printf+0x65c>
    80008fe0:	02d7f5bb          	remuw	a1,a5,a3
    80008fe4:	02059593          	slli	a1,a1,0x20
    80008fe8:	0205d593          	srli	a1,a1,0x20
    80008fec:	00bd85b3          	add	a1,s11,a1
    80008ff0:	0005c583          	lbu	a1,0(a1)
    80008ff4:	02d7d7bb          	divuw	a5,a5,a3
    80008ff8:	f8b40423          	sb	a1,-120(s0)
    80008ffc:	42ebfc63          	bgeu	s7,a4,80009434 <__printf+0x678>
    80009000:	02079793          	slli	a5,a5,0x20
    80009004:	0207d793          	srli	a5,a5,0x20
    80009008:	00fd8db3          	add	s11,s11,a5
    8000900c:	000dc703          	lbu	a4,0(s11)
    80009010:	00a00793          	li	a5,10
    80009014:	00900c93          	li	s9,9
    80009018:	f8e404a3          	sb	a4,-119(s0)
    8000901c:	00065c63          	bgez	a2,80009034 <__printf+0x278>
    80009020:	f9040713          	addi	a4,s0,-112
    80009024:	00f70733          	add	a4,a4,a5
    80009028:	02d00693          	li	a3,45
    8000902c:	fed70823          	sb	a3,-16(a4)
    80009030:	00078c93          	mv	s9,a5
    80009034:	f8040793          	addi	a5,s0,-128
    80009038:	01978cb3          	add	s9,a5,s9
    8000903c:	f7f40d13          	addi	s10,s0,-129
    80009040:	000cc503          	lbu	a0,0(s9)
    80009044:	fffc8c93          	addi	s9,s9,-1
    80009048:	fffff097          	auipc	ra,0xfffff
    8000904c:	d28080e7          	jalr	-728(ra) # 80007d70 <consputc>
    80009050:	ffac98e3          	bne	s9,s10,80009040 <__printf+0x284>
    80009054:	00094503          	lbu	a0,0(s2)
    80009058:	e00514e3          	bnez	a0,80008e60 <__printf+0xa4>
    8000905c:	1a0c1663          	bnez	s8,80009208 <__printf+0x44c>
    80009060:	08813083          	ld	ra,136(sp)
    80009064:	08013403          	ld	s0,128(sp)
    80009068:	07813483          	ld	s1,120(sp)
    8000906c:	07013903          	ld	s2,112(sp)
    80009070:	06813983          	ld	s3,104(sp)
    80009074:	06013a03          	ld	s4,96(sp)
    80009078:	05813a83          	ld	s5,88(sp)
    8000907c:	05013b03          	ld	s6,80(sp)
    80009080:	04813b83          	ld	s7,72(sp)
    80009084:	04013c03          	ld	s8,64(sp)
    80009088:	03813c83          	ld	s9,56(sp)
    8000908c:	03013d03          	ld	s10,48(sp)
    80009090:	02813d83          	ld	s11,40(sp)
    80009094:	0d010113          	addi	sp,sp,208
    80009098:	00008067          	ret
    8000909c:	07300713          	li	a4,115
    800090a0:	1ce78a63          	beq	a5,a4,80009274 <__printf+0x4b8>
    800090a4:	07800713          	li	a4,120
    800090a8:	1ee79e63          	bne	a5,a4,800092a4 <__printf+0x4e8>
    800090ac:	f7843783          	ld	a5,-136(s0)
    800090b0:	0007a703          	lw	a4,0(a5)
    800090b4:	00878793          	addi	a5,a5,8
    800090b8:	f6f43c23          	sd	a5,-136(s0)
    800090bc:	28074263          	bltz	a4,80009340 <__printf+0x584>
    800090c0:	00002d97          	auipc	s11,0x2
    800090c4:	0d0d8d93          	addi	s11,s11,208 # 8000b190 <digits>
    800090c8:	00f77793          	andi	a5,a4,15
    800090cc:	00fd87b3          	add	a5,s11,a5
    800090d0:	0007c683          	lbu	a3,0(a5)
    800090d4:	00f00613          	li	a2,15
    800090d8:	0007079b          	sext.w	a5,a4
    800090dc:	f8d40023          	sb	a3,-128(s0)
    800090e0:	0047559b          	srliw	a1,a4,0x4
    800090e4:	0047569b          	srliw	a3,a4,0x4
    800090e8:	00000c93          	li	s9,0
    800090ec:	0ee65063          	bge	a2,a4,800091cc <__printf+0x410>
    800090f0:	00f6f693          	andi	a3,a3,15
    800090f4:	00dd86b3          	add	a3,s11,a3
    800090f8:	0006c683          	lbu	a3,0(a3)
    800090fc:	0087d79b          	srliw	a5,a5,0x8
    80009100:	00100c93          	li	s9,1
    80009104:	f8d400a3          	sb	a3,-127(s0)
    80009108:	0cb67263          	bgeu	a2,a1,800091cc <__printf+0x410>
    8000910c:	00f7f693          	andi	a3,a5,15
    80009110:	00dd86b3          	add	a3,s11,a3
    80009114:	0006c583          	lbu	a1,0(a3)
    80009118:	00f00613          	li	a2,15
    8000911c:	0047d69b          	srliw	a3,a5,0x4
    80009120:	f8b40123          	sb	a1,-126(s0)
    80009124:	0047d593          	srli	a1,a5,0x4
    80009128:	28f67e63          	bgeu	a2,a5,800093c4 <__printf+0x608>
    8000912c:	00f6f693          	andi	a3,a3,15
    80009130:	00dd86b3          	add	a3,s11,a3
    80009134:	0006c503          	lbu	a0,0(a3)
    80009138:	0087d813          	srli	a6,a5,0x8
    8000913c:	0087d69b          	srliw	a3,a5,0x8
    80009140:	f8a401a3          	sb	a0,-125(s0)
    80009144:	28b67663          	bgeu	a2,a1,800093d0 <__printf+0x614>
    80009148:	00f6f693          	andi	a3,a3,15
    8000914c:	00dd86b3          	add	a3,s11,a3
    80009150:	0006c583          	lbu	a1,0(a3)
    80009154:	00c7d513          	srli	a0,a5,0xc
    80009158:	00c7d69b          	srliw	a3,a5,0xc
    8000915c:	f8b40223          	sb	a1,-124(s0)
    80009160:	29067a63          	bgeu	a2,a6,800093f4 <__printf+0x638>
    80009164:	00f6f693          	andi	a3,a3,15
    80009168:	00dd86b3          	add	a3,s11,a3
    8000916c:	0006c583          	lbu	a1,0(a3)
    80009170:	0107d813          	srli	a6,a5,0x10
    80009174:	0107d69b          	srliw	a3,a5,0x10
    80009178:	f8b402a3          	sb	a1,-123(s0)
    8000917c:	28a67263          	bgeu	a2,a0,80009400 <__printf+0x644>
    80009180:	00f6f693          	andi	a3,a3,15
    80009184:	00dd86b3          	add	a3,s11,a3
    80009188:	0006c683          	lbu	a3,0(a3)
    8000918c:	0147d79b          	srliw	a5,a5,0x14
    80009190:	f8d40323          	sb	a3,-122(s0)
    80009194:	21067663          	bgeu	a2,a6,800093a0 <__printf+0x5e4>
    80009198:	02079793          	slli	a5,a5,0x20
    8000919c:	0207d793          	srli	a5,a5,0x20
    800091a0:	00fd8db3          	add	s11,s11,a5
    800091a4:	000dc683          	lbu	a3,0(s11)
    800091a8:	00800793          	li	a5,8
    800091ac:	00700c93          	li	s9,7
    800091b0:	f8d403a3          	sb	a3,-121(s0)
    800091b4:	00075c63          	bgez	a4,800091cc <__printf+0x410>
    800091b8:	f9040713          	addi	a4,s0,-112
    800091bc:	00f70733          	add	a4,a4,a5
    800091c0:	02d00693          	li	a3,45
    800091c4:	fed70823          	sb	a3,-16(a4)
    800091c8:	00078c93          	mv	s9,a5
    800091cc:	f8040793          	addi	a5,s0,-128
    800091d0:	01978cb3          	add	s9,a5,s9
    800091d4:	f7f40d13          	addi	s10,s0,-129
    800091d8:	000cc503          	lbu	a0,0(s9)
    800091dc:	fffc8c93          	addi	s9,s9,-1
    800091e0:	fffff097          	auipc	ra,0xfffff
    800091e4:	b90080e7          	jalr	-1136(ra) # 80007d70 <consputc>
    800091e8:	ff9d18e3          	bne	s10,s9,800091d8 <__printf+0x41c>
    800091ec:	0100006f          	j	800091fc <__printf+0x440>
    800091f0:	fffff097          	auipc	ra,0xfffff
    800091f4:	b80080e7          	jalr	-1152(ra) # 80007d70 <consputc>
    800091f8:	000c8493          	mv	s1,s9
    800091fc:	00094503          	lbu	a0,0(s2)
    80009200:	c60510e3          	bnez	a0,80008e60 <__printf+0xa4>
    80009204:	e40c0ee3          	beqz	s8,80009060 <__printf+0x2a4>
    80009208:	00005517          	auipc	a0,0x5
    8000920c:	32850513          	addi	a0,a0,808 # 8000e530 <pr>
    80009210:	fffff097          	auipc	ra,0xfffff
    80009214:	11c080e7          	jalr	284(ra) # 8000832c <release>
    80009218:	e49ff06f          	j	80009060 <__printf+0x2a4>
    8000921c:	f7843783          	ld	a5,-136(s0)
    80009220:	03000513          	li	a0,48
    80009224:	01000d13          	li	s10,16
    80009228:	00878713          	addi	a4,a5,8
    8000922c:	0007bc83          	ld	s9,0(a5)
    80009230:	f6e43c23          	sd	a4,-136(s0)
    80009234:	fffff097          	auipc	ra,0xfffff
    80009238:	b3c080e7          	jalr	-1220(ra) # 80007d70 <consputc>
    8000923c:	07800513          	li	a0,120
    80009240:	fffff097          	auipc	ra,0xfffff
    80009244:	b30080e7          	jalr	-1232(ra) # 80007d70 <consputc>
    80009248:	00002d97          	auipc	s11,0x2
    8000924c:	f48d8d93          	addi	s11,s11,-184 # 8000b190 <digits>
    80009250:	03ccd793          	srli	a5,s9,0x3c
    80009254:	00fd87b3          	add	a5,s11,a5
    80009258:	0007c503          	lbu	a0,0(a5)
    8000925c:	fffd0d1b          	addiw	s10,s10,-1
    80009260:	004c9c93          	slli	s9,s9,0x4
    80009264:	fffff097          	auipc	ra,0xfffff
    80009268:	b0c080e7          	jalr	-1268(ra) # 80007d70 <consputc>
    8000926c:	fe0d12e3          	bnez	s10,80009250 <__printf+0x494>
    80009270:	f8dff06f          	j	800091fc <__printf+0x440>
    80009274:	f7843783          	ld	a5,-136(s0)
    80009278:	0007bc83          	ld	s9,0(a5)
    8000927c:	00878793          	addi	a5,a5,8
    80009280:	f6f43c23          	sd	a5,-136(s0)
    80009284:	000c9a63          	bnez	s9,80009298 <__printf+0x4dc>
    80009288:	1080006f          	j	80009390 <__printf+0x5d4>
    8000928c:	001c8c93          	addi	s9,s9,1
    80009290:	fffff097          	auipc	ra,0xfffff
    80009294:	ae0080e7          	jalr	-1312(ra) # 80007d70 <consputc>
    80009298:	000cc503          	lbu	a0,0(s9)
    8000929c:	fe0518e3          	bnez	a0,8000928c <__printf+0x4d0>
    800092a0:	f5dff06f          	j	800091fc <__printf+0x440>
    800092a4:	02500513          	li	a0,37
    800092a8:	fffff097          	auipc	ra,0xfffff
    800092ac:	ac8080e7          	jalr	-1336(ra) # 80007d70 <consputc>
    800092b0:	000c8513          	mv	a0,s9
    800092b4:	fffff097          	auipc	ra,0xfffff
    800092b8:	abc080e7          	jalr	-1348(ra) # 80007d70 <consputc>
    800092bc:	f41ff06f          	j	800091fc <__printf+0x440>
    800092c0:	02500513          	li	a0,37
    800092c4:	fffff097          	auipc	ra,0xfffff
    800092c8:	aac080e7          	jalr	-1364(ra) # 80007d70 <consputc>
    800092cc:	f31ff06f          	j	800091fc <__printf+0x440>
    800092d0:	00030513          	mv	a0,t1
    800092d4:	fffff097          	auipc	ra,0xfffff
    800092d8:	f8c080e7          	jalr	-116(ra) # 80008260 <acquire>
    800092dc:	b4dff06f          	j	80008e28 <__printf+0x6c>
    800092e0:	40c0053b          	negw	a0,a2
    800092e4:	00a00713          	li	a4,10
    800092e8:	02e576bb          	remuw	a3,a0,a4
    800092ec:	00002d97          	auipc	s11,0x2
    800092f0:	ea4d8d93          	addi	s11,s11,-348 # 8000b190 <digits>
    800092f4:	ff700593          	li	a1,-9
    800092f8:	02069693          	slli	a3,a3,0x20
    800092fc:	0206d693          	srli	a3,a3,0x20
    80009300:	00dd86b3          	add	a3,s11,a3
    80009304:	0006c683          	lbu	a3,0(a3)
    80009308:	02e557bb          	divuw	a5,a0,a4
    8000930c:	f8d40023          	sb	a3,-128(s0)
    80009310:	10b65e63          	bge	a2,a1,8000942c <__printf+0x670>
    80009314:	06300593          	li	a1,99
    80009318:	02e7f6bb          	remuw	a3,a5,a4
    8000931c:	02069693          	slli	a3,a3,0x20
    80009320:	0206d693          	srli	a3,a3,0x20
    80009324:	00dd86b3          	add	a3,s11,a3
    80009328:	0006c683          	lbu	a3,0(a3)
    8000932c:	02e7d73b          	divuw	a4,a5,a4
    80009330:	00200793          	li	a5,2
    80009334:	f8d400a3          	sb	a3,-127(s0)
    80009338:	bca5ece3          	bltu	a1,a0,80008f10 <__printf+0x154>
    8000933c:	ce5ff06f          	j	80009020 <__printf+0x264>
    80009340:	40e007bb          	negw	a5,a4
    80009344:	00002d97          	auipc	s11,0x2
    80009348:	e4cd8d93          	addi	s11,s11,-436 # 8000b190 <digits>
    8000934c:	00f7f693          	andi	a3,a5,15
    80009350:	00dd86b3          	add	a3,s11,a3
    80009354:	0006c583          	lbu	a1,0(a3)
    80009358:	ff100613          	li	a2,-15
    8000935c:	0047d69b          	srliw	a3,a5,0x4
    80009360:	f8b40023          	sb	a1,-128(s0)
    80009364:	0047d59b          	srliw	a1,a5,0x4
    80009368:	0ac75e63          	bge	a4,a2,80009424 <__printf+0x668>
    8000936c:	00f6f693          	andi	a3,a3,15
    80009370:	00dd86b3          	add	a3,s11,a3
    80009374:	0006c603          	lbu	a2,0(a3)
    80009378:	00f00693          	li	a3,15
    8000937c:	0087d79b          	srliw	a5,a5,0x8
    80009380:	f8c400a3          	sb	a2,-127(s0)
    80009384:	d8b6e4e3          	bltu	a3,a1,8000910c <__printf+0x350>
    80009388:	00200793          	li	a5,2
    8000938c:	e2dff06f          	j	800091b8 <__printf+0x3fc>
    80009390:	00002c97          	auipc	s9,0x2
    80009394:	de0c8c93          	addi	s9,s9,-544 # 8000b170 <_ZTV12ConsumerSync+0x1c8>
    80009398:	02800513          	li	a0,40
    8000939c:	ef1ff06f          	j	8000928c <__printf+0x4d0>
    800093a0:	00700793          	li	a5,7
    800093a4:	00600c93          	li	s9,6
    800093a8:	e0dff06f          	j	800091b4 <__printf+0x3f8>
    800093ac:	00700793          	li	a5,7
    800093b0:	00600c93          	li	s9,6
    800093b4:	c69ff06f          	j	8000901c <__printf+0x260>
    800093b8:	00300793          	li	a5,3
    800093bc:	00200c93          	li	s9,2
    800093c0:	c5dff06f          	j	8000901c <__printf+0x260>
    800093c4:	00300793          	li	a5,3
    800093c8:	00200c93          	li	s9,2
    800093cc:	de9ff06f          	j	800091b4 <__printf+0x3f8>
    800093d0:	00400793          	li	a5,4
    800093d4:	00300c93          	li	s9,3
    800093d8:	dddff06f          	j	800091b4 <__printf+0x3f8>
    800093dc:	00400793          	li	a5,4
    800093e0:	00300c93          	li	s9,3
    800093e4:	c39ff06f          	j	8000901c <__printf+0x260>
    800093e8:	00500793          	li	a5,5
    800093ec:	00400c93          	li	s9,4
    800093f0:	c2dff06f          	j	8000901c <__printf+0x260>
    800093f4:	00500793          	li	a5,5
    800093f8:	00400c93          	li	s9,4
    800093fc:	db9ff06f          	j	800091b4 <__printf+0x3f8>
    80009400:	00600793          	li	a5,6
    80009404:	00500c93          	li	s9,5
    80009408:	dadff06f          	j	800091b4 <__printf+0x3f8>
    8000940c:	00600793          	li	a5,6
    80009410:	00500c93          	li	s9,5
    80009414:	c09ff06f          	j	8000901c <__printf+0x260>
    80009418:	00800793          	li	a5,8
    8000941c:	00700c93          	li	s9,7
    80009420:	bfdff06f          	j	8000901c <__printf+0x260>
    80009424:	00100793          	li	a5,1
    80009428:	d91ff06f          	j	800091b8 <__printf+0x3fc>
    8000942c:	00100793          	li	a5,1
    80009430:	bf1ff06f          	j	80009020 <__printf+0x264>
    80009434:	00900793          	li	a5,9
    80009438:	00800c93          	li	s9,8
    8000943c:	be1ff06f          	j	8000901c <__printf+0x260>
    80009440:	00002517          	auipc	a0,0x2
    80009444:	d3850513          	addi	a0,a0,-712 # 8000b178 <_ZTV12ConsumerSync+0x1d0>
    80009448:	00000097          	auipc	ra,0x0
    8000944c:	918080e7          	jalr	-1768(ra) # 80008d60 <panic>

0000000080009450 <printfinit>:
    80009450:	fe010113          	addi	sp,sp,-32
    80009454:	00813823          	sd	s0,16(sp)
    80009458:	00913423          	sd	s1,8(sp)
    8000945c:	00113c23          	sd	ra,24(sp)
    80009460:	02010413          	addi	s0,sp,32
    80009464:	00005497          	auipc	s1,0x5
    80009468:	0cc48493          	addi	s1,s1,204 # 8000e530 <pr>
    8000946c:	00048513          	mv	a0,s1
    80009470:	00002597          	auipc	a1,0x2
    80009474:	d1858593          	addi	a1,a1,-744 # 8000b188 <_ZTV12ConsumerSync+0x1e0>
    80009478:	fffff097          	auipc	ra,0xfffff
    8000947c:	dc4080e7          	jalr	-572(ra) # 8000823c <initlock>
    80009480:	01813083          	ld	ra,24(sp)
    80009484:	01013403          	ld	s0,16(sp)
    80009488:	0004ac23          	sw	zero,24(s1)
    8000948c:	00813483          	ld	s1,8(sp)
    80009490:	02010113          	addi	sp,sp,32
    80009494:	00008067          	ret

0000000080009498 <kinit>:
    80009498:	fc010113          	addi	sp,sp,-64
    8000949c:	02913423          	sd	s1,40(sp)
    800094a0:	fffff7b7          	lui	a5,0xfffff
    800094a4:	00006497          	auipc	s1,0x6
    800094a8:	0ab48493          	addi	s1,s1,171 # 8000f54f <end+0xfff>
    800094ac:	02813823          	sd	s0,48(sp)
    800094b0:	01313c23          	sd	s3,24(sp)
    800094b4:	00f4f4b3          	and	s1,s1,a5
    800094b8:	02113c23          	sd	ra,56(sp)
    800094bc:	03213023          	sd	s2,32(sp)
    800094c0:	01413823          	sd	s4,16(sp)
    800094c4:	01513423          	sd	s5,8(sp)
    800094c8:	04010413          	addi	s0,sp,64
    800094cc:	000017b7          	lui	a5,0x1
    800094d0:	01100993          	li	s3,17
    800094d4:	00f487b3          	add	a5,s1,a5
    800094d8:	01b99993          	slli	s3,s3,0x1b
    800094dc:	06f9e063          	bltu	s3,a5,8000953c <kinit+0xa4>
    800094e0:	00005a97          	auipc	s5,0x5
    800094e4:	070a8a93          	addi	s5,s5,112 # 8000e550 <end>
    800094e8:	0754ec63          	bltu	s1,s5,80009560 <kinit+0xc8>
    800094ec:	0734fa63          	bgeu	s1,s3,80009560 <kinit+0xc8>
    800094f0:	00088a37          	lui	s4,0x88
    800094f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800094f8:	00004917          	auipc	s2,0x4
    800094fc:	dc090913          	addi	s2,s2,-576 # 8000d2b8 <kmem>
    80009500:	00ca1a13          	slli	s4,s4,0xc
    80009504:	0140006f          	j	80009518 <kinit+0x80>
    80009508:	000017b7          	lui	a5,0x1
    8000950c:	00f484b3          	add	s1,s1,a5
    80009510:	0554e863          	bltu	s1,s5,80009560 <kinit+0xc8>
    80009514:	0534f663          	bgeu	s1,s3,80009560 <kinit+0xc8>
    80009518:	00001637          	lui	a2,0x1
    8000951c:	00100593          	li	a1,1
    80009520:	00048513          	mv	a0,s1
    80009524:	00000097          	auipc	ra,0x0
    80009528:	204080e7          	jalr	516(ra) # 80009728 <__memset>
    8000952c:	00093783          	ld	a5,0(s2)
    80009530:	00f4b023          	sd	a5,0(s1)
    80009534:	00993023          	sd	s1,0(s2)
    80009538:	fd4498e3          	bne	s1,s4,80009508 <kinit+0x70>
    8000953c:	03813083          	ld	ra,56(sp)
    80009540:	03013403          	ld	s0,48(sp)
    80009544:	02813483          	ld	s1,40(sp)
    80009548:	02013903          	ld	s2,32(sp)
    8000954c:	01813983          	ld	s3,24(sp)
    80009550:	01013a03          	ld	s4,16(sp)
    80009554:	00813a83          	ld	s5,8(sp)
    80009558:	04010113          	addi	sp,sp,64
    8000955c:	00008067          	ret
    80009560:	00002517          	auipc	a0,0x2
    80009564:	c4850513          	addi	a0,a0,-952 # 8000b1a8 <digits+0x18>
    80009568:	fffff097          	auipc	ra,0xfffff
    8000956c:	7f8080e7          	jalr	2040(ra) # 80008d60 <panic>

0000000080009570 <freerange>:
    80009570:	fc010113          	addi	sp,sp,-64
    80009574:	000017b7          	lui	a5,0x1
    80009578:	02913423          	sd	s1,40(sp)
    8000957c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80009580:	009504b3          	add	s1,a0,s1
    80009584:	fffff537          	lui	a0,0xfffff
    80009588:	02813823          	sd	s0,48(sp)
    8000958c:	02113c23          	sd	ra,56(sp)
    80009590:	03213023          	sd	s2,32(sp)
    80009594:	01313c23          	sd	s3,24(sp)
    80009598:	01413823          	sd	s4,16(sp)
    8000959c:	01513423          	sd	s5,8(sp)
    800095a0:	01613023          	sd	s6,0(sp)
    800095a4:	04010413          	addi	s0,sp,64
    800095a8:	00a4f4b3          	and	s1,s1,a0
    800095ac:	00f487b3          	add	a5,s1,a5
    800095b0:	06f5e463          	bltu	a1,a5,80009618 <freerange+0xa8>
    800095b4:	00005a97          	auipc	s5,0x5
    800095b8:	f9ca8a93          	addi	s5,s5,-100 # 8000e550 <end>
    800095bc:	0954e263          	bltu	s1,s5,80009640 <freerange+0xd0>
    800095c0:	01100993          	li	s3,17
    800095c4:	01b99993          	slli	s3,s3,0x1b
    800095c8:	0734fc63          	bgeu	s1,s3,80009640 <freerange+0xd0>
    800095cc:	00058a13          	mv	s4,a1
    800095d0:	00004917          	auipc	s2,0x4
    800095d4:	ce890913          	addi	s2,s2,-792 # 8000d2b8 <kmem>
    800095d8:	00002b37          	lui	s6,0x2
    800095dc:	0140006f          	j	800095f0 <freerange+0x80>
    800095e0:	000017b7          	lui	a5,0x1
    800095e4:	00f484b3          	add	s1,s1,a5
    800095e8:	0554ec63          	bltu	s1,s5,80009640 <freerange+0xd0>
    800095ec:	0534fa63          	bgeu	s1,s3,80009640 <freerange+0xd0>
    800095f0:	00001637          	lui	a2,0x1
    800095f4:	00100593          	li	a1,1
    800095f8:	00048513          	mv	a0,s1
    800095fc:	00000097          	auipc	ra,0x0
    80009600:	12c080e7          	jalr	300(ra) # 80009728 <__memset>
    80009604:	00093703          	ld	a4,0(s2)
    80009608:	016487b3          	add	a5,s1,s6
    8000960c:	00e4b023          	sd	a4,0(s1)
    80009610:	00993023          	sd	s1,0(s2)
    80009614:	fcfa76e3          	bgeu	s4,a5,800095e0 <freerange+0x70>
    80009618:	03813083          	ld	ra,56(sp)
    8000961c:	03013403          	ld	s0,48(sp)
    80009620:	02813483          	ld	s1,40(sp)
    80009624:	02013903          	ld	s2,32(sp)
    80009628:	01813983          	ld	s3,24(sp)
    8000962c:	01013a03          	ld	s4,16(sp)
    80009630:	00813a83          	ld	s5,8(sp)
    80009634:	00013b03          	ld	s6,0(sp)
    80009638:	04010113          	addi	sp,sp,64
    8000963c:	00008067          	ret
    80009640:	00002517          	auipc	a0,0x2
    80009644:	b6850513          	addi	a0,a0,-1176 # 8000b1a8 <digits+0x18>
    80009648:	fffff097          	auipc	ra,0xfffff
    8000964c:	718080e7          	jalr	1816(ra) # 80008d60 <panic>

0000000080009650 <kfree>:
    80009650:	fe010113          	addi	sp,sp,-32
    80009654:	00813823          	sd	s0,16(sp)
    80009658:	00113c23          	sd	ra,24(sp)
    8000965c:	00913423          	sd	s1,8(sp)
    80009660:	02010413          	addi	s0,sp,32
    80009664:	03451793          	slli	a5,a0,0x34
    80009668:	04079c63          	bnez	a5,800096c0 <kfree+0x70>
    8000966c:	00005797          	auipc	a5,0x5
    80009670:	ee478793          	addi	a5,a5,-284 # 8000e550 <end>
    80009674:	00050493          	mv	s1,a0
    80009678:	04f56463          	bltu	a0,a5,800096c0 <kfree+0x70>
    8000967c:	01100793          	li	a5,17
    80009680:	01b79793          	slli	a5,a5,0x1b
    80009684:	02f57e63          	bgeu	a0,a5,800096c0 <kfree+0x70>
    80009688:	00001637          	lui	a2,0x1
    8000968c:	00100593          	li	a1,1
    80009690:	00000097          	auipc	ra,0x0
    80009694:	098080e7          	jalr	152(ra) # 80009728 <__memset>
    80009698:	00004797          	auipc	a5,0x4
    8000969c:	c2078793          	addi	a5,a5,-992 # 8000d2b8 <kmem>
    800096a0:	0007b703          	ld	a4,0(a5)
    800096a4:	01813083          	ld	ra,24(sp)
    800096a8:	01013403          	ld	s0,16(sp)
    800096ac:	00e4b023          	sd	a4,0(s1)
    800096b0:	0097b023          	sd	s1,0(a5)
    800096b4:	00813483          	ld	s1,8(sp)
    800096b8:	02010113          	addi	sp,sp,32
    800096bc:	00008067          	ret
    800096c0:	00002517          	auipc	a0,0x2
    800096c4:	ae850513          	addi	a0,a0,-1304 # 8000b1a8 <digits+0x18>
    800096c8:	fffff097          	auipc	ra,0xfffff
    800096cc:	698080e7          	jalr	1688(ra) # 80008d60 <panic>

00000000800096d0 <kalloc>:
    800096d0:	fe010113          	addi	sp,sp,-32
    800096d4:	00813823          	sd	s0,16(sp)
    800096d8:	00913423          	sd	s1,8(sp)
    800096dc:	00113c23          	sd	ra,24(sp)
    800096e0:	02010413          	addi	s0,sp,32
    800096e4:	00004797          	auipc	a5,0x4
    800096e8:	bd478793          	addi	a5,a5,-1068 # 8000d2b8 <kmem>
    800096ec:	0007b483          	ld	s1,0(a5)
    800096f0:	02048063          	beqz	s1,80009710 <kalloc+0x40>
    800096f4:	0004b703          	ld	a4,0(s1)
    800096f8:	00001637          	lui	a2,0x1
    800096fc:	00500593          	li	a1,5
    80009700:	00048513          	mv	a0,s1
    80009704:	00e7b023          	sd	a4,0(a5)
    80009708:	00000097          	auipc	ra,0x0
    8000970c:	020080e7          	jalr	32(ra) # 80009728 <__memset>
    80009710:	01813083          	ld	ra,24(sp)
    80009714:	01013403          	ld	s0,16(sp)
    80009718:	00048513          	mv	a0,s1
    8000971c:	00813483          	ld	s1,8(sp)
    80009720:	02010113          	addi	sp,sp,32
    80009724:	00008067          	ret

0000000080009728 <__memset>:
    80009728:	ff010113          	addi	sp,sp,-16
    8000972c:	00813423          	sd	s0,8(sp)
    80009730:	01010413          	addi	s0,sp,16
    80009734:	1a060e63          	beqz	a2,800098f0 <__memset+0x1c8>
    80009738:	40a007b3          	neg	a5,a0
    8000973c:	0077f793          	andi	a5,a5,7
    80009740:	00778693          	addi	a3,a5,7
    80009744:	00b00813          	li	a6,11
    80009748:	0ff5f593          	andi	a1,a1,255
    8000974c:	fff6071b          	addiw	a4,a2,-1
    80009750:	1b06e663          	bltu	a3,a6,800098fc <__memset+0x1d4>
    80009754:	1cd76463          	bltu	a4,a3,8000991c <__memset+0x1f4>
    80009758:	1a078e63          	beqz	a5,80009914 <__memset+0x1ec>
    8000975c:	00b50023          	sb	a1,0(a0)
    80009760:	00100713          	li	a4,1
    80009764:	1ae78463          	beq	a5,a4,8000990c <__memset+0x1e4>
    80009768:	00b500a3          	sb	a1,1(a0)
    8000976c:	00200713          	li	a4,2
    80009770:	1ae78a63          	beq	a5,a4,80009924 <__memset+0x1fc>
    80009774:	00b50123          	sb	a1,2(a0)
    80009778:	00300713          	li	a4,3
    8000977c:	18e78463          	beq	a5,a4,80009904 <__memset+0x1dc>
    80009780:	00b501a3          	sb	a1,3(a0)
    80009784:	00400713          	li	a4,4
    80009788:	1ae78263          	beq	a5,a4,8000992c <__memset+0x204>
    8000978c:	00b50223          	sb	a1,4(a0)
    80009790:	00500713          	li	a4,5
    80009794:	1ae78063          	beq	a5,a4,80009934 <__memset+0x20c>
    80009798:	00b502a3          	sb	a1,5(a0)
    8000979c:	00700713          	li	a4,7
    800097a0:	18e79e63          	bne	a5,a4,8000993c <__memset+0x214>
    800097a4:	00b50323          	sb	a1,6(a0)
    800097a8:	00700e93          	li	t4,7
    800097ac:	00859713          	slli	a4,a1,0x8
    800097b0:	00e5e733          	or	a4,a1,a4
    800097b4:	01059e13          	slli	t3,a1,0x10
    800097b8:	01c76e33          	or	t3,a4,t3
    800097bc:	01859313          	slli	t1,a1,0x18
    800097c0:	006e6333          	or	t1,t3,t1
    800097c4:	02059893          	slli	a7,a1,0x20
    800097c8:	40f60e3b          	subw	t3,a2,a5
    800097cc:	011368b3          	or	a7,t1,a7
    800097d0:	02859813          	slli	a6,a1,0x28
    800097d4:	0108e833          	or	a6,a7,a6
    800097d8:	03059693          	slli	a3,a1,0x30
    800097dc:	003e589b          	srliw	a7,t3,0x3
    800097e0:	00d866b3          	or	a3,a6,a3
    800097e4:	03859713          	slli	a4,a1,0x38
    800097e8:	00389813          	slli	a6,a7,0x3
    800097ec:	00f507b3          	add	a5,a0,a5
    800097f0:	00e6e733          	or	a4,a3,a4
    800097f4:	000e089b          	sext.w	a7,t3
    800097f8:	00f806b3          	add	a3,a6,a5
    800097fc:	00e7b023          	sd	a4,0(a5)
    80009800:	00878793          	addi	a5,a5,8
    80009804:	fed79ce3          	bne	a5,a3,800097fc <__memset+0xd4>
    80009808:	ff8e7793          	andi	a5,t3,-8
    8000980c:	0007871b          	sext.w	a4,a5
    80009810:	01d787bb          	addw	a5,a5,t4
    80009814:	0ce88e63          	beq	a7,a4,800098f0 <__memset+0x1c8>
    80009818:	00f50733          	add	a4,a0,a5
    8000981c:	00b70023          	sb	a1,0(a4)
    80009820:	0017871b          	addiw	a4,a5,1
    80009824:	0cc77663          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009828:	00e50733          	add	a4,a0,a4
    8000982c:	00b70023          	sb	a1,0(a4)
    80009830:	0027871b          	addiw	a4,a5,2
    80009834:	0ac77e63          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009838:	00e50733          	add	a4,a0,a4
    8000983c:	00b70023          	sb	a1,0(a4)
    80009840:	0037871b          	addiw	a4,a5,3
    80009844:	0ac77663          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009848:	00e50733          	add	a4,a0,a4
    8000984c:	00b70023          	sb	a1,0(a4)
    80009850:	0047871b          	addiw	a4,a5,4
    80009854:	08c77e63          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009858:	00e50733          	add	a4,a0,a4
    8000985c:	00b70023          	sb	a1,0(a4)
    80009860:	0057871b          	addiw	a4,a5,5
    80009864:	08c77663          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009868:	00e50733          	add	a4,a0,a4
    8000986c:	00b70023          	sb	a1,0(a4)
    80009870:	0067871b          	addiw	a4,a5,6
    80009874:	06c77e63          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009878:	00e50733          	add	a4,a0,a4
    8000987c:	00b70023          	sb	a1,0(a4)
    80009880:	0077871b          	addiw	a4,a5,7
    80009884:	06c77663          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009888:	00e50733          	add	a4,a0,a4
    8000988c:	00b70023          	sb	a1,0(a4)
    80009890:	0087871b          	addiw	a4,a5,8
    80009894:	04c77e63          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    80009898:	00e50733          	add	a4,a0,a4
    8000989c:	00b70023          	sb	a1,0(a4)
    800098a0:	0097871b          	addiw	a4,a5,9
    800098a4:	04c77663          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    800098a8:	00e50733          	add	a4,a0,a4
    800098ac:	00b70023          	sb	a1,0(a4)
    800098b0:	00a7871b          	addiw	a4,a5,10
    800098b4:	02c77e63          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    800098b8:	00e50733          	add	a4,a0,a4
    800098bc:	00b70023          	sb	a1,0(a4)
    800098c0:	00b7871b          	addiw	a4,a5,11
    800098c4:	02c77663          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    800098c8:	00e50733          	add	a4,a0,a4
    800098cc:	00b70023          	sb	a1,0(a4)
    800098d0:	00c7871b          	addiw	a4,a5,12
    800098d4:	00c77e63          	bgeu	a4,a2,800098f0 <__memset+0x1c8>
    800098d8:	00e50733          	add	a4,a0,a4
    800098dc:	00b70023          	sb	a1,0(a4)
    800098e0:	00d7879b          	addiw	a5,a5,13
    800098e4:	00c7f663          	bgeu	a5,a2,800098f0 <__memset+0x1c8>
    800098e8:	00f507b3          	add	a5,a0,a5
    800098ec:	00b78023          	sb	a1,0(a5)
    800098f0:	00813403          	ld	s0,8(sp)
    800098f4:	01010113          	addi	sp,sp,16
    800098f8:	00008067          	ret
    800098fc:	00b00693          	li	a3,11
    80009900:	e55ff06f          	j	80009754 <__memset+0x2c>
    80009904:	00300e93          	li	t4,3
    80009908:	ea5ff06f          	j	800097ac <__memset+0x84>
    8000990c:	00100e93          	li	t4,1
    80009910:	e9dff06f          	j	800097ac <__memset+0x84>
    80009914:	00000e93          	li	t4,0
    80009918:	e95ff06f          	j	800097ac <__memset+0x84>
    8000991c:	00000793          	li	a5,0
    80009920:	ef9ff06f          	j	80009818 <__memset+0xf0>
    80009924:	00200e93          	li	t4,2
    80009928:	e85ff06f          	j	800097ac <__memset+0x84>
    8000992c:	00400e93          	li	t4,4
    80009930:	e7dff06f          	j	800097ac <__memset+0x84>
    80009934:	00500e93          	li	t4,5
    80009938:	e75ff06f          	j	800097ac <__memset+0x84>
    8000993c:	00600e93          	li	t4,6
    80009940:	e6dff06f          	j	800097ac <__memset+0x84>

0000000080009944 <__memmove>:
    80009944:	ff010113          	addi	sp,sp,-16
    80009948:	00813423          	sd	s0,8(sp)
    8000994c:	01010413          	addi	s0,sp,16
    80009950:	0e060863          	beqz	a2,80009a40 <__memmove+0xfc>
    80009954:	fff6069b          	addiw	a3,a2,-1
    80009958:	0006881b          	sext.w	a6,a3
    8000995c:	0ea5e863          	bltu	a1,a0,80009a4c <__memmove+0x108>
    80009960:	00758713          	addi	a4,a1,7
    80009964:	00a5e7b3          	or	a5,a1,a0
    80009968:	40a70733          	sub	a4,a4,a0
    8000996c:	0077f793          	andi	a5,a5,7
    80009970:	00f73713          	sltiu	a4,a4,15
    80009974:	00174713          	xori	a4,a4,1
    80009978:	0017b793          	seqz	a5,a5
    8000997c:	00e7f7b3          	and	a5,a5,a4
    80009980:	10078863          	beqz	a5,80009a90 <__memmove+0x14c>
    80009984:	00900793          	li	a5,9
    80009988:	1107f463          	bgeu	a5,a6,80009a90 <__memmove+0x14c>
    8000998c:	0036581b          	srliw	a6,a2,0x3
    80009990:	fff8081b          	addiw	a6,a6,-1
    80009994:	02081813          	slli	a6,a6,0x20
    80009998:	01d85893          	srli	a7,a6,0x1d
    8000999c:	00858813          	addi	a6,a1,8
    800099a0:	00058793          	mv	a5,a1
    800099a4:	00050713          	mv	a4,a0
    800099a8:	01088833          	add	a6,a7,a6
    800099ac:	0007b883          	ld	a7,0(a5)
    800099b0:	00878793          	addi	a5,a5,8
    800099b4:	00870713          	addi	a4,a4,8
    800099b8:	ff173c23          	sd	a7,-8(a4)
    800099bc:	ff0798e3          	bne	a5,a6,800099ac <__memmove+0x68>
    800099c0:	ff867713          	andi	a4,a2,-8
    800099c4:	02071793          	slli	a5,a4,0x20
    800099c8:	0207d793          	srli	a5,a5,0x20
    800099cc:	00f585b3          	add	a1,a1,a5
    800099d0:	40e686bb          	subw	a3,a3,a4
    800099d4:	00f507b3          	add	a5,a0,a5
    800099d8:	06e60463          	beq	a2,a4,80009a40 <__memmove+0xfc>
    800099dc:	0005c703          	lbu	a4,0(a1)
    800099e0:	00e78023          	sb	a4,0(a5)
    800099e4:	04068e63          	beqz	a3,80009a40 <__memmove+0xfc>
    800099e8:	0015c603          	lbu	a2,1(a1)
    800099ec:	00100713          	li	a4,1
    800099f0:	00c780a3          	sb	a2,1(a5)
    800099f4:	04e68663          	beq	a3,a4,80009a40 <__memmove+0xfc>
    800099f8:	0025c603          	lbu	a2,2(a1)
    800099fc:	00200713          	li	a4,2
    80009a00:	00c78123          	sb	a2,2(a5)
    80009a04:	02e68e63          	beq	a3,a4,80009a40 <__memmove+0xfc>
    80009a08:	0035c603          	lbu	a2,3(a1)
    80009a0c:	00300713          	li	a4,3
    80009a10:	00c781a3          	sb	a2,3(a5)
    80009a14:	02e68663          	beq	a3,a4,80009a40 <__memmove+0xfc>
    80009a18:	0045c603          	lbu	a2,4(a1)
    80009a1c:	00400713          	li	a4,4
    80009a20:	00c78223          	sb	a2,4(a5)
    80009a24:	00e68e63          	beq	a3,a4,80009a40 <__memmove+0xfc>
    80009a28:	0055c603          	lbu	a2,5(a1)
    80009a2c:	00500713          	li	a4,5
    80009a30:	00c782a3          	sb	a2,5(a5)
    80009a34:	00e68663          	beq	a3,a4,80009a40 <__memmove+0xfc>
    80009a38:	0065c703          	lbu	a4,6(a1)
    80009a3c:	00e78323          	sb	a4,6(a5)
    80009a40:	00813403          	ld	s0,8(sp)
    80009a44:	01010113          	addi	sp,sp,16
    80009a48:	00008067          	ret
    80009a4c:	02061713          	slli	a4,a2,0x20
    80009a50:	02075713          	srli	a4,a4,0x20
    80009a54:	00e587b3          	add	a5,a1,a4
    80009a58:	f0f574e3          	bgeu	a0,a5,80009960 <__memmove+0x1c>
    80009a5c:	02069613          	slli	a2,a3,0x20
    80009a60:	02065613          	srli	a2,a2,0x20
    80009a64:	fff64613          	not	a2,a2
    80009a68:	00e50733          	add	a4,a0,a4
    80009a6c:	00c78633          	add	a2,a5,a2
    80009a70:	fff7c683          	lbu	a3,-1(a5)
    80009a74:	fff78793          	addi	a5,a5,-1
    80009a78:	fff70713          	addi	a4,a4,-1
    80009a7c:	00d70023          	sb	a3,0(a4)
    80009a80:	fec798e3          	bne	a5,a2,80009a70 <__memmove+0x12c>
    80009a84:	00813403          	ld	s0,8(sp)
    80009a88:	01010113          	addi	sp,sp,16
    80009a8c:	00008067          	ret
    80009a90:	02069713          	slli	a4,a3,0x20
    80009a94:	02075713          	srli	a4,a4,0x20
    80009a98:	00170713          	addi	a4,a4,1
    80009a9c:	00e50733          	add	a4,a0,a4
    80009aa0:	00050793          	mv	a5,a0
    80009aa4:	0005c683          	lbu	a3,0(a1)
    80009aa8:	00178793          	addi	a5,a5,1
    80009aac:	00158593          	addi	a1,a1,1
    80009ab0:	fed78fa3          	sb	a3,-1(a5)
    80009ab4:	fee798e3          	bne	a5,a4,80009aa4 <__memmove+0x160>
    80009ab8:	f89ff06f          	j	80009a40 <__memmove+0xfc>
	...
