
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	85013103          	ld	sp,-1968(sp) # 8000b850 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	124060ef          	jal	ra,80006140 <start>

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
    80001084:	1b5000ef          	jal	ra,80001a38 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001174:	96078793          	addi	a5,a5,-1696 # 8000bad0 <_ZN9Scheduler16readyThreadQueueE>
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
    8000119c:	93878793          	addi	a5,a5,-1736 # 8000bad0 <_ZN9Scheduler16readyThreadQueueE>
    800011a0:	0007b503          	ld	a0,0(a5)
    800011a4:	04050263          	beqz	a0,800011e8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011a8:	00853783          	ld	a5,8(a0)
    800011ac:	0000b717          	auipc	a4,0xb
    800011b0:	92f73223          	sd	a5,-1756(a4) # 8000bad0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011b4:	02078463          	beqz	a5,800011dc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011b8:	00053483          	ld	s1,0(a0)
        delete elem;
    800011bc:	00001097          	auipc	ra,0x1
    800011c0:	bdc080e7          	jalr	-1060(ra) # 80001d98 <_ZdlPv>
}
    800011c4:	00048513          	mv	a0,s1
    800011c8:	01813083          	ld	ra,24(sp)
    800011cc:	01013403          	ld	s0,16(sp)
    800011d0:	00813483          	ld	s1,8(sp)
    800011d4:	02010113          	addi	sp,sp,32
    800011d8:	00008067          	ret
        if (!head) { tail = 0; }
    800011dc:	0000b797          	auipc	a5,0xb
    800011e0:	8e07be23          	sd	zero,-1796(a5) # 8000bad8 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    80001210:	b0c080e7          	jalr	-1268(ra) # 80001d18 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001214:	00953023          	sd	s1,0(a0)
    80001218:	00053423          	sd	zero,8(a0)
        if (tail)
    8000121c:	0000b797          	auipc	a5,0xb
    80001220:	8b478793          	addi	a5,a5,-1868 # 8000bad0 <_ZN9Scheduler16readyThreadQueueE>
    80001224:	0087b783          	ld	a5,8(a5)
    80001228:	02078263          	beqz	a5,8000124c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000122c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001230:	0000b797          	auipc	a5,0xb
    80001234:	8aa7b423          	sd	a0,-1880(a5) # 8000bad8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001238:	01813083          	ld	ra,24(sp)
    8000123c:	01013403          	ld	s0,16(sp)
    80001240:	00813483          	ld	s1,8(sp)
    80001244:	02010113          	addi	sp,sp,32
    80001248:	00008067          	ret
            head = tail = elem;
    8000124c:	0000b797          	auipc	a5,0xb
    80001250:	88478793          	addi	a5,a5,-1916 # 8000bad0 <_ZN9Scheduler16readyThreadQueueE>
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

0000000080001294 <_ZN10_semaphore5closeEv>:
{
    return new _semaphore((int)init);
}

void _semaphore::close()
{
    80001294:	fe010113          	addi	sp,sp,-32
    80001298:	00113c23          	sd	ra,24(sp)
    8000129c:	00813823          	sd	s0,16(sp)
    800012a0:	00913423          	sd	s1,8(sp)
    800012a4:	01213023          	sd	s2,0(sp)
    800012a8:	02010413          	addi	s0,sp,32
    800012ac:	00050913          	mv	s2,a0
    closed_ = true;
    800012b0:	00100793          	li	a5,1
    800012b4:	00f50223          	sb	a5,4(a0)
    800012b8:	0280006f          	j	800012e0 <_ZN10_semaphore5closeEv+0x4c>
        if (!head) { tail = 0; }
    800012bc:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    800012c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800012c4:	00001097          	auipc	ra,0x1
    800012c8:	ad4080e7          	jalr	-1324(ra) # 80001d98 <_ZdlPv>
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    800012cc:	02048663          	beqz	s1,800012f8 <_ZN10_semaphore5closeEv+0x64>

    void setFinished(bool value) { finished_ = value; }

    void block() { blocked_ = true; }

    void unblock() { blocked_ = false; }
    800012d0:	020488a3          	sb	zero,49(s1)
    {
        t->unblock();
        Scheduler::put(t);
    800012d4:	00048513          	mv	a0,s1
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	f18080e7          	jalr	-232(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800012e0:	00893503          	ld	a0,8(s2)
    800012e4:	00050a63          	beqz	a0,800012f8 <_ZN10_semaphore5closeEv+0x64>
        head = head->next;
    800012e8:	00853783          	ld	a5,8(a0)
    800012ec:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    800012f0:	fc0798e3          	bnez	a5,800012c0 <_ZN10_semaphore5closeEv+0x2c>
    800012f4:	fc9ff06f          	j	800012bc <_ZN10_semaphore5closeEv+0x28>
    }
}
    800012f8:	01813083          	ld	ra,24(sp)
    800012fc:	01013403          	ld	s0,16(sp)
    80001300:	00813483          	ld	s1,8(sp)
    80001304:	00013903          	ld	s2,0(sp)
    80001308:	02010113          	addi	sp,sp,32
    8000130c:	00008067          	ret

0000000080001310 <_ZN10_semaphore4waitEv>:

int _semaphore::wait()
{
    // Cannot wait on a closed semaphore.
    if (closed_)
    80001310:	00454783          	lbu	a5,4(a0)
    80001314:	0a079063          	bnez	a5,800013b4 <_ZN10_semaphore4waitEv+0xa4>
    {
        return -1;
    }

     if (value_ > 0)
    80001318:	00052783          	lw	a5,0(a0)
    8000131c:	00f05a63          	blez	a5,80001330 <_ZN10_semaphore4waitEv+0x20>
    {
        value_ -= 1;
    80001320:	fff7879b          	addiw	a5,a5,-1
    80001324:	00f52023          	sw	a5,0(a0)
        return 0;
    80001328:	00000513          	li	a0,0
    8000132c:	00008067          	ret
{
    80001330:	fe010113          	addi	sp,sp,-32
    80001334:	00113c23          	sd	ra,24(sp)
    80001338:	00813823          	sd	s0,16(sp)
    8000133c:	00913423          	sd	s1,8(sp)
    80001340:	01213023          	sd	s2,0(sp)
    80001344:	02010413          	addi	s0,sp,32
    80001348:	00050493          	mv	s1,a0
    }

    // We do not need to remove the thread from the scheduler, just block it, 
    // and add it to the blocked list (waiting queue), then dispatch.
    TCB* old = TCB::running;
    8000134c:	0000a797          	auipc	a5,0xa
    80001350:	6fc78793          	addi	a5,a5,1788 # 8000ba48 <_ZN3TCB7runningE>
    80001354:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    80001358:	00100793          	li	a5,1
    8000135c:	02f908a3          	sb	a5,49(s2)
        Elem *elem = new Elem(data, 0);
    80001360:	01000513          	li	a0,16
    80001364:	00001097          	auipc	ra,0x1
    80001368:	9b4080e7          	jalr	-1612(ra) # 80001d18 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000136c:	01253023          	sd	s2,0(a0)
    80001370:	00053423          	sd	zero,8(a0)
        if (tail)
    80001374:	0104b783          	ld	a5,16(s1)
    80001378:	02078863          	beqz	a5,800013a8 <_ZN10_semaphore4waitEv+0x98>
            tail->next = elem;
    8000137c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001380:	00a4b823          	sd	a0,16(s1)
    old->block();
    blocked_.addLast(old);
    TCB::yield();
    80001384:	00001097          	auipc	ra,0x1
    80001388:	f80080e7          	jalr	-128(ra) # 80002304 <_ZN3TCB5yieldEv>

    // TODO: Check if this works as a way of detecting closed semaphores.
    return 0;
    8000138c:	00000513          	li	a0,0
}
    80001390:	01813083          	ld	ra,24(sp)
    80001394:	01013403          	ld	s0,16(sp)
    80001398:	00813483          	ld	s1,8(sp)
    8000139c:	00013903          	ld	s2,0(sp)
    800013a0:	02010113          	addi	sp,sp,32
    800013a4:	00008067          	ret
            head = tail = elem;
    800013a8:	00a4b823          	sd	a0,16(s1)
    800013ac:	00a4b423          	sd	a0,8(s1)
    800013b0:	fd5ff06f          	j	80001384 <_ZN10_semaphore4waitEv+0x74>
        return -1;
    800013b4:	fff00513          	li	a0,-1
}
    800013b8:	00008067          	ret

00000000800013bc <_ZN10_semaphore6signalEv>:

void _semaphore::signal()
{
    800013bc:	fe010113          	addi	sp,sp,-32
    800013c0:	00113c23          	sd	ra,24(sp)
    800013c4:	00813823          	sd	s0,16(sp)
    800013c8:	00913423          	sd	s1,8(sp)
    800013cc:	01213023          	sd	s2,0(sp)
    800013d0:	02010413          	addi	s0,sp,32
    800013d4:	00050493          	mv	s1,a0
        if (!head) { return 0; }
    800013d8:	00853503          	ld	a0,8(a0)
    800013dc:	02050e63          	beqz	a0,80001418 <_ZN10_semaphore6signalEv+0x5c>
        head = head->next;
    800013e0:	00853783          	ld	a5,8(a0)
    800013e4:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800013e8:	02078463          	beqz	a5,80001410 <_ZN10_semaphore6signalEv+0x54>
        T *ret = elem->data;
    800013ec:	00053903          	ld	s2,0(a0)
        delete elem;
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	9a8080e7          	jalr	-1624(ra) # 80001d98 <_ZdlPv>
    if (TCB *t = blocked_.removeFirst())
    800013f8:	02090063          	beqz	s2,80001418 <_ZN10_semaphore6signalEv+0x5c>
    void unblock() { blocked_ = false; }
    800013fc:	020908a3          	sb	zero,49(s2)
    {
        t->unblock();
        Scheduler::put(t);
    80001400:	00090513          	mv	a0,s2
    80001404:	00000097          	auipc	ra,0x0
    80001408:	dec080e7          	jalr	-532(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    8000140c:	0180006f          	j	80001424 <_ZN10_semaphore6signalEv+0x68>
        if (!head) { tail = 0; }
    80001410:	0004b823          	sd	zero,16(s1)
    80001414:	fd9ff06f          	j	800013ec <_ZN10_semaphore6signalEv+0x30>
    }
    else
    {
        value_ += 1;
    80001418:	0004a783          	lw	a5,0(s1)
    8000141c:	0017879b          	addiw	a5,a5,1
    80001420:	00f4a023          	sw	a5,0(s1)
    }
}
    80001424:	01813083          	ld	ra,24(sp)
    80001428:	01013403          	ld	s0,16(sp)
    8000142c:	00813483          	ld	s1,8(sp)
    80001430:	00013903          	ld	s2,0(sp)
    80001434:	02010113          	addi	sp,sp,32
    80001438:	00008067          	ret

000000008000143c <_ZN10_semaphoreC1Ei>:

    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00813423          	sd	s0,8(sp)
    80001444:	01010413          	addi	s0,sp,16
    80001448:	00b52023          	sw	a1,0(a0)
    List() : head(0), tail(0) {}
    8000144c:	00053423          	sd	zero,8(a0)
    80001450:	00053823          	sd	zero,16(a0)
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <_ZN10_semaphore4openEj>:
{
    80001460:	fe010113          	addi	sp,sp,-32
    80001464:	00113c23          	sd	ra,24(sp)
    80001468:	00813823          	sd	s0,16(sp)
    8000146c:	00913423          	sd	s1,8(sp)
    80001470:	01213023          	sd	s2,0(sp)
    80001474:	02010413          	addi	s0,sp,32
    80001478:	00050913          	mv	s2,a0
    return new _semaphore((int)init);
    8000147c:	01800513          	li	a0,24
    80001480:	00001097          	auipc	ra,0x1
    80001484:	898080e7          	jalr	-1896(ra) # 80001d18 <_Znwm>
    80001488:	00050493          	mv	s1,a0
    8000148c:	00090593          	mv	a1,s2
    80001490:	00000097          	auipc	ra,0x0
    80001494:	fac080e7          	jalr	-84(ra) # 8000143c <_ZN10_semaphoreC1Ei>
}
    80001498:	00048513          	mv	a0,s1
    8000149c:	01813083          	ld	ra,24(sp)
    800014a0:	01013403          	ld	s0,16(sp)
    800014a4:	00813483          	ld	s1,8(sp)
    800014a8:	00013903          	ld	s2,0(sp)
    800014ac:	02010113          	addi	sp,sp,32
    800014b0:	00008067          	ret

00000000800014b4 <_Z7syscall11SyscallCodemmmmmmmm>:
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/print.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    800014b4:	ff010113          	addi	sp,sp,-16
    800014b8:	00813423          	sd	s0,8(sp)
    800014bc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800014c0:	00000073          	ecall
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    800014c4:	00050513          	mv	a0,a0
    return result;
}
    800014c8:	00813403          	ld	s0,8(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_Z9mem_allocm>:

// TODO: Do this with number of blocks instead of size.
void* mem_alloc (size_t size) {
    800014d4:	fd010113          	addi	sp,sp,-48
    800014d8:	02113423          	sd	ra,40(sp)
    800014dc:	02813023          	sd	s0,32(sp)
    800014e0:	00913c23          	sd	s1,24(sp)
    800014e4:	03010413          	addi	s0,sp,48
    800014e8:	00050493          	mv	s1,a0
    debug_print("Syscall malloc called\n");
    800014ec:	00008517          	auipc	a0,0x8
    800014f0:	b3450513          	addi	a0,a0,-1228 # 80009020 <CONSOLE_STATUS+0x10>
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	994080e7          	jalr	-1644(ra) # 80001e88 <_Z11debug_printPKc>
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    800014fc:	00013023          	sd	zero,0(sp)
    80001500:	00000893          	li	a7,0
    80001504:	00000813          	li	a6,0
    80001508:	00000793          	li	a5,0
    8000150c:	00000713          	li	a4,0
    80001510:	00000693          	li	a3,0
    80001514:	00000613          	li	a2,0
    80001518:	00048593          	mv	a1,s1
    8000151c:	00100513          	li	a0,1
    80001520:	00000097          	auipc	ra,0x0
    80001524:	f94080e7          	jalr	-108(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001528:	02813083          	ld	ra,40(sp)
    8000152c:	02013403          	ld	s0,32(sp)
    80001530:	01813483          	ld	s1,24(sp)
    80001534:	03010113          	addi	sp,sp,48
    80001538:	00008067          	ret

000000008000153c <_Z8mem_freePv>:

int mem_free (void* ptr) {
    8000153c:	fd010113          	addi	sp,sp,-48
    80001540:	02113423          	sd	ra,40(sp)
    80001544:	02813023          	sd	s0,32(sp)
    80001548:	00913c23          	sd	s1,24(sp)
    8000154c:	03010413          	addi	s0,sp,48
    80001550:	00050493          	mv	s1,a0
    debug_print("Syscall free called\n");
    80001554:	00008517          	auipc	a0,0x8
    80001558:	ae450513          	addi	a0,a0,-1308 # 80009038 <CONSOLE_STATUS+0x28>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	92c080e7          	jalr	-1748(ra) # 80001e88 <_Z11debug_printPKc>
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    80001564:	00013023          	sd	zero,0(sp)
    80001568:	00000893          	li	a7,0
    8000156c:	00000813          	li	a6,0
    80001570:	00000793          	li	a5,0
    80001574:	00000713          	li	a4,0
    80001578:	00000693          	li	a3,0
    8000157c:	00000613          	li	a2,0
    80001580:	00048593          	mv	a1,s1
    80001584:	00200513          	li	a0,2
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	f2c080e7          	jalr	-212(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001590:	0005051b          	sext.w	a0,a0
    80001594:	02813083          	ld	ra,40(sp)
    80001598:	02013403          	ld	s0,32(sp)
    8000159c:	01813483          	ld	s1,24(sp)
    800015a0:	03010113          	addi	sp,sp,48
    800015a4:	00008067          	ret

00000000800015a8 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800015a8:	fe010113          	addi	sp,sp,-32
    800015ac:	00113c23          	sd	ra,24(sp)
    800015b0:	00813823          	sd	s0,16(sp)
    800015b4:	02010413          	addi	s0,sp,32
    debug_print("Syscall get free space called\n");
    800015b8:	00008517          	auipc	a0,0x8
    800015bc:	a9850513          	addi	a0,a0,-1384 # 80009050 <CONSOLE_STATUS+0x40>
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	8c8080e7          	jalr	-1848(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    800015c8:	00013023          	sd	zero,0(sp)
    800015cc:	00000893          	li	a7,0
    800015d0:	00000813          	li	a6,0
    800015d4:	00000793          	li	a5,0
    800015d8:	00000713          	li	a4,0
    800015dc:	00000693          	li	a3,0
    800015e0:	00000613          	li	a2,0
    800015e4:	00000593          	li	a1,0
    800015e8:	00300513          	li	a0,3
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	ec8080e7          	jalr	-312(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800015f4:	01813083          	ld	ra,24(sp)
    800015f8:	01013403          	ld	s0,16(sp)
    800015fc:	02010113          	addi	sp,sp,32
    80001600:	00008067          	ret

0000000080001604 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    80001604:	fe010113          	addi	sp,sp,-32
    80001608:	00113c23          	sd	ra,24(sp)
    8000160c:	00813823          	sd	s0,16(sp)
    80001610:	02010413          	addi	s0,sp,32
    debug_print("Syscall get largest free block called\n");
    80001614:	00008517          	auipc	a0,0x8
    80001618:	a5c50513          	addi	a0,a0,-1444 # 80009070 <CONSOLE_STATUS+0x60>
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	86c080e7          	jalr	-1940(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    80001624:	00013023          	sd	zero,0(sp)
    80001628:	00000893          	li	a7,0
    8000162c:	00000813          	li	a6,0
    80001630:	00000793          	li	a5,0
    80001634:	00000713          	li	a4,0
    80001638:	00000693          	li	a3,0
    8000163c:	00000613          	li	a2,0
    80001640:	00000593          	li	a1,0
    80001644:	00400513          	li	a0,4
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	e6c080e7          	jalr	-404(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001650:	01813083          	ld	ra,24(sp)
    80001654:	01013403          	ld	s0,16(sp)
    80001658:	02010113          	addi	sp,sp,32
    8000165c:	00008067          	ret

0000000080001660 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001660:	fc010113          	addi	sp,sp,-64
    80001664:	02113c23          	sd	ra,56(sp)
    80001668:	02813823          	sd	s0,48(sp)
    8000166c:	02913423          	sd	s1,40(sp)
    80001670:	03213023          	sd	s2,32(sp)
    80001674:	01313c23          	sd	s3,24(sp)
    80001678:	04010413          	addi	s0,sp,64
    8000167c:	00050493          	mv	s1,a0
    80001680:	00058913          	mv	s2,a1
    80001684:	00060993          	mv	s3,a2
    debug_print("Syscall thread create called\n");
    80001688:	00008517          	auipc	a0,0x8
    8000168c:	a1050513          	addi	a0,a0,-1520 # 80009098 <CONSOLE_STATUS+0x88>
    80001690:	00000097          	auipc	ra,0x0
    80001694:	7f8080e7          	jalr	2040(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    80001698:	00013023          	sd	zero,0(sp)
    8000169c:	00000893          	li	a7,0
    800016a0:	00000813          	li	a6,0
    800016a4:	00000793          	li	a5,0
    800016a8:	00000713          	li	a4,0
    800016ac:	00098693          	mv	a3,s3
    800016b0:	00090613          	mv	a2,s2
    800016b4:	00048593          	mv	a1,s1
    800016b8:	01100513          	li	a0,17
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	df8080e7          	jalr	-520(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800016c4:	0005051b          	sext.w	a0,a0
    800016c8:	03813083          	ld	ra,56(sp)
    800016cc:	03013403          	ld	s0,48(sp)
    800016d0:	02813483          	ld	s1,40(sp)
    800016d4:	02013903          	ld	s2,32(sp)
    800016d8:	01813983          	ld	s3,24(sp)
    800016dc:	04010113          	addi	sp,sp,64
    800016e0:	00008067          	ret

00000000800016e4 <_Z11thread_exitv>:

int thread_exit () {
    800016e4:	fe010113          	addi	sp,sp,-32
    800016e8:	00113c23          	sd	ra,24(sp)
    800016ec:	00813823          	sd	s0,16(sp)
    800016f0:	02010413          	addi	s0,sp,32
    debug_print("Syscall thread exit called\n");
    800016f4:	00008517          	auipc	a0,0x8
    800016f8:	9c450513          	addi	a0,a0,-1596 # 800090b8 <CONSOLE_STATUS+0xa8>
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	78c080e7          	jalr	1932(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::THREAD_EXIT);
    80001704:	00013023          	sd	zero,0(sp)
    80001708:	00000893          	li	a7,0
    8000170c:	00000813          	li	a6,0
    80001710:	00000793          	li	a5,0
    80001714:	00000713          	li	a4,0
    80001718:	00000693          	li	a3,0
    8000171c:	00000613          	li	a2,0
    80001720:	00000593          	li	a1,0
    80001724:	01200513          	li	a0,18
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	d8c080e7          	jalr	-628(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001730:	0005051b          	sext.w	a0,a0
    80001734:	01813083          	ld	ra,24(sp)
    80001738:	01013403          	ld	s0,16(sp)
    8000173c:	02010113          	addi	sp,sp,32
    80001740:	00008067          	ret

0000000080001744 <_Z15thread_dispatchv>:

void thread_dispatch () {
    80001744:	fe010113          	addi	sp,sp,-32
    80001748:	00113c23          	sd	ra,24(sp)
    8000174c:	00813823          	sd	s0,16(sp)
    80001750:	02010413          	addi	s0,sp,32
    debug_print("Syscall thread dispatch called\n");
    80001754:	00008517          	auipc	a0,0x8
    80001758:	98450513          	addi	a0,a0,-1660 # 800090d8 <CONSOLE_STATUS+0xc8>
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	72c080e7          	jalr	1836(ra) # 80001e88 <_Z11debug_printPKc>
    syscall(SyscallCode::THREAD_DISPATCH);
    80001764:	00013023          	sd	zero,0(sp)
    80001768:	00000893          	li	a7,0
    8000176c:	00000813          	li	a6,0
    80001770:	00000793          	li	a5,0
    80001774:	00000713          	li	a4,0
    80001778:	00000693          	li	a3,0
    8000177c:	00000613          	li	a2,0
    80001780:	00000593          	li	a1,0
    80001784:	01300513          	li	a0,19
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	d2c080e7          	jalr	-724(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001790:	01813083          	ld	ra,24(sp)
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	02010113          	addi	sp,sp,32
    8000179c:	00008067          	ret

00000000800017a0 <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init) {
    800017a0:	fd010113          	addi	sp,sp,-48
    800017a4:	02113423          	sd	ra,40(sp)
    800017a8:	02813023          	sd	s0,32(sp)
    800017ac:	00913c23          	sd	s1,24(sp)
    800017b0:	01213823          	sd	s2,16(sp)
    800017b4:	03010413          	addi	s0,sp,48
    800017b8:	00050493          	mv	s1,a0
    800017bc:	00058913          	mv	s2,a1
    debug_print("Syscall sem open called\n");
    800017c0:	00008517          	auipc	a0,0x8
    800017c4:	93850513          	addi	a0,a0,-1736 # 800090f8 <CONSOLE_STATUS+0xe8>
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	6c0080e7          	jalr	1728(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
    800017d0:	00013023          	sd	zero,0(sp)
    800017d4:	00000893          	li	a7,0
    800017d8:	00000813          	li	a6,0
    800017dc:	00000793          	li	a5,0
    800017e0:	00000713          	li	a4,0
    800017e4:	00000693          	li	a3,0
    800017e8:	02091613          	slli	a2,s2,0x20
    800017ec:	02065613          	srli	a2,a2,0x20
    800017f0:	00048593          	mv	a1,s1
    800017f4:	02100513          	li	a0,33
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	cbc080e7          	jalr	-836(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001800:	0005051b          	sext.w	a0,a0
    80001804:	02813083          	ld	ra,40(sp)
    80001808:	02013403          	ld	s0,32(sp)
    8000180c:	01813483          	ld	s1,24(sp)
    80001810:	01013903          	ld	s2,16(sp)
    80001814:	03010113          	addi	sp,sp,48
    80001818:	00008067          	ret

000000008000181c <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle) {
    8000181c:	fd010113          	addi	sp,sp,-48
    80001820:	02113423          	sd	ra,40(sp)
    80001824:	02813023          	sd	s0,32(sp)
    80001828:	00913c23          	sd	s1,24(sp)
    8000182c:	03010413          	addi	s0,sp,48
    80001830:	00050493          	mv	s1,a0
    debug_print("Syscall sem close called\n");
    80001834:	00008517          	auipc	a0,0x8
    80001838:	8e450513          	addi	a0,a0,-1820 # 80009118 <CONSOLE_STATUS+0x108>
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	64c080e7          	jalr	1612(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
    80001844:	00013023          	sd	zero,0(sp)
    80001848:	00000893          	li	a7,0
    8000184c:	00000813          	li	a6,0
    80001850:	00000793          	li	a5,0
    80001854:	00000713          	li	a4,0
    80001858:	00000693          	li	a3,0
    8000185c:	00000613          	li	a2,0
    80001860:	00048593          	mv	a1,s1
    80001864:	02200513          	li	a0,34
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	c4c080e7          	jalr	-948(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001870:	0005051b          	sext.w	a0,a0
    80001874:	02813083          	ld	ra,40(sp)
    80001878:	02013403          	ld	s0,32(sp)
    8000187c:	01813483          	ld	s1,24(sp)
    80001880:	03010113          	addi	sp,sp,48
    80001884:	00008067          	ret

0000000080001888 <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id) {
    80001888:	fd010113          	addi	sp,sp,-48
    8000188c:	02113423          	sd	ra,40(sp)
    80001890:	02813023          	sd	s0,32(sp)
    80001894:	00913c23          	sd	s1,24(sp)
    80001898:	03010413          	addi	s0,sp,48
    8000189c:	00050493          	mv	s1,a0
    debug_print("Syscall sem wait called\n");
    800018a0:	00008517          	auipc	a0,0x8
    800018a4:	89850513          	addi	a0,a0,-1896 # 80009138 <CONSOLE_STATUS+0x128>
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	5e0080e7          	jalr	1504(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
    800018b0:	00013023          	sd	zero,0(sp)
    800018b4:	00000893          	li	a7,0
    800018b8:	00000813          	li	a6,0
    800018bc:	00000793          	li	a5,0
    800018c0:	00000713          	li	a4,0
    800018c4:	00000693          	li	a3,0
    800018c8:	00000613          	li	a2,0
    800018cc:	00048593          	mv	a1,s1
    800018d0:	02300513          	li	a0,35
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	be0080e7          	jalr	-1056(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800018dc:	0005051b          	sext.w	a0,a0
    800018e0:	02813083          	ld	ra,40(sp)
    800018e4:	02013403          	ld	s0,32(sp)
    800018e8:	01813483          	ld	s1,24(sp)
    800018ec:	03010113          	addi	sp,sp,48
    800018f0:	00008067          	ret

00000000800018f4 <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id) {
    800018f4:	fd010113          	addi	sp,sp,-48
    800018f8:	02113423          	sd	ra,40(sp)
    800018fc:	02813023          	sd	s0,32(sp)
    80001900:	00913c23          	sd	s1,24(sp)
    80001904:	03010413          	addi	s0,sp,48
    80001908:	00050493          	mv	s1,a0
    debug_print("Syscall sem signal called\n");
    8000190c:	00008517          	auipc	a0,0x8
    80001910:	84c50513          	addi	a0,a0,-1972 # 80009158 <CONSOLE_STATUS+0x148>
    80001914:	00000097          	auipc	ra,0x0
    80001918:	574080e7          	jalr	1396(ra) # 80001e88 <_Z11debug_printPKc>
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
    8000191c:	00013023          	sd	zero,0(sp)
    80001920:	00000893          	li	a7,0
    80001924:	00000813          	li	a6,0
    80001928:	00000793          	li	a5,0
    8000192c:	00000713          	li	a4,0
    80001930:	00000693          	li	a3,0
    80001934:	00000613          	li	a2,0
    80001938:	00048593          	mv	a1,s1
    8000193c:	02400513          	li	a0,36
    80001940:	00000097          	auipc	ra,0x0
    80001944:	b74080e7          	jalr	-1164(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001948:	0005051b          	sext.w	a0,a0
    8000194c:	02813083          	ld	ra,40(sp)
    80001950:	02013403          	ld	s0,32(sp)
    80001954:	01813483          	ld	s1,24(sp)
    80001958:	03010113          	addi	sp,sp,48
    8000195c:	00008067          	ret

0000000080001960 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00813423          	sd	s0,8(sp)
    80001968:	01010413          	addi	s0,sp,16
    return 0;
}
    8000196c:	00000513          	li	a0,0
    80001970:	00813403          	ld	s0,8(sp)
    80001974:	01010113          	addi	sp,sp,16
    80001978:	00008067          	ret

000000008000197c <_Z4getcv>:

char getc () {
    8000197c:	fe010113          	addi	sp,sp,-32
    80001980:	00113c23          	sd	ra,24(sp)
    80001984:	00813823          	sd	s0,16(sp)
    80001988:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::GETC);
    8000198c:	00013023          	sd	zero,0(sp)
    80001990:	00000893          	li	a7,0
    80001994:	00000813          	li	a6,0
    80001998:	00000793          	li	a5,0
    8000199c:	00000713          	li	a4,0
    800019a0:	00000693          	li	a3,0
    800019a4:	00000613          	li	a2,0
    800019a8:	00000593          	li	a1,0
    800019ac:	04100513          	li	a0,65
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	b04080e7          	jalr	-1276(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800019b8:	0ff57513          	andi	a0,a0,255
    800019bc:	01813083          	ld	ra,24(sp)
    800019c0:	01013403          	ld	s0,16(sp)
    800019c4:	02010113          	addi	sp,sp,32
    800019c8:	00008067          	ret

00000000800019cc <_Z4putcc>:

void putc (char c) {
    800019cc:	fe010113          	addi	sp,sp,-32
    800019d0:	00113c23          	sd	ra,24(sp)
    800019d4:	00813823          	sd	s0,16(sp)
    800019d8:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::PUTC, (uint64)c);
    800019dc:	00013023          	sd	zero,0(sp)
    800019e0:	00000893          	li	a7,0
    800019e4:	00000813          	li	a6,0
    800019e8:	00000793          	li	a5,0
    800019ec:	00000713          	li	a4,0
    800019f0:	00000693          	li	a3,0
    800019f4:	00000613          	li	a2,0
    800019f8:	00050593          	mv	a1,a0
    800019fc:	04200513          	li	a0,66
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	ab4080e7          	jalr	-1356(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
    80001a08:	01813083          	ld	ra,24(sp)
    80001a0c:	01013403          	ld	s0,16(sp)
    80001a10:	02010113          	addi	sp,sp,32
    80001a14:	00008067          	ret

0000000080001a18 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00813423          	sd	s0,8(sp)
    80001a20:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001a24:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001a28:	10200073          	sret
}
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001a38:	f9010113          	addi	sp,sp,-112
    80001a3c:	06113423          	sd	ra,104(sp)
    80001a40:	06813023          	sd	s0,96(sp)
    80001a44:	04913c23          	sd	s1,88(sp)
    80001a48:	07010413          	addi	s0,sp,112
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a4c:	142027f3          	csrr	a5,scause
    80001a50:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001a54:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001a58:	ff870693          	addi	a3,a4,-8
    80001a5c:	00100793          	li	a5,1
    80001a60:	02d7f863          	bgeu	a5,a3,80001a90 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001a64:	fff00793          	li	a5,-1
    80001a68:	03f79793          	slli	a5,a5,0x3f
    80001a6c:	00178793          	addi	a5,a5,1
    80001a70:	22f70a63          	beq	a4,a5,80001ca4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001a74:	fff00793          	li	a5,-1
    80001a78:	03f79793          	slli	a5,a5,0x3f
    80001a7c:	00978793          	addi	a5,a5,9
    80001a80:	0af71263          	bne	a4,a5,80001b24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    {
        // debug_print("Console handler called\n");
        console_handler();
    80001a84:	00006097          	auipc	ra,0x6
    80001a88:	7ec080e7          	jalr	2028(ra) # 80008270 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001a8c:	0980006f          	j	80001b24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a90:	141027f3          	csrr	a5,sepc
    80001a94:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001a98:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001a9c:	00478793          	addi	a5,a5,4
    80001aa0:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001aa4:	100027f3          	csrr	a5,sstatus
    80001aa8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001aac:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001ab0:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001ab4:	00050793          	mv	a5,a0
        __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001ab8:	00058493          	mv	s1,a1
        __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001abc:	00060513          	mv	a0,a2
        __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001ac0:	00068593          	mv	a1,a3
        __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001ac4:	00070713          	mv	a4,a4
        __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001ac8:	00078713          	mv	a4,a5
        __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001acc:	00080713          	mv	a4,a6
        __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001ad0:	00088713          	mv	a4,a7
        switch (a0) {
    80001ad4:	04200713          	li	a4,66
    80001ad8:	1af76663          	bltu	a4,a5,80001c84 <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
    80001adc:	00279793          	slli	a5,a5,0x2
    80001ae0:	00007717          	auipc	a4,0x7
    80001ae4:	69470713          	addi	a4,a4,1684 # 80009174 <CONSOLE_STATUS+0x164>
    80001ae8:	00e787b3          	add	a5,a5,a4
    80001aec:	0007a783          	lw	a5,0(a5)
    80001af0:	00e787b3          	add	a5,a5,a4
    80001af4:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	8bc080e7          	jalr	-1860(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001b00:	00048593          	mv	a1,s1
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	a14080e7          	jalr	-1516(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001b0c:	00050513          	mv	a0,a0
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    80001b10:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001b14:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b18:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001b1c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b20:	14179073          	csrw	sepc,a5
    80001b24:	06813083          	ld	ra,104(sp)
    80001b28:	06013403          	ld	s0,96(sp)
    80001b2c:	05813483          	ld	s1,88(sp)
    80001b30:	07010113          	addi	sp,sp,112
    80001b34:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	87c080e7          	jalr	-1924(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001b40:	00048593          	mv	a1,s1
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	b54080e7          	jalr	-1196(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001b4c:	fc1ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	864080e7          	jalr	-1948(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	a94080e7          	jalr	-1388(ra) # 800025ec <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    80001b60:	00000513          	li	a0,0
                break;
    80001b64:	fa9ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80001b68:	00001097          	auipc	ra,0x1
    80001b6c:	84c080e7          	jalr	-1972(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	a48080e7          	jalr	-1464(ra) # 800025b8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001b78:	00000513          	li	a0,0
                break;
    80001b7c:	f91ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	624080e7          	jalr	1572(ra) # 800021a4 <_ZN3TCB12createThreadEPFvPvES0_>
    80001b88:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001b8c:	10050063          	beqz	a0,80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x254>
        uint64 res = 0;
    80001b90:	00000513          	li	a0,0
    80001b94:	f79ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::exit();
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	794080e7          	jalr	1940(ra) # 8000232c <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    80001ba0:	0004b783          	ld	a5,0(s1)
    80001ba4:	0000a717          	auipc	a4,0xa
    80001ba8:	ea470713          	addi	a4,a4,-348 # 8000ba48 <_ZN3TCB7runningE>
    80001bac:	00073503          	ld	a0,0(a4)
    80001bb0:	40f50533          	sub	a0,a0,a5
    80001bb4:	00007597          	auipc	a1,0x7
    80001bb8:	6cc58593          	addi	a1,a1,1740 # 80009280 <CONSOLE_STATUS+0x270>
    80001bbc:	00153513          	seqz	a0,a0
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	2f0080e7          	jalr	752(ra) # 80001eb0 <_Z6assertbPKc>
                delete *handle;
    80001bc8:	0004b483          	ld	s1,0(s1)
    80001bcc:	0c048463          	beqz	s1,80001c94 <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
    ~TCB() { delete[] stack; }
    80001bd0:	0104b503          	ld	a0,16(s1)
    80001bd4:	00050663          	beqz	a0,80001be0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	200080e7          	jalr	512(ra) # 80001dd8 <_ZdaPv>
    80001be0:	00048513          	mv	a0,s1
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	1b4080e7          	jalr	436(ra) # 80001d98 <_ZdlPv>
        uint64 res = 0;
    80001bec:	00000513          	li	a0,0
    80001bf0:	f1dff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::dispatch();
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	69c080e7          	jalr	1692(ra) # 80002290 <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001bfc:	00000513          	li	a0,0
                break;
    80001c00:	f0dff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                *handle = (sem_t)_semaphore::open(a2);
    80001c04:	0005051b          	sext.w	a0,a0
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	858080e7          	jalr	-1960(ra) # 80001460 <_ZN10_semaphore4openEj>
    80001c10:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001c14:	08050463          	beqz	a0,80001c9c <_ZN5Riscv20handleSupervisorTrapEv+0x264>
        uint64 res = 0;
    80001c18:	00000513          	li	a0,0
    80001c1c:	ef1ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                (*handle)->close();
    80001c20:	0004b503          	ld	a0,0(s1)
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	670080e7          	jalr	1648(ra) # 80001294 <_ZN10_semaphore5closeEv>
                delete *handle;
    80001c2c:	0004b503          	ld	a0,0(s1)
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	168080e7          	jalr	360(ra) # 80001d98 <_ZdlPv>
        uint64 res = 0;
    80001c38:	00000513          	li	a0,0
                break;
    80001c3c:	ed1ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                res = (*handle)->wait();
    80001c40:	0004b503          	ld	a0,0(s1)
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	6cc080e7          	jalr	1740(ra) # 80001310 <_ZN10_semaphore4waitEv>
                break;
    80001c4c:	ec1ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                (*handle)->signal();
    80001c50:	0004b503          	ld	a0,0(s1)
    80001c54:	fffff097          	auipc	ra,0xfffff
    80001c58:	768080e7          	jalr	1896(ra) # 800013bc <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80001c5c:	00000513          	li	a0,0
                break;
    80001c60:	eadff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                res = __getc();
    80001c64:	00006097          	auipc	ra,0x6
    80001c68:	5d4080e7          	jalr	1492(ra) # 80008238 <__getc>
                break;
    80001c6c:	ea1ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                __putc((char)a1);
    80001c70:	0ff4f513          	andi	a0,s1,255
    80001c74:	00006097          	auipc	ra,0x6
    80001c78:	588080e7          	jalr	1416(ra) # 800081fc <__putc>
        uint64 res = 0;
    80001c7c:	00000513          	li	a0,0
                break;
    80001c80:	e8dff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        uint64 res = 0;
    80001c84:	00000513          	li	a0,0
    80001c88:	e85ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    res = -1;
    80001c8c:	fff00513          	li	a0,-1
    80001c90:	e7dff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        uint64 res = 0;
    80001c94:	00000513          	li	a0,0
    80001c98:	e75ff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    res = -1;
    80001c9c:	fff00513          	li	a0,-1
    80001ca0:	e6dff06f          	j	80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001ca4:	00200793          	li	a5,2
    80001ca8:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001cac:	0000a717          	auipc	a4,0xa
    80001cb0:	d9470713          	addi	a4,a4,-620 # 8000ba40 <_ZN3TCB16timeSliceCounterE>
    80001cb4:	00073783          	ld	a5,0(a4)
    80001cb8:	00178793          	addi	a5,a5,1
    80001cbc:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001cc0:	0000a717          	auipc	a4,0xa
    80001cc4:	d8870713          	addi	a4,a4,-632 # 8000ba48 <_ZN3TCB7runningE>
    80001cc8:	00073703          	ld	a4,0(a4)

    bool isBlocked() { return blocked_; }

    uint64 getTimeSlice() const { return timeSlice; }
    80001ccc:	02873703          	ld	a4,40(a4)
    80001cd0:	e4e7eae3          	bltu	a5,a4,80001b24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cd4:	141027f3          	csrr	a5,sepc
    80001cd8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001cdc:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001ce0:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ce4:	100027f3          	csrr	a5,sstatus
    80001ce8:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001cec:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001cf0:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80001cf4:	0000a797          	auipc	a5,0xa
    80001cf8:	d407b623          	sd	zero,-692(a5) # 8000ba40 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	594080e7          	jalr	1428(ra) # 80002290 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001d04:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d08:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001d0c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d10:	14179073          	csrw	sepc,a5
    80001d14:	e11ff06f          	j	80001b24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>

0000000080001d18 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001d18:	fe010113          	addi	sp,sp,-32
    80001d1c:	00113c23          	sd	ra,24(sp)
    80001d20:	00813823          	sd	s0,16(sp)
    80001d24:	00913423          	sd	s1,8(sp)
    80001d28:	02010413          	addi	s0,sp,32
    80001d2c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	684080e7          	jalr	1668(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001d38:	00048593          	mv	a1,s1
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	7dc080e7          	jalr	2012(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d44:	01813083          	ld	ra,24(sp)
    80001d48:	01013403          	ld	s0,16(sp)
    80001d4c:	00813483          	ld	s1,8(sp)
    80001d50:	02010113          	addi	sp,sp,32
    80001d54:	00008067          	ret

0000000080001d58 <_Znam>:

void *operator new[](size_t n)
{
    80001d58:	fe010113          	addi	sp,sp,-32
    80001d5c:	00113c23          	sd	ra,24(sp)
    80001d60:	00813823          	sd	s0,16(sp)
    80001d64:	00913423          	sd	s1,8(sp)
    80001d68:	02010413          	addi	s0,sp,32
    80001d6c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	644080e7          	jalr	1604(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001d78:	00048593          	mv	a1,s1
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	79c080e7          	jalr	1948(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d84:	01813083          	ld	ra,24(sp)
    80001d88:	01013403          	ld	s0,16(sp)
    80001d8c:	00813483          	ld	s1,8(sp)
    80001d90:	02010113          	addi	sp,sp,32
    80001d94:	00008067          	ret

0000000080001d98 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001d98:	fe010113          	addi	sp,sp,-32
    80001d9c:	00113c23          	sd	ra,24(sp)
    80001da0:	00813823          	sd	s0,16(sp)
    80001da4:	00913423          	sd	s1,8(sp)
    80001da8:	02010413          	addi	s0,sp,32
    80001dac:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	604080e7          	jalr	1540(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001db8:	00048593          	mv	a1,s1
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	8dc080e7          	jalr	-1828(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001dc4:	01813083          	ld	ra,24(sp)
    80001dc8:	01013403          	ld	s0,16(sp)
    80001dcc:	00813483          	ld	s1,8(sp)
    80001dd0:	02010113          	addi	sp,sp,32
    80001dd4:	00008067          	ret

0000000080001dd8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001dd8:	fe010113          	addi	sp,sp,-32
    80001ddc:	00113c23          	sd	ra,24(sp)
    80001de0:	00813823          	sd	s0,16(sp)
    80001de4:	00913423          	sd	s1,8(sp)
    80001de8:	02010413          	addi	s0,sp,32
    80001dec:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	5c4080e7          	jalr	1476(ra) # 800023b4 <_ZN15MemoryAllocator11getInstanceEv>
    80001df8:	00048593          	mv	a1,s1
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	89c080e7          	jalr	-1892(ra) # 80002698 <_ZN15MemoryAllocator8mem_freeEPv>
    80001e04:	01813083          	ld	ra,24(sp)
    80001e08:	01013403          	ld	s0,16(sp)
    80001e0c:	00813483          	ld	s1,8(sp)
    80001e10:	02010113          	addi	sp,sp,32
    80001e14:	00008067          	ret

0000000080001e18 <_Z27debug_print_internal_stringPKc>:
        debug_print("\n");
    }
}

void debug_print_internal_string(char const *string)
{
    80001e18:	fd010113          	addi	sp,sp,-48
    80001e1c:	02113423          	sd	ra,40(sp)
    80001e20:	02813023          	sd	s0,32(sp)
    80001e24:	00913c23          	sd	s1,24(sp)
    80001e28:	01213823          	sd	s2,16(sp)
    80001e2c:	03010413          	addi	s0,sp,48
    80001e30:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e34:	100027f3          	csrr	a5,sstatus
    80001e38:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e3c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e40:	00200793          	li	a5,2
    80001e44:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001e48:	0004c503          	lbu	a0,0(s1)
    80001e4c:	00050a63          	beqz	a0,80001e60 <_Z27debug_print_internal_stringPKc+0x48>
    {
        __putc(*string);
    80001e50:	00006097          	auipc	ra,0x6
    80001e54:	3ac080e7          	jalr	940(ra) # 800081fc <__putc>
        string++;
    80001e58:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e5c:	fedff06f          	j	80001e48 <_Z27debug_print_internal_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e60:	0009091b          	sext.w	s2,s2
    80001e64:	00297913          	andi	s2,s2,2
    80001e68:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e6c:	10092073          	csrs	sstatus,s2
}
    80001e70:	02813083          	ld	ra,40(sp)
    80001e74:	02013403          	ld	s0,32(sp)
    80001e78:	01813483          	ld	s1,24(sp)
    80001e7c:	01013903          	ld	s2,16(sp)
    80001e80:	03010113          	addi	sp,sp,48
    80001e84:	00008067          	ret

0000000080001e88 <_Z11debug_printPKc>:
void debug_print(char const *string) {
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00113423          	sd	ra,8(sp)
    80001e90:	00813023          	sd	s0,0(sp)
    80001e94:	01010413          	addi	s0,sp,16
    debug_print_internal_string(string);
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	f80080e7          	jalr	-128(ra) # 80001e18 <_Z27debug_print_internal_stringPKc>
}
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_Z6assertbPKc>:
    if (!condition) {
    80001eb0:	00050463          	beqz	a0,80001eb8 <_Z6assertbPKc+0x8>
    80001eb4:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80001eb8:	fe010113          	addi	sp,sp,-32
    80001ebc:	00113c23          	sd	ra,24(sp)
    80001ec0:	00813823          	sd	s0,16(sp)
    80001ec4:	00913423          	sd	s1,8(sp)
    80001ec8:	02010413          	addi	s0,sp,32
    80001ecc:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80001ed0:	00007517          	auipc	a0,0x7
    80001ed4:	3f850513          	addi	a0,a0,1016 # 800092c8 <_ZZ24debug_print_internal_intmE6digits+0x10>
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	fb0080e7          	jalr	-80(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print(debug_message);
    80001ee0:	00048513          	mv	a0,s1
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	fa4080e7          	jalr	-92(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print("\n");
    80001eec:	00007517          	auipc	a0,0x7
    80001ef0:	47450513          	addi	a0,a0,1140 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	f94080e7          	jalr	-108(ra) # 80001e88 <_Z11debug_printPKc>
}
    80001efc:	01813083          	ld	ra,24(sp)
    80001f00:	01013403          	ld	s0,16(sp)
    80001f04:	00813483          	ld	s1,8(sp)
    80001f08:	02010113          	addi	sp,sp,32
    80001f0c:	00008067          	ret

0000000080001f10 <_Z24debug_print_internal_intm>:

void debug_print_internal_int(uint64 integer)
{
    80001f10:	fc010113          	addi	sp,sp,-64
    80001f14:	02113c23          	sd	ra,56(sp)
    80001f18:	02813823          	sd	s0,48(sp)
    80001f1c:	02913423          	sd	s1,40(sp)
    80001f20:	03213023          	sd	s2,32(sp)
    80001f24:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f28:	100027f3          	csrr	a5,sstatus
    80001f2c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001f30:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f34:	00200793          	li	a5,2
    80001f38:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f3c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001f40:	00000713          	li	a4,0
    80001f44:	0080006f          	j	80001f4c <_Z24debug_print_internal_intm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80001f48:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    80001f4c:	00a00793          	li	a5,10
    80001f50:	02f5763b          	remuw	a2,a0,a5
    80001f54:	0017049b          	addiw	s1,a4,1
    80001f58:	00007697          	auipc	a3,0x7
    80001f5c:	36068693          	addi	a3,a3,864 # 800092b8 <_ZZ24debug_print_internal_intmE6digits>
    80001f60:	00c686b3          	add	a3,a3,a2
    80001f64:	0006c683          	lbu	a3,0(a3)
    80001f68:	fe040613          	addi	a2,s0,-32
    80001f6c:	00e60733          	add	a4,a2,a4
    80001f70:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    80001f74:	02f557bb          	divuw	a5,a0,a5
    80001f78:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    80001f7c:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80001f80:	00900793          	li	a5,9
    80001f84:	fca7e2e3          	bltu	a5,a0,80001f48 <_Z24debug_print_internal_intm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001f88:	fff4849b          	addiw	s1,s1,-1
    80001f8c:	0004ce63          	bltz	s1,80001fa8 <_Z24debug_print_internal_intm+0x98>
    80001f90:	fe040793          	addi	a5,s0,-32
    80001f94:	009787b3          	add	a5,a5,s1
    80001f98:	ff07c503          	lbu	a0,-16(a5)
    80001f9c:	00006097          	auipc	ra,0x6
    80001fa0:	260080e7          	jalr	608(ra) # 800081fc <__putc>
    80001fa4:	fe5ff06f          	j	80001f88 <_Z24debug_print_internal_intm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001fa8:	0009091b          	sext.w	s2,s2
    80001fac:	00297913          	andi	s2,s2,2
    80001fb0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fb4:	10092073          	csrs	sstatus,s2
    80001fb8:	03813083          	ld	ra,56(sp)
    80001fbc:	03013403          	ld	s0,48(sp)
    80001fc0:	02813483          	ld	s1,40(sp)
    80001fc4:	02013903          	ld	s2,32(sp)
    80001fc8:	04010113          	addi	sp,sp,64
    80001fcc:	00008067          	ret

0000000080001fd0 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    debug_print_internal_int(integer);
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	f30080e7          	jalr	-208(ra) # 80001f10 <_Z24debug_print_internal_intm>
}
    80001fe8:	00813083          	ld	ra,8(sp)
    80001fec:	00013403          	ld	s0,0(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"

void userMain();

void userMainWrapper(void* arg)
{
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00113423          	sd	ra,8(sp)
    80002000:	00813023          	sd	s0,0(sp)
    80002004:	01010413          	addi	s0,sp,16
    debug_print("Starting userMain\n");
    80002008:	00007517          	auipc	a0,0x7
    8000200c:	2d850513          	addi	a0,a0,728 # 800092e0 <_ZZ24debug_print_internal_intmE6digits+0x28>
    80002010:	00000097          	auipc	ra,0x0
    80002014:	e78080e7          	jalr	-392(ra) # 80001e88 <_Z11debug_printPKc>
    userMain();
    80002018:	00002097          	auipc	ra,0x2
    8000201c:	9d8080e7          	jalr	-1576(ra) # 800039f0 <_Z8userMainv>
}
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <main>:

int main()
{
    80002030:	fe010113          	addi	sp,sp,-32
    80002034:	00113c23          	sd	ra,24(sp)
    80002038:	00813823          	sd	s0,16(sp)
    8000203c:	00913423          	sd	s1,8(sp)
    80002040:	01213023          	sd	s2,0(sp)
    80002044:	02010413          	addi	s0,sp,32
    thread_t main_handle;
    thread_t userMain_handle;

    // We create threads directly through TCB because we do not yet have
    // interrupts enabled.
    debug_print("Creating main thread\n");
    80002048:	00007517          	auipc	a0,0x7
    8000204c:	2b050513          	addi	a0,a0,688 # 800092f8 <_ZZ24debug_print_internal_intmE6digits+0x40>
    80002050:	00000097          	auipc	ra,0x0
    80002054:	e38080e7          	jalr	-456(ra) # 80001e88 <_Z11debug_printPKc>
    main_handle = TCB::createThread(nullptr, nullptr);
    80002058:	00000593          	li	a1,0
    8000205c:	00000513          	li	a0,0
    80002060:	00000097          	auipc	ra,0x0
    80002064:	144080e7          	jalr	324(ra) # 800021a4 <_ZN3TCB12createThreadEPFvPvES0_>
    80002068:	00050913          	mv	s2,a0
    debug_print("Main thread handle: \n");
    8000206c:	00007517          	auipc	a0,0x7
    80002070:	2a450513          	addi	a0,a0,676 # 80009310 <_ZZ24debug_print_internal_intmE6digits+0x58>
    80002074:	00000097          	auipc	ra,0x0
    80002078:	e14080e7          	jalr	-492(ra) # 80001e88 <_Z11debug_printPKc>
    debug_print((uint64)main_handle);
    8000207c:	00090513          	mv	a0,s2
    80002080:	00000097          	auipc	ra,0x0
    80002084:	f50080e7          	jalr	-176(ra) # 80001fd0 <_Z11debug_printm>
    debug_print("\n");
    80002088:	00007517          	auipc	a0,0x7
    8000208c:	2d850513          	addi	a0,a0,728 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002090:	00000097          	auipc	ra,0x0
    80002094:	df8080e7          	jalr	-520(ra) # 80001e88 <_Z11debug_printPKc>

    debug_print("Creating userMain thread\n");
    80002098:	00007517          	auipc	a0,0x7
    8000209c:	29050513          	addi	a0,a0,656 # 80009328 <_ZZ24debug_print_internal_intmE6digits+0x70>
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	de8080e7          	jalr	-536(ra) # 80001e88 <_Z11debug_printPKc>
    userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    800020a8:	00000593          	li	a1,0
    800020ac:	00000517          	auipc	a0,0x0
    800020b0:	f4c50513          	addi	a0,a0,-180 # 80001ff8 <_Z15userMainWrapperPv>
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	0f0080e7          	jalr	240(ra) # 800021a4 <_ZN3TCB12createThreadEPFvPvES0_>
    800020bc:	00050493          	mv	s1,a0
    debug_print("UserMain thread handle: \n");
    800020c0:	00007517          	auipc	a0,0x7
    800020c4:	28850513          	addi	a0,a0,648 # 80009348 <_ZZ24debug_print_internal_intmE6digits+0x90>
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	dc0080e7          	jalr	-576(ra) # 80001e88 <_Z11debug_printPKc>
    debug_print((uint64)userMain_handle);
    800020d0:	00048513          	mv	a0,s1
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	efc080e7          	jalr	-260(ra) # 80001fd0 <_Z11debug_printm>
    debug_print("\n");
    800020dc:	00007517          	auipc	a0,0x7
    800020e0:	28450513          	addi	a0,a0,644 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	da4080e7          	jalr	-604(ra) # 80001e88 <_Z11debug_printPKc>

    debug_print("Setting running to main thread\n");
    800020ec:	00007517          	auipc	a0,0x7
    800020f0:	27c50513          	addi	a0,a0,636 # 80009368 <_ZZ24debug_print_internal_intmE6digits+0xb0>
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	d94080e7          	jalr	-620(ra) # 80001e88 <_Z11debug_printPKc>
    TCB::running = main_handle;
    800020fc:	0000a797          	auipc	a5,0xa
    80002100:	9527b623          	sd	s2,-1716(a5) # 8000ba48 <_ZN3TCB7runningE>

    debug_print("Setting supervisor trap and enabling interrupts\n");
    80002104:	00007517          	auipc	a0,0x7
    80002108:	28450513          	addi	a0,a0,644 # 80009388 <_ZZ24debug_print_internal_intmE6digits+0xd0>
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	d7c080e7          	jalr	-644(ra) # 80001e88 <_Z11debug_printPKc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002114:	fffff797          	auipc	a5,0xfffff
    80002118:	eec78793          	addi	a5,a5,-276 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000211c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002120:	00200793          	li	a5,2
    80002124:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished_; }
    80002128:	0304c783          	lbu	a5,48(s1)
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!userMain_handle->isFinished()) {
    8000212c:	fe078ee3          	beqz	a5,80002128 <main+0xf8>
        // TCB::yield(); // This causes a lock???
    }

    debug_print("Finished\n");
    80002130:	00007517          	auipc	a0,0x7
    80002134:	29050513          	addi	a0,a0,656 # 800093c0 <_ZZ24debug_print_internal_intmE6digits+0x108>
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	d50080e7          	jalr	-688(ra) # 80001e88 <_Z11debug_printPKc>

    return 0;
}
    80002140:	00000513          	li	a0,0
    80002144:	01813083          	ld	ra,24(sp)
    80002148:	01013403          	ld	s0,16(sp)
    8000214c:	00813483          	ld	s1,8(sp)
    80002150:	00013903          	ld	s2,0(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret

000000008000215c <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	8ac080e7          	jalr	-1876(ra) # 80001a18 <_ZN5Riscv10popSppSpieEv>
    // debug_print((uint64)running->body);
    // debug_print(" for thread: ");
    // debug_print((uint64)running);
    // debug_print("\n");
    
    running->body(running->arg_);
    80002174:	0000a797          	auipc	a5,0xa
    80002178:	8d478793          	addi	a5,a5,-1836 # 8000ba48 <_ZN3TCB7runningE>
    8000217c:	0007b783          	ld	a5,0(a5)
    80002180:	0007b703          	ld	a4,0(a5)
    80002184:	0087b503          	ld	a0,8(a5)
    80002188:	000700e7          	jalr	a4
    thread_exit();
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	558080e7          	jalr	1368(ra) # 800016e4 <_Z11thread_exitv>
}
    80002194:	00813083          	ld	ra,8(sp)
    80002198:	00013403          	ld	s0,0(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret

00000000800021a4 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    800021a4:	fd010113          	addi	sp,sp,-48
    800021a8:	02113423          	sd	ra,40(sp)
    800021ac:	02813023          	sd	s0,32(sp)
    800021b0:	00913c23          	sd	s1,24(sp)
    800021b4:	01213823          	sd	s2,16(sp)
    800021b8:	01313423          	sd	s3,8(sp)
    800021bc:	03010413          	addi	s0,sp,48
    800021c0:	00050913          	mv	s2,a0
    800021c4:	00058993          	mv	s3,a1
    debug_print("TCB: Creating TCB\n");
    800021c8:	00007517          	auipc	a0,0x7
    800021cc:	20850513          	addi	a0,a0,520 # 800093d0 <_ZZ24debug_print_internal_intmE6digits+0x118>
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	cb8080e7          	jalr	-840(ra) # 80001e88 <_Z11debug_printPKc>
    return new TCB(body, arg, TIME_SLICE);
    800021d8:	03800513          	li	a0,56
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	b3c080e7          	jalr	-1220(ra) # 80001d18 <_Znwm>
    800021e4:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished_(false),
            blocked_(false)
    800021e8:	01253023          	sd	s2,0(a0)
    800021ec:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800021f0:	00090a63          	beqz	s2,80002204 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    800021f4:	00002537          	lui	a0,0x2
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	b60080e7          	jalr	-1184(ra) # 80001d58 <_Znam>
    80002200:	0080006f          	j	80002208 <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    80002204:	00000513          	li	a0,0
            blocked_(false)
    80002208:	00a4b823          	sd	a0,16(s1)
    8000220c:	00000797          	auipc	a5,0x0
    80002210:	f5078793          	addi	a5,a5,-176 # 8000215c <_ZN3TCB13threadWrapperEv>
    80002214:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002218:	02050a63          	beqz	a0,8000224c <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
    8000221c:	000027b7          	lui	a5,0x2
    80002220:	00f50533          	add	a0,a0,a5
            blocked_(false)
    80002224:	02a4b023          	sd	a0,32(s1)
    80002228:	00200793          	li	a5,2
    8000222c:	02f4b423          	sd	a5,40(s1)
    80002230:	02048823          	sb	zero,48(s1)
    80002234:	020488a3          	sb	zero,49(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80002238:	02090c63          	beqz	s2,80002270 <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
    8000223c:	00048513          	mv	a0,s1
    80002240:	fffff097          	auipc	ra,0xfffff
    80002244:	fb0080e7          	jalr	-80(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    80002248:	0280006f          	j	80002270 <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000224c:	00000513          	li	a0,0
    80002250:	fd5ff06f          	j	80002224 <_ZN3TCB12createThreadEPFvPvES0_+0x80>
    80002254:	00050913          	mv	s2,a0
    80002258:	00048513          	mv	a0,s1
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	b3c080e7          	jalr	-1220(ra) # 80001d98 <_ZdlPv>
    80002264:	00090513          	mv	a0,s2
    80002268:	0000b097          	auipc	ra,0xb
    8000226c:	940080e7          	jalr	-1728(ra) # 8000cba8 <_Unwind_Resume>
}
    80002270:	00048513          	mv	a0,s1
    80002274:	02813083          	ld	ra,40(sp)
    80002278:	02013403          	ld	s0,32(sp)
    8000227c:	01813483          	ld	s1,24(sp)
    80002280:	01013903          	ld	s2,16(sp)
    80002284:	00813983          	ld	s3,8(sp)
    80002288:	03010113          	addi	sp,sp,48
    8000228c:	00008067          	ret

0000000080002290 <_ZN3TCB8dispatchEv>:
{
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00113c23          	sd	ra,24(sp)
    80002298:	00813823          	sd	s0,16(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800022a4:	00009797          	auipc	a5,0x9
    800022a8:	7a478793          	addi	a5,a5,1956 # 8000ba48 <_ZN3TCB7runningE>
    800022ac:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    800022b0:	0314c783          	lbu	a5,49(s1)
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    800022b4:	00079663          	bnez	a5,800022c0 <_ZN3TCB8dispatchEv+0x30>
    bool isFinished() const { return finished_; }
    800022b8:	0304c783          	lbu	a5,48(s1)
    800022bc:	02078c63          	beqz	a5,800022f4 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	ec4080e7          	jalr	-316(ra) # 80001184 <_ZN9Scheduler3getEv>
    800022c8:	00009797          	auipc	a5,0x9
    800022cc:	78a7b023          	sd	a0,1920(a5) # 8000ba48 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800022d0:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    800022d4:	01848513          	addi	a0,s1,24
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	e38080e7          	jalr	-456(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800022e0:	01813083          	ld	ra,24(sp)
    800022e4:	01013403          	ld	s0,16(sp)
    800022e8:	00813483          	ld	s1,8(sp)
    800022ec:	02010113          	addi	sp,sp,32
    800022f0:	00008067          	ret
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    800022f4:	00048513          	mv	a0,s1
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	ef8080e7          	jalr	-264(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    80002300:	fc1ff06f          	j	800022c0 <_ZN3TCB8dispatchEv+0x30>

0000000080002304 <_ZN3TCB5yieldEv>:
{
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00113423          	sd	ra,8(sp)
    8000230c:	00813023          	sd	s0,0(sp)
    80002310:	01010413          	addi	s0,sp,16
    dispatch();
    80002314:	00000097          	auipc	ra,0x0
    80002318:	f7c080e7          	jalr	-132(ra) # 80002290 <_ZN3TCB8dispatchEv>
}
    8000231c:	00813083          	ld	ra,8(sp)
    80002320:	00013403          	ld	s0,0(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <_ZN3TCB4exitEv>:

void TCB::exit() {
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	01213023          	sd	s2,0(sp)
    80002340:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    80002344:	00007517          	auipc	a0,0x7
    80002348:	0a450513          	addi	a0,a0,164 # 800093e8 <_ZZ24debug_print_internal_intmE6digits+0x130>
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	b3c080e7          	jalr	-1220(ra) # 80001e88 <_Z11debug_printPKc>
    TCB *old = running;
    80002354:	00009497          	auipc	s1,0x9
    80002358:	6f448493          	addi	s1,s1,1780 # 8000ba48 <_ZN3TCB7runningE>
    8000235c:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    80002360:	00100793          	li	a5,1
    80002364:	02f90823          	sb	a5,48(s2)
    old->setFinished(true);
    running = Scheduler::get();
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	e1c080e7          	jalr	-484(ra) # 80001184 <_ZN9Scheduler3getEv>
    80002370:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    80002374:	00007597          	auipc	a1,0x7
    80002378:	08c58593          	addi	a1,a1,140 # 80009400 <_ZZ24debug_print_internal_intmE6digits+0x148>
    8000237c:	00a03533          	snez	a0,a0
    80002380:	00000097          	auipc	ra,0x0
    80002384:	b30080e7          	jalr	-1232(ra) # 80001eb0 <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    80002388:	0004b583          	ld	a1,0(s1)
    8000238c:	01858593          	addi	a1,a1,24
    80002390:	01890513          	addi	a0,s2,24
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	d7c080e7          	jalr	-644(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    8000239c:	01813083          	ld	ra,24(sp)
    800023a0:	01013403          	ld	s0,16(sp)
    800023a4:	00813483          	ld	s1,8(sp)
    800023a8:	00013903          	ld	s2,0(sp)
    800023ac:	02010113          	addi	sp,sp,32
    800023b0:	00008067          	ret

00000000800023b4 <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    800023b4:	00009797          	auipc	a5,0x9
    800023b8:	69c78793          	addi	a5,a5,1692 # 8000ba50 <_ZN15MemoryAllocator9instance_E>
    800023bc:	0007b783          	ld	a5,0(a5)
    800023c0:	00078a63          	beqz	a5,800023d4 <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    800023c4:	00009797          	auipc	a5,0x9
    800023c8:	68c78793          	addi	a5,a5,1676 # 8000ba50 <_ZN15MemoryAllocator9instance_E>
    800023cc:	0007b503          	ld	a0,0(a5)
    800023d0:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    800023d4:	fd010113          	addi	sp,sp,-48
    800023d8:	02113423          	sd	ra,40(sp)
    800023dc:	02813023          	sd	s0,32(sp)
    800023e0:	00913c23          	sd	s1,24(sp)
    800023e4:	01213823          	sd	s2,16(sp)
    800023e8:	01313423          	sd	s3,8(sp)
    800023ec:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    800023f0:	00009997          	auipc	s3,0x9
    800023f4:	43098993          	addi	s3,s3,1072 # 8000b820 <HEAP_START_ADDR>
    800023f8:	0009b783          	ld	a5,0(s3)
    800023fc:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80002400:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002404:	00009497          	auipc	s1,0x9
    80002408:	64c48493          	addi	s1,s1,1612 # 8000ba50 <_ZN15MemoryAllocator9instance_E>
    8000240c:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80002410:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    80002414:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    80002418:	0004b783          	ld	a5,0(s1)
    8000241c:	0007b783          	ld	a5,0(a5)
    80002420:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    80002424:	0004b783          	ld	a5,0(s1)
    80002428:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    8000242c:	00009917          	auipc	s2,0x9
    80002430:	3ec90913          	addi	s2,s2,1004 # 8000b818 <HEAP_END_ADDR>
    80002434:	00093783          	ld	a5,0(s2)
    80002438:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    8000243c:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80002440:	00007517          	auipc	a0,0x7
    80002444:	ff050513          	addi	a0,a0,-16 # 80009430 <_ZZ24debug_print_internal_intmE6digits+0x178>
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	a40080e7          	jalr	-1472(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80002450:	00007517          	auipc	a0,0x7
    80002454:	00850513          	addi	a0,a0,8 # 80009458 <_ZZ24debug_print_internal_intmE6digits+0x1a0>
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	a30080e7          	jalr	-1488(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80002460:	04000513          	li	a0,64
    80002464:	00000097          	auipc	ra,0x0
    80002468:	b6c080e7          	jalr	-1172(ra) # 80001fd0 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    8000246c:	00007517          	auipc	a0,0x7
    80002470:	00450513          	addi	a0,a0,4 # 80009470 <_ZZ24debug_print_internal_intmE6digits+0x1b8>
    80002474:	00000097          	auipc	ra,0x0
    80002478:	a14080e7          	jalr	-1516(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    8000247c:	0009b503          	ld	a0,0(s3)
    80002480:	00000097          	auipc	ra,0x0
    80002484:	b50080e7          	jalr	-1200(ra) # 80001fd0 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    80002488:	00007517          	auipc	a0,0x7
    8000248c:	00050513          	mv	a0,a0
    80002490:	00000097          	auipc	ra,0x0
    80002494:	9f8080e7          	jalr	-1544(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    80002498:	00093503          	ld	a0,0(s2)
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	b34080e7          	jalr	-1228(ra) # 80001fd0 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    800024a4:	00007517          	auipc	a0,0x7
    800024a8:	ffc50513          	addi	a0,a0,-4 # 800094a0 <_ZZ24debug_print_internal_intmE6digits+0x1e8>
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	9dc080e7          	jalr	-1572(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    800024b4:	0004b783          	ld	a5,0(s1)
    800024b8:	0007b503          	ld	a0,0(a5)
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	b14080e7          	jalr	-1260(ra) # 80001fd0 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    800024c4:	00007517          	auipc	a0,0x7
    800024c8:	ffc50513          	addi	a0,a0,-4 # 800094c0 <_ZZ24debug_print_internal_intmE6digits+0x208>
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	9bc080e7          	jalr	-1604(ra) # 80001e88 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    800024d4:	01000513          	li	a0,16
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	af8080e7          	jalr	-1288(ra) # 80001fd0 <_Z11debug_printm>
        debug_print("\n");
    800024e0:	00007517          	auipc	a0,0x7
    800024e4:	e8050513          	addi	a0,a0,-384 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	9a0080e7          	jalr	-1632(ra) # 80001e88 <_Z11debug_printPKc>
}
    800024f0:	00009797          	auipc	a5,0x9
    800024f4:	56078793          	addi	a5,a5,1376 # 8000ba50 <_ZN15MemoryAllocator9instance_E>
    800024f8:	0007b503          	ld	a0,0(a5)
    800024fc:	02813083          	ld	ra,40(sp)
    80002500:	02013403          	ld	s0,32(sp)
    80002504:	01813483          	ld	s1,24(sp)
    80002508:	01013903          	ld	s2,16(sp)
    8000250c:	00813983          	ld	s3,8(sp)
    80002510:	03010113          	addi	sp,sp,48
    80002514:	00008067          	ret

0000000080002518 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813423          	sd	s0,8(sp)
    80002520:	01010413          	addi	s0,sp,16
    // debug_print("Allocating memory of size: ");
    // debug_print(size);
    // debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    80002524:	00053783          	ld	a5,0(a0)
    80002528:	04078e63          	beqz	a5,80002584 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    8000252c:	04f58593          	addi	a1,a1,79
    80002530:	fc05f593          	andi	a1,a1,-64

    // debug_print("Aligned size: ");
    // debug_print(size);
    // debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002534:	00000693          	li	a3,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002538:	00078c63          	beqz	a5,80002550 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    8000253c:	0087b703          	ld	a4,8(a5)
    80002540:	00b77863          	bgeu	a4,a1,80002550 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        prev_free_block = free_block;
    80002544:	00078693          	mv	a3,a5
        free_block = free_block->next_;
    80002548:	0007b783          	ld	a5,0(a5)
    while (free_block && free_block->size_ < size) {
    8000254c:	fedff06f          	j	80002538 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80002550:	02078a63          	beqz	a5,80002584 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    80002554:	0087b703          	ld	a4,8(a5)
    80002558:	04e5f263          	bgeu	a1,a4,8000259c <_ZN15MemoryAllocator9mem_allocEm+0x84>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    8000255c:	00b78633          	add	a2,a5,a1
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80002560:	02068a63          	beqz	a3,80002594 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            prev_free_block->next_ = new_free_block;
    80002564:	00c6b023          	sd	a2,0(a3)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80002568:	0007b703          	ld	a4,0(a5)
    8000256c:	00e63023          	sd	a4,0(a2)
        new_free_block->size_ = free_block->size_ - size;
    80002570:	0087b703          	ld	a4,8(a5)
    80002574:	40b70733          	sub	a4,a4,a1
    80002578:	00e63423          	sd	a4,8(a2)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    8000257c:	00b7b423          	sd	a1,8(a5)
        // debug_print("Free block address: ");
        // debug_print((uint64)free_block);
        // debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002580:	01078793          	addi	a5,a5,16
}
    80002584:	00078513          	mv	a0,a5
    80002588:	00813403          	ld	s0,8(sp)
    8000258c:	01010113          	addi	sp,sp,16
    80002590:	00008067          	ret
            free_block_ptr_ = new_free_block;
    80002594:	00c53023          	sd	a2,0(a0)
    80002598:	fd1ff06f          	j	80002568 <_ZN15MemoryAllocator9mem_allocEm+0x50>
        if (prev_free_block) {
    8000259c:	00068863          	beqz	a3,800025ac <_ZN15MemoryAllocator9mem_allocEm+0x94>
            prev_free_block->next_ = free_block->next_;
    800025a0:	0007b703          	ld	a4,0(a5)
    800025a4:	00e6b023          	sd	a4,0(a3)
    800025a8:	fd5ff06f          	j	8000257c <_ZN15MemoryAllocator9mem_allocEm+0x64>
            free_block_ptr_ = free_block->next_;
    800025ac:	0007b703          	ld	a4,0(a5)
    800025b0:	00e53023          	sd	a4,0(a0)
    800025b4:	fc9ff06f          	j	8000257c <_ZN15MemoryAllocator9mem_allocEm+0x64>

00000000800025b8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813423          	sd	s0,8(sp)
    800025c0:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    800025c4:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    800025c8:	00000513          	li	a0,0
    while (free_block_iter) {
    800025cc:	00078a63          	beqz	a5,800025e0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    800025d0:	0087b703          	ld	a4,8(a5)
    800025d4:	fee57ce3          	bgeu	a0,a4,800025cc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    800025d8:	00070513          	mv	a0,a4
    800025dc:	ff1ff06f          	j	800025cc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    800025e0:	00813403          	ld	s0,8(sp)
    800025e4:	01010113          	addi	sp,sp,16
    800025e8:	00008067          	ret

00000000800025ec <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    800025ec:	ff010113          	addi	sp,sp,-16
    800025f0:	00813423          	sd	s0,8(sp)
    800025f4:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    800025f8:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    800025fc:	00000513          	li	a0,0
    while (free_block_iter) {
    80002600:	00078a63          	beqz	a5,80002614 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    80002604:	0087b703          	ld	a4,8(a5)
    80002608:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    8000260c:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    80002610:	ff1ff06f          	j	80002600 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    80002614:	00813403          	ld	s0,8(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    80002620:	06058a63          	beqz	a1,80002694 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    80002624:	06060863          	beqz	a2,80002694 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    80002628:	fe010113          	addi	sp,sp,-32
    8000262c:	00113c23          	sd	ra,24(sp)
    80002630:	00813823          	sd	s0,16(sp)
    80002634:	00913423          	sd	s1,8(sp)
    80002638:	01213023          	sd	s2,0(sp)
    8000263c:	02010413          	addi	s0,sp,32
    80002640:	00060913          	mv	s2,a2
    80002644:	00058493          	mv	s1,a1
        // debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    80002648:	00007597          	auipc	a1,0x7
    8000264c:	e9858593          	addi	a1,a1,-360 # 800094e0 <_ZZ24debug_print_internal_intmE6digits+0x228>
    80002650:	00c4b533          	sltu	a0,s1,a2
    80002654:	00000097          	auipc	ra,0x0
    80002658:	85c080e7          	jalr	-1956(ra) # 80001eb0 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    8000265c:	0084b783          	ld	a5,8(s1)
    80002660:	00f48733          	add	a4,s1,a5
    80002664:	00e91c63          	bne	s2,a4,8000267c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        // debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002668:	00893703          	ld	a4,8(s2)
    8000266c:	00e787b3          	add	a5,a5,a4
    80002670:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002674:	00093783          	ld	a5,0(s2)
    80002678:	00f4b023          	sd	a5,0(s1)
    8000267c:	01813083          	ld	ra,24(sp)
    80002680:	01013403          	ld	s0,16(sp)
    80002684:	00813483          	ld	s1,8(sp)
    80002688:	00013903          	ld	s2,0(sp)
    8000268c:	02010113          	addi	sp,sp,32
    80002690:	00008067          	ret
    80002694:	00008067          	ret

0000000080002698 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    80002698:	fd010113          	addi	sp,sp,-48
    8000269c:	02113423          	sd	ra,40(sp)
    800026a0:	02813023          	sd	s0,32(sp)
    800026a4:	00913c23          	sd	s1,24(sp)
    800026a8:	01213823          	sd	s2,16(sp)
    800026ac:	01313423          	sd	s3,8(sp)
    800026b0:	03010413          	addi	s0,sp,48
    if (!free_block_addr) {
    800026b4:	04058263          	beqz	a1,800026f8 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    800026b8:	00050993          	mv	s3,a0
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    800026bc:	ff058913          	addi	s2,a1,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    800026c0:	00090793          	mv	a5,s2
    800026c4:	03f97713          	andi	a4,s2,63
    800026c8:	04071463          	bnez	a4,80002710 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    800026cc:	00009717          	auipc	a4,0x9
    800026d0:	15470713          	addi	a4,a4,340 # 8000b820 <HEAP_START_ADDR>
    800026d4:	00073703          	ld	a4,0(a4)
    800026d8:	04e96863          	bltu	s2,a4,80002728 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    800026dc:	00009717          	auipc	a4,0x9
    800026e0:	13c70713          	addi	a4,a4,316 # 8000b818 <HEAP_END_ADDR>
    800026e4:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    800026e8:	04e97063          	bgeu	s2,a4,80002728 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    800026ec:	00053603          	ld	a2,0(a0)
    800026f0:	00000493          	li	s1,0
    800026f4:	0540006f          	j	80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        debug_print("Free block address is null.\n");
    800026f8:	00007517          	auipc	a0,0x7
    800026fc:	e2850513          	addi	a0,a0,-472 # 80009520 <_ZZ24debug_print_internal_intmE6digits+0x268>
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	788080e7          	jalr	1928(ra) # 80001e88 <_Z11debug_printPKc>
        return -1;
    80002708:	fff00513          	li	a0,-1
    8000270c:	07c0006f          	j	80002788 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    80002710:	00007517          	auipc	a0,0x7
    80002714:	e3050513          	addi	a0,a0,-464 # 80009540 <_ZZ24debug_print_internal_intmE6digits+0x288>
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	770080e7          	jalr	1904(ra) # 80001e88 <_Z11debug_printPKc>
        return -2;
    80002720:	ffe00513          	li	a0,-2
    80002724:	0640006f          	j	80002788 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        debug_print("Free block address is not in the heap.\n");
    80002728:	00007517          	auipc	a0,0x7
    8000272c:	e5050513          	addi	a0,a0,-432 # 80009578 <_ZZ24debug_print_internal_intmE6digits+0x2c0>
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	758080e7          	jalr	1880(ra) # 80001e88 <_Z11debug_printPKc>
        return -3;
    80002738:	ffd00513          	li	a0,-3
    8000273c:	04c0006f          	j	80002788 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
        prev_free_block = next_free_block;
    80002740:	00060493          	mv	s1,a2
        next_free_block = next_free_block->next_;
    80002744:	00063603          	ld	a2,0(a2)
    while (next_free_block &&
    80002748:	00060663          	beqz	a2,80002754 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    8000274c:	fec7fae3          	bgeu	a5,a2,80002740 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
          !(((uint64)next_free_block > (uint64)block_info) &&
    80002750:	fef4f8e3          	bgeu	s1,a5,80002740 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if (!prev_free_block) {
    80002754:	04048863          	beqz	s1,800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        prev_free_block->next_ = block_info;
    80002758:	0124b023          	sd	s2,0(s1)
    block_info->next_ = next_free_block;
    8000275c:	fec5b823          	sd	a2,-16(a1)
    maybe_consolidate(block_info, next_free_block);
    80002760:	00090593          	mv	a1,s2
    80002764:	00098513          	mv	a0,s3
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	eb8080e7          	jalr	-328(ra) # 80002620 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80002770:	00090613          	mv	a2,s2
    80002774:	00048593          	mv	a1,s1
    80002778:	00098513          	mv	a0,s3
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	ea4080e7          	jalr	-348(ra) # 80002620 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    80002784:	00000513          	li	a0,0
}
    80002788:	02813083          	ld	ra,40(sp)
    8000278c:	02013403          	ld	s0,32(sp)
    80002790:	01813483          	ld	s1,24(sp)
    80002794:	01013903          	ld	s2,16(sp)
    80002798:	00813983          	ld	s3,8(sp)
    8000279c:	03010113          	addi	sp,sp,48
    800027a0:	00008067          	ret
        free_block_ptr_ = block_info;
    800027a4:	0129b023          	sd	s2,0(s3)
    800027a8:	fb5ff06f          	j	8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>

00000000800027ac <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800027ac:	00100793          	li	a5,1
    800027b0:	06a7f863          	bgeu	a5,a0,80002820 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00813823          	sd	s0,16(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	01213023          	sd	s2,0(sp)
    800027c8:	02010413          	addi	s0,sp,32
    800027cc:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    800027d0:	00a00793          	li	a5,10
    800027d4:	02f577b3          	remu	a5,a0,a5
    800027d8:	02078e63          	beqz	a5,80002814 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800027dc:	fff48513          	addi	a0,s1,-1
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	fcc080e7          	jalr	-52(ra) # 800027ac <_ZL9fibonaccim>
    800027e8:	00050913          	mv	s2,a0
    800027ec:	ffe48513          	addi	a0,s1,-2
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	fbc080e7          	jalr	-68(ra) # 800027ac <_ZL9fibonaccim>
    800027f8:	00a90533          	add	a0,s2,a0
}
    800027fc:	01813083          	ld	ra,24(sp)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	00013903          	ld	s2,0(sp)
    8000280c:	02010113          	addi	sp,sp,32
    80002810:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	f30080e7          	jalr	-208(ra) # 80001744 <_Z15thread_dispatchv>
    8000281c:	fc1ff06f          	j	800027dc <_ZL9fibonaccim+0x30>
}
    80002820:	00008067          	ret

0000000080002824 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002824:	fe010113          	addi	sp,sp,-32
    80002828:	00113c23          	sd	ra,24(sp)
    8000282c:	00813823          	sd	s0,16(sp)
    80002830:	00913423          	sd	s1,8(sp)
    80002834:	01213023          	sd	s2,0(sp)
    80002838:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000283c:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80002840:	00c00793          	li	a5,12
    80002844:	0497e263          	bltu	a5,s1,80002888 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80002848:	00007517          	auipc	a0,0x7
    8000284c:	d5850513          	addi	a0,a0,-680 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x2e8>
    80002850:	00003097          	auipc	ra,0x3
    80002854:	c48080e7          	jalr	-952(ra) # 80005498 <_Z11printStringPKc>
    80002858:	00000613          	li	a2,0
    8000285c:	00a00593          	li	a1,10
    80002860:	00048513          	mv	a0,s1
    80002864:	00003097          	auipc	ra,0x3
    80002868:	de0080e7          	jalr	-544(ra) # 80005644 <_Z8printIntiii>
    8000286c:	00007517          	auipc	a0,0x7
    80002870:	af450513          	addi	a0,a0,-1292 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002874:	00003097          	auipc	ra,0x3
    80002878:	c24080e7          	jalr	-988(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000287c:	0014849b          	addiw	s1,s1,1
    80002880:	0ff4f493          	andi	s1,s1,255
    80002884:	fbdff06f          	j	80002840 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80002888:	00007517          	auipc	a0,0x7
    8000288c:	d2050513          	addi	a0,a0,-736 # 800095a8 <_ZZ24debug_print_internal_intmE6digits+0x2f0>
    80002890:	00003097          	auipc	ra,0x3
    80002894:	c08080e7          	jalr	-1016(ra) # 80005498 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002898:	00500313          	li	t1,5
    thread_dispatch();
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	ea8080e7          	jalr	-344(ra) # 80001744 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800028a4:	01000513          	li	a0,16
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	f04080e7          	jalr	-252(ra) # 800027ac <_ZL9fibonaccim>
    800028b0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800028b4:	00007517          	auipc	a0,0x7
    800028b8:	d0450513          	addi	a0,a0,-764 # 800095b8 <_ZZ24debug_print_internal_intmE6digits+0x300>
    800028bc:	00003097          	auipc	ra,0x3
    800028c0:	bdc080e7          	jalr	-1060(ra) # 80005498 <_Z11printStringPKc>
    800028c4:	00000613          	li	a2,0
    800028c8:	00a00593          	li	a1,10
    800028cc:	0009051b          	sext.w	a0,s2
    800028d0:	00003097          	auipc	ra,0x3
    800028d4:	d74080e7          	jalr	-652(ra) # 80005644 <_Z8printIntiii>
    800028d8:	00007517          	auipc	a0,0x7
    800028dc:	a8850513          	addi	a0,a0,-1400 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800028e0:	00003097          	auipc	ra,0x3
    800028e4:	bb8080e7          	jalr	-1096(ra) # 80005498 <_Z11printStringPKc>

    for (; i < 16; i++) {
    800028e8:	00f00793          	li	a5,15
    800028ec:	0497e263          	bltu	a5,s1,80002930 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    800028f0:	00007517          	auipc	a0,0x7
    800028f4:	cb050513          	addi	a0,a0,-848 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x2e8>
    800028f8:	00003097          	auipc	ra,0x3
    800028fc:	ba0080e7          	jalr	-1120(ra) # 80005498 <_Z11printStringPKc>
    80002900:	00000613          	li	a2,0
    80002904:	00a00593          	li	a1,10
    80002908:	00048513          	mv	a0,s1
    8000290c:	00003097          	auipc	ra,0x3
    80002910:	d38080e7          	jalr	-712(ra) # 80005644 <_Z8printIntiii>
    80002914:	00007517          	auipc	a0,0x7
    80002918:	a4c50513          	addi	a0,a0,-1460 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000291c:	00003097          	auipc	ra,0x3
    80002920:	b7c080e7          	jalr	-1156(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002924:	0014849b          	addiw	s1,s1,1
    80002928:	0ff4f493          	andi	s1,s1,255
    8000292c:	fbdff06f          	j	800028e8 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80002930:	00007517          	auipc	a0,0x7
    80002934:	c9850513          	addi	a0,a0,-872 # 800095c8 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80002938:	00003097          	auipc	ra,0x3
    8000293c:	b60080e7          	jalr	-1184(ra) # 80005498 <_Z11printStringPKc>
    finishedD = true;
    80002940:	00100793          	li	a5,1
    80002944:	00009717          	auipc	a4,0x9
    80002948:	10f70a23          	sb	a5,276(a4) # 8000ba58 <_ZL9finishedD>
    thread_dispatch();
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	df8080e7          	jalr	-520(ra) # 80001744 <_Z15thread_dispatchv>
}
    80002954:	01813083          	ld	ra,24(sp)
    80002958:	01013403          	ld	s0,16(sp)
    8000295c:	00813483          	ld	s1,8(sp)
    80002960:	00013903          	ld	s2,0(sp)
    80002964:	02010113          	addi	sp,sp,32
    80002968:	00008067          	ret

000000008000296c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000296c:	fe010113          	addi	sp,sp,-32
    80002970:	00113c23          	sd	ra,24(sp)
    80002974:	00813823          	sd	s0,16(sp)
    80002978:	00913423          	sd	s1,8(sp)
    8000297c:	01213023          	sd	s2,0(sp)
    80002980:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002984:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80002988:	00200793          	li	a5,2
    8000298c:	0497e263          	bltu	a5,s1,800029d0 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80002990:	00007517          	auipc	a0,0x7
    80002994:	c4850513          	addi	a0,a0,-952 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80002998:	00003097          	auipc	ra,0x3
    8000299c:	b00080e7          	jalr	-1280(ra) # 80005498 <_Z11printStringPKc>
    800029a0:	00000613          	li	a2,0
    800029a4:	00a00593          	li	a1,10
    800029a8:	00048513          	mv	a0,s1
    800029ac:	00003097          	auipc	ra,0x3
    800029b0:	c98080e7          	jalr	-872(ra) # 80005644 <_Z8printIntiii>
    800029b4:	00007517          	auipc	a0,0x7
    800029b8:	9ac50513          	addi	a0,a0,-1620 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800029bc:	00003097          	auipc	ra,0x3
    800029c0:	adc080e7          	jalr	-1316(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800029c4:	0014849b          	addiw	s1,s1,1
    800029c8:	0ff4f493          	andi	s1,s1,255
    800029cc:	fbdff06f          	j	80002988 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    800029d0:	00007517          	auipc	a0,0x7
    800029d4:	c1050513          	addi	a0,a0,-1008 # 800095e0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    800029d8:	00003097          	auipc	ra,0x3
    800029dc:	ac0080e7          	jalr	-1344(ra) # 80005498 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800029e0:	00700313          	li	t1,7
    thread_dispatch();
    800029e4:	fffff097          	auipc	ra,0xfffff
    800029e8:	d60080e7          	jalr	-672(ra) # 80001744 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800029ec:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800029f0:	00007517          	auipc	a0,0x7
    800029f4:	c0050513          	addi	a0,a0,-1024 # 800095f0 <_ZZ24debug_print_internal_intmE6digits+0x338>
    800029f8:	00003097          	auipc	ra,0x3
    800029fc:	aa0080e7          	jalr	-1376(ra) # 80005498 <_Z11printStringPKc>
    80002a00:	00000613          	li	a2,0
    80002a04:	00a00593          	li	a1,10
    80002a08:	0009051b          	sext.w	a0,s2
    80002a0c:	00003097          	auipc	ra,0x3
    80002a10:	c38080e7          	jalr	-968(ra) # 80005644 <_Z8printIntiii>
    80002a14:	00007517          	auipc	a0,0x7
    80002a18:	94c50513          	addi	a0,a0,-1716 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002a1c:	00003097          	auipc	ra,0x3
    80002a20:	a7c080e7          	jalr	-1412(ra) # 80005498 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002a24:	00c00513          	li	a0,12
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	d84080e7          	jalr	-636(ra) # 800027ac <_ZL9fibonaccim>
    80002a30:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002a34:	00007517          	auipc	a0,0x7
    80002a38:	bc450513          	addi	a0,a0,-1084 # 800095f8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80002a3c:	00003097          	auipc	ra,0x3
    80002a40:	a5c080e7          	jalr	-1444(ra) # 80005498 <_Z11printStringPKc>
    80002a44:	00000613          	li	a2,0
    80002a48:	00a00593          	li	a1,10
    80002a4c:	0009051b          	sext.w	a0,s2
    80002a50:	00003097          	auipc	ra,0x3
    80002a54:	bf4080e7          	jalr	-1036(ra) # 80005644 <_Z8printIntiii>
    80002a58:	00007517          	auipc	a0,0x7
    80002a5c:	90850513          	addi	a0,a0,-1784 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002a60:	00003097          	auipc	ra,0x3
    80002a64:	a38080e7          	jalr	-1480(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002a68:	00500793          	li	a5,5
    80002a6c:	0497e263          	bltu	a5,s1,80002ab0 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80002a70:	00007517          	auipc	a0,0x7
    80002a74:	b6850513          	addi	a0,a0,-1176 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80002a78:	00003097          	auipc	ra,0x3
    80002a7c:	a20080e7          	jalr	-1504(ra) # 80005498 <_Z11printStringPKc>
    80002a80:	00000613          	li	a2,0
    80002a84:	00a00593          	li	a1,10
    80002a88:	00048513          	mv	a0,s1
    80002a8c:	00003097          	auipc	ra,0x3
    80002a90:	bb8080e7          	jalr	-1096(ra) # 80005644 <_Z8printIntiii>
    80002a94:	00007517          	auipc	a0,0x7
    80002a98:	8cc50513          	addi	a0,a0,-1844 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002a9c:	00003097          	auipc	ra,0x3
    80002aa0:	9fc080e7          	jalr	-1540(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002aa4:	0014849b          	addiw	s1,s1,1
    80002aa8:	0ff4f493          	andi	s1,s1,255
    80002aac:	fbdff06f          	j	80002a68 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    80002ab0:	00007517          	auipc	a0,0x7
    80002ab4:	b5850513          	addi	a0,a0,-1192 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80002ab8:	00003097          	auipc	ra,0x3
    80002abc:	9e0080e7          	jalr	-1568(ra) # 80005498 <_Z11printStringPKc>
    finishedC = true;
    80002ac0:	00100793          	li	a5,1
    80002ac4:	00009717          	auipc	a4,0x9
    80002ac8:	f8f70aa3          	sb	a5,-107(a4) # 8000ba59 <_ZL9finishedC>
    thread_dispatch();
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	c78080e7          	jalr	-904(ra) # 80001744 <_Z15thread_dispatchv>
}
    80002ad4:	01813083          	ld	ra,24(sp)
    80002ad8:	01013403          	ld	s0,16(sp)
    80002adc:	00813483          	ld	s1,8(sp)
    80002ae0:	00013903          	ld	s2,0(sp)
    80002ae4:	02010113          	addi	sp,sp,32
    80002ae8:	00008067          	ret

0000000080002aec <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002aec:	fe010113          	addi	sp,sp,-32
    80002af0:	00113c23          	sd	ra,24(sp)
    80002af4:	00813823          	sd	s0,16(sp)
    80002af8:	00913423          	sd	s1,8(sp)
    80002afc:	01213023          	sd	s2,0(sp)
    80002b00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002b04:	00000913          	li	s2,0
    80002b08:	0400006f          	j	80002b48 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	c38080e7          	jalr	-968(ra) # 80001744 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b14:	00148493          	addi	s1,s1,1
    80002b18:	000027b7          	lui	a5,0x2
    80002b1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b20:	0097ee63          	bltu	a5,s1,80002b3c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b24:	00000713          	li	a4,0
    80002b28:	000077b7          	lui	a5,0x7
    80002b2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b30:	fce7eee3          	bltu	a5,a4,80002b0c <_ZL11workerBodyBPv+0x20>
    80002b34:	00170713          	addi	a4,a4,1
    80002b38:	ff1ff06f          	j	80002b28 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80002b3c:	00a00793          	li	a5,10
    80002b40:	04f90663          	beq	s2,a5,80002b8c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80002b44:	00190913          	addi	s2,s2,1
    80002b48:	00f00793          	li	a5,15
    80002b4c:	0527e463          	bltu	a5,s2,80002b94 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80002b50:	00007517          	auipc	a0,0x7
    80002b54:	ac850513          	addi	a0,a0,-1336 # 80009618 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80002b58:	00003097          	auipc	ra,0x3
    80002b5c:	940080e7          	jalr	-1728(ra) # 80005498 <_Z11printStringPKc>
    80002b60:	00000613          	li	a2,0
    80002b64:	00a00593          	li	a1,10
    80002b68:	0009051b          	sext.w	a0,s2
    80002b6c:	00003097          	auipc	ra,0x3
    80002b70:	ad8080e7          	jalr	-1320(ra) # 80005644 <_Z8printIntiii>
    80002b74:	00006517          	auipc	a0,0x6
    80002b78:	7ec50513          	addi	a0,a0,2028 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002b7c:	00003097          	auipc	ra,0x3
    80002b80:	91c080e7          	jalr	-1764(ra) # 80005498 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b84:	00000493          	li	s1,0
    80002b88:	f91ff06f          	j	80002b18 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80002b8c:	14102ff3          	csrr	t6,sepc
    80002b90:	fb5ff06f          	j	80002b44 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80002b94:	00007517          	auipc	a0,0x7
    80002b98:	a8c50513          	addi	a0,a0,-1396 # 80009620 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80002b9c:	00003097          	auipc	ra,0x3
    80002ba0:	8fc080e7          	jalr	-1796(ra) # 80005498 <_Z11printStringPKc>
    finishedB = true;
    80002ba4:	00100793          	li	a5,1
    80002ba8:	00009717          	auipc	a4,0x9
    80002bac:	eaf70923          	sb	a5,-334(a4) # 8000ba5a <_ZL9finishedB>
    thread_dispatch();
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	b94080e7          	jalr	-1132(ra) # 80001744 <_Z15thread_dispatchv>
}
    80002bb8:	01813083          	ld	ra,24(sp)
    80002bbc:	01013403          	ld	s0,16(sp)
    80002bc0:	00813483          	ld	s1,8(sp)
    80002bc4:	00013903          	ld	s2,0(sp)
    80002bc8:	02010113          	addi	sp,sp,32
    80002bcc:	00008067          	ret

0000000080002bd0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002bd0:	fe010113          	addi	sp,sp,-32
    80002bd4:	00113c23          	sd	ra,24(sp)
    80002bd8:	00813823          	sd	s0,16(sp)
    80002bdc:	00913423          	sd	s1,8(sp)
    80002be0:	01213023          	sd	s2,0(sp)
    80002be4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002be8:	00000913          	li	s2,0
    80002bec:	0380006f          	j	80002c24 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	b54080e7          	jalr	-1196(ra) # 80001744 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002bf8:	00148493          	addi	s1,s1,1
    80002bfc:	000027b7          	lui	a5,0x2
    80002c00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c04:	0097ee63          	bltu	a5,s1,80002c20 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c08:	00000713          	li	a4,0
    80002c0c:	000077b7          	lui	a5,0x7
    80002c10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c14:	fce7eee3          	bltu	a5,a4,80002bf0 <_ZL11workerBodyAPv+0x20>
    80002c18:	00170713          	addi	a4,a4,1
    80002c1c:	ff1ff06f          	j	80002c0c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002c20:	00190913          	addi	s2,s2,1
    80002c24:	00900793          	li	a5,9
    80002c28:	0527e063          	bltu	a5,s2,80002c68 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002c2c:	00007517          	auipc	a0,0x7
    80002c30:	a0450513          	addi	a0,a0,-1532 # 80009630 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80002c34:	00003097          	auipc	ra,0x3
    80002c38:	864080e7          	jalr	-1948(ra) # 80005498 <_Z11printStringPKc>
    80002c3c:	00000613          	li	a2,0
    80002c40:	00a00593          	li	a1,10
    80002c44:	0009051b          	sext.w	a0,s2
    80002c48:	00003097          	auipc	ra,0x3
    80002c4c:	9fc080e7          	jalr	-1540(ra) # 80005644 <_Z8printIntiii>
    80002c50:	00006517          	auipc	a0,0x6
    80002c54:	71050513          	addi	a0,a0,1808 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80002c58:	00003097          	auipc	ra,0x3
    80002c5c:	840080e7          	jalr	-1984(ra) # 80005498 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c60:	00000493          	li	s1,0
    80002c64:	f99ff06f          	j	80002bfc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002c68:	00007517          	auipc	a0,0x7
    80002c6c:	9a050513          	addi	a0,a0,-1632 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80002c70:	00003097          	auipc	ra,0x3
    80002c74:	828080e7          	jalr	-2008(ra) # 80005498 <_Z11printStringPKc>
    finishedA = true;
    80002c78:	00100793          	li	a5,1
    80002c7c:	00009717          	auipc	a4,0x9
    80002c80:	dcf70fa3          	sb	a5,-545(a4) # 8000ba5b <_ZL9finishedA>
}
    80002c84:	01813083          	ld	ra,24(sp)
    80002c88:	01013403          	ld	s0,16(sp)
    80002c8c:	00813483          	ld	s1,8(sp)
    80002c90:	00013903          	ld	s2,0(sp)
    80002c94:	02010113          	addi	sp,sp,32
    80002c98:	00008067          	ret

0000000080002c9c <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002c9c:	fd010113          	addi	sp,sp,-48
    80002ca0:	02113423          	sd	ra,40(sp)
    80002ca4:	02813023          	sd	s0,32(sp)
    80002ca8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002cac:	00000613          	li	a2,0
    80002cb0:	00000597          	auipc	a1,0x0
    80002cb4:	f2058593          	addi	a1,a1,-224 # 80002bd0 <_ZL11workerBodyAPv>
    80002cb8:	fd040513          	addi	a0,s0,-48
    80002cbc:	fffff097          	auipc	ra,0xfffff
    80002cc0:	9a4080e7          	jalr	-1628(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002cc4:	00007517          	auipc	a0,0x7
    80002cc8:	97450513          	addi	a0,a0,-1676 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80002ccc:	00002097          	auipc	ra,0x2
    80002cd0:	7cc080e7          	jalr	1996(ra) # 80005498 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002cd4:	00000613          	li	a2,0
    80002cd8:	00000597          	auipc	a1,0x0
    80002cdc:	e1458593          	addi	a1,a1,-492 # 80002aec <_ZL11workerBodyBPv>
    80002ce0:	fd840513          	addi	a0,s0,-40
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	97c080e7          	jalr	-1668(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002cec:	00007517          	auipc	a0,0x7
    80002cf0:	96450513          	addi	a0,a0,-1692 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80002cf4:	00002097          	auipc	ra,0x2
    80002cf8:	7a4080e7          	jalr	1956(ra) # 80005498 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002cfc:	00000613          	li	a2,0
    80002d00:	00000597          	auipc	a1,0x0
    80002d04:	c6c58593          	addi	a1,a1,-916 # 8000296c <_ZL11workerBodyCPv>
    80002d08:	fe040513          	addi	a0,s0,-32
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	954080e7          	jalr	-1708(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002d14:	00007517          	auipc	a0,0x7
    80002d18:	95450513          	addi	a0,a0,-1708 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x3b0>
    80002d1c:	00002097          	auipc	ra,0x2
    80002d20:	77c080e7          	jalr	1916(ra) # 80005498 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002d24:	00000613          	li	a2,0
    80002d28:	00000597          	auipc	a1,0x0
    80002d2c:	afc58593          	addi	a1,a1,-1284 # 80002824 <_ZL11workerBodyDPv>
    80002d30:	fe840513          	addi	a0,s0,-24
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	92c080e7          	jalr	-1748(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80002d3c:	00007517          	auipc	a0,0x7
    80002d40:	94450513          	addi	a0,a0,-1724 # 80009680 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80002d44:	00002097          	auipc	ra,0x2
    80002d48:	754080e7          	jalr	1876(ra) # 80005498 <_Z11printStringPKc>
    80002d4c:	00c0006f          	j	80002d58 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	9f4080e7          	jalr	-1548(ra) # 80001744 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002d58:	00009797          	auipc	a5,0x9
    80002d5c:	d0378793          	addi	a5,a5,-765 # 8000ba5b <_ZL9finishedA>
    80002d60:	0007c783          	lbu	a5,0(a5)
    80002d64:	0ff7f793          	andi	a5,a5,255
    80002d68:	fe0784e3          	beqz	a5,80002d50 <_Z16System_Mode_testv+0xb4>
    80002d6c:	00009797          	auipc	a5,0x9
    80002d70:	cee78793          	addi	a5,a5,-786 # 8000ba5a <_ZL9finishedB>
    80002d74:	0007c783          	lbu	a5,0(a5)
    80002d78:	0ff7f793          	andi	a5,a5,255
    80002d7c:	fc078ae3          	beqz	a5,80002d50 <_Z16System_Mode_testv+0xb4>
    80002d80:	00009797          	auipc	a5,0x9
    80002d84:	cd978793          	addi	a5,a5,-807 # 8000ba59 <_ZL9finishedC>
    80002d88:	0007c783          	lbu	a5,0(a5)
    80002d8c:	0ff7f793          	andi	a5,a5,255
    80002d90:	fc0780e3          	beqz	a5,80002d50 <_Z16System_Mode_testv+0xb4>
    80002d94:	00009797          	auipc	a5,0x9
    80002d98:	cc478793          	addi	a5,a5,-828 # 8000ba58 <_ZL9finishedD>
    80002d9c:	0007c783          	lbu	a5,0(a5)
    80002da0:	0ff7f793          	andi	a5,a5,255
    80002da4:	fa0786e3          	beqz	a5,80002d50 <_Z16System_Mode_testv+0xb4>
    }

}
    80002da8:	02813083          	ld	ra,40(sp)
    80002dac:	02013403          	ld	s0,32(sp)
    80002db0:	03010113          	addi	sp,sp,48
    80002db4:	00008067          	ret

0000000080002db8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002db8:	fe010113          	addi	sp,sp,-32
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00813823          	sd	s0,16(sp)
    80002dc4:	00913423          	sd	s1,8(sp)
    80002dc8:	01213023          	sd	s2,0(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    80002dd0:	00050493          	mv	s1,a0
    80002dd4:	00058913          	mv	s2,a1
    80002dd8:	0015879b          	addiw	a5,a1,1
    80002ddc:	0007851b          	sext.w	a0,a5
    80002de0:	00f4a023          	sw	a5,0(s1)
    80002de4:	0004a823          	sw	zero,16(s1)
    80002de8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002dec:	00251513          	slli	a0,a0,0x2
    80002df0:	ffffe097          	auipc	ra,0xffffe
    80002df4:	6e4080e7          	jalr	1764(ra) # 800014d4 <_Z9mem_allocm>
    80002df8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002dfc:	00000593          	li	a1,0
    80002e00:	02048513          	addi	a0,s1,32
    80002e04:	fffff097          	auipc	ra,0xfffff
    80002e08:	99c080e7          	jalr	-1636(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    80002e0c:	00090593          	mv	a1,s2
    80002e10:	01848513          	addi	a0,s1,24
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	98c080e7          	jalr	-1652(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    80002e1c:	00100593          	li	a1,1
    80002e20:	02848513          	addi	a0,s1,40
    80002e24:	fffff097          	auipc	ra,0xfffff
    80002e28:	97c080e7          	jalr	-1668(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    80002e2c:	00100593          	li	a1,1
    80002e30:	03048513          	addi	a0,s1,48
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	96c080e7          	jalr	-1684(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
}
    80002e3c:	01813083          	ld	ra,24(sp)
    80002e40:	01013403          	ld	s0,16(sp)
    80002e44:	00813483          	ld	s1,8(sp)
    80002e48:	00013903          	ld	s2,0(sp)
    80002e4c:	02010113          	addi	sp,sp,32
    80002e50:	00008067          	ret

0000000080002e54 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002e54:	fe010113          	addi	sp,sp,-32
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00813823          	sd	s0,16(sp)
    80002e60:	00913423          	sd	s1,8(sp)
    80002e64:	01213023          	sd	s2,0(sp)
    80002e68:	02010413          	addi	s0,sp,32
    80002e6c:	00050493          	mv	s1,a0
    80002e70:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002e74:	01853503          	ld	a0,24(a0)
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	a10080e7          	jalr	-1520(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80002e80:	0304b503          	ld	a0,48(s1)
    80002e84:	fffff097          	auipc	ra,0xfffff
    80002e88:	a04080e7          	jalr	-1532(ra) # 80001888 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80002e8c:	0084b783          	ld	a5,8(s1)
    80002e90:	0144a703          	lw	a4,20(s1)
    80002e94:	00271713          	slli	a4,a4,0x2
    80002e98:	00e787b3          	add	a5,a5,a4
    80002e9c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002ea0:	0144a783          	lw	a5,20(s1)
    80002ea4:	0017879b          	addiw	a5,a5,1
    80002ea8:	0004a703          	lw	a4,0(s1)
    80002eac:	02e7e7bb          	remw	a5,a5,a4
    80002eb0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002eb4:	0304b503          	ld	a0,48(s1)
    80002eb8:	fffff097          	auipc	ra,0xfffff
    80002ebc:	a3c080e7          	jalr	-1476(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80002ec0:	0204b503          	ld	a0,32(s1)
    80002ec4:	fffff097          	auipc	ra,0xfffff
    80002ec8:	a30080e7          	jalr	-1488(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

}
    80002ecc:	01813083          	ld	ra,24(sp)
    80002ed0:	01013403          	ld	s0,16(sp)
    80002ed4:	00813483          	ld	s1,8(sp)
    80002ed8:	00013903          	ld	s2,0(sp)
    80002edc:	02010113          	addi	sp,sp,32
    80002ee0:	00008067          	ret

0000000080002ee4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002ee4:	fe010113          	addi	sp,sp,-32
    80002ee8:	00113c23          	sd	ra,24(sp)
    80002eec:	00813823          	sd	s0,16(sp)
    80002ef0:	00913423          	sd	s1,8(sp)
    80002ef4:	01213023          	sd	s2,0(sp)
    80002ef8:	02010413          	addi	s0,sp,32
    80002efc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002f00:	02053503          	ld	a0,32(a0)
    80002f04:	fffff097          	auipc	ra,0xfffff
    80002f08:	984080e7          	jalr	-1660(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    80002f0c:	0284b503          	ld	a0,40(s1)
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	978080e7          	jalr	-1672(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80002f18:	0084b703          	ld	a4,8(s1)
    80002f1c:	0104a783          	lw	a5,16(s1)
    80002f20:	00279693          	slli	a3,a5,0x2
    80002f24:	00d70733          	add	a4,a4,a3
    80002f28:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002f2c:	0017879b          	addiw	a5,a5,1
    80002f30:	0004a703          	lw	a4,0(s1)
    80002f34:	02e7e7bb          	remw	a5,a5,a4
    80002f38:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002f3c:	0284b503          	ld	a0,40(s1)
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	9b4080e7          	jalr	-1612(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    80002f48:	0184b503          	ld	a0,24(s1)
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	9a8080e7          	jalr	-1624(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80002f54:	00090513          	mv	a0,s2
    80002f58:	01813083          	ld	ra,24(sp)
    80002f5c:	01013403          	ld	s0,16(sp)
    80002f60:	00813483          	ld	s1,8(sp)
    80002f64:	00013903          	ld	s2,0(sp)
    80002f68:	02010113          	addi	sp,sp,32
    80002f6c:	00008067          	ret

0000000080002f70 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002f70:	fe010113          	addi	sp,sp,-32
    80002f74:	00113c23          	sd	ra,24(sp)
    80002f78:	00813823          	sd	s0,16(sp)
    80002f7c:	00913423          	sd	s1,8(sp)
    80002f80:	01213023          	sd	s2,0(sp)
    80002f84:	02010413          	addi	s0,sp,32
    80002f88:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002f8c:	02853503          	ld	a0,40(a0)
    80002f90:	fffff097          	auipc	ra,0xfffff
    80002f94:	8f8080e7          	jalr	-1800(ra) # 80001888 <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80002f98:	0304b503          	ld	a0,48(s1)
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	8ec080e7          	jalr	-1812(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80002fa4:	0144a783          	lw	a5,20(s1)
    80002fa8:	0104a903          	lw	s2,16(s1)
    80002fac:	0327ce63          	blt	a5,s2,80002fe8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002fb0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002fb4:	0304b503          	ld	a0,48(s1)
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	93c080e7          	jalr	-1732(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    80002fc0:	0284b503          	ld	a0,40(s1)
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	930080e7          	jalr	-1744(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80002fcc:	00090513          	mv	a0,s2
    80002fd0:	01813083          	ld	ra,24(sp)
    80002fd4:	01013403          	ld	s0,16(sp)
    80002fd8:	00813483          	ld	s1,8(sp)
    80002fdc:	00013903          	ld	s2,0(sp)
    80002fe0:	02010113          	addi	sp,sp,32
    80002fe4:	00008067          	ret
        ret = cap - head + tail;
    80002fe8:	0004a703          	lw	a4,0(s1)
    80002fec:	4127093b          	subw	s2,a4,s2
    80002ff0:	00f9093b          	addw	s2,s2,a5
    80002ff4:	fc1ff06f          	j	80002fb4 <_ZN6Buffer6getCntEv+0x44>

0000000080002ff8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002ff8:	fe010113          	addi	sp,sp,-32
    80002ffc:	00113c23          	sd	ra,24(sp)
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00050493          	mv	s1,a0
    putc('\n');
    80003010:	00a00513          	li	a0,10
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	9b8080e7          	jalr	-1608(ra) # 800019cc <_Z4putcc>
    printString("Buffer deleted!\n");
    8000301c:	00006517          	auipc	a0,0x6
    80003020:	67c50513          	addi	a0,a0,1660 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x3e0>
    80003024:	00002097          	auipc	ra,0x2
    80003028:	474080e7          	jalr	1140(ra) # 80005498 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000302c:	00048513          	mv	a0,s1
    80003030:	00000097          	auipc	ra,0x0
    80003034:	f40080e7          	jalr	-192(ra) # 80002f70 <_ZN6Buffer6getCntEv>
    80003038:	02a05c63          	blez	a0,80003070 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000303c:	0084b783          	ld	a5,8(s1)
    80003040:	0104a703          	lw	a4,16(s1)
    80003044:	00271713          	slli	a4,a4,0x2
    80003048:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000304c:	0007c503          	lbu	a0,0(a5)
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	97c080e7          	jalr	-1668(ra) # 800019cc <_Z4putcc>
        head = (head + 1) % cap;
    80003058:	0104a783          	lw	a5,16(s1)
    8000305c:	0017879b          	addiw	a5,a5,1
    80003060:	0004a703          	lw	a4,0(s1)
    80003064:	02e7e7bb          	remw	a5,a5,a4
    80003068:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000306c:	fc1ff06f          	j	8000302c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003070:	02100513          	li	a0,33
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	958080e7          	jalr	-1704(ra) # 800019cc <_Z4putcc>
    putc('\n');
    8000307c:	00a00513          	li	a0,10
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	94c080e7          	jalr	-1716(ra) # 800019cc <_Z4putcc>
    mem_free(buffer);
    80003088:	0084b503          	ld	a0,8(s1)
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	4b0080e7          	jalr	1200(ra) # 8000153c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003094:	0204b503          	ld	a0,32(s1)
    80003098:	ffffe097          	auipc	ra,0xffffe
    8000309c:	784080e7          	jalr	1924(ra) # 8000181c <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    800030a0:	0184b503          	ld	a0,24(s1)
    800030a4:	ffffe097          	auipc	ra,0xffffe
    800030a8:	778080e7          	jalr	1912(ra) # 8000181c <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    800030ac:	0304b503          	ld	a0,48(s1)
    800030b0:	ffffe097          	auipc	ra,0xffffe
    800030b4:	76c080e7          	jalr	1900(ra) # 8000181c <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    800030b8:	0284b503          	ld	a0,40(s1)
    800030bc:	ffffe097          	auipc	ra,0xffffe
    800030c0:	760080e7          	jalr	1888(ra) # 8000181c <_Z9sem_closeP10_semaphore>
}
    800030c4:	01813083          	ld	ra,24(sp)
    800030c8:	01013403          	ld	s0,16(sp)
    800030cc:	00813483          	ld	s1,8(sp)
    800030d0:	02010113          	addi	sp,sp,32
    800030d4:	00008067          	ret

00000000800030d8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800030d8:	f8010113          	addi	sp,sp,-128
    800030dc:	06113c23          	sd	ra,120(sp)
    800030e0:	06813823          	sd	s0,112(sp)
    800030e4:	06913423          	sd	s1,104(sp)
    800030e8:	07213023          	sd	s2,96(sp)
    800030ec:	05313c23          	sd	s3,88(sp)
    800030f0:	05413823          	sd	s4,80(sp)
    800030f4:	05513423          	sd	s5,72(sp)
    800030f8:	05613023          	sd	s6,64(sp)
    800030fc:	03713c23          	sd	s7,56(sp)
    80003100:	03813823          	sd	s8,48(sp)
    80003104:	03913423          	sd	s9,40(sp)
    80003108:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000310c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003110:	00006517          	auipc	a0,0x6
    80003114:	66050513          	addi	a0,a0,1632 # 80009770 <_ZTV8Consumer+0x28>
    80003118:	00002097          	auipc	ra,0x2
    8000311c:	380080e7          	jalr	896(ra) # 80005498 <_Z11printStringPKc>
    getString(input, 30);
    80003120:	01e00593          	li	a1,30
    80003124:	f8040513          	addi	a0,s0,-128
    80003128:	00002097          	auipc	ra,0x2
    8000312c:	3f8080e7          	jalr	1016(ra) # 80005520 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003130:	f8040513          	addi	a0,s0,-128
    80003134:	00002097          	auipc	ra,0x2
    80003138:	4c0080e7          	jalr	1216(ra) # 800055f4 <_Z11stringToIntPKc>
    8000313c:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    80003140:	00006517          	auipc	a0,0x6
    80003144:	65050513          	addi	a0,a0,1616 # 80009790 <_ZTV8Consumer+0x48>
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	350080e7          	jalr	848(ra) # 80005498 <_Z11printStringPKc>
    getString(input, 30);
    80003150:	01e00593          	li	a1,30
    80003154:	f8040513          	addi	a0,s0,-128
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	3c8080e7          	jalr	968(ra) # 80005520 <_Z9getStringPci>
    n = stringToInt(input);
    80003160:	f8040513          	addi	a0,s0,-128
    80003164:	00002097          	auipc	ra,0x2
    80003168:	490080e7          	jalr	1168(ra) # 800055f4 <_Z11stringToIntPKc>
    8000316c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	64050513          	addi	a0,a0,1600 # 800097b0 <_ZTV8Consumer+0x68>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	320080e7          	jalr	800(ra) # 80005498 <_Z11printStringPKc>
    printInt(threadNum);
    80003180:	00000613          	li	a2,0
    80003184:	00a00593          	li	a1,10
    80003188:	000a0513          	mv	a0,s4
    8000318c:	00002097          	auipc	ra,0x2
    80003190:	4b8080e7          	jalr	1208(ra) # 80005644 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003194:	00006517          	auipc	a0,0x6
    80003198:	63450513          	addi	a0,a0,1588 # 800097c8 <_ZTV8Consumer+0x80>
    8000319c:	00002097          	auipc	ra,0x2
    800031a0:	2fc080e7          	jalr	764(ra) # 80005498 <_Z11printStringPKc>
    printInt(n);
    800031a4:	00000613          	li	a2,0
    800031a8:	00a00593          	li	a1,10
    800031ac:	00048513          	mv	a0,s1
    800031b0:	00002097          	auipc	ra,0x2
    800031b4:	494080e7          	jalr	1172(ra) # 80005644 <_Z8printIntiii>
    printString(".\n");
    800031b8:	00006517          	auipc	a0,0x6
    800031bc:	62850513          	addi	a0,a0,1576 # 800097e0 <_ZTV8Consumer+0x98>
    800031c0:	00002097          	auipc	ra,0x2
    800031c4:	2d8080e7          	jalr	728(ra) # 80005498 <_Z11printStringPKc>
    if (threadNum > n) {
    800031c8:	0344c463          	blt	s1,s4,800031f0 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    800031cc:	03405c63          	blez	s4,80003204 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    800031d0:	03800513          	li	a0,56
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	b44080e7          	jalr	-1212(ra) # 80001d18 <_Znwm>
    800031dc:	00050b13          	mv	s6,a0
    800031e0:	00048593          	mv	a1,s1
    800031e4:	00003097          	auipc	ra,0x3
    800031e8:	aa4080e7          	jalr	-1372(ra) # 80005c88 <_ZN9BufferCPPC1Ei>
    800031ec:	0300006f          	j	8000321c <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800031f0:	00006517          	auipc	a0,0x6
    800031f4:	5f850513          	addi	a0,a0,1528 # 800097e8 <_ZTV8Consumer+0xa0>
    800031f8:	00002097          	auipc	ra,0x2
    800031fc:	2a0080e7          	jalr	672(ra) # 80005498 <_Z11printStringPKc>
        return;
    80003200:	0140006f          	j	80003214 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003204:	00006517          	auipc	a0,0x6
    80003208:	62450513          	addi	a0,a0,1572 # 80009828 <_ZTV8Consumer+0xe0>
    8000320c:	00002097          	auipc	ra,0x2
    80003210:	28c080e7          	jalr	652(ra) # 80005498 <_Z11printStringPKc>
        return;
    80003214:	000c0113          	mv	sp,s8
    80003218:	2980006f          	j	800034b0 <_Z20testConsumerProducerv+0x3d8>
    waitForAll = new Semaphore(0);
    8000321c:	01000513          	li	a0,16
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	af8080e7          	jalr	-1288(ra) # 80001d18 <_Znwm>
    80003228:	00050913          	mv	s2,a0
        // debug_print("CPP API: Thread body executed\n");
    }

    thread_t myHandle;
    void (*body)(void*);
    void* arg;
    8000322c:	00006797          	auipc	a5,0x6
    80003230:	4bc78793          	addi	a5,a5,1212 # 800096e8 <_ZTV9Semaphore+0x10>
    80003234:	00f53023          	sd	a5,0(a0)
};
    80003238:	00000593          	li	a1,0
    8000323c:	00850513          	addi	a0,a0,8
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	560080e7          	jalr	1376(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    80003248:	00050463          	beqz	a0,80003250 <_Z20testConsumerProducerv+0x178>

    8000324c:	00093423          	sd	zero,8(s2)
    80003250:	00009797          	auipc	a5,0x9
    80003254:	8127bc23          	sd	s2,-2024(a5) # 8000ba68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003258:	003a1793          	slli	a5,s4,0x3
    8000325c:	00f78793          	addi	a5,a5,15
    80003260:	ff07f793          	andi	a5,a5,-16
    80003264:	40f10133          	sub	sp,sp,a5
    80003268:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    8000326c:	001a079b          	addiw	a5,s4,1
    80003270:	00179713          	slli	a4,a5,0x1
    80003274:	00f70733          	add	a4,a4,a5
    80003278:	00371793          	slli	a5,a4,0x3
    8000327c:	00f78793          	addi	a5,a5,15
    80003280:	ff07f793          	andi	a5,a5,-16
    80003284:	40f10133          	sub	sp,sp,a5
    80003288:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    8000328c:	001a1793          	slli	a5,s4,0x1
    80003290:	014787b3          	add	a5,a5,s4
    80003294:	00379493          	slli	s1,a5,0x3
    80003298:	009c84b3          	add	s1,s9,s1
    8000329c:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    800032a0:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    800032a4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800032a8:	02800513          	li	a0,40
    800032ac:	fffff097          	auipc	ra,0xfffff
    800032b0:	a6c080e7          	jalr	-1428(ra) # 80001d18 <_Znwm>
    800032b4:	00050b93          	mv	s7,a0
    }
    800032b8:	00053423          	sd	zero,8(a0)
    800032bc:	00053823          	sd	zero,16(a0)
    800032c0:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800032c4:	00006797          	auipc	a5,0x6
    800032c8:	49478793          	addi	a5,a5,1172 # 80009758 <_ZTV8Consumer+0x10>
    800032cc:	00f53023          	sd	a5,0(a0)
    800032d0:	02953023          	sd	s1,32(a0)
        // return myHandle->start();
    800032d4:	00050613          	mv	a2,a0
    800032d8:	00000597          	auipc	a1,0x0
    800032dc:	27458593          	addi	a1,a1,628 # 8000354c <_ZN6Thread9body_execEPv>
    800032e0:	00850513          	addi	a0,a0,8
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	37c080e7          	jalr	892(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    800032ec:	06051863          	bnez	a0,8000335c <_Z20testConsumerProducerv+0x284>
    threadData[0].id = 0;
    800032f0:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    800032f4:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    800032f8:	00008797          	auipc	a5,0x8
    800032fc:	77078793          	addi	a5,a5,1904 # 8000ba68 <_ZL10waitForAll>
    80003300:	0007b783          	ld	a5,0(a5)
    80003304:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003308:	02800513          	li	a0,40
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	a0c080e7          	jalr	-1524(ra) # 80001d18 <_Znwm>
    80003314:	00050493          	mv	s1,a0
    }
    80003318:	00053423          	sd	zero,8(a0)
    8000331c:	00053823          	sd	zero,16(a0)
    80003320:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003324:	00006797          	auipc	a5,0x6
    80003328:	3e478793          	addi	a5,a5,996 # 80009708 <_ZTV16ProducerKeyborad+0x10>
    8000332c:	00f53023          	sd	a5,0(a0)
    80003330:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003334:	00aab023          	sd	a0,0(s5)
        // return myHandle->start();
    80003338:	00050613          	mv	a2,a0
    8000333c:	00000597          	auipc	a1,0x0
    80003340:	21058593          	addi	a1,a1,528 # 8000354c <_ZN6Thread9body_execEPv>
    80003344:	00850513          	addi	a0,a0,8
    80003348:	ffffe097          	auipc	ra,0xffffe
    8000334c:	318080e7          	jalr	792(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    80003350:	00051a63          	bnez	a0,80003364 <_Z20testConsumerProducerv+0x28c>
void testConsumerProducer() {
    80003354:	00100993          	li	s3,1
    80003358:	01c0006f          	j	80003374 <_Z20testConsumerProducerv+0x29c>
        debug_print("CPP API: Starting thread\n");
    8000335c:	000bb423          	sd	zero,8(s7)
        if(thread_create(&myHandle, &Thread::body_exec, (void*)this) != 0) {
    80003360:	f91ff06f          	j	800032f0 <_Z20testConsumerProducerv+0x218>
        debug_print("CPP API: Starting thread\n");
    80003364:	0004b423          	sd	zero,8(s1)
        if(thread_create(&myHandle, &Thread::body_exec, (void*)this) != 0) {
    80003368:	fedff06f          	j	80003354 <_Z20testConsumerProducerv+0x27c>
        debug_print("CPP API: Starting thread\n");
    8000336c:	0004b423          	sd	zero,8(s1)
    for (int i = 1; i < threadNum; i++) {
    80003370:	0019899b          	addiw	s3,s3,1
    80003374:	0949d263          	bge	s3,s4,800033f8 <_Z20testConsumerProducerv+0x320>
        threadData[i].id = i;
    80003378:	00199793          	slli	a5,s3,0x1
    8000337c:	013787b3          	add	a5,a5,s3
    80003380:	00379913          	slli	s2,a5,0x3
    80003384:	012c8933          	add	s2,s9,s2
    80003388:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    8000338c:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    80003390:	00008797          	auipc	a5,0x8
    80003394:	6d878793          	addi	a5,a5,1752 # 8000ba68 <_ZL10waitForAll>
    80003398:	0007b783          	ld	a5,0(a5)
    8000339c:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    800033a0:	02800513          	li	a0,40
    800033a4:	fffff097          	auipc	ra,0xfffff
    800033a8:	974080e7          	jalr	-1676(ra) # 80001d18 <_Znwm>
    800033ac:	00050493          	mv	s1,a0
    }
    800033b0:	00053423          	sd	zero,8(a0)
    800033b4:	00053823          	sd	zero,16(a0)
    800033b8:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800033bc:	00006797          	auipc	a5,0x6
    800033c0:	37478793          	addi	a5,a5,884 # 80009730 <_ZTV8Producer+0x10>
    800033c4:	00f53023          	sd	a5,0(a0)
    800033c8:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    800033cc:	00399793          	slli	a5,s3,0x3
    800033d0:	00fa87b3          	add	a5,s5,a5
    800033d4:	00a7b023          	sd	a0,0(a5)
        // return myHandle->start();
    800033d8:	00050613          	mv	a2,a0
    800033dc:	00000597          	auipc	a1,0x0
    800033e0:	17058593          	addi	a1,a1,368 # 8000354c <_ZN6Thread9body_execEPv>
    800033e4:	00850513          	addi	a0,a0,8
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	278080e7          	jalr	632(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    800033f0:	f80500e3          	beqz	a0,80003370 <_Z20testConsumerProducerv+0x298>
    800033f4:	f79ff06f          	j	8000336c <_Z20testConsumerProducerv+0x294>
        return 0;
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	34c080e7          	jalr	844(ra) # 80001744 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003400:	00000493          	li	s1,0
    80003404:	0080006f          	j	8000340c <_Z20testConsumerProducerv+0x334>
    80003408:	0014849b          	addiw	s1,s1,1
    8000340c:	029a4263          	blt	s4,s1,80003430 <_Z20testConsumerProducerv+0x358>
        waitForAll->wait();
    80003410:	00008797          	auipc	a5,0x8
    80003414:	65878793          	addi	a5,a5,1624 # 8000ba68 <_ZL10waitForAll>
    80003418:	0007b783          	ld	a5,0(a5)
        if (sem_open(&myHandle, init) != 0) {
            myHandle = nullptr;
        }
    }
    virtual ~Semaphore() {
        if (myHandle != nullptr) {
    8000341c:	0087b503          	ld	a0,8(a5)
    80003420:	fe0504e3          	beqz	a0,80003408 <_Z20testConsumerProducerv+0x330>
            sem_close(myHandle);
        }
    }
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	464080e7          	jalr	1124(ra) # 80001888 <_Z8sem_waitP10_semaphore>
    8000342c:	fddff06f          	j	80003408 <_Z20testConsumerProducerv+0x330>
    delete waitForAll;
    80003430:	00008797          	auipc	a5,0x8
    80003434:	63878793          	addi	a5,a5,1592 # 8000ba68 <_ZL10waitForAll>
    80003438:	0007b503          	ld	a0,0(a5)
    8000343c:	00050863          	beqz	a0,8000344c <_Z20testConsumerProducerv+0x374>
    80003440:	00053783          	ld	a5,0(a0)
    80003444:	0087b783          	ld	a5,8(a5)
    80003448:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000344c:	00000493          	li	s1,0
    80003450:	0080006f          	j	80003458 <_Z20testConsumerProducerv+0x380>
    for (int i = 0; i < threadNum; i++) {
    80003454:	0014849b          	addiw	s1,s1,1
    80003458:	0344d263          	bge	s1,s4,8000347c <_Z20testConsumerProducerv+0x3a4>
        delete producers[i];
    8000345c:	00349793          	slli	a5,s1,0x3
    80003460:	00fa87b3          	add	a5,s5,a5
    80003464:	0007b503          	ld	a0,0(a5)
    80003468:	fe0506e3          	beqz	a0,80003454 <_Z20testConsumerProducerv+0x37c>
    8000346c:	00053783          	ld	a5,0(a0)
    80003470:	0087b783          	ld	a5,8(a5)
    80003474:	000780e7          	jalr	a5
    80003478:	fddff06f          	j	80003454 <_Z20testConsumerProducerv+0x37c>
    delete consumer;
    8000347c:	000b8a63          	beqz	s7,80003490 <_Z20testConsumerProducerv+0x3b8>
    80003480:	000bb783          	ld	a5,0(s7)
    80003484:	0087b783          	ld	a5,8(a5)
    80003488:	000b8513          	mv	a0,s7
    8000348c:	000780e7          	jalr	a5
    delete buffer;
    80003490:	000b0e63          	beqz	s6,800034ac <_Z20testConsumerProducerv+0x3d4>
    80003494:	000b0513          	mv	a0,s6
    80003498:	00003097          	auipc	ra,0x3
    8000349c:	ba8080e7          	jalr	-1112(ra) # 80006040 <_ZN9BufferCPPD1Ev>
    800034a0:	000b0513          	mv	a0,s6
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	8f4080e7          	jalr	-1804(ra) # 80001d98 <_ZdlPv>
    800034ac:	000c0113          	mv	sp,s8
}
    800034b0:	f8040113          	addi	sp,s0,-128
    800034b4:	07813083          	ld	ra,120(sp)
    800034b8:	07013403          	ld	s0,112(sp)
    800034bc:	06813483          	ld	s1,104(sp)
    800034c0:	06013903          	ld	s2,96(sp)
    800034c4:	05813983          	ld	s3,88(sp)
    800034c8:	05013a03          	ld	s4,80(sp)
    800034cc:	04813a83          	ld	s5,72(sp)
    800034d0:	04013b03          	ld	s6,64(sp)
    800034d4:	03813b83          	ld	s7,56(sp)
    800034d8:	03013c03          	ld	s8,48(sp)
    800034dc:	02813c83          	ld	s9,40(sp)
    800034e0:	08010113          	addi	sp,sp,128
    800034e4:	00008067          	ret
    800034e8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800034ec:	000b0513          	mv	a0,s6
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	8a8080e7          	jalr	-1880(ra) # 80001d98 <_ZdlPv>
    800034f8:	00048513          	mv	a0,s1
    800034fc:	00009097          	auipc	ra,0x9
    80003500:	6ac080e7          	jalr	1708(ra) # 8000cba8 <_Unwind_Resume>
    80003504:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003508:	00090513          	mv	a0,s2
    8000350c:	fffff097          	auipc	ra,0xfffff
    80003510:	88c080e7          	jalr	-1908(ra) # 80001d98 <_ZdlPv>
    80003514:	00048513          	mv	a0,s1
    80003518:	00009097          	auipc	ra,0x9
    8000351c:	690080e7          	jalr	1680(ra) # 8000cba8 <_Unwind_Resume>

0000000080003520 <_ZN6Thread3runEv>:
    protected:
    80003520:	ff010113          	addi	sp,sp,-16
    80003524:	00113423          	sd	ra,8(sp)
    80003528:	00813023          	sd	s0,0(sp)
    8000352c:	01010413          	addi	s0,sp,16
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003530:	01053783          	ld	a5,16(a0)
    80003534:	01853503          	ld	a0,24(a0)
    80003538:	000780e7          	jalr	a5
    // TODO: Where should run be called and what should it do?
    8000353c:	00813083          	ld	ra,8(sp)
    80003540:	00013403          	ld	s0,0(sp)
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00008067          	ret

000000008000354c <_ZN6Thread9body_execEPv>:

    8000354c:	ff010113          	addi	sp,sp,-16
    80003550:	00113423          	sd	ra,8(sp)
    80003554:	00813023          	sd	s0,0(sp)
    80003558:	01010413          	addi	s0,sp,16
    private:
    8000355c:	00053783          	ld	a5,0(a0)
    80003560:	0107b783          	ld	a5,16(a5)
    80003564:	000780e7          	jalr	a5

    80003568:	00813083          	ld	ra,8(sp)
    8000356c:	00013403          	ld	s0,0(sp)
    80003570:	01010113          	addi	sp,sp,16
    80003574:	00008067          	ret

0000000080003578 <_ZN9SemaphoreD1Ev>:
    Semaphore(unsigned init = 1) {
    80003578:	00006797          	auipc	a5,0x6
    8000357c:	17078793          	addi	a5,a5,368 # 800096e8 <_ZTV9Semaphore+0x10>
    80003580:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80003584:	00853503          	ld	a0,8(a0)
    80003588:	02050663          	beqz	a0,800035b4 <_ZN9SemaphoreD1Ev+0x3c>
    Semaphore(unsigned init = 1) {
    8000358c:	ff010113          	addi	sp,sp,-16
    80003590:	00113423          	sd	ra,8(sp)
    80003594:	00813023          	sd	s0,0(sp)
    80003598:	01010413          	addi	s0,sp,16
            myHandle = nullptr;
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	280080e7          	jalr	640(ra) # 8000181c <_Z9sem_closeP10_semaphore>
    }
    800035a4:	00813083          	ld	ra,8(sp)
    800035a8:	00013403          	ld	s0,0(sp)
    800035ac:	01010113          	addi	sp,sp,16
    800035b0:	00008067          	ret
    800035b4:	00008067          	ret

00000000800035b8 <_ZN9SemaphoreD0Ev>:
    Semaphore(unsigned init = 1) {
    800035b8:	fe010113          	addi	sp,sp,-32
    800035bc:	00113c23          	sd	ra,24(sp)
    800035c0:	00813823          	sd	s0,16(sp)
    800035c4:	00913423          	sd	s1,8(sp)
    800035c8:	02010413          	addi	s0,sp,32
    800035cc:	00050493          	mv	s1,a0
    800035d0:	00006797          	auipc	a5,0x6
    800035d4:	11878793          	addi	a5,a5,280 # 800096e8 <_ZTV9Semaphore+0x10>
    800035d8:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    800035dc:	00853503          	ld	a0,8(a0)
    800035e0:	00050663          	beqz	a0,800035ec <_ZN9SemaphoreD0Ev+0x34>
            myHandle = nullptr;
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	238080e7          	jalr	568(ra) # 8000181c <_Z9sem_closeP10_semaphore>
    }
    800035ec:	00048513          	mv	a0,s1
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	7a8080e7          	jalr	1960(ra) # 80001d98 <_ZdlPv>
    800035f8:	01813083          	ld	ra,24(sp)
    800035fc:	01013403          	ld	s0,16(sp)
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	02010113          	addi	sp,sp,32
    80003608:	00008067          	ret

000000008000360c <_ZN8Consumer3runEv>:
    void run() override {
    8000360c:	fd010113          	addi	sp,sp,-48
    80003610:	02113423          	sd	ra,40(sp)
    80003614:	02813023          	sd	s0,32(sp)
    80003618:	00913c23          	sd	s1,24(sp)
    8000361c:	01213823          	sd	s2,16(sp)
    80003620:	01313423          	sd	s3,8(sp)
    80003624:	03010413          	addi	s0,sp,48
    80003628:	00050913          	mv	s2,a0
        int i = 0;
    8000362c:	00000993          	li	s3,0
    80003630:	0100006f          	j	80003640 <_ZN8Consumer3runEv+0x34>

    virtual void periodicActivation() = 0;

    private:
    time_t period;
};
    80003634:	00a00513          	li	a0,10
    80003638:	00005097          	auipc	ra,0x5
    8000363c:	bc4080e7          	jalr	-1084(ra) # 800081fc <__putc>
        while (!threadEnd) {
    80003640:	00008797          	auipc	a5,0x8
    80003644:	42078793          	addi	a5,a5,1056 # 8000ba60 <_ZL9threadEnd>
    80003648:	0007a783          	lw	a5,0(a5)
    8000364c:	0007879b          	sext.w	a5,a5
    80003650:	02079c63          	bnez	a5,80003688 <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    80003654:	02093783          	ld	a5,32(s2)
    80003658:	0087b503          	ld	a0,8(a5)
    8000365c:	00003097          	auipc	ra,0x3
    80003660:	890080e7          	jalr	-1904(ra) # 80005eec <_ZN9BufferCPP3getEv>
            i++;
    80003664:	0019849b          	addiw	s1,s3,1
    80003668:	0004899b          	sext.w	s3,s1
    8000366c:	0ff57513          	andi	a0,a0,255
    80003670:	00005097          	auipc	ra,0x5
    80003674:	b8c080e7          	jalr	-1140(ra) # 800081fc <__putc>
            if (i % 80 == 0) {
    80003678:	05000793          	li	a5,80
    8000367c:	02f4e4bb          	remw	s1,s1,a5
    80003680:	fc0490e3          	bnez	s1,80003640 <_ZN8Consumer3runEv+0x34>
    80003684:	fb1ff06f          	j	80003634 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    80003688:	02093783          	ld	a5,32(s2)
    8000368c:	0087b503          	ld	a0,8(a5)
    80003690:	00003097          	auipc	ra,0x3
    80003694:	908080e7          	jalr	-1784(ra) # 80005f98 <_ZN9BufferCPP6getCntEv>
    80003698:	02a05263          	blez	a0,800036bc <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    8000369c:	02093783          	ld	a5,32(s2)
    800036a0:	0087b503          	ld	a0,8(a5)
    800036a4:	00003097          	auipc	ra,0x3
    800036a8:	848080e7          	jalr	-1976(ra) # 80005eec <_ZN9BufferCPP3getEv>
    800036ac:	0ff57513          	andi	a0,a0,255
    800036b0:	00005097          	auipc	ra,0x5
    800036b4:	b4c080e7          	jalr	-1204(ra) # 800081fc <__putc>
    800036b8:	fd1ff06f          	j	80003688 <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    800036bc:	02093783          	ld	a5,32(s2)
    800036c0:	0107b783          	ld	a5,16(a5)
            return -1;
    800036c4:	0087b503          	ld	a0,8(a5)
    800036c8:	00050663          	beqz	a0,800036d4 <_ZN8Consumer3runEv+0xc8>
    }
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	228080e7          	jalr	552(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
    }
    800036d4:	02813083          	ld	ra,40(sp)
    800036d8:	02013403          	ld	s0,32(sp)
    800036dc:	01813483          	ld	s1,24(sp)
    800036e0:	01013903          	ld	s2,16(sp)
    800036e4:	00813983          	ld	s3,8(sp)
    800036e8:	03010113          	addi	sp,sp,48
    800036ec:	00008067          	ret

00000000800036f0 <_ZN6ThreadD1Ev>:
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    800036f0:	ff010113          	addi	sp,sp,-16
    800036f4:	00113423          	sd	ra,8(sp)
    800036f8:	00813023          	sd	s0,0(sp)
    800036fc:	01010413          	addi	s0,sp,16
    80003700:	00006797          	auipc	a5,0x6
    80003704:	fc078793          	addi	a5,a5,-64 # 800096c0 <_ZTV6Thread+0x10>
    80003708:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	fd8080e7          	jalr	-40(ra) # 800016e4 <_Z11thread_exitv>
        thread_exit();
    80003714:	00813083          	ld	ra,8(sp)
    80003718:	00013403          	ld	s0,0(sp)
    8000371c:	01010113          	addi	sp,sp,16
    80003720:	00008067          	ret

0000000080003724 <_ZN6ThreadD0Ev>:
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    80003724:	fe010113          	addi	sp,sp,-32
    80003728:	00113c23          	sd	ra,24(sp)
    8000372c:	00813823          	sd	s0,16(sp)
    80003730:	00913423          	sd	s1,8(sp)
    80003734:	02010413          	addi	s0,sp,32
    80003738:	00050493          	mv	s1,a0
    8000373c:	00006797          	auipc	a5,0x6
    80003740:	f8478793          	addi	a5,a5,-124 # 800096c0 <_ZTV6Thread+0x10>
    80003744:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	f9c080e7          	jalr	-100(ra) # 800016e4 <_Z11thread_exitv>
        thread_exit();
    80003750:	00048513          	mv	a0,s1
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	644080e7          	jalr	1604(ra) # 80001d98 <_ZdlPv>
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	00813483          	ld	s1,8(sp)
    80003768:	02010113          	addi	sp,sp,32
    8000376c:	00008067          	ret

0000000080003770 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00113423          	sd	ra,8(sp)
    80003778:	00813023          	sd	s0,0(sp)
    8000377c:	01010413          	addi	s0,sp,16
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    80003780:	00006797          	auipc	a5,0x6
    80003784:	f4078793          	addi	a5,a5,-192 # 800096c0 <_ZTV6Thread+0x10>
    80003788:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	f58080e7          	jalr	-168(ra) # 800016e4 <_Z11thread_exitv>
    80003794:	00813083          	ld	ra,8(sp)
    80003798:	00013403          	ld	s0,0(sp)
    8000379c:	01010113          	addi	sp,sp,16
    800037a0:	00008067          	ret

00000000800037a4 <_ZN8ConsumerD0Ev>:
    800037a4:	fe010113          	addi	sp,sp,-32
    800037a8:	00113c23          	sd	ra,24(sp)
    800037ac:	00813823          	sd	s0,16(sp)
    800037b0:	00913423          	sd	s1,8(sp)
    800037b4:	02010413          	addi	s0,sp,32
    800037b8:	00050493          	mv	s1,a0
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    800037bc:	00006797          	auipc	a5,0x6
    800037c0:	f0478793          	addi	a5,a5,-252 # 800096c0 <_ZTV6Thread+0x10>
    800037c4:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	f1c080e7          	jalr	-228(ra) # 800016e4 <_Z11thread_exitv>
    800037d0:	00048513          	mv	a0,s1
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	5c4080e7          	jalr	1476(ra) # 80001d98 <_ZdlPv>
    800037dc:	01813083          	ld	ra,24(sp)
    800037e0:	01013403          	ld	s0,16(sp)
    800037e4:	00813483          	ld	s1,8(sp)
    800037e8:	02010113          	addi	sp,sp,32
    800037ec:	00008067          	ret

00000000800037f0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800037f0:	ff010113          	addi	sp,sp,-16
    800037f4:	00113423          	sd	ra,8(sp)
    800037f8:	00813023          	sd	s0,0(sp)
    800037fc:	01010413          	addi	s0,sp,16
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    80003800:	00006797          	auipc	a5,0x6
    80003804:	ec078793          	addi	a5,a5,-320 # 800096c0 <_ZTV6Thread+0x10>
    80003808:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	ed8080e7          	jalr	-296(ra) # 800016e4 <_Z11thread_exitv>
    80003814:	00813083          	ld	ra,8(sp)
    80003818:	00013403          	ld	s0,0(sp)
    8000381c:	01010113          	addi	sp,sp,16
    80003820:	00008067          	ret

0000000080003824 <_ZN16ProducerKeyboradD0Ev>:
    80003824:	fe010113          	addi	sp,sp,-32
    80003828:	00113c23          	sd	ra,24(sp)
    8000382c:	00813823          	sd	s0,16(sp)
    80003830:	00913423          	sd	s1,8(sp)
    80003834:	02010413          	addi	s0,sp,32
    80003838:	00050493          	mv	s1,a0
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    8000383c:	00006797          	auipc	a5,0x6
    80003840:	e8478793          	addi	a5,a5,-380 # 800096c0 <_ZTV6Thread+0x10>
    80003844:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	e9c080e7          	jalr	-356(ra) # 800016e4 <_Z11thread_exitv>
    80003850:	00048513          	mv	a0,s1
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	544080e7          	jalr	1348(ra) # 80001d98 <_ZdlPv>
    8000385c:	01813083          	ld	ra,24(sp)
    80003860:	01013403          	ld	s0,16(sp)
    80003864:	00813483          	ld	s1,8(sp)
    80003868:	02010113          	addi	sp,sp,32
    8000386c:	00008067          	ret

0000000080003870 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003870:	ff010113          	addi	sp,sp,-16
    80003874:	00113423          	sd	ra,8(sp)
    80003878:	00813023          	sd	s0,0(sp)
    8000387c:	01010413          	addi	s0,sp,16
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    80003880:	00006797          	auipc	a5,0x6
    80003884:	e4078793          	addi	a5,a5,-448 # 800096c0 <_ZTV6Thread+0x10>
    80003888:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	e58080e7          	jalr	-424(ra) # 800016e4 <_Z11thread_exitv>
    80003894:	00813083          	ld	ra,8(sp)
    80003898:	00013403          	ld	s0,0(sp)
    8000389c:	01010113          	addi	sp,sp,16
    800038a0:	00008067          	ret

00000000800038a4 <_ZN8ProducerD0Ev>:
    800038a4:	fe010113          	addi	sp,sp,-32
    800038a8:	00113c23          	sd	ra,24(sp)
    800038ac:	00813823          	sd	s0,16(sp)
    800038b0:	00913423          	sd	s1,8(sp)
    800038b4:	02010413          	addi	s0,sp,32
    800038b8:	00050493          	mv	s1,a0
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    800038bc:	00006797          	auipc	a5,0x6
    800038c0:	e0478793          	addi	a5,a5,-508 # 800096c0 <_ZTV6Thread+0x10>
    800038c4:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	e1c080e7          	jalr	-484(ra) # 800016e4 <_Z11thread_exitv>
    800038d0:	00048513          	mv	a0,s1
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	4c4080e7          	jalr	1220(ra) # 80001d98 <_ZdlPv>
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	00813483          	ld	s1,8(sp)
    800038e8:	02010113          	addi	sp,sp,32
    800038ec:	00008067          	ret

00000000800038f0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800038f0:	fe010113          	addi	sp,sp,-32
    800038f4:	00113c23          	sd	ra,24(sp)
    800038f8:	00813823          	sd	s0,16(sp)
    800038fc:	00913423          	sd	s1,8(sp)
    80003900:	02010413          	addi	s0,sp,32
    80003904:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	074080e7          	jalr	116(ra) # 8000197c <_Z4getcv>
    80003910:	0005059b          	sext.w	a1,a0
    80003914:	01b00793          	li	a5,27
    80003918:	00f58c63          	beq	a1,a5,80003930 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000391c:	0204b783          	ld	a5,32(s1)
    80003920:	0087b503          	ld	a0,8(a5)
    80003924:	00002097          	auipc	ra,0x2
    80003928:	518080e7          	jalr	1304(ra) # 80005e3c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000392c:	fddff06f          	j	80003908 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003930:	00100793          	li	a5,1
    80003934:	00008717          	auipc	a4,0x8
    80003938:	12f72623          	sw	a5,300(a4) # 8000ba60 <_ZL9threadEnd>
        td->buffer->put('!');
    8000393c:	0204b783          	ld	a5,32(s1)
    80003940:	02100593          	li	a1,33
    80003944:	0087b503          	ld	a0,8(a5)
    80003948:	00002097          	auipc	ra,0x2
    8000394c:	4f4080e7          	jalr	1268(ra) # 80005e3c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003950:	0204b783          	ld	a5,32(s1)
    80003954:	0107b783          	ld	a5,16(a5)
            return -1;
    80003958:	0087b503          	ld	a0,8(a5)
    8000395c:	00050663          	beqz	a0,80003968 <_ZN16ProducerKeyborad3runEv+0x78>
    }
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	f94080e7          	jalr	-108(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
    }
    80003968:	01813083          	ld	ra,24(sp)
    8000396c:	01013403          	ld	s0,16(sp)
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00008067          	ret

000000008000397c <_ZN8Producer3runEv>:
    void run() override {
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00113c23          	sd	ra,24(sp)
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80003994:	00008797          	auipc	a5,0x8
    80003998:	0cc78793          	addi	a5,a5,204 # 8000ba60 <_ZL9threadEnd>
    8000399c:	0007a783          	lw	a5,0(a5)
    800039a0:	0007879b          	sext.w	a5,a5
    800039a4:	02079063          	bnez	a5,800039c4 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    800039a8:	0204b783          	ld	a5,32(s1)
    800039ac:	0007a583          	lw	a1,0(a5)
    800039b0:	0305859b          	addiw	a1,a1,48
    800039b4:	0087b503          	ld	a0,8(a5)
    800039b8:	00002097          	auipc	ra,0x2
    800039bc:	484080e7          	jalr	1156(ra) # 80005e3c <_ZN9BufferCPP3putEi>
        thread_dispatch();
    800039c0:	fd5ff06f          	j	80003994 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    800039c4:	0204b783          	ld	a5,32(s1)
    800039c8:	0107b783          	ld	a5,16(a5)
            return -1;
    800039cc:	0087b503          	ld	a0,8(a5)
    800039d0:	00050663          	beqz	a0,800039dc <_ZN8Producer3runEv+0x60>
    }
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	f20080e7          	jalr	-224(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
    }
    800039dc:	01813083          	ld	ra,24(sp)
    800039e0:	01013403          	ld	s0,16(sp)
    800039e4:	00813483          	ld	s1,8(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret

00000000800039f0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	00813823          	sd	s0,16(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	01213023          	sd	s2,0(sp)
    80003a04:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80003a08:	00006517          	auipc	a0,0x6
    80003a0c:	e7050513          	addi	a0,a0,-400 # 80009878 <_ZTV8Consumer+0x130>
    80003a10:	00002097          	auipc	ra,0x2
    80003a14:	a88080e7          	jalr	-1400(ra) # 80005498 <_Z11printStringPKc>
    int test = getc() - '0';
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	f64080e7          	jalr	-156(ra) # 8000197c <_Z4getcv>
    80003a20:	00050913          	mv	s2,a0
    80003a24:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	f54080e7          	jalr	-172(ra) # 8000197c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80003a30:	fcb9091b          	addiw	s2,s2,-53
    80003a34:	00100793          	li	a5,1
    80003a38:	0327f463          	bgeu	a5,s2,80003a60 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003a3c:	00700793          	li	a5,7
    80003a40:	0e97e263          	bltu	a5,s1,80003b24 <_Z8userMainv+0x134>
    80003a44:	00249493          	slli	s1,s1,0x2
    80003a48:	00006717          	auipc	a4,0x6
    80003a4c:	e0c70713          	addi	a4,a4,-500 # 80009854 <_ZTV8Consumer+0x10c>
    80003a50:	00e484b3          	add	s1,s1,a4
    80003a54:	0004a783          	lw	a5,0(s1)
    80003a58:	00e787b3          	add	a5,a5,a4
    80003a5c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80003a60:	00006517          	auipc	a0,0x6
    80003a64:	e3850513          	addi	a0,a0,-456 # 80009898 <_ZTV8Consumer+0x150>
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	a30080e7          	jalr	-1488(ra) # 80005498 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	00013903          	ld	s2,0(sp)
    80003a80:	02010113          	addi	sp,sp,32
    80003a84:	00008067          	ret
            Threads_C_API_test();
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	efc080e7          	jalr	-260(ra) # 80004984 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003a90:	00006517          	auipc	a0,0x6
    80003a94:	e3850513          	addi	a0,a0,-456 # 800098c8 <_ZTV8Consumer+0x180>
    80003a98:	00002097          	auipc	ra,0x2
    80003a9c:	a00080e7          	jalr	-1536(ra) # 80005498 <_Z11printStringPKc>
            break;
    80003aa0:	fd1ff06f          	j	80003a70 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80003aa4:	00000097          	auipc	ra,0x0
    80003aa8:	564080e7          	jalr	1380(ra) # 80004008 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003aac:	00006517          	auipc	a0,0x6
    80003ab0:	e5c50513          	addi	a0,a0,-420 # 80009908 <_ZTV8Consumer+0x1c0>
    80003ab4:	00002097          	auipc	ra,0x2
    80003ab8:	9e4080e7          	jalr	-1564(ra) # 80005498 <_Z11printStringPKc>
            break;
    80003abc:	fb5ff06f          	j	80003a70 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	ee4080e7          	jalr	-284(ra) # 800059a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80003ac8:	00006517          	auipc	a0,0x6
    80003acc:	e8050513          	addi	a0,a0,-384 # 80009948 <_ZTV8Consumer+0x200>
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	9c8080e7          	jalr	-1592(ra) # 80005498 <_Z11printStringPKc>
            break;
    80003ad8:	f99ff06f          	j	80003a70 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80003adc:	00001097          	auipc	ra,0x1
    80003ae0:	238080e7          	jalr	568(ra) # 80004d14 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80003ae4:	00006517          	auipc	a0,0x6
    80003ae8:	eb450513          	addi	a0,a0,-332 # 80009998 <_ZTV8Consumer+0x250>
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	9ac080e7          	jalr	-1620(ra) # 80005498 <_Z11printStringPKc>
            break;
    80003af4:	f7dff06f          	j	80003a70 <_Z8userMainv+0x80>
            System_Mode_test();
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	1a4080e7          	jalr	420(ra) # 80002c9c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003b00:	00006517          	auipc	a0,0x6
    80003b04:	ef050513          	addi	a0,a0,-272 # 800099f0 <_ZTV8Consumer+0x2a8>
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	990080e7          	jalr	-1648(ra) # 80005498 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003b10:	00006517          	auipc	a0,0x6
    80003b14:	f0050513          	addi	a0,a0,-256 # 80009a10 <_ZTV8Consumer+0x2c8>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	980080e7          	jalr	-1664(ra) # 80005498 <_Z11printStringPKc>
            break;
    80003b20:	f51ff06f          	j	80003a70 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80003b24:	00006517          	auipc	a0,0x6
    80003b28:	f4450513          	addi	a0,a0,-188 # 80009a68 <_ZTV8Consumer+0x320>
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	96c080e7          	jalr	-1684(ra) # 80005498 <_Z11printStringPKc>
    80003b34:	f3dff06f          	j	80003a70 <_Z8userMainv+0x80>

0000000080003b38 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80003b38:	00100793          	li	a5,1
    80003b3c:	06a7f863          	bgeu	a5,a0,80003bac <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	00813823          	sd	s0,16(sp)
    80003b4c:	00913423          	sd	s1,8(sp)
    80003b50:	01213023          	sd	s2,0(sp)
    80003b54:	02010413          	addi	s0,sp,32
    80003b58:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80003b5c:	00a00793          	li	a5,10
    80003b60:	02f577b3          	remu	a5,a0,a5
    80003b64:	02078e63          	beqz	a5,80003ba0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b68:	fff48513          	addi	a0,s1,-1
    80003b6c:	00000097          	auipc	ra,0x0
    80003b70:	fcc080e7          	jalr	-52(ra) # 80003b38 <_ZL9fibonaccim>
    80003b74:	00050913          	mv	s2,a0
    80003b78:	ffe48513          	addi	a0,s1,-2
    80003b7c:	00000097          	auipc	ra,0x0
    80003b80:	fbc080e7          	jalr	-68(ra) # 80003b38 <_ZL9fibonaccim>
    80003b84:	00a90533          	add	a0,s2,a0
}
    80003b88:	01813083          	ld	ra,24(sp)
    80003b8c:	01013403          	ld	s0,16(sp)
    80003b90:	00813483          	ld	s1,8(sp)
    80003b94:	00013903          	ld	s2,0(sp)
    80003b98:	02010113          	addi	sp,sp,32
    80003b9c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	ba4080e7          	jalr	-1116(ra) # 80001744 <_Z15thread_dispatchv>
    80003ba8:	fc1ff06f          	j	80003b68 <_ZL9fibonaccim+0x30>
}
    80003bac:	00008067          	ret

0000000080003bb0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003bc8:	00000913          	li	s2,0
    80003bcc:	0300006f          	j	80003bfc <_ZN7WorkerA11workerBodyAEPv+0x4c>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003bd0:	00178793          	addi	a5,a5,1
    80003bd4:	01d00713          	li	a4,29
    80003bd8:	fef77ce3          	bgeu	a4,a5,80003bd0 <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	b68080e7          	jalr	-1176(ra) # 80001744 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003be4:	00148493          	addi	s1,s1,1
    80003be8:	00900793          	li	a5,9
    80003bec:	0097e663          	bltu	a5,s1,80003bf8 <_ZN7WorkerA11workerBodyAEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003bf0:	00000793          	li	a5,0
    80003bf4:	fe1ff06f          	j	80003bd4 <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80003bf8:	00190913          	addi	s2,s2,1
    80003bfc:	00900793          	li	a5,9
    80003c00:	0527e063          	bltu	a5,s2,80003c40 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80003c04:	00006517          	auipc	a0,0x6
    80003c08:	a2c50513          	addi	a0,a0,-1492 # 80009630 <_ZZ24debug_print_internal_intmE6digits+0x378>
    80003c0c:	00002097          	auipc	ra,0x2
    80003c10:	88c080e7          	jalr	-1908(ra) # 80005498 <_Z11printStringPKc>
    80003c14:	00000613          	li	a2,0
    80003c18:	00a00593          	li	a1,10
    80003c1c:	0009051b          	sext.w	a0,s2
    80003c20:	00002097          	auipc	ra,0x2
    80003c24:	a24080e7          	jalr	-1500(ra) # 80005644 <_Z8printIntiii>
    80003c28:	00005517          	auipc	a0,0x5
    80003c2c:	73850513          	addi	a0,a0,1848 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	868080e7          	jalr	-1944(ra) # 80005498 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003c38:	00000493          	li	s1,0
    80003c3c:	fadff06f          	j	80003be8 <_ZN7WorkerA11workerBodyAEPv+0x38>
        }
    }
    printString("A finished!\n");
    80003c40:	00006517          	auipc	a0,0x6
    80003c44:	9c850513          	addi	a0,a0,-1592 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80003c48:	00002097          	auipc	ra,0x2
    80003c4c:	850080e7          	jalr	-1968(ra) # 80005498 <_Z11printStringPKc>
    finishedA = true;
    80003c50:	00100793          	li	a5,1
    80003c54:	00008717          	auipc	a4,0x8
    80003c58:	e0f70fa3          	sb	a5,-481(a4) # 8000ba73 <_ZL9finishedA>
}
    80003c5c:	01813083          	ld	ra,24(sp)
    80003c60:	01013403          	ld	s0,16(sp)
    80003c64:	00813483          	ld	s1,8(sp)
    80003c68:	00013903          	ld	s2,0(sp)
    80003c6c:	02010113          	addi	sp,sp,32
    80003c70:	00008067          	ret

0000000080003c74 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003c74:	fe010113          	addi	sp,sp,-32
    80003c78:	00113c23          	sd	ra,24(sp)
    80003c7c:	00813823          	sd	s0,16(sp)
    80003c80:	00913423          	sd	s1,8(sp)
    80003c84:	01213023          	sd	s2,0(sp)
    80003c88:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c8c:	00000913          	li	s2,0
    80003c90:	0300006f          	j	80003cc0 <_ZN7WorkerB11workerBodyBEPv+0x4c>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10; j++) {
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003c94:	00178793          	addi	a5,a5,1
    80003c98:	01d00713          	li	a4,29
    80003c9c:	fef77ce3          	bgeu	a4,a5,80003c94 <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	aa4080e7          	jalr	-1372(ra) # 80001744 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80003ca8:	00148493          	addi	s1,s1,1
    80003cac:	00900793          	li	a5,9
    80003cb0:	0097e663          	bltu	a5,s1,80003cbc <_ZN7WorkerB11workerBodyBEPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80003cb4:	00000793          	li	a5,0
    80003cb8:	fe1ff06f          	j	80003c98 <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80003cbc:	00190913          	addi	s2,s2,1
    80003cc0:	00f00793          	li	a5,15
    80003cc4:	0527e063          	bltu	a5,s2,80003d04 <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80003cc8:	00006517          	auipc	a0,0x6
    80003ccc:	95050513          	addi	a0,a0,-1712 # 80009618 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	7c8080e7          	jalr	1992(ra) # 80005498 <_Z11printStringPKc>
    80003cd8:	00000613          	li	a2,0
    80003cdc:	00a00593          	li	a1,10
    80003ce0:	0009051b          	sext.w	a0,s2
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	960080e7          	jalr	-1696(ra) # 80005644 <_Z8printIntiii>
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	67450513          	addi	a0,a0,1652 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	7a4080e7          	jalr	1956(ra) # 80005498 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80003cfc:	00000493          	li	s1,0
    80003d00:	fadff06f          	j	80003cac <_ZN7WorkerB11workerBodyBEPv+0x38>
        }
    }
    printString("B finished!\n");
    80003d04:	00006517          	auipc	a0,0x6
    80003d08:	91c50513          	addi	a0,a0,-1764 # 80009620 <_ZZ24debug_print_internal_intmE6digits+0x368>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	78c080e7          	jalr	1932(ra) # 80005498 <_Z11printStringPKc>
    finishedB = true;
    80003d14:	00100793          	li	a5,1
    80003d18:	00008717          	auipc	a4,0x8
    80003d1c:	d4f70d23          	sb	a5,-678(a4) # 8000ba72 <_ZL9finishedB>
    thread_dispatch();
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	a24080e7          	jalr	-1500(ra) # 80001744 <_Z15thread_dispatchv>
}
    80003d28:	01813083          	ld	ra,24(sp)
    80003d2c:	01013403          	ld	s0,16(sp)
    80003d30:	00813483          	ld	s1,8(sp)
    80003d34:	00013903          	ld	s2,0(sp)
    80003d38:	02010113          	addi	sp,sp,32
    80003d3c:	00008067          	ret

0000000080003d40 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003d40:	fe010113          	addi	sp,sp,-32
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00813823          	sd	s0,16(sp)
    80003d4c:	00913423          	sd	s1,8(sp)
    80003d50:	01213023          	sd	s2,0(sp)
    80003d54:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d58:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80003d5c:	00200793          	li	a5,2
    80003d60:	0497e263          	bltu	a5,s1,80003da4 <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80003d64:	00006517          	auipc	a0,0x6
    80003d68:	87450513          	addi	a0,a0,-1932 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80003d6c:	00001097          	auipc	ra,0x1
    80003d70:	72c080e7          	jalr	1836(ra) # 80005498 <_Z11printStringPKc>
    80003d74:	00000613          	li	a2,0
    80003d78:	00a00593          	li	a1,10
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	00002097          	auipc	ra,0x2
    80003d84:	8c4080e7          	jalr	-1852(ra) # 80005644 <_Z8printIntiii>
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	5d850513          	addi	a0,a0,1496 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003d90:	00001097          	auipc	ra,0x1
    80003d94:	708080e7          	jalr	1800(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d98:	0014849b          	addiw	s1,s1,1
    80003d9c:	0ff4f493          	andi	s1,s1,255
    80003da0:	fbdff06f          	j	80003d5c <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    80003da4:	00006517          	auipc	a0,0x6
    80003da8:	83c50513          	addi	a0,a0,-1988 # 800095e0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	6ec080e7          	jalr	1772(ra) # 80005498 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003db4:	00700313          	li	t1,7
    thread_dispatch();
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	98c080e7          	jalr	-1652(ra) # 80001744 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003dc0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003dc4:	00006517          	auipc	a0,0x6
    80003dc8:	82c50513          	addi	a0,a0,-2004 # 800095f0 <_ZZ24debug_print_internal_intmE6digits+0x338>
    80003dcc:	00001097          	auipc	ra,0x1
    80003dd0:	6cc080e7          	jalr	1740(ra) # 80005498 <_Z11printStringPKc>
    80003dd4:	00000613          	li	a2,0
    80003dd8:	00a00593          	li	a1,10
    80003ddc:	0009051b          	sext.w	a0,s2
    80003de0:	00002097          	auipc	ra,0x2
    80003de4:	864080e7          	jalr	-1948(ra) # 80005644 <_Z8printIntiii>
    80003de8:	00005517          	auipc	a0,0x5
    80003dec:	57850513          	addi	a0,a0,1400 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	6a8080e7          	jalr	1704(ra) # 80005498 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003df8:	00c00513          	li	a0,12
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	d3c080e7          	jalr	-708(ra) # 80003b38 <_ZL9fibonaccim>
    80003e04:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e08:	00005517          	auipc	a0,0x5
    80003e0c:	7f050513          	addi	a0,a0,2032 # 800095f8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80003e10:	00001097          	auipc	ra,0x1
    80003e14:	688080e7          	jalr	1672(ra) # 80005498 <_Z11printStringPKc>
    80003e18:	00000613          	li	a2,0
    80003e1c:	00a00593          	li	a1,10
    80003e20:	0009051b          	sext.w	a0,s2
    80003e24:	00002097          	auipc	ra,0x2
    80003e28:	820080e7          	jalr	-2016(ra) # 80005644 <_Z8printIntiii>
    80003e2c:	00005517          	auipc	a0,0x5
    80003e30:	53450513          	addi	a0,a0,1332 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	664080e7          	jalr	1636(ra) # 80005498 <_Z11printStringPKc>

    for (; i < 6; i++) {
    80003e3c:	00500793          	li	a5,5
    80003e40:	0497e263          	bltu	a5,s1,80003e84 <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80003e44:	00005517          	auipc	a0,0x5
    80003e48:	79450513          	addi	a0,a0,1940 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80003e4c:	00001097          	auipc	ra,0x1
    80003e50:	64c080e7          	jalr	1612(ra) # 80005498 <_Z11printStringPKc>
    80003e54:	00000613          	li	a2,0
    80003e58:	00a00593          	li	a1,10
    80003e5c:	00048513          	mv	a0,s1
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	7e4080e7          	jalr	2020(ra) # 80005644 <_Z8printIntiii>
    80003e68:	00005517          	auipc	a0,0x5
    80003e6c:	4f850513          	addi	a0,a0,1272 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003e70:	00001097          	auipc	ra,0x1
    80003e74:	628080e7          	jalr	1576(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e78:	0014849b          	addiw	s1,s1,1
    80003e7c:	0ff4f493          	andi	s1,s1,255
    80003e80:	fbdff06f          	j	80003e3c <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    80003e84:	00005517          	auipc	a0,0x5
    80003e88:	78450513          	addi	a0,a0,1924 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80003e8c:	00001097          	auipc	ra,0x1
    80003e90:	60c080e7          	jalr	1548(ra) # 80005498 <_Z11printStringPKc>
    finishedC = true;
    80003e94:	00100793          	li	a5,1
    80003e98:	00008717          	auipc	a4,0x8
    80003e9c:	bcf70ca3          	sb	a5,-1063(a4) # 8000ba71 <_ZL9finishedC>
    thread_dispatch();
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	8a4080e7          	jalr	-1884(ra) # 80001744 <_Z15thread_dispatchv>
}
    80003ea8:	01813083          	ld	ra,24(sp)
    80003eac:	01013403          	ld	s0,16(sp)
    80003eb0:	00813483          	ld	s1,8(sp)
    80003eb4:	00013903          	ld	s2,0(sp)
    80003eb8:	02010113          	addi	sp,sp,32
    80003ebc:	00008067          	ret

0000000080003ec0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00113c23          	sd	ra,24(sp)
    80003ec8:	00813823          	sd	s0,16(sp)
    80003ecc:	00913423          	sd	s1,8(sp)
    80003ed0:	01213023          	sd	s2,0(sp)
    80003ed4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ed8:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80003edc:	00c00793          	li	a5,12
    80003ee0:	0497e263          	bltu	a5,s1,80003f24 <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80003ee4:	00005517          	auipc	a0,0x5
    80003ee8:	6bc50513          	addi	a0,a0,1724 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x2e8>
    80003eec:	00001097          	auipc	ra,0x1
    80003ef0:	5ac080e7          	jalr	1452(ra) # 80005498 <_Z11printStringPKc>
    80003ef4:	00000613          	li	a2,0
    80003ef8:	00a00593          	li	a1,10
    80003efc:	00048513          	mv	a0,s1
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	744080e7          	jalr	1860(ra) # 80005644 <_Z8printIntiii>
    80003f08:	00005517          	auipc	a0,0x5
    80003f0c:	45850513          	addi	a0,a0,1112 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	588080e7          	jalr	1416(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003f18:	0014849b          	addiw	s1,s1,1
    80003f1c:	0ff4f493          	andi	s1,s1,255
    80003f20:	fbdff06f          	j	80003edc <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    80003f24:	00005517          	auipc	a0,0x5
    80003f28:	68450513          	addi	a0,a0,1668 # 800095a8 <_ZZ24debug_print_internal_intmE6digits+0x2f0>
    80003f2c:	00001097          	auipc	ra,0x1
    80003f30:	56c080e7          	jalr	1388(ra) # 80005498 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003f34:	00500313          	li	t1,5
    thread_dispatch();
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	80c080e7          	jalr	-2036(ra) # 80001744 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003f40:	01000513          	li	a0,16
    80003f44:	00000097          	auipc	ra,0x0
    80003f48:	bf4080e7          	jalr	-1036(ra) # 80003b38 <_ZL9fibonaccim>
    80003f4c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003f50:	00005517          	auipc	a0,0x5
    80003f54:	66850513          	addi	a0,a0,1640 # 800095b8 <_ZZ24debug_print_internal_intmE6digits+0x300>
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	540080e7          	jalr	1344(ra) # 80005498 <_Z11printStringPKc>
    80003f60:	00000613          	li	a2,0
    80003f64:	00a00593          	li	a1,10
    80003f68:	0009051b          	sext.w	a0,s2
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	6d8080e7          	jalr	1752(ra) # 80005644 <_Z8printIntiii>
    80003f74:	00005517          	auipc	a0,0x5
    80003f78:	3ec50513          	addi	a0,a0,1004 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003f7c:	00001097          	auipc	ra,0x1
    80003f80:	51c080e7          	jalr	1308(ra) # 80005498 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80003f84:	00f00793          	li	a5,15
    80003f88:	0497e263          	bltu	a5,s1,80003fcc <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80003f8c:	00005517          	auipc	a0,0x5
    80003f90:	61450513          	addi	a0,a0,1556 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x2e8>
    80003f94:	00001097          	auipc	ra,0x1
    80003f98:	504080e7          	jalr	1284(ra) # 80005498 <_Z11printStringPKc>
    80003f9c:	00000613          	li	a2,0
    80003fa0:	00a00593          	li	a1,10
    80003fa4:	00048513          	mv	a0,s1
    80003fa8:	00001097          	auipc	ra,0x1
    80003fac:	69c080e7          	jalr	1692(ra) # 80005644 <_Z8printIntiii>
    80003fb0:	00005517          	auipc	a0,0x5
    80003fb4:	3b050513          	addi	a0,a0,944 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80003fb8:	00001097          	auipc	ra,0x1
    80003fbc:	4e0080e7          	jalr	1248(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003fc0:	0014849b          	addiw	s1,s1,1
    80003fc4:	0ff4f493          	andi	s1,s1,255
    80003fc8:	fbdff06f          	j	80003f84 <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    80003fcc:	00005517          	auipc	a0,0x5
    80003fd0:	5fc50513          	addi	a0,a0,1532 # 800095c8 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	4c4080e7          	jalr	1220(ra) # 80005498 <_Z11printStringPKc>
    finishedD = true;
    80003fdc:	00100793          	li	a5,1
    80003fe0:	00008717          	auipc	a4,0x8
    80003fe4:	a8f70823          	sb	a5,-1392(a4) # 8000ba70 <_ZL9finishedD>
    thread_dispatch();
    80003fe8:	ffffd097          	auipc	ra,0xffffd
    80003fec:	75c080e7          	jalr	1884(ra) # 80001744 <_Z15thread_dispatchv>
}
    80003ff0:	01813083          	ld	ra,24(sp)
    80003ff4:	01013403          	ld	s0,16(sp)
    80003ff8:	00813483          	ld	s1,8(sp)
    80003ffc:	00013903          	ld	s2,0(sp)
    80004000:	02010113          	addi	sp,sp,32
    80004004:	00008067          	ret

0000000080004008 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004008:	fc010113          	addi	sp,sp,-64
    8000400c:	02113c23          	sd	ra,56(sp)
    80004010:	02813823          	sd	s0,48(sp)
    80004014:	02913423          	sd	s1,40(sp)
    80004018:	03213023          	sd	s2,32(sp)
    8000401c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004020:	02000513          	li	a0,32
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	cf4080e7          	jalr	-780(ra) # 80001d18 <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    8000402c:	00053423          	sd	zero,8(a0)
    80004030:	00053823          	sd	zero,16(a0)
    80004034:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    80004038:	00006797          	auipc	a5,0x6
    8000403c:	a6878793          	addi	a5,a5,-1432 # 80009aa0 <_ZTV7WorkerA+0x10>
    80004040:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    80004044:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80004048:	00005517          	auipc	a0,0x5
    8000404c:	5f050513          	addi	a0,a0,1520 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x380>
    80004050:	00001097          	auipc	ra,0x1
    80004054:	448080e7          	jalr	1096(ra) # 80005498 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004058:	02000513          	li	a0,32
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	cbc080e7          	jalr	-836(ra) # 80001d18 <_Znwm>
    80004064:	00053423          	sd	zero,8(a0)
    80004068:	00053823          	sd	zero,16(a0)
    8000406c:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    80004070:	00006797          	auipc	a5,0x6
    80004074:	a5878793          	addi	a5,a5,-1448 # 80009ac8 <_ZTV7WorkerB+0x10>
    80004078:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    8000407c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80004080:	00005517          	auipc	a0,0x5
    80004084:	5d050513          	addi	a0,a0,1488 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x398>
    80004088:	00001097          	auipc	ra,0x1
    8000408c:	410080e7          	jalr	1040(ra) # 80005498 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004090:	02000513          	li	a0,32
    80004094:	ffffe097          	auipc	ra,0xffffe
    80004098:	c84080e7          	jalr	-892(ra) # 80001d18 <_Znwm>
    8000409c:	00053423          	sd	zero,8(a0)
    800040a0:	00053823          	sd	zero,16(a0)
    800040a4:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    800040a8:	00006797          	auipc	a5,0x6
    800040ac:	a4878793          	addi	a5,a5,-1464 # 80009af0 <_ZTV7WorkerC+0x10>
    800040b0:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    800040b4:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	5b050513          	addi	a0,a0,1456 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x3b0>
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	3d8080e7          	jalr	984(ra) # 80005498 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800040c8:	02000513          	li	a0,32
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	c4c080e7          	jalr	-948(ra) # 80001d18 <_Znwm>
    800040d4:	00053423          	sd	zero,8(a0)
    800040d8:	00053823          	sd	zero,16(a0)
    800040dc:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    800040e0:	00006797          	auipc	a5,0x6
    800040e4:	a3878793          	addi	a5,a5,-1480 # 80009b18 <_ZTV7WorkerD+0x10>
    800040e8:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    800040ec:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800040f0:	00005517          	auipc	a0,0x5
    800040f4:	59050513          	addi	a0,a0,1424 # 80009680 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	3a0080e7          	jalr	928(ra) # 80005498 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004100:	00000493          	li	s1,0
    80004104:	00c0006f          	j	80004110 <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    80004108:	00093423          	sd	zero,8(s2)
    8000410c:	0014849b          	addiw	s1,s1,1
    80004110:	00300793          	li	a5,3
    80004114:	0497ce63          	blt	a5,s1,80004170 <_Z20Threads_CPP_API_testv+0x168>
        threads[i]->start();
    80004118:	00349793          	slli	a5,s1,0x3
    8000411c:	fe040713          	addi	a4,s0,-32
    80004120:	00f707b3          	add	a5,a4,a5
    80004124:	fe07b903          	ld	s2,-32(a5)
        debug_print("CPP API: Starting thread\n");
    80004128:	00006517          	auipc	a0,0x6
    8000412c:	a0850513          	addi	a0,a0,-1528 # 80009b30 <_ZTV7WorkerD+0x28>
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	d58080e7          	jalr	-680(ra) # 80001e88 <_Z11debug_printPKc>
        if(thread_create(&myHandle, &Thread::body_exec, (void*)this) != 0) {
    80004138:	00090613          	mv	a2,s2
    8000413c:	fffff597          	auipc	a1,0xfffff
    80004140:	41058593          	addi	a1,a1,1040 # 8000354c <_ZN6Thread9body_execEPv>
    80004144:	00890513          	addi	a0,s2,8
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	518080e7          	jalr	1304(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    80004150:	fa051ce3          	bnez	a0,80004108 <_Z20Threads_CPP_API_testv+0x100>
        debug_print("CPP API: Thread started\n");
    80004154:	00006517          	auipc	a0,0x6
    80004158:	9fc50513          	addi	a0,a0,-1540 # 80009b50 <_ZTV7WorkerD+0x48>
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	d2c080e7          	jalr	-724(ra) # 80001e88 <_Z11debug_printPKc>
        return 0;
    80004164:	fa9ff06f          	j	8000410c <_Z20Threads_CPP_API_testv+0x104>
        thread_dispatch();
    80004168:	ffffd097          	auipc	ra,0xffffd
    8000416c:	5dc080e7          	jalr	1500(ra) # 80001744 <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004170:	00008797          	auipc	a5,0x8
    80004174:	90378793          	addi	a5,a5,-1789 # 8000ba73 <_ZL9finishedA>
    80004178:	0007c783          	lbu	a5,0(a5)
    8000417c:	0ff7f793          	andi	a5,a5,255
    80004180:	fe0784e3          	beqz	a5,80004168 <_Z20Threads_CPP_API_testv+0x160>
    80004184:	00008797          	auipc	a5,0x8
    80004188:	8ee78793          	addi	a5,a5,-1810 # 8000ba72 <_ZL9finishedB>
    8000418c:	0007c783          	lbu	a5,0(a5)
    80004190:	0ff7f793          	andi	a5,a5,255
    80004194:	fc078ae3          	beqz	a5,80004168 <_Z20Threads_CPP_API_testv+0x160>
    80004198:	00008797          	auipc	a5,0x8
    8000419c:	8d978793          	addi	a5,a5,-1831 # 8000ba71 <_ZL9finishedC>
    800041a0:	0007c783          	lbu	a5,0(a5)
    800041a4:	0ff7f793          	andi	a5,a5,255
    800041a8:	fc0780e3          	beqz	a5,80004168 <_Z20Threads_CPP_API_testv+0x160>
    800041ac:	00008797          	auipc	a5,0x8
    800041b0:	8c478793          	addi	a5,a5,-1852 # 8000ba70 <_ZL9finishedD>
    800041b4:	0007c783          	lbu	a5,0(a5)
    800041b8:	0ff7f793          	andi	a5,a5,255
    800041bc:	fa0786e3          	beqz	a5,80004168 <_Z20Threads_CPP_API_testv+0x160>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    800041c0:	fc040493          	addi	s1,s0,-64
    800041c4:	0080006f          	j	800041cc <_Z20Threads_CPP_API_testv+0x1c4>
    800041c8:	00848493          	addi	s1,s1,8
    800041cc:	fe040793          	addi	a5,s0,-32
    800041d0:	00f48e63          	beq	s1,a5,800041ec <_Z20Threads_CPP_API_testv+0x1e4>
    800041d4:	0004b503          	ld	a0,0(s1)
    800041d8:	fe0508e3          	beqz	a0,800041c8 <_Z20Threads_CPP_API_testv+0x1c0>
    800041dc:	00053783          	ld	a5,0(a0)
    800041e0:	0087b783          	ld	a5,8(a5)
    800041e4:	000780e7          	jalr	a5
    800041e8:	fe1ff06f          	j	800041c8 <_Z20Threads_CPP_API_testv+0x1c0>
}
    800041ec:	03813083          	ld	ra,56(sp)
    800041f0:	03013403          	ld	s0,48(sp)
    800041f4:	02813483          	ld	s1,40(sp)
    800041f8:	02013903          	ld	s2,32(sp)
    800041fc:	04010113          	addi	sp,sp,64
    80004200:	00008067          	ret

0000000080004204 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004204:	ff010113          	addi	sp,sp,-16
    80004208:	00113423          	sd	ra,8(sp)
    8000420c:	00813023          	sd	s0,0(sp)
    80004210:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    80004214:	00005797          	auipc	a5,0x5
    80004218:	4ac78793          	addi	a5,a5,1196 # 800096c0 <_ZTV6Thread+0x10>
    8000421c:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80004220:	ffffd097          	auipc	ra,0xffffd
    80004224:	4c4080e7          	jalr	1220(ra) # 800016e4 <_Z11thread_exitv>
    80004228:	00813083          	ld	ra,8(sp)
    8000422c:	00013403          	ld	s0,0(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <_ZN7WorkerAD0Ev>:
    80004238:	fe010113          	addi	sp,sp,-32
    8000423c:	00113c23          	sd	ra,24(sp)
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00913423          	sd	s1,8(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80004250:	00005797          	auipc	a5,0x5
    80004254:	47078793          	addi	a5,a5,1136 # 800096c0 <_ZTV6Thread+0x10>
    80004258:	00f53023          	sd	a5,0(a0)
        thread_exit();
    8000425c:	ffffd097          	auipc	ra,0xffffd
    80004260:	488080e7          	jalr	1160(ra) # 800016e4 <_Z11thread_exitv>
    80004264:	00048513          	mv	a0,s1
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	b30080e7          	jalr	-1232(ra) # 80001d98 <_ZdlPv>
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	01013403          	ld	s0,16(sp)
    80004278:	00813483          	ld	s1,8(sp)
    8000427c:	02010113          	addi	sp,sp,32
    80004280:	00008067          	ret

0000000080004284 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004284:	ff010113          	addi	sp,sp,-16
    80004288:	00113423          	sd	ra,8(sp)
    8000428c:	00813023          	sd	s0,0(sp)
    80004290:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    80004294:	00005797          	auipc	a5,0x5
    80004298:	42c78793          	addi	a5,a5,1068 # 800096c0 <_ZTV6Thread+0x10>
    8000429c:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800042a0:	ffffd097          	auipc	ra,0xffffd
    800042a4:	444080e7          	jalr	1092(ra) # 800016e4 <_Z11thread_exitv>
    800042a8:	00813083          	ld	ra,8(sp)
    800042ac:	00013403          	ld	s0,0(sp)
    800042b0:	01010113          	addi	sp,sp,16
    800042b4:	00008067          	ret

00000000800042b8 <_ZN7WorkerBD0Ev>:
    800042b8:	fe010113          	addi	sp,sp,-32
    800042bc:	00113c23          	sd	ra,24(sp)
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	02010413          	addi	s0,sp,32
    800042cc:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800042d0:	00005797          	auipc	a5,0x5
    800042d4:	3f078793          	addi	a5,a5,1008 # 800096c0 <_ZTV6Thread+0x10>
    800042d8:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800042dc:	ffffd097          	auipc	ra,0xffffd
    800042e0:	408080e7          	jalr	1032(ra) # 800016e4 <_Z11thread_exitv>
    800042e4:	00048513          	mv	a0,s1
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	ab0080e7          	jalr	-1360(ra) # 80001d98 <_ZdlPv>
    800042f0:	01813083          	ld	ra,24(sp)
    800042f4:	01013403          	ld	s0,16(sp)
    800042f8:	00813483          	ld	s1,8(sp)
    800042fc:	02010113          	addi	sp,sp,32
    80004300:	00008067          	ret

0000000080004304 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004304:	ff010113          	addi	sp,sp,-16
    80004308:	00113423          	sd	ra,8(sp)
    8000430c:	00813023          	sd	s0,0(sp)
    80004310:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    80004314:	00005797          	auipc	a5,0x5
    80004318:	3ac78793          	addi	a5,a5,940 # 800096c0 <_ZTV6Thread+0x10>
    8000431c:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80004320:	ffffd097          	auipc	ra,0xffffd
    80004324:	3c4080e7          	jalr	964(ra) # 800016e4 <_Z11thread_exitv>
    80004328:	00813083          	ld	ra,8(sp)
    8000432c:	00013403          	ld	s0,0(sp)
    80004330:	01010113          	addi	sp,sp,16
    80004334:	00008067          	ret

0000000080004338 <_ZN7WorkerCD0Ev>:
    80004338:	fe010113          	addi	sp,sp,-32
    8000433c:	00113c23          	sd	ra,24(sp)
    80004340:	00813823          	sd	s0,16(sp)
    80004344:	00913423          	sd	s1,8(sp)
    80004348:	02010413          	addi	s0,sp,32
    8000434c:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80004350:	00005797          	auipc	a5,0x5
    80004354:	37078793          	addi	a5,a5,880 # 800096c0 <_ZTV6Thread+0x10>
    80004358:	00f53023          	sd	a5,0(a0)
        thread_exit();
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	388080e7          	jalr	904(ra) # 800016e4 <_Z11thread_exitv>
    80004364:	00048513          	mv	a0,s1
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	a30080e7          	jalr	-1488(ra) # 80001d98 <_ZdlPv>
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	00813483          	ld	s1,8(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret

0000000080004384 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004384:	ff010113          	addi	sp,sp,-16
    80004388:	00113423          	sd	ra,8(sp)
    8000438c:	00813023          	sd	s0,0(sp)
    80004390:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    80004394:	00005797          	auipc	a5,0x5
    80004398:	32c78793          	addi	a5,a5,812 # 800096c0 <_ZTV6Thread+0x10>
    8000439c:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800043a0:	ffffd097          	auipc	ra,0xffffd
    800043a4:	344080e7          	jalr	836(ra) # 800016e4 <_Z11thread_exitv>
    800043a8:	00813083          	ld	ra,8(sp)
    800043ac:	00013403          	ld	s0,0(sp)
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <_ZN7WorkerDD0Ev>:
    800043b8:	fe010113          	addi	sp,sp,-32
    800043bc:	00113c23          	sd	ra,24(sp)
    800043c0:	00813823          	sd	s0,16(sp)
    800043c4:	00913423          	sd	s1,8(sp)
    800043c8:	02010413          	addi	s0,sp,32
    800043cc:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800043d0:	00005797          	auipc	a5,0x5
    800043d4:	2f078793          	addi	a5,a5,752 # 800096c0 <_ZTV6Thread+0x10>
    800043d8:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800043dc:	ffffd097          	auipc	ra,0xffffd
    800043e0:	308080e7          	jalr	776(ra) # 800016e4 <_Z11thread_exitv>
    800043e4:	00048513          	mv	a0,s1
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	9b0080e7          	jalr	-1616(ra) # 80001d98 <_ZdlPv>
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	02010113          	addi	sp,sp,32
    80004400:	00008067          	ret

0000000080004404 <_ZN7WorkerA3runEv>:
    void run() override {
    80004404:	ff010113          	addi	sp,sp,-16
    80004408:	00113423          	sd	ra,8(sp)
    8000440c:	00813023          	sd	s0,0(sp)
    80004410:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004414:	00000593          	li	a1,0
    80004418:	fffff097          	auipc	ra,0xfffff
    8000441c:	798080e7          	jalr	1944(ra) # 80003bb0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004420:	00813083          	ld	ra,8(sp)
    80004424:	00013403          	ld	s0,0(sp)
    80004428:	01010113          	addi	sp,sp,16
    8000442c:	00008067          	ret

0000000080004430 <_ZN7WorkerB3runEv>:
    void run() override {
    80004430:	ff010113          	addi	sp,sp,-16
    80004434:	00113423          	sd	ra,8(sp)
    80004438:	00813023          	sd	s0,0(sp)
    8000443c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004440:	00000593          	li	a1,0
    80004444:	00000097          	auipc	ra,0x0
    80004448:	830080e7          	jalr	-2000(ra) # 80003c74 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN7WorkerC3runEv>:
    void run() override {
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00113423          	sd	ra,8(sp)
    80004464:	00813023          	sd	s0,0(sp)
    80004468:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000446c:	00000593          	li	a1,0
    80004470:	00000097          	auipc	ra,0x0
    80004474:	8d0080e7          	jalr	-1840(ra) # 80003d40 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004478:	00813083          	ld	ra,8(sp)
    8000447c:	00013403          	ld	s0,0(sp)
    80004480:	01010113          	addi	sp,sp,16
    80004484:	00008067          	ret

0000000080004488 <_ZN7WorkerD3runEv>:
    void run() override {
    80004488:	ff010113          	addi	sp,sp,-16
    8000448c:	00113423          	sd	ra,8(sp)
    80004490:	00813023          	sd	s0,0(sp)
    80004494:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004498:	00000593          	li	a1,0
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	a24080e7          	jalr	-1500(ra) # 80003ec0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800044a4:	00813083          	ld	ra,8(sp)
    800044a8:	00013403          	ld	s0,0(sp)
    800044ac:	01010113          	addi	sp,sp,16
    800044b0:	00008067          	ret

00000000800044b4 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800044b4:	00100793          	li	a5,1
    800044b8:	06a7f863          	bgeu	a5,a0,80004528 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800044bc:	fe010113          	addi	sp,sp,-32
    800044c0:	00113c23          	sd	ra,24(sp)
    800044c4:	00813823          	sd	s0,16(sp)
    800044c8:	00913423          	sd	s1,8(sp)
    800044cc:	01213023          	sd	s2,0(sp)
    800044d0:	02010413          	addi	s0,sp,32
    800044d4:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    800044d8:	00a00793          	li	a5,10
    800044dc:	02f577b3          	remu	a5,a0,a5
    800044e0:	02078e63          	beqz	a5,8000451c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800044e4:	fff48513          	addi	a0,s1,-1
    800044e8:	00000097          	auipc	ra,0x0
    800044ec:	fcc080e7          	jalr	-52(ra) # 800044b4 <_ZL9fibonaccim>
    800044f0:	00050913          	mv	s2,a0
    800044f4:	ffe48513          	addi	a0,s1,-2
    800044f8:	00000097          	auipc	ra,0x0
    800044fc:	fbc080e7          	jalr	-68(ra) # 800044b4 <_ZL9fibonaccim>
    80004500:	00a90533          	add	a0,s2,a0
}
    80004504:	01813083          	ld	ra,24(sp)
    80004508:	01013403          	ld	s0,16(sp)
    8000450c:	00813483          	ld	s1,8(sp)
    80004510:	00013903          	ld	s2,0(sp)
    80004514:	02010113          	addi	sp,sp,32
    80004518:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	228080e7          	jalr	552(ra) # 80001744 <_Z15thread_dispatchv>
    80004524:	fc1ff06f          	j	800044e4 <_ZL9fibonaccim+0x30>
}
    80004528:	00008067          	ret

000000008000452c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000452c:	fe010113          	addi	sp,sp,-32
    80004530:	00113c23          	sd	ra,24(sp)
    80004534:	00813823          	sd	s0,16(sp)
    80004538:	00913423          	sd	s1,8(sp)
    8000453c:	01213023          	sd	s2,0(sp)
    80004540:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004544:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80004548:	00c00793          	li	a5,12
    8000454c:	0497e263          	bltu	a5,s1,80004590 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80004550:	00005517          	auipc	a0,0x5
    80004554:	05050513          	addi	a0,a0,80 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x2e8>
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	f40080e7          	jalr	-192(ra) # 80005498 <_Z11printStringPKc>
    80004560:	00000613          	li	a2,0
    80004564:	00a00593          	li	a1,10
    80004568:	00048513          	mv	a0,s1
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	0d8080e7          	jalr	216(ra) # 80005644 <_Z8printIntiii>
    80004574:	00005517          	auipc	a0,0x5
    80004578:	dec50513          	addi	a0,a0,-532 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	f1c080e7          	jalr	-228(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004584:	0014849b          	addiw	s1,s1,1
    80004588:	0ff4f493          	andi	s1,s1,255
    8000458c:	fbdff06f          	j	80004548 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    80004590:	00005517          	auipc	a0,0x5
    80004594:	01850513          	addi	a0,a0,24 # 800095a8 <_ZZ24debug_print_internal_intmE6digits+0x2f0>
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	f00080e7          	jalr	-256(ra) # 80005498 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800045a0:	00500313          	li	t1,5
    thread_dispatch();
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	1a0080e7          	jalr	416(ra) # 80001744 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800045ac:	01000513          	li	a0,16
    800045b0:	00000097          	auipc	ra,0x0
    800045b4:	f04080e7          	jalr	-252(ra) # 800044b4 <_ZL9fibonaccim>
    800045b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800045bc:	00005517          	auipc	a0,0x5
    800045c0:	ffc50513          	addi	a0,a0,-4 # 800095b8 <_ZZ24debug_print_internal_intmE6digits+0x300>
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	ed4080e7          	jalr	-300(ra) # 80005498 <_Z11printStringPKc>
    800045cc:	00000613          	li	a2,0
    800045d0:	00a00593          	li	a1,10
    800045d4:	0009051b          	sext.w	a0,s2
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	06c080e7          	jalr	108(ra) # 80005644 <_Z8printIntiii>
    800045e0:	00005517          	auipc	a0,0x5
    800045e4:	d8050513          	addi	a0,a0,-640 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	eb0080e7          	jalr	-336(ra) # 80005498 <_Z11printStringPKc>

    for (; i < 16; i++) {
    800045f0:	00f00793          	li	a5,15
    800045f4:	0497e263          	bltu	a5,s1,80004638 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    800045f8:	00005517          	auipc	a0,0x5
    800045fc:	fa850513          	addi	a0,a0,-88 # 800095a0 <_ZZ24debug_print_internal_intmE6digits+0x2e8>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	e98080e7          	jalr	-360(ra) # 80005498 <_Z11printStringPKc>
    80004608:	00000613          	li	a2,0
    8000460c:	00a00593          	li	a1,10
    80004610:	00048513          	mv	a0,s1
    80004614:	00001097          	auipc	ra,0x1
    80004618:	030080e7          	jalr	48(ra) # 80005644 <_Z8printIntiii>
    8000461c:	00005517          	auipc	a0,0x5
    80004620:	d4450513          	addi	a0,a0,-700 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	e74080e7          	jalr	-396(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000462c:	0014849b          	addiw	s1,s1,1
    80004630:	0ff4f493          	andi	s1,s1,255
    80004634:	fbdff06f          	j	800045f0 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80004638:	00005517          	auipc	a0,0x5
    8000463c:	f9050513          	addi	a0,a0,-112 # 800095c8 <_ZZ24debug_print_internal_intmE6digits+0x310>
    80004640:	00001097          	auipc	ra,0x1
    80004644:	e58080e7          	jalr	-424(ra) # 80005498 <_Z11printStringPKc>
    finishedD = true;
    80004648:	00100793          	li	a5,1
    8000464c:	00007717          	auipc	a4,0x7
    80004650:	42f70423          	sb	a5,1064(a4) # 8000ba74 <_ZL9finishedD>
    thread_dispatch();
    80004654:	ffffd097          	auipc	ra,0xffffd
    80004658:	0f0080e7          	jalr	240(ra) # 80001744 <_Z15thread_dispatchv>
}
    8000465c:	01813083          	ld	ra,24(sp)
    80004660:	01013403          	ld	s0,16(sp)
    80004664:	00813483          	ld	s1,8(sp)
    80004668:	00013903          	ld	s2,0(sp)
    8000466c:	02010113          	addi	sp,sp,32
    80004670:	00008067          	ret

0000000080004674 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004674:	fe010113          	addi	sp,sp,-32
    80004678:	00113c23          	sd	ra,24(sp)
    8000467c:	00813823          	sd	s0,16(sp)
    80004680:	00913423          	sd	s1,8(sp)
    80004684:	01213023          	sd	s2,0(sp)
    80004688:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000468c:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80004690:	00200793          	li	a5,2
    80004694:	0497e263          	bltu	a5,s1,800046d8 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80004698:	00005517          	auipc	a0,0x5
    8000469c:	f4050513          	addi	a0,a0,-192 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	df8080e7          	jalr	-520(ra) # 80005498 <_Z11printStringPKc>
    800046a8:	00000613          	li	a2,0
    800046ac:	00a00593          	li	a1,10
    800046b0:	00048513          	mv	a0,s1
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	f90080e7          	jalr	-112(ra) # 80005644 <_Z8printIntiii>
    800046bc:	00005517          	auipc	a0,0x5
    800046c0:	ca450513          	addi	a0,a0,-860 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800046c4:	00001097          	auipc	ra,0x1
    800046c8:	dd4080e7          	jalr	-556(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800046cc:	0014849b          	addiw	s1,s1,1
    800046d0:	0ff4f493          	andi	s1,s1,255
    800046d4:	fbdff06f          	j	80004690 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	f0850513          	addi	a0,a0,-248 # 800095e0 <_ZZ24debug_print_internal_intmE6digits+0x328>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	db8080e7          	jalr	-584(ra) # 80005498 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800046e8:	00700313          	li	t1,7
    thread_dispatch();
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	058080e7          	jalr	88(ra) # 80001744 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800046f4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800046f8:	00005517          	auipc	a0,0x5
    800046fc:	ef850513          	addi	a0,a0,-264 # 800095f0 <_ZZ24debug_print_internal_intmE6digits+0x338>
    80004700:	00001097          	auipc	ra,0x1
    80004704:	d98080e7          	jalr	-616(ra) # 80005498 <_Z11printStringPKc>
    80004708:	00000613          	li	a2,0
    8000470c:	00a00593          	li	a1,10
    80004710:	0009051b          	sext.w	a0,s2
    80004714:	00001097          	auipc	ra,0x1
    80004718:	f30080e7          	jalr	-208(ra) # 80005644 <_Z8printIntiii>
    8000471c:	00005517          	auipc	a0,0x5
    80004720:	c4450513          	addi	a0,a0,-956 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004724:	00001097          	auipc	ra,0x1
    80004728:	d74080e7          	jalr	-652(ra) # 80005498 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000472c:	00c00513          	li	a0,12
    80004730:	00000097          	auipc	ra,0x0
    80004734:	d84080e7          	jalr	-636(ra) # 800044b4 <_ZL9fibonaccim>
    80004738:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000473c:	00005517          	auipc	a0,0x5
    80004740:	ebc50513          	addi	a0,a0,-324 # 800095f8 <_ZZ24debug_print_internal_intmE6digits+0x340>
    80004744:	00001097          	auipc	ra,0x1
    80004748:	d54080e7          	jalr	-684(ra) # 80005498 <_Z11printStringPKc>
    8000474c:	00000613          	li	a2,0
    80004750:	00a00593          	li	a1,10
    80004754:	0009051b          	sext.w	a0,s2
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	eec080e7          	jalr	-276(ra) # 80005644 <_Z8printIntiii>
    80004760:	00005517          	auipc	a0,0x5
    80004764:	c0050513          	addi	a0,a0,-1024 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	d30080e7          	jalr	-720(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004770:	00500793          	li	a5,5
    80004774:	0497e263          	bltu	a5,s1,800047b8 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80004778:	00005517          	auipc	a0,0x5
    8000477c:	e6050513          	addi	a0,a0,-416 # 800095d8 <_ZZ24debug_print_internal_intmE6digits+0x320>
    80004780:	00001097          	auipc	ra,0x1
    80004784:	d18080e7          	jalr	-744(ra) # 80005498 <_Z11printStringPKc>
    80004788:	00000613          	li	a2,0
    8000478c:	00a00593          	li	a1,10
    80004790:	00048513          	mv	a0,s1
    80004794:	00001097          	auipc	ra,0x1
    80004798:	eb0080e7          	jalr	-336(ra) # 80005644 <_Z8printIntiii>
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	bc450513          	addi	a0,a0,-1084 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	cf4080e7          	jalr	-780(ra) # 80005498 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800047ac:	0014849b          	addiw	s1,s1,1
    800047b0:	0ff4f493          	andi	s1,s1,255
    800047b4:	fbdff06f          	j	80004770 <_ZL11workerBodyCPv+0xfc>
    printString("C finished!\n");
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	3b850513          	addi	a0,a0,952 # 80009b70 <_ZTV7WorkerD+0x68>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	cd8080e7          	jalr	-808(ra) # 80005498 <_Z11printStringPKc>
    finishedC = true;
    800047c8:	00100793          	li	a5,1
    800047cc:	00007717          	auipc	a4,0x7
    800047d0:	2af704a3          	sb	a5,681(a4) # 8000ba75 <_ZL9finishedC>
    thread_dispatch();
    800047d4:	ffffd097          	auipc	ra,0xffffd
    800047d8:	f70080e7          	jalr	-144(ra) # 80001744 <_Z15thread_dispatchv>
}
    800047dc:	01813083          	ld	ra,24(sp)
    800047e0:	01013403          	ld	s0,16(sp)
    800047e4:	00813483          	ld	s1,8(sp)
    800047e8:	00013903          	ld	s2,0(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret

00000000800047f4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800047f4:	fe010113          	addi	sp,sp,-32
    800047f8:	00113c23          	sd	ra,24(sp)
    800047fc:	00813823          	sd	s0,16(sp)
    80004800:	00913423          	sd	s1,8(sp)
    80004804:	01213023          	sd	s2,0(sp)
    80004808:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000480c:	00000913          	li	s2,0
    80004810:	0300006f          	j	80004840 <_ZL11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004814:	00178793          	addi	a5,a5,1
    80004818:	01d00713          	li	a4,29
    8000481c:	fef77ce3          	bgeu	a4,a5,80004814 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80004820:	ffffd097          	auipc	ra,0xffffd
    80004824:	f24080e7          	jalr	-220(ra) # 80001744 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    80004828:	00148493          	addi	s1,s1,1
    8000482c:	00900793          	li	a5,9
    80004830:	0097e663          	bltu	a5,s1,8000483c <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004834:	00000793          	li	a5,0
    80004838:	fe1ff06f          	j	80004818 <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    8000483c:	00190913          	addi	s2,s2,1
    80004840:	00f00793          	li	a5,15
    80004844:	0527e063          	bltu	a5,s2,80004884 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInt(i); printString("\n");
    80004848:	00005517          	auipc	a0,0x5
    8000484c:	dd050513          	addi	a0,a0,-560 # 80009618 <_ZZ24debug_print_internal_intmE6digits+0x360>
    80004850:	00001097          	auipc	ra,0x1
    80004854:	c48080e7          	jalr	-952(ra) # 80005498 <_Z11printStringPKc>
    80004858:	00000613          	li	a2,0
    8000485c:	00a00593          	li	a1,10
    80004860:	0009051b          	sext.w	a0,s2
    80004864:	00001097          	auipc	ra,0x1
    80004868:	de0080e7          	jalr	-544(ra) # 80005644 <_Z8printIntiii>
    8000486c:	00005517          	auipc	a0,0x5
    80004870:	af450513          	addi	a0,a0,-1292 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004874:	00001097          	auipc	ra,0x1
    80004878:	c24080e7          	jalr	-988(ra) # 80005498 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    8000487c:	00000493          	li	s1,0
    80004880:	fadff06f          	j	8000482c <_ZL11workerBodyBPv+0x38>
    printString("B finished!\n");
    80004884:	00005517          	auipc	a0,0x5
    80004888:	d9c50513          	addi	a0,a0,-612 # 80009620 <_ZZ24debug_print_internal_intmE6digits+0x368>
    8000488c:	00001097          	auipc	ra,0x1
    80004890:	c0c080e7          	jalr	-1012(ra) # 80005498 <_Z11printStringPKc>
    finishedB = true;
    80004894:	00100793          	li	a5,1
    80004898:	00007717          	auipc	a4,0x7
    8000489c:	1cf70f23          	sb	a5,478(a4) # 8000ba76 <_ZL9finishedB>
    thread_dispatch();
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	ea4080e7          	jalr	-348(ra) # 80001744 <_Z15thread_dispatchv>
}
    800048a8:	01813083          	ld	ra,24(sp)
    800048ac:	01013403          	ld	s0,16(sp)
    800048b0:	00813483          	ld	s1,8(sp)
    800048b4:	00013903          	ld	s2,0(sp)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00008067          	ret

00000000800048c0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800048c0:	fe010113          	addi	sp,sp,-32
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00813823          	sd	s0,16(sp)
    800048cc:	00913423          	sd	s1,8(sp)
    800048d0:	01213023          	sd	s2,0(sp)
    800048d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800048d8:	00000913          	li	s2,0
    800048dc:	0300006f          	j	8000490c <_ZL11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    800048e0:	00178793          	addi	a5,a5,1
    800048e4:	01d00713          	li	a4,29
    800048e8:	fef77ce3          	bgeu	a4,a5,800048e0 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	e58080e7          	jalr	-424(ra) # 80001744 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10; j++) {
    800048f4:	00148493          	addi	s1,s1,1
    800048f8:	00900793          	li	a5,9
    800048fc:	0097e663          	bltu	a5,s1,80004908 <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30; k++) { /* busy wait */ }
    80004900:	00000793          	li	a5,0
    80004904:	fe1ff06f          	j	800048e4 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80004908:	00190913          	addi	s2,s2,1
    8000490c:	00900793          	li	a5,9
    80004910:	0527e063          	bltu	a5,s2,80004950 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInt(i); printString("\n");
    80004914:	00005517          	auipc	a0,0x5
    80004918:	d1c50513          	addi	a0,a0,-740 # 80009630 <_ZZ24debug_print_internal_intmE6digits+0x378>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	b7c080e7          	jalr	-1156(ra) # 80005498 <_Z11printStringPKc>
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	0009051b          	sext.w	a0,s2
    80004930:	00001097          	auipc	ra,0x1
    80004934:	d14080e7          	jalr	-748(ra) # 80005644 <_Z8printIntiii>
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	a2850513          	addi	a0,a0,-1496 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	b58080e7          	jalr	-1192(ra) # 80005498 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++) {
    80004948:	00000493          	li	s1,0
    8000494c:	fadff06f          	j	800048f8 <_ZL11workerBodyAPv+0x38>
    printString("A finished!\n");
    80004950:	00005517          	auipc	a0,0x5
    80004954:	cb850513          	addi	a0,a0,-840 # 80009608 <_ZZ24debug_print_internal_intmE6digits+0x350>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	b40080e7          	jalr	-1216(ra) # 80005498 <_Z11printStringPKc>
    finishedA = true;
    80004960:	00100793          	li	a5,1
    80004964:	00007717          	auipc	a4,0x7
    80004968:	10f709a3          	sb	a5,275(a4) # 8000ba77 <_ZL9finishedA>
}
    8000496c:	01813083          	ld	ra,24(sp)
    80004970:	01013403          	ld	s0,16(sp)
    80004974:	00813483          	ld	s1,8(sp)
    80004978:	00013903          	ld	s2,0(sp)
    8000497c:	02010113          	addi	sp,sp,32
    80004980:	00008067          	ret

0000000080004984 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004984:	fd010113          	addi	sp,sp,-48
    80004988:	02113423          	sd	ra,40(sp)
    8000498c:	02813023          	sd	s0,32(sp)
    80004990:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004994:	00000613          	li	a2,0
    80004998:	00000597          	auipc	a1,0x0
    8000499c:	f2858593          	addi	a1,a1,-216 # 800048c0 <_ZL11workerBodyAPv>
    800049a0:	fd040513          	addi	a0,s0,-48
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	cbc080e7          	jalr	-836(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800049ac:	00005517          	auipc	a0,0x5
    800049b0:	c8c50513          	addi	a0,a0,-884 # 80009638 <_ZZ24debug_print_internal_intmE6digits+0x380>
    800049b4:	00001097          	auipc	ra,0x1
    800049b8:	ae4080e7          	jalr	-1308(ra) # 80005498 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049bc:	00000613          	li	a2,0
    800049c0:	00000597          	auipc	a1,0x0
    800049c4:	e3458593          	addi	a1,a1,-460 # 800047f4 <_ZL11workerBodyBPv>
    800049c8:	fd840513          	addi	a0,s0,-40
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	c94080e7          	jalr	-876(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800049d4:	00005517          	auipc	a0,0x5
    800049d8:	c7c50513          	addi	a0,a0,-900 # 80009650 <_ZZ24debug_print_internal_intmE6digits+0x398>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	abc080e7          	jalr	-1348(ra) # 80005498 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800049e4:	00000613          	li	a2,0
    800049e8:	00000597          	auipc	a1,0x0
    800049ec:	c8c58593          	addi	a1,a1,-884 # 80004674 <_ZL11workerBodyCPv>
    800049f0:	fe040513          	addi	a0,s0,-32
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	c6c080e7          	jalr	-916(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800049fc:	00005517          	auipc	a0,0x5
    80004a00:	c6c50513          	addi	a0,a0,-916 # 80009668 <_ZZ24debug_print_internal_intmE6digits+0x3b0>
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	a94080e7          	jalr	-1388(ra) # 80005498 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004a0c:	00000613          	li	a2,0
    80004a10:	00000597          	auipc	a1,0x0
    80004a14:	b1c58593          	addi	a1,a1,-1252 # 8000452c <_ZL11workerBodyDPv>
    80004a18:	fe840513          	addi	a0,s0,-24
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	c44080e7          	jalr	-956(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a24:	00005517          	auipc	a0,0x5
    80004a28:	c5c50513          	addi	a0,a0,-932 # 80009680 <_ZZ24debug_print_internal_intmE6digits+0x3c8>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	a6c080e7          	jalr	-1428(ra) # 80005498 <_Z11printStringPKc>
    80004a34:	00c0006f          	j	80004a40 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	d0c080e7          	jalr	-756(ra) # 80001744 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a40:	00007797          	auipc	a5,0x7
    80004a44:	03778793          	addi	a5,a5,55 # 8000ba77 <_ZL9finishedA>
    80004a48:	0007c783          	lbu	a5,0(a5)
    80004a4c:	0ff7f793          	andi	a5,a5,255
    80004a50:	fe0784e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a54:	00007797          	auipc	a5,0x7
    80004a58:	02278793          	addi	a5,a5,34 # 8000ba76 <_ZL9finishedB>
    80004a5c:	0007c783          	lbu	a5,0(a5)
    80004a60:	0ff7f793          	andi	a5,a5,255
    80004a64:	fc078ae3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a68:	00007797          	auipc	a5,0x7
    80004a6c:	00d78793          	addi	a5,a5,13 # 8000ba75 <_ZL9finishedC>
    80004a70:	0007c783          	lbu	a5,0(a5)
    80004a74:	0ff7f793          	andi	a5,a5,255
    80004a78:	fc0780e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a7c:	00007797          	auipc	a5,0x7
    80004a80:	ff878793          	addi	a5,a5,-8 # 8000ba74 <_ZL9finishedD>
    80004a84:	0007c783          	lbu	a5,0(a5)
    80004a88:	0ff7f793          	andi	a5,a5,255
    80004a8c:	fa0786e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004a90:	02813083          	ld	ra,40(sp)
    80004a94:	02013403          	ld	s0,32(sp)
    80004a98:	03010113          	addi	sp,sp,48
    80004a9c:	00008067          	ret

0000000080004aa0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004aa0:	fd010113          	addi	sp,sp,-48
    80004aa4:	02113423          	sd	ra,40(sp)
    80004aa8:	02813023          	sd	s0,32(sp)
    80004aac:	00913c23          	sd	s1,24(sp)
    80004ab0:	01213823          	sd	s2,16(sp)
    80004ab4:	01313423          	sd	s3,8(sp)
    80004ab8:	03010413          	addi	s0,sp,48
    80004abc:	00050993          	mv	s3,a0
    80004ac0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ac4:	00000913          	li	s2,0
    80004ac8:	00c0006f          	j	80004ad4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
        return 0;
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	c78080e7          	jalr	-904(ra) # 80001744 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80004ad4:	ffffd097          	auipc	ra,0xffffd
    80004ad8:	ea8080e7          	jalr	-344(ra) # 8000197c <_Z4getcv>
    80004adc:	0005059b          	sext.w	a1,a0
    80004ae0:	01b00793          	li	a5,27
    80004ae4:	02f58a63          	beq	a1,a5,80004b18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ae8:	0084b503          	ld	a0,8(s1)
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	350080e7          	jalr	848(ra) # 80005e3c <_ZN9BufferCPP3putEi>
        i++;
    80004af4:	0019079b          	addiw	a5,s2,1
    80004af8:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004afc:	0004a683          	lw	a3,0(s1)
    80004b00:	0026971b          	slliw	a4,a3,0x2
    80004b04:	00d7073b          	addw	a4,a4,a3
    80004b08:	0017169b          	slliw	a3,a4,0x1
    80004b0c:	02d7e7bb          	remw	a5,a5,a3
    80004b10:	fc0792e3          	bnez	a5,80004ad4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004b14:	fb9ff06f          	j	80004acc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    80004b18:	00100793          	li	a5,1
    80004b1c:	00007717          	auipc	a4,0x7
    80004b20:	f4f72e23          	sw	a5,-164(a4) # 8000ba78 <_ZL9threadEnd>
    td->buffer->put('!');
    80004b24:	0209b783          	ld	a5,32(s3)
    80004b28:	02100593          	li	a1,33
    80004b2c:	0087b503          	ld	a0,8(a5)
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	30c080e7          	jalr	780(ra) # 80005e3c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004b38:	0104b783          	ld	a5,16(s1)
            return -1;
    80004b3c:	0087b503          	ld	a0,8(a5)
    80004b40:	00050663          	beqz	a0,80004b4c <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
    }
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	db0080e7          	jalr	-592(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
}
    80004b4c:	02813083          	ld	ra,40(sp)
    80004b50:	02013403          	ld	s0,32(sp)
    80004b54:	01813483          	ld	s1,24(sp)
    80004b58:	01013903          	ld	s2,16(sp)
    80004b5c:	00813983          	ld	s3,8(sp)
    80004b60:	03010113          	addi	sp,sp,48
    80004b64:	00008067          	ret

0000000080004b68 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004b68:	fe010113          	addi	sp,sp,-32
    80004b6c:	00113c23          	sd	ra,24(sp)
    80004b70:	00813823          	sd	s0,16(sp)
    80004b74:	00913423          	sd	s1,8(sp)
    80004b78:	01213023          	sd	s2,0(sp)
    80004b7c:	02010413          	addi	s0,sp,32
    80004b80:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b84:	00000913          	li	s2,0
    80004b88:	00c0006f          	j	80004b94 <_ZN12ProducerSync8producerEPv+0x2c>
        return 0;
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	bb8080e7          	jalr	-1096(ra) # 80001744 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80004b94:	00007797          	auipc	a5,0x7
    80004b98:	ee478793          	addi	a5,a5,-284 # 8000ba78 <_ZL9threadEnd>
    80004b9c:	0007a783          	lw	a5,0(a5)
    80004ba0:	0007879b          	sext.w	a5,a5
    80004ba4:	02079e63          	bnez	a5,80004be0 <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80004ba8:	0004a583          	lw	a1,0(s1)
    80004bac:	0305859b          	addiw	a1,a1,48
    80004bb0:	0084b503          	ld	a0,8(s1)
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	288080e7          	jalr	648(ra) # 80005e3c <_ZN9BufferCPP3putEi>
        i++;
    80004bbc:	0019079b          	addiw	a5,s2,1
    80004bc0:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004bc4:	0004a683          	lw	a3,0(s1)
    80004bc8:	0026971b          	slliw	a4,a3,0x2
    80004bcc:	00d7073b          	addw	a4,a4,a3
    80004bd0:	0017169b          	slliw	a3,a4,0x1
    80004bd4:	02d7e7bb          	remw	a5,a5,a3
    80004bd8:	fa079ee3          	bnez	a5,80004b94 <_ZN12ProducerSync8producerEPv+0x2c>
    80004bdc:	fb1ff06f          	j	80004b8c <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80004be0:	0104b783          	ld	a5,16(s1)
            return -1;
    80004be4:	0087b503          	ld	a0,8(a5)
    80004be8:	00050663          	beqz	a0,80004bf4 <_ZN12ProducerSync8producerEPv+0x8c>
    }
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	d08080e7          	jalr	-760(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
}
    80004bf4:	01813083          	ld	ra,24(sp)
    80004bf8:	01013403          	ld	s0,16(sp)
    80004bfc:	00813483          	ld	s1,8(sp)
    80004c00:	00013903          	ld	s2,0(sp)
    80004c04:	02010113          	addi	sp,sp,32
    80004c08:	00008067          	ret

0000000080004c0c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004c0c:	fd010113          	addi	sp,sp,-48
    80004c10:	02113423          	sd	ra,40(sp)
    80004c14:	02813023          	sd	s0,32(sp)
    80004c18:	00913c23          	sd	s1,24(sp)
    80004c1c:	01213823          	sd	s2,16(sp)
    80004c20:	01313423          	sd	s3,8(sp)
    80004c24:	01413023          	sd	s4,0(sp)
    80004c28:	03010413          	addi	s0,sp,48
    80004c2c:	00050993          	mv	s3,a0
    80004c30:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004c34:	00000a13          	li	s4,0
    80004c38:	01c0006f          	j	80004c54 <_ZN12ConsumerSync8consumerEPv+0x48>
        return 0;
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	b08080e7          	jalr	-1272(ra) # 80001744 <_Z15thread_dispatchv>
    80004c44:	0580006f          	j	80004c9c <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    80004c48:	00a00513          	li	a0,10
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	d80080e7          	jalr	-640(ra) # 800019cc <_Z4putcc>
    while (!threadEnd) {
    80004c54:	00007797          	auipc	a5,0x7
    80004c58:	e2478793          	addi	a5,a5,-476 # 8000ba78 <_ZL9threadEnd>
    80004c5c:	0007a783          	lw	a5,0(a5)
    80004c60:	0007879b          	sext.w	a5,a5
    80004c64:	04079463          	bnez	a5,80004cac <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    80004c68:	00893503          	ld	a0,8(s2)
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	280080e7          	jalr	640(ra) # 80005eec <_ZN9BufferCPP3getEv>
        i++;
    80004c74:	001a049b          	addiw	s1,s4,1
    80004c78:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004c7c:	0ff57513          	andi	a0,a0,255
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	d4c080e7          	jalr	-692(ra) # 800019cc <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004c88:	00092703          	lw	a4,0(s2)
    80004c8c:	0027179b          	slliw	a5,a4,0x2
    80004c90:	00e787bb          	addw	a5,a5,a4
    80004c94:	02f4e7bb          	remw	a5,s1,a5
    80004c98:	fa0782e3          	beqz	a5,80004c3c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004c9c:	05000793          	li	a5,80
    80004ca0:	02f4e4bb          	remw	s1,s1,a5
    80004ca4:	fa0498e3          	bnez	s1,80004c54 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004ca8:	fa1ff06f          	j	80004c48 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    80004cac:	0209b783          	ld	a5,32(s3)
    80004cb0:	0087b503          	ld	a0,8(a5)
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	2e4080e7          	jalr	740(ra) # 80005f98 <_ZN9BufferCPP6getCntEv>
    80004cbc:	02a05263          	blez	a0,80004ce0 <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    80004cc0:	0209b783          	ld	a5,32(s3)
    80004cc4:	0087b503          	ld	a0,8(a5)
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	224080e7          	jalr	548(ra) # 80005eec <_ZN9BufferCPP3getEv>
};
    80004cd0:	0ff57513          	andi	a0,a0,255
    80004cd4:	00003097          	auipc	ra,0x3
    80004cd8:	528080e7          	jalr	1320(ra) # 800081fc <__putc>
    80004cdc:	fd1ff06f          	j	80004cac <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    80004ce0:	01093783          	ld	a5,16(s2)
            return -1;
    80004ce4:	0087b503          	ld	a0,8(a5)
    80004ce8:	00050663          	beqz	a0,80004cf4 <_ZN12ConsumerSync8consumerEPv+0xe8>
    }
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	c08080e7          	jalr	-1016(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
}
    80004cf4:	02813083          	ld	ra,40(sp)
    80004cf8:	02013403          	ld	s0,32(sp)
    80004cfc:	01813483          	ld	s1,24(sp)
    80004d00:	01013903          	ld	s2,16(sp)
    80004d04:	00813983          	ld	s3,8(sp)
    80004d08:	00013a03          	ld	s4,0(sp)
    80004d0c:	03010113          	addi	sp,sp,48
    80004d10:	00008067          	ret

0000000080004d14 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004d14:	f9010113          	addi	sp,sp,-112
    80004d18:	06113423          	sd	ra,104(sp)
    80004d1c:	06813023          	sd	s0,96(sp)
    80004d20:	04913c23          	sd	s1,88(sp)
    80004d24:	05213823          	sd	s2,80(sp)
    80004d28:	05313423          	sd	s3,72(sp)
    80004d2c:	05413023          	sd	s4,64(sp)
    80004d30:	03513c23          	sd	s5,56(sp)
    80004d34:	03613823          	sd	s6,48(sp)
    80004d38:	03713423          	sd	s7,40(sp)
    80004d3c:	03813023          	sd	s8,32(sp)
    80004d40:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004d44:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004d48:	00005517          	auipc	a0,0x5
    80004d4c:	a2850513          	addi	a0,a0,-1496 # 80009770 <_ZTV8Consumer+0x28>
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	748080e7          	jalr	1864(ra) # 80005498 <_Z11printStringPKc>
    getString(input, 30);
    80004d58:	01e00593          	li	a1,30
    80004d5c:	f9040513          	addi	a0,s0,-112
    80004d60:	00000097          	auipc	ra,0x0
    80004d64:	7c0080e7          	jalr	1984(ra) # 80005520 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004d68:	f9040513          	addi	a0,s0,-112
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	888080e7          	jalr	-1912(ra) # 800055f4 <_Z11stringToIntPKc>
    80004d74:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004d78:	00005517          	auipc	a0,0x5
    80004d7c:	a1850513          	addi	a0,a0,-1512 # 80009790 <_ZTV8Consumer+0x48>
    80004d80:	00000097          	auipc	ra,0x0
    80004d84:	718080e7          	jalr	1816(ra) # 80005498 <_Z11printStringPKc>
    getString(input, 30);
    80004d88:	01e00593          	li	a1,30
    80004d8c:	f9040513          	addi	a0,s0,-112
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	790080e7          	jalr	1936(ra) # 80005520 <_Z9getStringPci>
    n = stringToInt(input);
    80004d98:	f9040513          	addi	a0,s0,-112
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	858080e7          	jalr	-1960(ra) # 800055f4 <_Z11stringToIntPKc>
    80004da4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004da8:	00005517          	auipc	a0,0x5
    80004dac:	a0850513          	addi	a0,a0,-1528 # 800097b0 <_ZTV8Consumer+0x68>
    80004db0:	00000097          	auipc	ra,0x0
    80004db4:	6e8080e7          	jalr	1768(ra) # 80005498 <_Z11printStringPKc>
    80004db8:	00000613          	li	a2,0
    80004dbc:	00a00593          	li	a1,10
    80004dc0:	00090513          	mv	a0,s2
    80004dc4:	00001097          	auipc	ra,0x1
    80004dc8:	880080e7          	jalr	-1920(ra) # 80005644 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004dcc:	00005517          	auipc	a0,0x5
    80004dd0:	9fc50513          	addi	a0,a0,-1540 # 800097c8 <_ZTV8Consumer+0x80>
    80004dd4:	00000097          	auipc	ra,0x0
    80004dd8:	6c4080e7          	jalr	1732(ra) # 80005498 <_Z11printStringPKc>
    80004ddc:	00000613          	li	a2,0
    80004de0:	00a00593          	li	a1,10
    80004de4:	00048513          	mv	a0,s1
    80004de8:	00001097          	auipc	ra,0x1
    80004dec:	85c080e7          	jalr	-1956(ra) # 80005644 <_Z8printIntiii>
    printString(".\n");
    80004df0:	00005517          	auipc	a0,0x5
    80004df4:	9f050513          	addi	a0,a0,-1552 # 800097e0 <_ZTV8Consumer+0x98>
    80004df8:	00000097          	auipc	ra,0x0
    80004dfc:	6a0080e7          	jalr	1696(ra) # 80005498 <_Z11printStringPKc>
    if(threadNum > n) {
    80004e00:	0324c463          	blt	s1,s2,80004e28 <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80004e04:	03205c63          	blez	s2,80004e3c <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    80004e08:	03800513          	li	a0,56
    80004e0c:	ffffd097          	auipc	ra,0xffffd
    80004e10:	f0c080e7          	jalr	-244(ra) # 80001d18 <_Znwm>
    80004e14:	00050a93          	mv	s5,a0
    80004e18:	00048593          	mv	a1,s1
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	e6c080e7          	jalr	-404(ra) # 80005c88 <_ZN9BufferCPPC1Ei>
    80004e24:	0300006f          	j	80004e54 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004e28:	00005517          	auipc	a0,0x5
    80004e2c:	9c050513          	addi	a0,a0,-1600 # 800097e8 <_ZTV8Consumer+0xa0>
    80004e30:	00000097          	auipc	ra,0x0
    80004e34:	668080e7          	jalr	1640(ra) # 80005498 <_Z11printStringPKc>
        return;
    80004e38:	0140006f          	j	80004e4c <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004e3c:	00005517          	auipc	a0,0x5
    80004e40:	9ec50513          	addi	a0,a0,-1556 # 80009828 <_ZTV8Consumer+0xe0>
    80004e44:	00000097          	auipc	ra,0x0
    80004e48:	654080e7          	jalr	1620(ra) # 80005498 <_Z11printStringPKc>
        return;
    80004e4c:	000b8113          	mv	sp,s7
    80004e50:	29c0006f          	j	800050ec <_Z29producerConsumer_CPP_Sync_APIv+0x3d8>
    waitForAll = new Semaphore(0);
    80004e54:	01000513          	li	a0,16
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	ec0080e7          	jalr	-320(ra) # 80001d18 <_Znwm>
    80004e60:	00050493          	mv	s1,a0
    void* arg;
    80004e64:	00005797          	auipc	a5,0x5
    80004e68:	88478793          	addi	a5,a5,-1916 # 800096e8 <_ZTV9Semaphore+0x10>
    80004e6c:	00f53023          	sd	a5,0(a0)
};
    80004e70:	00000593          	li	a1,0
    80004e74:	00850513          	addi	a0,a0,8
    80004e78:	ffffd097          	auipc	ra,0xffffd
    80004e7c:	928080e7          	jalr	-1752(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    80004e80:	00050463          	beqz	a0,80004e88 <_Z29producerConsumer_CPP_Sync_APIv+0x174>

    80004e84:	0004b423          	sd	zero,8(s1)
    80004e88:	00007797          	auipc	a5,0x7
    80004e8c:	be97bc23          	sd	s1,-1032(a5) # 8000ba80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004e90:	00391793          	slli	a5,s2,0x3
    80004e94:	00f78793          	addi	a5,a5,15
    80004e98:	ff07f793          	andi	a5,a5,-16
    80004e9c:	40f10133          	sub	sp,sp,a5
    80004ea0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004ea4:	0019079b          	addiw	a5,s2,1
    80004ea8:	00179713          	slli	a4,a5,0x1
    80004eac:	00f70733          	add	a4,a4,a5
    80004eb0:	00371793          	slli	a5,a4,0x3
    80004eb4:	00f78793          	addi	a5,a5,15
    80004eb8:	ff07f793          	andi	a5,a5,-16
    80004ebc:	40f10133          	sub	sp,sp,a5
    80004ec0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004ec4:	00191c13          	slli	s8,s2,0x1
    80004ec8:	012c0733          	add	a4,s8,s2
    80004ecc:	00371793          	slli	a5,a4,0x3
    80004ed0:	00fa07b3          	add	a5,s4,a5
    80004ed4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004ed8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004edc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004ee0:	02800513          	li	a0,40
    80004ee4:	ffffd097          	auipc	ra,0xffffd
    80004ee8:	e34080e7          	jalr	-460(ra) # 80001d18 <_Znwm>
    80004eec:	00050b13          	mv	s6,a0
    80004ef0:	012c0c33          	add	s8,s8,s2
    80004ef4:	003c1793          	slli	a5,s8,0x3
    80004ef8:	00fa07b3          	add	a5,s4,a5
    }
    80004efc:	00053423          	sd	zero,8(a0)
    80004f00:	00053823          	sd	zero,16(a0)
    80004f04:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004f08:	00005717          	auipc	a4,0x5
    80004f0c:	cd870713          	addi	a4,a4,-808 # 80009be0 <_ZTV12ConsumerSync+0x10>
    80004f10:	00e53023          	sd	a4,0(a0)
    80004f14:	02f53023          	sd	a5,32(a0)
        // return myHandle->start();
    80004f18:	00050613          	mv	a2,a0
    80004f1c:	ffffe597          	auipc	a1,0xffffe
    80004f20:	63058593          	addi	a1,a1,1584 # 8000354c <_ZN6Thread9body_execEPv>
    80004f24:	00850513          	addi	a0,a0,8
    80004f28:	ffffc097          	auipc	ra,0xffffc
    80004f2c:	738080e7          	jalr	1848(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    80004f30:	00051663          	bnez	a0,80004f3c <_Z29producerConsumer_CPP_Sync_APIv+0x228>
void producerConsumer_CPP_Sync_API() {
    80004f34:	00000493          	li	s1,0
    80004f38:	07c0006f          	j	80004fb4 <_Z29producerConsumer_CPP_Sync_APIv+0x2a0>
        debug_print("CPP API: Starting thread\n");
    80004f3c:	000b3423          	sd	zero,8(s6)
        if(thread_create(&myHandle, &Thread::body_exec, (void*)this) != 0) {
    80004f40:	ff5ff06f          	j	80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
            threads[i] = new ProducerSync(data+i);
    80004f44:	02800513          	li	a0,40
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	dd0080e7          	jalr	-560(ra) # 80001d18 <_Znwm>
    80004f50:	00149713          	slli	a4,s1,0x1
    80004f54:	00970733          	add	a4,a4,s1
    80004f58:	00371793          	slli	a5,a4,0x3
    80004f5c:	00fa07b3          	add	a5,s4,a5
    }
    80004f60:	00053423          	sd	zero,8(a0)
    80004f64:	00053823          	sd	zero,16(a0)
    80004f68:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004f6c:	00005717          	auipc	a4,0x5
    80004f70:	c4c70713          	addi	a4,a4,-948 # 80009bb8 <_ZTV12ProducerSync+0x10>
    80004f74:	00e53023          	sd	a4,0(a0)
    80004f78:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    80004f7c:	00349793          	slli	a5,s1,0x3
    80004f80:	00f987b3          	add	a5,s3,a5
    80004f84:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80004f88:	00349793          	slli	a5,s1,0x3
    80004f8c:	00f987b3          	add	a5,s3,a5
    80004f90:	0007bc03          	ld	s8,0(a5)
        // return myHandle->start();
    80004f94:	000c0613          	mv	a2,s8
    80004f98:	ffffe597          	auipc	a1,0xffffe
    80004f9c:	5b458593          	addi	a1,a1,1460 # 8000354c <_ZN6Thread9body_execEPv>
    80004fa0:	008c0513          	addi	a0,s8,8
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	6bc080e7          	jalr	1724(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    80004fac:	08051063          	bnez	a0,8000502c <_Z29producerConsumer_CPP_Sync_APIv+0x318>
    for (int i = 0; i < threadNum; i++) {
    80004fb0:	0014849b          	addiw	s1,s1,1
    80004fb4:	0924d063          	bge	s1,s2,80005034 <_Z29producerConsumer_CPP_Sync_APIv+0x320>
        data[i].id = i;
    80004fb8:	00149713          	slli	a4,s1,0x1
    80004fbc:	00970733          	add	a4,a4,s1
    80004fc0:	00371793          	slli	a5,a4,0x3
    80004fc4:	00fa07b3          	add	a5,s4,a5
    80004fc8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004fcc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004fd0:	00007717          	auipc	a4,0x7
    80004fd4:	ab070713          	addi	a4,a4,-1360 # 8000ba80 <_ZL10waitForAll>
    80004fd8:	00073703          	ld	a4,0(a4)
    80004fdc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004fe0:	f69042e3          	bgtz	s1,80004f44 <_Z29producerConsumer_CPP_Sync_APIv+0x230>
            threads[i] = new ProducerKeyboard(data+i);
    80004fe4:	02800513          	li	a0,40
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	d30080e7          	jalr	-720(ra) # 80001d18 <_Znwm>
    80004ff0:	00149713          	slli	a4,s1,0x1
    80004ff4:	00970733          	add	a4,a4,s1
    80004ff8:	00371793          	slli	a5,a4,0x3
    80004ffc:	00fa07b3          	add	a5,s4,a5
    }
    80005000:	00053423          	sd	zero,8(a0)
    80005004:	00053823          	sd	zero,16(a0)
    80005008:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000500c:	00005717          	auipc	a4,0x5
    80005010:	b8470713          	addi	a4,a4,-1148 # 80009b90 <_ZTV16ProducerKeyboard+0x10>
    80005014:	00e53023          	sd	a4,0(a0)
    80005018:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    8000501c:	00349793          	slli	a5,s1,0x3
    80005020:	00f987b3          	add	a5,s3,a5
    80005024:	00a7b023          	sd	a0,0(a5)
    80005028:	f61ff06f          	j	80004f88 <_Z29producerConsumer_CPP_Sync_APIv+0x274>
        debug_print("CPP API: Starting thread\n");
    8000502c:	000c3423          	sd	zero,8(s8)
        if(thread_create(&myHandle, &Thread::body_exec, (void*)this) != 0) {
    80005030:	f81ff06f          	j	80004fb0 <_Z29producerConsumer_CPP_Sync_APIv+0x29c>
        return 0;
    80005034:	ffffc097          	auipc	ra,0xffffc
    80005038:	710080e7          	jalr	1808(ra) # 80001744 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000503c:	00000493          	li	s1,0
    80005040:	0080006f          	j	80005048 <_Z29producerConsumer_CPP_Sync_APIv+0x334>
    80005044:	0014849b          	addiw	s1,s1,1
    80005048:	02994263          	blt	s2,s1,8000506c <_Z29producerConsumer_CPP_Sync_APIv+0x358>
        waitForAll->wait();
    8000504c:	00007797          	auipc	a5,0x7
    80005050:	a3478793          	addi	a5,a5,-1484 # 8000ba80 <_ZL10waitForAll>
    80005054:	0007b783          	ld	a5,0(a5)
        if (myHandle != nullptr) {
    80005058:	0087b503          	ld	a0,8(a5)
    8000505c:	fe0504e3          	beqz	a0,80005044 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
    }
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	828080e7          	jalr	-2008(ra) # 80001888 <_Z8sem_waitP10_semaphore>
    80005068:	fddff06f          	j	80005044 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
    for (int i = 0; i < threadNum; i++) {
    8000506c:	00000493          	li	s1,0
    80005070:	0080006f          	j	80005078 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80005074:	0014849b          	addiw	s1,s1,1
    80005078:	0324d263          	bge	s1,s2,8000509c <_Z29producerConsumer_CPP_Sync_APIv+0x388>
        delete threads[i];
    8000507c:	00349793          	slli	a5,s1,0x3
    80005080:	00f987b3          	add	a5,s3,a5
    80005084:	0007b503          	ld	a0,0(a5)
    80005088:	fe0506e3          	beqz	a0,80005074 <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    8000508c:	00053783          	ld	a5,0(a0)
    80005090:	0087b783          	ld	a5,8(a5)
    80005094:	000780e7          	jalr	a5
    80005098:	fddff06f          	j	80005074 <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    delete consumerThread;
    8000509c:	000b0a63          	beqz	s6,800050b0 <_Z29producerConsumer_CPP_Sync_APIv+0x39c>
    800050a0:	000b3783          	ld	a5,0(s6)
    800050a4:	0087b783          	ld	a5,8(a5)
    800050a8:	000b0513          	mv	a0,s6
    800050ac:	000780e7          	jalr	a5
    delete waitForAll;
    800050b0:	00007797          	auipc	a5,0x7
    800050b4:	9d078793          	addi	a5,a5,-1584 # 8000ba80 <_ZL10waitForAll>
    800050b8:	0007b503          	ld	a0,0(a5)
    800050bc:	00050863          	beqz	a0,800050cc <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
    800050c0:	00053783          	ld	a5,0(a0)
    800050c4:	0087b783          	ld	a5,8(a5)
    800050c8:	000780e7          	jalr	a5
    delete buffer;
    800050cc:	000a8e63          	beqz	s5,800050e8 <_Z29producerConsumer_CPP_Sync_APIv+0x3d4>
    800050d0:	000a8513          	mv	a0,s5
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	f6c080e7          	jalr	-148(ra) # 80006040 <_ZN9BufferCPPD1Ev>
    800050dc:	000a8513          	mv	a0,s5
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	cb8080e7          	jalr	-840(ra) # 80001d98 <_ZdlPv>
    800050e8:	000b8113          	mv	sp,s7

}
    800050ec:	f9040113          	addi	sp,s0,-112
    800050f0:	06813083          	ld	ra,104(sp)
    800050f4:	06013403          	ld	s0,96(sp)
    800050f8:	05813483          	ld	s1,88(sp)
    800050fc:	05013903          	ld	s2,80(sp)
    80005100:	04813983          	ld	s3,72(sp)
    80005104:	04013a03          	ld	s4,64(sp)
    80005108:	03813a83          	ld	s5,56(sp)
    8000510c:	03013b03          	ld	s6,48(sp)
    80005110:	02813b83          	ld	s7,40(sp)
    80005114:	02013c03          	ld	s8,32(sp)
    80005118:	07010113          	addi	sp,sp,112
    8000511c:	00008067          	ret
    80005120:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005124:	000a8513          	mv	a0,s5
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	c70080e7          	jalr	-912(ra) # 80001d98 <_ZdlPv>
    80005130:	00048513          	mv	a0,s1
    80005134:	00008097          	auipc	ra,0x8
    80005138:	a74080e7          	jalr	-1420(ra) # 8000cba8 <_Unwind_Resume>
    8000513c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005140:	00048513          	mv	a0,s1
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	c54080e7          	jalr	-940(ra) # 80001d98 <_ZdlPv>
    8000514c:	00090513          	mv	a0,s2
    80005150:	00008097          	auipc	ra,0x8
    80005154:	a58080e7          	jalr	-1448(ra) # 8000cba8 <_Unwind_Resume>

0000000080005158 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005158:	ff010113          	addi	sp,sp,-16
    8000515c:	00113423          	sd	ra,8(sp)
    80005160:	00813023          	sd	s0,0(sp)
    80005164:	01010413          	addi	s0,sp,16
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    80005168:	00004797          	auipc	a5,0x4
    8000516c:	55878793          	addi	a5,a5,1368 # 800096c0 <_ZTV6Thread+0x10>
    80005170:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	570080e7          	jalr	1392(ra) # 800016e4 <_Z11thread_exitv>
    8000517c:	00813083          	ld	ra,8(sp)
    80005180:	00013403          	ld	s0,0(sp)
    80005184:	01010113          	addi	sp,sp,16
    80005188:	00008067          	ret

000000008000518c <_ZN12ConsumerSyncD0Ev>:
    8000518c:	fe010113          	addi	sp,sp,-32
    80005190:	00113c23          	sd	ra,24(sp)
    80005194:	00813823          	sd	s0,16(sp)
    80005198:	00913423          	sd	s1,8(sp)
    8000519c:	02010413          	addi	s0,sp,32
    800051a0:	00050493          	mv	s1,a0
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    800051a4:	00004797          	auipc	a5,0x4
    800051a8:	51c78793          	addi	a5,a5,1308 # 800096c0 <_ZTV6Thread+0x10>
    800051ac:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    800051b0:	ffffc097          	auipc	ra,0xffffc
    800051b4:	534080e7          	jalr	1332(ra) # 800016e4 <_Z11thread_exitv>
    800051b8:	00048513          	mv	a0,s1
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	bdc080e7          	jalr	-1060(ra) # 80001d98 <_ZdlPv>
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00813483          	ld	s1,8(sp)
    800051d0:	02010113          	addi	sp,sp,32
    800051d4:	00008067          	ret

00000000800051d8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800051d8:	ff010113          	addi	sp,sp,-16
    800051dc:	00113423          	sd	ra,8(sp)
    800051e0:	00813023          	sd	s0,0(sp)
    800051e4:	01010413          	addi	s0,sp,16
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    800051e8:	00004797          	auipc	a5,0x4
    800051ec:	4d878793          	addi	a5,a5,1240 # 800096c0 <_ZTV6Thread+0x10>
    800051f0:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    800051f4:	ffffc097          	auipc	ra,0xffffc
    800051f8:	4f0080e7          	jalr	1264(ra) # 800016e4 <_Z11thread_exitv>
    800051fc:	00813083          	ld	ra,8(sp)
    80005200:	00013403          	ld	s0,0(sp)
    80005204:	01010113          	addi	sp,sp,16
    80005208:	00008067          	ret

000000008000520c <_ZN12ProducerSyncD0Ev>:
    8000520c:	fe010113          	addi	sp,sp,-32
    80005210:	00113c23          	sd	ra,24(sp)
    80005214:	00813823          	sd	s0,16(sp)
    80005218:	00913423          	sd	s1,8(sp)
    8000521c:	02010413          	addi	s0,sp,32
    80005220:	00050493          	mv	s1,a0
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    80005224:	00004797          	auipc	a5,0x4
    80005228:	49c78793          	addi	a5,a5,1180 # 800096c0 <_ZTV6Thread+0x10>
    8000522c:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	4b4080e7          	jalr	1204(ra) # 800016e4 <_Z11thread_exitv>
    80005238:	00048513          	mv	a0,s1
    8000523c:	ffffd097          	auipc	ra,0xffffd
    80005240:	b5c080e7          	jalr	-1188(ra) # 80001d98 <_ZdlPv>
    80005244:	01813083          	ld	ra,24(sp)
    80005248:	01013403          	ld	s0,16(sp)
    8000524c:	00813483          	ld	s1,8(sp)
    80005250:	02010113          	addi	sp,sp,32
    80005254:	00008067          	ret

0000000080005258 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005258:	ff010113          	addi	sp,sp,-16
    8000525c:	00113423          	sd	ra,8(sp)
    80005260:	00813023          	sd	s0,0(sp)
    80005264:	01010413          	addi	s0,sp,16
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    80005268:	00004797          	auipc	a5,0x4
    8000526c:	45878793          	addi	a5,a5,1112 # 800096c0 <_ZTV6Thread+0x10>
    80005270:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    80005274:	ffffc097          	auipc	ra,0xffffc
    80005278:	470080e7          	jalr	1136(ra) # 800016e4 <_Z11thread_exitv>
    8000527c:	00813083          	ld	ra,8(sp)
    80005280:	00013403          	ld	s0,0(sp)
    80005284:	01010113          	addi	sp,sp,16
    80005288:	00008067          	ret

000000008000528c <_ZN16ProducerKeyboardD0Ev>:
    8000528c:	fe010113          	addi	sp,sp,-32
    80005290:	00113c23          	sd	ra,24(sp)
    80005294:	00813823          	sd	s0,16(sp)
    80005298:	00913423          	sd	s1,8(sp)
    8000529c:	02010413          	addi	s0,sp,32
    800052a0:	00050493          	mv	s1,a0
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    800052a4:	00004797          	auipc	a5,0x4
    800052a8:	41c78793          	addi	a5,a5,1052 # 800096c0 <_ZTV6Thread+0x10>
    800052ac:	00f53023          	sd	a5,0(a0)
        // that thread exit or will the thread this object is managing exit?
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	434080e7          	jalr	1076(ra) # 800016e4 <_Z11thread_exitv>
    800052b8:	00048513          	mv	a0,s1
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	adc080e7          	jalr	-1316(ra) # 80001d98 <_ZdlPv>
    800052c4:	01813083          	ld	ra,24(sp)
    800052c8:	01013403          	ld	s0,16(sp)
    800052cc:	00813483          	ld	s1,8(sp)
    800052d0:	02010113          	addi	sp,sp,32
    800052d4:	00008067          	ret

00000000800052d8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800052d8:	ff010113          	addi	sp,sp,-16
    800052dc:	00113423          	sd	ra,8(sp)
    800052e0:	00813023          	sd	s0,0(sp)
    800052e4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800052e8:	02053583          	ld	a1,32(a0)
    800052ec:	fffff097          	auipc	ra,0xfffff
    800052f0:	7b4080e7          	jalr	1972(ra) # 80004aa0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800052f4:	00813083          	ld	ra,8(sp)
    800052f8:	00013403          	ld	s0,0(sp)
    800052fc:	01010113          	addi	sp,sp,16
    80005300:	00008067          	ret

0000000080005304 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00113423          	sd	ra,8(sp)
    8000530c:	00813023          	sd	s0,0(sp)
    80005310:	01010413          	addi	s0,sp,16
        producer(td);
    80005314:	02053583          	ld	a1,32(a0)
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	850080e7          	jalr	-1968(ra) # 80004b68 <_ZN12ProducerSync8producerEPv>
    }
    80005320:	00813083          	ld	ra,8(sp)
    80005324:	00013403          	ld	s0,0(sp)
    80005328:	01010113          	addi	sp,sp,16
    8000532c:	00008067          	ret

0000000080005330 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005330:	ff010113          	addi	sp,sp,-16
    80005334:	00113423          	sd	ra,8(sp)
    80005338:	00813023          	sd	s0,0(sp)
    8000533c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005340:	02053583          	ld	a1,32(a0)
    80005344:	00000097          	auipc	ra,0x0
    80005348:	8c8080e7          	jalr	-1848(ra) # 80004c0c <_ZN12ConsumerSync8consumerEPv>
    }
    8000534c:	00813083          	ld	ra,8(sp)
    80005350:	00013403          	ld	s0,0(sp)
    80005354:	01010113          	addi	sp,sp,16
    80005358:	00008067          	ret

000000008000535c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000535c:	fe010113          	addi	sp,sp,-32
    80005360:	00113c23          	sd	ra,24(sp)
    80005364:	00813823          	sd	s0,16(sp)
    80005368:	00913423          	sd	s1,8(sp)
    8000536c:	01213023          	sd	s2,0(sp)
    80005370:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005374:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005378:	00600493          	li	s1,6
    while (--i > 0) {
    8000537c:	fff4849b          	addiw	s1,s1,-1
    80005380:	04905463          	blez	s1,800053c8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005384:	00005517          	auipc	a0,0x5
    80005388:	87450513          	addi	a0,a0,-1932 # 80009bf8 <_ZTV12ConsumerSync+0x28>
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	10c080e7          	jalr	268(ra) # 80005498 <_Z11printStringPKc>
        printInt(sleep_time);
    80005394:	00000613          	li	a2,0
    80005398:	00a00593          	li	a1,10
    8000539c:	0009051b          	sext.w	a0,s2
    800053a0:	00000097          	auipc	ra,0x0
    800053a4:	2a4080e7          	jalr	676(ra) # 80005644 <_Z8printIntiii>
        printString(" !\n");
    800053a8:	00005517          	auipc	a0,0x5
    800053ac:	85850513          	addi	a0,a0,-1960 # 80009c00 <_ZTV12ConsumerSync+0x30>
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	0e8080e7          	jalr	232(ra) # 80005498 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800053b8:	00090513          	mv	a0,s2
    800053bc:	ffffc097          	auipc	ra,0xffffc
    800053c0:	5a4080e7          	jalr	1444(ra) # 80001960 <_Z10time_sleepm>
    while (--i > 0) {
    800053c4:	fb9ff06f          	j	8000537c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800053c8:	00a00793          	li	a5,10
    800053cc:	02f95933          	divu	s2,s2,a5
    800053d0:	fff90913          	addi	s2,s2,-1
    800053d4:	00006797          	auipc	a5,0x6
    800053d8:	6b478793          	addi	a5,a5,1716 # 8000ba88 <_ZL8finished>
    800053dc:	01278933          	add	s2,a5,s2
    800053e0:	00100793          	li	a5,1
    800053e4:	00f90023          	sb	a5,0(s2)
}
    800053e8:	01813083          	ld	ra,24(sp)
    800053ec:	01013403          	ld	s0,16(sp)
    800053f0:	00813483          	ld	s1,8(sp)
    800053f4:	00013903          	ld	s2,0(sp)
    800053f8:	02010113          	addi	sp,sp,32
    800053fc:	00008067          	ret

0000000080005400 <_Z12testSleepingv>:

void testSleeping() {
    80005400:	fc010113          	addi	sp,sp,-64
    80005404:	02113c23          	sd	ra,56(sp)
    80005408:	02813823          	sd	s0,48(sp)
    8000540c:	02913423          	sd	s1,40(sp)
    80005410:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005414:	00a00793          	li	a5,10
    80005418:	fcf43823          	sd	a5,-48(s0)
    8000541c:	01400793          	li	a5,20
    80005420:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005424:	00000493          	li	s1,0
    80005428:	00100793          	li	a5,1
    8000542c:	0297c863          	blt	a5,s1,8000545c <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005430:	00349513          	slli	a0,s1,0x3
    80005434:	fd040793          	addi	a5,s0,-48
    80005438:	00a78633          	add	a2,a5,a0
    8000543c:	00000597          	auipc	a1,0x0
    80005440:	f2058593          	addi	a1,a1,-224 # 8000535c <_ZL9sleepyRunPv>
    80005444:	fc040793          	addi	a5,s0,-64
    80005448:	00a78533          	add	a0,a5,a0
    8000544c:	ffffc097          	auipc	ra,0xffffc
    80005450:	214080e7          	jalr	532(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005454:	0014849b          	addiw	s1,s1,1
    80005458:	fd1ff06f          	j	80005428 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    8000545c:	00006797          	auipc	a5,0x6
    80005460:	62c78793          	addi	a5,a5,1580 # 8000ba88 <_ZL8finished>
    80005464:	0007c783          	lbu	a5,0(a5)
    80005468:	0ff7f793          	andi	a5,a5,255
    8000546c:	fe0788e3          	beqz	a5,8000545c <_Z12testSleepingv+0x5c>
    80005470:	00006797          	auipc	a5,0x6
    80005474:	61878793          	addi	a5,a5,1560 # 8000ba88 <_ZL8finished>
    80005478:	0017c783          	lbu	a5,1(a5)
    8000547c:	0ff7f793          	andi	a5,a5,255
    80005480:	fc078ee3          	beqz	a5,8000545c <_Z12testSleepingv+0x5c>
}
    80005484:	03813083          	ld	ra,56(sp)
    80005488:	03013403          	ld	s0,48(sp)
    8000548c:	02813483          	ld	s1,40(sp)
    80005490:	04010113          	addi	sp,sp,64
    80005494:	00008067          	ret

0000000080005498 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005498:	fe010113          	addi	sp,sp,-32
    8000549c:	00113c23          	sd	ra,24(sp)
    800054a0:	00813823          	sd	s0,16(sp)
    800054a4:	00913423          	sd	s1,8(sp)
    800054a8:	02010413          	addi	s0,sp,32
    800054ac:	00050493          	mv	s1,a0
    LOCK();
    800054b0:	00100613          	li	a2,1
    800054b4:	00000593          	li	a1,0
    800054b8:	00006517          	auipc	a0,0x6
    800054bc:	5d850513          	addi	a0,a0,1496 # 8000ba90 <lockPrint>
    800054c0:	ffffc097          	auipc	ra,0xffffc
    800054c4:	c64080e7          	jalr	-924(ra) # 80001124 <copy_and_swap>
    800054c8:	00050863          	beqz	a0,800054d8 <_Z11printStringPKc+0x40>
    800054cc:	ffffc097          	auipc	ra,0xffffc
    800054d0:	278080e7          	jalr	632(ra) # 80001744 <_Z15thread_dispatchv>
    800054d4:	fddff06f          	j	800054b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800054d8:	0004c503          	lbu	a0,0(s1)
    800054dc:	00050a63          	beqz	a0,800054f0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	4ec080e7          	jalr	1260(ra) # 800019cc <_Z4putcc>
        string++;
    800054e8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800054ec:	fedff06f          	j	800054d8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800054f0:	00000613          	li	a2,0
    800054f4:	00100593          	li	a1,1
    800054f8:	00006517          	auipc	a0,0x6
    800054fc:	59850513          	addi	a0,a0,1432 # 8000ba90 <lockPrint>
    80005500:	ffffc097          	auipc	ra,0xffffc
    80005504:	c24080e7          	jalr	-988(ra) # 80001124 <copy_and_swap>
    80005508:	fe0514e3          	bnez	a0,800054f0 <_Z11printStringPKc+0x58>
}
    8000550c:	01813083          	ld	ra,24(sp)
    80005510:	01013403          	ld	s0,16(sp)
    80005514:	00813483          	ld	s1,8(sp)
    80005518:	02010113          	addi	sp,sp,32
    8000551c:	00008067          	ret

0000000080005520 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005520:	fd010113          	addi	sp,sp,-48
    80005524:	02113423          	sd	ra,40(sp)
    80005528:	02813023          	sd	s0,32(sp)
    8000552c:	00913c23          	sd	s1,24(sp)
    80005530:	01213823          	sd	s2,16(sp)
    80005534:	01313423          	sd	s3,8(sp)
    80005538:	01413023          	sd	s4,0(sp)
    8000553c:	03010413          	addi	s0,sp,48
    80005540:	00050993          	mv	s3,a0
    80005544:	00058a13          	mv	s4,a1
    LOCK();
    80005548:	00100613          	li	a2,1
    8000554c:	00000593          	li	a1,0
    80005550:	00006517          	auipc	a0,0x6
    80005554:	54050513          	addi	a0,a0,1344 # 8000ba90 <lockPrint>
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	bcc080e7          	jalr	-1076(ra) # 80001124 <copy_and_swap>
    80005560:	00050863          	beqz	a0,80005570 <_Z9getStringPci+0x50>
    80005564:	ffffc097          	auipc	ra,0xffffc
    80005568:	1e0080e7          	jalr	480(ra) # 80001744 <_Z15thread_dispatchv>
    8000556c:	fddff06f          	j	80005548 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005570:	00000493          	li	s1,0
    80005574:	0014891b          	addiw	s2,s1,1
    80005578:	03495a63          	bge	s2,s4,800055ac <_Z9getStringPci+0x8c>
        cc = getc();
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	400080e7          	jalr	1024(ra) # 8000197c <_Z4getcv>
        if(cc < 1)
    80005584:	02050463          	beqz	a0,800055ac <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    80005588:	009984b3          	add	s1,s3,s1
    8000558c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005590:	00a00793          	li	a5,10
    80005594:	00f50a63          	beq	a0,a5,800055a8 <_Z9getStringPci+0x88>
        buf[i++] = c;
    80005598:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    8000559c:	00d00793          	li	a5,13
    800055a0:	fcf51ae3          	bne	a0,a5,80005574 <_Z9getStringPci+0x54>
    800055a4:	0080006f          	j	800055ac <_Z9getStringPci+0x8c>
        buf[i++] = c;
    800055a8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800055ac:	009984b3          	add	s1,s3,s1
    800055b0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800055b4:	00000613          	li	a2,0
    800055b8:	00100593          	li	a1,1
    800055bc:	00006517          	auipc	a0,0x6
    800055c0:	4d450513          	addi	a0,a0,1236 # 8000ba90 <lockPrint>
    800055c4:	ffffc097          	auipc	ra,0xffffc
    800055c8:	b60080e7          	jalr	-1184(ra) # 80001124 <copy_and_swap>
    800055cc:	fe0514e3          	bnez	a0,800055b4 <_Z9getStringPci+0x94>
    return buf;
}
    800055d0:	00098513          	mv	a0,s3
    800055d4:	02813083          	ld	ra,40(sp)
    800055d8:	02013403          	ld	s0,32(sp)
    800055dc:	01813483          	ld	s1,24(sp)
    800055e0:	01013903          	ld	s2,16(sp)
    800055e4:	00813983          	ld	s3,8(sp)
    800055e8:	00013a03          	ld	s4,0(sp)
    800055ec:	03010113          	addi	sp,sp,48
    800055f0:	00008067          	ret

00000000800055f4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800055f4:	ff010113          	addi	sp,sp,-16
    800055f8:	00813423          	sd	s0,8(sp)
    800055fc:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    80005600:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    80005604:	00054603          	lbu	a2,0(a0)
    80005608:	fd06069b          	addiw	a3,a2,-48
    8000560c:	0ff6f693          	andi	a3,a3,255
    80005610:	00900713          	li	a4,9
    80005614:	02d76063          	bltu	a4,a3,80005634 <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    80005618:	0027969b          	slliw	a3,a5,0x2
    8000561c:	00f687bb          	addw	a5,a3,a5
    80005620:	0017971b          	slliw	a4,a5,0x1
    80005624:	00150513          	addi	a0,a0,1
    80005628:	00c707bb          	addw	a5,a4,a2
    8000562c:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    80005630:	fd5ff06f          	j	80005604 <_Z11stringToIntPKc+0x10>
    return n;
}
    80005634:	00078513          	mv	a0,a5
    80005638:	00813403          	ld	s0,8(sp)
    8000563c:	01010113          	addi	sp,sp,16
    80005640:	00008067          	ret

0000000080005644 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005644:	fc010113          	addi	sp,sp,-64
    80005648:	02113c23          	sd	ra,56(sp)
    8000564c:	02813823          	sd	s0,48(sp)
    80005650:	02913423          	sd	s1,40(sp)
    80005654:	03213023          	sd	s2,32(sp)
    80005658:	01313c23          	sd	s3,24(sp)
    8000565c:	04010413          	addi	s0,sp,64
    80005660:	00050493          	mv	s1,a0
    80005664:	00058913          	mv	s2,a1
    80005668:	00060993          	mv	s3,a2
    LOCK();
    8000566c:	00100613          	li	a2,1
    80005670:	00000593          	li	a1,0
    80005674:	00006517          	auipc	a0,0x6
    80005678:	41c50513          	addi	a0,a0,1052 # 8000ba90 <lockPrint>
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	aa8080e7          	jalr	-1368(ra) # 80001124 <copy_and_swap>
    80005684:	00050863          	beqz	a0,80005694 <_Z8printIntiii+0x50>
    80005688:	ffffc097          	auipc	ra,0xffffc
    8000568c:	0bc080e7          	jalr	188(ra) # 80001744 <_Z15thread_dispatchv>
    80005690:	fddff06f          	j	8000566c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005694:	00098463          	beqz	s3,8000569c <_Z8printIntiii+0x58>
    80005698:	0004ca63          	bltz	s1,800056ac <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000569c:	0004851b          	sext.w	a0,s1
    neg = 0;
    800056a0:	00000593          	li	a1,0
    }

    i = 0;
    800056a4:	00000613          	li	a2,0
    800056a8:	0180006f          	j	800056c0 <_Z8printIntiii+0x7c>
        x = -xx;
    800056ac:	4090053b          	negw	a0,s1
        neg = 1;
    800056b0:	00100593          	li	a1,1
        x = -xx;
    800056b4:	ff1ff06f          	j	800056a4 <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    800056b8:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    800056bc:	00048613          	mv	a2,s1
    800056c0:	0009079b          	sext.w	a5,s2
    800056c4:	02f5773b          	remuw	a4,a0,a5
    800056c8:	0016049b          	addiw	s1,a2,1
    800056cc:	02071693          	slli	a3,a4,0x20
    800056d0:	0206d693          	srli	a3,a3,0x20
    800056d4:	00006717          	auipc	a4,0x6
    800056d8:	15c70713          	addi	a4,a4,348 # 8000b830 <digits>
    800056dc:	00d70733          	add	a4,a4,a3
    800056e0:	00074683          	lbu	a3,0(a4)
    800056e4:	fd040713          	addi	a4,s0,-48
    800056e8:	00c70733          	add	a4,a4,a2
    800056ec:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800056f0:	02f5573b          	divuw	a4,a0,a5
    800056f4:	0007069b          	sext.w	a3,a4
    800056f8:	fcf570e3          	bgeu	a0,a5,800056b8 <_Z8printIntiii+0x74>
    if(neg)
    800056fc:	00058c63          	beqz	a1,80005714 <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    80005700:	fd040793          	addi	a5,s0,-48
    80005704:	009784b3          	add	s1,a5,s1
    80005708:	02d00793          	li	a5,45
    8000570c:	fef48823          	sb	a5,-16(s1)
    80005710:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005714:	fff4849b          	addiw	s1,s1,-1
    80005718:	0004ce63          	bltz	s1,80005734 <_Z8printIntiii+0xf0>
        putc(buf[i]);
    8000571c:	fd040793          	addi	a5,s0,-48
    80005720:	009787b3          	add	a5,a5,s1
    80005724:	ff07c503          	lbu	a0,-16(a5)
    80005728:	ffffc097          	auipc	ra,0xffffc
    8000572c:	2a4080e7          	jalr	676(ra) # 800019cc <_Z4putcc>
    80005730:	fe5ff06f          	j	80005714 <_Z8printIntiii+0xd0>

    UNLOCK();
    80005734:	00000613          	li	a2,0
    80005738:	00100593          	li	a1,1
    8000573c:	00006517          	auipc	a0,0x6
    80005740:	35450513          	addi	a0,a0,852 # 8000ba90 <lockPrint>
    80005744:	ffffc097          	auipc	ra,0xffffc
    80005748:	9e0080e7          	jalr	-1568(ra) # 80001124 <copy_and_swap>
    8000574c:	fe0514e3          	bnez	a0,80005734 <_Z8printIntiii+0xf0>
    80005750:	03813083          	ld	ra,56(sp)
    80005754:	03013403          	ld	s0,48(sp)
    80005758:	02813483          	ld	s1,40(sp)
    8000575c:	02013903          	ld	s2,32(sp)
    80005760:	01813983          	ld	s3,24(sp)
    80005764:	04010113          	addi	sp,sp,64
    80005768:	00008067          	ret

000000008000576c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000576c:	fe010113          	addi	sp,sp,-32
    80005770:	00113c23          	sd	ra,24(sp)
    80005774:	00813823          	sd	s0,16(sp)
    80005778:	00913423          	sd	s1,8(sp)
    8000577c:	01213023          	sd	s2,0(sp)
    80005780:	02010413          	addi	s0,sp,32
    80005784:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005788:	00000913          	li	s2,0
    8000578c:	00c0006f          	j	80005798 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	fb4080e7          	jalr	-76(ra) # 80001744 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80005798:	ffffc097          	auipc	ra,0xffffc
    8000579c:	1e4080e7          	jalr	484(ra) # 8000197c <_Z4getcv>
    800057a0:	0005059b          	sext.w	a1,a0
    800057a4:	01b00793          	li	a5,27
    800057a8:	02f58a63          	beq	a1,a5,800057dc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800057ac:	0084b503          	ld	a0,8(s1)
    800057b0:	ffffd097          	auipc	ra,0xffffd
    800057b4:	6a4080e7          	jalr	1700(ra) # 80002e54 <_ZN6Buffer3putEi>
        i++;
    800057b8:	0019079b          	addiw	a5,s2,1
    800057bc:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    800057c0:	0004a683          	lw	a3,0(s1)
    800057c4:	0026971b          	slliw	a4,a3,0x2
    800057c8:	00d7073b          	addw	a4,a4,a3
    800057cc:	0017169b          	slliw	a3,a4,0x1
    800057d0:	02d7e7bb          	remw	a5,a5,a3
    800057d4:	fc0792e3          	bnez	a5,80005798 <_ZL16producerKeyboardPv+0x2c>
    800057d8:	fb9ff06f          	j	80005790 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800057dc:	00100793          	li	a5,1
    800057e0:	00006717          	auipc	a4,0x6
    800057e4:	2af72c23          	sw	a5,696(a4) # 8000ba98 <_ZL9threadEnd>
    data->buffer->put('!');
    800057e8:	02100593          	li	a1,33
    800057ec:	0084b503          	ld	a0,8(s1)
    800057f0:	ffffd097          	auipc	ra,0xffffd
    800057f4:	664080e7          	jalr	1636(ra) # 80002e54 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800057f8:	0104b503          	ld	a0,16(s1)
    800057fc:	ffffc097          	auipc	ra,0xffffc
    80005800:	0f8080e7          	jalr	248(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
}
    80005804:	01813083          	ld	ra,24(sp)
    80005808:	01013403          	ld	s0,16(sp)
    8000580c:	00813483          	ld	s1,8(sp)
    80005810:	00013903          	ld	s2,0(sp)
    80005814:	02010113          	addi	sp,sp,32
    80005818:	00008067          	ret

000000008000581c <_ZL8producerPv>:

static void producer(void *arg) {
    8000581c:	fe010113          	addi	sp,sp,-32
    80005820:	00113c23          	sd	ra,24(sp)
    80005824:	00813823          	sd	s0,16(sp)
    80005828:	00913423          	sd	s1,8(sp)
    8000582c:	01213023          	sd	s2,0(sp)
    80005830:	02010413          	addi	s0,sp,32
    80005834:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005838:	00000913          	li	s2,0
    8000583c:	00c0006f          	j	80005848 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	f04080e7          	jalr	-252(ra) # 80001744 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80005848:	00006797          	auipc	a5,0x6
    8000584c:	25078793          	addi	a5,a5,592 # 8000ba98 <_ZL9threadEnd>
    80005850:	0007a783          	lw	a5,0(a5)
    80005854:	0007879b          	sext.w	a5,a5
    80005858:	02079e63          	bnez	a5,80005894 <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    8000585c:	0004a583          	lw	a1,0(s1)
    80005860:	0305859b          	addiw	a1,a1,48
    80005864:	0084b503          	ld	a0,8(s1)
    80005868:	ffffd097          	auipc	ra,0xffffd
    8000586c:	5ec080e7          	jalr	1516(ra) # 80002e54 <_ZN6Buffer3putEi>
        i++;
    80005870:	0019079b          	addiw	a5,s2,1
    80005874:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    80005878:	0004a683          	lw	a3,0(s1)
    8000587c:	0026971b          	slliw	a4,a3,0x2
    80005880:	00d7073b          	addw	a4,a4,a3
    80005884:	0017169b          	slliw	a3,a4,0x1
    80005888:	02d7e7bb          	remw	a5,a5,a3
    8000588c:	fa079ee3          	bnez	a5,80005848 <_ZL8producerPv+0x2c>
    80005890:	fb1ff06f          	j	80005840 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80005894:	0104b503          	ld	a0,16(s1)
    80005898:	ffffc097          	auipc	ra,0xffffc
    8000589c:	05c080e7          	jalr	92(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
}
    800058a0:	01813083          	ld	ra,24(sp)
    800058a4:	01013403          	ld	s0,16(sp)
    800058a8:	00813483          	ld	s1,8(sp)
    800058ac:	00013903          	ld	s2,0(sp)
    800058b0:	02010113          	addi	sp,sp,32
    800058b4:	00008067          	ret

00000000800058b8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800058b8:	fd010113          	addi	sp,sp,-48
    800058bc:	02113423          	sd	ra,40(sp)
    800058c0:	02813023          	sd	s0,32(sp)
    800058c4:	00913c23          	sd	s1,24(sp)
    800058c8:	01213823          	sd	s2,16(sp)
    800058cc:	01313423          	sd	s3,8(sp)
    800058d0:	03010413          	addi	s0,sp,48
    800058d4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800058d8:	00000993          	li	s3,0
    800058dc:	01c0006f          	j	800058f8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	e64080e7          	jalr	-412(ra) # 80001744 <_Z15thread_dispatchv>
    800058e8:	0580006f          	j	80005940 <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800058ec:	00a00513          	li	a0,10
    800058f0:	ffffc097          	auipc	ra,0xffffc
    800058f4:	0dc080e7          	jalr	220(ra) # 800019cc <_Z4putcc>
    while (!threadEnd) {
    800058f8:	00006797          	auipc	a5,0x6
    800058fc:	1a078793          	addi	a5,a5,416 # 8000ba98 <_ZL9threadEnd>
    80005900:	0007a783          	lw	a5,0(a5)
    80005904:	0007879b          	sext.w	a5,a5
    80005908:	04079463          	bnez	a5,80005950 <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    8000590c:	00893503          	ld	a0,8(s2)
    80005910:	ffffd097          	auipc	ra,0xffffd
    80005914:	5d4080e7          	jalr	1492(ra) # 80002ee4 <_ZN6Buffer3getEv>
        i++;
    80005918:	0019849b          	addiw	s1,s3,1
    8000591c:	0004899b          	sext.w	s3,s1
        putc(key);
    80005920:	0ff57513          	andi	a0,a0,255
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	0a8080e7          	jalr	168(ra) # 800019cc <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000592c:	00092703          	lw	a4,0(s2)
    80005930:	0027179b          	slliw	a5,a4,0x2
    80005934:	00e787bb          	addw	a5,a5,a4
    80005938:	02f4e7bb          	remw	a5,s1,a5
    8000593c:	fa0782e3          	beqz	a5,800058e0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80005940:	05000793          	li	a5,80
    80005944:	02f4e4bb          	remw	s1,s1,a5
    80005948:	fa0498e3          	bnez	s1,800058f8 <_ZL8consumerPv+0x40>
    8000594c:	fa1ff06f          	j	800058ec <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    80005950:	00893503          	ld	a0,8(s2)
    80005954:	ffffd097          	auipc	ra,0xffffd
    80005958:	61c080e7          	jalr	1564(ra) # 80002f70 <_ZN6Buffer6getCntEv>
    8000595c:	02a05063          	blez	a0,8000597c <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    80005960:	00893503          	ld	a0,8(s2)
    80005964:	ffffd097          	auipc	ra,0xffffd
    80005968:	580080e7          	jalr	1408(ra) # 80002ee4 <_ZN6Buffer3getEv>
        putc(key);
    8000596c:	0ff57513          	andi	a0,a0,255
    80005970:	ffffc097          	auipc	ra,0xffffc
    80005974:	05c080e7          	jalr	92(ra) # 800019cc <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80005978:	fd9ff06f          	j	80005950 <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    8000597c:	01093503          	ld	a0,16(s2)
    80005980:	ffffc097          	auipc	ra,0xffffc
    80005984:	f74080e7          	jalr	-140(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
}
    80005988:	02813083          	ld	ra,40(sp)
    8000598c:	02013403          	ld	s0,32(sp)
    80005990:	01813483          	ld	s1,24(sp)
    80005994:	01013903          	ld	s2,16(sp)
    80005998:	00813983          	ld	s3,8(sp)
    8000599c:	03010113          	addi	sp,sp,48
    800059a0:	00008067          	ret

00000000800059a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800059a4:	f9010113          	addi	sp,sp,-112
    800059a8:	06113423          	sd	ra,104(sp)
    800059ac:	06813023          	sd	s0,96(sp)
    800059b0:	04913c23          	sd	s1,88(sp)
    800059b4:	05213823          	sd	s2,80(sp)
    800059b8:	05313423          	sd	s3,72(sp)
    800059bc:	05413023          	sd	s4,64(sp)
    800059c0:	03513c23          	sd	s5,56(sp)
    800059c4:	03613823          	sd	s6,48(sp)
    800059c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800059cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800059d0:	00004517          	auipc	a0,0x4
    800059d4:	da050513          	addi	a0,a0,-608 # 80009770 <_ZTV8Consumer+0x28>
    800059d8:	00000097          	auipc	ra,0x0
    800059dc:	ac0080e7          	jalr	-1344(ra) # 80005498 <_Z11printStringPKc>
    getString(input, 30);
    800059e0:	01e00593          	li	a1,30
    800059e4:	fa040513          	addi	a0,s0,-96
    800059e8:	00000097          	auipc	ra,0x0
    800059ec:	b38080e7          	jalr	-1224(ra) # 80005520 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800059f0:	fa040513          	addi	a0,s0,-96
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	c00080e7          	jalr	-1024(ra) # 800055f4 <_Z11stringToIntPKc>
    800059fc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	d9050513          	addi	a0,a0,-624 # 80009790 <_ZTV8Consumer+0x48>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	a90080e7          	jalr	-1392(ra) # 80005498 <_Z11printStringPKc>
    getString(input, 30);
    80005a10:	01e00593          	li	a1,30
    80005a14:	fa040513          	addi	a0,s0,-96
    80005a18:	00000097          	auipc	ra,0x0
    80005a1c:	b08080e7          	jalr	-1272(ra) # 80005520 <_Z9getStringPci>
    n = stringToInt(input);
    80005a20:	fa040513          	addi	a0,s0,-96
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	bd0080e7          	jalr	-1072(ra) # 800055f4 <_Z11stringToIntPKc>
    80005a2c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005a30:	00004517          	auipc	a0,0x4
    80005a34:	d8050513          	addi	a0,a0,-640 # 800097b0 <_ZTV8Consumer+0x68>
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	a60080e7          	jalr	-1440(ra) # 80005498 <_Z11printStringPKc>
    80005a40:	00000613          	li	a2,0
    80005a44:	00a00593          	li	a1,10
    80005a48:	00090513          	mv	a0,s2
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	bf8080e7          	jalr	-1032(ra) # 80005644 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	d7450513          	addi	a0,a0,-652 # 800097c8 <_ZTV8Consumer+0x80>
    80005a5c:	00000097          	auipc	ra,0x0
    80005a60:	a3c080e7          	jalr	-1476(ra) # 80005498 <_Z11printStringPKc>
    80005a64:	00000613          	li	a2,0
    80005a68:	00a00593          	li	a1,10
    80005a6c:	00048513          	mv	a0,s1
    80005a70:	00000097          	auipc	ra,0x0
    80005a74:	bd4080e7          	jalr	-1068(ra) # 80005644 <_Z8printIntiii>
    printString(".\n");
    80005a78:	00004517          	auipc	a0,0x4
    80005a7c:	d6850513          	addi	a0,a0,-664 # 800097e0 <_ZTV8Consumer+0x98>
    80005a80:	00000097          	auipc	ra,0x0
    80005a84:	a18080e7          	jalr	-1512(ra) # 80005498 <_Z11printStringPKc>
    if(threadNum > n) {
    80005a88:	0324c463          	blt	s1,s2,80005ab0 <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    80005a8c:	03205c63          	blez	s2,80005ac4 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    80005a90:	03800513          	li	a0,56
    80005a94:	ffffc097          	auipc	ra,0xffffc
    80005a98:	284080e7          	jalr	644(ra) # 80001d18 <_Znwm>
    80005a9c:	00050a13          	mv	s4,a0
    80005aa0:	00048593          	mv	a1,s1
    80005aa4:	ffffd097          	auipc	ra,0xffffd
    80005aa8:	314080e7          	jalr	788(ra) # 80002db8 <_ZN6BufferC1Ei>
    80005aac:	0300006f          	j	80005adc <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005ab0:	00004517          	auipc	a0,0x4
    80005ab4:	d3850513          	addi	a0,a0,-712 # 800097e8 <_ZTV8Consumer+0xa0>
    80005ab8:	00000097          	auipc	ra,0x0
    80005abc:	9e0080e7          	jalr	-1568(ra) # 80005498 <_Z11printStringPKc>
        return;
    80005ac0:	0140006f          	j	80005ad4 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005ac4:	00004517          	auipc	a0,0x4
    80005ac8:	d6450513          	addi	a0,a0,-668 # 80009828 <_ZTV8Consumer+0xe0>
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	9cc080e7          	jalr	-1588(ra) # 80005498 <_Z11printStringPKc>
        return;
    80005ad4:	000b0113          	mv	sp,s6
    80005ad8:	1680006f          	j	80005c40 <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80005adc:	00000593          	li	a1,0
    80005ae0:	00006517          	auipc	a0,0x6
    80005ae4:	fc050513          	addi	a0,a0,-64 # 8000baa0 <_ZL10waitForAll>
    80005ae8:	ffffc097          	auipc	ra,0xffffc
    80005aec:	cb8080e7          	jalr	-840(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    80005af0:	00391793          	slli	a5,s2,0x3
    80005af4:	00f78793          	addi	a5,a5,15
    80005af8:	ff07f793          	andi	a5,a5,-16
    80005afc:	40f10133          	sub	sp,sp,a5
    80005b00:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80005b04:	0019079b          	addiw	a5,s2,1
    80005b08:	00179713          	slli	a4,a5,0x1
    80005b0c:	00f70733          	add	a4,a4,a5
    80005b10:	00371793          	slli	a5,a4,0x3
    80005b14:	00f78793          	addi	a5,a5,15
    80005b18:	ff07f793          	andi	a5,a5,-16
    80005b1c:	40f10133          	sub	sp,sp,a5
    80005b20:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80005b24:	00191713          	slli	a4,s2,0x1
    80005b28:	012706b3          	add	a3,a4,s2
    80005b2c:	00369793          	slli	a5,a3,0x3
    80005b30:	00f987b3          	add	a5,s3,a5
    80005b34:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005b38:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80005b3c:	00006697          	auipc	a3,0x6
    80005b40:	f6468693          	addi	a3,a3,-156 # 8000baa0 <_ZL10waitForAll>
    80005b44:	0006b683          	ld	a3,0(a3)
    80005b48:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80005b4c:	012707b3          	add	a5,a4,s2
    80005b50:	00379613          	slli	a2,a5,0x3
    80005b54:	00c98633          	add	a2,s3,a2
    80005b58:	00000597          	auipc	a1,0x0
    80005b5c:	d6058593          	addi	a1,a1,-672 # 800058b8 <_ZL8consumerPv>
    80005b60:	f9840513          	addi	a0,s0,-104
    80005b64:	ffffc097          	auipc	ra,0xffffc
    80005b68:	afc080e7          	jalr	-1284(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005b6c:	00000493          	li	s1,0
    80005b70:	0280006f          	j	80005b98 <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    80005b74:	00000597          	auipc	a1,0x0
    80005b78:	bf858593          	addi	a1,a1,-1032 # 8000576c <_ZL16producerKeyboardPv>
                      data + i);
    80005b7c:	00171793          	slli	a5,a4,0x1
    80005b80:	00e787b3          	add	a5,a5,a4
    80005b84:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    80005b88:	00c98633          	add	a2,s3,a2
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	ad4080e7          	jalr	-1324(ra) # 80001660 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005b94:	0014849b          	addiw	s1,s1,1
    80005b98:	0524d463          	bge	s1,s2,80005be0 <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    80005b9c:	00149713          	slli	a4,s1,0x1
    80005ba0:	00970733          	add	a4,a4,s1
    80005ba4:	00371793          	slli	a5,a4,0x3
    80005ba8:	00f987b3          	add	a5,s3,a5
    80005bac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005bb0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80005bb4:	00006717          	auipc	a4,0x6
    80005bb8:	eec70713          	addi	a4,a4,-276 # 8000baa0 <_ZL10waitForAll>
    80005bbc:	00073703          	ld	a4,0(a4)
    80005bc0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80005bc4:	00048713          	mv	a4,s1
    80005bc8:	00349513          	slli	a0,s1,0x3
    80005bcc:	00aa8533          	add	a0,s5,a0
    80005bd0:	fa9052e3          	blez	s1,80005b74 <_Z22producerConsumer_C_APIv+0x1d0>
    80005bd4:	00000597          	auipc	a1,0x0
    80005bd8:	c4858593          	addi	a1,a1,-952 # 8000581c <_ZL8producerPv>
    80005bdc:	fa1ff06f          	j	80005b7c <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	b64080e7          	jalr	-1180(ra) # 80001744 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005be8:	00000493          	li	s1,0
    80005bec:	02994063          	blt	s2,s1,80005c0c <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    80005bf0:	00006797          	auipc	a5,0x6
    80005bf4:	eb078793          	addi	a5,a5,-336 # 8000baa0 <_ZL10waitForAll>
    80005bf8:	0007b503          	ld	a0,0(a5)
    80005bfc:	ffffc097          	auipc	ra,0xffffc
    80005c00:	c8c080e7          	jalr	-884(ra) # 80001888 <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80005c04:	0014849b          	addiw	s1,s1,1
    80005c08:	fe5ff06f          	j	80005bec <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    80005c0c:	00006797          	auipc	a5,0x6
    80005c10:	e9478793          	addi	a5,a5,-364 # 8000baa0 <_ZL10waitForAll>
    80005c14:	0007b503          	ld	a0,0(a5)
    80005c18:	ffffc097          	auipc	ra,0xffffc
    80005c1c:	c04080e7          	jalr	-1020(ra) # 8000181c <_Z9sem_closeP10_semaphore>
    delete buffer;
    80005c20:	000a0e63          	beqz	s4,80005c3c <_Z22producerConsumer_C_APIv+0x298>
    80005c24:	000a0513          	mv	a0,s4
    80005c28:	ffffd097          	auipc	ra,0xffffd
    80005c2c:	3d0080e7          	jalr	976(ra) # 80002ff8 <_ZN6BufferD1Ev>
    80005c30:	000a0513          	mv	a0,s4
    80005c34:	ffffc097          	auipc	ra,0xffffc
    80005c38:	164080e7          	jalr	356(ra) # 80001d98 <_ZdlPv>
    80005c3c:	000b0113          	mv	sp,s6

}
    80005c40:	f9040113          	addi	sp,s0,-112
    80005c44:	06813083          	ld	ra,104(sp)
    80005c48:	06013403          	ld	s0,96(sp)
    80005c4c:	05813483          	ld	s1,88(sp)
    80005c50:	05013903          	ld	s2,80(sp)
    80005c54:	04813983          	ld	s3,72(sp)
    80005c58:	04013a03          	ld	s4,64(sp)
    80005c5c:	03813a83          	ld	s5,56(sp)
    80005c60:	03013b03          	ld	s6,48(sp)
    80005c64:	07010113          	addi	sp,sp,112
    80005c68:	00008067          	ret
    80005c6c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80005c70:	000a0513          	mv	a0,s4
    80005c74:	ffffc097          	auipc	ra,0xffffc
    80005c78:	124080e7          	jalr	292(ra) # 80001d98 <_ZdlPv>
    80005c7c:	00048513          	mv	a0,s1
    80005c80:	00007097          	auipc	ra,0x7
    80005c84:	f28080e7          	jalr	-216(ra) # 8000cba8 <_Unwind_Resume>

0000000080005c88 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c88:	fd010113          	addi	sp,sp,-48
    80005c8c:	02113423          	sd	ra,40(sp)
    80005c90:	02813023          	sd	s0,32(sp)
    80005c94:	00913c23          	sd	s1,24(sp)
    80005c98:	01213823          	sd	s2,16(sp)
    80005c9c:	01313423          	sd	s3,8(sp)
    80005ca0:	03010413          	addi	s0,sp,48
    80005ca4:	00050493          	mv	s1,a0
    80005ca8:	00058993          	mv	s3,a1
    80005cac:	0015879b          	addiw	a5,a1,1
    80005cb0:	0007851b          	sext.w	a0,a5
    80005cb4:	00f4a023          	sw	a5,0(s1)
    80005cb8:	0004a823          	sw	zero,16(s1)
    80005cbc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005cc0:	00251513          	slli	a0,a0,0x2
    80005cc4:	ffffc097          	auipc	ra,0xffffc
    80005cc8:	810080e7          	jalr	-2032(ra) # 800014d4 <_Z9mem_allocm>
    80005ccc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005cd0:	01000513          	li	a0,16
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	044080e7          	jalr	68(ra) # 80001d18 <_Znwm>
    80005cdc:	00050913          	mv	s2,a0
    void* arg;
    80005ce0:	00004797          	auipc	a5,0x4
    80005ce4:	a0878793          	addi	a5,a5,-1528 # 800096e8 <_ZTV9Semaphore+0x10>
    80005ce8:	00f53023          	sd	a5,0(a0)
};
    80005cec:	00000593          	li	a1,0
    80005cf0:	00850513          	addi	a0,a0,8
    80005cf4:	ffffc097          	auipc	ra,0xffffc
    80005cf8:	aac080e7          	jalr	-1364(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    80005cfc:	00050463          	beqz	a0,80005d04 <_ZN9BufferCPPC1Ei+0x7c>

    80005d00:	00093423          	sd	zero,8(s2)
    80005d04:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005d08:	01000513          	li	a0,16
    80005d0c:	ffffc097          	auipc	ra,0xffffc
    80005d10:	00c080e7          	jalr	12(ra) # 80001d18 <_Znwm>
    80005d14:	00050913          	mv	s2,a0
    void* arg;
    80005d18:	00004797          	auipc	a5,0x4
    80005d1c:	9d078793          	addi	a5,a5,-1584 # 800096e8 <_ZTV9Semaphore+0x10>
    80005d20:	00f53023          	sd	a5,0(a0)
};
    80005d24:	00098593          	mv	a1,s3
    80005d28:	00850513          	addi	a0,a0,8
    80005d2c:	ffffc097          	auipc	ra,0xffffc
    80005d30:	a74080e7          	jalr	-1420(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    80005d34:	00050463          	beqz	a0,80005d3c <_ZN9BufferCPPC1Ei+0xb4>

    80005d38:	00093423          	sd	zero,8(s2)
    80005d3c:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005d40:	01000513          	li	a0,16
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	fd4080e7          	jalr	-44(ra) # 80001d18 <_Znwm>
    80005d4c:	00050913          	mv	s2,a0
    void* arg;
    80005d50:	00004797          	auipc	a5,0x4
    80005d54:	99878793          	addi	a5,a5,-1640 # 800096e8 <_ZTV9Semaphore+0x10>
    80005d58:	00f53023          	sd	a5,0(a0)
};
    80005d5c:	00100593          	li	a1,1
    80005d60:	00850513          	addi	a0,a0,8
    80005d64:	ffffc097          	auipc	ra,0xffffc
    80005d68:	a3c080e7          	jalr	-1476(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    80005d6c:	00050463          	beqz	a0,80005d74 <_ZN9BufferCPPC1Ei+0xec>

    80005d70:	00093423          	sd	zero,8(s2)
    80005d74:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005d78:	01000513          	li	a0,16
    80005d7c:	ffffc097          	auipc	ra,0xffffc
    80005d80:	f9c080e7          	jalr	-100(ra) # 80001d18 <_Znwm>
    80005d84:	00050913          	mv	s2,a0
    void* arg;
    80005d88:	00004797          	auipc	a5,0x4
    80005d8c:	96078793          	addi	a5,a5,-1696 # 800096e8 <_ZTV9Semaphore+0x10>
    80005d90:	00f53023          	sd	a5,0(a0)
};
    80005d94:	00100593          	li	a1,1
    80005d98:	00850513          	addi	a0,a0,8
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	a04080e7          	jalr	-1532(ra) # 800017a0 <_Z8sem_openPP10_semaphorej>
    80005da4:	00050463          	beqz	a0,80005dac <_ZN9BufferCPPC1Ei+0x124>

    80005da8:	00093423          	sd	zero,8(s2)
    80005dac:	0324b823          	sd	s2,48(s1)
}
    80005db0:	02813083          	ld	ra,40(sp)
    80005db4:	02013403          	ld	s0,32(sp)
    80005db8:	01813483          	ld	s1,24(sp)
    80005dbc:	01013903          	ld	s2,16(sp)
    80005dc0:	00813983          	ld	s3,8(sp)
    80005dc4:	03010113          	addi	sp,sp,48
    80005dc8:	00008067          	ret
    80005dcc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005dd0:	00090513          	mv	a0,s2
    80005dd4:	ffffc097          	auipc	ra,0xffffc
    80005dd8:	fc4080e7          	jalr	-60(ra) # 80001d98 <_ZdlPv>
    80005ddc:	00048513          	mv	a0,s1
    80005de0:	00007097          	auipc	ra,0x7
    80005de4:	dc8080e7          	jalr	-568(ra) # 8000cba8 <_Unwind_Resume>
    80005de8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005dec:	00090513          	mv	a0,s2
    80005df0:	ffffc097          	auipc	ra,0xffffc
    80005df4:	fa8080e7          	jalr	-88(ra) # 80001d98 <_ZdlPv>
    80005df8:	00048513          	mv	a0,s1
    80005dfc:	00007097          	auipc	ra,0x7
    80005e00:	dac080e7          	jalr	-596(ra) # 8000cba8 <_Unwind_Resume>
    80005e04:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e08:	00090513          	mv	a0,s2
    80005e0c:	ffffc097          	auipc	ra,0xffffc
    80005e10:	f8c080e7          	jalr	-116(ra) # 80001d98 <_ZdlPv>
    80005e14:	00048513          	mv	a0,s1
    80005e18:	00007097          	auipc	ra,0x7
    80005e1c:	d90080e7          	jalr	-624(ra) # 8000cba8 <_Unwind_Resume>
    80005e20:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005e24:	00090513          	mv	a0,s2
    80005e28:	ffffc097          	auipc	ra,0xffffc
    80005e2c:	f70080e7          	jalr	-144(ra) # 80001d98 <_ZdlPv>
    80005e30:	00048513          	mv	a0,s1
    80005e34:	00007097          	auipc	ra,0x7
    80005e38:	d74080e7          	jalr	-652(ra) # 8000cba8 <_Unwind_Resume>

0000000080005e3c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005e3c:	fe010113          	addi	sp,sp,-32
    80005e40:	00113c23          	sd	ra,24(sp)
    80005e44:	00813823          	sd	s0,16(sp)
    80005e48:	00913423          	sd	s1,8(sp)
    80005e4c:	01213023          	sd	s2,0(sp)
    80005e50:	02010413          	addi	s0,sp,32
    80005e54:	00050493          	mv	s1,a0
    80005e58:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005e5c:	01853783          	ld	a5,24(a0)
        if (myHandle != nullptr) {
    80005e60:	0087b503          	ld	a0,8(a5)
    80005e64:	00050663          	beqz	a0,80005e70 <_ZN9BufferCPP3putEi+0x34>
    }
    80005e68:	ffffc097          	auipc	ra,0xffffc
    80005e6c:	a20080e7          	jalr	-1504(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    80005e70:	0304b783          	ld	a5,48(s1)
        if (myHandle != nullptr) {
    80005e74:	0087b503          	ld	a0,8(a5)
    80005e78:	00050663          	beqz	a0,80005e84 <_ZN9BufferCPP3putEi+0x48>
    }
    80005e7c:	ffffc097          	auipc	ra,0xffffc
    80005e80:	a0c080e7          	jalr	-1524(ra) # 80001888 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80005e84:	0084b783          	ld	a5,8(s1)
    80005e88:	0144a703          	lw	a4,20(s1)
    80005e8c:	00271713          	slli	a4,a4,0x2
    80005e90:	00e787b3          	add	a5,a5,a4
    80005e94:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e98:	0144a783          	lw	a5,20(s1)
    80005e9c:	0017879b          	addiw	a5,a5,1
    80005ea0:	0004a703          	lw	a4,0(s1)
    80005ea4:	02e7e7bb          	remw	a5,a5,a4
    80005ea8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005eac:	0304b783          	ld	a5,48(s1)
            return -1;
    80005eb0:	0087b503          	ld	a0,8(a5)
    80005eb4:	00050663          	beqz	a0,80005ec0 <_ZN9BufferCPP3putEi+0x84>
    }
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	a3c080e7          	jalr	-1476(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    80005ec0:	0204b783          	ld	a5,32(s1)
            return -1;
    80005ec4:	0087b503          	ld	a0,8(a5)
    80005ec8:	00050663          	beqz	a0,80005ed4 <_ZN9BufferCPP3putEi+0x98>
    }
    80005ecc:	ffffc097          	auipc	ra,0xffffc
    80005ed0:	a28080e7          	jalr	-1496(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

}
    80005ed4:	01813083          	ld	ra,24(sp)
    80005ed8:	01013403          	ld	s0,16(sp)
    80005edc:	00813483          	ld	s1,8(sp)
    80005ee0:	00013903          	ld	s2,0(sp)
    80005ee4:	02010113          	addi	sp,sp,32
    80005ee8:	00008067          	ret

0000000080005eec <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005eec:	fe010113          	addi	sp,sp,-32
    80005ef0:	00113c23          	sd	ra,24(sp)
    80005ef4:	00813823          	sd	s0,16(sp)
    80005ef8:	00913423          	sd	s1,8(sp)
    80005efc:	01213023          	sd	s2,0(sp)
    80005f00:	02010413          	addi	s0,sp,32
    80005f04:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f08:	02053783          	ld	a5,32(a0)
        if (myHandle != nullptr) {
    80005f0c:	0087b503          	ld	a0,8(a5)
    80005f10:	00050663          	beqz	a0,80005f1c <_ZN9BufferCPP3getEv+0x30>
    }
    80005f14:	ffffc097          	auipc	ra,0xffffc
    80005f18:	974080e7          	jalr	-1676(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    80005f1c:	0284b783          	ld	a5,40(s1)
        if (myHandle != nullptr) {
    80005f20:	0087b503          	ld	a0,8(a5)
    80005f24:	00050663          	beqz	a0,80005f30 <_ZN9BufferCPP3getEv+0x44>
    }
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	960080e7          	jalr	-1696(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80005f30:	0084b703          	ld	a4,8(s1)
    80005f34:	0104a783          	lw	a5,16(s1)
    80005f38:	00279693          	slli	a3,a5,0x2
    80005f3c:	00d70733          	add	a4,a4,a3
    80005f40:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f44:	0017879b          	addiw	a5,a5,1
    80005f48:	0004a703          	lw	a4,0(s1)
    80005f4c:	02e7e7bb          	remw	a5,a5,a4
    80005f50:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005f54:	0284b783          	ld	a5,40(s1)
            return -1;
    80005f58:	0087b503          	ld	a0,8(a5)
    80005f5c:	00050663          	beqz	a0,80005f68 <_ZN9BufferCPP3getEv+0x7c>
    }
    80005f60:	ffffc097          	auipc	ra,0xffffc
    80005f64:	994080e7          	jalr	-1644(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    80005f68:	0184b783          	ld	a5,24(s1)
            return -1;
    80005f6c:	0087b503          	ld	a0,8(a5)
    80005f70:	00050663          	beqz	a0,80005f7c <_ZN9BufferCPP3getEv+0x90>
    }
    80005f74:	ffffc097          	auipc	ra,0xffffc
    80005f78:	980080e7          	jalr	-1664(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80005f7c:	00090513          	mv	a0,s2
    80005f80:	01813083          	ld	ra,24(sp)
    80005f84:	01013403          	ld	s0,16(sp)
    80005f88:	00813483          	ld	s1,8(sp)
    80005f8c:	00013903          	ld	s2,0(sp)
    80005f90:	02010113          	addi	sp,sp,32
    80005f94:	00008067          	ret

0000000080005f98 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005f98:	fe010113          	addi	sp,sp,-32
    80005f9c:	00113c23          	sd	ra,24(sp)
    80005fa0:	00813823          	sd	s0,16(sp)
    80005fa4:	00913423          	sd	s1,8(sp)
    80005fa8:	01213023          	sd	s2,0(sp)
    80005fac:	02010413          	addi	s0,sp,32
    80005fb0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005fb4:	02853783          	ld	a5,40(a0)
        if (myHandle != nullptr) {
    80005fb8:	0087b503          	ld	a0,8(a5)
    80005fbc:	00050663          	beqz	a0,80005fc8 <_ZN9BufferCPP6getCntEv+0x30>
    }
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	8c8080e7          	jalr	-1848(ra) # 80001888 <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    80005fc8:	0304b783          	ld	a5,48(s1)
        if (myHandle != nullptr) {
    80005fcc:	0087b503          	ld	a0,8(a5)
    80005fd0:	00050663          	beqz	a0,80005fdc <_ZN9BufferCPP6getCntEv+0x44>
    }
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	8b4080e7          	jalr	-1868(ra) # 80001888 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80005fdc:	0144a783          	lw	a5,20(s1)
    80005fe0:	0104a903          	lw	s2,16(s1)
    80005fe4:	0527c663          	blt	a5,s2,80006030 <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    80005fe8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005fec:	0304b783          	ld	a5,48(s1)
            return -1;
    80005ff0:	0087b503          	ld	a0,8(a5)
    80005ff4:	00050663          	beqz	a0,80006000 <_ZN9BufferCPP6getCntEv+0x68>
    }
    80005ff8:	ffffc097          	auipc	ra,0xffffc
    80005ffc:	8fc080e7          	jalr	-1796(ra) # 800018f4 <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    80006000:	0284b783          	ld	a5,40(s1)
            return -1;
    80006004:	0087b503          	ld	a0,8(a5)
    80006008:	00050663          	beqz	a0,80006014 <_ZN9BufferCPP6getCntEv+0x7c>
    }
    8000600c:	ffffc097          	auipc	ra,0xffffc
    80006010:	8e8080e7          	jalr	-1816(ra) # 800018f4 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80006014:	00090513          	mv	a0,s2
    80006018:	01813083          	ld	ra,24(sp)
    8000601c:	01013403          	ld	s0,16(sp)
    80006020:	00813483          	ld	s1,8(sp)
    80006024:	00013903          	ld	s2,0(sp)
    80006028:	02010113          	addi	sp,sp,32
    8000602c:	00008067          	ret
        ret = cap - head + tail;
    80006030:	0004a703          	lw	a4,0(s1)
    80006034:	4127093b          	subw	s2,a4,s2
    80006038:	00f9093b          	addw	s2,s2,a5
    8000603c:	fb1ff06f          	j	80005fec <_ZN9BufferCPP6getCntEv+0x54>

0000000080006040 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006040:	fe010113          	addi	sp,sp,-32
    80006044:	00113c23          	sd	ra,24(sp)
    80006048:	00813823          	sd	s0,16(sp)
    8000604c:	00913423          	sd	s1,8(sp)
    80006050:	02010413          	addi	s0,sp,32
    80006054:	00050493          	mv	s1,a0
};
    80006058:	00a00513          	li	a0,10
    8000605c:	00002097          	auipc	ra,0x2
    80006060:	1a0080e7          	jalr	416(ra) # 800081fc <__putc>
    printString("Buffer deleted!\n");
    80006064:	00003517          	auipc	a0,0x3
    80006068:	63450513          	addi	a0,a0,1588 # 80009698 <_ZZ24debug_print_internal_intmE6digits+0x3e0>
    8000606c:	fffff097          	auipc	ra,0xfffff
    80006070:	42c080e7          	jalr	1068(ra) # 80005498 <_Z11printStringPKc>
    while (getCnt()) {
    80006074:	00048513          	mv	a0,s1
    80006078:	00000097          	auipc	ra,0x0
    8000607c:	f20080e7          	jalr	-224(ra) # 80005f98 <_ZN9BufferCPP6getCntEv>
    80006080:	02050c63          	beqz	a0,800060b8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006084:	0084b783          	ld	a5,8(s1)
    80006088:	0104a703          	lw	a4,16(s1)
    8000608c:	00271713          	slli	a4,a4,0x2
    80006090:	00e787b3          	add	a5,a5,a4
    80006094:	0007c503          	lbu	a0,0(a5)
    80006098:	00002097          	auipc	ra,0x2
    8000609c:	164080e7          	jalr	356(ra) # 800081fc <__putc>
        head = (head + 1) % cap;
    800060a0:	0104a783          	lw	a5,16(s1)
    800060a4:	0017879b          	addiw	a5,a5,1
    800060a8:	0004a703          	lw	a4,0(s1)
    800060ac:	02e7e7bb          	remw	a5,a5,a4
    800060b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800060b4:	fc1ff06f          	j	80006074 <_ZN9BufferCPPD1Ev+0x34>
    800060b8:	02100513          	li	a0,33
    800060bc:	00002097          	auipc	ra,0x2
    800060c0:	140080e7          	jalr	320(ra) # 800081fc <__putc>
    800060c4:	00a00513          	li	a0,10
    800060c8:	00002097          	auipc	ra,0x2
    800060cc:	134080e7          	jalr	308(ra) # 800081fc <__putc>
    mem_free(buffer);
    800060d0:	0084b503          	ld	a0,8(s1)
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	468080e7          	jalr	1128(ra) # 8000153c <_Z8mem_freePv>
    delete itemAvailable;
    800060dc:	0204b503          	ld	a0,32(s1)
    800060e0:	00050863          	beqz	a0,800060f0 <_ZN9BufferCPPD1Ev+0xb0>
    800060e4:	00053783          	ld	a5,0(a0)
    800060e8:	0087b783          	ld	a5,8(a5)
    800060ec:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060f0:	0184b503          	ld	a0,24(s1)
    800060f4:	00050863          	beqz	a0,80006104 <_ZN9BufferCPPD1Ev+0xc4>
    800060f8:	00053783          	ld	a5,0(a0)
    800060fc:	0087b783          	ld	a5,8(a5)
    80006100:	000780e7          	jalr	a5
    delete mutexTail;
    80006104:	0304b503          	ld	a0,48(s1)
    80006108:	00050863          	beqz	a0,80006118 <_ZN9BufferCPPD1Ev+0xd8>
    8000610c:	00053783          	ld	a5,0(a0)
    80006110:	0087b783          	ld	a5,8(a5)
    80006114:	000780e7          	jalr	a5
    delete mutexHead;
    80006118:	0284b503          	ld	a0,40(s1)
    8000611c:	00050863          	beqz	a0,8000612c <_ZN9BufferCPPD1Ev+0xec>
    80006120:	00053783          	ld	a5,0(a0)
    80006124:	0087b783          	ld	a5,8(a5)
    80006128:	000780e7          	jalr	a5
}
    8000612c:	01813083          	ld	ra,24(sp)
    80006130:	01013403          	ld	s0,16(sp)
    80006134:	00813483          	ld	s1,8(sp)
    80006138:	02010113          	addi	sp,sp,32
    8000613c:	00008067          	ret

0000000080006140 <start>:
    80006140:	ff010113          	addi	sp,sp,-16
    80006144:	00813423          	sd	s0,8(sp)
    80006148:	01010413          	addi	s0,sp,16
    8000614c:	300027f3          	csrr	a5,mstatus
    80006150:	ffffe737          	lui	a4,0xffffe
    80006154:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1abf>
    80006158:	00e7f7b3          	and	a5,a5,a4
    8000615c:	00001737          	lui	a4,0x1
    80006160:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006164:	00e7e7b3          	or	a5,a5,a4
    80006168:	30079073          	csrw	mstatus,a5
    8000616c:	00000797          	auipc	a5,0x0
    80006170:	16078793          	addi	a5,a5,352 # 800062cc <system_main>
    80006174:	34179073          	csrw	mepc,a5
    80006178:	00000793          	li	a5,0
    8000617c:	18079073          	csrw	satp,a5
    80006180:	000107b7          	lui	a5,0x10
    80006184:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006188:	30279073          	csrw	medeleg,a5
    8000618c:	30379073          	csrw	mideleg,a5
    80006190:	104027f3          	csrr	a5,sie
    80006194:	2227e793          	ori	a5,a5,546
    80006198:	10479073          	csrw	sie,a5
    8000619c:	fff00793          	li	a5,-1
    800061a0:	00a7d793          	srli	a5,a5,0xa
    800061a4:	3b079073          	csrw	pmpaddr0,a5
    800061a8:	00f00793          	li	a5,15
    800061ac:	3a079073          	csrw	pmpcfg0,a5
    800061b0:	f14027f3          	csrr	a5,mhartid
    800061b4:	0200c737          	lui	a4,0x200c
    800061b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800061bc:	0007869b          	sext.w	a3,a5
    800061c0:	00269713          	slli	a4,a3,0x2
    800061c4:	000f4637          	lui	a2,0xf4
    800061c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800061cc:	00d70733          	add	a4,a4,a3
    800061d0:	0037979b          	slliw	a5,a5,0x3
    800061d4:	020046b7          	lui	a3,0x2004
    800061d8:	00d787b3          	add	a5,a5,a3
    800061dc:	00c585b3          	add	a1,a1,a2
    800061e0:	00371693          	slli	a3,a4,0x3
    800061e4:	00006717          	auipc	a4,0x6
    800061e8:	8fc70713          	addi	a4,a4,-1796 # 8000bae0 <timer_scratch>
    800061ec:	00b7b023          	sd	a1,0(a5)
    800061f0:	00d70733          	add	a4,a4,a3
    800061f4:	00f73c23          	sd	a5,24(a4)
    800061f8:	02c73023          	sd	a2,32(a4)
    800061fc:	34071073          	csrw	mscratch,a4
    80006200:	00000797          	auipc	a5,0x0
    80006204:	6e078793          	addi	a5,a5,1760 # 800068e0 <timervec>
    80006208:	30579073          	csrw	mtvec,a5
    8000620c:	300027f3          	csrr	a5,mstatus
    80006210:	0087e793          	ori	a5,a5,8
    80006214:	30079073          	csrw	mstatus,a5
    80006218:	304027f3          	csrr	a5,mie
    8000621c:	0807e793          	ori	a5,a5,128
    80006220:	30479073          	csrw	mie,a5
    80006224:	f14027f3          	csrr	a5,mhartid
    80006228:	0007879b          	sext.w	a5,a5
    8000622c:	00078213          	mv	tp,a5
    80006230:	30200073          	mret
    80006234:	00813403          	ld	s0,8(sp)
    80006238:	01010113          	addi	sp,sp,16
    8000623c:	00008067          	ret

0000000080006240 <timerinit>:
    80006240:	ff010113          	addi	sp,sp,-16
    80006244:	00813423          	sd	s0,8(sp)
    80006248:	01010413          	addi	s0,sp,16
    8000624c:	f14027f3          	csrr	a5,mhartid
    80006250:	0200c737          	lui	a4,0x200c
    80006254:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006258:	0007869b          	sext.w	a3,a5
    8000625c:	00269713          	slli	a4,a3,0x2
    80006260:	000f4637          	lui	a2,0xf4
    80006264:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006268:	00d70733          	add	a4,a4,a3
    8000626c:	0037979b          	slliw	a5,a5,0x3
    80006270:	020046b7          	lui	a3,0x2004
    80006274:	00d787b3          	add	a5,a5,a3
    80006278:	00c585b3          	add	a1,a1,a2
    8000627c:	00371693          	slli	a3,a4,0x3
    80006280:	00006717          	auipc	a4,0x6
    80006284:	86070713          	addi	a4,a4,-1952 # 8000bae0 <timer_scratch>
    80006288:	00b7b023          	sd	a1,0(a5)
    8000628c:	00d70733          	add	a4,a4,a3
    80006290:	00f73c23          	sd	a5,24(a4)
    80006294:	02c73023          	sd	a2,32(a4)
    80006298:	34071073          	csrw	mscratch,a4
    8000629c:	00000797          	auipc	a5,0x0
    800062a0:	64478793          	addi	a5,a5,1604 # 800068e0 <timervec>
    800062a4:	30579073          	csrw	mtvec,a5
    800062a8:	300027f3          	csrr	a5,mstatus
    800062ac:	0087e793          	ori	a5,a5,8
    800062b0:	30079073          	csrw	mstatus,a5
    800062b4:	304027f3          	csrr	a5,mie
    800062b8:	0807e793          	ori	a5,a5,128
    800062bc:	30479073          	csrw	mie,a5
    800062c0:	00813403          	ld	s0,8(sp)
    800062c4:	01010113          	addi	sp,sp,16
    800062c8:	00008067          	ret

00000000800062cc <system_main>:
    800062cc:	fe010113          	addi	sp,sp,-32
    800062d0:	00813823          	sd	s0,16(sp)
    800062d4:	00913423          	sd	s1,8(sp)
    800062d8:	00113c23          	sd	ra,24(sp)
    800062dc:	02010413          	addi	s0,sp,32
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	0c4080e7          	jalr	196(ra) # 800063a4 <cpuid>
    800062e8:	00005497          	auipc	s1,0x5
    800062ec:	7c048493          	addi	s1,s1,1984 # 8000baa8 <started>
    800062f0:	02050263          	beqz	a0,80006314 <system_main+0x48>
    800062f4:	0004a783          	lw	a5,0(s1)
    800062f8:	0007879b          	sext.w	a5,a5
    800062fc:	fe078ce3          	beqz	a5,800062f4 <system_main+0x28>
    80006300:	0ff0000f          	fence
    80006304:	00004517          	auipc	a0,0x4
    80006308:	93450513          	addi	a0,a0,-1740 # 80009c38 <_ZTV12ConsumerSync+0x68>
    8000630c:	00001097          	auipc	ra,0x1
    80006310:	a70080e7          	jalr	-1424(ra) # 80006d7c <panic>
    80006314:	00001097          	auipc	ra,0x1
    80006318:	9c4080e7          	jalr	-1596(ra) # 80006cd8 <consoleinit>
    8000631c:	00001097          	auipc	ra,0x1
    80006320:	150080e7          	jalr	336(ra) # 8000746c <printfinit>
    80006324:	00003517          	auipc	a0,0x3
    80006328:	03c50513          	addi	a0,a0,60 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000632c:	00001097          	auipc	ra,0x1
    80006330:	aac080e7          	jalr	-1364(ra) # 80006dd8 <__printf>
    80006334:	00004517          	auipc	a0,0x4
    80006338:	8d450513          	addi	a0,a0,-1836 # 80009c08 <_ZTV12ConsumerSync+0x38>
    8000633c:	00001097          	auipc	ra,0x1
    80006340:	a9c080e7          	jalr	-1380(ra) # 80006dd8 <__printf>
    80006344:	00003517          	auipc	a0,0x3
    80006348:	01c50513          	addi	a0,a0,28 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    8000634c:	00001097          	auipc	ra,0x1
    80006350:	a8c080e7          	jalr	-1396(ra) # 80006dd8 <__printf>
    80006354:	00001097          	auipc	ra,0x1
    80006358:	4a4080e7          	jalr	1188(ra) # 800077f8 <kinit>
    8000635c:	00000097          	auipc	ra,0x0
    80006360:	148080e7          	jalr	328(ra) # 800064a4 <trapinit>
    80006364:	00000097          	auipc	ra,0x0
    80006368:	16c080e7          	jalr	364(ra) # 800064d0 <trapinithart>
    8000636c:	00000097          	auipc	ra,0x0
    80006370:	5b4080e7          	jalr	1460(ra) # 80006920 <plicinit>
    80006374:	00000097          	auipc	ra,0x0
    80006378:	5d4080e7          	jalr	1492(ra) # 80006948 <plicinithart>
    8000637c:	00000097          	auipc	ra,0x0
    80006380:	078080e7          	jalr	120(ra) # 800063f4 <userinit>
    80006384:	0ff0000f          	fence
    80006388:	00100793          	li	a5,1
    8000638c:	00004517          	auipc	a0,0x4
    80006390:	89450513          	addi	a0,a0,-1900 # 80009c20 <_ZTV12ConsumerSync+0x50>
    80006394:	00f4a023          	sw	a5,0(s1)
    80006398:	00001097          	auipc	ra,0x1
    8000639c:	a40080e7          	jalr	-1472(ra) # 80006dd8 <__printf>
    800063a0:	0000006f          	j	800063a0 <system_main+0xd4>

00000000800063a4 <cpuid>:
    800063a4:	ff010113          	addi	sp,sp,-16
    800063a8:	00813423          	sd	s0,8(sp)
    800063ac:	01010413          	addi	s0,sp,16
    800063b0:	00020513          	mv	a0,tp
    800063b4:	00813403          	ld	s0,8(sp)
    800063b8:	0005051b          	sext.w	a0,a0
    800063bc:	01010113          	addi	sp,sp,16
    800063c0:	00008067          	ret

00000000800063c4 <mycpu>:
    800063c4:	ff010113          	addi	sp,sp,-16
    800063c8:	00813423          	sd	s0,8(sp)
    800063cc:	01010413          	addi	s0,sp,16
    800063d0:	00020793          	mv	a5,tp
    800063d4:	00813403          	ld	s0,8(sp)
    800063d8:	0007879b          	sext.w	a5,a5
    800063dc:	00779793          	slli	a5,a5,0x7
    800063e0:	00006517          	auipc	a0,0x6
    800063e4:	73050513          	addi	a0,a0,1840 # 8000cb10 <cpus>
    800063e8:	00f50533          	add	a0,a0,a5
    800063ec:	01010113          	addi	sp,sp,16
    800063f0:	00008067          	ret

00000000800063f4 <userinit>:
    800063f4:	ff010113          	addi	sp,sp,-16
    800063f8:	00813423          	sd	s0,8(sp)
    800063fc:	01010413          	addi	s0,sp,16
    80006400:	00813403          	ld	s0,8(sp)
    80006404:	01010113          	addi	sp,sp,16
    80006408:	ffffc317          	auipc	t1,0xffffc
    8000640c:	c2830067          	jr	-984(t1) # 80002030 <main>

0000000080006410 <either_copyout>:
    80006410:	ff010113          	addi	sp,sp,-16
    80006414:	00813023          	sd	s0,0(sp)
    80006418:	00113423          	sd	ra,8(sp)
    8000641c:	01010413          	addi	s0,sp,16
    80006420:	02051663          	bnez	a0,8000644c <either_copyout+0x3c>
    80006424:	00058513          	mv	a0,a1
    80006428:	00060593          	mv	a1,a2
    8000642c:	0006861b          	sext.w	a2,a3
    80006430:	00002097          	auipc	ra,0x2
    80006434:	c54080e7          	jalr	-940(ra) # 80008084 <__memmove>
    80006438:	00813083          	ld	ra,8(sp)
    8000643c:	00013403          	ld	s0,0(sp)
    80006440:	00000513          	li	a0,0
    80006444:	01010113          	addi	sp,sp,16
    80006448:	00008067          	ret
    8000644c:	00004517          	auipc	a0,0x4
    80006450:	81450513          	addi	a0,a0,-2028 # 80009c60 <_ZTV12ConsumerSync+0x90>
    80006454:	00001097          	auipc	ra,0x1
    80006458:	928080e7          	jalr	-1752(ra) # 80006d7c <panic>

000000008000645c <either_copyin>:
    8000645c:	ff010113          	addi	sp,sp,-16
    80006460:	00813023          	sd	s0,0(sp)
    80006464:	00113423          	sd	ra,8(sp)
    80006468:	01010413          	addi	s0,sp,16
    8000646c:	02059463          	bnez	a1,80006494 <either_copyin+0x38>
    80006470:	00060593          	mv	a1,a2
    80006474:	0006861b          	sext.w	a2,a3
    80006478:	00002097          	auipc	ra,0x2
    8000647c:	c0c080e7          	jalr	-1012(ra) # 80008084 <__memmove>
    80006480:	00813083          	ld	ra,8(sp)
    80006484:	00013403          	ld	s0,0(sp)
    80006488:	00000513          	li	a0,0
    8000648c:	01010113          	addi	sp,sp,16
    80006490:	00008067          	ret
    80006494:	00003517          	auipc	a0,0x3
    80006498:	7f450513          	addi	a0,a0,2036 # 80009c88 <_ZTV12ConsumerSync+0xb8>
    8000649c:	00001097          	auipc	ra,0x1
    800064a0:	8e0080e7          	jalr	-1824(ra) # 80006d7c <panic>

00000000800064a4 <trapinit>:
    800064a4:	ff010113          	addi	sp,sp,-16
    800064a8:	00813423          	sd	s0,8(sp)
    800064ac:	01010413          	addi	s0,sp,16
    800064b0:	00813403          	ld	s0,8(sp)
    800064b4:	00003597          	auipc	a1,0x3
    800064b8:	7fc58593          	addi	a1,a1,2044 # 80009cb0 <_ZTV12ConsumerSync+0xe0>
    800064bc:	00006517          	auipc	a0,0x6
    800064c0:	6d450513          	addi	a0,a0,1748 # 8000cb90 <tickslock>
    800064c4:	01010113          	addi	sp,sp,16
    800064c8:	00001317          	auipc	t1,0x1
    800064cc:	5c030067          	jr	1472(t1) # 80007a88 <initlock>

00000000800064d0 <trapinithart>:
    800064d0:	ff010113          	addi	sp,sp,-16
    800064d4:	00813423          	sd	s0,8(sp)
    800064d8:	01010413          	addi	s0,sp,16
    800064dc:	00000797          	auipc	a5,0x0
    800064e0:	2f478793          	addi	a5,a5,756 # 800067d0 <kernelvec>
    800064e4:	10579073          	csrw	stvec,a5
    800064e8:	00813403          	ld	s0,8(sp)
    800064ec:	01010113          	addi	sp,sp,16
    800064f0:	00008067          	ret

00000000800064f4 <usertrap>:
    800064f4:	ff010113          	addi	sp,sp,-16
    800064f8:	00813423          	sd	s0,8(sp)
    800064fc:	01010413          	addi	s0,sp,16
    80006500:	00813403          	ld	s0,8(sp)
    80006504:	01010113          	addi	sp,sp,16
    80006508:	00008067          	ret

000000008000650c <usertrapret>:
    8000650c:	ff010113          	addi	sp,sp,-16
    80006510:	00813423          	sd	s0,8(sp)
    80006514:	01010413          	addi	s0,sp,16
    80006518:	00813403          	ld	s0,8(sp)
    8000651c:	01010113          	addi	sp,sp,16
    80006520:	00008067          	ret

0000000080006524 <kerneltrap>:
    80006524:	fe010113          	addi	sp,sp,-32
    80006528:	00813823          	sd	s0,16(sp)
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	00913423          	sd	s1,8(sp)
    80006534:	02010413          	addi	s0,sp,32
    80006538:	142025f3          	csrr	a1,scause
    8000653c:	100027f3          	csrr	a5,sstatus
    80006540:	0027f793          	andi	a5,a5,2
    80006544:	10079c63          	bnez	a5,8000665c <kerneltrap+0x138>
    80006548:	142027f3          	csrr	a5,scause
    8000654c:	0207ce63          	bltz	a5,80006588 <kerneltrap+0x64>
    80006550:	00003517          	auipc	a0,0x3
    80006554:	7a850513          	addi	a0,a0,1960 # 80009cf8 <_ZTV12ConsumerSync+0x128>
    80006558:	00001097          	auipc	ra,0x1
    8000655c:	880080e7          	jalr	-1920(ra) # 80006dd8 <__printf>
    80006560:	141025f3          	csrr	a1,sepc
    80006564:	14302673          	csrr	a2,stval
    80006568:	00003517          	auipc	a0,0x3
    8000656c:	7a050513          	addi	a0,a0,1952 # 80009d08 <_ZTV12ConsumerSync+0x138>
    80006570:	00001097          	auipc	ra,0x1
    80006574:	868080e7          	jalr	-1944(ra) # 80006dd8 <__printf>
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	7a850513          	addi	a0,a0,1960 # 80009d20 <_ZTV12ConsumerSync+0x150>
    80006580:	00000097          	auipc	ra,0x0
    80006584:	7fc080e7          	jalr	2044(ra) # 80006d7c <panic>
    80006588:	0ff7f713          	andi	a4,a5,255
    8000658c:	00900693          	li	a3,9
    80006590:	04d70063          	beq	a4,a3,800065d0 <kerneltrap+0xac>
    80006594:	fff00713          	li	a4,-1
    80006598:	03f71713          	slli	a4,a4,0x3f
    8000659c:	00170713          	addi	a4,a4,1
    800065a0:	fae798e3          	bne	a5,a4,80006550 <kerneltrap+0x2c>
    800065a4:	00000097          	auipc	ra,0x0
    800065a8:	e00080e7          	jalr	-512(ra) # 800063a4 <cpuid>
    800065ac:	06050663          	beqz	a0,80006618 <kerneltrap+0xf4>
    800065b0:	144027f3          	csrr	a5,sip
    800065b4:	ffd7f793          	andi	a5,a5,-3
    800065b8:	14479073          	csrw	sip,a5
    800065bc:	01813083          	ld	ra,24(sp)
    800065c0:	01013403          	ld	s0,16(sp)
    800065c4:	00813483          	ld	s1,8(sp)
    800065c8:	02010113          	addi	sp,sp,32
    800065cc:	00008067          	ret
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	3c4080e7          	jalr	964(ra) # 80006994 <plic_claim>
    800065d8:	00a00793          	li	a5,10
    800065dc:	00050493          	mv	s1,a0
    800065e0:	06f50863          	beq	a0,a5,80006650 <kerneltrap+0x12c>
    800065e4:	fc050ce3          	beqz	a0,800065bc <kerneltrap+0x98>
    800065e8:	00050593          	mv	a1,a0
    800065ec:	00003517          	auipc	a0,0x3
    800065f0:	6ec50513          	addi	a0,a0,1772 # 80009cd8 <_ZTV12ConsumerSync+0x108>
    800065f4:	00000097          	auipc	ra,0x0
    800065f8:	7e4080e7          	jalr	2020(ra) # 80006dd8 <__printf>
    800065fc:	01013403          	ld	s0,16(sp)
    80006600:	01813083          	ld	ra,24(sp)
    80006604:	00048513          	mv	a0,s1
    80006608:	00813483          	ld	s1,8(sp)
    8000660c:	02010113          	addi	sp,sp,32
    80006610:	00000317          	auipc	t1,0x0
    80006614:	3bc30067          	jr	956(t1) # 800069cc <plic_complete>
    80006618:	00006517          	auipc	a0,0x6
    8000661c:	57850513          	addi	a0,a0,1400 # 8000cb90 <tickslock>
    80006620:	00001097          	auipc	ra,0x1
    80006624:	48c080e7          	jalr	1164(ra) # 80007aac <acquire>
    80006628:	00005717          	auipc	a4,0x5
    8000662c:	48470713          	addi	a4,a4,1156 # 8000baac <ticks>
    80006630:	00072783          	lw	a5,0(a4)
    80006634:	00006517          	auipc	a0,0x6
    80006638:	55c50513          	addi	a0,a0,1372 # 8000cb90 <tickslock>
    8000663c:	0017879b          	addiw	a5,a5,1
    80006640:	00f72023          	sw	a5,0(a4)
    80006644:	00001097          	auipc	ra,0x1
    80006648:	534080e7          	jalr	1332(ra) # 80007b78 <release>
    8000664c:	f65ff06f          	j	800065b0 <kerneltrap+0x8c>
    80006650:	00001097          	auipc	ra,0x1
    80006654:	090080e7          	jalr	144(ra) # 800076e0 <uartintr>
    80006658:	fa5ff06f          	j	800065fc <kerneltrap+0xd8>
    8000665c:	00003517          	auipc	a0,0x3
    80006660:	65c50513          	addi	a0,a0,1628 # 80009cb8 <_ZTV12ConsumerSync+0xe8>
    80006664:	00000097          	auipc	ra,0x0
    80006668:	718080e7          	jalr	1816(ra) # 80006d7c <panic>

000000008000666c <clockintr>:
    8000666c:	fe010113          	addi	sp,sp,-32
    80006670:	00813823          	sd	s0,16(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	00113c23          	sd	ra,24(sp)
    8000667c:	02010413          	addi	s0,sp,32
    80006680:	00006497          	auipc	s1,0x6
    80006684:	51048493          	addi	s1,s1,1296 # 8000cb90 <tickslock>
    80006688:	00048513          	mv	a0,s1
    8000668c:	00001097          	auipc	ra,0x1
    80006690:	420080e7          	jalr	1056(ra) # 80007aac <acquire>
    80006694:	00005717          	auipc	a4,0x5
    80006698:	41870713          	addi	a4,a4,1048 # 8000baac <ticks>
    8000669c:	00072783          	lw	a5,0(a4)
    800066a0:	01013403          	ld	s0,16(sp)
    800066a4:	01813083          	ld	ra,24(sp)
    800066a8:	00048513          	mv	a0,s1
    800066ac:	0017879b          	addiw	a5,a5,1
    800066b0:	00813483          	ld	s1,8(sp)
    800066b4:	00f72023          	sw	a5,0(a4)
    800066b8:	02010113          	addi	sp,sp,32
    800066bc:	00001317          	auipc	t1,0x1
    800066c0:	4bc30067          	jr	1212(t1) # 80007b78 <release>

00000000800066c4 <devintr>:
    800066c4:	142027f3          	csrr	a5,scause
    800066c8:	00000513          	li	a0,0
    800066cc:	0007c463          	bltz	a5,800066d4 <devintr+0x10>
    800066d0:	00008067          	ret
    800066d4:	fe010113          	addi	sp,sp,-32
    800066d8:	00813823          	sd	s0,16(sp)
    800066dc:	00113c23          	sd	ra,24(sp)
    800066e0:	00913423          	sd	s1,8(sp)
    800066e4:	02010413          	addi	s0,sp,32
    800066e8:	0ff7f713          	andi	a4,a5,255
    800066ec:	00900693          	li	a3,9
    800066f0:	04d70c63          	beq	a4,a3,80006748 <devintr+0x84>
    800066f4:	fff00713          	li	a4,-1
    800066f8:	03f71713          	slli	a4,a4,0x3f
    800066fc:	00170713          	addi	a4,a4,1
    80006700:	00e78c63          	beq	a5,a4,80006718 <devintr+0x54>
    80006704:	01813083          	ld	ra,24(sp)
    80006708:	01013403          	ld	s0,16(sp)
    8000670c:	00813483          	ld	s1,8(sp)
    80006710:	02010113          	addi	sp,sp,32
    80006714:	00008067          	ret
    80006718:	00000097          	auipc	ra,0x0
    8000671c:	c8c080e7          	jalr	-884(ra) # 800063a4 <cpuid>
    80006720:	06050663          	beqz	a0,8000678c <devintr+0xc8>
    80006724:	144027f3          	csrr	a5,sip
    80006728:	ffd7f793          	andi	a5,a5,-3
    8000672c:	14479073          	csrw	sip,a5
    80006730:	01813083          	ld	ra,24(sp)
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	00813483          	ld	s1,8(sp)
    8000673c:	00200513          	li	a0,2
    80006740:	02010113          	addi	sp,sp,32
    80006744:	00008067          	ret
    80006748:	00000097          	auipc	ra,0x0
    8000674c:	24c080e7          	jalr	588(ra) # 80006994 <plic_claim>
    80006750:	00a00793          	li	a5,10
    80006754:	00050493          	mv	s1,a0
    80006758:	06f50663          	beq	a0,a5,800067c4 <devintr+0x100>
    8000675c:	00100513          	li	a0,1
    80006760:	fa0482e3          	beqz	s1,80006704 <devintr+0x40>
    80006764:	00048593          	mv	a1,s1
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	57050513          	addi	a0,a0,1392 # 80009cd8 <_ZTV12ConsumerSync+0x108>
    80006770:	00000097          	auipc	ra,0x0
    80006774:	668080e7          	jalr	1640(ra) # 80006dd8 <__printf>
    80006778:	00048513          	mv	a0,s1
    8000677c:	00000097          	auipc	ra,0x0
    80006780:	250080e7          	jalr	592(ra) # 800069cc <plic_complete>
    80006784:	00100513          	li	a0,1
    80006788:	f7dff06f          	j	80006704 <devintr+0x40>
    8000678c:	00006517          	auipc	a0,0x6
    80006790:	40450513          	addi	a0,a0,1028 # 8000cb90 <tickslock>
    80006794:	00001097          	auipc	ra,0x1
    80006798:	318080e7          	jalr	792(ra) # 80007aac <acquire>
    8000679c:	00005717          	auipc	a4,0x5
    800067a0:	31070713          	addi	a4,a4,784 # 8000baac <ticks>
    800067a4:	00072783          	lw	a5,0(a4)
    800067a8:	00006517          	auipc	a0,0x6
    800067ac:	3e850513          	addi	a0,a0,1000 # 8000cb90 <tickslock>
    800067b0:	0017879b          	addiw	a5,a5,1
    800067b4:	00f72023          	sw	a5,0(a4)
    800067b8:	00001097          	auipc	ra,0x1
    800067bc:	3c0080e7          	jalr	960(ra) # 80007b78 <release>
    800067c0:	f65ff06f          	j	80006724 <devintr+0x60>
    800067c4:	00001097          	auipc	ra,0x1
    800067c8:	f1c080e7          	jalr	-228(ra) # 800076e0 <uartintr>
    800067cc:	fadff06f          	j	80006778 <devintr+0xb4>

00000000800067d0 <kernelvec>:
    800067d0:	f0010113          	addi	sp,sp,-256
    800067d4:	00113023          	sd	ra,0(sp)
    800067d8:	00213423          	sd	sp,8(sp)
    800067dc:	00313823          	sd	gp,16(sp)
    800067e0:	00413c23          	sd	tp,24(sp)
    800067e4:	02513023          	sd	t0,32(sp)
    800067e8:	02613423          	sd	t1,40(sp)
    800067ec:	02713823          	sd	t2,48(sp)
    800067f0:	02813c23          	sd	s0,56(sp)
    800067f4:	04913023          	sd	s1,64(sp)
    800067f8:	04a13423          	sd	a0,72(sp)
    800067fc:	04b13823          	sd	a1,80(sp)
    80006800:	04c13c23          	sd	a2,88(sp)
    80006804:	06d13023          	sd	a3,96(sp)
    80006808:	06e13423          	sd	a4,104(sp)
    8000680c:	06f13823          	sd	a5,112(sp)
    80006810:	07013c23          	sd	a6,120(sp)
    80006814:	09113023          	sd	a7,128(sp)
    80006818:	09213423          	sd	s2,136(sp)
    8000681c:	09313823          	sd	s3,144(sp)
    80006820:	09413c23          	sd	s4,152(sp)
    80006824:	0b513023          	sd	s5,160(sp)
    80006828:	0b613423          	sd	s6,168(sp)
    8000682c:	0b713823          	sd	s7,176(sp)
    80006830:	0b813c23          	sd	s8,184(sp)
    80006834:	0d913023          	sd	s9,192(sp)
    80006838:	0da13423          	sd	s10,200(sp)
    8000683c:	0db13823          	sd	s11,208(sp)
    80006840:	0dc13c23          	sd	t3,216(sp)
    80006844:	0fd13023          	sd	t4,224(sp)
    80006848:	0fe13423          	sd	t5,232(sp)
    8000684c:	0ff13823          	sd	t6,240(sp)
    80006850:	cd5ff0ef          	jal	ra,80006524 <kerneltrap>
    80006854:	00013083          	ld	ra,0(sp)
    80006858:	00813103          	ld	sp,8(sp)
    8000685c:	01013183          	ld	gp,16(sp)
    80006860:	02013283          	ld	t0,32(sp)
    80006864:	02813303          	ld	t1,40(sp)
    80006868:	03013383          	ld	t2,48(sp)
    8000686c:	03813403          	ld	s0,56(sp)
    80006870:	04013483          	ld	s1,64(sp)
    80006874:	04813503          	ld	a0,72(sp)
    80006878:	05013583          	ld	a1,80(sp)
    8000687c:	05813603          	ld	a2,88(sp)
    80006880:	06013683          	ld	a3,96(sp)
    80006884:	06813703          	ld	a4,104(sp)
    80006888:	07013783          	ld	a5,112(sp)
    8000688c:	07813803          	ld	a6,120(sp)
    80006890:	08013883          	ld	a7,128(sp)
    80006894:	08813903          	ld	s2,136(sp)
    80006898:	09013983          	ld	s3,144(sp)
    8000689c:	09813a03          	ld	s4,152(sp)
    800068a0:	0a013a83          	ld	s5,160(sp)
    800068a4:	0a813b03          	ld	s6,168(sp)
    800068a8:	0b013b83          	ld	s7,176(sp)
    800068ac:	0b813c03          	ld	s8,184(sp)
    800068b0:	0c013c83          	ld	s9,192(sp)
    800068b4:	0c813d03          	ld	s10,200(sp)
    800068b8:	0d013d83          	ld	s11,208(sp)
    800068bc:	0d813e03          	ld	t3,216(sp)
    800068c0:	0e013e83          	ld	t4,224(sp)
    800068c4:	0e813f03          	ld	t5,232(sp)
    800068c8:	0f013f83          	ld	t6,240(sp)
    800068cc:	10010113          	addi	sp,sp,256
    800068d0:	10200073          	sret
    800068d4:	00000013          	nop
    800068d8:	00000013          	nop
    800068dc:	00000013          	nop

00000000800068e0 <timervec>:
    800068e0:	34051573          	csrrw	a0,mscratch,a0
    800068e4:	00b53023          	sd	a1,0(a0)
    800068e8:	00c53423          	sd	a2,8(a0)
    800068ec:	00d53823          	sd	a3,16(a0)
    800068f0:	01853583          	ld	a1,24(a0)
    800068f4:	02053603          	ld	a2,32(a0)
    800068f8:	0005b683          	ld	a3,0(a1)
    800068fc:	00c686b3          	add	a3,a3,a2
    80006900:	00d5b023          	sd	a3,0(a1)
    80006904:	00200593          	li	a1,2
    80006908:	14459073          	csrw	sip,a1
    8000690c:	01053683          	ld	a3,16(a0)
    80006910:	00853603          	ld	a2,8(a0)
    80006914:	00053583          	ld	a1,0(a0)
    80006918:	34051573          	csrrw	a0,mscratch,a0
    8000691c:	30200073          	mret

0000000080006920 <plicinit>:
    80006920:	ff010113          	addi	sp,sp,-16
    80006924:	00813423          	sd	s0,8(sp)
    80006928:	01010413          	addi	s0,sp,16
    8000692c:	00813403          	ld	s0,8(sp)
    80006930:	0c0007b7          	lui	a5,0xc000
    80006934:	00100713          	li	a4,1
    80006938:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000693c:	00e7a223          	sw	a4,4(a5)
    80006940:	01010113          	addi	sp,sp,16
    80006944:	00008067          	ret

0000000080006948 <plicinithart>:
    80006948:	ff010113          	addi	sp,sp,-16
    8000694c:	00813023          	sd	s0,0(sp)
    80006950:	00113423          	sd	ra,8(sp)
    80006954:	01010413          	addi	s0,sp,16
    80006958:	00000097          	auipc	ra,0x0
    8000695c:	a4c080e7          	jalr	-1460(ra) # 800063a4 <cpuid>
    80006960:	0085171b          	slliw	a4,a0,0x8
    80006964:	0c0027b7          	lui	a5,0xc002
    80006968:	00e787b3          	add	a5,a5,a4
    8000696c:	40200713          	li	a4,1026
    80006970:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006974:	00813083          	ld	ra,8(sp)
    80006978:	00013403          	ld	s0,0(sp)
    8000697c:	00d5151b          	slliw	a0,a0,0xd
    80006980:	0c2017b7          	lui	a5,0xc201
    80006984:	00a78533          	add	a0,a5,a0
    80006988:	00052023          	sw	zero,0(a0)
    8000698c:	01010113          	addi	sp,sp,16
    80006990:	00008067          	ret

0000000080006994 <plic_claim>:
    80006994:	ff010113          	addi	sp,sp,-16
    80006998:	00813023          	sd	s0,0(sp)
    8000699c:	00113423          	sd	ra,8(sp)
    800069a0:	01010413          	addi	s0,sp,16
    800069a4:	00000097          	auipc	ra,0x0
    800069a8:	a00080e7          	jalr	-1536(ra) # 800063a4 <cpuid>
    800069ac:	00813083          	ld	ra,8(sp)
    800069b0:	00013403          	ld	s0,0(sp)
    800069b4:	00d5151b          	slliw	a0,a0,0xd
    800069b8:	0c2017b7          	lui	a5,0xc201
    800069bc:	00a78533          	add	a0,a5,a0
    800069c0:	00452503          	lw	a0,4(a0)
    800069c4:	01010113          	addi	sp,sp,16
    800069c8:	00008067          	ret

00000000800069cc <plic_complete>:
    800069cc:	fe010113          	addi	sp,sp,-32
    800069d0:	00813823          	sd	s0,16(sp)
    800069d4:	00913423          	sd	s1,8(sp)
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	02010413          	addi	s0,sp,32
    800069e0:	00050493          	mv	s1,a0
    800069e4:	00000097          	auipc	ra,0x0
    800069e8:	9c0080e7          	jalr	-1600(ra) # 800063a4 <cpuid>
    800069ec:	01813083          	ld	ra,24(sp)
    800069f0:	01013403          	ld	s0,16(sp)
    800069f4:	00d5179b          	slliw	a5,a0,0xd
    800069f8:	0c201737          	lui	a4,0xc201
    800069fc:	00f707b3          	add	a5,a4,a5
    80006a00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006a04:	00813483          	ld	s1,8(sp)
    80006a08:	02010113          	addi	sp,sp,32
    80006a0c:	00008067          	ret

0000000080006a10 <consolewrite>:
    80006a10:	fb010113          	addi	sp,sp,-80
    80006a14:	04813023          	sd	s0,64(sp)
    80006a18:	04113423          	sd	ra,72(sp)
    80006a1c:	02913c23          	sd	s1,56(sp)
    80006a20:	03213823          	sd	s2,48(sp)
    80006a24:	03313423          	sd	s3,40(sp)
    80006a28:	03413023          	sd	s4,32(sp)
    80006a2c:	01513c23          	sd	s5,24(sp)
    80006a30:	05010413          	addi	s0,sp,80
    80006a34:	06c05c63          	blez	a2,80006aac <consolewrite+0x9c>
    80006a38:	00060993          	mv	s3,a2
    80006a3c:	00050a13          	mv	s4,a0
    80006a40:	00058493          	mv	s1,a1
    80006a44:	00000913          	li	s2,0
    80006a48:	fff00a93          	li	s5,-1
    80006a4c:	01c0006f          	j	80006a68 <consolewrite+0x58>
    80006a50:	fbf44503          	lbu	a0,-65(s0)
    80006a54:	0019091b          	addiw	s2,s2,1
    80006a58:	00148493          	addi	s1,s1,1
    80006a5c:	00001097          	auipc	ra,0x1
    80006a60:	a9c080e7          	jalr	-1380(ra) # 800074f8 <uartputc>
    80006a64:	03298063          	beq	s3,s2,80006a84 <consolewrite+0x74>
    80006a68:	00048613          	mv	a2,s1
    80006a6c:	00100693          	li	a3,1
    80006a70:	000a0593          	mv	a1,s4
    80006a74:	fbf40513          	addi	a0,s0,-65
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	9e4080e7          	jalr	-1564(ra) # 8000645c <either_copyin>
    80006a80:	fd5518e3          	bne	a0,s5,80006a50 <consolewrite+0x40>
    80006a84:	04813083          	ld	ra,72(sp)
    80006a88:	04013403          	ld	s0,64(sp)
    80006a8c:	03813483          	ld	s1,56(sp)
    80006a90:	02813983          	ld	s3,40(sp)
    80006a94:	02013a03          	ld	s4,32(sp)
    80006a98:	01813a83          	ld	s5,24(sp)
    80006a9c:	00090513          	mv	a0,s2
    80006aa0:	03013903          	ld	s2,48(sp)
    80006aa4:	05010113          	addi	sp,sp,80
    80006aa8:	00008067          	ret
    80006aac:	00000913          	li	s2,0
    80006ab0:	fd5ff06f          	j	80006a84 <consolewrite+0x74>

0000000080006ab4 <consoleread>:
    80006ab4:	f9010113          	addi	sp,sp,-112
    80006ab8:	06813023          	sd	s0,96(sp)
    80006abc:	04913c23          	sd	s1,88(sp)
    80006ac0:	05213823          	sd	s2,80(sp)
    80006ac4:	05313423          	sd	s3,72(sp)
    80006ac8:	05413023          	sd	s4,64(sp)
    80006acc:	03513c23          	sd	s5,56(sp)
    80006ad0:	03613823          	sd	s6,48(sp)
    80006ad4:	03713423          	sd	s7,40(sp)
    80006ad8:	03813023          	sd	s8,32(sp)
    80006adc:	06113423          	sd	ra,104(sp)
    80006ae0:	01913c23          	sd	s9,24(sp)
    80006ae4:	07010413          	addi	s0,sp,112
    80006ae8:	00060b93          	mv	s7,a2
    80006aec:	00050913          	mv	s2,a0
    80006af0:	00058c13          	mv	s8,a1
    80006af4:	00060b1b          	sext.w	s6,a2
    80006af8:	00006497          	auipc	s1,0x6
    80006afc:	0c048493          	addi	s1,s1,192 # 8000cbb8 <cons>
    80006b00:	00400993          	li	s3,4
    80006b04:	fff00a13          	li	s4,-1
    80006b08:	00a00a93          	li	s5,10
    80006b0c:	05705e63          	blez	s7,80006b68 <consoleread+0xb4>
    80006b10:	09c4a703          	lw	a4,156(s1)
    80006b14:	0984a783          	lw	a5,152(s1)
    80006b18:	0007071b          	sext.w	a4,a4
    80006b1c:	08e78463          	beq	a5,a4,80006ba4 <consoleread+0xf0>
    80006b20:	07f7f713          	andi	a4,a5,127
    80006b24:	00e48733          	add	a4,s1,a4
    80006b28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006b2c:	0017869b          	addiw	a3,a5,1
    80006b30:	08d4ac23          	sw	a3,152(s1)
    80006b34:	00070c9b          	sext.w	s9,a4
    80006b38:	0b370663          	beq	a4,s3,80006be4 <consoleread+0x130>
    80006b3c:	00100693          	li	a3,1
    80006b40:	f9f40613          	addi	a2,s0,-97
    80006b44:	000c0593          	mv	a1,s8
    80006b48:	00090513          	mv	a0,s2
    80006b4c:	f8e40fa3          	sb	a4,-97(s0)
    80006b50:	00000097          	auipc	ra,0x0
    80006b54:	8c0080e7          	jalr	-1856(ra) # 80006410 <either_copyout>
    80006b58:	01450863          	beq	a0,s4,80006b68 <consoleread+0xb4>
    80006b5c:	001c0c13          	addi	s8,s8,1
    80006b60:	fffb8b9b          	addiw	s7,s7,-1
    80006b64:	fb5c94e3          	bne	s9,s5,80006b0c <consoleread+0x58>
    80006b68:	000b851b          	sext.w	a0,s7
    80006b6c:	06813083          	ld	ra,104(sp)
    80006b70:	06013403          	ld	s0,96(sp)
    80006b74:	05813483          	ld	s1,88(sp)
    80006b78:	05013903          	ld	s2,80(sp)
    80006b7c:	04813983          	ld	s3,72(sp)
    80006b80:	04013a03          	ld	s4,64(sp)
    80006b84:	03813a83          	ld	s5,56(sp)
    80006b88:	02813b83          	ld	s7,40(sp)
    80006b8c:	02013c03          	ld	s8,32(sp)
    80006b90:	01813c83          	ld	s9,24(sp)
    80006b94:	40ab053b          	subw	a0,s6,a0
    80006b98:	03013b03          	ld	s6,48(sp)
    80006b9c:	07010113          	addi	sp,sp,112
    80006ba0:	00008067          	ret
    80006ba4:	00001097          	auipc	ra,0x1
    80006ba8:	1d8080e7          	jalr	472(ra) # 80007d7c <push_on>
    80006bac:	0984a703          	lw	a4,152(s1)
    80006bb0:	09c4a783          	lw	a5,156(s1)
    80006bb4:	0007879b          	sext.w	a5,a5
    80006bb8:	fef70ce3          	beq	a4,a5,80006bb0 <consoleread+0xfc>
    80006bbc:	00001097          	auipc	ra,0x1
    80006bc0:	234080e7          	jalr	564(ra) # 80007df0 <pop_on>
    80006bc4:	0984a783          	lw	a5,152(s1)
    80006bc8:	07f7f713          	andi	a4,a5,127
    80006bcc:	00e48733          	add	a4,s1,a4
    80006bd0:	01874703          	lbu	a4,24(a4)
    80006bd4:	0017869b          	addiw	a3,a5,1
    80006bd8:	08d4ac23          	sw	a3,152(s1)
    80006bdc:	00070c9b          	sext.w	s9,a4
    80006be0:	f5371ee3          	bne	a4,s3,80006b3c <consoleread+0x88>
    80006be4:	000b851b          	sext.w	a0,s7
    80006be8:	f96bf2e3          	bgeu	s7,s6,80006b6c <consoleread+0xb8>
    80006bec:	08f4ac23          	sw	a5,152(s1)
    80006bf0:	f7dff06f          	j	80006b6c <consoleread+0xb8>

0000000080006bf4 <consputc>:
    80006bf4:	10000793          	li	a5,256
    80006bf8:	00f50663          	beq	a0,a5,80006c04 <consputc+0x10>
    80006bfc:	00001317          	auipc	t1,0x1
    80006c00:	9f430067          	jr	-1548(t1) # 800075f0 <uartputc_sync>
    80006c04:	ff010113          	addi	sp,sp,-16
    80006c08:	00113423          	sd	ra,8(sp)
    80006c0c:	00813023          	sd	s0,0(sp)
    80006c10:	01010413          	addi	s0,sp,16
    80006c14:	00800513          	li	a0,8
    80006c18:	00001097          	auipc	ra,0x1
    80006c1c:	9d8080e7          	jalr	-1576(ra) # 800075f0 <uartputc_sync>
    80006c20:	02000513          	li	a0,32
    80006c24:	00001097          	auipc	ra,0x1
    80006c28:	9cc080e7          	jalr	-1588(ra) # 800075f0 <uartputc_sync>
    80006c2c:	00013403          	ld	s0,0(sp)
    80006c30:	00813083          	ld	ra,8(sp)
    80006c34:	00800513          	li	a0,8
    80006c38:	01010113          	addi	sp,sp,16
    80006c3c:	00001317          	auipc	t1,0x1
    80006c40:	9b430067          	jr	-1612(t1) # 800075f0 <uartputc_sync>

0000000080006c44 <consoleintr>:
    80006c44:	fe010113          	addi	sp,sp,-32
    80006c48:	00813823          	sd	s0,16(sp)
    80006c4c:	00913423          	sd	s1,8(sp)
    80006c50:	01213023          	sd	s2,0(sp)
    80006c54:	00113c23          	sd	ra,24(sp)
    80006c58:	02010413          	addi	s0,sp,32
    80006c5c:	00006917          	auipc	s2,0x6
    80006c60:	f5c90913          	addi	s2,s2,-164 # 8000cbb8 <cons>
    80006c64:	00050493          	mv	s1,a0
    80006c68:	00090513          	mv	a0,s2
    80006c6c:	00001097          	auipc	ra,0x1
    80006c70:	e40080e7          	jalr	-448(ra) # 80007aac <acquire>
    80006c74:	02048c63          	beqz	s1,80006cac <consoleintr+0x68>
    80006c78:	0a092783          	lw	a5,160(s2)
    80006c7c:	09892703          	lw	a4,152(s2)
    80006c80:	07f00693          	li	a3,127
    80006c84:	40e7873b          	subw	a4,a5,a4
    80006c88:	02e6e263          	bltu	a3,a4,80006cac <consoleintr+0x68>
    80006c8c:	00d00713          	li	a4,13
    80006c90:	04e48063          	beq	s1,a4,80006cd0 <consoleintr+0x8c>
    80006c94:	07f7f713          	andi	a4,a5,127
    80006c98:	00e90733          	add	a4,s2,a4
    80006c9c:	0017879b          	addiw	a5,a5,1
    80006ca0:	0af92023          	sw	a5,160(s2)
    80006ca4:	00970c23          	sb	s1,24(a4)
    80006ca8:	08f92e23          	sw	a5,156(s2)
    80006cac:	01013403          	ld	s0,16(sp)
    80006cb0:	01813083          	ld	ra,24(sp)
    80006cb4:	00813483          	ld	s1,8(sp)
    80006cb8:	00013903          	ld	s2,0(sp)
    80006cbc:	00006517          	auipc	a0,0x6
    80006cc0:	efc50513          	addi	a0,a0,-260 # 8000cbb8 <cons>
    80006cc4:	02010113          	addi	sp,sp,32
    80006cc8:	00001317          	auipc	t1,0x1
    80006ccc:	eb030067          	jr	-336(t1) # 80007b78 <release>
    80006cd0:	00a00493          	li	s1,10
    80006cd4:	fc1ff06f          	j	80006c94 <consoleintr+0x50>

0000000080006cd8 <consoleinit>:
    80006cd8:	fe010113          	addi	sp,sp,-32
    80006cdc:	00113c23          	sd	ra,24(sp)
    80006ce0:	00813823          	sd	s0,16(sp)
    80006ce4:	00913423          	sd	s1,8(sp)
    80006ce8:	02010413          	addi	s0,sp,32
    80006cec:	00006497          	auipc	s1,0x6
    80006cf0:	ecc48493          	addi	s1,s1,-308 # 8000cbb8 <cons>
    80006cf4:	00048513          	mv	a0,s1
    80006cf8:	00003597          	auipc	a1,0x3
    80006cfc:	03858593          	addi	a1,a1,56 # 80009d30 <_ZTV12ConsumerSync+0x160>
    80006d00:	00001097          	auipc	ra,0x1
    80006d04:	d88080e7          	jalr	-632(ra) # 80007a88 <initlock>
    80006d08:	00000097          	auipc	ra,0x0
    80006d0c:	7ac080e7          	jalr	1964(ra) # 800074b4 <uartinit>
    80006d10:	01813083          	ld	ra,24(sp)
    80006d14:	01013403          	ld	s0,16(sp)
    80006d18:	00000797          	auipc	a5,0x0
    80006d1c:	d9c78793          	addi	a5,a5,-612 # 80006ab4 <consoleread>
    80006d20:	0af4bc23          	sd	a5,184(s1)
    80006d24:	00000797          	auipc	a5,0x0
    80006d28:	cec78793          	addi	a5,a5,-788 # 80006a10 <consolewrite>
    80006d2c:	0cf4b023          	sd	a5,192(s1)
    80006d30:	00813483          	ld	s1,8(sp)
    80006d34:	02010113          	addi	sp,sp,32
    80006d38:	00008067          	ret

0000000080006d3c <console_read>:
    80006d3c:	ff010113          	addi	sp,sp,-16
    80006d40:	00813423          	sd	s0,8(sp)
    80006d44:	01010413          	addi	s0,sp,16
    80006d48:	00813403          	ld	s0,8(sp)
    80006d4c:	00006317          	auipc	t1,0x6
    80006d50:	f2433303          	ld	t1,-220(t1) # 8000cc70 <devsw+0x10>
    80006d54:	01010113          	addi	sp,sp,16
    80006d58:	00030067          	jr	t1

0000000080006d5c <console_write>:
    80006d5c:	ff010113          	addi	sp,sp,-16
    80006d60:	00813423          	sd	s0,8(sp)
    80006d64:	01010413          	addi	s0,sp,16
    80006d68:	00813403          	ld	s0,8(sp)
    80006d6c:	00006317          	auipc	t1,0x6
    80006d70:	f0c33303          	ld	t1,-244(t1) # 8000cc78 <devsw+0x18>
    80006d74:	01010113          	addi	sp,sp,16
    80006d78:	00030067          	jr	t1

0000000080006d7c <panic>:
    80006d7c:	fe010113          	addi	sp,sp,-32
    80006d80:	00113c23          	sd	ra,24(sp)
    80006d84:	00813823          	sd	s0,16(sp)
    80006d88:	00913423          	sd	s1,8(sp)
    80006d8c:	02010413          	addi	s0,sp,32
    80006d90:	00050493          	mv	s1,a0
    80006d94:	00003517          	auipc	a0,0x3
    80006d98:	fa450513          	addi	a0,a0,-92 # 80009d38 <_ZTV12ConsumerSync+0x168>
    80006d9c:	00006797          	auipc	a5,0x6
    80006da0:	f607ae23          	sw	zero,-132(a5) # 8000cd18 <pr+0x18>
    80006da4:	00000097          	auipc	ra,0x0
    80006da8:	034080e7          	jalr	52(ra) # 80006dd8 <__printf>
    80006dac:	00048513          	mv	a0,s1
    80006db0:	00000097          	auipc	ra,0x0
    80006db4:	028080e7          	jalr	40(ra) # 80006dd8 <__printf>
    80006db8:	00002517          	auipc	a0,0x2
    80006dbc:	5a850513          	addi	a0,a0,1448 # 80009360 <_ZZ24debug_print_internal_intmE6digits+0xa8>
    80006dc0:	00000097          	auipc	ra,0x0
    80006dc4:	018080e7          	jalr	24(ra) # 80006dd8 <__printf>
    80006dc8:	00100793          	li	a5,1
    80006dcc:	00005717          	auipc	a4,0x5
    80006dd0:	cef72223          	sw	a5,-796(a4) # 8000bab0 <panicked>
    80006dd4:	0000006f          	j	80006dd4 <panic+0x58>

0000000080006dd8 <__printf>:
    80006dd8:	f3010113          	addi	sp,sp,-208
    80006ddc:	08813023          	sd	s0,128(sp)
    80006de0:	07313423          	sd	s3,104(sp)
    80006de4:	09010413          	addi	s0,sp,144
    80006de8:	05813023          	sd	s8,64(sp)
    80006dec:	08113423          	sd	ra,136(sp)
    80006df0:	06913c23          	sd	s1,120(sp)
    80006df4:	07213823          	sd	s2,112(sp)
    80006df8:	07413023          	sd	s4,96(sp)
    80006dfc:	05513c23          	sd	s5,88(sp)
    80006e00:	05613823          	sd	s6,80(sp)
    80006e04:	05713423          	sd	s7,72(sp)
    80006e08:	03913c23          	sd	s9,56(sp)
    80006e0c:	03a13823          	sd	s10,48(sp)
    80006e10:	03b13423          	sd	s11,40(sp)
    80006e14:	00006317          	auipc	t1,0x6
    80006e18:	eec30313          	addi	t1,t1,-276 # 8000cd00 <pr>
    80006e1c:	01832c03          	lw	s8,24(t1)
    80006e20:	00b43423          	sd	a1,8(s0)
    80006e24:	00c43823          	sd	a2,16(s0)
    80006e28:	00d43c23          	sd	a3,24(s0)
    80006e2c:	02e43023          	sd	a4,32(s0)
    80006e30:	02f43423          	sd	a5,40(s0)
    80006e34:	03043823          	sd	a6,48(s0)
    80006e38:	03143c23          	sd	a7,56(s0)
    80006e3c:	00050993          	mv	s3,a0
    80006e40:	4a0c1663          	bnez	s8,800072ec <__printf+0x514>
    80006e44:	60098c63          	beqz	s3,8000745c <__printf+0x684>
    80006e48:	0009c503          	lbu	a0,0(s3)
    80006e4c:	00840793          	addi	a5,s0,8
    80006e50:	f6f43c23          	sd	a5,-136(s0)
    80006e54:	00000493          	li	s1,0
    80006e58:	22050063          	beqz	a0,80007078 <__printf+0x2a0>
    80006e5c:	00002a37          	lui	s4,0x2
    80006e60:	00018ab7          	lui	s5,0x18
    80006e64:	000f4b37          	lui	s6,0xf4
    80006e68:	00989bb7          	lui	s7,0x989
    80006e6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006e70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006e74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006e78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006e7c:	00148c9b          	addiw	s9,s1,1
    80006e80:	02500793          	li	a5,37
    80006e84:	01998933          	add	s2,s3,s9
    80006e88:	38f51263          	bne	a0,a5,8000720c <__printf+0x434>
    80006e8c:	00094783          	lbu	a5,0(s2)
    80006e90:	00078c9b          	sext.w	s9,a5
    80006e94:	1e078263          	beqz	a5,80007078 <__printf+0x2a0>
    80006e98:	0024849b          	addiw	s1,s1,2
    80006e9c:	07000713          	li	a4,112
    80006ea0:	00998933          	add	s2,s3,s1
    80006ea4:	38e78a63          	beq	a5,a4,80007238 <__printf+0x460>
    80006ea8:	20f76863          	bltu	a4,a5,800070b8 <__printf+0x2e0>
    80006eac:	42a78863          	beq	a5,a0,800072dc <__printf+0x504>
    80006eb0:	06400713          	li	a4,100
    80006eb4:	40e79663          	bne	a5,a4,800072c0 <__printf+0x4e8>
    80006eb8:	f7843783          	ld	a5,-136(s0)
    80006ebc:	0007a603          	lw	a2,0(a5)
    80006ec0:	00878793          	addi	a5,a5,8
    80006ec4:	f6f43c23          	sd	a5,-136(s0)
    80006ec8:	42064a63          	bltz	a2,800072fc <__printf+0x524>
    80006ecc:	00a00713          	li	a4,10
    80006ed0:	02e677bb          	remuw	a5,a2,a4
    80006ed4:	00003d97          	auipc	s11,0x3
    80006ed8:	e8cd8d93          	addi	s11,s11,-372 # 80009d60 <digits>
    80006edc:	00900593          	li	a1,9
    80006ee0:	0006051b          	sext.w	a0,a2
    80006ee4:	00000c93          	li	s9,0
    80006ee8:	02079793          	slli	a5,a5,0x20
    80006eec:	0207d793          	srli	a5,a5,0x20
    80006ef0:	00fd87b3          	add	a5,s11,a5
    80006ef4:	0007c783          	lbu	a5,0(a5)
    80006ef8:	02e656bb          	divuw	a3,a2,a4
    80006efc:	f8f40023          	sb	a5,-128(s0)
    80006f00:	14c5d863          	bge	a1,a2,80007050 <__printf+0x278>
    80006f04:	06300593          	li	a1,99
    80006f08:	00100c93          	li	s9,1
    80006f0c:	02e6f7bb          	remuw	a5,a3,a4
    80006f10:	02079793          	slli	a5,a5,0x20
    80006f14:	0207d793          	srli	a5,a5,0x20
    80006f18:	00fd87b3          	add	a5,s11,a5
    80006f1c:	0007c783          	lbu	a5,0(a5)
    80006f20:	02e6d73b          	divuw	a4,a3,a4
    80006f24:	f8f400a3          	sb	a5,-127(s0)
    80006f28:	12a5f463          	bgeu	a1,a0,80007050 <__printf+0x278>
    80006f2c:	00a00693          	li	a3,10
    80006f30:	00900593          	li	a1,9
    80006f34:	02d777bb          	remuw	a5,a4,a3
    80006f38:	02079793          	slli	a5,a5,0x20
    80006f3c:	0207d793          	srli	a5,a5,0x20
    80006f40:	00fd87b3          	add	a5,s11,a5
    80006f44:	0007c503          	lbu	a0,0(a5)
    80006f48:	02d757bb          	divuw	a5,a4,a3
    80006f4c:	f8a40123          	sb	a0,-126(s0)
    80006f50:	48e5f263          	bgeu	a1,a4,800073d4 <__printf+0x5fc>
    80006f54:	06300513          	li	a0,99
    80006f58:	02d7f5bb          	remuw	a1,a5,a3
    80006f5c:	02059593          	slli	a1,a1,0x20
    80006f60:	0205d593          	srli	a1,a1,0x20
    80006f64:	00bd85b3          	add	a1,s11,a1
    80006f68:	0005c583          	lbu	a1,0(a1)
    80006f6c:	02d7d7bb          	divuw	a5,a5,a3
    80006f70:	f8b401a3          	sb	a1,-125(s0)
    80006f74:	48e57263          	bgeu	a0,a4,800073f8 <__printf+0x620>
    80006f78:	3e700513          	li	a0,999
    80006f7c:	02d7f5bb          	remuw	a1,a5,a3
    80006f80:	02059593          	slli	a1,a1,0x20
    80006f84:	0205d593          	srli	a1,a1,0x20
    80006f88:	00bd85b3          	add	a1,s11,a1
    80006f8c:	0005c583          	lbu	a1,0(a1)
    80006f90:	02d7d7bb          	divuw	a5,a5,a3
    80006f94:	f8b40223          	sb	a1,-124(s0)
    80006f98:	46e57663          	bgeu	a0,a4,80007404 <__printf+0x62c>
    80006f9c:	02d7f5bb          	remuw	a1,a5,a3
    80006fa0:	02059593          	slli	a1,a1,0x20
    80006fa4:	0205d593          	srli	a1,a1,0x20
    80006fa8:	00bd85b3          	add	a1,s11,a1
    80006fac:	0005c583          	lbu	a1,0(a1)
    80006fb0:	02d7d7bb          	divuw	a5,a5,a3
    80006fb4:	f8b402a3          	sb	a1,-123(s0)
    80006fb8:	46ea7863          	bgeu	s4,a4,80007428 <__printf+0x650>
    80006fbc:	02d7f5bb          	remuw	a1,a5,a3
    80006fc0:	02059593          	slli	a1,a1,0x20
    80006fc4:	0205d593          	srli	a1,a1,0x20
    80006fc8:	00bd85b3          	add	a1,s11,a1
    80006fcc:	0005c583          	lbu	a1,0(a1)
    80006fd0:	02d7d7bb          	divuw	a5,a5,a3
    80006fd4:	f8b40323          	sb	a1,-122(s0)
    80006fd8:	3eeaf863          	bgeu	s5,a4,800073c8 <__printf+0x5f0>
    80006fdc:	02d7f5bb          	remuw	a1,a5,a3
    80006fe0:	02059593          	slli	a1,a1,0x20
    80006fe4:	0205d593          	srli	a1,a1,0x20
    80006fe8:	00bd85b3          	add	a1,s11,a1
    80006fec:	0005c583          	lbu	a1,0(a1)
    80006ff0:	02d7d7bb          	divuw	a5,a5,a3
    80006ff4:	f8b403a3          	sb	a1,-121(s0)
    80006ff8:	42eb7e63          	bgeu	s6,a4,80007434 <__printf+0x65c>
    80006ffc:	02d7f5bb          	remuw	a1,a5,a3
    80007000:	02059593          	slli	a1,a1,0x20
    80007004:	0205d593          	srli	a1,a1,0x20
    80007008:	00bd85b3          	add	a1,s11,a1
    8000700c:	0005c583          	lbu	a1,0(a1)
    80007010:	02d7d7bb          	divuw	a5,a5,a3
    80007014:	f8b40423          	sb	a1,-120(s0)
    80007018:	42ebfc63          	bgeu	s7,a4,80007450 <__printf+0x678>
    8000701c:	02079793          	slli	a5,a5,0x20
    80007020:	0207d793          	srli	a5,a5,0x20
    80007024:	00fd8db3          	add	s11,s11,a5
    80007028:	000dc703          	lbu	a4,0(s11)
    8000702c:	00a00793          	li	a5,10
    80007030:	00900c93          	li	s9,9
    80007034:	f8e404a3          	sb	a4,-119(s0)
    80007038:	00065c63          	bgez	a2,80007050 <__printf+0x278>
    8000703c:	f9040713          	addi	a4,s0,-112
    80007040:	00f70733          	add	a4,a4,a5
    80007044:	02d00693          	li	a3,45
    80007048:	fed70823          	sb	a3,-16(a4)
    8000704c:	00078c93          	mv	s9,a5
    80007050:	f8040793          	addi	a5,s0,-128
    80007054:	01978cb3          	add	s9,a5,s9
    80007058:	f7f40d13          	addi	s10,s0,-129
    8000705c:	000cc503          	lbu	a0,0(s9)
    80007060:	fffc8c93          	addi	s9,s9,-1
    80007064:	00000097          	auipc	ra,0x0
    80007068:	b90080e7          	jalr	-1136(ra) # 80006bf4 <consputc>
    8000706c:	ffac98e3          	bne	s9,s10,8000705c <__printf+0x284>
    80007070:	00094503          	lbu	a0,0(s2)
    80007074:	e00514e3          	bnez	a0,80006e7c <__printf+0xa4>
    80007078:	1a0c1663          	bnez	s8,80007224 <__printf+0x44c>
    8000707c:	08813083          	ld	ra,136(sp)
    80007080:	08013403          	ld	s0,128(sp)
    80007084:	07813483          	ld	s1,120(sp)
    80007088:	07013903          	ld	s2,112(sp)
    8000708c:	06813983          	ld	s3,104(sp)
    80007090:	06013a03          	ld	s4,96(sp)
    80007094:	05813a83          	ld	s5,88(sp)
    80007098:	05013b03          	ld	s6,80(sp)
    8000709c:	04813b83          	ld	s7,72(sp)
    800070a0:	04013c03          	ld	s8,64(sp)
    800070a4:	03813c83          	ld	s9,56(sp)
    800070a8:	03013d03          	ld	s10,48(sp)
    800070ac:	02813d83          	ld	s11,40(sp)
    800070b0:	0d010113          	addi	sp,sp,208
    800070b4:	00008067          	ret
    800070b8:	07300713          	li	a4,115
    800070bc:	1ce78a63          	beq	a5,a4,80007290 <__printf+0x4b8>
    800070c0:	07800713          	li	a4,120
    800070c4:	1ee79e63          	bne	a5,a4,800072c0 <__printf+0x4e8>
    800070c8:	f7843783          	ld	a5,-136(s0)
    800070cc:	0007a703          	lw	a4,0(a5)
    800070d0:	00878793          	addi	a5,a5,8
    800070d4:	f6f43c23          	sd	a5,-136(s0)
    800070d8:	28074263          	bltz	a4,8000735c <__printf+0x584>
    800070dc:	00003d97          	auipc	s11,0x3
    800070e0:	c84d8d93          	addi	s11,s11,-892 # 80009d60 <digits>
    800070e4:	00f77793          	andi	a5,a4,15
    800070e8:	00fd87b3          	add	a5,s11,a5
    800070ec:	0007c683          	lbu	a3,0(a5)
    800070f0:	00f00613          	li	a2,15
    800070f4:	0007079b          	sext.w	a5,a4
    800070f8:	f8d40023          	sb	a3,-128(s0)
    800070fc:	0047559b          	srliw	a1,a4,0x4
    80007100:	0047569b          	srliw	a3,a4,0x4
    80007104:	00000c93          	li	s9,0
    80007108:	0ee65063          	bge	a2,a4,800071e8 <__printf+0x410>
    8000710c:	00f6f693          	andi	a3,a3,15
    80007110:	00dd86b3          	add	a3,s11,a3
    80007114:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007118:	0087d79b          	srliw	a5,a5,0x8
    8000711c:	00100c93          	li	s9,1
    80007120:	f8d400a3          	sb	a3,-127(s0)
    80007124:	0cb67263          	bgeu	a2,a1,800071e8 <__printf+0x410>
    80007128:	00f7f693          	andi	a3,a5,15
    8000712c:	00dd86b3          	add	a3,s11,a3
    80007130:	0006c583          	lbu	a1,0(a3)
    80007134:	00f00613          	li	a2,15
    80007138:	0047d69b          	srliw	a3,a5,0x4
    8000713c:	f8b40123          	sb	a1,-126(s0)
    80007140:	0047d593          	srli	a1,a5,0x4
    80007144:	28f67e63          	bgeu	a2,a5,800073e0 <__printf+0x608>
    80007148:	00f6f693          	andi	a3,a3,15
    8000714c:	00dd86b3          	add	a3,s11,a3
    80007150:	0006c503          	lbu	a0,0(a3)
    80007154:	0087d813          	srli	a6,a5,0x8
    80007158:	0087d69b          	srliw	a3,a5,0x8
    8000715c:	f8a401a3          	sb	a0,-125(s0)
    80007160:	28b67663          	bgeu	a2,a1,800073ec <__printf+0x614>
    80007164:	00f6f693          	andi	a3,a3,15
    80007168:	00dd86b3          	add	a3,s11,a3
    8000716c:	0006c583          	lbu	a1,0(a3)
    80007170:	00c7d513          	srli	a0,a5,0xc
    80007174:	00c7d69b          	srliw	a3,a5,0xc
    80007178:	f8b40223          	sb	a1,-124(s0)
    8000717c:	29067a63          	bgeu	a2,a6,80007410 <__printf+0x638>
    80007180:	00f6f693          	andi	a3,a3,15
    80007184:	00dd86b3          	add	a3,s11,a3
    80007188:	0006c583          	lbu	a1,0(a3)
    8000718c:	0107d813          	srli	a6,a5,0x10
    80007190:	0107d69b          	srliw	a3,a5,0x10
    80007194:	f8b402a3          	sb	a1,-123(s0)
    80007198:	28a67263          	bgeu	a2,a0,8000741c <__printf+0x644>
    8000719c:	00f6f693          	andi	a3,a3,15
    800071a0:	00dd86b3          	add	a3,s11,a3
    800071a4:	0006c683          	lbu	a3,0(a3)
    800071a8:	0147d79b          	srliw	a5,a5,0x14
    800071ac:	f8d40323          	sb	a3,-122(s0)
    800071b0:	21067663          	bgeu	a2,a6,800073bc <__printf+0x5e4>
    800071b4:	02079793          	slli	a5,a5,0x20
    800071b8:	0207d793          	srli	a5,a5,0x20
    800071bc:	00fd8db3          	add	s11,s11,a5
    800071c0:	000dc683          	lbu	a3,0(s11)
    800071c4:	00800793          	li	a5,8
    800071c8:	00700c93          	li	s9,7
    800071cc:	f8d403a3          	sb	a3,-121(s0)
    800071d0:	00075c63          	bgez	a4,800071e8 <__printf+0x410>
    800071d4:	f9040713          	addi	a4,s0,-112
    800071d8:	00f70733          	add	a4,a4,a5
    800071dc:	02d00693          	li	a3,45
    800071e0:	fed70823          	sb	a3,-16(a4)
    800071e4:	00078c93          	mv	s9,a5
    800071e8:	f8040793          	addi	a5,s0,-128
    800071ec:	01978cb3          	add	s9,a5,s9
    800071f0:	f7f40d13          	addi	s10,s0,-129
    800071f4:	000cc503          	lbu	a0,0(s9)
    800071f8:	fffc8c93          	addi	s9,s9,-1
    800071fc:	00000097          	auipc	ra,0x0
    80007200:	9f8080e7          	jalr	-1544(ra) # 80006bf4 <consputc>
    80007204:	ff9d18e3          	bne	s10,s9,800071f4 <__printf+0x41c>
    80007208:	0100006f          	j	80007218 <__printf+0x440>
    8000720c:	00000097          	auipc	ra,0x0
    80007210:	9e8080e7          	jalr	-1560(ra) # 80006bf4 <consputc>
    80007214:	000c8493          	mv	s1,s9
    80007218:	00094503          	lbu	a0,0(s2)
    8000721c:	c60510e3          	bnez	a0,80006e7c <__printf+0xa4>
    80007220:	e40c0ee3          	beqz	s8,8000707c <__printf+0x2a4>
    80007224:	00006517          	auipc	a0,0x6
    80007228:	adc50513          	addi	a0,a0,-1316 # 8000cd00 <pr>
    8000722c:	00001097          	auipc	ra,0x1
    80007230:	94c080e7          	jalr	-1716(ra) # 80007b78 <release>
    80007234:	e49ff06f          	j	8000707c <__printf+0x2a4>
    80007238:	f7843783          	ld	a5,-136(s0)
    8000723c:	03000513          	li	a0,48
    80007240:	01000d13          	li	s10,16
    80007244:	00878713          	addi	a4,a5,8
    80007248:	0007bc83          	ld	s9,0(a5)
    8000724c:	f6e43c23          	sd	a4,-136(s0)
    80007250:	00000097          	auipc	ra,0x0
    80007254:	9a4080e7          	jalr	-1628(ra) # 80006bf4 <consputc>
    80007258:	07800513          	li	a0,120
    8000725c:	00000097          	auipc	ra,0x0
    80007260:	998080e7          	jalr	-1640(ra) # 80006bf4 <consputc>
    80007264:	00003d97          	auipc	s11,0x3
    80007268:	afcd8d93          	addi	s11,s11,-1284 # 80009d60 <digits>
    8000726c:	03ccd793          	srli	a5,s9,0x3c
    80007270:	00fd87b3          	add	a5,s11,a5
    80007274:	0007c503          	lbu	a0,0(a5)
    80007278:	fffd0d1b          	addiw	s10,s10,-1
    8000727c:	004c9c93          	slli	s9,s9,0x4
    80007280:	00000097          	auipc	ra,0x0
    80007284:	974080e7          	jalr	-1676(ra) # 80006bf4 <consputc>
    80007288:	fe0d12e3          	bnez	s10,8000726c <__printf+0x494>
    8000728c:	f8dff06f          	j	80007218 <__printf+0x440>
    80007290:	f7843783          	ld	a5,-136(s0)
    80007294:	0007bc83          	ld	s9,0(a5)
    80007298:	00878793          	addi	a5,a5,8
    8000729c:	f6f43c23          	sd	a5,-136(s0)
    800072a0:	000c9a63          	bnez	s9,800072b4 <__printf+0x4dc>
    800072a4:	1080006f          	j	800073ac <__printf+0x5d4>
    800072a8:	001c8c93          	addi	s9,s9,1
    800072ac:	00000097          	auipc	ra,0x0
    800072b0:	948080e7          	jalr	-1720(ra) # 80006bf4 <consputc>
    800072b4:	000cc503          	lbu	a0,0(s9)
    800072b8:	fe0518e3          	bnez	a0,800072a8 <__printf+0x4d0>
    800072bc:	f5dff06f          	j	80007218 <__printf+0x440>
    800072c0:	02500513          	li	a0,37
    800072c4:	00000097          	auipc	ra,0x0
    800072c8:	930080e7          	jalr	-1744(ra) # 80006bf4 <consputc>
    800072cc:	000c8513          	mv	a0,s9
    800072d0:	00000097          	auipc	ra,0x0
    800072d4:	924080e7          	jalr	-1756(ra) # 80006bf4 <consputc>
    800072d8:	f41ff06f          	j	80007218 <__printf+0x440>
    800072dc:	02500513          	li	a0,37
    800072e0:	00000097          	auipc	ra,0x0
    800072e4:	914080e7          	jalr	-1772(ra) # 80006bf4 <consputc>
    800072e8:	f31ff06f          	j	80007218 <__printf+0x440>
    800072ec:	00030513          	mv	a0,t1
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	7bc080e7          	jalr	1980(ra) # 80007aac <acquire>
    800072f8:	b4dff06f          	j	80006e44 <__printf+0x6c>
    800072fc:	40c0053b          	negw	a0,a2
    80007300:	00a00713          	li	a4,10
    80007304:	02e576bb          	remuw	a3,a0,a4
    80007308:	00003d97          	auipc	s11,0x3
    8000730c:	a58d8d93          	addi	s11,s11,-1448 # 80009d60 <digits>
    80007310:	ff700593          	li	a1,-9
    80007314:	02069693          	slli	a3,a3,0x20
    80007318:	0206d693          	srli	a3,a3,0x20
    8000731c:	00dd86b3          	add	a3,s11,a3
    80007320:	0006c683          	lbu	a3,0(a3)
    80007324:	02e557bb          	divuw	a5,a0,a4
    80007328:	f8d40023          	sb	a3,-128(s0)
    8000732c:	10b65e63          	bge	a2,a1,80007448 <__printf+0x670>
    80007330:	06300593          	li	a1,99
    80007334:	02e7f6bb          	remuw	a3,a5,a4
    80007338:	02069693          	slli	a3,a3,0x20
    8000733c:	0206d693          	srli	a3,a3,0x20
    80007340:	00dd86b3          	add	a3,s11,a3
    80007344:	0006c683          	lbu	a3,0(a3)
    80007348:	02e7d73b          	divuw	a4,a5,a4
    8000734c:	00200793          	li	a5,2
    80007350:	f8d400a3          	sb	a3,-127(s0)
    80007354:	bca5ece3          	bltu	a1,a0,80006f2c <__printf+0x154>
    80007358:	ce5ff06f          	j	8000703c <__printf+0x264>
    8000735c:	40e007bb          	negw	a5,a4
    80007360:	00003d97          	auipc	s11,0x3
    80007364:	a00d8d93          	addi	s11,s11,-1536 # 80009d60 <digits>
    80007368:	00f7f693          	andi	a3,a5,15
    8000736c:	00dd86b3          	add	a3,s11,a3
    80007370:	0006c583          	lbu	a1,0(a3)
    80007374:	ff100613          	li	a2,-15
    80007378:	0047d69b          	srliw	a3,a5,0x4
    8000737c:	f8b40023          	sb	a1,-128(s0)
    80007380:	0047d59b          	srliw	a1,a5,0x4
    80007384:	0ac75e63          	bge	a4,a2,80007440 <__printf+0x668>
    80007388:	00f6f693          	andi	a3,a3,15
    8000738c:	00dd86b3          	add	a3,s11,a3
    80007390:	0006c603          	lbu	a2,0(a3)
    80007394:	00f00693          	li	a3,15
    80007398:	0087d79b          	srliw	a5,a5,0x8
    8000739c:	f8c400a3          	sb	a2,-127(s0)
    800073a0:	d8b6e4e3          	bltu	a3,a1,80007128 <__printf+0x350>
    800073a4:	00200793          	li	a5,2
    800073a8:	e2dff06f          	j	800071d4 <__printf+0x3fc>
    800073ac:	00003c97          	auipc	s9,0x3
    800073b0:	994c8c93          	addi	s9,s9,-1644 # 80009d40 <_ZTV12ConsumerSync+0x170>
    800073b4:	02800513          	li	a0,40
    800073b8:	ef1ff06f          	j	800072a8 <__printf+0x4d0>
    800073bc:	00700793          	li	a5,7
    800073c0:	00600c93          	li	s9,6
    800073c4:	e0dff06f          	j	800071d0 <__printf+0x3f8>
    800073c8:	00700793          	li	a5,7
    800073cc:	00600c93          	li	s9,6
    800073d0:	c69ff06f          	j	80007038 <__printf+0x260>
    800073d4:	00300793          	li	a5,3
    800073d8:	00200c93          	li	s9,2
    800073dc:	c5dff06f          	j	80007038 <__printf+0x260>
    800073e0:	00300793          	li	a5,3
    800073e4:	00200c93          	li	s9,2
    800073e8:	de9ff06f          	j	800071d0 <__printf+0x3f8>
    800073ec:	00400793          	li	a5,4
    800073f0:	00300c93          	li	s9,3
    800073f4:	dddff06f          	j	800071d0 <__printf+0x3f8>
    800073f8:	00400793          	li	a5,4
    800073fc:	00300c93          	li	s9,3
    80007400:	c39ff06f          	j	80007038 <__printf+0x260>
    80007404:	00500793          	li	a5,5
    80007408:	00400c93          	li	s9,4
    8000740c:	c2dff06f          	j	80007038 <__printf+0x260>
    80007410:	00500793          	li	a5,5
    80007414:	00400c93          	li	s9,4
    80007418:	db9ff06f          	j	800071d0 <__printf+0x3f8>
    8000741c:	00600793          	li	a5,6
    80007420:	00500c93          	li	s9,5
    80007424:	dadff06f          	j	800071d0 <__printf+0x3f8>
    80007428:	00600793          	li	a5,6
    8000742c:	00500c93          	li	s9,5
    80007430:	c09ff06f          	j	80007038 <__printf+0x260>
    80007434:	00800793          	li	a5,8
    80007438:	00700c93          	li	s9,7
    8000743c:	bfdff06f          	j	80007038 <__printf+0x260>
    80007440:	00100793          	li	a5,1
    80007444:	d91ff06f          	j	800071d4 <__printf+0x3fc>
    80007448:	00100793          	li	a5,1
    8000744c:	bf1ff06f          	j	8000703c <__printf+0x264>
    80007450:	00900793          	li	a5,9
    80007454:	00800c93          	li	s9,8
    80007458:	be1ff06f          	j	80007038 <__printf+0x260>
    8000745c:	00003517          	auipc	a0,0x3
    80007460:	8ec50513          	addi	a0,a0,-1812 # 80009d48 <_ZTV12ConsumerSync+0x178>
    80007464:	00000097          	auipc	ra,0x0
    80007468:	918080e7          	jalr	-1768(ra) # 80006d7c <panic>

000000008000746c <printfinit>:
    8000746c:	fe010113          	addi	sp,sp,-32
    80007470:	00813823          	sd	s0,16(sp)
    80007474:	00913423          	sd	s1,8(sp)
    80007478:	00113c23          	sd	ra,24(sp)
    8000747c:	02010413          	addi	s0,sp,32
    80007480:	00006497          	auipc	s1,0x6
    80007484:	88048493          	addi	s1,s1,-1920 # 8000cd00 <pr>
    80007488:	00048513          	mv	a0,s1
    8000748c:	00003597          	auipc	a1,0x3
    80007490:	8cc58593          	addi	a1,a1,-1844 # 80009d58 <_ZTV12ConsumerSync+0x188>
    80007494:	00000097          	auipc	ra,0x0
    80007498:	5f4080e7          	jalr	1524(ra) # 80007a88 <initlock>
    8000749c:	01813083          	ld	ra,24(sp)
    800074a0:	01013403          	ld	s0,16(sp)
    800074a4:	0004ac23          	sw	zero,24(s1)
    800074a8:	00813483          	ld	s1,8(sp)
    800074ac:	02010113          	addi	sp,sp,32
    800074b0:	00008067          	ret

00000000800074b4 <uartinit>:
    800074b4:	ff010113          	addi	sp,sp,-16
    800074b8:	00813423          	sd	s0,8(sp)
    800074bc:	01010413          	addi	s0,sp,16
    800074c0:	100007b7          	lui	a5,0x10000
    800074c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800074c8:	f8000713          	li	a4,-128
    800074cc:	00e781a3          	sb	a4,3(a5)
    800074d0:	00300713          	li	a4,3
    800074d4:	00e78023          	sb	a4,0(a5)
    800074d8:	000780a3          	sb	zero,1(a5)
    800074dc:	00e781a3          	sb	a4,3(a5)
    800074e0:	00700693          	li	a3,7
    800074e4:	00d78123          	sb	a3,2(a5)
    800074e8:	00e780a3          	sb	a4,1(a5)
    800074ec:	00813403          	ld	s0,8(sp)
    800074f0:	01010113          	addi	sp,sp,16
    800074f4:	00008067          	ret

00000000800074f8 <uartputc>:
    800074f8:	00004797          	auipc	a5,0x4
    800074fc:	5b87a783          	lw	a5,1464(a5) # 8000bab0 <panicked>
    80007500:	00078463          	beqz	a5,80007508 <uartputc+0x10>
    80007504:	0000006f          	j	80007504 <uartputc+0xc>
    80007508:	fd010113          	addi	sp,sp,-48
    8000750c:	02813023          	sd	s0,32(sp)
    80007510:	00913c23          	sd	s1,24(sp)
    80007514:	01213823          	sd	s2,16(sp)
    80007518:	01313423          	sd	s3,8(sp)
    8000751c:	02113423          	sd	ra,40(sp)
    80007520:	03010413          	addi	s0,sp,48
    80007524:	00004917          	auipc	s2,0x4
    80007528:	59490913          	addi	s2,s2,1428 # 8000bab8 <uart_tx_r>
    8000752c:	00093783          	ld	a5,0(s2)
    80007530:	00004497          	auipc	s1,0x4
    80007534:	59048493          	addi	s1,s1,1424 # 8000bac0 <uart_tx_w>
    80007538:	0004b703          	ld	a4,0(s1)
    8000753c:	02078693          	addi	a3,a5,32
    80007540:	00050993          	mv	s3,a0
    80007544:	02e69c63          	bne	a3,a4,8000757c <uartputc+0x84>
    80007548:	00001097          	auipc	ra,0x1
    8000754c:	834080e7          	jalr	-1996(ra) # 80007d7c <push_on>
    80007550:	00093783          	ld	a5,0(s2)
    80007554:	0004b703          	ld	a4,0(s1)
    80007558:	02078793          	addi	a5,a5,32
    8000755c:	00e79463          	bne	a5,a4,80007564 <uartputc+0x6c>
    80007560:	0000006f          	j	80007560 <uartputc+0x68>
    80007564:	00001097          	auipc	ra,0x1
    80007568:	88c080e7          	jalr	-1908(ra) # 80007df0 <pop_on>
    8000756c:	00093783          	ld	a5,0(s2)
    80007570:	0004b703          	ld	a4,0(s1)
    80007574:	02078693          	addi	a3,a5,32
    80007578:	fce688e3          	beq	a3,a4,80007548 <uartputc+0x50>
    8000757c:	01f77693          	andi	a3,a4,31
    80007580:	00005597          	auipc	a1,0x5
    80007584:	7a058593          	addi	a1,a1,1952 # 8000cd20 <uart_tx_buf>
    80007588:	00d586b3          	add	a3,a1,a3
    8000758c:	00170713          	addi	a4,a4,1
    80007590:	01368023          	sb	s3,0(a3)
    80007594:	00e4b023          	sd	a4,0(s1)
    80007598:	10000637          	lui	a2,0x10000
    8000759c:	02f71063          	bne	a4,a5,800075bc <uartputc+0xc4>
    800075a0:	0340006f          	j	800075d4 <uartputc+0xdc>
    800075a4:	00074703          	lbu	a4,0(a4)
    800075a8:	00f93023          	sd	a5,0(s2)
    800075ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800075b0:	00093783          	ld	a5,0(s2)
    800075b4:	0004b703          	ld	a4,0(s1)
    800075b8:	00f70e63          	beq	a4,a5,800075d4 <uartputc+0xdc>
    800075bc:	00564683          	lbu	a3,5(a2)
    800075c0:	01f7f713          	andi	a4,a5,31
    800075c4:	00e58733          	add	a4,a1,a4
    800075c8:	0206f693          	andi	a3,a3,32
    800075cc:	00178793          	addi	a5,a5,1
    800075d0:	fc069ae3          	bnez	a3,800075a4 <uartputc+0xac>
    800075d4:	02813083          	ld	ra,40(sp)
    800075d8:	02013403          	ld	s0,32(sp)
    800075dc:	01813483          	ld	s1,24(sp)
    800075e0:	01013903          	ld	s2,16(sp)
    800075e4:	00813983          	ld	s3,8(sp)
    800075e8:	03010113          	addi	sp,sp,48
    800075ec:	00008067          	ret

00000000800075f0 <uartputc_sync>:
    800075f0:	ff010113          	addi	sp,sp,-16
    800075f4:	00813423          	sd	s0,8(sp)
    800075f8:	01010413          	addi	s0,sp,16
    800075fc:	00004717          	auipc	a4,0x4
    80007600:	4b472703          	lw	a4,1204(a4) # 8000bab0 <panicked>
    80007604:	02071663          	bnez	a4,80007630 <uartputc_sync+0x40>
    80007608:	00050793          	mv	a5,a0
    8000760c:	100006b7          	lui	a3,0x10000
    80007610:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007614:	02077713          	andi	a4,a4,32
    80007618:	fe070ce3          	beqz	a4,80007610 <uartputc_sync+0x20>
    8000761c:	0ff7f793          	andi	a5,a5,255
    80007620:	00f68023          	sb	a5,0(a3)
    80007624:	00813403          	ld	s0,8(sp)
    80007628:	01010113          	addi	sp,sp,16
    8000762c:	00008067          	ret
    80007630:	0000006f          	j	80007630 <uartputc_sync+0x40>

0000000080007634 <uartstart>:
    80007634:	ff010113          	addi	sp,sp,-16
    80007638:	00813423          	sd	s0,8(sp)
    8000763c:	01010413          	addi	s0,sp,16
    80007640:	00004617          	auipc	a2,0x4
    80007644:	47860613          	addi	a2,a2,1144 # 8000bab8 <uart_tx_r>
    80007648:	00004517          	auipc	a0,0x4
    8000764c:	47850513          	addi	a0,a0,1144 # 8000bac0 <uart_tx_w>
    80007650:	00063783          	ld	a5,0(a2)
    80007654:	00053703          	ld	a4,0(a0)
    80007658:	04f70263          	beq	a4,a5,8000769c <uartstart+0x68>
    8000765c:	100005b7          	lui	a1,0x10000
    80007660:	00005817          	auipc	a6,0x5
    80007664:	6c080813          	addi	a6,a6,1728 # 8000cd20 <uart_tx_buf>
    80007668:	01c0006f          	j	80007684 <uartstart+0x50>
    8000766c:	0006c703          	lbu	a4,0(a3)
    80007670:	00f63023          	sd	a5,0(a2)
    80007674:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007678:	00063783          	ld	a5,0(a2)
    8000767c:	00053703          	ld	a4,0(a0)
    80007680:	00f70e63          	beq	a4,a5,8000769c <uartstart+0x68>
    80007684:	01f7f713          	andi	a4,a5,31
    80007688:	00e806b3          	add	a3,a6,a4
    8000768c:	0055c703          	lbu	a4,5(a1)
    80007690:	00178793          	addi	a5,a5,1
    80007694:	02077713          	andi	a4,a4,32
    80007698:	fc071ae3          	bnez	a4,8000766c <uartstart+0x38>
    8000769c:	00813403          	ld	s0,8(sp)
    800076a0:	01010113          	addi	sp,sp,16
    800076a4:	00008067          	ret

00000000800076a8 <uartgetc>:
    800076a8:	ff010113          	addi	sp,sp,-16
    800076ac:	00813423          	sd	s0,8(sp)
    800076b0:	01010413          	addi	s0,sp,16
    800076b4:	10000737          	lui	a4,0x10000
    800076b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800076bc:	0017f793          	andi	a5,a5,1
    800076c0:	00078c63          	beqz	a5,800076d8 <uartgetc+0x30>
    800076c4:	00074503          	lbu	a0,0(a4)
    800076c8:	0ff57513          	andi	a0,a0,255
    800076cc:	00813403          	ld	s0,8(sp)
    800076d0:	01010113          	addi	sp,sp,16
    800076d4:	00008067          	ret
    800076d8:	fff00513          	li	a0,-1
    800076dc:	ff1ff06f          	j	800076cc <uartgetc+0x24>

00000000800076e0 <uartintr>:
    800076e0:	100007b7          	lui	a5,0x10000
    800076e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800076e8:	0017f793          	andi	a5,a5,1
    800076ec:	0a078463          	beqz	a5,80007794 <uartintr+0xb4>
    800076f0:	fe010113          	addi	sp,sp,-32
    800076f4:	00813823          	sd	s0,16(sp)
    800076f8:	00913423          	sd	s1,8(sp)
    800076fc:	00113c23          	sd	ra,24(sp)
    80007700:	02010413          	addi	s0,sp,32
    80007704:	100004b7          	lui	s1,0x10000
    80007708:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000770c:	0ff57513          	andi	a0,a0,255
    80007710:	fffff097          	auipc	ra,0xfffff
    80007714:	534080e7          	jalr	1332(ra) # 80006c44 <consoleintr>
    80007718:	0054c783          	lbu	a5,5(s1)
    8000771c:	0017f793          	andi	a5,a5,1
    80007720:	fe0794e3          	bnez	a5,80007708 <uartintr+0x28>
    80007724:	00004617          	auipc	a2,0x4
    80007728:	39460613          	addi	a2,a2,916 # 8000bab8 <uart_tx_r>
    8000772c:	00004517          	auipc	a0,0x4
    80007730:	39450513          	addi	a0,a0,916 # 8000bac0 <uart_tx_w>
    80007734:	00063783          	ld	a5,0(a2)
    80007738:	00053703          	ld	a4,0(a0)
    8000773c:	04f70263          	beq	a4,a5,80007780 <uartintr+0xa0>
    80007740:	100005b7          	lui	a1,0x10000
    80007744:	00005817          	auipc	a6,0x5
    80007748:	5dc80813          	addi	a6,a6,1500 # 8000cd20 <uart_tx_buf>
    8000774c:	01c0006f          	j	80007768 <uartintr+0x88>
    80007750:	0006c703          	lbu	a4,0(a3)
    80007754:	00f63023          	sd	a5,0(a2)
    80007758:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000775c:	00063783          	ld	a5,0(a2)
    80007760:	00053703          	ld	a4,0(a0)
    80007764:	00f70e63          	beq	a4,a5,80007780 <uartintr+0xa0>
    80007768:	01f7f713          	andi	a4,a5,31
    8000776c:	00e806b3          	add	a3,a6,a4
    80007770:	0055c703          	lbu	a4,5(a1)
    80007774:	00178793          	addi	a5,a5,1
    80007778:	02077713          	andi	a4,a4,32
    8000777c:	fc071ae3          	bnez	a4,80007750 <uartintr+0x70>
    80007780:	01813083          	ld	ra,24(sp)
    80007784:	01013403          	ld	s0,16(sp)
    80007788:	00813483          	ld	s1,8(sp)
    8000778c:	02010113          	addi	sp,sp,32
    80007790:	00008067          	ret
    80007794:	00004617          	auipc	a2,0x4
    80007798:	32460613          	addi	a2,a2,804 # 8000bab8 <uart_tx_r>
    8000779c:	00004517          	auipc	a0,0x4
    800077a0:	32450513          	addi	a0,a0,804 # 8000bac0 <uart_tx_w>
    800077a4:	00063783          	ld	a5,0(a2)
    800077a8:	00053703          	ld	a4,0(a0)
    800077ac:	04f70263          	beq	a4,a5,800077f0 <uartintr+0x110>
    800077b0:	100005b7          	lui	a1,0x10000
    800077b4:	00005817          	auipc	a6,0x5
    800077b8:	56c80813          	addi	a6,a6,1388 # 8000cd20 <uart_tx_buf>
    800077bc:	01c0006f          	j	800077d8 <uartintr+0xf8>
    800077c0:	0006c703          	lbu	a4,0(a3)
    800077c4:	00f63023          	sd	a5,0(a2)
    800077c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077cc:	00063783          	ld	a5,0(a2)
    800077d0:	00053703          	ld	a4,0(a0)
    800077d4:	02f70063          	beq	a4,a5,800077f4 <uartintr+0x114>
    800077d8:	01f7f713          	andi	a4,a5,31
    800077dc:	00e806b3          	add	a3,a6,a4
    800077e0:	0055c703          	lbu	a4,5(a1)
    800077e4:	00178793          	addi	a5,a5,1
    800077e8:	02077713          	andi	a4,a4,32
    800077ec:	fc071ae3          	bnez	a4,800077c0 <uartintr+0xe0>
    800077f0:	00008067          	ret
    800077f4:	00008067          	ret

00000000800077f8 <kinit>:
    800077f8:	fc010113          	addi	sp,sp,-64
    800077fc:	02913423          	sd	s1,40(sp)
    80007800:	fffff7b7          	lui	a5,0xfffff
    80007804:	00006497          	auipc	s1,0x6
    80007808:	53b48493          	addi	s1,s1,1339 # 8000dd3f <end+0xfff>
    8000780c:	02813823          	sd	s0,48(sp)
    80007810:	01313c23          	sd	s3,24(sp)
    80007814:	00f4f4b3          	and	s1,s1,a5
    80007818:	02113c23          	sd	ra,56(sp)
    8000781c:	03213023          	sd	s2,32(sp)
    80007820:	01413823          	sd	s4,16(sp)
    80007824:	01513423          	sd	s5,8(sp)
    80007828:	04010413          	addi	s0,sp,64
    8000782c:	000017b7          	lui	a5,0x1
    80007830:	01100993          	li	s3,17
    80007834:	00f487b3          	add	a5,s1,a5
    80007838:	01b99993          	slli	s3,s3,0x1b
    8000783c:	06f9e063          	bltu	s3,a5,8000789c <kinit+0xa4>
    80007840:	00005a97          	auipc	s5,0x5
    80007844:	500a8a93          	addi	s5,s5,1280 # 8000cd40 <end>
    80007848:	0754ec63          	bltu	s1,s5,800078c0 <kinit+0xc8>
    8000784c:	0734fa63          	bgeu	s1,s3,800078c0 <kinit+0xc8>
    80007850:	00088a37          	lui	s4,0x88
    80007854:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007858:	00004917          	auipc	s2,0x4
    8000785c:	27090913          	addi	s2,s2,624 # 8000bac8 <kmem>
    80007860:	00ca1a13          	slli	s4,s4,0xc
    80007864:	0140006f          	j	80007878 <kinit+0x80>
    80007868:	000017b7          	lui	a5,0x1
    8000786c:	00f484b3          	add	s1,s1,a5
    80007870:	0554e863          	bltu	s1,s5,800078c0 <kinit+0xc8>
    80007874:	0534f663          	bgeu	s1,s3,800078c0 <kinit+0xc8>
    80007878:	00001637          	lui	a2,0x1
    8000787c:	00100593          	li	a1,1
    80007880:	00048513          	mv	a0,s1
    80007884:	00000097          	auipc	ra,0x0
    80007888:	5e4080e7          	jalr	1508(ra) # 80007e68 <__memset>
    8000788c:	00093783          	ld	a5,0(s2)
    80007890:	00f4b023          	sd	a5,0(s1)
    80007894:	00993023          	sd	s1,0(s2)
    80007898:	fd4498e3          	bne	s1,s4,80007868 <kinit+0x70>
    8000789c:	03813083          	ld	ra,56(sp)
    800078a0:	03013403          	ld	s0,48(sp)
    800078a4:	02813483          	ld	s1,40(sp)
    800078a8:	02013903          	ld	s2,32(sp)
    800078ac:	01813983          	ld	s3,24(sp)
    800078b0:	01013a03          	ld	s4,16(sp)
    800078b4:	00813a83          	ld	s5,8(sp)
    800078b8:	04010113          	addi	sp,sp,64
    800078bc:	00008067          	ret
    800078c0:	00002517          	auipc	a0,0x2
    800078c4:	4b850513          	addi	a0,a0,1208 # 80009d78 <digits+0x18>
    800078c8:	fffff097          	auipc	ra,0xfffff
    800078cc:	4b4080e7          	jalr	1204(ra) # 80006d7c <panic>

00000000800078d0 <freerange>:
    800078d0:	fc010113          	addi	sp,sp,-64
    800078d4:	000017b7          	lui	a5,0x1
    800078d8:	02913423          	sd	s1,40(sp)
    800078dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800078e0:	009504b3          	add	s1,a0,s1
    800078e4:	fffff537          	lui	a0,0xfffff
    800078e8:	02813823          	sd	s0,48(sp)
    800078ec:	02113c23          	sd	ra,56(sp)
    800078f0:	03213023          	sd	s2,32(sp)
    800078f4:	01313c23          	sd	s3,24(sp)
    800078f8:	01413823          	sd	s4,16(sp)
    800078fc:	01513423          	sd	s5,8(sp)
    80007900:	01613023          	sd	s6,0(sp)
    80007904:	04010413          	addi	s0,sp,64
    80007908:	00a4f4b3          	and	s1,s1,a0
    8000790c:	00f487b3          	add	a5,s1,a5
    80007910:	06f5e463          	bltu	a1,a5,80007978 <freerange+0xa8>
    80007914:	00005a97          	auipc	s5,0x5
    80007918:	42ca8a93          	addi	s5,s5,1068 # 8000cd40 <end>
    8000791c:	0954e263          	bltu	s1,s5,800079a0 <freerange+0xd0>
    80007920:	01100993          	li	s3,17
    80007924:	01b99993          	slli	s3,s3,0x1b
    80007928:	0734fc63          	bgeu	s1,s3,800079a0 <freerange+0xd0>
    8000792c:	00058a13          	mv	s4,a1
    80007930:	00004917          	auipc	s2,0x4
    80007934:	19890913          	addi	s2,s2,408 # 8000bac8 <kmem>
    80007938:	00002b37          	lui	s6,0x2
    8000793c:	0140006f          	j	80007950 <freerange+0x80>
    80007940:	000017b7          	lui	a5,0x1
    80007944:	00f484b3          	add	s1,s1,a5
    80007948:	0554ec63          	bltu	s1,s5,800079a0 <freerange+0xd0>
    8000794c:	0534fa63          	bgeu	s1,s3,800079a0 <freerange+0xd0>
    80007950:	00001637          	lui	a2,0x1
    80007954:	00100593          	li	a1,1
    80007958:	00048513          	mv	a0,s1
    8000795c:	00000097          	auipc	ra,0x0
    80007960:	50c080e7          	jalr	1292(ra) # 80007e68 <__memset>
    80007964:	00093703          	ld	a4,0(s2)
    80007968:	016487b3          	add	a5,s1,s6
    8000796c:	00e4b023          	sd	a4,0(s1)
    80007970:	00993023          	sd	s1,0(s2)
    80007974:	fcfa76e3          	bgeu	s4,a5,80007940 <freerange+0x70>
    80007978:	03813083          	ld	ra,56(sp)
    8000797c:	03013403          	ld	s0,48(sp)
    80007980:	02813483          	ld	s1,40(sp)
    80007984:	02013903          	ld	s2,32(sp)
    80007988:	01813983          	ld	s3,24(sp)
    8000798c:	01013a03          	ld	s4,16(sp)
    80007990:	00813a83          	ld	s5,8(sp)
    80007994:	00013b03          	ld	s6,0(sp)
    80007998:	04010113          	addi	sp,sp,64
    8000799c:	00008067          	ret
    800079a0:	00002517          	auipc	a0,0x2
    800079a4:	3d850513          	addi	a0,a0,984 # 80009d78 <digits+0x18>
    800079a8:	fffff097          	auipc	ra,0xfffff
    800079ac:	3d4080e7          	jalr	980(ra) # 80006d7c <panic>

00000000800079b0 <kfree>:
    800079b0:	fe010113          	addi	sp,sp,-32
    800079b4:	00813823          	sd	s0,16(sp)
    800079b8:	00113c23          	sd	ra,24(sp)
    800079bc:	00913423          	sd	s1,8(sp)
    800079c0:	02010413          	addi	s0,sp,32
    800079c4:	03451793          	slli	a5,a0,0x34
    800079c8:	04079c63          	bnez	a5,80007a20 <kfree+0x70>
    800079cc:	00005797          	auipc	a5,0x5
    800079d0:	37478793          	addi	a5,a5,884 # 8000cd40 <end>
    800079d4:	00050493          	mv	s1,a0
    800079d8:	04f56463          	bltu	a0,a5,80007a20 <kfree+0x70>
    800079dc:	01100793          	li	a5,17
    800079e0:	01b79793          	slli	a5,a5,0x1b
    800079e4:	02f57e63          	bgeu	a0,a5,80007a20 <kfree+0x70>
    800079e8:	00001637          	lui	a2,0x1
    800079ec:	00100593          	li	a1,1
    800079f0:	00000097          	auipc	ra,0x0
    800079f4:	478080e7          	jalr	1144(ra) # 80007e68 <__memset>
    800079f8:	00004797          	auipc	a5,0x4
    800079fc:	0d078793          	addi	a5,a5,208 # 8000bac8 <kmem>
    80007a00:	0007b703          	ld	a4,0(a5)
    80007a04:	01813083          	ld	ra,24(sp)
    80007a08:	01013403          	ld	s0,16(sp)
    80007a0c:	00e4b023          	sd	a4,0(s1)
    80007a10:	0097b023          	sd	s1,0(a5)
    80007a14:	00813483          	ld	s1,8(sp)
    80007a18:	02010113          	addi	sp,sp,32
    80007a1c:	00008067          	ret
    80007a20:	00002517          	auipc	a0,0x2
    80007a24:	35850513          	addi	a0,a0,856 # 80009d78 <digits+0x18>
    80007a28:	fffff097          	auipc	ra,0xfffff
    80007a2c:	354080e7          	jalr	852(ra) # 80006d7c <panic>

0000000080007a30 <kalloc>:
    80007a30:	fe010113          	addi	sp,sp,-32
    80007a34:	00813823          	sd	s0,16(sp)
    80007a38:	00913423          	sd	s1,8(sp)
    80007a3c:	00113c23          	sd	ra,24(sp)
    80007a40:	02010413          	addi	s0,sp,32
    80007a44:	00004797          	auipc	a5,0x4
    80007a48:	08478793          	addi	a5,a5,132 # 8000bac8 <kmem>
    80007a4c:	0007b483          	ld	s1,0(a5)
    80007a50:	02048063          	beqz	s1,80007a70 <kalloc+0x40>
    80007a54:	0004b703          	ld	a4,0(s1)
    80007a58:	00001637          	lui	a2,0x1
    80007a5c:	00500593          	li	a1,5
    80007a60:	00048513          	mv	a0,s1
    80007a64:	00e7b023          	sd	a4,0(a5)
    80007a68:	00000097          	auipc	ra,0x0
    80007a6c:	400080e7          	jalr	1024(ra) # 80007e68 <__memset>
    80007a70:	01813083          	ld	ra,24(sp)
    80007a74:	01013403          	ld	s0,16(sp)
    80007a78:	00048513          	mv	a0,s1
    80007a7c:	00813483          	ld	s1,8(sp)
    80007a80:	02010113          	addi	sp,sp,32
    80007a84:	00008067          	ret

0000000080007a88 <initlock>:
    80007a88:	ff010113          	addi	sp,sp,-16
    80007a8c:	00813423          	sd	s0,8(sp)
    80007a90:	01010413          	addi	s0,sp,16
    80007a94:	00813403          	ld	s0,8(sp)
    80007a98:	00b53423          	sd	a1,8(a0)
    80007a9c:	00052023          	sw	zero,0(a0)
    80007aa0:	00053823          	sd	zero,16(a0)
    80007aa4:	01010113          	addi	sp,sp,16
    80007aa8:	00008067          	ret

0000000080007aac <acquire>:
    80007aac:	fe010113          	addi	sp,sp,-32
    80007ab0:	00813823          	sd	s0,16(sp)
    80007ab4:	00913423          	sd	s1,8(sp)
    80007ab8:	00113c23          	sd	ra,24(sp)
    80007abc:	01213023          	sd	s2,0(sp)
    80007ac0:	02010413          	addi	s0,sp,32
    80007ac4:	00050493          	mv	s1,a0
    80007ac8:	10002973          	csrr	s2,sstatus
    80007acc:	100027f3          	csrr	a5,sstatus
    80007ad0:	ffd7f793          	andi	a5,a5,-3
    80007ad4:	10079073          	csrw	sstatus,a5
    80007ad8:	fffff097          	auipc	ra,0xfffff
    80007adc:	8ec080e7          	jalr	-1812(ra) # 800063c4 <mycpu>
    80007ae0:	07852783          	lw	a5,120(a0)
    80007ae4:	06078e63          	beqz	a5,80007b60 <acquire+0xb4>
    80007ae8:	fffff097          	auipc	ra,0xfffff
    80007aec:	8dc080e7          	jalr	-1828(ra) # 800063c4 <mycpu>
    80007af0:	07852783          	lw	a5,120(a0)
    80007af4:	0004a703          	lw	a4,0(s1)
    80007af8:	0017879b          	addiw	a5,a5,1
    80007afc:	06f52c23          	sw	a5,120(a0)
    80007b00:	04071063          	bnez	a4,80007b40 <acquire+0x94>
    80007b04:	00100713          	li	a4,1
    80007b08:	00070793          	mv	a5,a4
    80007b0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007b10:	0007879b          	sext.w	a5,a5
    80007b14:	fe079ae3          	bnez	a5,80007b08 <acquire+0x5c>
    80007b18:	0ff0000f          	fence
    80007b1c:	fffff097          	auipc	ra,0xfffff
    80007b20:	8a8080e7          	jalr	-1880(ra) # 800063c4 <mycpu>
    80007b24:	01813083          	ld	ra,24(sp)
    80007b28:	01013403          	ld	s0,16(sp)
    80007b2c:	00a4b823          	sd	a0,16(s1)
    80007b30:	00013903          	ld	s2,0(sp)
    80007b34:	00813483          	ld	s1,8(sp)
    80007b38:	02010113          	addi	sp,sp,32
    80007b3c:	00008067          	ret
    80007b40:	0104b903          	ld	s2,16(s1)
    80007b44:	fffff097          	auipc	ra,0xfffff
    80007b48:	880080e7          	jalr	-1920(ra) # 800063c4 <mycpu>
    80007b4c:	faa91ce3          	bne	s2,a0,80007b04 <acquire+0x58>
    80007b50:	00002517          	auipc	a0,0x2
    80007b54:	23050513          	addi	a0,a0,560 # 80009d80 <digits+0x20>
    80007b58:	fffff097          	auipc	ra,0xfffff
    80007b5c:	224080e7          	jalr	548(ra) # 80006d7c <panic>
    80007b60:	00195913          	srli	s2,s2,0x1
    80007b64:	fffff097          	auipc	ra,0xfffff
    80007b68:	860080e7          	jalr	-1952(ra) # 800063c4 <mycpu>
    80007b6c:	00197913          	andi	s2,s2,1
    80007b70:	07252e23          	sw	s2,124(a0)
    80007b74:	f75ff06f          	j	80007ae8 <acquire+0x3c>

0000000080007b78 <release>:
    80007b78:	fe010113          	addi	sp,sp,-32
    80007b7c:	00813823          	sd	s0,16(sp)
    80007b80:	00113c23          	sd	ra,24(sp)
    80007b84:	00913423          	sd	s1,8(sp)
    80007b88:	01213023          	sd	s2,0(sp)
    80007b8c:	02010413          	addi	s0,sp,32
    80007b90:	00052783          	lw	a5,0(a0)
    80007b94:	00079a63          	bnez	a5,80007ba8 <release+0x30>
    80007b98:	00002517          	auipc	a0,0x2
    80007b9c:	1f050513          	addi	a0,a0,496 # 80009d88 <digits+0x28>
    80007ba0:	fffff097          	auipc	ra,0xfffff
    80007ba4:	1dc080e7          	jalr	476(ra) # 80006d7c <panic>
    80007ba8:	01053903          	ld	s2,16(a0)
    80007bac:	00050493          	mv	s1,a0
    80007bb0:	fffff097          	auipc	ra,0xfffff
    80007bb4:	814080e7          	jalr	-2028(ra) # 800063c4 <mycpu>
    80007bb8:	fea910e3          	bne	s2,a0,80007b98 <release+0x20>
    80007bbc:	0004b823          	sd	zero,16(s1)
    80007bc0:	0ff0000f          	fence
    80007bc4:	0f50000f          	fence	iorw,ow
    80007bc8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007bcc:	ffffe097          	auipc	ra,0xffffe
    80007bd0:	7f8080e7          	jalr	2040(ra) # 800063c4 <mycpu>
    80007bd4:	100027f3          	csrr	a5,sstatus
    80007bd8:	0027f793          	andi	a5,a5,2
    80007bdc:	04079a63          	bnez	a5,80007c30 <release+0xb8>
    80007be0:	07852783          	lw	a5,120(a0)
    80007be4:	02f05e63          	blez	a5,80007c20 <release+0xa8>
    80007be8:	fff7871b          	addiw	a4,a5,-1
    80007bec:	06e52c23          	sw	a4,120(a0)
    80007bf0:	00071c63          	bnez	a4,80007c08 <release+0x90>
    80007bf4:	07c52783          	lw	a5,124(a0)
    80007bf8:	00078863          	beqz	a5,80007c08 <release+0x90>
    80007bfc:	100027f3          	csrr	a5,sstatus
    80007c00:	0027e793          	ori	a5,a5,2
    80007c04:	10079073          	csrw	sstatus,a5
    80007c08:	01813083          	ld	ra,24(sp)
    80007c0c:	01013403          	ld	s0,16(sp)
    80007c10:	00813483          	ld	s1,8(sp)
    80007c14:	00013903          	ld	s2,0(sp)
    80007c18:	02010113          	addi	sp,sp,32
    80007c1c:	00008067          	ret
    80007c20:	00002517          	auipc	a0,0x2
    80007c24:	18850513          	addi	a0,a0,392 # 80009da8 <digits+0x48>
    80007c28:	fffff097          	auipc	ra,0xfffff
    80007c2c:	154080e7          	jalr	340(ra) # 80006d7c <panic>
    80007c30:	00002517          	auipc	a0,0x2
    80007c34:	16050513          	addi	a0,a0,352 # 80009d90 <digits+0x30>
    80007c38:	fffff097          	auipc	ra,0xfffff
    80007c3c:	144080e7          	jalr	324(ra) # 80006d7c <panic>

0000000080007c40 <holding>:
    80007c40:	00052783          	lw	a5,0(a0)
    80007c44:	00079663          	bnez	a5,80007c50 <holding+0x10>
    80007c48:	00000513          	li	a0,0
    80007c4c:	00008067          	ret
    80007c50:	fe010113          	addi	sp,sp,-32
    80007c54:	00813823          	sd	s0,16(sp)
    80007c58:	00913423          	sd	s1,8(sp)
    80007c5c:	00113c23          	sd	ra,24(sp)
    80007c60:	02010413          	addi	s0,sp,32
    80007c64:	01053483          	ld	s1,16(a0)
    80007c68:	ffffe097          	auipc	ra,0xffffe
    80007c6c:	75c080e7          	jalr	1884(ra) # 800063c4 <mycpu>
    80007c70:	01813083          	ld	ra,24(sp)
    80007c74:	01013403          	ld	s0,16(sp)
    80007c78:	40a48533          	sub	a0,s1,a0
    80007c7c:	00153513          	seqz	a0,a0
    80007c80:	00813483          	ld	s1,8(sp)
    80007c84:	02010113          	addi	sp,sp,32
    80007c88:	00008067          	ret

0000000080007c8c <push_off>:
    80007c8c:	fe010113          	addi	sp,sp,-32
    80007c90:	00813823          	sd	s0,16(sp)
    80007c94:	00113c23          	sd	ra,24(sp)
    80007c98:	00913423          	sd	s1,8(sp)
    80007c9c:	02010413          	addi	s0,sp,32
    80007ca0:	100024f3          	csrr	s1,sstatus
    80007ca4:	100027f3          	csrr	a5,sstatus
    80007ca8:	ffd7f793          	andi	a5,a5,-3
    80007cac:	10079073          	csrw	sstatus,a5
    80007cb0:	ffffe097          	auipc	ra,0xffffe
    80007cb4:	714080e7          	jalr	1812(ra) # 800063c4 <mycpu>
    80007cb8:	07852783          	lw	a5,120(a0)
    80007cbc:	02078663          	beqz	a5,80007ce8 <push_off+0x5c>
    80007cc0:	ffffe097          	auipc	ra,0xffffe
    80007cc4:	704080e7          	jalr	1796(ra) # 800063c4 <mycpu>
    80007cc8:	07852783          	lw	a5,120(a0)
    80007ccc:	01813083          	ld	ra,24(sp)
    80007cd0:	01013403          	ld	s0,16(sp)
    80007cd4:	0017879b          	addiw	a5,a5,1
    80007cd8:	06f52c23          	sw	a5,120(a0)
    80007cdc:	00813483          	ld	s1,8(sp)
    80007ce0:	02010113          	addi	sp,sp,32
    80007ce4:	00008067          	ret
    80007ce8:	0014d493          	srli	s1,s1,0x1
    80007cec:	ffffe097          	auipc	ra,0xffffe
    80007cf0:	6d8080e7          	jalr	1752(ra) # 800063c4 <mycpu>
    80007cf4:	0014f493          	andi	s1,s1,1
    80007cf8:	06952e23          	sw	s1,124(a0)
    80007cfc:	fc5ff06f          	j	80007cc0 <push_off+0x34>

0000000080007d00 <pop_off>:
    80007d00:	ff010113          	addi	sp,sp,-16
    80007d04:	00813023          	sd	s0,0(sp)
    80007d08:	00113423          	sd	ra,8(sp)
    80007d0c:	01010413          	addi	s0,sp,16
    80007d10:	ffffe097          	auipc	ra,0xffffe
    80007d14:	6b4080e7          	jalr	1716(ra) # 800063c4 <mycpu>
    80007d18:	100027f3          	csrr	a5,sstatus
    80007d1c:	0027f793          	andi	a5,a5,2
    80007d20:	04079663          	bnez	a5,80007d6c <pop_off+0x6c>
    80007d24:	07852783          	lw	a5,120(a0)
    80007d28:	02f05a63          	blez	a5,80007d5c <pop_off+0x5c>
    80007d2c:	fff7871b          	addiw	a4,a5,-1
    80007d30:	06e52c23          	sw	a4,120(a0)
    80007d34:	00071c63          	bnez	a4,80007d4c <pop_off+0x4c>
    80007d38:	07c52783          	lw	a5,124(a0)
    80007d3c:	00078863          	beqz	a5,80007d4c <pop_off+0x4c>
    80007d40:	100027f3          	csrr	a5,sstatus
    80007d44:	0027e793          	ori	a5,a5,2
    80007d48:	10079073          	csrw	sstatus,a5
    80007d4c:	00813083          	ld	ra,8(sp)
    80007d50:	00013403          	ld	s0,0(sp)
    80007d54:	01010113          	addi	sp,sp,16
    80007d58:	00008067          	ret
    80007d5c:	00002517          	auipc	a0,0x2
    80007d60:	04c50513          	addi	a0,a0,76 # 80009da8 <digits+0x48>
    80007d64:	fffff097          	auipc	ra,0xfffff
    80007d68:	018080e7          	jalr	24(ra) # 80006d7c <panic>
    80007d6c:	00002517          	auipc	a0,0x2
    80007d70:	02450513          	addi	a0,a0,36 # 80009d90 <digits+0x30>
    80007d74:	fffff097          	auipc	ra,0xfffff
    80007d78:	008080e7          	jalr	8(ra) # 80006d7c <panic>

0000000080007d7c <push_on>:
    80007d7c:	fe010113          	addi	sp,sp,-32
    80007d80:	00813823          	sd	s0,16(sp)
    80007d84:	00113c23          	sd	ra,24(sp)
    80007d88:	00913423          	sd	s1,8(sp)
    80007d8c:	02010413          	addi	s0,sp,32
    80007d90:	100024f3          	csrr	s1,sstatus
    80007d94:	100027f3          	csrr	a5,sstatus
    80007d98:	0027e793          	ori	a5,a5,2
    80007d9c:	10079073          	csrw	sstatus,a5
    80007da0:	ffffe097          	auipc	ra,0xffffe
    80007da4:	624080e7          	jalr	1572(ra) # 800063c4 <mycpu>
    80007da8:	07852783          	lw	a5,120(a0)
    80007dac:	02078663          	beqz	a5,80007dd8 <push_on+0x5c>
    80007db0:	ffffe097          	auipc	ra,0xffffe
    80007db4:	614080e7          	jalr	1556(ra) # 800063c4 <mycpu>
    80007db8:	07852783          	lw	a5,120(a0)
    80007dbc:	01813083          	ld	ra,24(sp)
    80007dc0:	01013403          	ld	s0,16(sp)
    80007dc4:	0017879b          	addiw	a5,a5,1
    80007dc8:	06f52c23          	sw	a5,120(a0)
    80007dcc:	00813483          	ld	s1,8(sp)
    80007dd0:	02010113          	addi	sp,sp,32
    80007dd4:	00008067          	ret
    80007dd8:	0014d493          	srli	s1,s1,0x1
    80007ddc:	ffffe097          	auipc	ra,0xffffe
    80007de0:	5e8080e7          	jalr	1512(ra) # 800063c4 <mycpu>
    80007de4:	0014f493          	andi	s1,s1,1
    80007de8:	06952e23          	sw	s1,124(a0)
    80007dec:	fc5ff06f          	j	80007db0 <push_on+0x34>

0000000080007df0 <pop_on>:
    80007df0:	ff010113          	addi	sp,sp,-16
    80007df4:	00813023          	sd	s0,0(sp)
    80007df8:	00113423          	sd	ra,8(sp)
    80007dfc:	01010413          	addi	s0,sp,16
    80007e00:	ffffe097          	auipc	ra,0xffffe
    80007e04:	5c4080e7          	jalr	1476(ra) # 800063c4 <mycpu>
    80007e08:	100027f3          	csrr	a5,sstatus
    80007e0c:	0027f793          	andi	a5,a5,2
    80007e10:	04078463          	beqz	a5,80007e58 <pop_on+0x68>
    80007e14:	07852783          	lw	a5,120(a0)
    80007e18:	02f05863          	blez	a5,80007e48 <pop_on+0x58>
    80007e1c:	fff7879b          	addiw	a5,a5,-1
    80007e20:	06f52c23          	sw	a5,120(a0)
    80007e24:	07853783          	ld	a5,120(a0)
    80007e28:	00079863          	bnez	a5,80007e38 <pop_on+0x48>
    80007e2c:	100027f3          	csrr	a5,sstatus
    80007e30:	ffd7f793          	andi	a5,a5,-3
    80007e34:	10079073          	csrw	sstatus,a5
    80007e38:	00813083          	ld	ra,8(sp)
    80007e3c:	00013403          	ld	s0,0(sp)
    80007e40:	01010113          	addi	sp,sp,16
    80007e44:	00008067          	ret
    80007e48:	00002517          	auipc	a0,0x2
    80007e4c:	f8850513          	addi	a0,a0,-120 # 80009dd0 <digits+0x70>
    80007e50:	fffff097          	auipc	ra,0xfffff
    80007e54:	f2c080e7          	jalr	-212(ra) # 80006d7c <panic>
    80007e58:	00002517          	auipc	a0,0x2
    80007e5c:	f5850513          	addi	a0,a0,-168 # 80009db0 <digits+0x50>
    80007e60:	fffff097          	auipc	ra,0xfffff
    80007e64:	f1c080e7          	jalr	-228(ra) # 80006d7c <panic>

0000000080007e68 <__memset>:
    80007e68:	ff010113          	addi	sp,sp,-16
    80007e6c:	00813423          	sd	s0,8(sp)
    80007e70:	01010413          	addi	s0,sp,16
    80007e74:	1a060e63          	beqz	a2,80008030 <__memset+0x1c8>
    80007e78:	40a007b3          	neg	a5,a0
    80007e7c:	0077f793          	andi	a5,a5,7
    80007e80:	00778693          	addi	a3,a5,7
    80007e84:	00b00813          	li	a6,11
    80007e88:	0ff5f593          	andi	a1,a1,255
    80007e8c:	fff6071b          	addiw	a4,a2,-1
    80007e90:	1b06e663          	bltu	a3,a6,8000803c <__memset+0x1d4>
    80007e94:	1cd76463          	bltu	a4,a3,8000805c <__memset+0x1f4>
    80007e98:	1a078e63          	beqz	a5,80008054 <__memset+0x1ec>
    80007e9c:	00b50023          	sb	a1,0(a0)
    80007ea0:	00100713          	li	a4,1
    80007ea4:	1ae78463          	beq	a5,a4,8000804c <__memset+0x1e4>
    80007ea8:	00b500a3          	sb	a1,1(a0)
    80007eac:	00200713          	li	a4,2
    80007eb0:	1ae78a63          	beq	a5,a4,80008064 <__memset+0x1fc>
    80007eb4:	00b50123          	sb	a1,2(a0)
    80007eb8:	00300713          	li	a4,3
    80007ebc:	18e78463          	beq	a5,a4,80008044 <__memset+0x1dc>
    80007ec0:	00b501a3          	sb	a1,3(a0)
    80007ec4:	00400713          	li	a4,4
    80007ec8:	1ae78263          	beq	a5,a4,8000806c <__memset+0x204>
    80007ecc:	00b50223          	sb	a1,4(a0)
    80007ed0:	00500713          	li	a4,5
    80007ed4:	1ae78063          	beq	a5,a4,80008074 <__memset+0x20c>
    80007ed8:	00b502a3          	sb	a1,5(a0)
    80007edc:	00700713          	li	a4,7
    80007ee0:	18e79e63          	bne	a5,a4,8000807c <__memset+0x214>
    80007ee4:	00b50323          	sb	a1,6(a0)
    80007ee8:	00700e93          	li	t4,7
    80007eec:	00859713          	slli	a4,a1,0x8
    80007ef0:	00e5e733          	or	a4,a1,a4
    80007ef4:	01059e13          	slli	t3,a1,0x10
    80007ef8:	01c76e33          	or	t3,a4,t3
    80007efc:	01859313          	slli	t1,a1,0x18
    80007f00:	006e6333          	or	t1,t3,t1
    80007f04:	02059893          	slli	a7,a1,0x20
    80007f08:	40f60e3b          	subw	t3,a2,a5
    80007f0c:	011368b3          	or	a7,t1,a7
    80007f10:	02859813          	slli	a6,a1,0x28
    80007f14:	0108e833          	or	a6,a7,a6
    80007f18:	03059693          	slli	a3,a1,0x30
    80007f1c:	003e589b          	srliw	a7,t3,0x3
    80007f20:	00d866b3          	or	a3,a6,a3
    80007f24:	03859713          	slli	a4,a1,0x38
    80007f28:	00389813          	slli	a6,a7,0x3
    80007f2c:	00f507b3          	add	a5,a0,a5
    80007f30:	00e6e733          	or	a4,a3,a4
    80007f34:	000e089b          	sext.w	a7,t3
    80007f38:	00f806b3          	add	a3,a6,a5
    80007f3c:	00e7b023          	sd	a4,0(a5)
    80007f40:	00878793          	addi	a5,a5,8
    80007f44:	fed79ce3          	bne	a5,a3,80007f3c <__memset+0xd4>
    80007f48:	ff8e7793          	andi	a5,t3,-8
    80007f4c:	0007871b          	sext.w	a4,a5
    80007f50:	01d787bb          	addw	a5,a5,t4
    80007f54:	0ce88e63          	beq	a7,a4,80008030 <__memset+0x1c8>
    80007f58:	00f50733          	add	a4,a0,a5
    80007f5c:	00b70023          	sb	a1,0(a4)
    80007f60:	0017871b          	addiw	a4,a5,1
    80007f64:	0cc77663          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007f68:	00e50733          	add	a4,a0,a4
    80007f6c:	00b70023          	sb	a1,0(a4)
    80007f70:	0027871b          	addiw	a4,a5,2
    80007f74:	0ac77e63          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007f78:	00e50733          	add	a4,a0,a4
    80007f7c:	00b70023          	sb	a1,0(a4)
    80007f80:	0037871b          	addiw	a4,a5,3
    80007f84:	0ac77663          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007f88:	00e50733          	add	a4,a0,a4
    80007f8c:	00b70023          	sb	a1,0(a4)
    80007f90:	0047871b          	addiw	a4,a5,4
    80007f94:	08c77e63          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007f98:	00e50733          	add	a4,a0,a4
    80007f9c:	00b70023          	sb	a1,0(a4)
    80007fa0:	0057871b          	addiw	a4,a5,5
    80007fa4:	08c77663          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007fa8:	00e50733          	add	a4,a0,a4
    80007fac:	00b70023          	sb	a1,0(a4)
    80007fb0:	0067871b          	addiw	a4,a5,6
    80007fb4:	06c77e63          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007fb8:	00e50733          	add	a4,a0,a4
    80007fbc:	00b70023          	sb	a1,0(a4)
    80007fc0:	0077871b          	addiw	a4,a5,7
    80007fc4:	06c77663          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007fc8:	00e50733          	add	a4,a0,a4
    80007fcc:	00b70023          	sb	a1,0(a4)
    80007fd0:	0087871b          	addiw	a4,a5,8
    80007fd4:	04c77e63          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007fd8:	00e50733          	add	a4,a0,a4
    80007fdc:	00b70023          	sb	a1,0(a4)
    80007fe0:	0097871b          	addiw	a4,a5,9
    80007fe4:	04c77663          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007fe8:	00e50733          	add	a4,a0,a4
    80007fec:	00b70023          	sb	a1,0(a4)
    80007ff0:	00a7871b          	addiw	a4,a5,10
    80007ff4:	02c77e63          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80007ff8:	00e50733          	add	a4,a0,a4
    80007ffc:	00b70023          	sb	a1,0(a4)
    80008000:	00b7871b          	addiw	a4,a5,11
    80008004:	02c77663          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80008008:	00e50733          	add	a4,a0,a4
    8000800c:	00b70023          	sb	a1,0(a4)
    80008010:	00c7871b          	addiw	a4,a5,12
    80008014:	00c77e63          	bgeu	a4,a2,80008030 <__memset+0x1c8>
    80008018:	00e50733          	add	a4,a0,a4
    8000801c:	00b70023          	sb	a1,0(a4)
    80008020:	00d7879b          	addiw	a5,a5,13
    80008024:	00c7f663          	bgeu	a5,a2,80008030 <__memset+0x1c8>
    80008028:	00f507b3          	add	a5,a0,a5
    8000802c:	00b78023          	sb	a1,0(a5)
    80008030:	00813403          	ld	s0,8(sp)
    80008034:	01010113          	addi	sp,sp,16
    80008038:	00008067          	ret
    8000803c:	00b00693          	li	a3,11
    80008040:	e55ff06f          	j	80007e94 <__memset+0x2c>
    80008044:	00300e93          	li	t4,3
    80008048:	ea5ff06f          	j	80007eec <__memset+0x84>
    8000804c:	00100e93          	li	t4,1
    80008050:	e9dff06f          	j	80007eec <__memset+0x84>
    80008054:	00000e93          	li	t4,0
    80008058:	e95ff06f          	j	80007eec <__memset+0x84>
    8000805c:	00000793          	li	a5,0
    80008060:	ef9ff06f          	j	80007f58 <__memset+0xf0>
    80008064:	00200e93          	li	t4,2
    80008068:	e85ff06f          	j	80007eec <__memset+0x84>
    8000806c:	00400e93          	li	t4,4
    80008070:	e7dff06f          	j	80007eec <__memset+0x84>
    80008074:	00500e93          	li	t4,5
    80008078:	e75ff06f          	j	80007eec <__memset+0x84>
    8000807c:	00600e93          	li	t4,6
    80008080:	e6dff06f          	j	80007eec <__memset+0x84>

0000000080008084 <__memmove>:
    80008084:	ff010113          	addi	sp,sp,-16
    80008088:	00813423          	sd	s0,8(sp)
    8000808c:	01010413          	addi	s0,sp,16
    80008090:	0e060863          	beqz	a2,80008180 <__memmove+0xfc>
    80008094:	fff6069b          	addiw	a3,a2,-1
    80008098:	0006881b          	sext.w	a6,a3
    8000809c:	0ea5e863          	bltu	a1,a0,8000818c <__memmove+0x108>
    800080a0:	00758713          	addi	a4,a1,7
    800080a4:	00a5e7b3          	or	a5,a1,a0
    800080a8:	40a70733          	sub	a4,a4,a0
    800080ac:	0077f793          	andi	a5,a5,7
    800080b0:	00f73713          	sltiu	a4,a4,15
    800080b4:	00174713          	xori	a4,a4,1
    800080b8:	0017b793          	seqz	a5,a5
    800080bc:	00e7f7b3          	and	a5,a5,a4
    800080c0:	10078863          	beqz	a5,800081d0 <__memmove+0x14c>
    800080c4:	00900793          	li	a5,9
    800080c8:	1107f463          	bgeu	a5,a6,800081d0 <__memmove+0x14c>
    800080cc:	0036581b          	srliw	a6,a2,0x3
    800080d0:	fff8081b          	addiw	a6,a6,-1
    800080d4:	02081813          	slli	a6,a6,0x20
    800080d8:	01d85893          	srli	a7,a6,0x1d
    800080dc:	00858813          	addi	a6,a1,8
    800080e0:	00058793          	mv	a5,a1
    800080e4:	00050713          	mv	a4,a0
    800080e8:	01088833          	add	a6,a7,a6
    800080ec:	0007b883          	ld	a7,0(a5)
    800080f0:	00878793          	addi	a5,a5,8
    800080f4:	00870713          	addi	a4,a4,8
    800080f8:	ff173c23          	sd	a7,-8(a4)
    800080fc:	ff0798e3          	bne	a5,a6,800080ec <__memmove+0x68>
    80008100:	ff867713          	andi	a4,a2,-8
    80008104:	02071793          	slli	a5,a4,0x20
    80008108:	0207d793          	srli	a5,a5,0x20
    8000810c:	00f585b3          	add	a1,a1,a5
    80008110:	40e686bb          	subw	a3,a3,a4
    80008114:	00f507b3          	add	a5,a0,a5
    80008118:	06e60463          	beq	a2,a4,80008180 <__memmove+0xfc>
    8000811c:	0005c703          	lbu	a4,0(a1)
    80008120:	00e78023          	sb	a4,0(a5)
    80008124:	04068e63          	beqz	a3,80008180 <__memmove+0xfc>
    80008128:	0015c603          	lbu	a2,1(a1)
    8000812c:	00100713          	li	a4,1
    80008130:	00c780a3          	sb	a2,1(a5)
    80008134:	04e68663          	beq	a3,a4,80008180 <__memmove+0xfc>
    80008138:	0025c603          	lbu	a2,2(a1)
    8000813c:	00200713          	li	a4,2
    80008140:	00c78123          	sb	a2,2(a5)
    80008144:	02e68e63          	beq	a3,a4,80008180 <__memmove+0xfc>
    80008148:	0035c603          	lbu	a2,3(a1)
    8000814c:	00300713          	li	a4,3
    80008150:	00c781a3          	sb	a2,3(a5)
    80008154:	02e68663          	beq	a3,a4,80008180 <__memmove+0xfc>
    80008158:	0045c603          	lbu	a2,4(a1)
    8000815c:	00400713          	li	a4,4
    80008160:	00c78223          	sb	a2,4(a5)
    80008164:	00e68e63          	beq	a3,a4,80008180 <__memmove+0xfc>
    80008168:	0055c603          	lbu	a2,5(a1)
    8000816c:	00500713          	li	a4,5
    80008170:	00c782a3          	sb	a2,5(a5)
    80008174:	00e68663          	beq	a3,a4,80008180 <__memmove+0xfc>
    80008178:	0065c703          	lbu	a4,6(a1)
    8000817c:	00e78323          	sb	a4,6(a5)
    80008180:	00813403          	ld	s0,8(sp)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret
    8000818c:	02061713          	slli	a4,a2,0x20
    80008190:	02075713          	srli	a4,a4,0x20
    80008194:	00e587b3          	add	a5,a1,a4
    80008198:	f0f574e3          	bgeu	a0,a5,800080a0 <__memmove+0x1c>
    8000819c:	02069613          	slli	a2,a3,0x20
    800081a0:	02065613          	srli	a2,a2,0x20
    800081a4:	fff64613          	not	a2,a2
    800081a8:	00e50733          	add	a4,a0,a4
    800081ac:	00c78633          	add	a2,a5,a2
    800081b0:	fff7c683          	lbu	a3,-1(a5)
    800081b4:	fff78793          	addi	a5,a5,-1
    800081b8:	fff70713          	addi	a4,a4,-1
    800081bc:	00d70023          	sb	a3,0(a4)
    800081c0:	fec798e3          	bne	a5,a2,800081b0 <__memmove+0x12c>
    800081c4:	00813403          	ld	s0,8(sp)
    800081c8:	01010113          	addi	sp,sp,16
    800081cc:	00008067          	ret
    800081d0:	02069713          	slli	a4,a3,0x20
    800081d4:	02075713          	srli	a4,a4,0x20
    800081d8:	00170713          	addi	a4,a4,1
    800081dc:	00e50733          	add	a4,a0,a4
    800081e0:	00050793          	mv	a5,a0
    800081e4:	0005c683          	lbu	a3,0(a1)
    800081e8:	00178793          	addi	a5,a5,1
    800081ec:	00158593          	addi	a1,a1,1
    800081f0:	fed78fa3          	sb	a3,-1(a5)
    800081f4:	fee798e3          	bne	a5,a4,800081e4 <__memmove+0x160>
    800081f8:	f89ff06f          	j	80008180 <__memmove+0xfc>

00000000800081fc <__putc>:
    800081fc:	fe010113          	addi	sp,sp,-32
    80008200:	00813823          	sd	s0,16(sp)
    80008204:	00113c23          	sd	ra,24(sp)
    80008208:	02010413          	addi	s0,sp,32
    8000820c:	00050793          	mv	a5,a0
    80008210:	fef40593          	addi	a1,s0,-17
    80008214:	00100613          	li	a2,1
    80008218:	00000513          	li	a0,0
    8000821c:	fef407a3          	sb	a5,-17(s0)
    80008220:	fffff097          	auipc	ra,0xfffff
    80008224:	b3c080e7          	jalr	-1220(ra) # 80006d5c <console_write>
    80008228:	01813083          	ld	ra,24(sp)
    8000822c:	01013403          	ld	s0,16(sp)
    80008230:	02010113          	addi	sp,sp,32
    80008234:	00008067          	ret

0000000080008238 <__getc>:
    80008238:	fe010113          	addi	sp,sp,-32
    8000823c:	00813823          	sd	s0,16(sp)
    80008240:	00113c23          	sd	ra,24(sp)
    80008244:	02010413          	addi	s0,sp,32
    80008248:	fe840593          	addi	a1,s0,-24
    8000824c:	00100613          	li	a2,1
    80008250:	00000513          	li	a0,0
    80008254:	fffff097          	auipc	ra,0xfffff
    80008258:	ae8080e7          	jalr	-1304(ra) # 80006d3c <console_read>
    8000825c:	fe844503          	lbu	a0,-24(s0)
    80008260:	01813083          	ld	ra,24(sp)
    80008264:	01013403          	ld	s0,16(sp)
    80008268:	02010113          	addi	sp,sp,32
    8000826c:	00008067          	ret

0000000080008270 <console_handler>:
    80008270:	fe010113          	addi	sp,sp,-32
    80008274:	00813823          	sd	s0,16(sp)
    80008278:	00113c23          	sd	ra,24(sp)
    8000827c:	00913423          	sd	s1,8(sp)
    80008280:	02010413          	addi	s0,sp,32
    80008284:	14202773          	csrr	a4,scause
    80008288:	100027f3          	csrr	a5,sstatus
    8000828c:	0027f793          	andi	a5,a5,2
    80008290:	06079e63          	bnez	a5,8000830c <console_handler+0x9c>
    80008294:	00074c63          	bltz	a4,800082ac <console_handler+0x3c>
    80008298:	01813083          	ld	ra,24(sp)
    8000829c:	01013403          	ld	s0,16(sp)
    800082a0:	00813483          	ld	s1,8(sp)
    800082a4:	02010113          	addi	sp,sp,32
    800082a8:	00008067          	ret
    800082ac:	0ff77713          	andi	a4,a4,255
    800082b0:	00900793          	li	a5,9
    800082b4:	fef712e3          	bne	a4,a5,80008298 <console_handler+0x28>
    800082b8:	ffffe097          	auipc	ra,0xffffe
    800082bc:	6dc080e7          	jalr	1756(ra) # 80006994 <plic_claim>
    800082c0:	00a00793          	li	a5,10
    800082c4:	00050493          	mv	s1,a0
    800082c8:	02f50c63          	beq	a0,a5,80008300 <console_handler+0x90>
    800082cc:	fc0506e3          	beqz	a0,80008298 <console_handler+0x28>
    800082d0:	00050593          	mv	a1,a0
    800082d4:	00002517          	auipc	a0,0x2
    800082d8:	a0450513          	addi	a0,a0,-1532 # 80009cd8 <_ZTV12ConsumerSync+0x108>
    800082dc:	fffff097          	auipc	ra,0xfffff
    800082e0:	afc080e7          	jalr	-1284(ra) # 80006dd8 <__printf>
    800082e4:	01013403          	ld	s0,16(sp)
    800082e8:	01813083          	ld	ra,24(sp)
    800082ec:	00048513          	mv	a0,s1
    800082f0:	00813483          	ld	s1,8(sp)
    800082f4:	02010113          	addi	sp,sp,32
    800082f8:	ffffe317          	auipc	t1,0xffffe
    800082fc:	6d430067          	jr	1748(t1) # 800069cc <plic_complete>
    80008300:	fffff097          	auipc	ra,0xfffff
    80008304:	3e0080e7          	jalr	992(ra) # 800076e0 <uartintr>
    80008308:	fddff06f          	j	800082e4 <console_handler+0x74>
    8000830c:	00002517          	auipc	a0,0x2
    80008310:	acc50513          	addi	a0,a0,-1332 # 80009dd8 <digits+0x78>
    80008314:	fffff097          	auipc	ra,0xfffff
    80008318:	a68080e7          	jalr	-1432(ra) # 80006d7c <panic>
	...
