
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	6b013103          	ld	sp,1712(sp) # 8000b6b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	060060ef          	jal	ra,8000607c <start>

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
    80001084:	041000ef          	jal	ra,800018c4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001170:	0000a797          	auipc	a5,0xa
    80001174:	7c078793          	addi	a5,a5,1984 # 8000b930 <_ZN9Scheduler16readyThreadQueueE>
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
    80001198:	0000a797          	auipc	a5,0xa
    8000119c:	79878793          	addi	a5,a5,1944 # 8000b930 <_ZN9Scheduler16readyThreadQueueE>
    800011a0:	0007b503          	ld	a0,0(a5)
    800011a4:	04050263          	beqz	a0,800011e8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    800011a8:	00853783          	ld	a5,8(a0)
    800011ac:	0000a717          	auipc	a4,0xa
    800011b0:	78f73223          	sd	a5,1924(a4) # 8000b930 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800011b4:	02078463          	beqz	a5,800011dc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    800011b8:	00053483          	ld	s1,0(a0)
        delete elem;
    800011bc:	00001097          	auipc	ra,0x1
    800011c0:	a4c080e7          	jalr	-1460(ra) # 80001c08 <_ZdlPv>
}
    800011c4:	00048513          	mv	a0,s1
    800011c8:	01813083          	ld	ra,24(sp)
    800011cc:	01013403          	ld	s0,16(sp)
    800011d0:	00813483          	ld	s1,8(sp)
    800011d4:	02010113          	addi	sp,sp,32
    800011d8:	00008067          	ret
        if (!head) { tail = 0; }
    800011dc:	0000a797          	auipc	a5,0xa
    800011e0:	7407be23          	sd	zero,1884(a5) # 8000b938 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    80001210:	97c080e7          	jalr	-1668(ra) # 80001b88 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001214:	00953023          	sd	s1,0(a0)
    80001218:	00053423          	sd	zero,8(a0)
        if (tail)
    8000121c:	0000a797          	auipc	a5,0xa
    80001220:	71478793          	addi	a5,a5,1812 # 8000b930 <_ZN9Scheduler16readyThreadQueueE>
    80001224:	0087b783          	ld	a5,8(a5)
    80001228:	02078263          	beqz	a5,8000124c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000122c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001230:	0000a797          	auipc	a5,0xa
    80001234:	70a7b423          	sd	a0,1800(a5) # 8000b938 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001238:	01813083          	ld	ra,24(sp)
    8000123c:	01013403          	ld	s0,16(sp)
    80001240:	00813483          	ld	s1,8(sp)
    80001244:	02010113          	addi	sp,sp,32
    80001248:	00008067          	ret
            head = tail = elem;
    8000124c:	0000a797          	auipc	a5,0xa
    80001250:	6e478793          	addi	a5,a5,1764 # 8000b930 <_ZN9Scheduler16readyThreadQueueE>
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
    800012c8:	944080e7          	jalr	-1724(ra) # 80001c08 <_ZdlPv>
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
    80001350:	55c78793          	addi	a5,a5,1372 # 8000b8a8 <_ZN3TCB7runningE>
    80001354:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    80001358:	00100793          	li	a5,1
    8000135c:	02f908a3          	sb	a5,49(s2)
        Elem *elem = new Elem(data, 0);
    80001360:	01000513          	li	a0,16
    80001364:	00001097          	auipc	ra,0x1
    80001368:	824080e7          	jalr	-2012(ra) # 80001b88 <_Znwm>
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
    80001388:	c14080e7          	jalr	-1004(ra) # 80001f98 <_ZN3TCB5yieldEv>

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
    800013f4:	818080e7          	jalr	-2024(ra) # 80001c08 <_ZdlPv>
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
    80001480:	00000097          	auipc	ra,0x0
    80001484:	708080e7          	jalr	1800(ra) # 80001b88 <_Znwm>
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
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	02010413          	addi	s0,sp,32
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    800014e4:	00013023          	sd	zero,0(sp)
    800014e8:	00000893          	li	a7,0
    800014ec:	00000813          	li	a6,0
    800014f0:	00000793          	li	a5,0
    800014f4:	00000713          	li	a4,0
    800014f8:	00000693          	li	a3,0
    800014fc:	00000613          	li	a2,0
    80001500:	00050593          	mv	a1,a0
    80001504:	00100513          	li	a0,1
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	fac080e7          	jalr	-84(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001510:	01813083          	ld	ra,24(sp)
    80001514:	01013403          	ld	s0,16(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret

0000000080001520 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001520:	fe010113          	addi	sp,sp,-32
    80001524:	00113c23          	sd	ra,24(sp)
    80001528:	00813823          	sd	s0,16(sp)
    8000152c:	02010413          	addi	s0,sp,32
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    80001530:	00013023          	sd	zero,0(sp)
    80001534:	00000893          	li	a7,0
    80001538:	00000813          	li	a6,0
    8000153c:	00000793          	li	a5,0
    80001540:	00000713          	li	a4,0
    80001544:	00000693          	li	a3,0
    80001548:	00000613          	li	a2,0
    8000154c:	00050593          	mv	a1,a0
    80001550:	00200513          	li	a0,2
    80001554:	00000097          	auipc	ra,0x0
    80001558:	f60080e7          	jalr	-160(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000155c:	0005051b          	sext.w	a0,a0
    80001560:	01813083          	ld	ra,24(sp)
    80001564:	01013403          	ld	s0,16(sp)
    80001568:	02010113          	addi	sp,sp,32
    8000156c:	00008067          	ret

0000000080001570 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001570:	fe010113          	addi	sp,sp,-32
    80001574:	00113c23          	sd	ra,24(sp)
    80001578:	00813823          	sd	s0,16(sp)
    8000157c:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    80001580:	00013023          	sd	zero,0(sp)
    80001584:	00000893          	li	a7,0
    80001588:	00000813          	li	a6,0
    8000158c:	00000793          	li	a5,0
    80001590:	00000713          	li	a4,0
    80001594:	00000693          	li	a3,0
    80001598:	00000613          	li	a2,0
    8000159c:	00000593          	li	a1,0
    800015a0:	00300513          	li	a0,3
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	f10080e7          	jalr	-240(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800015ac:	01813083          	ld	ra,24(sp)
    800015b0:	01013403          	ld	s0,16(sp)
    800015b4:	02010113          	addi	sp,sp,32
    800015b8:	00008067          	ret

00000000800015bc <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800015bc:	fe010113          	addi	sp,sp,-32
    800015c0:	00113c23          	sd	ra,24(sp)
    800015c4:	00813823          	sd	s0,16(sp)
    800015c8:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    800015cc:	00013023          	sd	zero,0(sp)
    800015d0:	00000893          	li	a7,0
    800015d4:	00000813          	li	a6,0
    800015d8:	00000793          	li	a5,0
    800015dc:	00000713          	li	a4,0
    800015e0:	00000693          	li	a3,0
    800015e4:	00000613          	li	a2,0
    800015e8:	00000593          	li	a1,0
    800015ec:	00400513          	li	a0,4
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	ec4080e7          	jalr	-316(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800015f8:	01813083          	ld	ra,24(sp)
    800015fc:	01013403          	ld	s0,16(sp)
    80001600:	02010113          	addi	sp,sp,32
    80001604:	00008067          	ret

0000000080001608 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001608:	fe010113          	addi	sp,sp,-32
    8000160c:	00113c23          	sd	ra,24(sp)
    80001610:	00813823          	sd	s0,16(sp)
    80001614:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    80001618:	00013023          	sd	zero,0(sp)
    8000161c:	00000893          	li	a7,0
    80001620:	00000813          	li	a6,0
    80001624:	00000793          	li	a5,0
    80001628:	00000713          	li	a4,0
    8000162c:	00060693          	mv	a3,a2
    80001630:	00058613          	mv	a2,a1
    80001634:	00050593          	mv	a1,a0
    80001638:	01100513          	li	a0,17
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	e78080e7          	jalr	-392(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001644:	0005051b          	sext.w	a0,a0
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	02010113          	addi	sp,sp,32
    80001654:	00008067          	ret

0000000080001658 <_Z11thread_exitv>:

int thread_exit () {
    80001658:	fe010113          	addi	sp,sp,-32
    8000165c:	00113c23          	sd	ra,24(sp)
    80001660:	00813823          	sd	s0,16(sp)
    80001664:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_EXIT);
    80001668:	00013023          	sd	zero,0(sp)
    8000166c:	00000893          	li	a7,0
    80001670:	00000813          	li	a6,0
    80001674:	00000793          	li	a5,0
    80001678:	00000713          	li	a4,0
    8000167c:	00000693          	li	a3,0
    80001680:	00000613          	li	a2,0
    80001684:	00000593          	li	a1,0
    80001688:	01200513          	li	a0,18
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	e28080e7          	jalr	-472(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001694:	0005051b          	sext.w	a0,a0
    80001698:	01813083          	ld	ra,24(sp)
    8000169c:	01013403          	ld	s0,16(sp)
    800016a0:	02010113          	addi	sp,sp,32
    800016a4:	00008067          	ret

00000000800016a8 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_DISPATCH);
    800016b8:	00013023          	sd	zero,0(sp)
    800016bc:	00000893          	li	a7,0
    800016c0:	00000813          	li	a6,0
    800016c4:	00000793          	li	a5,0
    800016c8:	00000713          	li	a4,0
    800016cc:	00000693          	li	a3,0
    800016d0:	00000613          	li	a2,0
    800016d4:	00000593          	li	a1,0
    800016d8:	01300513          	li	a0,19
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	dd8080e7          	jalr	-552(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800016e4:	01813083          	ld	ra,24(sp)
    800016e8:	01013403          	ld	s0,16(sp)
    800016ec:	02010113          	addi	sp,sp,32
    800016f0:	00008067          	ret

00000000800016f4 <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init) {
    800016f4:	fe010113          	addi	sp,sp,-32
    800016f8:	00113c23          	sd	ra,24(sp)
    800016fc:	00813823          	sd	s0,16(sp)
    80001700:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
    80001704:	00013023          	sd	zero,0(sp)
    80001708:	00000893          	li	a7,0
    8000170c:	00000813          	li	a6,0
    80001710:	00000793          	li	a5,0
    80001714:	00000713          	li	a4,0
    80001718:	00000693          	li	a3,0
    8000171c:	02059613          	slli	a2,a1,0x20
    80001720:	02065613          	srli	a2,a2,0x20
    80001724:	00050593          	mv	a1,a0
    80001728:	02100513          	li	a0,33
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	d88080e7          	jalr	-632(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001734:	0005051b          	sext.w	a0,a0
    80001738:	01813083          	ld	ra,24(sp)
    8000173c:	01013403          	ld	s0,16(sp)
    80001740:	02010113          	addi	sp,sp,32
    80001744:	00008067          	ret

0000000080001748 <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle) {
    80001748:	fe010113          	addi	sp,sp,-32
    8000174c:	00113c23          	sd	ra,24(sp)
    80001750:	00813823          	sd	s0,16(sp)
    80001754:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
    80001758:	00013023          	sd	zero,0(sp)
    8000175c:	00000893          	li	a7,0
    80001760:	00000813          	li	a6,0
    80001764:	00000793          	li	a5,0
    80001768:	00000713          	li	a4,0
    8000176c:	00000693          	li	a3,0
    80001770:	00000613          	li	a2,0
    80001774:	00050593          	mv	a1,a0
    80001778:	02200513          	li	a0,34
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	d38080e7          	jalr	-712(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001784:	0005051b          	sext.w	a0,a0
    80001788:	01813083          	ld	ra,24(sp)
    8000178c:	01013403          	ld	s0,16(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id) {
    80001798:	fe010113          	addi	sp,sp,-32
    8000179c:	00113c23          	sd	ra,24(sp)
    800017a0:	00813823          	sd	s0,16(sp)
    800017a4:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
    800017a8:	00013023          	sd	zero,0(sp)
    800017ac:	00000893          	li	a7,0
    800017b0:	00000813          	li	a6,0
    800017b4:	00000793          	li	a5,0
    800017b8:	00000713          	li	a4,0
    800017bc:	00000693          	li	a3,0
    800017c0:	00000613          	li	a2,0
    800017c4:	00050593          	mv	a1,a0
    800017c8:	02300513          	li	a0,35
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	ce8080e7          	jalr	-792(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800017d4:	0005051b          	sext.w	a0,a0
    800017d8:	01813083          	ld	ra,24(sp)
    800017dc:	01013403          	ld	s0,16(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret

00000000800017e8 <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id) {
    800017e8:	fe010113          	addi	sp,sp,-32
    800017ec:	00113c23          	sd	ra,24(sp)
    800017f0:	00813823          	sd	s0,16(sp)
    800017f4:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
    800017f8:	00013023          	sd	zero,0(sp)
    800017fc:	00000893          	li	a7,0
    80001800:	00000813          	li	a6,0
    80001804:	00000793          	li	a5,0
    80001808:	00000713          	li	a4,0
    8000180c:	00000693          	li	a3,0
    80001810:	00000613          	li	a2,0
    80001814:	00050593          	mv	a1,a0
    80001818:	02400513          	li	a0,36
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	c98080e7          	jalr	-872(ra) # 800014b4 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001824:	0005051b          	sext.w	a0,a0
    80001828:	01813083          	ld	ra,24(sp)
    8000182c:	01013403          	ld	s0,16(sp)
    80001830:	02010113          	addi	sp,sp,32
    80001834:	00008067          	ret

0000000080001838 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00813423          	sd	s0,8(sp)
    80001840:	01010413          	addi	s0,sp,16
    return 0;
}
    80001844:	00000513          	li	a0,0
    80001848:	00813403          	ld	s0,8(sp)
    8000184c:	01010113          	addi	sp,sp,16
    80001850:	00008067          	ret

0000000080001854 <_Z4getcv>:

char getc () {
    80001854:	ff010113          	addi	sp,sp,-16
    80001858:	00113423          	sd	ra,8(sp)
    8000185c:	00813023          	sd	s0,0(sp)
    80001860:	01010413          	addi	s0,sp,16
    return __getc();
    80001864:	00007097          	auipc	ra,0x7
    80001868:	914080e7          	jalr	-1772(ra) # 80008178 <__getc>
}
    8000186c:	00813083          	ld	ra,8(sp)
    80001870:	00013403          	ld	s0,0(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret

000000008000187c <_Z4putcc>:

void putc (char c) {
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00113423          	sd	ra,8(sp)
    80001884:	00813023          	sd	s0,0(sp)
    80001888:	01010413          	addi	s0,sp,16
    __putc(c);
    8000188c:	00007097          	auipc	ra,0x7
    80001890:	8b0080e7          	jalr	-1872(ra) # 8000813c <__putc>
    80001894:	00813083          	ld	ra,8(sp)
    80001898:	00013403          	ld	s0,0(sp)
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00008067          	ret

00000000800018a4 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00813423          	sd	s0,8(sp)
    800018ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800018b0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800018b4:	10200073          	sret
}
    800018b8:	00813403          	ld	s0,8(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800018c4:	f9010113          	addi	sp,sp,-112
    800018c8:	06113423          	sd	ra,104(sp)
    800018cc:	06813023          	sd	s0,96(sp)
    800018d0:	04913c23          	sd	s1,88(sp)
    800018d4:	07010413          	addi	s0,sp,112
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800018d8:	142027f3          	csrr	a5,scause
    800018dc:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800018e0:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800018e4:	ff870693          	addi	a3,a4,-8
    800018e8:	00100793          	li	a5,1
    800018ec:	02d7f863          	bgeu	a5,a3,8000191c <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    800018f0:	fff00793          	li	a5,-1
    800018f4:	03f79793          	slli	a5,a5,0x3f
    800018f8:	00178793          	addi	a5,a5,1
    800018fc:	20f70c63          	beq	a4,a5,80001b14 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001900:	fff00793          	li	a5,-1
    80001904:	03f79793          	slli	a5,a5,0x3f
    80001908:	00978793          	addi	a5,a5,9
    8000190c:	0af71263          	bne	a4,a5,800019b0 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80001910:	00007097          	auipc	ra,0x7
    80001914:	8a0080e7          	jalr	-1888(ra) # 800081b0 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001918:	0980006f          	j	800019b0 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000191c:	141027f3          	csrr	a5,sepc
    80001920:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001924:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001928:	00478793          	addi	a5,a5,4
    8000192c:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001930:	100027f3          	csrr	a5,sstatus
    80001934:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001938:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    8000193c:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001940:	00050793          	mv	a5,a0
        __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001944:	00058493          	mv	s1,a1
        __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001948:	00060593          	mv	a1,a2
        __asm__ volatile ("mv %0, a3" : "=r"(a3));
    8000194c:	00068713          	mv	a4,a3
        __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001950:	00070713          	mv	a4,a4
        __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001954:	00078713          	mv	a4,a5
        __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001958:	00080713          	mv	a4,a6
        __asm__ volatile ("mv %0, a7" : "=r"(a7));
    8000195c:	00088713          	mv	a4,a7
        switch (a0) {
    80001960:	02400713          	li	a4,36
    80001964:	18f76863          	bltu	a4,a5,80001af4 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
    80001968:	00279793          	slli	a5,a5,0x2
    8000196c:	00007717          	auipc	a4,0x7
    80001970:	6b470713          	addi	a4,a4,1716 # 80009020 <CONSOLE_STATUS+0x10>
    80001974:	00e787b3          	add	a5,a5,a4
    80001978:	0007a783          	lw	a5,0(a5)
    8000197c:	00e787b3          	add	a5,a5,a4
    80001980:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001984:	00000097          	auipc	ra,0x0
    80001988:	6b4080e7          	jalr	1716(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    8000198c:	00048593          	mv	a1,s1
    80001990:	00001097          	auipc	ra,0x1
    80001994:	80c080e7          	jalr	-2036(ra) # 8000219c <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001998:	00050513          	mv	a0,a0
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    8000199c:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    800019a0:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800019a4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800019a8:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800019ac:	14179073          	csrw	sepc,a5
    800019b0:	06813083          	ld	ra,104(sp)
    800019b4:	06013403          	ld	s0,96(sp)
    800019b8:	05813483          	ld	s1,88(sp)
    800019bc:	07010113          	addi	sp,sp,112
    800019c0:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	674080e7          	jalr	1652(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    800019cc:	00048593          	mv	a1,s1
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	b1c080e7          	jalr	-1252(ra) # 800024ec <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    800019d8:	fc1ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_free_space();
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	65c080e7          	jalr	1628(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	9b4080e7          	jalr	-1612(ra) # 80002398 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    800019ec:	00000513          	li	a0,0
                break;
    800019f0:	fa9ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	644080e7          	jalr	1604(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	968080e7          	jalr	-1688(ra) # 80002364 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001a04:	00000513          	li	a0,0
                break;
    80001a08:	f91ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a1, (void*)a2);
    80001a0c:	00048513          	mv	a0,s1
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	438080e7          	jalr	1080(ra) # 80001e48 <_ZN3TCB12createThreadEPFvPvES0_>
    80001a18:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001a1c:	0e050063          	beqz	a0,80001afc <_ZN5Riscv20handleSupervisorTrapEv+0x238>
        uint64 res = 0;
    80001a20:	00000513          	li	a0,0
    80001a24:	f75ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::exit();
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	598080e7          	jalr	1432(ra) # 80001fc0 <_ZN3TCB4exitEv>
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
    80001a30:	0004b783          	ld	a5,0(s1)
    80001a34:	0000a717          	auipc	a4,0xa
    80001a38:	e7470713          	addi	a4,a4,-396 # 8000b8a8 <_ZN3TCB7runningE>
    80001a3c:	00073503          	ld	a0,0(a4)
    80001a40:	40f50533          	sub	a0,a0,a5
    80001a44:	00007597          	auipc	a1,0x7
    80001a48:	67458593          	addi	a1,a1,1652 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001a4c:	00153513          	seqz	a0,a0
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	294080e7          	jalr	660(ra) # 80001ce4 <_Z6assertbPKc>
                delete *handle;
    80001a58:	0004b483          	ld	s1,0(s1)
    80001a5c:	0a048463          	beqz	s1,80001b04 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
    ~TCB() { delete[] stack; }
    80001a60:	0104b503          	ld	a0,16(s1)
    80001a64:	00050663          	beqz	a0,80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	1e0080e7          	jalr	480(ra) # 80001c48 <_ZdaPv>
    80001a70:	00048513          	mv	a0,s1
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	194080e7          	jalr	404(ra) # 80001c08 <_ZdlPv>
        uint64 res = 0;
    80001a7c:	00000513          	li	a0,0
    80001a80:	f19ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::dispatch();
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	4a0080e7          	jalr	1184(ra) # 80001f24 <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001a8c:	00000513          	li	a0,0
                break;
    80001a90:	f09ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                *handle = (sem_t)_semaphore::open(a2);
    80001a94:	0005851b          	sext.w	a0,a1
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	9c8080e7          	jalr	-1592(ra) # 80001460 <_ZN10_semaphore4openEj>
    80001aa0:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001aa4:	06050463          	beqz	a0,80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0x248>
        uint64 res = 0;
    80001aa8:	00000513          	li	a0,0
    80001aac:	eedff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                (*handle)->close();
    80001ab0:	0004b503          	ld	a0,0(s1)
    80001ab4:	fffff097          	auipc	ra,0xfffff
    80001ab8:	7e0080e7          	jalr	2016(ra) # 80001294 <_ZN10_semaphore5closeEv>
                delete *handle;
    80001abc:	0004b503          	ld	a0,0(s1)
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	148080e7          	jalr	328(ra) # 80001c08 <_ZdlPv>
        uint64 res = 0;
    80001ac8:	00000513          	li	a0,0
                break;
    80001acc:	ecdff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                res = (*handle)->wait();
    80001ad0:	0004b503          	ld	a0,0(s1)
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	83c080e7          	jalr	-1988(ra) # 80001310 <_ZN10_semaphore4waitEv>
                break;
    80001adc:	ebdff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                (*handle)->signal();
    80001ae0:	0004b503          	ld	a0,0(s1)
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	8d8080e7          	jalr	-1832(ra) # 800013bc <_ZN10_semaphore6signalEv>
        uint64 res = 0;
    80001aec:	00000513          	li	a0,0
                break;
    80001af0:	ea9ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        uint64 res = 0;
    80001af4:	00000513          	li	a0,0
    80001af8:	ea1ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    res = -1;
    80001afc:	fff00513          	li	a0,-1
    80001b00:	e99ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        uint64 res = 0;
    80001b04:	00000513          	li	a0,0
    80001b08:	e91ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    res = -1;
    80001b0c:	fff00513          	li	a0,-1
    80001b10:	e89ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001b14:	00200793          	li	a5,2
    80001b18:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001b1c:	0000a717          	auipc	a4,0xa
    80001b20:	d8470713          	addi	a4,a4,-636 # 8000b8a0 <_ZN3TCB16timeSliceCounterE>
    80001b24:	00073783          	ld	a5,0(a4)
    80001b28:	00178793          	addi	a5,a5,1
    80001b2c:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001b30:	0000a717          	auipc	a4,0xa
    80001b34:	d7870713          	addi	a4,a4,-648 # 8000b8a8 <_ZN3TCB7runningE>
    80001b38:	00073703          	ld	a4,0(a4)

    bool isBlocked() { return blocked_; }

    uint64 getTimeSlice() const { return timeSlice; }
    80001b3c:	02873703          	ld	a4,40(a4)
    80001b40:	e6e7e8e3          	bltu	a5,a4,800019b0 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b44:	141027f3          	csrr	a5,sepc
    80001b48:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001b4c:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001b50:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b54:	100027f3          	csrr	a5,sstatus
    80001b58:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001b5c:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001b60:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80001b64:	0000a797          	auipc	a5,0xa
    80001b68:	d207be23          	sd	zero,-708(a5) # 8000b8a0 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	3b8080e7          	jalr	952(ra) # 80001f24 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001b74:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b78:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001b7c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b80:	14179073          	csrw	sepc,a5
    80001b84:	e2dff06f          	j	800019b0 <_ZN5Riscv20handleSupervisorTrapEv+0xec>

0000000080001b88 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001b88:	fe010113          	addi	sp,sp,-32
    80001b8c:	00113c23          	sd	ra,24(sp)
    80001b90:	00813823          	sd	s0,16(sp)
    80001b94:	00913423          	sd	s1,8(sp)
    80001b98:	02010413          	addi	s0,sp,32
    80001b9c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	498080e7          	jalr	1176(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    80001ba8:	00048593          	mv	a1,s1
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	5f0080e7          	jalr	1520(ra) # 8000219c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001bb4:	01813083          	ld	ra,24(sp)
    80001bb8:	01013403          	ld	s0,16(sp)
    80001bbc:	00813483          	ld	s1,8(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret

0000000080001bc8 <_Znam>:

void *operator new[](size_t n)
{
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00113c23          	sd	ra,24(sp)
    80001bd0:	00813823          	sd	s0,16(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	02010413          	addi	s0,sp,32
    80001bdc:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	458080e7          	jalr	1112(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    80001be8:	00048593          	mv	a1,s1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	5b0080e7          	jalr	1456(ra) # 8000219c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	00813483          	ld	s1,8(sp)
    80001c00:	02010113          	addi	sp,sp,32
    80001c04:	00008067          	ret

0000000080001c08 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00113c23          	sd	ra,24(sp)
    80001c10:	00813823          	sd	s0,16(sp)
    80001c14:	00913423          	sd	s1,8(sp)
    80001c18:	02010413          	addi	s0,sp,32
    80001c1c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	418080e7          	jalr	1048(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    80001c28:	00048593          	mv	a1,s1
    80001c2c:	00001097          	auipc	ra,0x1
    80001c30:	8c0080e7          	jalr	-1856(ra) # 800024ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	01013403          	ld	s0,16(sp)
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	02010113          	addi	sp,sp,32
    80001c44:	00008067          	ret

0000000080001c48 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c48:	fe010113          	addi	sp,sp,-32
    80001c4c:	00113c23          	sd	ra,24(sp)
    80001c50:	00813823          	sd	s0,16(sp)
    80001c54:	00913423          	sd	s1,8(sp)
    80001c58:	02010413          	addi	s0,sp,32
    80001c5c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	3d8080e7          	jalr	984(ra) # 80002038 <_ZN15MemoryAllocator11getInstanceEv>
    80001c68:	00048593          	mv	a1,s1
    80001c6c:	00001097          	auipc	ra,0x1
    80001c70:	880080e7          	jalr	-1920(ra) # 800024ec <_ZN15MemoryAllocator8mem_freeEPv>
    80001c74:	01813083          	ld	ra,24(sp)
    80001c78:	01013403          	ld	s0,16(sp)
    80001c7c:	00813483          	ld	s1,8(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret

0000000080001c88 <_Z11debug_printm>:
//         string++;
//     }
//     Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
// }

void debug_print(uint64 integer) {
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
    #if DEBUG_PRINT == 1
    printInt(integer);
    80001c98:	00000613          	li	a2,0
    80001c9c:	00a00593          	li	a1,10
    80001ca0:	0005051b          	sext.w	a0,a0
    80001ca4:	00004097          	auipc	ra,0x4
    80001ca8:	8dc080e7          	jalr	-1828(ra) # 80005580 <_Z8printIntiii>
    #endif
}
    80001cac:	00813083          	ld	ra,8(sp)
    80001cb0:	00013403          	ld	s0,0(sp)
    80001cb4:	01010113          	addi	sp,sp,16
    80001cb8:	00008067          	ret

0000000080001cbc <_Z11debug_printPKc>:

void debug_print(char const *string) {
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	00813023          	sd	s0,0(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    #if DEBUG_PRINT == 1
    printString(string);
    80001ccc:	00003097          	auipc	ra,0x3
    80001cd0:	708080e7          	jalr	1800(ra) # 800053d4 <_Z11printStringPKc>
    #endif
}
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_Z6assertbPKc>:

void assert(bool condition, char const *debug_message) {
    if (!condition) {
    80001ce4:	00050463          	beqz	a0,80001cec <_Z6assertbPKc+0x8>
    80001ce8:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80001cec:	fe010113          	addi	sp,sp,-32
    80001cf0:	00113c23          	sd	ra,24(sp)
    80001cf4:	00813823          	sd	s0,16(sp)
    80001cf8:	00913423          	sd	s1,8(sp)
    80001cfc:	02010413          	addi	s0,sp,32
    80001d00:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80001d04:	00007517          	auipc	a0,0x7
    80001d08:	3ec50513          	addi	a0,a0,1004 # 800090f0 <CONSOLE_STATUS+0xe0>
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	fb0080e7          	jalr	-80(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print(debug_message);
    80001d14:	00048513          	mv	a0,s1
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	fa4080e7          	jalr	-92(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print("\n");
    80001d20:	00008517          	auipc	a0,0x8
    80001d24:	c0050513          	addi	a0,a0,-1024 # 80009920 <_ZTV8Consumer+0x298>
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	f94080e7          	jalr	-108(ra) # 80001cbc <_Z11debug_printPKc>
    }
}
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	02010113          	addi	sp,sp,32
    80001d40:	00008067          	ret

0000000080001d44 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"

void userMain();

void userMainWrapper(void* arg)
{
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00113423          	sd	ra,8(sp)
    80001d4c:	00813023          	sd	s0,0(sp)
    80001d50:	01010413          	addi	s0,sp,16
    userMain();
    80001d54:	00002097          	auipc	ra,0x2
    80001d58:	bd8080e7          	jalr	-1064(ra) # 8000392c <_Z8userMainv>
}
    80001d5c:	00813083          	ld	ra,8(sp)
    80001d60:	00013403          	ld	s0,0(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <main>:

int main()
{
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00813823          	sd	s0,16(sp)
    80001d78:	02010413          	addi	s0,sp,32
    thread_t main_handle;
    thread_t userMain_handle;
    thread_create(&main_handle, nullptr, nullptr);
    80001d7c:	00000613          	li	a2,0
    80001d80:	00000593          	li	a1,0
    80001d84:	fe840513          	addi	a0,s0,-24
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	880080e7          	jalr	-1920(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&userMain_handle, userMainWrapper, nullptr);
    80001d90:	00000613          	li	a2,0
    80001d94:	00000597          	auipc	a1,0x0
    80001d98:	fb058593          	addi	a1,a1,-80 # 80001d44 <_Z15userMainWrapperPv>
    80001d9c:	fe040513          	addi	a0,s0,-32
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	868080e7          	jalr	-1944(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main_handle;
    80001da8:	fe843783          	ld	a5,-24(s0)
    80001dac:	0000a717          	auipc	a4,0xa
    80001db0:	aef73e23          	sd	a5,-1284(a4) # 8000b8a8 <_ZN3TCB7runningE>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001db4:	fffff797          	auipc	a5,0xfffff
    80001db8:	24c78793          	addi	a5,a5,588 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001dbc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001dc0:	00200793          	li	a5,2
    80001dc4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (userMain_handle) {
    80001dc8:	fe043783          	ld	a5,-32(s0)
    80001dcc:	00078863          	beqz	a5,80001ddc <main+0x70>
        thread_dispatch();
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	8d8080e7          	jalr	-1832(ra) # 800016a8 <_Z15thread_dispatchv>
    80001dd8:	ff1ff06f          	j	80001dc8 <main+0x5c>
    }

    printString("Finished\n");
    80001ddc:	00007517          	auipc	a0,0x7
    80001de0:	32c50513          	addi	a0,a0,812 # 80009108 <CONSOLE_STATUS+0xf8>
    80001de4:	00003097          	auipc	ra,0x3
    80001de8:	5f0080e7          	jalr	1520(ra) # 800053d4 <_Z11printStringPKc>

    return 0;
}
    80001dec:	00000513          	li	a0,0
    80001df0:	01813083          	ld	ra,24(sp)
    80001df4:	01013403          	ld	s0,16(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	a94080e7          	jalr	-1388(ra) # 800018a4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg_);
    80001e18:	0000a797          	auipc	a5,0xa
    80001e1c:	a9078793          	addi	a5,a5,-1392 # 8000b8a8 <_ZN3TCB7runningE>
    80001e20:	0007b783          	ld	a5,0(a5)
    80001e24:	0007b703          	ld	a4,0(a5)
    80001e28:	0087b503          	ld	a0,8(a5)
    80001e2c:	000700e7          	jalr	a4
    thread_exit();
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	828080e7          	jalr	-2008(ra) # 80001658 <_Z11thread_exitv>
}
    80001e38:	00813083          	ld	ra,8(sp)
    80001e3c:	00013403          	ld	s0,0(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001e48:	fd010113          	addi	sp,sp,-48
    80001e4c:	02113423          	sd	ra,40(sp)
    80001e50:	02813023          	sd	s0,32(sp)
    80001e54:	00913c23          	sd	s1,24(sp)
    80001e58:	01213823          	sd	s2,16(sp)
    80001e5c:	01313423          	sd	s3,8(sp)
    80001e60:	03010413          	addi	s0,sp,48
    80001e64:	00050913          	mv	s2,a0
    80001e68:	00058993          	mv	s3,a1
    return new TCB(body, arg, TIME_SLICE);
    80001e6c:	03800513          	li	a0,56
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	d18080e7          	jalr	-744(ra) # 80001b88 <_Znwm>
    80001e78:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished_(false),
            blocked_(false)
    80001e7c:	01253023          	sd	s2,0(a0)
    80001e80:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001e84:	00090a63          	beqz	s2,80001e98 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001e88:	00002537          	lui	a0,0x2
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	d3c080e7          	jalr	-708(ra) # 80001bc8 <_Znam>
    80001e94:	0080006f          	j	80001e9c <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001e98:	00000513          	li	a0,0
            blocked_(false)
    80001e9c:	00a4b823          	sd	a0,16(s1)
    80001ea0:	00000797          	auipc	a5,0x0
    80001ea4:	f6078793          	addi	a5,a5,-160 # 80001e00 <_ZN3TCB13threadWrapperEv>
    80001ea8:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001eac:	02050a63          	beqz	a0,80001ee0 <_ZN3TCB12createThreadEPFvPvES0_+0x98>
    80001eb0:	000027b7          	lui	a5,0x2
    80001eb4:	00f50533          	add	a0,a0,a5
            blocked_(false)
    80001eb8:	02a4b023          	sd	a0,32(s1)
    80001ebc:	00200793          	li	a5,2
    80001ec0:	02f4b423          	sd	a5,40(s1)
    80001ec4:	02048823          	sb	zero,48(s1)
    80001ec8:	020488a3          	sb	zero,49(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001ecc:	02090c63          	beqz	s2,80001f04 <_ZN3TCB12createThreadEPFvPvES0_+0xbc>
    80001ed0:	00048513          	mv	a0,s1
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	31c080e7          	jalr	796(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    80001edc:	0280006f          	j	80001f04 <_ZN3TCB12createThreadEPFvPvES0_+0xbc>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ee0:	00000513          	li	a0,0
    80001ee4:	fd5ff06f          	j	80001eb8 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80001ee8:	00050913          	mv	s2,a0
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	d18080e7          	jalr	-744(ra) # 80001c08 <_ZdlPv>
    80001ef8:	00090513          	mv	a0,s2
    80001efc:	0000b097          	auipc	ra,0xb
    80001f00:	b0c080e7          	jalr	-1268(ra) # 8000ca08 <_Unwind_Resume>
}
    80001f04:	00048513          	mv	a0,s1
    80001f08:	02813083          	ld	ra,40(sp)
    80001f0c:	02013403          	ld	s0,32(sp)
    80001f10:	01813483          	ld	s1,24(sp)
    80001f14:	01013903          	ld	s2,16(sp)
    80001f18:	00813983          	ld	s3,8(sp)
    80001f1c:	03010113          	addi	sp,sp,48
    80001f20:	00008067          	ret

0000000080001f24 <_ZN3TCB8dispatchEv>:
{
    80001f24:	fe010113          	addi	sp,sp,-32
    80001f28:	00113c23          	sd	ra,24(sp)
    80001f2c:	00813823          	sd	s0,16(sp)
    80001f30:	00913423          	sd	s1,8(sp)
    80001f34:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001f38:	0000a797          	auipc	a5,0xa
    80001f3c:	97078793          	addi	a5,a5,-1680 # 8000b8a8 <_ZN3TCB7runningE>
    80001f40:	0007b483          	ld	s1,0(a5)
    bool isBlocked() { return blocked_; }
    80001f44:	0314c783          	lbu	a5,49(s1)
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    80001f48:	00079663          	bnez	a5,80001f54 <_ZN3TCB8dispatchEv+0x30>
    bool isFinished() const { return finished_; }
    80001f4c:	0304c783          	lbu	a5,48(s1)
    80001f50:	02078c63          	beqz	a5,80001f88 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    80001f54:	fffff097          	auipc	ra,0xfffff
    80001f58:	230080e7          	jalr	560(ra) # 80001184 <_ZN9Scheduler3getEv>
    80001f5c:	0000a797          	auipc	a5,0xa
    80001f60:	94a7b623          	sd	a0,-1716(a5) # 8000b8a8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001f64:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001f68:	01848513          	addi	a0,s1,24
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	1a4080e7          	jalr	420(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f74:	01813083          	ld	ra,24(sp)
    80001f78:	01013403          	ld	s0,16(sp)
    80001f7c:	00813483          	ld	s1,8(sp)
    80001f80:	02010113          	addi	sp,sp,32
    80001f84:	00008067          	ret
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	264080e7          	jalr	612(ra) # 800011f0 <_ZN9Scheduler3putEP3TCB>
    80001f94:	fc1ff06f          	j	80001f54 <_ZN3TCB8dispatchEv+0x30>

0000000080001f98 <_ZN3TCB5yieldEv>:
{
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    dispatch();
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	f7c080e7          	jalr	-132(ra) # 80001f24 <_ZN3TCB8dispatchEv>
}
    80001fb0:	00813083          	ld	ra,8(sp)
    80001fb4:	00013403          	ld	s0,0(sp)
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN3TCB4exitEv>:

void TCB::exit() {
    80001fc0:	fe010113          	addi	sp,sp,-32
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	01213023          	sd	s2,0(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    TCB *old = running;
    80001fd8:	0000a497          	auipc	s1,0xa
    80001fdc:	8d048493          	addi	s1,s1,-1840 # 8000b8a8 <_ZN3TCB7runningE>
    80001fe0:	0004b903          	ld	s2,0(s1)
    void setFinished(bool value) { finished_ = value; }
    80001fe4:	00100793          	li	a5,1
    80001fe8:	02f90823          	sb	a5,48(s2)
    old->setFinished(true);
    running = Scheduler::get();
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	198080e7          	jalr	408(ra) # 80001184 <_ZN9Scheduler3getEv>
    80001ff4:	00a4b023          	sd	a0,0(s1)
    assert(running != nullptr, "Scheduler should return at least one thread");
    80001ff8:	00007597          	auipc	a1,0x7
    80001ffc:	12058593          	addi	a1,a1,288 # 80009118 <CONSOLE_STATUS+0x108>
    80002000:	00a03533          	snez	a0,a0
    80002004:	00000097          	auipc	ra,0x0
    80002008:	ce0080e7          	jalr	-800(ra) # 80001ce4 <_Z6assertbPKc>
    TCB::contextSwitch(&old->context, &running->context);
    8000200c:	0004b583          	ld	a1,0(s1)
    80002010:	01858593          	addi	a1,a1,24
    80002014:	01890513          	addi	a0,s2,24
    80002018:	fffff097          	auipc	ra,0xfffff
    8000201c:	0f8080e7          	jalr	248(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80002020:	01813083          	ld	ra,24(sp)
    80002024:	01013403          	ld	s0,16(sp)
    80002028:	00813483          	ld	s1,8(sp)
    8000202c:	00013903          	ld	s2,0(sp)
    80002030:	02010113          	addi	sp,sp,32
    80002034:	00008067          	ret

0000000080002038 <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    80002038:	0000a797          	auipc	a5,0xa
    8000203c:	87878793          	addi	a5,a5,-1928 # 8000b8b0 <_ZN15MemoryAllocator9instance_E>
    80002040:	0007b783          	ld	a5,0(a5)
    80002044:	00078a63          	beqz	a5,80002058 <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    80002048:	0000a797          	auipc	a5,0xa
    8000204c:	86878793          	addi	a5,a5,-1944 # 8000b8b0 <_ZN15MemoryAllocator9instance_E>
    80002050:	0007b503          	ld	a0,0(a5)
    80002054:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80002058:	fd010113          	addi	sp,sp,-48
    8000205c:	02113423          	sd	ra,40(sp)
    80002060:	02813023          	sd	s0,32(sp)
    80002064:	00913c23          	sd	s1,24(sp)
    80002068:	01213823          	sd	s2,16(sp)
    8000206c:	01313423          	sd	s3,8(sp)
    80002070:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002074:	00009997          	auipc	s3,0x9
    80002078:	60c98993          	addi	s3,s3,1548 # 8000b680 <HEAP_START_ADDR>
    8000207c:	0009b783          	ld	a5,0(s3)
    80002080:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80002084:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002088:	0000a497          	auipc	s1,0xa
    8000208c:	82848493          	addi	s1,s1,-2008 # 8000b8b0 <_ZN15MemoryAllocator9instance_E>
    80002090:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80002094:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    80002098:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    8000209c:	0004b783          	ld	a5,0(s1)
    800020a0:	0007b783          	ld	a5,0(a5)
    800020a4:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    800020a8:	0004b783          	ld	a5,0(s1)
    800020ac:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    800020b0:	00009917          	auipc	s2,0x9
    800020b4:	5c890913          	addi	s2,s2,1480 # 8000b678 <HEAP_END_ADDR>
    800020b8:	00093783          	ld	a5,0(s2)
    800020bc:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    800020c0:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    800020c4:	00007517          	auipc	a0,0x7
    800020c8:	08450513          	addi	a0,a0,132 # 80009148 <CONSOLE_STATUS+0x138>
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	bf0080e7          	jalr	-1040(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    800020d4:	00007517          	auipc	a0,0x7
    800020d8:	09c50513          	addi	a0,a0,156 # 80009170 <CONSOLE_STATUS+0x160>
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	be0080e7          	jalr	-1056(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    800020e4:	04000513          	li	a0,64
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	ba0080e7          	jalr	-1120(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    800020f0:	00007517          	auipc	a0,0x7
    800020f4:	09850513          	addi	a0,a0,152 # 80009188 <CONSOLE_STATUS+0x178>
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	bc4080e7          	jalr	-1084(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    80002100:	0009b503          	ld	a0,0(s3)
    80002104:	00000097          	auipc	ra,0x0
    80002108:	b84080e7          	jalr	-1148(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    8000210c:	00007517          	auipc	a0,0x7
    80002110:	09450513          	addi	a0,a0,148 # 800091a0 <CONSOLE_STATUS+0x190>
    80002114:	00000097          	auipc	ra,0x0
    80002118:	ba8080e7          	jalr	-1112(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    8000211c:	00093503          	ld	a0,0(s2)
    80002120:	00000097          	auipc	ra,0x0
    80002124:	b68080e7          	jalr	-1176(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    80002128:	00007517          	auipc	a0,0x7
    8000212c:	09050513          	addi	a0,a0,144 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80002130:	00000097          	auipc	ra,0x0
    80002134:	b8c080e7          	jalr	-1140(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    80002138:	0004b783          	ld	a5,0(s1)
    8000213c:	0007b503          	ld	a0,0(a5)
    80002140:	00000097          	auipc	ra,0x0
    80002144:	b48080e7          	jalr	-1208(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    80002148:	00007517          	auipc	a0,0x7
    8000214c:	09050513          	addi	a0,a0,144 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002150:	00000097          	auipc	ra,0x0
    80002154:	b6c080e7          	jalr	-1172(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    80002158:	01000513          	li	a0,16
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	b2c080e7          	jalr	-1236(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\n");
    80002164:	00007517          	auipc	a0,0x7
    80002168:	7bc50513          	addi	a0,a0,1980 # 80009920 <_ZTV8Consumer+0x298>
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	b50080e7          	jalr	-1200(ra) # 80001cbc <_Z11debug_printPKc>
}
    80002174:	00009797          	auipc	a5,0x9
    80002178:	73c78793          	addi	a5,a5,1852 # 8000b8b0 <_ZN15MemoryAllocator9instance_E>
    8000217c:	0007b503          	ld	a0,0(a5)
    80002180:	02813083          	ld	ra,40(sp)
    80002184:	02013403          	ld	s0,32(sp)
    80002188:	01813483          	ld	s1,24(sp)
    8000218c:	01013903          	ld	s2,16(sp)
    80002190:	00813983          	ld	s3,8(sp)
    80002194:	03010113          	addi	sp,sp,48
    80002198:	00008067          	ret

000000008000219c <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    8000219c:	fd010113          	addi	sp,sp,-48
    800021a0:	02113423          	sd	ra,40(sp)
    800021a4:	02813023          	sd	s0,32(sp)
    800021a8:	00913c23          	sd	s1,24(sp)
    800021ac:	01213823          	sd	s2,16(sp)
    800021b0:	01313423          	sd	s3,8(sp)
    800021b4:	03010413          	addi	s0,sp,48
    800021b8:	00050993          	mv	s3,a0
    800021bc:	00058913          	mv	s2,a1

    debug_print("Allocating memory of size: ");
    800021c0:	00007517          	auipc	a0,0x7
    800021c4:	03850513          	addi	a0,a0,56 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	af4080e7          	jalr	-1292(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print(size);
    800021d0:	00090513          	mv	a0,s2
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	ab4080e7          	jalr	-1356(ra) # 80001c88 <_Z11debug_printm>
    debug_print("\n");
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	74450513          	addi	a0,a0,1860 # 80009920 <_ZTV8Consumer+0x298>
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	ad8080e7          	jalr	-1320(ra) # 80001cbc <_Z11debug_printPKc>

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    800021ec:	0009b483          	ld	s1,0(s3)
    800021f0:	0c048263          	beqz	s1,800022b4 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    800021f4:	04f90913          	addi	s2,s2,79
    800021f8:	fc097913          	andi	s2,s2,-64
           & ~(MEM_BLOCK_SIZE - 1);

    debug_print("Aligned size: ");
    800021fc:	00007517          	auipc	a0,0x7
    80002200:	01c50513          	addi	a0,a0,28 # 80009218 <CONSOLE_STATUS+0x208>
    80002204:	00000097          	auipc	ra,0x0
    80002208:	ab8080e7          	jalr	-1352(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print(size);
    8000220c:	00090513          	mv	a0,s2
    80002210:	00000097          	auipc	ra,0x0
    80002214:	a78080e7          	jalr	-1416(ra) # 80001c88 <_Z11debug_printm>
    debug_print("\n");
    80002218:	00007517          	auipc	a0,0x7
    8000221c:	70850513          	addi	a0,a0,1800 # 80009920 <_ZTV8Consumer+0x298>
    80002220:	00000097          	auipc	ra,0x0
    80002224:	a9c080e7          	jalr	-1380(ra) # 80001cbc <_Z11debug_printPKc>

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002228:	0009b483          	ld	s1,0(s3)
    8000222c:	00000713          	li	a4,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002230:	00048c63          	beqz	s1,80002248 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002234:	0084b783          	ld	a5,8(s1)
    80002238:	0127f863          	bgeu	a5,s2,80002248 <_ZN15MemoryAllocator9mem_allocEm+0xac>
        prev_free_block = free_block;
    8000223c:	00048713          	mv	a4,s1
        free_block = free_block->next_;
    80002240:	0004b483          	ld	s1,0(s1)
    while (free_block && free_block->size_ < size) {
    80002244:	fedff06f          	j	80002230 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80002248:	06048663          	beqz	s1,800022b4 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    8000224c:	0084b783          	ld	a5,8(s1)
    80002250:	08f97663          	bgeu	s2,a5,800022dc <_ZN15MemoryAllocator9mem_allocEm+0x140>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    80002254:	012486b3          	add	a3,s1,s2
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80002258:	06070e63          	beqz	a4,800022d4 <_ZN15MemoryAllocator9mem_allocEm+0x138>
            prev_free_block->next_ = new_free_block;
    8000225c:	00d73023          	sd	a3,0(a4)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80002260:	0004b783          	ld	a5,0(s1)
    80002264:	00f6b023          	sd	a5,0(a3)
        new_free_block->size_ = free_block->size_ - size;
    80002268:	0084b783          	ld	a5,8(s1)
    8000226c:	412787b3          	sub	a5,a5,s2
    80002270:	00f6b423          	sd	a5,8(a3)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    80002274:	0124b423          	sd	s2,8(s1)

    debug_print("Allocated block at address: ");
    80002278:	00007517          	auipc	a0,0x7
    8000227c:	fb050513          	addi	a0,a0,-80 # 80009228 <CONSOLE_STATUS+0x218>
    80002280:	00000097          	auipc	ra,0x0
    80002284:	a3c080e7          	jalr	-1476(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002288:	01048913          	addi	s2,s1,16
    8000228c:	00090513          	mv	a0,s2
    80002290:	00000097          	auipc	ra,0x0
    80002294:	9f8080e7          	jalr	-1544(ra) # 80001c88 <_Z11debug_printm>
    debug_print("\n");
    80002298:	00007517          	auipc	a0,0x7
    8000229c:	68850513          	addi	a0,a0,1672 # 80009920 <_ZTV8Consumer+0x298>
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	a1c080e7          	jalr	-1508(ra) # 80001cbc <_Z11debug_printPKc>

    if ((uint64)free_block % MEM_BLOCK_SIZE != 0) {
    800022a8:	03f4f793          	andi	a5,s1,63
    800022ac:	04079663          	bnez	a5,800022f8 <_ZN15MemoryAllocator9mem_allocEm+0x15c>
        debug_print("Free block address: ");
        debug_print((uint64)free_block);
        debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    800022b0:	00090493          	mv	s1,s2
}
    800022b4:	00048513          	mv	a0,s1
    800022b8:	02813083          	ld	ra,40(sp)
    800022bc:	02013403          	ld	s0,32(sp)
    800022c0:	01813483          	ld	s1,24(sp)
    800022c4:	01013903          	ld	s2,16(sp)
    800022c8:	00813983          	ld	s3,8(sp)
    800022cc:	03010113          	addi	sp,sp,48
    800022d0:	00008067          	ret
            free_block_ptr_ = new_free_block;
    800022d4:	00d9b023          	sd	a3,0(s3)
    800022d8:	f89ff06f          	j	80002260 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        if (prev_free_block) {
    800022dc:	00070863          	beqz	a4,800022ec <_ZN15MemoryAllocator9mem_allocEm+0x150>
            prev_free_block->next_ = free_block->next_;
    800022e0:	0004b783          	ld	a5,0(s1)
    800022e4:	00f73023          	sd	a5,0(a4)
    800022e8:	f8dff06f          	j	80002274 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            free_block_ptr_ = free_block->next_;
    800022ec:	0004b783          	ld	a5,0(s1)
    800022f0:	00f9b023          	sd	a5,0(s3)
    800022f4:	f81ff06f          	j	80002274 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        debug_print("Allocated block address is not aligned to MEM_BLOCK_SIZE.\n");
    800022f8:	00007517          	auipc	a0,0x7
    800022fc:	f5050513          	addi	a0,a0,-176 # 80009248 <CONSOLE_STATUS+0x238>
    80002300:	00000097          	auipc	ra,0x0
    80002304:	9bc080e7          	jalr	-1604(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print("Allocated block address: ");
    80002308:	00007517          	auipc	a0,0x7
    8000230c:	f8050513          	addi	a0,a0,-128 # 80009288 <CONSOLE_STATUS+0x278>
    80002310:	00000097          	auipc	ra,0x0
    80002314:	9ac080e7          	jalr	-1620(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002318:	00090513          	mv	a0,s2
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	96c080e7          	jalr	-1684(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\n");
    80002324:	00007517          	auipc	a0,0x7
    80002328:	5fc50513          	addi	a0,a0,1532 # 80009920 <_ZTV8Consumer+0x298>
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	990080e7          	jalr	-1648(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print("Free block address: ");
    80002334:	00007517          	auipc	a0,0x7
    80002338:	f7450513          	addi	a0,a0,-140 # 800092a8 <CONSOLE_STATUS+0x298>
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	980080e7          	jalr	-1664(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print((uint64)free_block);
    80002344:	00048513          	mv	a0,s1
    80002348:	00000097          	auipc	ra,0x0
    8000234c:	940080e7          	jalr	-1728(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\n");
    80002350:	00007517          	auipc	a0,0x7
    80002354:	5d050513          	addi	a0,a0,1488 # 80009920 <_ZTV8Consumer+0x298>
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	964080e7          	jalr	-1692(ra) # 80001cbc <_Z11debug_printPKc>
    80002360:	f51ff06f          	j	800022b0 <_ZN15MemoryAllocator9mem_allocEm+0x114>

0000000080002364 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    80002370:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    80002374:	00000513          	li	a0,0
    while (free_block_iter) {
    80002378:	00078a63          	beqz	a5,8000238c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    8000237c:	0087b703          	ld	a4,8(a5)
    80002380:	fee57ce3          	bgeu	a0,a4,80002378 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    80002384:	00070513          	mv	a0,a4
    80002388:	ff1ff06f          	j	80002378 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    8000238c:	00813403          	ld	s0,8(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00813423          	sd	s0,8(sp)
    800023a0:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    800023a4:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    800023a8:	00000513          	li	a0,0
    while (free_block_iter) {
    800023ac:	00078a63          	beqz	a5,800023c0 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    800023b0:	0087b703          	ld	a4,8(a5)
    800023b4:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    800023b8:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    800023bc:	ff1ff06f          	j	800023ac <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00113c23          	sd	ra,24(sp)
    800023d4:	00813823          	sd	s0,16(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	01213023          	sd	s2,0(sp)
    800023e0:	02010413          	addi	s0,sp,32

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    800023e4:	04058e63          	beqz	a1,80002440 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    800023e8:	00058493          	mv	s1,a1
    800023ec:	00060913          	mv	s2,a2
    800023f0:	04060863          	beqz	a2,80002440 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
        debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    800023f4:	00007597          	auipc	a1,0x7
    800023f8:	f0458593          	addi	a1,a1,-252 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800023fc:	00c4b533          	sltu	a0,s1,a2
    80002400:	00000097          	auipc	ra,0x0
    80002404:	8e4080e7          	jalr	-1820(ra) # 80001ce4 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    80002408:	0084b783          	ld	a5,8(s1)
    8000240c:	00f48733          	add	a4,s1,a5
    80002410:	04e91263          	bne	s2,a4,80002454 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x88>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002414:	00893703          	ld	a4,8(s2)
    80002418:	00e787b3          	add	a5,a5,a4
    8000241c:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002420:	00093783          	ld	a5,0(s2)
    80002424:	00f4b023          	sd	a5,0(s1)
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	00013903          	ld	s2,0(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret
        debug_print("Cannot consolidate blocks, one of them is null.\n");
    80002440:	00007517          	auipc	a0,0x7
    80002444:	e8050513          	addi	a0,a0,-384 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	874080e7          	jalr	-1932(ra) # 80001cbc <_Z11debug_printPKc>
        return;
    80002450:	fd9ff06f          	j	80002428 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        debug_print("First block address: ");
    80002454:	00007517          	auipc	a0,0x7
    80002458:	ee450513          	addi	a0,a0,-284 # 80009338 <CONSOLE_STATUS+0x328>
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	860080e7          	jalr	-1952(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print((uint64)first_block);
    80002464:	00048513          	mv	a0,s1
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	820080e7          	jalr	-2016(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\n");
    80002470:	00007517          	auipc	a0,0x7
    80002474:	4b050513          	addi	a0,a0,1200 # 80009920 <_ZTV8Consumer+0x298>
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	844080e7          	jalr	-1980(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print("First block size: ");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	ed050513          	addi	a0,a0,-304 # 80009350 <CONSOLE_STATUS+0x340>
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	834080e7          	jalr	-1996(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print(first_block->size_);
    80002490:	0084b503          	ld	a0,8(s1)
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	7f4080e7          	jalr	2036(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\n");
    8000249c:	00007517          	auipc	a0,0x7
    800024a0:	48450513          	addi	a0,a0,1156 # 80009920 <_ZTV8Consumer+0x298>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	818080e7          	jalr	-2024(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print("Second block address: ");
    800024ac:	00007517          	auipc	a0,0x7
    800024b0:	ebc50513          	addi	a0,a0,-324 # 80009368 <CONSOLE_STATUS+0x358>
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	808080e7          	jalr	-2040(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print((uint64)second_block);
    800024bc:	00090513          	mv	a0,s2
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	7c8080e7          	jalr	1992(ra) # 80001c88 <_Z11debug_printm>
        debug_print("\n");
    800024c8:	00007517          	auipc	a0,0x7
    800024cc:	45850513          	addi	a0,a0,1112 # 80009920 <_ZTV8Consumer+0x298>
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	7ec080e7          	jalr	2028(ra) # 80001cbc <_Z11debug_printPKc>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
    800024d8:	00007517          	auipc	a0,0x7
    800024dc:	ea850513          	addi	a0,a0,-344 # 80009380 <CONSOLE_STATUS+0x370>
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	7dc080e7          	jalr	2012(ra) # 80001cbc <_Z11debug_printPKc>
        return;
    800024e8:	f41ff06f          	j	80002428 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>

00000000800024ec <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    800024ec:	fc010113          	addi	sp,sp,-64
    800024f0:	02113c23          	sd	ra,56(sp)
    800024f4:	02813823          	sd	s0,48(sp)
    800024f8:	02913423          	sd	s1,40(sp)
    800024fc:	03213023          	sd	s2,32(sp)
    80002500:	01313c23          	sd	s3,24(sp)
    80002504:	01413823          	sd	s4,16(sp)
    80002508:	01513423          	sd	s5,8(sp)
    8000250c:	04010413          	addi	s0,sp,64
    80002510:	00050a93          	mv	s5,a0
    80002514:	00058a13          	mv	s4,a1
    debug_print("Freeing block at address: ");
    80002518:	00007517          	auipc	a0,0x7
    8000251c:	ea050513          	addi	a0,a0,-352 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	79c080e7          	jalr	1948(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print((uint64)free_block_addr);
    80002528:	000a0513          	mv	a0,s4
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	75c080e7          	jalr	1884(ra) # 80001c88 <_Z11debug_printm>
    debug_print("\n");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	3ec50513          	addi	a0,a0,1004 # 80009920 <_ZTV8Consumer+0x298>
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	780080e7          	jalr	1920(ra) # 80001cbc <_Z11debug_printPKc>
    if (!free_block_addr) {
    80002544:	040a0063          	beqz	s4,80002584 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    80002548:	ff0a0993          	addi	s3,s4,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    8000254c:	00098793          	mv	a5,s3
    80002550:	03f9f713          	andi	a4,s3,63
    80002554:	04071463          	bnez	a4,8000259c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002558:	00009717          	auipc	a4,0x9
    8000255c:	12870713          	addi	a4,a4,296 # 8000b680 <HEAP_START_ADDR>
    80002560:	00073703          	ld	a4,0(a4)
    80002564:	04e9e863          	bltu	s3,a4,800025b4 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    80002568:	00009717          	auipc	a4,0x9
    8000256c:	11070713          	addi	a4,a4,272 # 8000b678 <HEAP_END_ADDR>
    80002570:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002574:	04e9f063          	bgeu	s3,a4,800025b4 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    80002578:	000ab483          	ld	s1,0(s5)
    8000257c:	00000913          	li	s2,0
    80002580:	0540006f          	j	800025d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        debug_print("Free block address is null.\n");
    80002584:	00007517          	auipc	a0,0x7
    80002588:	e5450513          	addi	a0,a0,-428 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	730080e7          	jalr	1840(ra) # 80001cbc <_Z11debug_printPKc>
        return -1;
    80002594:	fff00513          	li	a0,-1
    80002598:	1140006f          	j	800026ac <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    8000259c:	00007517          	auipc	a0,0x7
    800025a0:	e5c50513          	addi	a0,a0,-420 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	718080e7          	jalr	1816(ra) # 80001cbc <_Z11debug_printPKc>
        return -2;
    800025ac:	ffe00513          	li	a0,-2
    800025b0:	0fc0006f          	j	800026ac <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not in the heap.\n");
    800025b4:	00007517          	auipc	a0,0x7
    800025b8:	e7c50513          	addi	a0,a0,-388 # 80009430 <CONSOLE_STATUS+0x420>
    800025bc:	fffff097          	auipc	ra,0xfffff
    800025c0:	700080e7          	jalr	1792(ra) # 80001cbc <_Z11debug_printPKc>
        return -3;
    800025c4:	ffd00513          	li	a0,-3
    800025c8:	0e40006f          	j	800026ac <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        prev_free_block = next_free_block;
    800025cc:	00048913          	mv	s2,s1
        next_free_block = next_free_block->next_;
    800025d0:	0004b483          	ld	s1,0(s1)
    while (next_free_block &&
    800025d4:	00048663          	beqz	s1,800025e0 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    800025d8:	fe97fae3          	bgeu	a5,s1,800025cc <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
          !(((uint64)next_free_block > (uint64)block_info) &&
    800025dc:	fef978e3          	bgeu	s2,a5,800025cc <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    debug_print("Prev free block: ");
    800025e0:	00007517          	auipc	a0,0x7
    800025e4:	e7850513          	addi	a0,a0,-392 # 80009458 <CONSOLE_STATUS+0x448>
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	6d4080e7          	jalr	1748(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print((uint64)prev_free_block);
    800025f0:	00090513          	mv	a0,s2
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	694080e7          	jalr	1684(ra) # 80001c88 <_Z11debug_printm>
    debug_print("\n");
    800025fc:	00007517          	auipc	a0,0x7
    80002600:	32450513          	addi	a0,a0,804 # 80009920 <_ZTV8Consumer+0x298>
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	6b8080e7          	jalr	1720(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print("Block info: ");
    8000260c:	00007517          	auipc	a0,0x7
    80002610:	e6450513          	addi	a0,a0,-412 # 80009470 <CONSOLE_STATUS+0x460>
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	6a8080e7          	jalr	1704(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print((uint64)block_info);
    8000261c:	00098513          	mv	a0,s3
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	668080e7          	jalr	1640(ra) # 80001c88 <_Z11debug_printm>
    debug_print("\n");
    80002628:	00007517          	auipc	a0,0x7
    8000262c:	2f850513          	addi	a0,a0,760 # 80009920 <_ZTV8Consumer+0x298>
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	68c080e7          	jalr	1676(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print("Next free block: ");
    80002638:	00007517          	auipc	a0,0x7
    8000263c:	e4850513          	addi	a0,a0,-440 # 80009480 <CONSOLE_STATUS+0x470>
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	67c080e7          	jalr	1660(ra) # 80001cbc <_Z11debug_printPKc>
    debug_print((uint64)next_free_block);
    80002648:	00048513          	mv	a0,s1
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	63c080e7          	jalr	1596(ra) # 80001c88 <_Z11debug_printm>
    debug_print("\n");
    80002654:	00007517          	auipc	a0,0x7
    80002658:	2cc50513          	addi	a0,a0,716 # 80009920 <_ZTV8Consumer+0x298>
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	660080e7          	jalr	1632(ra) # 80001cbc <_Z11debug_printPKc>
    if (!prev_free_block) {
    80002664:	06090663          	beqz	s2,800026d0 <_ZN15MemoryAllocator8mem_freeEPv+0x1e4>
        debug_print("Block is not the first free block.\n");
    80002668:	00007517          	auipc	a0,0x7
    8000266c:	e5050513          	addi	a0,a0,-432 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	64c080e7          	jalr	1612(ra) # 80001cbc <_Z11debug_printPKc>
        prev_free_block->next_ = block_info;
    80002678:	01393023          	sd	s3,0(s2)
    block_info->next_ = next_free_block;
    8000267c:	fe9a3823          	sd	s1,-16(s4)
    maybe_consolidate(block_info, next_free_block);
    80002680:	00048613          	mv	a2,s1
    80002684:	00098593          	mv	a1,s3
    80002688:	000a8513          	mv	a0,s5
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	d40080e7          	jalr	-704(ra) # 800023cc <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80002694:	00098613          	mv	a2,s3
    80002698:	00090593          	mv	a1,s2
    8000269c:	000a8513          	mv	a0,s5
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	d2c080e7          	jalr	-724(ra) # 800023cc <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    800026a8:	00000513          	li	a0,0
}
    800026ac:	03813083          	ld	ra,56(sp)
    800026b0:	03013403          	ld	s0,48(sp)
    800026b4:	02813483          	ld	s1,40(sp)
    800026b8:	02013903          	ld	s2,32(sp)
    800026bc:	01813983          	ld	s3,24(sp)
    800026c0:	01013a03          	ld	s4,16(sp)
    800026c4:	00813a83          	ld	s5,8(sp)
    800026c8:	04010113          	addi	sp,sp,64
    800026cc:	00008067          	ret
        debug_print("Block is the first free block.\n");
    800026d0:	00007517          	auipc	a0,0x7
    800026d4:	dc850513          	addi	a0,a0,-568 # 80009498 <CONSOLE_STATUS+0x488>
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	5e4080e7          	jalr	1508(ra) # 80001cbc <_Z11debug_printPKc>
        free_block_ptr_ = block_info;
    800026e0:	013ab023          	sd	s3,0(s5)
    800026e4:	f99ff06f          	j	8000267c <_ZN15MemoryAllocator8mem_freeEPv+0x190>

00000000800026e8 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800026e8:	00100793          	li	a5,1
    800026ec:	06a7f863          	bgeu	a5,a0,8000275c <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800026f0:	fe010113          	addi	sp,sp,-32
    800026f4:	00113c23          	sd	ra,24(sp)
    800026f8:	00813823          	sd	s0,16(sp)
    800026fc:	00913423          	sd	s1,8(sp)
    80002700:	01213023          	sd	s2,0(sp)
    80002704:	02010413          	addi	s0,sp,32
    80002708:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    8000270c:	00a00793          	li	a5,10
    80002710:	02f577b3          	remu	a5,a0,a5
    80002714:	02078e63          	beqz	a5,80002750 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002718:	fff48513          	addi	a0,s1,-1
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	fcc080e7          	jalr	-52(ra) # 800026e8 <_ZL9fibonaccim>
    80002724:	00050913          	mv	s2,a0
    80002728:	ffe48513          	addi	a0,s1,-2
    8000272c:	00000097          	auipc	ra,0x0
    80002730:	fbc080e7          	jalr	-68(ra) # 800026e8 <_ZL9fibonaccim>
    80002734:	00a90533          	add	a0,s2,a0
}
    80002738:	01813083          	ld	ra,24(sp)
    8000273c:	01013403          	ld	s0,16(sp)
    80002740:	00813483          	ld	s1,8(sp)
    80002744:	00013903          	ld	s2,0(sp)
    80002748:	02010113          	addi	sp,sp,32
    8000274c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	f58080e7          	jalr	-168(ra) # 800016a8 <_Z15thread_dispatchv>
    80002758:	fc1ff06f          	j	80002718 <_ZL9fibonaccim+0x30>
}
    8000275c:	00008067          	ret

0000000080002760 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002760:	fe010113          	addi	sp,sp,-32
    80002764:	00113c23          	sd	ra,24(sp)
    80002768:	00813823          	sd	s0,16(sp)
    8000276c:	00913423          	sd	s1,8(sp)
    80002770:	01213023          	sd	s2,0(sp)
    80002774:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002778:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    8000277c:	00c00793          	li	a5,12
    80002780:	0497e263          	bltu	a5,s1,800027c4 <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80002784:	00007517          	auipc	a0,0x7
    80002788:	d5c50513          	addi	a0,a0,-676 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000278c:	00003097          	auipc	ra,0x3
    80002790:	c48080e7          	jalr	-952(ra) # 800053d4 <_Z11printStringPKc>
    80002794:	00000613          	li	a2,0
    80002798:	00a00593          	li	a1,10
    8000279c:	00048513          	mv	a0,s1
    800027a0:	00003097          	auipc	ra,0x3
    800027a4:	de0080e7          	jalr	-544(ra) # 80005580 <_Z8printIntiii>
    800027a8:	00007517          	auipc	a0,0x7
    800027ac:	17850513          	addi	a0,a0,376 # 80009920 <_ZTV8Consumer+0x298>
    800027b0:	00003097          	auipc	ra,0x3
    800027b4:	c24080e7          	jalr	-988(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800027b8:	0014849b          	addiw	s1,s1,1
    800027bc:	0ff4f493          	andi	s1,s1,255
    800027c0:	fbdff06f          	j	8000277c <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    800027c4:	00007517          	auipc	a0,0x7
    800027c8:	d2450513          	addi	a0,a0,-732 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800027cc:	00003097          	auipc	ra,0x3
    800027d0:	c08080e7          	jalr	-1016(ra) # 800053d4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800027d4:	00500313          	li	t1,5
    thread_dispatch();
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	ed0080e7          	jalr	-304(ra) # 800016a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800027e0:	01000513          	li	a0,16
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	f04080e7          	jalr	-252(ra) # 800026e8 <_ZL9fibonaccim>
    800027ec:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800027f0:	00007517          	auipc	a0,0x7
    800027f4:	d0850513          	addi	a0,a0,-760 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800027f8:	00003097          	auipc	ra,0x3
    800027fc:	bdc080e7          	jalr	-1060(ra) # 800053d4 <_Z11printStringPKc>
    80002800:	00000613          	li	a2,0
    80002804:	00a00593          	li	a1,10
    80002808:	0009051b          	sext.w	a0,s2
    8000280c:	00003097          	auipc	ra,0x3
    80002810:	d74080e7          	jalr	-652(ra) # 80005580 <_Z8printIntiii>
    80002814:	00007517          	auipc	a0,0x7
    80002818:	10c50513          	addi	a0,a0,268 # 80009920 <_ZTV8Consumer+0x298>
    8000281c:	00003097          	auipc	ra,0x3
    80002820:	bb8080e7          	jalr	-1096(ra) # 800053d4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80002824:	00f00793          	li	a5,15
    80002828:	0497e263          	bltu	a5,s1,8000286c <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    8000282c:	00007517          	auipc	a0,0x7
    80002830:	cb450513          	addi	a0,a0,-844 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80002834:	00003097          	auipc	ra,0x3
    80002838:	ba0080e7          	jalr	-1120(ra) # 800053d4 <_Z11printStringPKc>
    8000283c:	00000613          	li	a2,0
    80002840:	00a00593          	li	a1,10
    80002844:	00048513          	mv	a0,s1
    80002848:	00003097          	auipc	ra,0x3
    8000284c:	d38080e7          	jalr	-712(ra) # 80005580 <_Z8printIntiii>
    80002850:	00007517          	auipc	a0,0x7
    80002854:	0d050513          	addi	a0,a0,208 # 80009920 <_ZTV8Consumer+0x298>
    80002858:	00003097          	auipc	ra,0x3
    8000285c:	b7c080e7          	jalr	-1156(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002860:	0014849b          	addiw	s1,s1,1
    80002864:	0ff4f493          	andi	s1,s1,255
    80002868:	fbdff06f          	j	80002824 <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    8000286c:	00007517          	auipc	a0,0x7
    80002870:	c9c50513          	addi	a0,a0,-868 # 80009508 <CONSOLE_STATUS+0x4f8>
    80002874:	00003097          	auipc	ra,0x3
    80002878:	b60080e7          	jalr	-1184(ra) # 800053d4 <_Z11printStringPKc>
    finishedD = true;
    8000287c:	00100793          	li	a5,1
    80002880:	00009717          	auipc	a4,0x9
    80002884:	02f70c23          	sb	a5,56(a4) # 8000b8b8 <_ZL9finishedD>
    thread_dispatch();
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	e20080e7          	jalr	-480(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	00013903          	ld	s2,0(sp)
    800028a0:	02010113          	addi	sp,sp,32
    800028a4:	00008067          	ret

00000000800028a8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	01213023          	sd	s2,0(sp)
    800028bc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800028c0:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800028c4:	00200793          	li	a5,2
    800028c8:	0497e263          	bltu	a5,s1,8000290c <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    800028cc:	00007517          	auipc	a0,0x7
    800028d0:	c4c50513          	addi	a0,a0,-948 # 80009518 <CONSOLE_STATUS+0x508>
    800028d4:	00003097          	auipc	ra,0x3
    800028d8:	b00080e7          	jalr	-1280(ra) # 800053d4 <_Z11printStringPKc>
    800028dc:	00000613          	li	a2,0
    800028e0:	00a00593          	li	a1,10
    800028e4:	00048513          	mv	a0,s1
    800028e8:	00003097          	auipc	ra,0x3
    800028ec:	c98080e7          	jalr	-872(ra) # 80005580 <_Z8printIntiii>
    800028f0:	00007517          	auipc	a0,0x7
    800028f4:	03050513          	addi	a0,a0,48 # 80009920 <_ZTV8Consumer+0x298>
    800028f8:	00003097          	auipc	ra,0x3
    800028fc:	adc080e7          	jalr	-1316(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002900:	0014849b          	addiw	s1,s1,1
    80002904:	0ff4f493          	andi	s1,s1,255
    80002908:	fbdff06f          	j	800028c4 <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    8000290c:	00007517          	auipc	a0,0x7
    80002910:	c1450513          	addi	a0,a0,-1004 # 80009520 <CONSOLE_STATUS+0x510>
    80002914:	00003097          	auipc	ra,0x3
    80002918:	ac0080e7          	jalr	-1344(ra) # 800053d4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000291c:	00700313          	li	t1,7
    thread_dispatch();
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	d88080e7          	jalr	-632(ra) # 800016a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002928:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000292c:	00007517          	auipc	a0,0x7
    80002930:	c0450513          	addi	a0,a0,-1020 # 80009530 <CONSOLE_STATUS+0x520>
    80002934:	00003097          	auipc	ra,0x3
    80002938:	aa0080e7          	jalr	-1376(ra) # 800053d4 <_Z11printStringPKc>
    8000293c:	00000613          	li	a2,0
    80002940:	00a00593          	li	a1,10
    80002944:	0009051b          	sext.w	a0,s2
    80002948:	00003097          	auipc	ra,0x3
    8000294c:	c38080e7          	jalr	-968(ra) # 80005580 <_Z8printIntiii>
    80002950:	00007517          	auipc	a0,0x7
    80002954:	fd050513          	addi	a0,a0,-48 # 80009920 <_ZTV8Consumer+0x298>
    80002958:	00003097          	auipc	ra,0x3
    8000295c:	a7c080e7          	jalr	-1412(ra) # 800053d4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002960:	00c00513          	li	a0,12
    80002964:	00000097          	auipc	ra,0x0
    80002968:	d84080e7          	jalr	-636(ra) # 800026e8 <_ZL9fibonaccim>
    8000296c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002970:	00007517          	auipc	a0,0x7
    80002974:	bc850513          	addi	a0,a0,-1080 # 80009538 <CONSOLE_STATUS+0x528>
    80002978:	00003097          	auipc	ra,0x3
    8000297c:	a5c080e7          	jalr	-1444(ra) # 800053d4 <_Z11printStringPKc>
    80002980:	00000613          	li	a2,0
    80002984:	00a00593          	li	a1,10
    80002988:	0009051b          	sext.w	a0,s2
    8000298c:	00003097          	auipc	ra,0x3
    80002990:	bf4080e7          	jalr	-1036(ra) # 80005580 <_Z8printIntiii>
    80002994:	00007517          	auipc	a0,0x7
    80002998:	f8c50513          	addi	a0,a0,-116 # 80009920 <_ZTV8Consumer+0x298>
    8000299c:	00003097          	auipc	ra,0x3
    800029a0:	a38080e7          	jalr	-1480(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800029a4:	00500793          	li	a5,5
    800029a8:	0497e263          	bltu	a5,s1,800029ec <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    800029ac:	00007517          	auipc	a0,0x7
    800029b0:	b6c50513          	addi	a0,a0,-1172 # 80009518 <CONSOLE_STATUS+0x508>
    800029b4:	00003097          	auipc	ra,0x3
    800029b8:	a20080e7          	jalr	-1504(ra) # 800053d4 <_Z11printStringPKc>
    800029bc:	00000613          	li	a2,0
    800029c0:	00a00593          	li	a1,10
    800029c4:	00048513          	mv	a0,s1
    800029c8:	00003097          	auipc	ra,0x3
    800029cc:	bb8080e7          	jalr	-1096(ra) # 80005580 <_Z8printIntiii>
    800029d0:	00007517          	auipc	a0,0x7
    800029d4:	f5050513          	addi	a0,a0,-176 # 80009920 <_ZTV8Consumer+0x298>
    800029d8:	00003097          	auipc	ra,0x3
    800029dc:	9fc080e7          	jalr	-1540(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800029e0:	0014849b          	addiw	s1,s1,1
    800029e4:	0ff4f493          	andi	s1,s1,255
    800029e8:	fbdff06f          	j	800029a4 <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    800029ec:	00007517          	auipc	a0,0x7
    800029f0:	b5c50513          	addi	a0,a0,-1188 # 80009548 <CONSOLE_STATUS+0x538>
    800029f4:	00003097          	auipc	ra,0x3
    800029f8:	9e0080e7          	jalr	-1568(ra) # 800053d4 <_Z11printStringPKc>
    finishedC = true;
    800029fc:	00100793          	li	a5,1
    80002a00:	00009717          	auipc	a4,0x9
    80002a04:	eaf70ca3          	sb	a5,-327(a4) # 8000b8b9 <_ZL9finishedC>
    thread_dispatch();
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	ca0080e7          	jalr	-864(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80002a10:	01813083          	ld	ra,24(sp)
    80002a14:	01013403          	ld	s0,16(sp)
    80002a18:	00813483          	ld	s1,8(sp)
    80002a1c:	00013903          	ld	s2,0(sp)
    80002a20:	02010113          	addi	sp,sp,32
    80002a24:	00008067          	ret

0000000080002a28 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002a28:	fe010113          	addi	sp,sp,-32
    80002a2c:	00113c23          	sd	ra,24(sp)
    80002a30:	00813823          	sd	s0,16(sp)
    80002a34:	00913423          	sd	s1,8(sp)
    80002a38:	01213023          	sd	s2,0(sp)
    80002a3c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002a40:	00000913          	li	s2,0
    80002a44:	0400006f          	j	80002a84 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	c60080e7          	jalr	-928(ra) # 800016a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a50:	00148493          	addi	s1,s1,1
    80002a54:	000027b7          	lui	a5,0x2
    80002a58:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a5c:	0097ee63          	bltu	a5,s1,80002a78 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a60:	00000713          	li	a4,0
    80002a64:	000077b7          	lui	a5,0x7
    80002a68:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a6c:	fce7eee3          	bltu	a5,a4,80002a48 <_ZL11workerBodyBPv+0x20>
    80002a70:	00170713          	addi	a4,a4,1
    80002a74:	ff1ff06f          	j	80002a64 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80002a78:	00a00793          	li	a5,10
    80002a7c:	04f90663          	beq	s2,a5,80002ac8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80002a80:	00190913          	addi	s2,s2,1
    80002a84:	00f00793          	li	a5,15
    80002a88:	0527e463          	bltu	a5,s2,80002ad0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80002a8c:	00007517          	auipc	a0,0x7
    80002a90:	acc50513          	addi	a0,a0,-1332 # 80009558 <CONSOLE_STATUS+0x548>
    80002a94:	00003097          	auipc	ra,0x3
    80002a98:	940080e7          	jalr	-1728(ra) # 800053d4 <_Z11printStringPKc>
    80002a9c:	00000613          	li	a2,0
    80002aa0:	00a00593          	li	a1,10
    80002aa4:	0009051b          	sext.w	a0,s2
    80002aa8:	00003097          	auipc	ra,0x3
    80002aac:	ad8080e7          	jalr	-1320(ra) # 80005580 <_Z8printIntiii>
    80002ab0:	00007517          	auipc	a0,0x7
    80002ab4:	e7050513          	addi	a0,a0,-400 # 80009920 <_ZTV8Consumer+0x298>
    80002ab8:	00003097          	auipc	ra,0x3
    80002abc:	91c080e7          	jalr	-1764(ra) # 800053d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ac0:	00000493          	li	s1,0
    80002ac4:	f91ff06f          	j	80002a54 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80002ac8:	14102ff3          	csrr	t6,sepc
    80002acc:	fb5ff06f          	j	80002a80 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80002ad0:	00007517          	auipc	a0,0x7
    80002ad4:	a9050513          	addi	a0,a0,-1392 # 80009560 <CONSOLE_STATUS+0x550>
    80002ad8:	00003097          	auipc	ra,0x3
    80002adc:	8fc080e7          	jalr	-1796(ra) # 800053d4 <_Z11printStringPKc>
    finishedB = true;
    80002ae0:	00100793          	li	a5,1
    80002ae4:	00009717          	auipc	a4,0x9
    80002ae8:	dcf70b23          	sb	a5,-554(a4) # 8000b8ba <_ZL9finishedB>
    thread_dispatch();
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	bbc080e7          	jalr	-1092(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80002af4:	01813083          	ld	ra,24(sp)
    80002af8:	01013403          	ld	s0,16(sp)
    80002afc:	00813483          	ld	s1,8(sp)
    80002b00:	00013903          	ld	s2,0(sp)
    80002b04:	02010113          	addi	sp,sp,32
    80002b08:	00008067          	ret

0000000080002b0c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002b0c:	fe010113          	addi	sp,sp,-32
    80002b10:	00113c23          	sd	ra,24(sp)
    80002b14:	00813823          	sd	s0,16(sp)
    80002b18:	00913423          	sd	s1,8(sp)
    80002b1c:	01213023          	sd	s2,0(sp)
    80002b20:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002b24:	00000913          	li	s2,0
    80002b28:	0380006f          	j	80002b60 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	b7c080e7          	jalr	-1156(ra) # 800016a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b34:	00148493          	addi	s1,s1,1
    80002b38:	000027b7          	lui	a5,0x2
    80002b3c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b40:	0097ee63          	bltu	a5,s1,80002b5c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b44:	00000713          	li	a4,0
    80002b48:	000077b7          	lui	a5,0x7
    80002b4c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b50:	fce7eee3          	bltu	a5,a4,80002b2c <_ZL11workerBodyAPv+0x20>
    80002b54:	00170713          	addi	a4,a4,1
    80002b58:	ff1ff06f          	j	80002b48 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002b5c:	00190913          	addi	s2,s2,1
    80002b60:	00900793          	li	a5,9
    80002b64:	0527e063          	bltu	a5,s2,80002ba4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002b68:	00007517          	auipc	a0,0x7
    80002b6c:	a0850513          	addi	a0,a0,-1528 # 80009570 <CONSOLE_STATUS+0x560>
    80002b70:	00003097          	auipc	ra,0x3
    80002b74:	864080e7          	jalr	-1948(ra) # 800053d4 <_Z11printStringPKc>
    80002b78:	00000613          	li	a2,0
    80002b7c:	00a00593          	li	a1,10
    80002b80:	0009051b          	sext.w	a0,s2
    80002b84:	00003097          	auipc	ra,0x3
    80002b88:	9fc080e7          	jalr	-1540(ra) # 80005580 <_Z8printIntiii>
    80002b8c:	00007517          	auipc	a0,0x7
    80002b90:	d9450513          	addi	a0,a0,-620 # 80009920 <_ZTV8Consumer+0x298>
    80002b94:	00003097          	auipc	ra,0x3
    80002b98:	840080e7          	jalr	-1984(ra) # 800053d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b9c:	00000493          	li	s1,0
    80002ba0:	f99ff06f          	j	80002b38 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002ba4:	00007517          	auipc	a0,0x7
    80002ba8:	9a450513          	addi	a0,a0,-1628 # 80009548 <CONSOLE_STATUS+0x538>
    80002bac:	00003097          	auipc	ra,0x3
    80002bb0:	828080e7          	jalr	-2008(ra) # 800053d4 <_Z11printStringPKc>
    finishedA = true;
    80002bb4:	00100793          	li	a5,1
    80002bb8:	00009717          	auipc	a4,0x9
    80002bbc:	d0f701a3          	sb	a5,-765(a4) # 8000b8bb <_ZL9finishedA>
}
    80002bc0:	01813083          	ld	ra,24(sp)
    80002bc4:	01013403          	ld	s0,16(sp)
    80002bc8:	00813483          	ld	s1,8(sp)
    80002bcc:	00013903          	ld	s2,0(sp)
    80002bd0:	02010113          	addi	sp,sp,32
    80002bd4:	00008067          	ret

0000000080002bd8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002bd8:	fd010113          	addi	sp,sp,-48
    80002bdc:	02113423          	sd	ra,40(sp)
    80002be0:	02813023          	sd	s0,32(sp)
    80002be4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002be8:	00000613          	li	a2,0
    80002bec:	00000597          	auipc	a1,0x0
    80002bf0:	f2058593          	addi	a1,a1,-224 # 80002b0c <_ZL11workerBodyAPv>
    80002bf4:	fd040513          	addi	a0,s0,-48
    80002bf8:	fffff097          	auipc	ra,0xfffff
    80002bfc:	a10080e7          	jalr	-1520(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002c00:	00007517          	auipc	a0,0x7
    80002c04:	97850513          	addi	a0,a0,-1672 # 80009578 <CONSOLE_STATUS+0x568>
    80002c08:	00002097          	auipc	ra,0x2
    80002c0c:	7cc080e7          	jalr	1996(ra) # 800053d4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002c10:	00000613          	li	a2,0
    80002c14:	00000597          	auipc	a1,0x0
    80002c18:	e1458593          	addi	a1,a1,-492 # 80002a28 <_ZL11workerBodyBPv>
    80002c1c:	fd840513          	addi	a0,s0,-40
    80002c20:	fffff097          	auipc	ra,0xfffff
    80002c24:	9e8080e7          	jalr	-1560(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002c28:	00007517          	auipc	a0,0x7
    80002c2c:	96850513          	addi	a0,a0,-1688 # 80009590 <CONSOLE_STATUS+0x580>
    80002c30:	00002097          	auipc	ra,0x2
    80002c34:	7a4080e7          	jalr	1956(ra) # 800053d4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002c38:	00000613          	li	a2,0
    80002c3c:	00000597          	auipc	a1,0x0
    80002c40:	c6c58593          	addi	a1,a1,-916 # 800028a8 <_ZL11workerBodyCPv>
    80002c44:	fe040513          	addi	a0,s0,-32
    80002c48:	fffff097          	auipc	ra,0xfffff
    80002c4c:	9c0080e7          	jalr	-1600(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002c50:	00007517          	auipc	a0,0x7
    80002c54:	95850513          	addi	a0,a0,-1704 # 800095a8 <CONSOLE_STATUS+0x598>
    80002c58:	00002097          	auipc	ra,0x2
    80002c5c:	77c080e7          	jalr	1916(ra) # 800053d4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002c60:	00000613          	li	a2,0
    80002c64:	00000597          	auipc	a1,0x0
    80002c68:	afc58593          	addi	a1,a1,-1284 # 80002760 <_ZL11workerBodyDPv>
    80002c6c:	fe840513          	addi	a0,s0,-24
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	998080e7          	jalr	-1640(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80002c78:	00007517          	auipc	a0,0x7
    80002c7c:	94850513          	addi	a0,a0,-1720 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002c80:	00002097          	auipc	ra,0x2
    80002c84:	754080e7          	jalr	1876(ra) # 800053d4 <_Z11printStringPKc>
    80002c88:	00c0006f          	j	80002c94 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	a1c080e7          	jalr	-1508(ra) # 800016a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002c94:	00009797          	auipc	a5,0x9
    80002c98:	c2778793          	addi	a5,a5,-985 # 8000b8bb <_ZL9finishedA>
    80002c9c:	0007c783          	lbu	a5,0(a5)
    80002ca0:	0ff7f793          	andi	a5,a5,255
    80002ca4:	fe0784e3          	beqz	a5,80002c8c <_Z16System_Mode_testv+0xb4>
    80002ca8:	00009797          	auipc	a5,0x9
    80002cac:	c1278793          	addi	a5,a5,-1006 # 8000b8ba <_ZL9finishedB>
    80002cb0:	0007c783          	lbu	a5,0(a5)
    80002cb4:	0ff7f793          	andi	a5,a5,255
    80002cb8:	fc078ae3          	beqz	a5,80002c8c <_Z16System_Mode_testv+0xb4>
    80002cbc:	00009797          	auipc	a5,0x9
    80002cc0:	bfd78793          	addi	a5,a5,-1027 # 8000b8b9 <_ZL9finishedC>
    80002cc4:	0007c783          	lbu	a5,0(a5)
    80002cc8:	0ff7f793          	andi	a5,a5,255
    80002ccc:	fc0780e3          	beqz	a5,80002c8c <_Z16System_Mode_testv+0xb4>
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	be878793          	addi	a5,a5,-1048 # 8000b8b8 <_ZL9finishedD>
    80002cd8:	0007c783          	lbu	a5,0(a5)
    80002cdc:	0ff7f793          	andi	a5,a5,255
    80002ce0:	fa0786e3          	beqz	a5,80002c8c <_Z16System_Mode_testv+0xb4>
    }

}
    80002ce4:	02813083          	ld	ra,40(sp)
    80002ce8:	02013403          	ld	s0,32(sp)
    80002cec:	03010113          	addi	sp,sp,48
    80002cf0:	00008067          	ret

0000000080002cf4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002cf4:	fe010113          	addi	sp,sp,-32
    80002cf8:	00113c23          	sd	ra,24(sp)
    80002cfc:	00813823          	sd	s0,16(sp)
    80002d00:	00913423          	sd	s1,8(sp)
    80002d04:	01213023          	sd	s2,0(sp)
    80002d08:	02010413          	addi	s0,sp,32
    80002d0c:	00050493          	mv	s1,a0
    80002d10:	00058913          	mv	s2,a1
    80002d14:	0015879b          	addiw	a5,a1,1
    80002d18:	0007851b          	sext.w	a0,a5
    80002d1c:	00f4a023          	sw	a5,0(s1)
    80002d20:	0004a823          	sw	zero,16(s1)
    80002d24:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002d28:	00251513          	slli	a0,a0,0x2
    80002d2c:	ffffe097          	auipc	ra,0xffffe
    80002d30:	7a8080e7          	jalr	1960(ra) # 800014d4 <_Z9mem_allocm>
    80002d34:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002d38:	00000593          	li	a1,0
    80002d3c:	02048513          	addi	a0,s1,32
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	9b4080e7          	jalr	-1612(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    80002d48:	00090593          	mv	a1,s2
    80002d4c:	01848513          	addi	a0,s1,24
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	9a4080e7          	jalr	-1628(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    80002d58:	00100593          	li	a1,1
    80002d5c:	02848513          	addi	a0,s1,40
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	994080e7          	jalr	-1644(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    80002d68:	00100593          	li	a1,1
    80002d6c:	03048513          	addi	a0,s1,48
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	984080e7          	jalr	-1660(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
}
    80002d78:	01813083          	ld	ra,24(sp)
    80002d7c:	01013403          	ld	s0,16(sp)
    80002d80:	00813483          	ld	s1,8(sp)
    80002d84:	00013903          	ld	s2,0(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret

0000000080002d90 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	00813823          	sd	s0,16(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	01213023          	sd	s2,0(sp)
    80002da4:	02010413          	addi	s0,sp,32
    80002da8:	00050493          	mv	s1,a0
    80002dac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002db0:	01853503          	ld	a0,24(a0)
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	9e4080e7          	jalr	-1564(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80002dbc:	0304b503          	ld	a0,48(s1)
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	9d8080e7          	jalr	-1576(ra) # 80001798 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80002dc8:	0084b783          	ld	a5,8(s1)
    80002dcc:	0144a703          	lw	a4,20(s1)
    80002dd0:	00271713          	slli	a4,a4,0x2
    80002dd4:	00e787b3          	add	a5,a5,a4
    80002dd8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002ddc:	0144a783          	lw	a5,20(s1)
    80002de0:	0017879b          	addiw	a5,a5,1
    80002de4:	0004a703          	lw	a4,0(s1)
    80002de8:	02e7e7bb          	remw	a5,a5,a4
    80002dec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002df0:	0304b503          	ld	a0,48(s1)
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	9f4080e7          	jalr	-1548(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80002dfc:	0204b503          	ld	a0,32(s1)
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	9e8080e7          	jalr	-1560(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

}
    80002e08:	01813083          	ld	ra,24(sp)
    80002e0c:	01013403          	ld	s0,16(sp)
    80002e10:	00813483          	ld	s1,8(sp)
    80002e14:	00013903          	ld	s2,0(sp)
    80002e18:	02010113          	addi	sp,sp,32
    80002e1c:	00008067          	ret

0000000080002e20 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002e20:	fe010113          	addi	sp,sp,-32
    80002e24:	00113c23          	sd	ra,24(sp)
    80002e28:	00813823          	sd	s0,16(sp)
    80002e2c:	00913423          	sd	s1,8(sp)
    80002e30:	01213023          	sd	s2,0(sp)
    80002e34:	02010413          	addi	s0,sp,32
    80002e38:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002e3c:	02053503          	ld	a0,32(a0)
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	958080e7          	jalr	-1704(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    80002e48:	0284b503          	ld	a0,40(s1)
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	94c080e7          	jalr	-1716(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80002e54:	0084b703          	ld	a4,8(s1)
    80002e58:	0104a783          	lw	a5,16(s1)
    80002e5c:	00279693          	slli	a3,a5,0x2
    80002e60:	00d70733          	add	a4,a4,a3
    80002e64:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002e68:	0017879b          	addiw	a5,a5,1
    80002e6c:	0004a703          	lw	a4,0(s1)
    80002e70:	02e7e7bb          	remw	a5,a5,a4
    80002e74:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002e78:	0284b503          	ld	a0,40(s1)
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	96c080e7          	jalr	-1684(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    80002e84:	0184b503          	ld	a0,24(s1)
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	960080e7          	jalr	-1696(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80002e90:	00090513          	mv	a0,s2
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00813483          	ld	s1,8(sp)
    80002ea0:	00013903          	ld	s2,0(sp)
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00008067          	ret

0000000080002eac <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002eac:	fe010113          	addi	sp,sp,-32
    80002eb0:	00113c23          	sd	ra,24(sp)
    80002eb4:	00813823          	sd	s0,16(sp)
    80002eb8:	00913423          	sd	s1,8(sp)
    80002ebc:	01213023          	sd	s2,0(sp)
    80002ec0:	02010413          	addi	s0,sp,32
    80002ec4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002ec8:	02853503          	ld	a0,40(a0)
    80002ecc:	fffff097          	auipc	ra,0xfffff
    80002ed0:	8cc080e7          	jalr	-1844(ra) # 80001798 <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80002ed4:	0304b503          	ld	a0,48(s1)
    80002ed8:	fffff097          	auipc	ra,0xfffff
    80002edc:	8c0080e7          	jalr	-1856(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80002ee0:	0144a783          	lw	a5,20(s1)
    80002ee4:	0104a903          	lw	s2,16(s1)
    80002ee8:	0327ce63          	blt	a5,s2,80002f24 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002eec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002ef0:	0304b503          	ld	a0,48(s1)
    80002ef4:	fffff097          	auipc	ra,0xfffff
    80002ef8:	8f4080e7          	jalr	-1804(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    80002efc:	0284b503          	ld	a0,40(s1)
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	8e8080e7          	jalr	-1816(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80002f08:	00090513          	mv	a0,s2
    80002f0c:	01813083          	ld	ra,24(sp)
    80002f10:	01013403          	ld	s0,16(sp)
    80002f14:	00813483          	ld	s1,8(sp)
    80002f18:	00013903          	ld	s2,0(sp)
    80002f1c:	02010113          	addi	sp,sp,32
    80002f20:	00008067          	ret
        ret = cap - head + tail;
    80002f24:	0004a703          	lw	a4,0(s1)
    80002f28:	4127093b          	subw	s2,a4,s2
    80002f2c:	00f9093b          	addw	s2,s2,a5
    80002f30:	fc1ff06f          	j	80002ef0 <_ZN6Buffer6getCntEv+0x44>

0000000080002f34 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002f34:	fe010113          	addi	sp,sp,-32
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	00813823          	sd	s0,16(sp)
    80002f40:	00913423          	sd	s1,8(sp)
    80002f44:	02010413          	addi	s0,sp,32
    80002f48:	00050493          	mv	s1,a0
    putc('\n');
    80002f4c:	00a00513          	li	a0,10
    80002f50:	fffff097          	auipc	ra,0xfffff
    80002f54:	92c080e7          	jalr	-1748(ra) # 8000187c <_Z4putcc>
    printString("Buffer deleted!\n");
    80002f58:	00006517          	auipc	a0,0x6
    80002f5c:	68050513          	addi	a0,a0,1664 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80002f60:	00002097          	auipc	ra,0x2
    80002f64:	474080e7          	jalr	1140(ra) # 800053d4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002f68:	00048513          	mv	a0,s1
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	f40080e7          	jalr	-192(ra) # 80002eac <_ZN6Buffer6getCntEv>
    80002f74:	02a05c63          	blez	a0,80002fac <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80002f78:	0084b783          	ld	a5,8(s1)
    80002f7c:	0104a703          	lw	a4,16(s1)
    80002f80:	00271713          	slli	a4,a4,0x2
    80002f84:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80002f88:	0007c503          	lbu	a0,0(a5)
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	8f0080e7          	jalr	-1808(ra) # 8000187c <_Z4putcc>
        head = (head + 1) % cap;
    80002f94:	0104a783          	lw	a5,16(s1)
    80002f98:	0017879b          	addiw	a5,a5,1
    80002f9c:	0004a703          	lw	a4,0(s1)
    80002fa0:	02e7e7bb          	remw	a5,a5,a4
    80002fa4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80002fa8:	fc1ff06f          	j	80002f68 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80002fac:	02100513          	li	a0,33
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	8cc080e7          	jalr	-1844(ra) # 8000187c <_Z4putcc>
    putc('\n');
    80002fb8:	00a00513          	li	a0,10
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	8c0080e7          	jalr	-1856(ra) # 8000187c <_Z4putcc>
    mem_free(buffer);
    80002fc4:	0084b503          	ld	a0,8(s1)
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	558080e7          	jalr	1368(ra) # 80001520 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80002fd0:	0204b503          	ld	a0,32(s1)
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	774080e7          	jalr	1908(ra) # 80001748 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    80002fdc:	0184b503          	ld	a0,24(s1)
    80002fe0:	ffffe097          	auipc	ra,0xffffe
    80002fe4:	768080e7          	jalr	1896(ra) # 80001748 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    80002fe8:	0304b503          	ld	a0,48(s1)
    80002fec:	ffffe097          	auipc	ra,0xffffe
    80002ff0:	75c080e7          	jalr	1884(ra) # 80001748 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    80002ff4:	0284b503          	ld	a0,40(s1)
    80002ff8:	ffffe097          	auipc	ra,0xffffe
    80002ffc:	750080e7          	jalr	1872(ra) # 80001748 <_Z9sem_closeP10_semaphore>
}
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	02010113          	addi	sp,sp,32
    80003010:	00008067          	ret

0000000080003014 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003014:	f8010113          	addi	sp,sp,-128
    80003018:	06113c23          	sd	ra,120(sp)
    8000301c:	06813823          	sd	s0,112(sp)
    80003020:	06913423          	sd	s1,104(sp)
    80003024:	07213023          	sd	s2,96(sp)
    80003028:	05313c23          	sd	s3,88(sp)
    8000302c:	05413823          	sd	s4,80(sp)
    80003030:	05513423          	sd	s5,72(sp)
    80003034:	05613023          	sd	s6,64(sp)
    80003038:	03713c23          	sd	s7,56(sp)
    8000303c:	03813823          	sd	s8,48(sp)
    80003040:	03913423          	sd	s9,40(sp)
    80003044:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003048:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000304c:	00006517          	auipc	a0,0x6
    80003050:	66450513          	addi	a0,a0,1636 # 800096b0 <_ZTV8Consumer+0x28>
    80003054:	00002097          	auipc	ra,0x2
    80003058:	380080e7          	jalr	896(ra) # 800053d4 <_Z11printStringPKc>
    getString(input, 30);
    8000305c:	01e00593          	li	a1,30
    80003060:	f8040513          	addi	a0,s0,-128
    80003064:	00002097          	auipc	ra,0x2
    80003068:	3f8080e7          	jalr	1016(ra) # 8000545c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000306c:	f8040513          	addi	a0,s0,-128
    80003070:	00002097          	auipc	ra,0x2
    80003074:	4c0080e7          	jalr	1216(ra) # 80005530 <_Z11stringToIntPKc>
    80003078:	00050a13          	mv	s4,a0
    printString("Unesite velicinu bafera?\n");
    8000307c:	00006517          	auipc	a0,0x6
    80003080:	65450513          	addi	a0,a0,1620 # 800096d0 <_ZTV8Consumer+0x48>
    80003084:	00002097          	auipc	ra,0x2
    80003088:	350080e7          	jalr	848(ra) # 800053d4 <_Z11printStringPKc>
    getString(input, 30);
    8000308c:	01e00593          	li	a1,30
    80003090:	f8040513          	addi	a0,s0,-128
    80003094:	00002097          	auipc	ra,0x2
    80003098:	3c8080e7          	jalr	968(ra) # 8000545c <_Z9getStringPci>
    n = stringToInt(input);
    8000309c:	f8040513          	addi	a0,s0,-128
    800030a0:	00002097          	auipc	ra,0x2
    800030a4:	490080e7          	jalr	1168(ra) # 80005530 <_Z11stringToIntPKc>
    800030a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800030ac:	00006517          	auipc	a0,0x6
    800030b0:	64450513          	addi	a0,a0,1604 # 800096f0 <_ZTV8Consumer+0x68>
    800030b4:	00002097          	auipc	ra,0x2
    800030b8:	320080e7          	jalr	800(ra) # 800053d4 <_Z11printStringPKc>
    printInt(threadNum);
    800030bc:	00000613          	li	a2,0
    800030c0:	00a00593          	li	a1,10
    800030c4:	000a0513          	mv	a0,s4
    800030c8:	00002097          	auipc	ra,0x2
    800030cc:	4b8080e7          	jalr	1208(ra) # 80005580 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800030d0:	00006517          	auipc	a0,0x6
    800030d4:	63850513          	addi	a0,a0,1592 # 80009708 <_ZTV8Consumer+0x80>
    800030d8:	00002097          	auipc	ra,0x2
    800030dc:	2fc080e7          	jalr	764(ra) # 800053d4 <_Z11printStringPKc>
    printInt(n);
    800030e0:	00000613          	li	a2,0
    800030e4:	00a00593          	li	a1,10
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00002097          	auipc	ra,0x2
    800030f0:	494080e7          	jalr	1172(ra) # 80005580 <_Z8printIntiii>
    printString(".\n");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	18c50513          	addi	a0,a0,396 # 80009280 <CONSOLE_STATUS+0x270>
    800030fc:	00002097          	auipc	ra,0x2
    80003100:	2d8080e7          	jalr	728(ra) # 800053d4 <_Z11printStringPKc>
    if (threadNum > n) {
    80003104:	0344c463          	blt	s1,s4,8000312c <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    80003108:	03405c63          	blez	s4,80003140 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    8000310c:	03800513          	li	a0,56
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	a78080e7          	jalr	-1416(ra) # 80001b88 <_Znwm>
    80003118:	00050b13          	mv	s6,a0
    8000311c:	00048593          	mv	a1,s1
    80003120:	00003097          	auipc	ra,0x3
    80003124:	aa4080e7          	jalr	-1372(ra) # 80005bc4 <_ZN9BufferCPPC1Ei>
    80003128:	0300006f          	j	80003158 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	5f450513          	addi	a0,a0,1524 # 80009720 <_ZTV8Consumer+0x98>
    80003134:	00002097          	auipc	ra,0x2
    80003138:	2a0080e7          	jalr	672(ra) # 800053d4 <_Z11printStringPKc>
        return;
    8000313c:	0140006f          	j	80003150 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003140:	00006517          	auipc	a0,0x6
    80003144:	62050513          	addi	a0,a0,1568 # 80009760 <_ZTV8Consumer+0xd8>
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	28c080e7          	jalr	652(ra) # 800053d4 <_Z11printStringPKc>
        return;
    80003150:	000c0113          	mv	sp,s8
    80003154:	2980006f          	j	800033ec <_Z20testConsumerProducerv+0x3d8>
    waitForAll = new Semaphore(0);
    80003158:	01000513          	li	a0,16
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	a2c080e7          	jalr	-1492(ra) # 80001b88 <_Znwm>
    80003164:	00050913          	mv	s2,a0
    void* arg;
};

class Semaphore {
    public:
    Semaphore(unsigned init = 1) {
    80003168:	00006797          	auipc	a5,0x6
    8000316c:	4c078793          	addi	a5,a5,1216 # 80009628 <_ZTV9Semaphore+0x10>
    80003170:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80003174:	00000593          	li	a1,0
    80003178:	00850513          	addi	a0,a0,8
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	578080e7          	jalr	1400(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    80003184:	00050463          	beqz	a0,8000318c <_Z20testConsumerProducerv+0x178>
            myHandle = nullptr;
    80003188:	00093423          	sd	zero,8(s2)
    8000318c:	00008797          	auipc	a5,0x8
    80003190:	7327be23          	sd	s2,1852(a5) # 8000b8c8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003194:	003a1793          	slli	a5,s4,0x3
    80003198:	00f78793          	addi	a5,a5,15
    8000319c:	ff07f793          	andi	a5,a5,-16
    800031a0:	40f10133          	sub	sp,sp,a5
    800031a4:	00010a93          	mv	s5,sp
    thread_data threadData[threadNum + 1];
    800031a8:	001a079b          	addiw	a5,s4,1
    800031ac:	00179713          	slli	a4,a5,0x1
    800031b0:	00f70733          	add	a4,a4,a5
    800031b4:	00371793          	slli	a5,a4,0x3
    800031b8:	00f78793          	addi	a5,a5,15
    800031bc:	ff07f793          	andi	a5,a5,-16
    800031c0:	40f10133          	sub	sp,sp,a5
    800031c4:	00010c93          	mv	s9,sp
    threadData[threadNum].id = threadNum;
    800031c8:	001a1793          	slli	a5,s4,0x1
    800031cc:	014787b3          	add	a5,a5,s4
    800031d0:	00379493          	slli	s1,a5,0x3
    800031d4:	009c84b3          	add	s1,s9,s1
    800031d8:	0144a023          	sw	s4,0(s1)
    threadData[threadNum].buffer = buffer;
    800031dc:	0164b423          	sd	s6,8(s1)
    threadData[threadNum].sem = waitForAll;
    800031e0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800031e4:	02800513          	li	a0,40
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	9a0080e7          	jalr	-1632(ra) # 80001b88 <_Znwm>
    800031f0:	00050b93          	mv	s7,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800031f4:	00053423          	sd	zero,8(a0)
    800031f8:	00053823          	sd	zero,16(a0)
    800031fc:	00053c23          	sd	zero,24(a0)
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003200:	00006797          	auipc	a5,0x6
    80003204:	49878793          	addi	a5,a5,1176 # 80009698 <_ZTV8Consumer+0x10>
    80003208:	00f53023          	sd	a5,0(a0)
    8000320c:	02953023          	sd	s1,32(a0)
        if(thread_create(&myHandle, &Thread::body_exec, this) != 0) {
    80003210:	00050613          	mv	a2,a0
    80003214:	00000597          	auipc	a1,0x0
    80003218:	27458593          	addi	a1,a1,628 # 80003488 <_ZN6Thread9body_execEPv>
    8000321c:	00850513          	addi	a0,a0,8
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	3e8080e7          	jalr	1000(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    80003228:	06051863          	bnez	a0,80003298 <_Z20testConsumerProducerv+0x284>
    threadData[0].id = 0;
    8000322c:	000ca023          	sw	zero,0(s9)
    threadData[0].buffer = buffer;
    80003230:	016cb423          	sd	s6,8(s9)
    threadData[0].sem = waitForAll;
    80003234:	00008797          	auipc	a5,0x8
    80003238:	69478793          	addi	a5,a5,1684 # 8000b8c8 <_ZL10waitForAll>
    8000323c:	0007b783          	ld	a5,0(a5)
    80003240:	00fcb823          	sd	a5,16(s9)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003244:	02800513          	li	a0,40
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	940080e7          	jalr	-1728(ra) # 80001b88 <_Znwm>
    80003250:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003254:	00053423          	sd	zero,8(a0)
    80003258:	00053823          	sd	zero,16(a0)
    8000325c:	00053c23          	sd	zero,24(a0)
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003260:	00006797          	auipc	a5,0x6
    80003264:	3e878793          	addi	a5,a5,1000 # 80009648 <_ZTV16ProducerKeyborad+0x10>
    80003268:	00f53023          	sd	a5,0(a0)
    8000326c:	03953023          	sd	s9,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003270:	00aab023          	sd	a0,0(s5)
        if(thread_create(&myHandle, &Thread::body_exec, this) != 0) {
    80003274:	00050613          	mv	a2,a0
    80003278:	00000597          	auipc	a1,0x0
    8000327c:	21058593          	addi	a1,a1,528 # 80003488 <_ZN6Thread9body_execEPv>
    80003280:	00850513          	addi	a0,a0,8
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	384080e7          	jalr	900(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    8000328c:	00051a63          	bnez	a0,800032a0 <_Z20testConsumerProducerv+0x28c>
void testConsumerProducer() {
    80003290:	00100993          	li	s3,1
    80003294:	01c0006f          	j	800032b0 <_Z20testConsumerProducerv+0x29c>
            myHandle = nullptr;
    80003298:	000bb423          	sd	zero,8(s7)
            return -1;
    8000329c:	f91ff06f          	j	8000322c <_Z20testConsumerProducerv+0x218>
            myHandle = nullptr;
    800032a0:	0004b423          	sd	zero,8(s1)
            return -1;
    800032a4:	fedff06f          	j	80003290 <_Z20testConsumerProducerv+0x27c>
            myHandle = nullptr;
    800032a8:	0004b423          	sd	zero,8(s1)
    for (int i = 1; i < threadNum; i++) {
    800032ac:	0019899b          	addiw	s3,s3,1
    800032b0:	0949d263          	bge	s3,s4,80003334 <_Z20testConsumerProducerv+0x320>
        threadData[i].id = i;
    800032b4:	00199793          	slli	a5,s3,0x1
    800032b8:	013787b3          	add	a5,a5,s3
    800032bc:	00379913          	slli	s2,a5,0x3
    800032c0:	012c8933          	add	s2,s9,s2
    800032c4:	01392023          	sw	s3,0(s2)
        threadData[i].buffer = buffer;
    800032c8:	01693423          	sd	s6,8(s2)
        threadData[i].sem = waitForAll;
    800032cc:	00008797          	auipc	a5,0x8
    800032d0:	5fc78793          	addi	a5,a5,1532 # 8000b8c8 <_ZL10waitForAll>
    800032d4:	0007b783          	ld	a5,0(a5)
    800032d8:	00f93823          	sd	a5,16(s2)
        producers[i] = new Producer(&threadData[i]);
    800032dc:	02800513          	li	a0,40
    800032e0:	fffff097          	auipc	ra,0xfffff
    800032e4:	8a8080e7          	jalr	-1880(ra) # 80001b88 <_Znwm>
    800032e8:	00050493          	mv	s1,a0
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800032ec:	00053423          	sd	zero,8(a0)
    800032f0:	00053823          	sd	zero,16(a0)
    800032f4:	00053c23          	sd	zero,24(a0)
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800032f8:	00006797          	auipc	a5,0x6
    800032fc:	37878793          	addi	a5,a5,888 # 80009670 <_ZTV8Producer+0x10>
    80003300:	00f53023          	sd	a5,0(a0)
    80003304:	03253023          	sd	s2,32(a0)
        producers[i] = new Producer(&threadData[i]);
    80003308:	00399793          	slli	a5,s3,0x3
    8000330c:	00fa87b3          	add	a5,s5,a5
    80003310:	00a7b023          	sd	a0,0(a5)
        if(thread_create(&myHandle, &Thread::body_exec, this) != 0) {
    80003314:	00050613          	mv	a2,a0
    80003318:	00000597          	auipc	a1,0x0
    8000331c:	17058593          	addi	a1,a1,368 # 80003488 <_ZN6Thread9body_execEPv>
    80003320:	00850513          	addi	a0,a0,8
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	2e4080e7          	jalr	740(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    8000332c:	f80500e3          	beqz	a0,800032ac <_Z20testConsumerProducerv+0x298>
    80003330:	f79ff06f          	j	800032a8 <_Z20testConsumerProducerv+0x294>
        thread_dispatch();
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	374080e7          	jalr	884(ra) # 800016a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000333c:	00000493          	li	s1,0
    80003340:	0080006f          	j	80003348 <_Z20testConsumerProducerv+0x334>
    80003344:	0014849b          	addiw	s1,s1,1
    80003348:	029a4263          	blt	s4,s1,8000336c <_Z20testConsumerProducerv+0x358>
        waitForAll->wait();
    8000334c:	00008797          	auipc	a5,0x8
    80003350:	57c78793          	addi	a5,a5,1404 # 8000b8c8 <_ZL10waitForAll>
    80003354:	0007b783          	ld	a5,0(a5)
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }
    int wait() {
        if (myHandle == nullptr) {
    80003358:	0087b503          	ld	a0,8(a5)
    8000335c:	fe0504e3          	beqz	a0,80003344 <_Z20testConsumerProducerv+0x330>
            return -1;
        }
        return sem_wait(myHandle);
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	438080e7          	jalr	1080(ra) # 80001798 <_Z8sem_waitP10_semaphore>
    80003368:	fddff06f          	j	80003344 <_Z20testConsumerProducerv+0x330>
    delete waitForAll;
    8000336c:	00008797          	auipc	a5,0x8
    80003370:	55c78793          	addi	a5,a5,1372 # 8000b8c8 <_ZL10waitForAll>
    80003374:	0007b503          	ld	a0,0(a5)
    80003378:	00050863          	beqz	a0,80003388 <_Z20testConsumerProducerv+0x374>
    8000337c:	00053783          	ld	a5,0(a0)
    80003380:	0087b783          	ld	a5,8(a5)
    80003384:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003388:	00000493          	li	s1,0
    8000338c:	0080006f          	j	80003394 <_Z20testConsumerProducerv+0x380>
    for (int i = 0; i < threadNum; i++) {
    80003390:	0014849b          	addiw	s1,s1,1
    80003394:	0344d263          	bge	s1,s4,800033b8 <_Z20testConsumerProducerv+0x3a4>
        delete producers[i];
    80003398:	00349793          	slli	a5,s1,0x3
    8000339c:	00fa87b3          	add	a5,s5,a5
    800033a0:	0007b503          	ld	a0,0(a5)
    800033a4:	fe0506e3          	beqz	a0,80003390 <_Z20testConsumerProducerv+0x37c>
    800033a8:	00053783          	ld	a5,0(a0)
    800033ac:	0087b783          	ld	a5,8(a5)
    800033b0:	000780e7          	jalr	a5
    800033b4:	fddff06f          	j	80003390 <_Z20testConsumerProducerv+0x37c>
    delete consumer;
    800033b8:	000b8a63          	beqz	s7,800033cc <_Z20testConsumerProducerv+0x3b8>
    800033bc:	000bb783          	ld	a5,0(s7)
    800033c0:	0087b783          	ld	a5,8(a5)
    800033c4:	000b8513          	mv	a0,s7
    800033c8:	000780e7          	jalr	a5
    delete buffer;
    800033cc:	000b0e63          	beqz	s6,800033e8 <_Z20testConsumerProducerv+0x3d4>
    800033d0:	000b0513          	mv	a0,s6
    800033d4:	00003097          	auipc	ra,0x3
    800033d8:	ba8080e7          	jalr	-1112(ra) # 80005f7c <_ZN9BufferCPPD1Ev>
    800033dc:	000b0513          	mv	a0,s6
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	828080e7          	jalr	-2008(ra) # 80001c08 <_ZdlPv>
    800033e8:	000c0113          	mv	sp,s8
}
    800033ec:	f8040113          	addi	sp,s0,-128
    800033f0:	07813083          	ld	ra,120(sp)
    800033f4:	07013403          	ld	s0,112(sp)
    800033f8:	06813483          	ld	s1,104(sp)
    800033fc:	06013903          	ld	s2,96(sp)
    80003400:	05813983          	ld	s3,88(sp)
    80003404:	05013a03          	ld	s4,80(sp)
    80003408:	04813a83          	ld	s5,72(sp)
    8000340c:	04013b03          	ld	s6,64(sp)
    80003410:	03813b83          	ld	s7,56(sp)
    80003414:	03013c03          	ld	s8,48(sp)
    80003418:	02813c83          	ld	s9,40(sp)
    8000341c:	08010113          	addi	sp,sp,128
    80003420:	00008067          	ret
    80003424:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003428:	000b0513          	mv	a0,s6
    8000342c:	ffffe097          	auipc	ra,0xffffe
    80003430:	7dc080e7          	jalr	2012(ra) # 80001c08 <_ZdlPv>
    80003434:	00048513          	mv	a0,s1
    80003438:	00009097          	auipc	ra,0x9
    8000343c:	5d0080e7          	jalr	1488(ra) # 8000ca08 <_Unwind_Resume>
    80003440:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003444:	00090513          	mv	a0,s2
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	7c0080e7          	jalr	1984(ra) # 80001c08 <_ZdlPv>
    80003450:	00048513          	mv	a0,s1
    80003454:	00009097          	auipc	ra,0x9
    80003458:	5b4080e7          	jalr	1460(ra) # 8000ca08 <_Unwind_Resume>

000000008000345c <_ZN6Thread3runEv>:
    virtual void run() {
    8000345c:	ff010113          	addi	sp,sp,-16
    80003460:	00113423          	sd	ra,8(sp)
    80003464:	00813023          	sd	s0,0(sp)
    80003468:	01010413          	addi	s0,sp,16
        body(arg);
    8000346c:	01053783          	ld	a5,16(a0)
    80003470:	01853503          	ld	a0,24(a0)
    80003474:	000780e7          	jalr	a5
    }
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <_ZN6Thread9body_execEPv>:
    static void body_exec (void* thread) {
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00113423          	sd	ra,8(sp)
    80003490:	00813023          	sd	s0,0(sp)
    80003494:	01010413          	addi	s0,sp,16
        static_cast<Thread*>(thread)->run();
    80003498:	00053783          	ld	a5,0(a0)
    8000349c:	0107b783          	ld	a5,16(a5)
    800034a0:	000780e7          	jalr	a5
    }
    800034a4:	00813083          	ld	ra,8(sp)
    800034a8:	00013403          	ld	s0,0(sp)
    800034ac:	01010113          	addi	sp,sp,16
    800034b0:	00008067          	ret

00000000800034b4 <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() {
    800034b4:	00006797          	auipc	a5,0x6
    800034b8:	17478793          	addi	a5,a5,372 # 80009628 <_ZTV9Semaphore+0x10>
    800034bc:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    800034c0:	00853503          	ld	a0,8(a0)
    800034c4:	02050663          	beqz	a0,800034f0 <_ZN9SemaphoreD1Ev+0x3c>
    virtual ~Semaphore() {
    800034c8:	ff010113          	addi	sp,sp,-16
    800034cc:	00113423          	sd	ra,8(sp)
    800034d0:	00813023          	sd	s0,0(sp)
    800034d4:	01010413          	addi	s0,sp,16
            sem_close(myHandle);
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	270080e7          	jalr	624(ra) # 80001748 <_Z9sem_closeP10_semaphore>
    }
    800034e0:	00813083          	ld	ra,8(sp)
    800034e4:	00013403          	ld	s0,0(sp)
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret
    800034f0:	00008067          	ret

00000000800034f4 <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore() {
    800034f4:	fe010113          	addi	sp,sp,-32
    800034f8:	00113c23          	sd	ra,24(sp)
    800034fc:	00813823          	sd	s0,16(sp)
    80003500:	00913423          	sd	s1,8(sp)
    80003504:	02010413          	addi	s0,sp,32
    80003508:	00050493          	mv	s1,a0
    8000350c:	00006797          	auipc	a5,0x6
    80003510:	11c78793          	addi	a5,a5,284 # 80009628 <_ZTV9Semaphore+0x10>
    80003514:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80003518:	00853503          	ld	a0,8(a0)
    8000351c:	00050663          	beqz	a0,80003528 <_ZN9SemaphoreD0Ev+0x34>
            sem_close(myHandle);
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	228080e7          	jalr	552(ra) # 80001748 <_Z9sem_closeP10_semaphore>
    }
    80003528:	00048513          	mv	a0,s1
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	6dc080e7          	jalr	1756(ra) # 80001c08 <_ZdlPv>
    80003534:	01813083          	ld	ra,24(sp)
    80003538:	01013403          	ld	s0,16(sp)
    8000353c:	00813483          	ld	s1,8(sp)
    80003540:	02010113          	addi	sp,sp,32
    80003544:	00008067          	ret

0000000080003548 <_ZN8Consumer3runEv>:
    void run() override {
    80003548:	fd010113          	addi	sp,sp,-48
    8000354c:	02113423          	sd	ra,40(sp)
    80003550:	02813023          	sd	s0,32(sp)
    80003554:	00913c23          	sd	s1,24(sp)
    80003558:	01213823          	sd	s2,16(sp)
    8000355c:	01313423          	sd	s3,8(sp)
    80003560:	03010413          	addi	s0,sp,48
    80003564:	00050913          	mv	s2,a0
        int i = 0;
    80003568:	00000993          	li	s3,0
    8000356c:	0100006f          	j	8000357c <_ZN8Consumer3runEv+0x34>
};

class Console {
    public:
    static char getc() { return __getc(); };
    static void putc(char c) { __putc(c); };
    80003570:	00a00513          	li	a0,10
    80003574:	00005097          	auipc	ra,0x5
    80003578:	bc8080e7          	jalr	-1080(ra) # 8000813c <__putc>
        while (!threadEnd) {
    8000357c:	00008797          	auipc	a5,0x8
    80003580:	34478793          	addi	a5,a5,836 # 8000b8c0 <_ZL9threadEnd>
    80003584:	0007a783          	lw	a5,0(a5)
    80003588:	0007879b          	sext.w	a5,a5
    8000358c:	02079c63          	bnez	a5,800035c4 <_ZN8Consumer3runEv+0x7c>
            int key = td->buffer->get();
    80003590:	02093783          	ld	a5,32(s2)
    80003594:	0087b503          	ld	a0,8(a5)
    80003598:	00003097          	auipc	ra,0x3
    8000359c:	890080e7          	jalr	-1904(ra) # 80005e28 <_ZN9BufferCPP3getEv>
            i++;
    800035a0:	0019849b          	addiw	s1,s3,1
    800035a4:	0004899b          	sext.w	s3,s1
    800035a8:	0ff57513          	andi	a0,a0,255
    800035ac:	00005097          	auipc	ra,0x5
    800035b0:	b90080e7          	jalr	-1136(ra) # 8000813c <__putc>
            if (i % 80 == 0) {
    800035b4:	05000793          	li	a5,80
    800035b8:	02f4e4bb          	remw	s1,s1,a5
    800035bc:	fc0490e3          	bnez	s1,8000357c <_ZN8Consumer3runEv+0x34>
    800035c0:	fb1ff06f          	j	80003570 <_ZN8Consumer3runEv+0x28>
        while (td->buffer->getCnt() > 0) {
    800035c4:	02093783          	ld	a5,32(s2)
    800035c8:	0087b503          	ld	a0,8(a5)
    800035cc:	00003097          	auipc	ra,0x3
    800035d0:	908080e7          	jalr	-1784(ra) # 80005ed4 <_ZN9BufferCPP6getCntEv>
    800035d4:	02a05263          	blez	a0,800035f8 <_ZN8Consumer3runEv+0xb0>
            int key = td->buffer->get();
    800035d8:	02093783          	ld	a5,32(s2)
    800035dc:	0087b503          	ld	a0,8(a5)
    800035e0:	00003097          	auipc	ra,0x3
    800035e4:	848080e7          	jalr	-1976(ra) # 80005e28 <_ZN9BufferCPP3getEv>
    800035e8:	0ff57513          	andi	a0,a0,255
    800035ec:	00005097          	auipc	ra,0x5
    800035f0:	b50080e7          	jalr	-1200(ra) # 8000813c <__putc>
    800035f4:	fd1ff06f          	j	800035c4 <_ZN8Consumer3runEv+0x7c>
        td->sem->signal();
    800035f8:	02093783          	ld	a5,32(s2)
    800035fc:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003600:	0087b503          	ld	a0,8(a5)
    80003604:	00050663          	beqz	a0,80003610 <_ZN8Consumer3runEv+0xc8>
        return sem_signal(myHandle);
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	1e0080e7          	jalr	480(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
    }
    80003610:	02813083          	ld	ra,40(sp)
    80003614:	02013403          	ld	s0,32(sp)
    80003618:	01813483          	ld	s1,24(sp)
    8000361c:	01013903          	ld	s2,16(sp)
    80003620:	00813983          	ld	s3,8(sp)
    80003624:	03010113          	addi	sp,sp,48
    80003628:	00008067          	ret

000000008000362c <_ZN6ThreadD1Ev>:
    virtual ~Thread() {
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00113423          	sd	ra,8(sp)
    80003634:	00813023          	sd	s0,0(sp)
    80003638:	01010413          	addi	s0,sp,16
    8000363c:	00006797          	auipc	a5,0x6
    80003640:	fc478793          	addi	a5,a5,-60 # 80009600 <_ZTV6Thread+0x10>
    80003644:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	010080e7          	jalr	16(ra) # 80001658 <_Z11thread_exitv>
    }
    80003650:	00813083          	ld	ra,8(sp)
    80003654:	00013403          	ld	s0,0(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret

0000000080003660 <_ZN6ThreadD0Ev>:
    virtual ~Thread() {
    80003660:	fe010113          	addi	sp,sp,-32
    80003664:	00113c23          	sd	ra,24(sp)
    80003668:	00813823          	sd	s0,16(sp)
    8000366c:	00913423          	sd	s1,8(sp)
    80003670:	02010413          	addi	s0,sp,32
    80003674:	00050493          	mv	s1,a0
    80003678:	00006797          	auipc	a5,0x6
    8000367c:	f8878793          	addi	a5,a5,-120 # 80009600 <_ZTV6Thread+0x10>
    80003680:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	fd4080e7          	jalr	-44(ra) # 80001658 <_Z11thread_exitv>
    }
    8000368c:	00048513          	mv	a0,s1
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	578080e7          	jalr	1400(ra) # 80001c08 <_ZdlPv>
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret

00000000800036ac <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00113423          	sd	ra,8(sp)
    800036b4:	00813023          	sd	s0,0(sp)
    800036b8:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    800036bc:	00006797          	auipc	a5,0x6
    800036c0:	f4478793          	addi	a5,a5,-188 # 80009600 <_ZTV6Thread+0x10>
    800036c4:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	f90080e7          	jalr	-112(ra) # 80001658 <_Z11thread_exitv>
    800036d0:	00813083          	ld	ra,8(sp)
    800036d4:	00013403          	ld	s0,0(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret

00000000800036e0 <_ZN8ConsumerD0Ev>:
    800036e0:	fe010113          	addi	sp,sp,-32
    800036e4:	00113c23          	sd	ra,24(sp)
    800036e8:	00813823          	sd	s0,16(sp)
    800036ec:	00913423          	sd	s1,8(sp)
    800036f0:	02010413          	addi	s0,sp,32
    800036f4:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800036f8:	00006797          	auipc	a5,0x6
    800036fc:	f0878793          	addi	a5,a5,-248 # 80009600 <_ZTV6Thread+0x10>
    80003700:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	f54080e7          	jalr	-172(ra) # 80001658 <_Z11thread_exitv>
    8000370c:	00048513          	mv	a0,s1
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	4f8080e7          	jalr	1272(ra) # 80001c08 <_ZdlPv>
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	02010113          	addi	sp,sp,32
    80003728:	00008067          	ret

000000008000372c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000372c:	ff010113          	addi	sp,sp,-16
    80003730:	00113423          	sd	ra,8(sp)
    80003734:	00813023          	sd	s0,0(sp)
    80003738:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    8000373c:	00006797          	auipc	a5,0x6
    80003740:	ec478793          	addi	a5,a5,-316 # 80009600 <_ZTV6Thread+0x10>
    80003744:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	f10080e7          	jalr	-240(ra) # 80001658 <_Z11thread_exitv>
    80003750:	00813083          	ld	ra,8(sp)
    80003754:	00013403          	ld	s0,0(sp)
    80003758:	01010113          	addi	sp,sp,16
    8000375c:	00008067          	ret

0000000080003760 <_ZN16ProducerKeyboradD0Ev>:
    80003760:	fe010113          	addi	sp,sp,-32
    80003764:	00113c23          	sd	ra,24(sp)
    80003768:	00813823          	sd	s0,16(sp)
    8000376c:	00913423          	sd	s1,8(sp)
    80003770:	02010413          	addi	s0,sp,32
    80003774:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80003778:	00006797          	auipc	a5,0x6
    8000377c:	e8878793          	addi	a5,a5,-376 # 80009600 <_ZTV6Thread+0x10>
    80003780:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	ed4080e7          	jalr	-300(ra) # 80001658 <_Z11thread_exitv>
    8000378c:	00048513          	mv	a0,s1
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	478080e7          	jalr	1144(ra) # 80001c08 <_ZdlPv>
    80003798:	01813083          	ld	ra,24(sp)
    8000379c:	01013403          	ld	s0,16(sp)
    800037a0:	00813483          	ld	s1,8(sp)
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00008067          	ret

00000000800037ac <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00113423          	sd	ra,8(sp)
    800037b4:	00813023          	sd	s0,0(sp)
    800037b8:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    800037bc:	00006797          	auipc	a5,0x6
    800037c0:	e4478793          	addi	a5,a5,-444 # 80009600 <_ZTV6Thread+0x10>
    800037c4:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	e90080e7          	jalr	-368(ra) # 80001658 <_Z11thread_exitv>
    800037d0:	00813083          	ld	ra,8(sp)
    800037d4:	00013403          	ld	s0,0(sp)
    800037d8:	01010113          	addi	sp,sp,16
    800037dc:	00008067          	ret

00000000800037e0 <_ZN8ProducerD0Ev>:
    800037e0:	fe010113          	addi	sp,sp,-32
    800037e4:	00113c23          	sd	ra,24(sp)
    800037e8:	00813823          	sd	s0,16(sp)
    800037ec:	00913423          	sd	s1,8(sp)
    800037f0:	02010413          	addi	s0,sp,32
    800037f4:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800037f8:	00006797          	auipc	a5,0x6
    800037fc:	e0878793          	addi	a5,a5,-504 # 80009600 <_ZTV6Thread+0x10>
    80003800:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	e54080e7          	jalr	-428(ra) # 80001658 <_Z11thread_exitv>
    8000380c:	00048513          	mv	a0,s1
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	3f8080e7          	jalr	1016(ra) # 80001c08 <_ZdlPv>
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	02010113          	addi	sp,sp,32
    80003828:	00008067          	ret

000000008000382c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000382c:	fe010113          	addi	sp,sp,-32
    80003830:	00113c23          	sd	ra,24(sp)
    80003834:	00813823          	sd	s0,16(sp)
    80003838:	00913423          	sd	s1,8(sp)
    8000383c:	02010413          	addi	s0,sp,32
    80003840:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	010080e7          	jalr	16(ra) # 80001854 <_Z4getcv>
    8000384c:	0005059b          	sext.w	a1,a0
    80003850:	01b00793          	li	a5,27
    80003854:	00f58c63          	beq	a1,a5,8000386c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003858:	0204b783          	ld	a5,32(s1)
    8000385c:	0087b503          	ld	a0,8(a5)
    80003860:	00002097          	auipc	ra,0x2
    80003864:	518080e7          	jalr	1304(ra) # 80005d78 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003868:	fddff06f          	j	80003844 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000386c:	00100793          	li	a5,1
    80003870:	00008717          	auipc	a4,0x8
    80003874:	04f72823          	sw	a5,80(a4) # 8000b8c0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003878:	0204b783          	ld	a5,32(s1)
    8000387c:	02100593          	li	a1,33
    80003880:	0087b503          	ld	a0,8(a5)
    80003884:	00002097          	auipc	ra,0x2
    80003888:	4f4080e7          	jalr	1268(ra) # 80005d78 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000388c:	0204b783          	ld	a5,32(s1)
    80003890:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003894:	0087b503          	ld	a0,8(a5)
    80003898:	00050663          	beqz	a0,800038a4 <_ZN16ProducerKeyborad3runEv+0x78>
        return sem_signal(myHandle);
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	f4c080e7          	jalr	-180(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
    }
    800038a4:	01813083          	ld	ra,24(sp)
    800038a8:	01013403          	ld	s0,16(sp)
    800038ac:	00813483          	ld	s1,8(sp)
    800038b0:	02010113          	addi	sp,sp,32
    800038b4:	00008067          	ret

00000000800038b8 <_ZN8Producer3runEv>:
    void run() override {
    800038b8:	fe010113          	addi	sp,sp,-32
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	02010413          	addi	s0,sp,32
    800038cc:	00050493          	mv	s1,a0
        while (!threadEnd) {
    800038d0:	00008797          	auipc	a5,0x8
    800038d4:	ff078793          	addi	a5,a5,-16 # 8000b8c0 <_ZL9threadEnd>
    800038d8:	0007a783          	lw	a5,0(a5)
    800038dc:	0007879b          	sext.w	a5,a5
    800038e0:	02079063          	bnez	a5,80003900 <_ZN8Producer3runEv+0x48>
            td->buffer->put(td->id + '0');
    800038e4:	0204b783          	ld	a5,32(s1)
    800038e8:	0007a583          	lw	a1,0(a5)
    800038ec:	0305859b          	addiw	a1,a1,48
    800038f0:	0087b503          	ld	a0,8(a5)
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	484080e7          	jalr	1156(ra) # 80005d78 <_ZN9BufferCPP3putEi>
        return 0;
    800038fc:	fd5ff06f          	j	800038d0 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80003900:	0204b783          	ld	a5,32(s1)
    80003904:	0107b783          	ld	a5,16(a5)
        if (myHandle == nullptr) {
    80003908:	0087b503          	ld	a0,8(a5)
    8000390c:	00050663          	beqz	a0,80003918 <_ZN8Producer3runEv+0x60>
        return sem_signal(myHandle);
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	ed8080e7          	jalr	-296(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
    }
    80003918:	01813083          	ld	ra,24(sp)
    8000391c:	01013403          	ld	s0,16(sp)
    80003920:	00813483          	ld	s1,8(sp)
    80003924:	02010113          	addi	sp,sp,32
    80003928:	00008067          	ret

000000008000392c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000392c:	fe010113          	addi	sp,sp,-32
    80003930:	00113c23          	sd	ra,24(sp)
    80003934:	00813823          	sd	s0,16(sp)
    80003938:	00913423          	sd	s1,8(sp)
    8000393c:	01213023          	sd	s2,0(sp)
    80003940:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80003944:	00006517          	auipc	a0,0x6
    80003948:	e6c50513          	addi	a0,a0,-404 # 800097b0 <_ZTV8Consumer+0x128>
    8000394c:	00002097          	auipc	ra,0x2
    80003950:	a88080e7          	jalr	-1400(ra) # 800053d4 <_Z11printStringPKc>
    int test = getc() - '0';
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	f00080e7          	jalr	-256(ra) # 80001854 <_Z4getcv>
    8000395c:	00050913          	mv	s2,a0
    80003960:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	ef0080e7          	jalr	-272(ra) # 80001854 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000396c:	fcb9091b          	addiw	s2,s2,-53
    80003970:	00100793          	li	a5,1
    80003974:	0327f463          	bgeu	a5,s2,8000399c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003978:	00700793          	li	a5,7
    8000397c:	0e97e263          	bltu	a5,s1,80003a60 <_Z8userMainv+0x134>
    80003980:	00249493          	slli	s1,s1,0x2
    80003984:	00006717          	auipc	a4,0x6
    80003988:	e0870713          	addi	a4,a4,-504 # 8000978c <_ZTV8Consumer+0x104>
    8000398c:	00e484b3          	add	s1,s1,a4
    80003990:	0004a783          	lw	a5,0(s1)
    80003994:	00e787b3          	add	a5,a5,a4
    80003998:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000399c:	00006517          	auipc	a0,0x6
    800039a0:	e3450513          	addi	a0,a0,-460 # 800097d0 <_ZTV8Consumer+0x148>
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	a30080e7          	jalr	-1488(ra) # 800053d4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800039ac:	01813083          	ld	ra,24(sp)
    800039b0:	01013403          	ld	s0,16(sp)
    800039b4:	00813483          	ld	s1,8(sp)
    800039b8:	00013903          	ld	s2,0(sp)
    800039bc:	02010113          	addi	sp,sp,32
    800039c0:	00008067          	ret
            Threads_C_API_test();
    800039c4:	00001097          	auipc	ra,0x1
    800039c8:	efc080e7          	jalr	-260(ra) # 800048c0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800039cc:	00006517          	auipc	a0,0x6
    800039d0:	e3450513          	addi	a0,a0,-460 # 80009800 <_ZTV8Consumer+0x178>
    800039d4:	00002097          	auipc	ra,0x2
    800039d8:	a00080e7          	jalr	-1536(ra) # 800053d4 <_Z11printStringPKc>
            break;
    800039dc:	fd1ff06f          	j	800039ac <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800039e0:	00000097          	auipc	ra,0x0
    800039e4:	574080e7          	jalr	1396(ra) # 80003f54 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800039e8:	00006517          	auipc	a0,0x6
    800039ec:	e5850513          	addi	a0,a0,-424 # 80009840 <_ZTV8Consumer+0x1b8>
    800039f0:	00002097          	auipc	ra,0x2
    800039f4:	9e4080e7          	jalr	-1564(ra) # 800053d4 <_Z11printStringPKc>
            break;
    800039f8:	fb5ff06f          	j	800039ac <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800039fc:	00002097          	auipc	ra,0x2
    80003a00:	ee4080e7          	jalr	-284(ra) # 800058e0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80003a04:	00006517          	auipc	a0,0x6
    80003a08:	e7c50513          	addi	a0,a0,-388 # 80009880 <_ZTV8Consumer+0x1f8>
    80003a0c:	00002097          	auipc	ra,0x2
    80003a10:	9c8080e7          	jalr	-1592(ra) # 800053d4 <_Z11printStringPKc>
            break;
    80003a14:	f99ff06f          	j	800039ac <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80003a18:	00001097          	auipc	ra,0x1
    80003a1c:	238080e7          	jalr	568(ra) # 80004c50 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80003a20:	00006517          	auipc	a0,0x6
    80003a24:	eb050513          	addi	a0,a0,-336 # 800098d0 <_ZTV8Consumer+0x248>
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	9ac080e7          	jalr	-1620(ra) # 800053d4 <_Z11printStringPKc>
            break;
    80003a30:	f7dff06f          	j	800039ac <_Z8userMainv+0x80>
            System_Mode_test();
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	1a4080e7          	jalr	420(ra) # 80002bd8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003a3c:	00006517          	auipc	a0,0x6
    80003a40:	eec50513          	addi	a0,a0,-276 # 80009928 <_ZTV8Consumer+0x2a0>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	990080e7          	jalr	-1648(ra) # 800053d4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003a4c:	00006517          	auipc	a0,0x6
    80003a50:	efc50513          	addi	a0,a0,-260 # 80009948 <_ZTV8Consumer+0x2c0>
    80003a54:	00002097          	auipc	ra,0x2
    80003a58:	980080e7          	jalr	-1664(ra) # 800053d4 <_Z11printStringPKc>
            break;
    80003a5c:	f51ff06f          	j	800039ac <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80003a60:	00006517          	auipc	a0,0x6
    80003a64:	f4050513          	addi	a0,a0,-192 # 800099a0 <_ZTV8Consumer+0x318>
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	96c080e7          	jalr	-1684(ra) # 800053d4 <_Z11printStringPKc>
    80003a70:	f3dff06f          	j	800039ac <_Z8userMainv+0x80>

0000000080003a74 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    80003a74:	00100793          	li	a5,1
    80003a78:	06a7f863          	bgeu	a5,a0,80003ae8 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00813823          	sd	s0,16(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	01213023          	sd	s2,0(sp)
    80003a90:	02010413          	addi	s0,sp,32
    80003a94:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80003a98:	00a00793          	li	a5,10
    80003a9c:	02f577b3          	remu	a5,a0,a5
    80003aa0:	02078e63          	beqz	a5,80003adc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003aa4:	fff48513          	addi	a0,s1,-1
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	fcc080e7          	jalr	-52(ra) # 80003a74 <_ZL9fibonaccim>
    80003ab0:	00050913          	mv	s2,a0
    80003ab4:	ffe48513          	addi	a0,s1,-2
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	fbc080e7          	jalr	-68(ra) # 80003a74 <_ZL9fibonaccim>
    80003ac0:	00a90533          	add	a0,s2,a0
}
    80003ac4:	01813083          	ld	ra,24(sp)
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	00013903          	ld	s2,0(sp)
    80003ad4:	02010113          	addi	sp,sp,32
    80003ad8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	bcc080e7          	jalr	-1076(ra) # 800016a8 <_Z15thread_dispatchv>
    80003ae4:	fc1ff06f          	j	80003aa4 <_ZL9fibonaccim+0x30>
}
    80003ae8:	00008067          	ret

0000000080003aec <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003aec:	fe010113          	addi	sp,sp,-32
    80003af0:	00113c23          	sd	ra,24(sp)
    80003af4:	00813823          	sd	s0,16(sp)
    80003af8:	00913423          	sd	s1,8(sp)
    80003afc:	01213023          	sd	s2,0(sp)
    80003b00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003b04:	00000913          	li	s2,0
    80003b08:	0380006f          	j	80003b40 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	b9c080e7          	jalr	-1124(ra) # 800016a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b14:	00148493          	addi	s1,s1,1
    80003b18:	000027b7          	lui	a5,0x2
    80003b1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b20:	0097ee63          	bltu	a5,s1,80003b3c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b24:	00000713          	li	a4,0
    80003b28:	000077b7          	lui	a5,0x7
    80003b2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b30:	fce7eee3          	bltu	a5,a4,80003b0c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003b34:	00170713          	addi	a4,a4,1
    80003b38:	ff1ff06f          	j	80003b28 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b3c:	00190913          	addi	s2,s2,1
    80003b40:	00900793          	li	a5,9
    80003b44:	0527e063          	bltu	a5,s2,80003b84 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003b48:	00006517          	auipc	a0,0x6
    80003b4c:	a2850513          	addi	a0,a0,-1496 # 80009570 <CONSOLE_STATUS+0x560>
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	884080e7          	jalr	-1916(ra) # 800053d4 <_Z11printStringPKc>
    80003b58:	00000613          	li	a2,0
    80003b5c:	00a00593          	li	a1,10
    80003b60:	0009051b          	sext.w	a0,s2
    80003b64:	00002097          	auipc	ra,0x2
    80003b68:	a1c080e7          	jalr	-1508(ra) # 80005580 <_Z8printIntiii>
    80003b6c:	00006517          	auipc	a0,0x6
    80003b70:	db450513          	addi	a0,a0,-588 # 80009920 <_ZTV8Consumer+0x298>
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	860080e7          	jalr	-1952(ra) # 800053d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b7c:	00000493          	li	s1,0
    80003b80:	f99ff06f          	j	80003b18 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b84:	00006517          	auipc	a0,0x6
    80003b88:	9c450513          	addi	a0,a0,-1596 # 80009548 <CONSOLE_STATUS+0x538>
    80003b8c:	00002097          	auipc	ra,0x2
    80003b90:	848080e7          	jalr	-1976(ra) # 800053d4 <_Z11printStringPKc>
    finishedA = true;
    80003b94:	00100793          	li	a5,1
    80003b98:	00008717          	auipc	a4,0x8
    80003b9c:	d2f70da3          	sb	a5,-709(a4) # 8000b8d3 <_ZL9finishedA>
}
    80003ba0:	01813083          	ld	ra,24(sp)
    80003ba4:	01013403          	ld	s0,16(sp)
    80003ba8:	00813483          	ld	s1,8(sp)
    80003bac:	00013903          	ld	s2,0(sp)
    80003bb0:	02010113          	addi	sp,sp,32
    80003bb4:	00008067          	ret

0000000080003bb8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003bb8:	fe010113          	addi	sp,sp,-32
    80003bbc:	00113c23          	sd	ra,24(sp)
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00913423          	sd	s1,8(sp)
    80003bc8:	01213023          	sd	s2,0(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003bd0:	00000913          	li	s2,0
    80003bd4:	0380006f          	j	80003c0c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	ad0080e7          	jalr	-1328(ra) # 800016a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003be0:	00148493          	addi	s1,s1,1
    80003be4:	000027b7          	lui	a5,0x2
    80003be8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003bec:	0097ee63          	bltu	a5,s1,80003c08 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003bf0:	00000713          	li	a4,0
    80003bf4:	000077b7          	lui	a5,0x7
    80003bf8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003bfc:	fce7eee3          	bltu	a5,a4,80003bd8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003c00:	00170713          	addi	a4,a4,1
    80003c04:	ff1ff06f          	j	80003bf4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c08:	00190913          	addi	s2,s2,1
    80003c0c:	00f00793          	li	a5,15
    80003c10:	0527e063          	bltu	a5,s2,80003c50 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c14:	00006517          	auipc	a0,0x6
    80003c18:	94450513          	addi	a0,a0,-1724 # 80009558 <CONSOLE_STATUS+0x548>
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	7b8080e7          	jalr	1976(ra) # 800053d4 <_Z11printStringPKc>
    80003c24:	00000613          	li	a2,0
    80003c28:	00a00593          	li	a1,10
    80003c2c:	0009051b          	sext.w	a0,s2
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	950080e7          	jalr	-1712(ra) # 80005580 <_Z8printIntiii>
    80003c38:	00006517          	auipc	a0,0x6
    80003c3c:	ce850513          	addi	a0,a0,-792 # 80009920 <_ZTV8Consumer+0x298>
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	794080e7          	jalr	1940(ra) # 800053d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c48:	00000493          	li	s1,0
    80003c4c:	f99ff06f          	j	80003be4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003c50:	00006517          	auipc	a0,0x6
    80003c54:	91050513          	addi	a0,a0,-1776 # 80009560 <CONSOLE_STATUS+0x550>
    80003c58:	00001097          	auipc	ra,0x1
    80003c5c:	77c080e7          	jalr	1916(ra) # 800053d4 <_Z11printStringPKc>
    finishedB = true;
    80003c60:	00100793          	li	a5,1
    80003c64:	00008717          	auipc	a4,0x8
    80003c68:	c6f70723          	sb	a5,-914(a4) # 8000b8d2 <_ZL9finishedB>
    thread_dispatch();
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	a3c080e7          	jalr	-1476(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	00813483          	ld	s1,8(sp)
    80003c80:	00013903          	ld	s2,0(sp)
    80003c84:	02010113          	addi	sp,sp,32
    80003c88:	00008067          	ret

0000000080003c8c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00113c23          	sd	ra,24(sp)
    80003c94:	00813823          	sd	s0,16(sp)
    80003c98:	00913423          	sd	s1,8(sp)
    80003c9c:	01213023          	sd	s2,0(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ca4:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80003ca8:	00200793          	li	a5,2
    80003cac:	0497e263          	bltu	a5,s1,80003cf0 <_ZN7WorkerC11workerBodyCEPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    80003cb0:	00006517          	auipc	a0,0x6
    80003cb4:	86850513          	addi	a0,a0,-1944 # 80009518 <CONSOLE_STATUS+0x508>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	71c080e7          	jalr	1820(ra) # 800053d4 <_Z11printStringPKc>
    80003cc0:	00000613          	li	a2,0
    80003cc4:	00a00593          	li	a1,10
    80003cc8:	00048513          	mv	a0,s1
    80003ccc:	00002097          	auipc	ra,0x2
    80003cd0:	8b4080e7          	jalr	-1868(ra) # 80005580 <_Z8printIntiii>
    80003cd4:	00006517          	auipc	a0,0x6
    80003cd8:	c4c50513          	addi	a0,a0,-948 # 80009920 <_ZTV8Consumer+0x298>
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	6f8080e7          	jalr	1784(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003ce4:	0014849b          	addiw	s1,s1,1
    80003ce8:	0ff4f493          	andi	s1,s1,255
    80003cec:	fbdff06f          	j	80003ca8 <_ZN7WorkerC11workerBodyCEPv+0x1c>
    }

    printString("C: dispatch\n");
    80003cf0:	00006517          	auipc	a0,0x6
    80003cf4:	83050513          	addi	a0,a0,-2000 # 80009520 <CONSOLE_STATUS+0x510>
    80003cf8:	00001097          	auipc	ra,0x1
    80003cfc:	6dc080e7          	jalr	1756(ra) # 800053d4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d00:	00700313          	li	t1,7
    thread_dispatch();
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	9a4080e7          	jalr	-1628(ra) # 800016a8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d0c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d10:	00006517          	auipc	a0,0x6
    80003d14:	82050513          	addi	a0,a0,-2016 # 80009530 <CONSOLE_STATUS+0x520>
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	6bc080e7          	jalr	1724(ra) # 800053d4 <_Z11printStringPKc>
    80003d20:	00000613          	li	a2,0
    80003d24:	00a00593          	li	a1,10
    80003d28:	0009051b          	sext.w	a0,s2
    80003d2c:	00002097          	auipc	ra,0x2
    80003d30:	854080e7          	jalr	-1964(ra) # 80005580 <_Z8printIntiii>
    80003d34:	00006517          	auipc	a0,0x6
    80003d38:	bec50513          	addi	a0,a0,-1044 # 80009920 <_ZTV8Consumer+0x298>
    80003d3c:	00001097          	auipc	ra,0x1
    80003d40:	698080e7          	jalr	1688(ra) # 800053d4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003d44:	00c00513          	li	a0,12
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	d2c080e7          	jalr	-724(ra) # 80003a74 <_ZL9fibonaccim>
    80003d50:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003d54:	00005517          	auipc	a0,0x5
    80003d58:	7e450513          	addi	a0,a0,2020 # 80009538 <CONSOLE_STATUS+0x528>
    80003d5c:	00001097          	auipc	ra,0x1
    80003d60:	678080e7          	jalr	1656(ra) # 800053d4 <_Z11printStringPKc>
    80003d64:	00000613          	li	a2,0
    80003d68:	00a00593          	li	a1,10
    80003d6c:	0009051b          	sext.w	a0,s2
    80003d70:	00002097          	auipc	ra,0x2
    80003d74:	810080e7          	jalr	-2032(ra) # 80005580 <_Z8printIntiii>
    80003d78:	00006517          	auipc	a0,0x6
    80003d7c:	ba850513          	addi	a0,a0,-1112 # 80009920 <_ZTV8Consumer+0x298>
    80003d80:	00001097          	auipc	ra,0x1
    80003d84:	654080e7          	jalr	1620(ra) # 800053d4 <_Z11printStringPKc>

    for (; i < 6; i++) {
    80003d88:	00500793          	li	a5,5
    80003d8c:	0497e263          	bltu	a5,s1,80003dd0 <_ZN7WorkerC11workerBodyCEPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    80003d90:	00005517          	auipc	a0,0x5
    80003d94:	78850513          	addi	a0,a0,1928 # 80009518 <CONSOLE_STATUS+0x508>
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	63c080e7          	jalr	1596(ra) # 800053d4 <_Z11printStringPKc>
    80003da0:	00000613          	li	a2,0
    80003da4:	00a00593          	li	a1,10
    80003da8:	00048513          	mv	a0,s1
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	7d4080e7          	jalr	2004(ra) # 80005580 <_Z8printIntiii>
    80003db4:	00006517          	auipc	a0,0x6
    80003db8:	b6c50513          	addi	a0,a0,-1172 # 80009920 <_ZTV8Consumer+0x298>
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	618080e7          	jalr	1560(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003dc4:	0014849b          	addiw	s1,s1,1
    80003dc8:	0ff4f493          	andi	s1,s1,255
    80003dcc:	fbdff06f          	j	80003d88 <_ZN7WorkerC11workerBodyCEPv+0xfc>
    }

    printString("A finished!\n");
    80003dd0:	00005517          	auipc	a0,0x5
    80003dd4:	77850513          	addi	a0,a0,1912 # 80009548 <CONSOLE_STATUS+0x538>
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	5fc080e7          	jalr	1532(ra) # 800053d4 <_Z11printStringPKc>
    finishedC = true;
    80003de0:	00100793          	li	a5,1
    80003de4:	00008717          	auipc	a4,0x8
    80003de8:	aef706a3          	sb	a5,-1299(a4) # 8000b8d1 <_ZL9finishedC>
    thread_dispatch();
    80003dec:	ffffe097          	auipc	ra,0xffffe
    80003df0:	8bc080e7          	jalr	-1860(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80003df4:	01813083          	ld	ra,24(sp)
    80003df8:	01013403          	ld	s0,16(sp)
    80003dfc:	00813483          	ld	s1,8(sp)
    80003e00:	00013903          	ld	s2,0(sp)
    80003e04:	02010113          	addi	sp,sp,32
    80003e08:	00008067          	ret

0000000080003e0c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e0c:	fe010113          	addi	sp,sp,-32
    80003e10:	00113c23          	sd	ra,24(sp)
    80003e14:	00813823          	sd	s0,16(sp)
    80003e18:	00913423          	sd	s1,8(sp)
    80003e1c:	01213023          	sd	s2,0(sp)
    80003e20:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e24:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80003e28:	00c00793          	li	a5,12
    80003e2c:	0497e263          	bltu	a5,s1,80003e70 <_ZN7WorkerD11workerBodyDEPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    80003e30:	00005517          	auipc	a0,0x5
    80003e34:	6b050513          	addi	a0,a0,1712 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003e38:	00001097          	auipc	ra,0x1
    80003e3c:	59c080e7          	jalr	1436(ra) # 800053d4 <_Z11printStringPKc>
    80003e40:	00000613          	li	a2,0
    80003e44:	00a00593          	li	a1,10
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	00001097          	auipc	ra,0x1
    80003e50:	734080e7          	jalr	1844(ra) # 80005580 <_Z8printIntiii>
    80003e54:	00006517          	auipc	a0,0x6
    80003e58:	acc50513          	addi	a0,a0,-1332 # 80009920 <_ZTV8Consumer+0x298>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	578080e7          	jalr	1400(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003e64:	0014849b          	addiw	s1,s1,1
    80003e68:	0ff4f493          	andi	s1,s1,255
    80003e6c:	fbdff06f          	j	80003e28 <_ZN7WorkerD11workerBodyDEPv+0x1c>
    }

    printString("D: dispatch\n");
    80003e70:	00005517          	auipc	a0,0x5
    80003e74:	67850513          	addi	a0,a0,1656 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003e78:	00001097          	auipc	ra,0x1
    80003e7c:	55c080e7          	jalr	1372(ra) # 800053d4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e80:	00500313          	li	t1,5
    thread_dispatch();
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	824080e7          	jalr	-2012(ra) # 800016a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e8c:	01000513          	li	a0,16
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	be4080e7          	jalr	-1052(ra) # 80003a74 <_ZL9fibonaccim>
    80003e98:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e9c:	00005517          	auipc	a0,0x5
    80003ea0:	65c50513          	addi	a0,a0,1628 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	530080e7          	jalr	1328(ra) # 800053d4 <_Z11printStringPKc>
    80003eac:	00000613          	li	a2,0
    80003eb0:	00a00593          	li	a1,10
    80003eb4:	0009051b          	sext.w	a0,s2
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	6c8080e7          	jalr	1736(ra) # 80005580 <_Z8printIntiii>
    80003ec0:	00006517          	auipc	a0,0x6
    80003ec4:	a6050513          	addi	a0,a0,-1440 # 80009920 <_ZTV8Consumer+0x298>
    80003ec8:	00001097          	auipc	ra,0x1
    80003ecc:	50c080e7          	jalr	1292(ra) # 800053d4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    80003ed0:	00f00793          	li	a5,15
    80003ed4:	0497e263          	bltu	a5,s1,80003f18 <_ZN7WorkerD11workerBodyDEPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80003ed8:	00005517          	auipc	a0,0x5
    80003edc:	60850513          	addi	a0,a0,1544 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	4f4080e7          	jalr	1268(ra) # 800053d4 <_Z11printStringPKc>
    80003ee8:	00000613          	li	a2,0
    80003eec:	00a00593          	li	a1,10
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	68c080e7          	jalr	1676(ra) # 80005580 <_Z8printIntiii>
    80003efc:	00006517          	auipc	a0,0x6
    80003f00:	a2450513          	addi	a0,a0,-1500 # 80009920 <_ZTV8Consumer+0x298>
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	4d0080e7          	jalr	1232(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f0c:	0014849b          	addiw	s1,s1,1
    80003f10:	0ff4f493          	andi	s1,s1,255
    80003f14:	fbdff06f          	j	80003ed0 <_ZN7WorkerD11workerBodyDEPv+0xc4>
    }

    printString("D finished!\n");
    80003f18:	00005517          	auipc	a0,0x5
    80003f1c:	5f050513          	addi	a0,a0,1520 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	4b4080e7          	jalr	1204(ra) # 800053d4 <_Z11printStringPKc>
    finishedD = true;
    80003f28:	00100793          	li	a5,1
    80003f2c:	00008717          	auipc	a4,0x8
    80003f30:	9af70223          	sb	a5,-1628(a4) # 8000b8d0 <_ZL9finishedD>
    thread_dispatch();
    80003f34:	ffffd097          	auipc	ra,0xffffd
    80003f38:	774080e7          	jalr	1908(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80003f3c:	01813083          	ld	ra,24(sp)
    80003f40:	01013403          	ld	s0,16(sp)
    80003f44:	00813483          	ld	s1,8(sp)
    80003f48:	00013903          	ld	s2,0(sp)
    80003f4c:	02010113          	addi	sp,sp,32
    80003f50:	00008067          	ret

0000000080003f54 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003f54:	fc010113          	addi	sp,sp,-64
    80003f58:	02113c23          	sd	ra,56(sp)
    80003f5c:	02813823          	sd	s0,48(sp)
    80003f60:	02913423          	sd	s1,40(sp)
    80003f64:	03213023          	sd	s2,32(sp)
    80003f68:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003f6c:	02000513          	li	a0,32
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	c18080e7          	jalr	-1000(ra) # 80001b88 <_Znwm>
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80003f78:	00053423          	sd	zero,8(a0)
    80003f7c:	00053823          	sd	zero,16(a0)
    80003f80:	00053c23          	sd	zero,24(a0)
    WorkerA():Thread() {}
    80003f84:	00006797          	auipc	a5,0x6
    80003f88:	a5478793          	addi	a5,a5,-1452 # 800099d8 <_ZTV7WorkerA+0x10>
    80003f8c:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    80003f90:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	5e450513          	addi	a0,a0,1508 # 80009578 <CONSOLE_STATUS+0x568>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	438080e7          	jalr	1080(ra) # 800053d4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003fa4:	02000513          	li	a0,32
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	be0080e7          	jalr	-1056(ra) # 80001b88 <_Znwm>
    80003fb0:	00053423          	sd	zero,8(a0)
    80003fb4:	00053823          	sd	zero,16(a0)
    80003fb8:	00053c23          	sd	zero,24(a0)
    WorkerB():Thread() {}
    80003fbc:	00006797          	auipc	a5,0x6
    80003fc0:	a4478793          	addi	a5,a5,-1468 # 80009a00 <_ZTV7WorkerB+0x10>
    80003fc4:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80003fc8:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80003fcc:	00005517          	auipc	a0,0x5
    80003fd0:	5c450513          	addi	a0,a0,1476 # 80009590 <CONSOLE_STATUS+0x580>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	400080e7          	jalr	1024(ra) # 800053d4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003fdc:	02000513          	li	a0,32
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	ba8080e7          	jalr	-1112(ra) # 80001b88 <_Znwm>
    80003fe8:	00053423          	sd	zero,8(a0)
    80003fec:	00053823          	sd	zero,16(a0)
    80003ff0:	00053c23          	sd	zero,24(a0)
    WorkerC():Thread() {}
    80003ff4:	00006797          	auipc	a5,0x6
    80003ff8:	a3478793          	addi	a5,a5,-1484 # 80009a28 <_ZTV7WorkerC+0x10>
    80003ffc:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    80004000:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80004004:	00005517          	auipc	a0,0x5
    80004008:	5a450513          	addi	a0,a0,1444 # 800095a8 <CONSOLE_STATUS+0x598>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	3c8080e7          	jalr	968(ra) # 800053d4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004014:	02000513          	li	a0,32
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	b70080e7          	jalr	-1168(ra) # 80001b88 <_Znwm>
    80004020:	00053423          	sd	zero,8(a0)
    80004024:	00053823          	sd	zero,16(a0)
    80004028:	00053c23          	sd	zero,24(a0)
    WorkerD():Thread() {}
    8000402c:	00006797          	auipc	a5,0x6
    80004030:	a2478793          	addi	a5,a5,-1500 # 80009a50 <_ZTV7WorkerD+0x10>
    80004034:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    80004038:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	58450513          	addi	a0,a0,1412 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	390080e7          	jalr	912(ra) # 800053d4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000404c:	00000493          	li	s1,0
    80004050:	00c0006f          	j	8000405c <_Z20Threads_CPP_API_testv+0x108>
            myHandle = nullptr;
    80004054:	00093423          	sd	zero,8(s2)
    80004058:	0014849b          	addiw	s1,s1,1
    8000405c:	00300793          	li	a5,3
    80004060:	0297ce63          	blt	a5,s1,8000409c <_Z20Threads_CPP_API_testv+0x148>
        threads[i]->start();
    80004064:	00349793          	slli	a5,s1,0x3
    80004068:	fe040713          	addi	a4,s0,-32
    8000406c:	00f707b3          	add	a5,a4,a5
    80004070:	fe07b903          	ld	s2,-32(a5)
        if(thread_create(&myHandle, &Thread::body_exec, this) != 0) {
    80004074:	00090613          	mv	a2,s2
    80004078:	fffff597          	auipc	a1,0xfffff
    8000407c:	41058593          	addi	a1,a1,1040 # 80003488 <_ZN6Thread9body_execEPv>
    80004080:	00890513          	addi	a0,s2,8
    80004084:	ffffd097          	auipc	ra,0xffffd
    80004088:	584080e7          	jalr	1412(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    8000408c:	fc0506e3          	beqz	a0,80004058 <_Z20Threads_CPP_API_testv+0x104>
    80004090:	fc5ff06f          	j	80004054 <_Z20Threads_CPP_API_testv+0x100>
        thread_dispatch();
    80004094:	ffffd097          	auipc	ra,0xffffd
    80004098:	614080e7          	jalr	1556(ra) # 800016a8 <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000409c:	00008797          	auipc	a5,0x8
    800040a0:	83778793          	addi	a5,a5,-1993 # 8000b8d3 <_ZL9finishedA>
    800040a4:	0007c783          	lbu	a5,0(a5)
    800040a8:	0ff7f793          	andi	a5,a5,255
    800040ac:	fe0784e3          	beqz	a5,80004094 <_Z20Threads_CPP_API_testv+0x140>
    800040b0:	00008797          	auipc	a5,0x8
    800040b4:	82278793          	addi	a5,a5,-2014 # 8000b8d2 <_ZL9finishedB>
    800040b8:	0007c783          	lbu	a5,0(a5)
    800040bc:	0ff7f793          	andi	a5,a5,255
    800040c0:	fc078ae3          	beqz	a5,80004094 <_Z20Threads_CPP_API_testv+0x140>
    800040c4:	00008797          	auipc	a5,0x8
    800040c8:	80d78793          	addi	a5,a5,-2035 # 8000b8d1 <_ZL9finishedC>
    800040cc:	0007c783          	lbu	a5,0(a5)
    800040d0:	0ff7f793          	andi	a5,a5,255
    800040d4:	fc0780e3          	beqz	a5,80004094 <_Z20Threads_CPP_API_testv+0x140>
    800040d8:	00007797          	auipc	a5,0x7
    800040dc:	7f878793          	addi	a5,a5,2040 # 8000b8d0 <_ZL9finishedD>
    800040e0:	0007c783          	lbu	a5,0(a5)
    800040e4:	0ff7f793          	andi	a5,a5,255
    800040e8:	fa0786e3          	beqz	a5,80004094 <_Z20Threads_CPP_API_testv+0x140>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    800040ec:	fc040493          	addi	s1,s0,-64
    800040f0:	0080006f          	j	800040f8 <_Z20Threads_CPP_API_testv+0x1a4>
    800040f4:	00848493          	addi	s1,s1,8
    800040f8:	fe040793          	addi	a5,s0,-32
    800040fc:	00f48e63          	beq	s1,a5,80004118 <_Z20Threads_CPP_API_testv+0x1c4>
    80004100:	0004b503          	ld	a0,0(s1)
    80004104:	fe0508e3          	beqz	a0,800040f4 <_Z20Threads_CPP_API_testv+0x1a0>
    80004108:	00053783          	ld	a5,0(a0)
    8000410c:	0087b783          	ld	a5,8(a5)
    80004110:	000780e7          	jalr	a5
    80004114:	fe1ff06f          	j	800040f4 <_Z20Threads_CPP_API_testv+0x1a0>
}
    80004118:	03813083          	ld	ra,56(sp)
    8000411c:	03013403          	ld	s0,48(sp)
    80004120:	02813483          	ld	s1,40(sp)
    80004124:	02013903          	ld	s2,32(sp)
    80004128:	04010113          	addi	sp,sp,64
    8000412c:	00008067          	ret

0000000080004130 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004130:	ff010113          	addi	sp,sp,-16
    80004134:	00113423          	sd	ra,8(sp)
    80004138:	00813023          	sd	s0,0(sp)
    8000413c:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    80004140:	00005797          	auipc	a5,0x5
    80004144:	4c078793          	addi	a5,a5,1216 # 80009600 <_ZTV6Thread+0x10>
    80004148:	00f53023          	sd	a5,0(a0)
        thread_exit();
    8000414c:	ffffd097          	auipc	ra,0xffffd
    80004150:	50c080e7          	jalr	1292(ra) # 80001658 <_Z11thread_exitv>
    80004154:	00813083          	ld	ra,8(sp)
    80004158:	00013403          	ld	s0,0(sp)
    8000415c:	01010113          	addi	sp,sp,16
    80004160:	00008067          	ret

0000000080004164 <_ZN7WorkerAD0Ev>:
    80004164:	fe010113          	addi	sp,sp,-32
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	00813823          	sd	s0,16(sp)
    80004170:	00913423          	sd	s1,8(sp)
    80004174:	02010413          	addi	s0,sp,32
    80004178:	00050493          	mv	s1,a0
    virtual ~Thread() {
    8000417c:	00005797          	auipc	a5,0x5
    80004180:	48478793          	addi	a5,a5,1156 # 80009600 <_ZTV6Thread+0x10>
    80004184:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80004188:	ffffd097          	auipc	ra,0xffffd
    8000418c:	4d0080e7          	jalr	1232(ra) # 80001658 <_Z11thread_exitv>
    80004190:	00048513          	mv	a0,s1
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	a74080e7          	jalr	-1420(ra) # 80001c08 <_ZdlPv>
    8000419c:	01813083          	ld	ra,24(sp)
    800041a0:	01013403          	ld	s0,16(sp)
    800041a4:	00813483          	ld	s1,8(sp)
    800041a8:	02010113          	addi	sp,sp,32
    800041ac:	00008067          	ret

00000000800041b0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    800041c0:	00005797          	auipc	a5,0x5
    800041c4:	44078793          	addi	a5,a5,1088 # 80009600 <_ZTV6Thread+0x10>
    800041c8:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800041cc:	ffffd097          	auipc	ra,0xffffd
    800041d0:	48c080e7          	jalr	1164(ra) # 80001658 <_Z11thread_exitv>
    800041d4:	00813083          	ld	ra,8(sp)
    800041d8:	00013403          	ld	s0,0(sp)
    800041dc:	01010113          	addi	sp,sp,16
    800041e0:	00008067          	ret

00000000800041e4 <_ZN7WorkerBD0Ev>:
    800041e4:	fe010113          	addi	sp,sp,-32
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	00813823          	sd	s0,16(sp)
    800041f0:	00913423          	sd	s1,8(sp)
    800041f4:	02010413          	addi	s0,sp,32
    800041f8:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800041fc:	00005797          	auipc	a5,0x5
    80004200:	40478793          	addi	a5,a5,1028 # 80009600 <_ZTV6Thread+0x10>
    80004204:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80004208:	ffffd097          	auipc	ra,0xffffd
    8000420c:	450080e7          	jalr	1104(ra) # 80001658 <_Z11thread_exitv>
    80004210:	00048513          	mv	a0,s1
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	9f4080e7          	jalr	-1548(ra) # 80001c08 <_ZdlPv>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret

0000000080004230 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00113423          	sd	ra,8(sp)
    80004238:	00813023          	sd	s0,0(sp)
    8000423c:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    80004240:	00005797          	auipc	a5,0x5
    80004244:	3c078793          	addi	a5,a5,960 # 80009600 <_ZTV6Thread+0x10>
    80004248:	00f53023          	sd	a5,0(a0)
        thread_exit();
    8000424c:	ffffd097          	auipc	ra,0xffffd
    80004250:	40c080e7          	jalr	1036(ra) # 80001658 <_Z11thread_exitv>
    80004254:	00813083          	ld	ra,8(sp)
    80004258:	00013403          	ld	s0,0(sp)
    8000425c:	01010113          	addi	sp,sp,16
    80004260:	00008067          	ret

0000000080004264 <_ZN7WorkerCD0Ev>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00913423          	sd	s1,8(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	00050493          	mv	s1,a0
    virtual ~Thread() {
    8000427c:	00005797          	auipc	a5,0x5
    80004280:	38478793          	addi	a5,a5,900 # 80009600 <_ZTV6Thread+0x10>
    80004284:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80004288:	ffffd097          	auipc	ra,0xffffd
    8000428c:	3d0080e7          	jalr	976(ra) # 80001658 <_Z11thread_exitv>
    80004290:	00048513          	mv	a0,s1
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	974080e7          	jalr	-1676(ra) # 80001c08 <_ZdlPv>
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	00813483          	ld	s1,8(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret

00000000800042b0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800042b0:	ff010113          	addi	sp,sp,-16
    800042b4:	00113423          	sd	ra,8(sp)
    800042b8:	00813023          	sd	s0,0(sp)
    800042bc:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    800042c0:	00005797          	auipc	a5,0x5
    800042c4:	34078793          	addi	a5,a5,832 # 80009600 <_ZTV6Thread+0x10>
    800042c8:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800042cc:	ffffd097          	auipc	ra,0xffffd
    800042d0:	38c080e7          	jalr	908(ra) # 80001658 <_Z11thread_exitv>
    800042d4:	00813083          	ld	ra,8(sp)
    800042d8:	00013403          	ld	s0,0(sp)
    800042dc:	01010113          	addi	sp,sp,16
    800042e0:	00008067          	ret

00000000800042e4 <_ZN7WorkerDD0Ev>:
    800042e4:	fe010113          	addi	sp,sp,-32
    800042e8:	00113c23          	sd	ra,24(sp)
    800042ec:	00813823          	sd	s0,16(sp)
    800042f0:	00913423          	sd	s1,8(sp)
    800042f4:	02010413          	addi	s0,sp,32
    800042f8:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800042fc:	00005797          	auipc	a5,0x5
    80004300:	30478793          	addi	a5,a5,772 # 80009600 <_ZTV6Thread+0x10>
    80004304:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80004308:	ffffd097          	auipc	ra,0xffffd
    8000430c:	350080e7          	jalr	848(ra) # 80001658 <_Z11thread_exitv>
    80004310:	00048513          	mv	a0,s1
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	8f4080e7          	jalr	-1804(ra) # 80001c08 <_ZdlPv>
    8000431c:	01813083          	ld	ra,24(sp)
    80004320:	01013403          	ld	s0,16(sp)
    80004324:	00813483          	ld	s1,8(sp)
    80004328:	02010113          	addi	sp,sp,32
    8000432c:	00008067          	ret

0000000080004330 <_ZN7WorkerA3runEv>:
    void run() override {
    80004330:	ff010113          	addi	sp,sp,-16
    80004334:	00113423          	sd	ra,8(sp)
    80004338:	00813023          	sd	s0,0(sp)
    8000433c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004340:	00000593          	li	a1,0
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	7a8080e7          	jalr	1960(ra) # 80003aec <_ZN7WorkerA11workerBodyAEPv>
    }
    8000434c:	00813083          	ld	ra,8(sp)
    80004350:	00013403          	ld	s0,0(sp)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret

000000008000435c <_ZN7WorkerB3runEv>:
    void run() override {
    8000435c:	ff010113          	addi	sp,sp,-16
    80004360:	00113423          	sd	ra,8(sp)
    80004364:	00813023          	sd	s0,0(sp)
    80004368:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000436c:	00000593          	li	a1,0
    80004370:	00000097          	auipc	ra,0x0
    80004374:	848080e7          	jalr	-1976(ra) # 80003bb8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004378:	00813083          	ld	ra,8(sp)
    8000437c:	00013403          	ld	s0,0(sp)
    80004380:	01010113          	addi	sp,sp,16
    80004384:	00008067          	ret

0000000080004388 <_ZN7WorkerC3runEv>:
    void run() override {
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00113423          	sd	ra,8(sp)
    80004390:	00813023          	sd	s0,0(sp)
    80004394:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004398:	00000593          	li	a1,0
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	8f0080e7          	jalr	-1808(ra) # 80003c8c <_ZN7WorkerC11workerBodyCEPv>
    }
    800043a4:	00813083          	ld	ra,8(sp)
    800043a8:	00013403          	ld	s0,0(sp)
    800043ac:	01010113          	addi	sp,sp,16
    800043b0:	00008067          	ret

00000000800043b4 <_ZN7WorkerD3runEv>:
    void run() override {
    800043b4:	ff010113          	addi	sp,sp,-16
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	00813023          	sd	s0,0(sp)
    800043c0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800043c4:	00000593          	li	a1,0
    800043c8:	00000097          	auipc	ra,0x0
    800043cc:	a44080e7          	jalr	-1468(ra) # 80003e0c <_ZN7WorkerD11workerBodyDEPv>
    }
    800043d0:	00813083          	ld	ra,8(sp)
    800043d4:	00013403          	ld	s0,0(sp)
    800043d8:	01010113          	addi	sp,sp,16
    800043dc:	00008067          	ret

00000000800043e0 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    800043e0:	00100793          	li	a5,1
    800043e4:	06a7f863          	bgeu	a5,a0,80004454 <_ZL9fibonaccim+0x74>
static uint64 fibonacci(uint64 n) {
    800043e8:	fe010113          	addi	sp,sp,-32
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	00813823          	sd	s0,16(sp)
    800043f4:	00913423          	sd	s1,8(sp)
    800043f8:	01213023          	sd	s2,0(sp)
    800043fc:	02010413          	addi	s0,sp,32
    80004400:	00050493          	mv	s1,a0
    if (n % 10 == 0) { thread_dispatch(); }
    80004404:	00a00793          	li	a5,10
    80004408:	02f577b3          	remu	a5,a0,a5
    8000440c:	02078e63          	beqz	a5,80004448 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004410:	fff48513          	addi	a0,s1,-1
    80004414:	00000097          	auipc	ra,0x0
    80004418:	fcc080e7          	jalr	-52(ra) # 800043e0 <_ZL9fibonaccim>
    8000441c:	00050913          	mv	s2,a0
    80004420:	ffe48513          	addi	a0,s1,-2
    80004424:	00000097          	auipc	ra,0x0
    80004428:	fbc080e7          	jalr	-68(ra) # 800043e0 <_ZL9fibonaccim>
    8000442c:	00a90533          	add	a0,s2,a0
}
    80004430:	01813083          	ld	ra,24(sp)
    80004434:	01013403          	ld	s0,16(sp)
    80004438:	00813483          	ld	s1,8(sp)
    8000443c:	00013903          	ld	s2,0(sp)
    80004440:	02010113          	addi	sp,sp,32
    80004444:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004448:	ffffd097          	auipc	ra,0xffffd
    8000444c:	260080e7          	jalr	608(ra) # 800016a8 <_Z15thread_dispatchv>
    80004450:	fc1ff06f          	j	80004410 <_ZL9fibonaccim+0x30>
}
    80004454:	00008067          	ret

0000000080004458 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004458:	fe010113          	addi	sp,sp,-32
    8000445c:	00113c23          	sd	ra,24(sp)
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	01213023          	sd	s2,0(sp)
    8000446c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004470:	00a00493          	li	s1,10
    for (; i < 13; i++) {
    80004474:	00c00793          	li	a5,12
    80004478:	0497e263          	bltu	a5,s1,800044bc <_ZL11workerBodyDPv+0x64>
        printString("D: i="); printInt(i); printString("\n");
    8000447c:	00005517          	auipc	a0,0x5
    80004480:	06450513          	addi	a0,a0,100 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004484:	00001097          	auipc	ra,0x1
    80004488:	f50080e7          	jalr	-176(ra) # 800053d4 <_Z11printStringPKc>
    8000448c:	00000613          	li	a2,0
    80004490:	00a00593          	li	a1,10
    80004494:	00048513          	mv	a0,s1
    80004498:	00001097          	auipc	ra,0x1
    8000449c:	0e8080e7          	jalr	232(ra) # 80005580 <_Z8printIntiii>
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	48050513          	addi	a0,a0,1152 # 80009920 <_ZTV8Consumer+0x298>
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	f2c080e7          	jalr	-212(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800044b0:	0014849b          	addiw	s1,s1,1
    800044b4:	0ff4f493          	andi	s1,s1,255
    800044b8:	fbdff06f          	j	80004474 <_ZL11workerBodyDPv+0x1c>
    }

    printString("D: dispatch\n");
    800044bc:	00005517          	auipc	a0,0x5
    800044c0:	02c50513          	addi	a0,a0,44 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	f10080e7          	jalr	-240(ra) # 800053d4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044cc:	00500313          	li	t1,5
    thread_dispatch();
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	1d8080e7          	jalr	472(ra) # 800016a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044d8:	01000513          	li	a0,16
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	f04080e7          	jalr	-252(ra) # 800043e0 <_ZL9fibonaccim>
    800044e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044e8:	00005517          	auipc	a0,0x5
    800044ec:	01050513          	addi	a0,a0,16 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800044f0:	00001097          	auipc	ra,0x1
    800044f4:	ee4080e7          	jalr	-284(ra) # 800053d4 <_Z11printStringPKc>
    800044f8:	00000613          	li	a2,0
    800044fc:	00a00593          	li	a1,10
    80004500:	0009051b          	sext.w	a0,s2
    80004504:	00001097          	auipc	ra,0x1
    80004508:	07c080e7          	jalr	124(ra) # 80005580 <_Z8printIntiii>
    8000450c:	00005517          	auipc	a0,0x5
    80004510:	41450513          	addi	a0,a0,1044 # 80009920 <_ZTV8Consumer+0x298>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	ec0080e7          	jalr	-320(ra) # 800053d4 <_Z11printStringPKc>

    for (; i < 16; i++) {
    8000451c:	00f00793          	li	a5,15
    80004520:	0497e263          	bltu	a5,s1,80004564 <_ZL11workerBodyDPv+0x10c>
        printString("D: i="); printInt(i); printString("\n");
    80004524:	00005517          	auipc	a0,0x5
    80004528:	fbc50513          	addi	a0,a0,-68 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	ea8080e7          	jalr	-344(ra) # 800053d4 <_Z11printStringPKc>
    80004534:	00000613          	li	a2,0
    80004538:	00a00593          	li	a1,10
    8000453c:	00048513          	mv	a0,s1
    80004540:	00001097          	auipc	ra,0x1
    80004544:	040080e7          	jalr	64(ra) # 80005580 <_Z8printIntiii>
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	3d850513          	addi	a0,a0,984 # 80009920 <_ZTV8Consumer+0x298>
    80004550:	00001097          	auipc	ra,0x1
    80004554:	e84080e7          	jalr	-380(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004558:	0014849b          	addiw	s1,s1,1
    8000455c:	0ff4f493          	andi	s1,s1,255
    80004560:	fbdff06f          	j	8000451c <_ZL11workerBodyDPv+0xc4>
    }

    printString("D finished!\n");
    80004564:	00005517          	auipc	a0,0x5
    80004568:	fa450513          	addi	a0,a0,-92 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	e68080e7          	jalr	-408(ra) # 800053d4 <_Z11printStringPKc>
    finishedD = true;
    80004574:	00100793          	li	a5,1
    80004578:	00007717          	auipc	a4,0x7
    8000457c:	34f70e23          	sb	a5,860(a4) # 8000b8d4 <_ZL9finishedD>
    thread_dispatch();
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	128080e7          	jalr	296(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80004588:	01813083          	ld	ra,24(sp)
    8000458c:	01013403          	ld	s0,16(sp)
    80004590:	00813483          	ld	s1,8(sp)
    80004594:	00013903          	ld	s2,0(sp)
    80004598:	02010113          	addi	sp,sp,32
    8000459c:	00008067          	ret

00000000800045a0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800045a0:	fe010113          	addi	sp,sp,-32
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	00813823          	sd	s0,16(sp)
    800045ac:	00913423          	sd	s1,8(sp)
    800045b0:	01213023          	sd	s2,0(sp)
    800045b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045b8:	00000493          	li	s1,0
    for (; i < 3; i++) {
    800045bc:	00200793          	li	a5,2
    800045c0:	0497e263          	bltu	a5,s1,80004604 <_ZL11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n");
    800045c4:	00005517          	auipc	a0,0x5
    800045c8:	f5450513          	addi	a0,a0,-172 # 80009518 <CONSOLE_STATUS+0x508>
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	e08080e7          	jalr	-504(ra) # 800053d4 <_Z11printStringPKc>
    800045d4:	00000613          	li	a2,0
    800045d8:	00a00593          	li	a1,10
    800045dc:	00048513          	mv	a0,s1
    800045e0:	00001097          	auipc	ra,0x1
    800045e4:	fa0080e7          	jalr	-96(ra) # 80005580 <_Z8printIntiii>
    800045e8:	00005517          	auipc	a0,0x5
    800045ec:	33850513          	addi	a0,a0,824 # 80009920 <_ZTV8Consumer+0x298>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	de4080e7          	jalr	-540(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045f8:	0014849b          	addiw	s1,s1,1
    800045fc:	0ff4f493          	andi	s1,s1,255
    80004600:	fbdff06f          	j	800045bc <_ZL11workerBodyCPv+0x1c>
    printString("C: dispatch\n");
    80004604:	00005517          	auipc	a0,0x5
    80004608:	f1c50513          	addi	a0,a0,-228 # 80009520 <CONSOLE_STATUS+0x510>
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	dc8080e7          	jalr	-568(ra) # 800053d4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004614:	00700313          	li	t1,7
    thread_dispatch();
    80004618:	ffffd097          	auipc	ra,0xffffd
    8000461c:	090080e7          	jalr	144(ra) # 800016a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004620:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004624:	00005517          	auipc	a0,0x5
    80004628:	f0c50513          	addi	a0,a0,-244 # 80009530 <CONSOLE_STATUS+0x520>
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	da8080e7          	jalr	-600(ra) # 800053d4 <_Z11printStringPKc>
    80004634:	00000613          	li	a2,0
    80004638:	00a00593          	li	a1,10
    8000463c:	0009051b          	sext.w	a0,s2
    80004640:	00001097          	auipc	ra,0x1
    80004644:	f40080e7          	jalr	-192(ra) # 80005580 <_Z8printIntiii>
    80004648:	00005517          	auipc	a0,0x5
    8000464c:	2d850513          	addi	a0,a0,728 # 80009920 <_ZTV8Consumer+0x298>
    80004650:	00001097          	auipc	ra,0x1
    80004654:	d84080e7          	jalr	-636(ra) # 800053d4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004658:	00c00513          	li	a0,12
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	d84080e7          	jalr	-636(ra) # 800043e0 <_ZL9fibonaccim>
    80004664:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	ed050513          	addi	a0,a0,-304 # 80009538 <CONSOLE_STATUS+0x528>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	d64080e7          	jalr	-668(ra) # 800053d4 <_Z11printStringPKc>
    80004678:	00000613          	li	a2,0
    8000467c:	00a00593          	li	a1,10
    80004680:	0009051b          	sext.w	a0,s2
    80004684:	00001097          	auipc	ra,0x1
    80004688:	efc080e7          	jalr	-260(ra) # 80005580 <_Z8printIntiii>
    8000468c:	00005517          	auipc	a0,0x5
    80004690:	29450513          	addi	a0,a0,660 # 80009920 <_ZTV8Consumer+0x298>
    80004694:	00001097          	auipc	ra,0x1
    80004698:	d40080e7          	jalr	-704(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000469c:	00500793          	li	a5,5
    800046a0:	0497e263          	bltu	a5,s1,800046e4 <_ZL11workerBodyCPv+0x144>
        printString("C: i="); printInt(i); printString("\n");
    800046a4:	00005517          	auipc	a0,0x5
    800046a8:	e7450513          	addi	a0,a0,-396 # 80009518 <CONSOLE_STATUS+0x508>
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	d28080e7          	jalr	-728(ra) # 800053d4 <_Z11printStringPKc>
    800046b4:	00000613          	li	a2,0
    800046b8:	00a00593          	li	a1,10
    800046bc:	00048513          	mv	a0,s1
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	ec0080e7          	jalr	-320(ra) # 80005580 <_Z8printIntiii>
    800046c8:	00005517          	auipc	a0,0x5
    800046cc:	25850513          	addi	a0,a0,600 # 80009920 <_ZTV8Consumer+0x298>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	d04080e7          	jalr	-764(ra) # 800053d4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046d8:	0014849b          	addiw	s1,s1,1
    800046dc:	0ff4f493          	andi	s1,s1,255
    800046e0:	fbdff06f          	j	8000469c <_ZL11workerBodyCPv+0xfc>
    printString("A finished!\n");
    800046e4:	00005517          	auipc	a0,0x5
    800046e8:	e6450513          	addi	a0,a0,-412 # 80009548 <CONSOLE_STATUS+0x538>
    800046ec:	00001097          	auipc	ra,0x1
    800046f0:	ce8080e7          	jalr	-792(ra) # 800053d4 <_Z11printStringPKc>
    finishedC = true;
    800046f4:	00100793          	li	a5,1
    800046f8:	00007717          	auipc	a4,0x7
    800046fc:	1cf70ea3          	sb	a5,477(a4) # 8000b8d5 <_ZL9finishedC>
    thread_dispatch();
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	fa8080e7          	jalr	-88(ra) # 800016a8 <_Z15thread_dispatchv>
}
    80004708:	01813083          	ld	ra,24(sp)
    8000470c:	01013403          	ld	s0,16(sp)
    80004710:	00813483          	ld	s1,8(sp)
    80004714:	00013903          	ld	s2,0(sp)
    80004718:	02010113          	addi	sp,sp,32
    8000471c:	00008067          	ret

0000000080004720 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004720:	fe010113          	addi	sp,sp,-32
    80004724:	00113c23          	sd	ra,24(sp)
    80004728:	00813823          	sd	s0,16(sp)
    8000472c:	00913423          	sd	s1,8(sp)
    80004730:	01213023          	sd	s2,0(sp)
    80004734:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004738:	00000913          	li	s2,0
    8000473c:	0380006f          	j	80004774 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	f68080e7          	jalr	-152(ra) # 800016a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004748:	00148493          	addi	s1,s1,1
    8000474c:	000027b7          	lui	a5,0x2
    80004750:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004754:	0097ee63          	bltu	a5,s1,80004770 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004758:	00000713          	li	a4,0
    8000475c:	000077b7          	lui	a5,0x7
    80004760:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004764:	fce7eee3          	bltu	a5,a4,80004740 <_ZL11workerBodyBPv+0x20>
    80004768:	00170713          	addi	a4,a4,1
    8000476c:	ff1ff06f          	j	8000475c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004770:	00190913          	addi	s2,s2,1
    80004774:	00f00793          	li	a5,15
    80004778:	0527e063          	bltu	a5,s2,800047b8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000477c:	00005517          	auipc	a0,0x5
    80004780:	ddc50513          	addi	a0,a0,-548 # 80009558 <CONSOLE_STATUS+0x548>
    80004784:	00001097          	auipc	ra,0x1
    80004788:	c50080e7          	jalr	-944(ra) # 800053d4 <_Z11printStringPKc>
    8000478c:	00000613          	li	a2,0
    80004790:	00a00593          	li	a1,10
    80004794:	0009051b          	sext.w	a0,s2
    80004798:	00001097          	auipc	ra,0x1
    8000479c:	de8080e7          	jalr	-536(ra) # 80005580 <_Z8printIntiii>
    800047a0:	00005517          	auipc	a0,0x5
    800047a4:	18050513          	addi	a0,a0,384 # 80009920 <_ZTV8Consumer+0x298>
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	c2c080e7          	jalr	-980(ra) # 800053d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047b0:	00000493          	li	s1,0
    800047b4:	f99ff06f          	j	8000474c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	da850513          	addi	a0,a0,-600 # 80009560 <CONSOLE_STATUS+0x550>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	c14080e7          	jalr	-1004(ra) # 800053d4 <_Z11printStringPKc>
    finishedB = true;
    800047c8:	00100793          	li	a5,1
    800047cc:	00007717          	auipc	a4,0x7
    800047d0:	10f70523          	sb	a5,266(a4) # 8000b8d6 <_ZL9finishedB>
    thread_dispatch();
    800047d4:	ffffd097          	auipc	ra,0xffffd
    800047d8:	ed4080e7          	jalr	-300(ra) # 800016a8 <_Z15thread_dispatchv>
}
    800047dc:	01813083          	ld	ra,24(sp)
    800047e0:	01013403          	ld	s0,16(sp)
    800047e4:	00813483          	ld	s1,8(sp)
    800047e8:	00013903          	ld	s2,0(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret

00000000800047f4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047f4:	fe010113          	addi	sp,sp,-32
    800047f8:	00113c23          	sd	ra,24(sp)
    800047fc:	00813823          	sd	s0,16(sp)
    80004800:	00913423          	sd	s1,8(sp)
    80004804:	01213023          	sd	s2,0(sp)
    80004808:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000480c:	00000913          	li	s2,0
    80004810:	0380006f          	j	80004848 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	e94080e7          	jalr	-364(ra) # 800016a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000481c:	00148493          	addi	s1,s1,1
    80004820:	000027b7          	lui	a5,0x2
    80004824:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004828:	0097ee63          	bltu	a5,s1,80004844 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000482c:	00000713          	li	a4,0
    80004830:	000077b7          	lui	a5,0x7
    80004834:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004838:	fce7eee3          	bltu	a5,a4,80004814 <_ZL11workerBodyAPv+0x20>
    8000483c:	00170713          	addi	a4,a4,1
    80004840:	ff1ff06f          	j	80004830 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004844:	00190913          	addi	s2,s2,1
    80004848:	00900793          	li	a5,9
    8000484c:	0527e063          	bltu	a5,s2,8000488c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	d2050513          	addi	a0,a0,-736 # 80009570 <CONSOLE_STATUS+0x560>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	b7c080e7          	jalr	-1156(ra) # 800053d4 <_Z11printStringPKc>
    80004860:	00000613          	li	a2,0
    80004864:	00a00593          	li	a1,10
    80004868:	0009051b          	sext.w	a0,s2
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	d14080e7          	jalr	-748(ra) # 80005580 <_Z8printIntiii>
    80004874:	00005517          	auipc	a0,0x5
    80004878:	0ac50513          	addi	a0,a0,172 # 80009920 <_ZTV8Consumer+0x298>
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	b58080e7          	jalr	-1192(ra) # 800053d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004884:	00000493          	li	s1,0
    80004888:	f99ff06f          	j	80004820 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000488c:	00005517          	auipc	a0,0x5
    80004890:	cbc50513          	addi	a0,a0,-836 # 80009548 <CONSOLE_STATUS+0x538>
    80004894:	00001097          	auipc	ra,0x1
    80004898:	b40080e7          	jalr	-1216(ra) # 800053d4 <_Z11printStringPKc>
    finishedA = true;
    8000489c:	00100793          	li	a5,1
    800048a0:	00007717          	auipc	a4,0x7
    800048a4:	02f70ba3          	sb	a5,55(a4) # 8000b8d7 <_ZL9finishedA>
}
    800048a8:	01813083          	ld	ra,24(sp)
    800048ac:	01013403          	ld	s0,16(sp)
    800048b0:	00813483          	ld	s1,8(sp)
    800048b4:	00013903          	ld	s2,0(sp)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00008067          	ret

00000000800048c0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800048c0:	fd010113          	addi	sp,sp,-48
    800048c4:	02113423          	sd	ra,40(sp)
    800048c8:	02813023          	sd	s0,32(sp)
    800048cc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048d0:	00000613          	li	a2,0
    800048d4:	00000597          	auipc	a1,0x0
    800048d8:	f2058593          	addi	a1,a1,-224 # 800047f4 <_ZL11workerBodyAPv>
    800048dc:	fd040513          	addi	a0,s0,-48
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	d28080e7          	jalr	-728(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800048e8:	00005517          	auipc	a0,0x5
    800048ec:	c9050513          	addi	a0,a0,-880 # 80009578 <CONSOLE_STATUS+0x568>
    800048f0:	00001097          	auipc	ra,0x1
    800048f4:	ae4080e7          	jalr	-1308(ra) # 800053d4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048f8:	00000613          	li	a2,0
    800048fc:	00000597          	auipc	a1,0x0
    80004900:	e2458593          	addi	a1,a1,-476 # 80004720 <_ZL11workerBodyBPv>
    80004904:	fd840513          	addi	a0,s0,-40
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	d00080e7          	jalr	-768(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004910:	00005517          	auipc	a0,0x5
    80004914:	c8050513          	addi	a0,a0,-896 # 80009590 <CONSOLE_STATUS+0x580>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	abc080e7          	jalr	-1348(ra) # 800053d4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004920:	00000613          	li	a2,0
    80004924:	00000597          	auipc	a1,0x0
    80004928:	c7c58593          	addi	a1,a1,-900 # 800045a0 <_ZL11workerBodyCPv>
    8000492c:	fe040513          	addi	a0,s0,-32
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	cd8080e7          	jalr	-808(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	c7050513          	addi	a0,a0,-912 # 800095a8 <CONSOLE_STATUS+0x598>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	a94080e7          	jalr	-1388(ra) # 800053d4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004948:	00000613          	li	a2,0
    8000494c:	00000597          	auipc	a1,0x0
    80004950:	b0c58593          	addi	a1,a1,-1268 # 80004458 <_ZL11workerBodyDPv>
    80004954:	fe840513          	addi	a0,s0,-24
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	cb0080e7          	jalr	-848(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004960:	00005517          	auipc	a0,0x5
    80004964:	c6050513          	addi	a0,a0,-928 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	a6c080e7          	jalr	-1428(ra) # 800053d4 <_Z11printStringPKc>
    80004970:	00c0006f          	j	8000497c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	d34080e7          	jalr	-716(ra) # 800016a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000497c:	00007797          	auipc	a5,0x7
    80004980:	f5b78793          	addi	a5,a5,-165 # 8000b8d7 <_ZL9finishedA>
    80004984:	0007c783          	lbu	a5,0(a5)
    80004988:	0ff7f793          	andi	a5,a5,255
    8000498c:	fe0784e3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    80004990:	00007797          	auipc	a5,0x7
    80004994:	f4678793          	addi	a5,a5,-186 # 8000b8d6 <_ZL9finishedB>
    80004998:	0007c783          	lbu	a5,0(a5)
    8000499c:	0ff7f793          	andi	a5,a5,255
    800049a0:	fc078ae3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    800049a4:	00007797          	auipc	a5,0x7
    800049a8:	f3178793          	addi	a5,a5,-207 # 8000b8d5 <_ZL9finishedC>
    800049ac:	0007c783          	lbu	a5,0(a5)
    800049b0:	0ff7f793          	andi	a5,a5,255
    800049b4:	fc0780e3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    800049b8:	00007797          	auipc	a5,0x7
    800049bc:	f1c78793          	addi	a5,a5,-228 # 8000b8d4 <_ZL9finishedD>
    800049c0:	0007c783          	lbu	a5,0(a5)
    800049c4:	0ff7f793          	andi	a5,a5,255
    800049c8:	fa0786e3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800049cc:	02813083          	ld	ra,40(sp)
    800049d0:	02013403          	ld	s0,32(sp)
    800049d4:	03010113          	addi	sp,sp,48
    800049d8:	00008067          	ret

00000000800049dc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800049dc:	fd010113          	addi	sp,sp,-48
    800049e0:	02113423          	sd	ra,40(sp)
    800049e4:	02813023          	sd	s0,32(sp)
    800049e8:	00913c23          	sd	s1,24(sp)
    800049ec:	01213823          	sd	s2,16(sp)
    800049f0:	01313423          	sd	s3,8(sp)
    800049f4:	03010413          	addi	s0,sp,48
    800049f8:	00050993          	mv	s3,a0
    800049fc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004a00:	00000913          	li	s2,0
    80004a04:	00c0006f          	j	80004a10 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
        thread_dispatch();
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	ca0080e7          	jalr	-864(ra) # 800016a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	e44080e7          	jalr	-444(ra) # 80001854 <_Z4getcv>
    80004a18:	0005059b          	sext.w	a1,a0
    80004a1c:	01b00793          	li	a5,27
    80004a20:	02f58a63          	beq	a1,a5,80004a54 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004a24:	0084b503          	ld	a0,8(s1)
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	350080e7          	jalr	848(ra) # 80005d78 <_ZN9BufferCPP3putEi>
        i++;
    80004a30:	0019079b          	addiw	a5,s2,1
    80004a34:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004a38:	0004a683          	lw	a3,0(s1)
    80004a3c:	0026971b          	slliw	a4,a3,0x2
    80004a40:	00d7073b          	addw	a4,a4,a3
    80004a44:	0017169b          	slliw	a3,a4,0x1
    80004a48:	02d7e7bb          	remw	a5,a5,a3
    80004a4c:	fc0792e3          	bnez	a5,80004a10 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a50:	fb9ff06f          	j	80004a08 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    80004a54:	00100793          	li	a5,1
    80004a58:	00007717          	auipc	a4,0x7
    80004a5c:	e8f72023          	sw	a5,-384(a4) # 8000b8d8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a60:	0209b783          	ld	a5,32(s3)
    80004a64:	02100593          	li	a1,33
    80004a68:	0087b503          	ld	a0,8(a5)
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	30c080e7          	jalr	780(ra) # 80005d78 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a74:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80004a78:	0087b503          	ld	a0,8(a5)
    80004a7c:	00050663          	beqz	a0,80004a88 <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
        return sem_signal(myHandle);
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	d68080e7          	jalr	-664(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
}
    80004a88:	02813083          	ld	ra,40(sp)
    80004a8c:	02013403          	ld	s0,32(sp)
    80004a90:	01813483          	ld	s1,24(sp)
    80004a94:	01013903          	ld	s2,16(sp)
    80004a98:	00813983          	ld	s3,8(sp)
    80004a9c:	03010113          	addi	sp,sp,48
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004aa4:	fe010113          	addi	sp,sp,-32
    80004aa8:	00113c23          	sd	ra,24(sp)
    80004aac:	00813823          	sd	s0,16(sp)
    80004ab0:	00913423          	sd	s1,8(sp)
    80004ab4:	01213023          	sd	s2,0(sp)
    80004ab8:	02010413          	addi	s0,sp,32
    80004abc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004ac0:	00000913          	li	s2,0
    80004ac4:	00c0006f          	j	80004ad0 <_ZN12ProducerSync8producerEPv+0x2c>
        thread_dispatch();
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	be0080e7          	jalr	-1056(ra) # 800016a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80004ad0:	00007797          	auipc	a5,0x7
    80004ad4:	e0878793          	addi	a5,a5,-504 # 8000b8d8 <_ZL9threadEnd>
    80004ad8:	0007a783          	lw	a5,0(a5)
    80004adc:	0007879b          	sext.w	a5,a5
    80004ae0:	02079e63          	bnez	a5,80004b1c <_ZN12ProducerSync8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80004ae4:	0004a583          	lw	a1,0(s1)
    80004ae8:	0305859b          	addiw	a1,a1,48
    80004aec:	0084b503          	ld	a0,8(s1)
    80004af0:	00001097          	auipc	ra,0x1
    80004af4:	288080e7          	jalr	648(ra) # 80005d78 <_ZN9BufferCPP3putEi>
        i++;
    80004af8:	0019079b          	addiw	a5,s2,1
    80004afc:	0007891b          	sext.w	s2,a5

        if (i % (10 * data->id) == 0) {
    80004b00:	0004a683          	lw	a3,0(s1)
    80004b04:	0026971b          	slliw	a4,a3,0x2
    80004b08:	00d7073b          	addw	a4,a4,a3
    80004b0c:	0017169b          	slliw	a3,a4,0x1
    80004b10:	02d7e7bb          	remw	a5,a5,a3
    80004b14:	fa079ee3          	bnez	a5,80004ad0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004b18:	fb1ff06f          	j	80004ac8 <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80004b1c:	0104b783          	ld	a5,16(s1)
        if (myHandle == nullptr) {
    80004b20:	0087b503          	ld	a0,8(a5)
    80004b24:	00050663          	beqz	a0,80004b30 <_ZN12ProducerSync8producerEPv+0x8c>
        return sem_signal(myHandle);
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	cc0080e7          	jalr	-832(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
}
    80004b30:	01813083          	ld	ra,24(sp)
    80004b34:	01013403          	ld	s0,16(sp)
    80004b38:	00813483          	ld	s1,8(sp)
    80004b3c:	00013903          	ld	s2,0(sp)
    80004b40:	02010113          	addi	sp,sp,32
    80004b44:	00008067          	ret

0000000080004b48 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004b48:	fd010113          	addi	sp,sp,-48
    80004b4c:	02113423          	sd	ra,40(sp)
    80004b50:	02813023          	sd	s0,32(sp)
    80004b54:	00913c23          	sd	s1,24(sp)
    80004b58:	01213823          	sd	s2,16(sp)
    80004b5c:	01313423          	sd	s3,8(sp)
    80004b60:	01413023          	sd	s4,0(sp)
    80004b64:	03010413          	addi	s0,sp,48
    80004b68:	00050993          	mv	s3,a0
    80004b6c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b70:	00000a13          	li	s4,0
    80004b74:	01c0006f          	j	80004b90 <_ZN12ConsumerSync8consumerEPv+0x48>
        thread_dispatch();
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	b30080e7          	jalr	-1232(ra) # 800016a8 <_Z15thread_dispatchv>
    80004b80:	0580006f          	j	80004bd8 <_ZN12ConsumerSync8consumerEPv+0x90>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b84:	00a00513          	li	a0,10
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	cf4080e7          	jalr	-780(ra) # 8000187c <_Z4putcc>
    while (!threadEnd) {
    80004b90:	00007797          	auipc	a5,0x7
    80004b94:	d4878793          	addi	a5,a5,-696 # 8000b8d8 <_ZL9threadEnd>
    80004b98:	0007a783          	lw	a5,0(a5)
    80004b9c:	0007879b          	sext.w	a5,a5
    80004ba0:	04079463          	bnez	a5,80004be8 <_ZN12ConsumerSync8consumerEPv+0xa0>
        int key = data->buffer->get();
    80004ba4:	00893503          	ld	a0,8(s2)
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	280080e7          	jalr	640(ra) # 80005e28 <_ZN9BufferCPP3getEv>
        i++;
    80004bb0:	001a049b          	addiw	s1,s4,1
    80004bb4:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004bb8:	0ff57513          	andi	a0,a0,255
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	cc0080e7          	jalr	-832(ra) # 8000187c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004bc4:	00092703          	lw	a4,0(s2)
    80004bc8:	0027179b          	slliw	a5,a4,0x2
    80004bcc:	00e787bb          	addw	a5,a5,a4
    80004bd0:	02f4e7bb          	remw	a5,s1,a5
    80004bd4:	fa0782e3          	beqz	a5,80004b78 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004bd8:	05000793          	li	a5,80
    80004bdc:	02f4e4bb          	remw	s1,s1,a5
    80004be0:	fa0498e3          	bnez	s1,80004b90 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004be4:	fa1ff06f          	j	80004b84 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
    80004be8:	0209b783          	ld	a5,32(s3)
    80004bec:	0087b503          	ld	a0,8(a5)
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	2e4080e7          	jalr	740(ra) # 80005ed4 <_ZN9BufferCPP6getCntEv>
    80004bf8:	02a05263          	blez	a0,80004c1c <_ZN12ConsumerSync8consumerEPv+0xd4>
        int key = td->buffer->get();
    80004bfc:	0209b783          	ld	a5,32(s3)
    80004c00:	0087b503          	ld	a0,8(a5)
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	224080e7          	jalr	548(ra) # 80005e28 <_ZN9BufferCPP3getEv>
    static void putc(char c) { __putc(c); };
    80004c0c:	0ff57513          	andi	a0,a0,255
    80004c10:	00003097          	auipc	ra,0x3
    80004c14:	52c080e7          	jalr	1324(ra) # 8000813c <__putc>
    80004c18:	fd1ff06f          	j	80004be8 <_ZN12ConsumerSync8consumerEPv+0xa0>
        Console::putc(key);
    }

    data->wait->signal();
    80004c1c:	01093783          	ld	a5,16(s2)
        if (myHandle == nullptr) {
    80004c20:	0087b503          	ld	a0,8(a5)
    80004c24:	00050663          	beqz	a0,80004c30 <_ZN12ConsumerSync8consumerEPv+0xe8>
        return sem_signal(myHandle);
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	bc0080e7          	jalr	-1088(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
}
    80004c30:	02813083          	ld	ra,40(sp)
    80004c34:	02013403          	ld	s0,32(sp)
    80004c38:	01813483          	ld	s1,24(sp)
    80004c3c:	01013903          	ld	s2,16(sp)
    80004c40:	00813983          	ld	s3,8(sp)
    80004c44:	00013a03          	ld	s4,0(sp)
    80004c48:	03010113          	addi	sp,sp,48
    80004c4c:	00008067          	ret

0000000080004c50 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004c50:	f9010113          	addi	sp,sp,-112
    80004c54:	06113423          	sd	ra,104(sp)
    80004c58:	06813023          	sd	s0,96(sp)
    80004c5c:	04913c23          	sd	s1,88(sp)
    80004c60:	05213823          	sd	s2,80(sp)
    80004c64:	05313423          	sd	s3,72(sp)
    80004c68:	05413023          	sd	s4,64(sp)
    80004c6c:	03513c23          	sd	s5,56(sp)
    80004c70:	03613823          	sd	s6,48(sp)
    80004c74:	03713423          	sd	s7,40(sp)
    80004c78:	03813023          	sd	s8,32(sp)
    80004c7c:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c80:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c84:	00005517          	auipc	a0,0x5
    80004c88:	a2c50513          	addi	a0,a0,-1492 # 800096b0 <_ZTV8Consumer+0x28>
    80004c8c:	00000097          	auipc	ra,0x0
    80004c90:	748080e7          	jalr	1864(ra) # 800053d4 <_Z11printStringPKc>
    getString(input, 30);
    80004c94:	01e00593          	li	a1,30
    80004c98:	f9040513          	addi	a0,s0,-112
    80004c9c:	00000097          	auipc	ra,0x0
    80004ca0:	7c0080e7          	jalr	1984(ra) # 8000545c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ca4:	f9040513          	addi	a0,s0,-112
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	888080e7          	jalr	-1912(ra) # 80005530 <_Z11stringToIntPKc>
    80004cb0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004cb4:	00005517          	auipc	a0,0x5
    80004cb8:	a1c50513          	addi	a0,a0,-1508 # 800096d0 <_ZTV8Consumer+0x48>
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	718080e7          	jalr	1816(ra) # 800053d4 <_Z11printStringPKc>
    getString(input, 30);
    80004cc4:	01e00593          	li	a1,30
    80004cc8:	f9040513          	addi	a0,s0,-112
    80004ccc:	00000097          	auipc	ra,0x0
    80004cd0:	790080e7          	jalr	1936(ra) # 8000545c <_Z9getStringPci>
    n = stringToInt(input);
    80004cd4:	f9040513          	addi	a0,s0,-112
    80004cd8:	00001097          	auipc	ra,0x1
    80004cdc:	858080e7          	jalr	-1960(ra) # 80005530 <_Z11stringToIntPKc>
    80004ce0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004ce4:	00005517          	auipc	a0,0x5
    80004ce8:	a0c50513          	addi	a0,a0,-1524 # 800096f0 <_ZTV8Consumer+0x68>
    80004cec:	00000097          	auipc	ra,0x0
    80004cf0:	6e8080e7          	jalr	1768(ra) # 800053d4 <_Z11printStringPKc>
    80004cf4:	00000613          	li	a2,0
    80004cf8:	00a00593          	li	a1,10
    80004cfc:	00090513          	mv	a0,s2
    80004d00:	00001097          	auipc	ra,0x1
    80004d04:	880080e7          	jalr	-1920(ra) # 80005580 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004d08:	00005517          	auipc	a0,0x5
    80004d0c:	a0050513          	addi	a0,a0,-1536 # 80009708 <_ZTV8Consumer+0x80>
    80004d10:	00000097          	auipc	ra,0x0
    80004d14:	6c4080e7          	jalr	1732(ra) # 800053d4 <_Z11printStringPKc>
    80004d18:	00000613          	li	a2,0
    80004d1c:	00a00593          	li	a1,10
    80004d20:	00048513          	mv	a0,s1
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	85c080e7          	jalr	-1956(ra) # 80005580 <_Z8printIntiii>
    printString(".\n");
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	55450513          	addi	a0,a0,1364 # 80009280 <CONSOLE_STATUS+0x270>
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	6a0080e7          	jalr	1696(ra) # 800053d4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004d3c:	0324c463          	blt	s1,s2,80004d64 <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80004d40:	03205c63          	blez	s2,80004d78 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    80004d44:	03800513          	li	a0,56
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	e40080e7          	jalr	-448(ra) # 80001b88 <_Znwm>
    80004d50:	00050a93          	mv	s5,a0
    80004d54:	00048593          	mv	a1,s1
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	e6c080e7          	jalr	-404(ra) # 80005bc4 <_ZN9BufferCPPC1Ei>
    80004d60:	0300006f          	j	80004d90 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d64:	00005517          	auipc	a0,0x5
    80004d68:	9bc50513          	addi	a0,a0,-1604 # 80009720 <_ZTV8Consumer+0x98>
    80004d6c:	00000097          	auipc	ra,0x0
    80004d70:	668080e7          	jalr	1640(ra) # 800053d4 <_Z11printStringPKc>
        return;
    80004d74:	0140006f          	j	80004d88 <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d78:	00005517          	auipc	a0,0x5
    80004d7c:	9e850513          	addi	a0,a0,-1560 # 80009760 <_ZTV8Consumer+0xd8>
    80004d80:	00000097          	auipc	ra,0x0
    80004d84:	654080e7          	jalr	1620(ra) # 800053d4 <_Z11printStringPKc>
        return;
    80004d88:	000b8113          	mv	sp,s7
    80004d8c:	29c0006f          	j	80005028 <_Z29producerConsumer_CPP_Sync_APIv+0x3d8>
    waitForAll = new Semaphore(0);
    80004d90:	01000513          	li	a0,16
    80004d94:	ffffd097          	auipc	ra,0xffffd
    80004d98:	df4080e7          	jalr	-524(ra) # 80001b88 <_Znwm>
    80004d9c:	00050493          	mv	s1,a0
    Semaphore(unsigned init = 1) {
    80004da0:	00005797          	auipc	a5,0x5
    80004da4:	88878793          	addi	a5,a5,-1912 # 80009628 <_ZTV9Semaphore+0x10>
    80004da8:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80004dac:	00000593          	li	a1,0
    80004db0:	00850513          	addi	a0,a0,8
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	940080e7          	jalr	-1728(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    80004dbc:	00050463          	beqz	a0,80004dc4 <_Z29producerConsumer_CPP_Sync_APIv+0x174>
            myHandle = nullptr;
    80004dc0:	0004b423          	sd	zero,8(s1)
    80004dc4:	00007797          	auipc	a5,0x7
    80004dc8:	b097be23          	sd	s1,-1252(a5) # 8000b8e0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004dcc:	00391793          	slli	a5,s2,0x3
    80004dd0:	00f78793          	addi	a5,a5,15
    80004dd4:	ff07f793          	andi	a5,a5,-16
    80004dd8:	40f10133          	sub	sp,sp,a5
    80004ddc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004de0:	0019079b          	addiw	a5,s2,1
    80004de4:	00179713          	slli	a4,a5,0x1
    80004de8:	00f70733          	add	a4,a4,a5
    80004dec:	00371793          	slli	a5,a4,0x3
    80004df0:	00f78793          	addi	a5,a5,15
    80004df4:	ff07f793          	andi	a5,a5,-16
    80004df8:	40f10133          	sub	sp,sp,a5
    80004dfc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004e00:	00191c13          	slli	s8,s2,0x1
    80004e04:	012c0733          	add	a4,s8,s2
    80004e08:	00371793          	slli	a5,a4,0x3
    80004e0c:	00fa07b3          	add	a5,s4,a5
    80004e10:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004e14:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004e18:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004e1c:	02800513          	li	a0,40
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	d68080e7          	jalr	-664(ra) # 80001b88 <_Znwm>
    80004e28:	00050b13          	mv	s6,a0
    80004e2c:	012c0c33          	add	s8,s8,s2
    80004e30:	003c1793          	slli	a5,s8,0x3
    80004e34:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004e38:	00053423          	sd	zero,8(a0)
    80004e3c:	00053823          	sd	zero,16(a0)
    80004e40:	00053c23          	sd	zero,24(a0)
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004e44:	00005717          	auipc	a4,0x5
    80004e48:	c8470713          	addi	a4,a4,-892 # 80009ac8 <_ZTV12ConsumerSync+0x10>
    80004e4c:	00e53023          	sd	a4,0(a0)
    80004e50:	02f53023          	sd	a5,32(a0)
        if(thread_create(&myHandle, &Thread::body_exec, this) != 0) {
    80004e54:	00050613          	mv	a2,a0
    80004e58:	ffffe597          	auipc	a1,0xffffe
    80004e5c:	63058593          	addi	a1,a1,1584 # 80003488 <_ZN6Thread9body_execEPv>
    80004e60:	00850513          	addi	a0,a0,8
    80004e64:	ffffc097          	auipc	ra,0xffffc
    80004e68:	7a4080e7          	jalr	1956(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    80004e6c:	00051663          	bnez	a0,80004e78 <_Z29producerConsumer_CPP_Sync_APIv+0x228>
void producerConsumer_CPP_Sync_API() {
    80004e70:	00000493          	li	s1,0
    80004e74:	07c0006f          	j	80004ef0 <_Z29producerConsumer_CPP_Sync_APIv+0x2a0>
            myHandle = nullptr;
    80004e78:	000b3423          	sd	zero,8(s6)
            return -1;
    80004e7c:	ff5ff06f          	j	80004e70 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
            threads[i] = new ProducerSync(data+i);
    80004e80:	02800513          	li	a0,40
    80004e84:	ffffd097          	auipc	ra,0xffffd
    80004e88:	d04080e7          	jalr	-764(ra) # 80001b88 <_Znwm>
    80004e8c:	00149713          	slli	a4,s1,0x1
    80004e90:	00970733          	add	a4,a4,s1
    80004e94:	00371793          	slli	a5,a4,0x3
    80004e98:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004e9c:	00053423          	sd	zero,8(a0)
    80004ea0:	00053823          	sd	zero,16(a0)
    80004ea4:	00053c23          	sd	zero,24(a0)
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ea8:	00005717          	auipc	a4,0x5
    80004eac:	bf870713          	addi	a4,a4,-1032 # 80009aa0 <_ZTV12ProducerSync+0x10>
    80004eb0:	00e53023          	sd	a4,0(a0)
    80004eb4:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    80004eb8:	00349793          	slli	a5,s1,0x3
    80004ebc:	00f987b3          	add	a5,s3,a5
    80004ec0:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80004ec4:	00349793          	slli	a5,s1,0x3
    80004ec8:	00f987b3          	add	a5,s3,a5
    80004ecc:	0007bc03          	ld	s8,0(a5)
        if(thread_create(&myHandle, &Thread::body_exec, this) != 0) {
    80004ed0:	000c0613          	mv	a2,s8
    80004ed4:	ffffe597          	auipc	a1,0xffffe
    80004ed8:	5b458593          	addi	a1,a1,1460 # 80003488 <_ZN6Thread9body_execEPv>
    80004edc:	008c0513          	addi	a0,s8,8
    80004ee0:	ffffc097          	auipc	ra,0xffffc
    80004ee4:	728080e7          	jalr	1832(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    80004ee8:	08051063          	bnez	a0,80004f68 <_Z29producerConsumer_CPP_Sync_APIv+0x318>
    for (int i = 0; i < threadNum; i++) {
    80004eec:	0014849b          	addiw	s1,s1,1
    80004ef0:	0924d063          	bge	s1,s2,80004f70 <_Z29producerConsumer_CPP_Sync_APIv+0x320>
        data[i].id = i;
    80004ef4:	00149713          	slli	a4,s1,0x1
    80004ef8:	00970733          	add	a4,a4,s1
    80004efc:	00371793          	slli	a5,a4,0x3
    80004f00:	00fa07b3          	add	a5,s4,a5
    80004f04:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004f08:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004f0c:	00007717          	auipc	a4,0x7
    80004f10:	9d470713          	addi	a4,a4,-1580 # 8000b8e0 <_ZL10waitForAll>
    80004f14:	00073703          	ld	a4,0(a4)
    80004f18:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004f1c:	f69042e3          	bgtz	s1,80004e80 <_Z29producerConsumer_CPP_Sync_APIv+0x230>
            threads[i] = new ProducerKeyboard(data+i);
    80004f20:	02800513          	li	a0,40
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	c64080e7          	jalr	-924(ra) # 80001b88 <_Znwm>
    80004f2c:	00149713          	slli	a4,s1,0x1
    80004f30:	00970733          	add	a4,a4,s1
    80004f34:	00371793          	slli	a5,a4,0x3
    80004f38:	00fa07b3          	add	a5,s4,a5
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80004f3c:	00053423          	sd	zero,8(a0)
    80004f40:	00053823          	sd	zero,16(a0)
    80004f44:	00053c23          	sd	zero,24(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004f48:	00005717          	auipc	a4,0x5
    80004f4c:	b3070713          	addi	a4,a4,-1232 # 80009a78 <_ZTV16ProducerKeyboard+0x10>
    80004f50:	00e53023          	sd	a4,0(a0)
    80004f54:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    80004f58:	00349793          	slli	a5,s1,0x3
    80004f5c:	00f987b3          	add	a5,s3,a5
    80004f60:	00a7b023          	sd	a0,0(a5)
    80004f64:	f61ff06f          	j	80004ec4 <_Z29producerConsumer_CPP_Sync_APIv+0x274>
            myHandle = nullptr;
    80004f68:	000c3423          	sd	zero,8(s8)
            return -1;
    80004f6c:	f81ff06f          	j	80004eec <_Z29producerConsumer_CPP_Sync_APIv+0x29c>
        thread_dispatch();
    80004f70:	ffffc097          	auipc	ra,0xffffc
    80004f74:	738080e7          	jalr	1848(ra) # 800016a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80004f78:	00000493          	li	s1,0
    80004f7c:	0080006f          	j	80004f84 <_Z29producerConsumer_CPP_Sync_APIv+0x334>
    80004f80:	0014849b          	addiw	s1,s1,1
    80004f84:	02994263          	blt	s2,s1,80004fa8 <_Z29producerConsumer_CPP_Sync_APIv+0x358>
        waitForAll->wait();
    80004f88:	00007797          	auipc	a5,0x7
    80004f8c:	95878793          	addi	a5,a5,-1704 # 8000b8e0 <_ZL10waitForAll>
    80004f90:	0007b783          	ld	a5,0(a5)
        if (myHandle == nullptr) {
    80004f94:	0087b503          	ld	a0,8(a5)
    80004f98:	fe0504e3          	beqz	a0,80004f80 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        return sem_wait(myHandle);
    80004f9c:	ffffc097          	auipc	ra,0xffffc
    80004fa0:	7fc080e7          	jalr	2044(ra) # 80001798 <_Z8sem_waitP10_semaphore>
    80004fa4:	fddff06f          	j	80004f80 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
    for (int i = 0; i < threadNum; i++) {
    80004fa8:	00000493          	li	s1,0
    80004fac:	0080006f          	j	80004fb4 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80004fb0:	0014849b          	addiw	s1,s1,1
    80004fb4:	0324d263          	bge	s1,s2,80004fd8 <_Z29producerConsumer_CPP_Sync_APIv+0x388>
        delete threads[i];
    80004fb8:	00349793          	slli	a5,s1,0x3
    80004fbc:	00f987b3          	add	a5,s3,a5
    80004fc0:	0007b503          	ld	a0,0(a5)
    80004fc4:	fe0506e3          	beqz	a0,80004fb0 <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    80004fc8:	00053783          	ld	a5,0(a0)
    80004fcc:	0087b783          	ld	a5,8(a5)
    80004fd0:	000780e7          	jalr	a5
    80004fd4:	fddff06f          	j	80004fb0 <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    delete consumerThread;
    80004fd8:	000b0a63          	beqz	s6,80004fec <_Z29producerConsumer_CPP_Sync_APIv+0x39c>
    80004fdc:	000b3783          	ld	a5,0(s6)
    80004fe0:	0087b783          	ld	a5,8(a5)
    80004fe4:	000b0513          	mv	a0,s6
    80004fe8:	000780e7          	jalr	a5
    delete waitForAll;
    80004fec:	00007797          	auipc	a5,0x7
    80004ff0:	8f478793          	addi	a5,a5,-1804 # 8000b8e0 <_ZL10waitForAll>
    80004ff4:	0007b503          	ld	a0,0(a5)
    80004ff8:	00050863          	beqz	a0,80005008 <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
    80004ffc:	00053783          	ld	a5,0(a0)
    80005000:	0087b783          	ld	a5,8(a5)
    80005004:	000780e7          	jalr	a5
    delete buffer;
    80005008:	000a8e63          	beqz	s5,80005024 <_Z29producerConsumer_CPP_Sync_APIv+0x3d4>
    8000500c:	000a8513          	mv	a0,s5
    80005010:	00001097          	auipc	ra,0x1
    80005014:	f6c080e7          	jalr	-148(ra) # 80005f7c <_ZN9BufferCPPD1Ev>
    80005018:	000a8513          	mv	a0,s5
    8000501c:	ffffd097          	auipc	ra,0xffffd
    80005020:	bec080e7          	jalr	-1044(ra) # 80001c08 <_ZdlPv>
    80005024:	000b8113          	mv	sp,s7

}
    80005028:	f9040113          	addi	sp,s0,-112
    8000502c:	06813083          	ld	ra,104(sp)
    80005030:	06013403          	ld	s0,96(sp)
    80005034:	05813483          	ld	s1,88(sp)
    80005038:	05013903          	ld	s2,80(sp)
    8000503c:	04813983          	ld	s3,72(sp)
    80005040:	04013a03          	ld	s4,64(sp)
    80005044:	03813a83          	ld	s5,56(sp)
    80005048:	03013b03          	ld	s6,48(sp)
    8000504c:	02813b83          	ld	s7,40(sp)
    80005050:	02013c03          	ld	s8,32(sp)
    80005054:	07010113          	addi	sp,sp,112
    80005058:	00008067          	ret
    8000505c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005060:	000a8513          	mv	a0,s5
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	ba4080e7          	jalr	-1116(ra) # 80001c08 <_ZdlPv>
    8000506c:	00048513          	mv	a0,s1
    80005070:	00008097          	auipc	ra,0x8
    80005074:	998080e7          	jalr	-1640(ra) # 8000ca08 <_Unwind_Resume>
    80005078:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000507c:	00048513          	mv	a0,s1
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	b88080e7          	jalr	-1144(ra) # 80001c08 <_ZdlPv>
    80005088:	00090513          	mv	a0,s2
    8000508c:	00008097          	auipc	ra,0x8
    80005090:	97c080e7          	jalr	-1668(ra) # 8000ca08 <_Unwind_Resume>

0000000080005094 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005094:	ff010113          	addi	sp,sp,-16
    80005098:	00113423          	sd	ra,8(sp)
    8000509c:	00813023          	sd	s0,0(sp)
    800050a0:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    800050a4:	00004797          	auipc	a5,0x4
    800050a8:	55c78793          	addi	a5,a5,1372 # 80009600 <_ZTV6Thread+0x10>
    800050ac:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800050b0:	ffffc097          	auipc	ra,0xffffc
    800050b4:	5a8080e7          	jalr	1448(ra) # 80001658 <_Z11thread_exitv>
    800050b8:	00813083          	ld	ra,8(sp)
    800050bc:	00013403          	ld	s0,0(sp)
    800050c0:	01010113          	addi	sp,sp,16
    800050c4:	00008067          	ret

00000000800050c8 <_ZN12ConsumerSyncD0Ev>:
    800050c8:	fe010113          	addi	sp,sp,-32
    800050cc:	00113c23          	sd	ra,24(sp)
    800050d0:	00813823          	sd	s0,16(sp)
    800050d4:	00913423          	sd	s1,8(sp)
    800050d8:	02010413          	addi	s0,sp,32
    800050dc:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800050e0:	00004797          	auipc	a5,0x4
    800050e4:	52078793          	addi	a5,a5,1312 # 80009600 <_ZTV6Thread+0x10>
    800050e8:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800050ec:	ffffc097          	auipc	ra,0xffffc
    800050f0:	56c080e7          	jalr	1388(ra) # 80001658 <_Z11thread_exitv>
    800050f4:	00048513          	mv	a0,s1
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	b10080e7          	jalr	-1264(ra) # 80001c08 <_ZdlPv>
    80005100:	01813083          	ld	ra,24(sp)
    80005104:	01013403          	ld	s0,16(sp)
    80005108:	00813483          	ld	s1,8(sp)
    8000510c:	02010113          	addi	sp,sp,32
    80005110:	00008067          	ret

0000000080005114 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005114:	ff010113          	addi	sp,sp,-16
    80005118:	00113423          	sd	ra,8(sp)
    8000511c:	00813023          	sd	s0,0(sp)
    80005120:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    80005124:	00004797          	auipc	a5,0x4
    80005128:	4dc78793          	addi	a5,a5,1244 # 80009600 <_ZTV6Thread+0x10>
    8000512c:	00f53023          	sd	a5,0(a0)
        thread_exit();
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	528080e7          	jalr	1320(ra) # 80001658 <_Z11thread_exitv>
    80005138:	00813083          	ld	ra,8(sp)
    8000513c:	00013403          	ld	s0,0(sp)
    80005140:	01010113          	addi	sp,sp,16
    80005144:	00008067          	ret

0000000080005148 <_ZN12ProducerSyncD0Ev>:
    80005148:	fe010113          	addi	sp,sp,-32
    8000514c:	00113c23          	sd	ra,24(sp)
    80005150:	00813823          	sd	s0,16(sp)
    80005154:	00913423          	sd	s1,8(sp)
    80005158:	02010413          	addi	s0,sp,32
    8000515c:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80005160:	00004797          	auipc	a5,0x4
    80005164:	4a078793          	addi	a5,a5,1184 # 80009600 <_ZTV6Thread+0x10>
    80005168:	00f53023          	sd	a5,0(a0)
        thread_exit();
    8000516c:	ffffc097          	auipc	ra,0xffffc
    80005170:	4ec080e7          	jalr	1260(ra) # 80001658 <_Z11thread_exitv>
    80005174:	00048513          	mv	a0,s1
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	a90080e7          	jalr	-1392(ra) # 80001c08 <_ZdlPv>
    80005180:	01813083          	ld	ra,24(sp)
    80005184:	01013403          	ld	s0,16(sp)
    80005188:	00813483          	ld	s1,8(sp)
    8000518c:	02010113          	addi	sp,sp,32
    80005190:	00008067          	ret

0000000080005194 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005194:	ff010113          	addi	sp,sp,-16
    80005198:	00113423          	sd	ra,8(sp)
    8000519c:	00813023          	sd	s0,0(sp)
    800051a0:	01010413          	addi	s0,sp,16
    virtual ~Thread() {
    800051a4:	00004797          	auipc	a5,0x4
    800051a8:	45c78793          	addi	a5,a5,1116 # 80009600 <_ZTV6Thread+0x10>
    800051ac:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800051b0:	ffffc097          	auipc	ra,0xffffc
    800051b4:	4a8080e7          	jalr	1192(ra) # 80001658 <_Z11thread_exitv>
    800051b8:	00813083          	ld	ra,8(sp)
    800051bc:	00013403          	ld	s0,0(sp)
    800051c0:	01010113          	addi	sp,sp,16
    800051c4:	00008067          	ret

00000000800051c8 <_ZN16ProducerKeyboardD0Ev>:
    800051c8:	fe010113          	addi	sp,sp,-32
    800051cc:	00113c23          	sd	ra,24(sp)
    800051d0:	00813823          	sd	s0,16(sp)
    800051d4:	00913423          	sd	s1,8(sp)
    800051d8:	02010413          	addi	s0,sp,32
    800051dc:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800051e0:	00004797          	auipc	a5,0x4
    800051e4:	42078793          	addi	a5,a5,1056 # 80009600 <_ZTV6Thread+0x10>
    800051e8:	00f53023          	sd	a5,0(a0)
        thread_exit();
    800051ec:	ffffc097          	auipc	ra,0xffffc
    800051f0:	46c080e7          	jalr	1132(ra) # 80001658 <_Z11thread_exitv>
    800051f4:	00048513          	mv	a0,s1
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	a10080e7          	jalr	-1520(ra) # 80001c08 <_ZdlPv>
    80005200:	01813083          	ld	ra,24(sp)
    80005204:	01013403          	ld	s0,16(sp)
    80005208:	00813483          	ld	s1,8(sp)
    8000520c:	02010113          	addi	sp,sp,32
    80005210:	00008067          	ret

0000000080005214 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005214:	ff010113          	addi	sp,sp,-16
    80005218:	00113423          	sd	ra,8(sp)
    8000521c:	00813023          	sd	s0,0(sp)
    80005220:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005224:	02053583          	ld	a1,32(a0)
    80005228:	fffff097          	auipc	ra,0xfffff
    8000522c:	7b4080e7          	jalr	1972(ra) # 800049dc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005230:	00813083          	ld	ra,8(sp)
    80005234:	00013403          	ld	s0,0(sp)
    80005238:	01010113          	addi	sp,sp,16
    8000523c:	00008067          	ret

0000000080005240 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005240:	ff010113          	addi	sp,sp,-16
    80005244:	00113423          	sd	ra,8(sp)
    80005248:	00813023          	sd	s0,0(sp)
    8000524c:	01010413          	addi	s0,sp,16
        producer(td);
    80005250:	02053583          	ld	a1,32(a0)
    80005254:	00000097          	auipc	ra,0x0
    80005258:	850080e7          	jalr	-1968(ra) # 80004aa4 <_ZN12ProducerSync8producerEPv>
    }
    8000525c:	00813083          	ld	ra,8(sp)
    80005260:	00013403          	ld	s0,0(sp)
    80005264:	01010113          	addi	sp,sp,16
    80005268:	00008067          	ret

000000008000526c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000526c:	ff010113          	addi	sp,sp,-16
    80005270:	00113423          	sd	ra,8(sp)
    80005274:	00813023          	sd	s0,0(sp)
    80005278:	01010413          	addi	s0,sp,16
        consumer(td);
    8000527c:	02053583          	ld	a1,32(a0)
    80005280:	00000097          	auipc	ra,0x0
    80005284:	8c8080e7          	jalr	-1848(ra) # 80004b48 <_ZN12ConsumerSync8consumerEPv>
    }
    80005288:	00813083          	ld	ra,8(sp)
    8000528c:	00013403          	ld	s0,0(sp)
    80005290:	01010113          	addi	sp,sp,16
    80005294:	00008067          	ret

0000000080005298 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005298:	fe010113          	addi	sp,sp,-32
    8000529c:	00113c23          	sd	ra,24(sp)
    800052a0:	00813823          	sd	s0,16(sp)
    800052a4:	00913423          	sd	s1,8(sp)
    800052a8:	01213023          	sd	s2,0(sp)
    800052ac:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800052b0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800052b4:	00600493          	li	s1,6
    while (--i > 0) {
    800052b8:	fff4849b          	addiw	s1,s1,-1
    800052bc:	04905463          	blez	s1,80005304 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800052c0:	00005517          	auipc	a0,0x5
    800052c4:	82050513          	addi	a0,a0,-2016 # 80009ae0 <_ZTV12ConsumerSync+0x28>
    800052c8:	00000097          	auipc	ra,0x0
    800052cc:	10c080e7          	jalr	268(ra) # 800053d4 <_Z11printStringPKc>
        printInt(sleep_time);
    800052d0:	00000613          	li	a2,0
    800052d4:	00a00593          	li	a1,10
    800052d8:	0009051b          	sext.w	a0,s2
    800052dc:	00000097          	auipc	ra,0x0
    800052e0:	2a4080e7          	jalr	676(ra) # 80005580 <_Z8printIntiii>
        printString(" !\n");
    800052e4:	00005517          	auipc	a0,0x5
    800052e8:	80450513          	addi	a0,a0,-2044 # 80009ae8 <_ZTV12ConsumerSync+0x30>
    800052ec:	00000097          	auipc	ra,0x0
    800052f0:	0e8080e7          	jalr	232(ra) # 800053d4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800052f4:	00090513          	mv	a0,s2
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	540080e7          	jalr	1344(ra) # 80001838 <_Z10time_sleepm>
    while (--i > 0) {
    80005300:	fb9ff06f          	j	800052b8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005304:	00a00793          	li	a5,10
    80005308:	02f95933          	divu	s2,s2,a5
    8000530c:	fff90913          	addi	s2,s2,-1
    80005310:	00006797          	auipc	a5,0x6
    80005314:	5d878793          	addi	a5,a5,1496 # 8000b8e8 <_ZL8finished>
    80005318:	01278933          	add	s2,a5,s2
    8000531c:	00100793          	li	a5,1
    80005320:	00f90023          	sb	a5,0(s2)
}
    80005324:	01813083          	ld	ra,24(sp)
    80005328:	01013403          	ld	s0,16(sp)
    8000532c:	00813483          	ld	s1,8(sp)
    80005330:	00013903          	ld	s2,0(sp)
    80005334:	02010113          	addi	sp,sp,32
    80005338:	00008067          	ret

000000008000533c <_Z12testSleepingv>:

void testSleeping() {
    8000533c:	fc010113          	addi	sp,sp,-64
    80005340:	02113c23          	sd	ra,56(sp)
    80005344:	02813823          	sd	s0,48(sp)
    80005348:	02913423          	sd	s1,40(sp)
    8000534c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005350:	00a00793          	li	a5,10
    80005354:	fcf43823          	sd	a5,-48(s0)
    80005358:	01400793          	li	a5,20
    8000535c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005360:	00000493          	li	s1,0
    80005364:	00100793          	li	a5,1
    80005368:	0297c863          	blt	a5,s1,80005398 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000536c:	00349513          	slli	a0,s1,0x3
    80005370:	fd040793          	addi	a5,s0,-48
    80005374:	00a78633          	add	a2,a5,a0
    80005378:	00000597          	auipc	a1,0x0
    8000537c:	f2058593          	addi	a1,a1,-224 # 80005298 <_ZL9sleepyRunPv>
    80005380:	fc040793          	addi	a5,s0,-64
    80005384:	00a78533          	add	a0,a5,a0
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	280080e7          	jalr	640(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005390:	0014849b          	addiw	s1,s1,1
    80005394:	fd1ff06f          	j	80005364 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    80005398:	00006797          	auipc	a5,0x6
    8000539c:	55078793          	addi	a5,a5,1360 # 8000b8e8 <_ZL8finished>
    800053a0:	0007c783          	lbu	a5,0(a5)
    800053a4:	0ff7f793          	andi	a5,a5,255
    800053a8:	fe0788e3          	beqz	a5,80005398 <_Z12testSleepingv+0x5c>
    800053ac:	00006797          	auipc	a5,0x6
    800053b0:	53c78793          	addi	a5,a5,1340 # 8000b8e8 <_ZL8finished>
    800053b4:	0017c783          	lbu	a5,1(a5)
    800053b8:	0ff7f793          	andi	a5,a5,255
    800053bc:	fc078ee3          	beqz	a5,80005398 <_Z12testSleepingv+0x5c>
}
    800053c0:	03813083          	ld	ra,56(sp)
    800053c4:	03013403          	ld	s0,48(sp)
    800053c8:	02813483          	ld	s1,40(sp)
    800053cc:	04010113          	addi	sp,sp,64
    800053d0:	00008067          	ret

00000000800053d4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800053d4:	fe010113          	addi	sp,sp,-32
    800053d8:	00113c23          	sd	ra,24(sp)
    800053dc:	00813823          	sd	s0,16(sp)
    800053e0:	00913423          	sd	s1,8(sp)
    800053e4:	02010413          	addi	s0,sp,32
    800053e8:	00050493          	mv	s1,a0
    LOCK();
    800053ec:	00100613          	li	a2,1
    800053f0:	00000593          	li	a1,0
    800053f4:	00006517          	auipc	a0,0x6
    800053f8:	4fc50513          	addi	a0,a0,1276 # 8000b8f0 <lockPrint>
    800053fc:	ffffc097          	auipc	ra,0xffffc
    80005400:	d28080e7          	jalr	-728(ra) # 80001124 <copy_and_swap>
    80005404:	00050863          	beqz	a0,80005414 <_Z11printStringPKc+0x40>
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	2a0080e7          	jalr	672(ra) # 800016a8 <_Z15thread_dispatchv>
    80005410:	fddff06f          	j	800053ec <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005414:	0004c503          	lbu	a0,0(s1)
    80005418:	00050a63          	beqz	a0,8000542c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000541c:	ffffc097          	auipc	ra,0xffffc
    80005420:	460080e7          	jalr	1120(ra) # 8000187c <_Z4putcc>
        string++;
    80005424:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005428:	fedff06f          	j	80005414 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000542c:	00000613          	li	a2,0
    80005430:	00100593          	li	a1,1
    80005434:	00006517          	auipc	a0,0x6
    80005438:	4bc50513          	addi	a0,a0,1212 # 8000b8f0 <lockPrint>
    8000543c:	ffffc097          	auipc	ra,0xffffc
    80005440:	ce8080e7          	jalr	-792(ra) # 80001124 <copy_and_swap>
    80005444:	fe0514e3          	bnez	a0,8000542c <_Z11printStringPKc+0x58>
}
    80005448:	01813083          	ld	ra,24(sp)
    8000544c:	01013403          	ld	s0,16(sp)
    80005450:	00813483          	ld	s1,8(sp)
    80005454:	02010113          	addi	sp,sp,32
    80005458:	00008067          	ret

000000008000545c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000545c:	fd010113          	addi	sp,sp,-48
    80005460:	02113423          	sd	ra,40(sp)
    80005464:	02813023          	sd	s0,32(sp)
    80005468:	00913c23          	sd	s1,24(sp)
    8000546c:	01213823          	sd	s2,16(sp)
    80005470:	01313423          	sd	s3,8(sp)
    80005474:	01413023          	sd	s4,0(sp)
    80005478:	03010413          	addi	s0,sp,48
    8000547c:	00050993          	mv	s3,a0
    80005480:	00058a13          	mv	s4,a1
    LOCK();
    80005484:	00100613          	li	a2,1
    80005488:	00000593          	li	a1,0
    8000548c:	00006517          	auipc	a0,0x6
    80005490:	46450513          	addi	a0,a0,1124 # 8000b8f0 <lockPrint>
    80005494:	ffffc097          	auipc	ra,0xffffc
    80005498:	c90080e7          	jalr	-880(ra) # 80001124 <copy_and_swap>
    8000549c:	00050863          	beqz	a0,800054ac <_Z9getStringPci+0x50>
    800054a0:	ffffc097          	auipc	ra,0xffffc
    800054a4:	208080e7          	jalr	520(ra) # 800016a8 <_Z15thread_dispatchv>
    800054a8:	fddff06f          	j	80005484 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800054ac:	00000493          	li	s1,0
    800054b0:	0014891b          	addiw	s2,s1,1
    800054b4:	03495a63          	bge	s2,s4,800054e8 <_Z9getStringPci+0x8c>
        cc = getc();
    800054b8:	ffffc097          	auipc	ra,0xffffc
    800054bc:	39c080e7          	jalr	924(ra) # 80001854 <_Z4getcv>
        if(cc < 1)
    800054c0:	02050463          	beqz	a0,800054e8 <_Z9getStringPci+0x8c>
            break;
        c = cc;
        buf[i++] = c;
    800054c4:	009984b3          	add	s1,s3,s1
    800054c8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800054cc:	00a00793          	li	a5,10
    800054d0:	00f50a63          	beq	a0,a5,800054e4 <_Z9getStringPci+0x88>
        buf[i++] = c;
    800054d4:	00090493          	mv	s1,s2
        if(c == '\n' || c == '\r')
    800054d8:	00d00793          	li	a5,13
    800054dc:	fcf51ae3          	bne	a0,a5,800054b0 <_Z9getStringPci+0x54>
    800054e0:	0080006f          	j	800054e8 <_Z9getStringPci+0x8c>
        buf[i++] = c;
    800054e4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800054e8:	009984b3          	add	s1,s3,s1
    800054ec:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800054f0:	00000613          	li	a2,0
    800054f4:	00100593          	li	a1,1
    800054f8:	00006517          	auipc	a0,0x6
    800054fc:	3f850513          	addi	a0,a0,1016 # 8000b8f0 <lockPrint>
    80005500:	ffffc097          	auipc	ra,0xffffc
    80005504:	c24080e7          	jalr	-988(ra) # 80001124 <copy_and_swap>
    80005508:	fe0514e3          	bnez	a0,800054f0 <_Z9getStringPci+0x94>
    return buf;
}
    8000550c:	00098513          	mv	a0,s3
    80005510:	02813083          	ld	ra,40(sp)
    80005514:	02013403          	ld	s0,32(sp)
    80005518:	01813483          	ld	s1,24(sp)
    8000551c:	01013903          	ld	s2,16(sp)
    80005520:	00813983          	ld	s3,8(sp)
    80005524:	00013a03          	ld	s4,0(sp)
    80005528:	03010113          	addi	sp,sp,48
    8000552c:	00008067          	ret

0000000080005530 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005530:	ff010113          	addi	sp,sp,-16
    80005534:	00813423          	sd	s0,8(sp)
    80005538:	01010413          	addi	s0,sp,16
    int n;

    n = 0;
    8000553c:	00000793          	li	a5,0
    while ('0' <= *s && *s <= '9')
    80005540:	00054603          	lbu	a2,0(a0)
    80005544:	fd06069b          	addiw	a3,a2,-48
    80005548:	0ff6f693          	andi	a3,a3,255
    8000554c:	00900713          	li	a4,9
    80005550:	02d76063          	bltu	a4,a3,80005570 <_Z11stringToIntPKc+0x40>
        n = n * 10 + *s++ - '0';
    80005554:	0027969b          	slliw	a3,a5,0x2
    80005558:	00f687bb          	addw	a5,a3,a5
    8000555c:	0017971b          	slliw	a4,a5,0x1
    80005560:	00150513          	addi	a0,a0,1
    80005564:	00c707bb          	addw	a5,a4,a2
    80005568:	fd07879b          	addiw	a5,a5,-48
    while ('0' <= *s && *s <= '9')
    8000556c:	fd5ff06f          	j	80005540 <_Z11stringToIntPKc+0x10>
    return n;
}
    80005570:	00078513          	mv	a0,a5
    80005574:	00813403          	ld	s0,8(sp)
    80005578:	01010113          	addi	sp,sp,16
    8000557c:	00008067          	ret

0000000080005580 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005580:	fc010113          	addi	sp,sp,-64
    80005584:	02113c23          	sd	ra,56(sp)
    80005588:	02813823          	sd	s0,48(sp)
    8000558c:	02913423          	sd	s1,40(sp)
    80005590:	03213023          	sd	s2,32(sp)
    80005594:	01313c23          	sd	s3,24(sp)
    80005598:	04010413          	addi	s0,sp,64
    8000559c:	00050493          	mv	s1,a0
    800055a0:	00058913          	mv	s2,a1
    800055a4:	00060993          	mv	s3,a2
    LOCK();
    800055a8:	00100613          	li	a2,1
    800055ac:	00000593          	li	a1,0
    800055b0:	00006517          	auipc	a0,0x6
    800055b4:	34050513          	addi	a0,a0,832 # 8000b8f0 <lockPrint>
    800055b8:	ffffc097          	auipc	ra,0xffffc
    800055bc:	b6c080e7          	jalr	-1172(ra) # 80001124 <copy_and_swap>
    800055c0:	00050863          	beqz	a0,800055d0 <_Z8printIntiii+0x50>
    800055c4:	ffffc097          	auipc	ra,0xffffc
    800055c8:	0e4080e7          	jalr	228(ra) # 800016a8 <_Z15thread_dispatchv>
    800055cc:	fddff06f          	j	800055a8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800055d0:	00098463          	beqz	s3,800055d8 <_Z8printIntiii+0x58>
    800055d4:	0004ca63          	bltz	s1,800055e8 <_Z8printIntiii+0x68>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800055d8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800055dc:	00000593          	li	a1,0
    }

    i = 0;
    800055e0:	00000613          	li	a2,0
    800055e4:	0180006f          	j	800055fc <_Z8printIntiii+0x7c>
        x = -xx;
    800055e8:	4090053b          	negw	a0,s1
        neg = 1;
    800055ec:	00100593          	li	a1,1
        x = -xx;
    800055f0:	ff1ff06f          	j	800055e0 <_Z8printIntiii+0x60>
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    800055f4:	00068513          	mv	a0,a3
        buf[i++] = digits[x % base];
    800055f8:	00048613          	mv	a2,s1
    800055fc:	0009079b          	sext.w	a5,s2
    80005600:	02f5773b          	remuw	a4,a0,a5
    80005604:	0016049b          	addiw	s1,a2,1
    80005608:	02071693          	slli	a3,a4,0x20
    8000560c:	0206d693          	srli	a3,a3,0x20
    80005610:	00006717          	auipc	a4,0x6
    80005614:	08070713          	addi	a4,a4,128 # 8000b690 <digits>
    80005618:	00d70733          	add	a4,a4,a3
    8000561c:	00074683          	lbu	a3,0(a4)
    80005620:	fd040713          	addi	a4,s0,-48
    80005624:	00c70733          	add	a4,a4,a2
    80005628:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000562c:	02f5573b          	divuw	a4,a0,a5
    80005630:	0007069b          	sext.w	a3,a4
    80005634:	fcf570e3          	bgeu	a0,a5,800055f4 <_Z8printIntiii+0x74>
    if(neg)
    80005638:	00058c63          	beqz	a1,80005650 <_Z8printIntiii+0xd0>
        buf[i++] = '-';
    8000563c:	fd040793          	addi	a5,s0,-48
    80005640:	009784b3          	add	s1,a5,s1
    80005644:	02d00793          	li	a5,45
    80005648:	fef48823          	sb	a5,-16(s1)
    8000564c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005650:	fff4849b          	addiw	s1,s1,-1
    80005654:	0004ce63          	bltz	s1,80005670 <_Z8printIntiii+0xf0>
        putc(buf[i]);
    80005658:	fd040793          	addi	a5,s0,-48
    8000565c:	009787b3          	add	a5,a5,s1
    80005660:	ff07c503          	lbu	a0,-16(a5)
    80005664:	ffffc097          	auipc	ra,0xffffc
    80005668:	218080e7          	jalr	536(ra) # 8000187c <_Z4putcc>
    8000566c:	fe5ff06f          	j	80005650 <_Z8printIntiii+0xd0>

    UNLOCK();
    80005670:	00000613          	li	a2,0
    80005674:	00100593          	li	a1,1
    80005678:	00006517          	auipc	a0,0x6
    8000567c:	27850513          	addi	a0,a0,632 # 8000b8f0 <lockPrint>
    80005680:	ffffc097          	auipc	ra,0xffffc
    80005684:	aa4080e7          	jalr	-1372(ra) # 80001124 <copy_and_swap>
    80005688:	fe0514e3          	bnez	a0,80005670 <_Z8printIntiii+0xf0>
    8000568c:	03813083          	ld	ra,56(sp)
    80005690:	03013403          	ld	s0,48(sp)
    80005694:	02813483          	ld	s1,40(sp)
    80005698:	02013903          	ld	s2,32(sp)
    8000569c:	01813983          	ld	s3,24(sp)
    800056a0:	04010113          	addi	sp,sp,64
    800056a4:	00008067          	ret

00000000800056a8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800056a8:	fe010113          	addi	sp,sp,-32
    800056ac:	00113c23          	sd	ra,24(sp)
    800056b0:	00813823          	sd	s0,16(sp)
    800056b4:	00913423          	sd	s1,8(sp)
    800056b8:	01213023          	sd	s2,0(sp)
    800056bc:	02010413          	addi	s0,sp,32
    800056c0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800056c4:	00000913          	li	s2,0
    800056c8:	00c0006f          	j	800056d4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	fdc080e7          	jalr	-36(ra) # 800016a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800056d4:	ffffc097          	auipc	ra,0xffffc
    800056d8:	180080e7          	jalr	384(ra) # 80001854 <_Z4getcv>
    800056dc:	0005059b          	sext.w	a1,a0
    800056e0:	01b00793          	li	a5,27
    800056e4:	02f58a63          	beq	a1,a5,80005718 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800056e8:	0084b503          	ld	a0,8(s1)
    800056ec:	ffffd097          	auipc	ra,0xffffd
    800056f0:	6a4080e7          	jalr	1700(ra) # 80002d90 <_ZN6Buffer3putEi>
        i++;
    800056f4:	0019079b          	addiw	a5,s2,1
    800056f8:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    800056fc:	0004a683          	lw	a3,0(s1)
    80005700:	0026971b          	slliw	a4,a3,0x2
    80005704:	00d7073b          	addw	a4,a4,a3
    80005708:	0017169b          	slliw	a3,a4,0x1
    8000570c:	02d7e7bb          	remw	a5,a5,a3
    80005710:	fc0792e3          	bnez	a5,800056d4 <_ZL16producerKeyboardPv+0x2c>
    80005714:	fb9ff06f          	j	800056cc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80005718:	00100793          	li	a5,1
    8000571c:	00006717          	auipc	a4,0x6
    80005720:	1cf72e23          	sw	a5,476(a4) # 8000b8f8 <_ZL9threadEnd>
    data->buffer->put('!');
    80005724:	02100593          	li	a1,33
    80005728:	0084b503          	ld	a0,8(s1)
    8000572c:	ffffd097          	auipc	ra,0xffffd
    80005730:	664080e7          	jalr	1636(ra) # 80002d90 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80005734:	0104b503          	ld	a0,16(s1)
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	0b0080e7          	jalr	176(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
}
    80005740:	01813083          	ld	ra,24(sp)
    80005744:	01013403          	ld	s0,16(sp)
    80005748:	00813483          	ld	s1,8(sp)
    8000574c:	00013903          	ld	s2,0(sp)
    80005750:	02010113          	addi	sp,sp,32
    80005754:	00008067          	ret

0000000080005758 <_ZL8producerPv>:

static void producer(void *arg) {
    80005758:	fe010113          	addi	sp,sp,-32
    8000575c:	00113c23          	sd	ra,24(sp)
    80005760:	00813823          	sd	s0,16(sp)
    80005764:	00913423          	sd	s1,8(sp)
    80005768:	01213023          	sd	s2,0(sp)
    8000576c:	02010413          	addi	s0,sp,32
    80005770:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005774:	00000913          	li	s2,0
    80005778:	00c0006f          	j	80005784 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000577c:	ffffc097          	auipc	ra,0xffffc
    80005780:	f2c080e7          	jalr	-212(ra) # 800016a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80005784:	00006797          	auipc	a5,0x6
    80005788:	17478793          	addi	a5,a5,372 # 8000b8f8 <_ZL9threadEnd>
    8000578c:	0007a783          	lw	a5,0(a5)
    80005790:	0007879b          	sext.w	a5,a5
    80005794:	02079e63          	bnez	a5,800057d0 <_ZL8producerPv+0x78>
        data->buffer->put(data->id + '0');
    80005798:	0004a583          	lw	a1,0(s1)
    8000579c:	0305859b          	addiw	a1,a1,48
    800057a0:	0084b503          	ld	a0,8(s1)
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	5ec080e7          	jalr	1516(ra) # 80002d90 <_ZN6Buffer3putEi>
        i++;
    800057ac:	0019079b          	addiw	a5,s2,1
    800057b0:	0007891b          	sext.w	s2,a5
        if (i % (10 * data->id) == 0) {
    800057b4:	0004a683          	lw	a3,0(s1)
    800057b8:	0026971b          	slliw	a4,a3,0x2
    800057bc:	00d7073b          	addw	a4,a4,a3
    800057c0:	0017169b          	slliw	a3,a4,0x1
    800057c4:	02d7e7bb          	remw	a5,a5,a3
    800057c8:	fa079ee3          	bnez	a5,80005784 <_ZL8producerPv+0x2c>
    800057cc:	fb1ff06f          	j	8000577c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800057d0:	0104b503          	ld	a0,16(s1)
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	014080e7          	jalr	20(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
}
    800057dc:	01813083          	ld	ra,24(sp)
    800057e0:	01013403          	ld	s0,16(sp)
    800057e4:	00813483          	ld	s1,8(sp)
    800057e8:	00013903          	ld	s2,0(sp)
    800057ec:	02010113          	addi	sp,sp,32
    800057f0:	00008067          	ret

00000000800057f4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800057f4:	fd010113          	addi	sp,sp,-48
    800057f8:	02113423          	sd	ra,40(sp)
    800057fc:	02813023          	sd	s0,32(sp)
    80005800:	00913c23          	sd	s1,24(sp)
    80005804:	01213823          	sd	s2,16(sp)
    80005808:	01313423          	sd	s3,8(sp)
    8000580c:	03010413          	addi	s0,sp,48
    80005810:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005814:	00000993          	li	s3,0
    80005818:	01c0006f          	j	80005834 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000581c:	ffffc097          	auipc	ra,0xffffc
    80005820:	e8c080e7          	jalr	-372(ra) # 800016a8 <_Z15thread_dispatchv>
    80005824:	0580006f          	j	8000587c <_ZL8consumerPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005828:	00a00513          	li	a0,10
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	050080e7          	jalr	80(ra) # 8000187c <_Z4putcc>
    while (!threadEnd) {
    80005834:	00006797          	auipc	a5,0x6
    80005838:	0c478793          	addi	a5,a5,196 # 8000b8f8 <_ZL9threadEnd>
    8000583c:	0007a783          	lw	a5,0(a5)
    80005840:	0007879b          	sext.w	a5,a5
    80005844:	04079463          	bnez	a5,8000588c <_ZL8consumerPv+0x98>
        int key = data->buffer->get();
    80005848:	00893503          	ld	a0,8(s2)
    8000584c:	ffffd097          	auipc	ra,0xffffd
    80005850:	5d4080e7          	jalr	1492(ra) # 80002e20 <_ZN6Buffer3getEv>
        i++;
    80005854:	0019849b          	addiw	s1,s3,1
    80005858:	0004899b          	sext.w	s3,s1
        putc(key);
    8000585c:	0ff57513          	andi	a0,a0,255
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	01c080e7          	jalr	28(ra) # 8000187c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005868:	00092703          	lw	a4,0(s2)
    8000586c:	0027179b          	slliw	a5,a4,0x2
    80005870:	00e787bb          	addw	a5,a5,a4
    80005874:	02f4e7bb          	remw	a5,s1,a5
    80005878:	fa0782e3          	beqz	a5,8000581c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000587c:	05000793          	li	a5,80
    80005880:	02f4e4bb          	remw	s1,s1,a5
    80005884:	fa0498e3          	bnez	s1,80005834 <_ZL8consumerPv+0x40>
    80005888:	fa1ff06f          	j	80005828 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
    8000588c:	00893503          	ld	a0,8(s2)
    80005890:	ffffd097          	auipc	ra,0xffffd
    80005894:	61c080e7          	jalr	1564(ra) # 80002eac <_ZN6Buffer6getCntEv>
    80005898:	02a05063          	blez	a0,800058b8 <_ZL8consumerPv+0xc4>
        int key = data->buffer->get();
    8000589c:	00893503          	ld	a0,8(s2)
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	580080e7          	jalr	1408(ra) # 80002e20 <_ZN6Buffer3getEv>
        putc(key);
    800058a8:	0ff57513          	andi	a0,a0,255
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	fd0080e7          	jalr	-48(ra) # 8000187c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800058b4:	fd9ff06f          	j	8000588c <_ZL8consumerPv+0x98>
    }

    sem_signal(data->wait);
    800058b8:	01093503          	ld	a0,16(s2)
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	f2c080e7          	jalr	-212(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
}
    800058c4:	02813083          	ld	ra,40(sp)
    800058c8:	02013403          	ld	s0,32(sp)
    800058cc:	01813483          	ld	s1,24(sp)
    800058d0:	01013903          	ld	s2,16(sp)
    800058d4:	00813983          	ld	s3,8(sp)
    800058d8:	03010113          	addi	sp,sp,48
    800058dc:	00008067          	ret

00000000800058e0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800058e0:	f9010113          	addi	sp,sp,-112
    800058e4:	06113423          	sd	ra,104(sp)
    800058e8:	06813023          	sd	s0,96(sp)
    800058ec:	04913c23          	sd	s1,88(sp)
    800058f0:	05213823          	sd	s2,80(sp)
    800058f4:	05313423          	sd	s3,72(sp)
    800058f8:	05413023          	sd	s4,64(sp)
    800058fc:	03513c23          	sd	s5,56(sp)
    80005900:	03613823          	sd	s6,48(sp)
    80005904:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80005908:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	da450513          	addi	a0,a0,-604 # 800096b0 <_ZTV8Consumer+0x28>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	ac0080e7          	jalr	-1344(ra) # 800053d4 <_Z11printStringPKc>
    getString(input, 30);
    8000591c:	01e00593          	li	a1,30
    80005920:	fa040513          	addi	a0,s0,-96
    80005924:	00000097          	auipc	ra,0x0
    80005928:	b38080e7          	jalr	-1224(ra) # 8000545c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000592c:	fa040513          	addi	a0,s0,-96
    80005930:	00000097          	auipc	ra,0x0
    80005934:	c00080e7          	jalr	-1024(ra) # 80005530 <_Z11stringToIntPKc>
    80005938:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000593c:	00004517          	auipc	a0,0x4
    80005940:	d9450513          	addi	a0,a0,-620 # 800096d0 <_ZTV8Consumer+0x48>
    80005944:	00000097          	auipc	ra,0x0
    80005948:	a90080e7          	jalr	-1392(ra) # 800053d4 <_Z11printStringPKc>
    getString(input, 30);
    8000594c:	01e00593          	li	a1,30
    80005950:	fa040513          	addi	a0,s0,-96
    80005954:	00000097          	auipc	ra,0x0
    80005958:	b08080e7          	jalr	-1272(ra) # 8000545c <_Z9getStringPci>
    n = stringToInt(input);
    8000595c:	fa040513          	addi	a0,s0,-96
    80005960:	00000097          	auipc	ra,0x0
    80005964:	bd0080e7          	jalr	-1072(ra) # 80005530 <_Z11stringToIntPKc>
    80005968:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000596c:	00004517          	auipc	a0,0x4
    80005970:	d8450513          	addi	a0,a0,-636 # 800096f0 <_ZTV8Consumer+0x68>
    80005974:	00000097          	auipc	ra,0x0
    80005978:	a60080e7          	jalr	-1440(ra) # 800053d4 <_Z11printStringPKc>
    8000597c:	00000613          	li	a2,0
    80005980:	00a00593          	li	a1,10
    80005984:	00090513          	mv	a0,s2
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	bf8080e7          	jalr	-1032(ra) # 80005580 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005990:	00004517          	auipc	a0,0x4
    80005994:	d7850513          	addi	a0,a0,-648 # 80009708 <_ZTV8Consumer+0x80>
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	a3c080e7          	jalr	-1476(ra) # 800053d4 <_Z11printStringPKc>
    800059a0:	00000613          	li	a2,0
    800059a4:	00a00593          	li	a1,10
    800059a8:	00048513          	mv	a0,s1
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	bd4080e7          	jalr	-1068(ra) # 80005580 <_Z8printIntiii>
    printString(".\n");
    800059b4:	00004517          	auipc	a0,0x4
    800059b8:	8cc50513          	addi	a0,a0,-1844 # 80009280 <CONSOLE_STATUS+0x270>
    800059bc:	00000097          	auipc	ra,0x0
    800059c0:	a18080e7          	jalr	-1512(ra) # 800053d4 <_Z11printStringPKc>
    if(threadNum > n) {
    800059c4:	0324c463          	blt	s1,s2,800059ec <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    800059c8:	03205c63          	blez	s2,80005a00 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    800059cc:	03800513          	li	a0,56
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	1b8080e7          	jalr	440(ra) # 80001b88 <_Znwm>
    800059d8:	00050a13          	mv	s4,a0
    800059dc:	00048593          	mv	a1,s1
    800059e0:	ffffd097          	auipc	ra,0xffffd
    800059e4:	314080e7          	jalr	788(ra) # 80002cf4 <_ZN6BufferC1Ei>
    800059e8:	0300006f          	j	80005a18 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800059ec:	00004517          	auipc	a0,0x4
    800059f0:	d3450513          	addi	a0,a0,-716 # 80009720 <_ZTV8Consumer+0x98>
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	9e0080e7          	jalr	-1568(ra) # 800053d4 <_Z11printStringPKc>
        return;
    800059fc:	0140006f          	j	80005a10 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	d6050513          	addi	a0,a0,-672 # 80009760 <_ZTV8Consumer+0xd8>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	9cc080e7          	jalr	-1588(ra) # 800053d4 <_Z11printStringPKc>
        return;
    80005a10:	000b0113          	mv	sp,s6
    80005a14:	1680006f          	j	80005b7c <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80005a18:	00000593          	li	a1,0
    80005a1c:	00006517          	auipc	a0,0x6
    80005a20:	ee450513          	addi	a0,a0,-284 # 8000b900 <_ZL10waitForAll>
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	cd0080e7          	jalr	-816(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    80005a2c:	00391793          	slli	a5,s2,0x3
    80005a30:	00f78793          	addi	a5,a5,15
    80005a34:	ff07f793          	andi	a5,a5,-16
    80005a38:	40f10133          	sub	sp,sp,a5
    80005a3c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80005a40:	0019079b          	addiw	a5,s2,1
    80005a44:	00179713          	slli	a4,a5,0x1
    80005a48:	00f70733          	add	a4,a4,a5
    80005a4c:	00371793          	slli	a5,a4,0x3
    80005a50:	00f78793          	addi	a5,a5,15
    80005a54:	ff07f793          	andi	a5,a5,-16
    80005a58:	40f10133          	sub	sp,sp,a5
    80005a5c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80005a60:	00191713          	slli	a4,s2,0x1
    80005a64:	012706b3          	add	a3,a4,s2
    80005a68:	00369793          	slli	a5,a3,0x3
    80005a6c:	00f987b3          	add	a5,s3,a5
    80005a70:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005a74:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80005a78:	00006697          	auipc	a3,0x6
    80005a7c:	e8868693          	addi	a3,a3,-376 # 8000b900 <_ZL10waitForAll>
    80005a80:	0006b683          	ld	a3,0(a3)
    80005a84:	00d7b823          	sd	a3,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80005a88:	012707b3          	add	a5,a4,s2
    80005a8c:	00379613          	slli	a2,a5,0x3
    80005a90:	00c98633          	add	a2,s3,a2
    80005a94:	00000597          	auipc	a1,0x0
    80005a98:	d6058593          	addi	a1,a1,-672 # 800057f4 <_ZL8consumerPv>
    80005a9c:	f9840513          	addi	a0,s0,-104
    80005aa0:	ffffc097          	auipc	ra,0xffffc
    80005aa4:	b68080e7          	jalr	-1176(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005aa8:	00000493          	li	s1,0
    80005aac:	0280006f          	j	80005ad4 <_Z22producerConsumer_C_APIv+0x1f4>
        thread_create(threads + i,
    80005ab0:	00000597          	auipc	a1,0x0
    80005ab4:	bf858593          	addi	a1,a1,-1032 # 800056a8 <_ZL16producerKeyboardPv>
                      data + i);
    80005ab8:	00171793          	slli	a5,a4,0x1
    80005abc:	00e787b3          	add	a5,a5,a4
    80005ac0:	00379613          	slli	a2,a5,0x3
        thread_create(threads + i,
    80005ac4:	00c98633          	add	a2,s3,a2
    80005ac8:	ffffc097          	auipc	ra,0xffffc
    80005acc:	b40080e7          	jalr	-1216(ra) # 80001608 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005ad0:	0014849b          	addiw	s1,s1,1
    80005ad4:	0524d463          	bge	s1,s2,80005b1c <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    80005ad8:	00149713          	slli	a4,s1,0x1
    80005adc:	00970733          	add	a4,a4,s1
    80005ae0:	00371793          	slli	a5,a4,0x3
    80005ae4:	00f987b3          	add	a5,s3,a5
    80005ae8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005aec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80005af0:	00006717          	auipc	a4,0x6
    80005af4:	e1070713          	addi	a4,a4,-496 # 8000b900 <_ZL10waitForAll>
    80005af8:	00073703          	ld	a4,0(a4)
    80005afc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80005b00:	00048713          	mv	a4,s1
    80005b04:	00349513          	slli	a0,s1,0x3
    80005b08:	00aa8533          	add	a0,s5,a0
    80005b0c:	fa9052e3          	blez	s1,80005ab0 <_Z22producerConsumer_C_APIv+0x1d0>
    80005b10:	00000597          	auipc	a1,0x0
    80005b14:	c4858593          	addi	a1,a1,-952 # 80005758 <_ZL8producerPv>
    80005b18:	fa1ff06f          	j	80005ab8 <_Z22producerConsumer_C_APIv+0x1d8>
    thread_dispatch();
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	b8c080e7          	jalr	-1140(ra) # 800016a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005b24:	00000493          	li	s1,0
    80005b28:	02994063          	blt	s2,s1,80005b48 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    80005b2c:	00006797          	auipc	a5,0x6
    80005b30:	dd478793          	addi	a5,a5,-556 # 8000b900 <_ZL10waitForAll>
    80005b34:	0007b503          	ld	a0,0(a5)
    80005b38:	ffffc097          	auipc	ra,0xffffc
    80005b3c:	c60080e7          	jalr	-928(ra) # 80001798 <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80005b40:	0014849b          	addiw	s1,s1,1
    80005b44:	fe5ff06f          	j	80005b28 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    80005b48:	00006797          	auipc	a5,0x6
    80005b4c:	db878793          	addi	a5,a5,-584 # 8000b900 <_ZL10waitForAll>
    80005b50:	0007b503          	ld	a0,0(a5)
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	bf4080e7          	jalr	-1036(ra) # 80001748 <_Z9sem_closeP10_semaphore>
    delete buffer;
    80005b5c:	000a0e63          	beqz	s4,80005b78 <_Z22producerConsumer_C_APIv+0x298>
    80005b60:	000a0513          	mv	a0,s4
    80005b64:	ffffd097          	auipc	ra,0xffffd
    80005b68:	3d0080e7          	jalr	976(ra) # 80002f34 <_ZN6BufferD1Ev>
    80005b6c:	000a0513          	mv	a0,s4
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	098080e7          	jalr	152(ra) # 80001c08 <_ZdlPv>
    80005b78:	000b0113          	mv	sp,s6

}
    80005b7c:	f9040113          	addi	sp,s0,-112
    80005b80:	06813083          	ld	ra,104(sp)
    80005b84:	06013403          	ld	s0,96(sp)
    80005b88:	05813483          	ld	s1,88(sp)
    80005b8c:	05013903          	ld	s2,80(sp)
    80005b90:	04813983          	ld	s3,72(sp)
    80005b94:	04013a03          	ld	s4,64(sp)
    80005b98:	03813a83          	ld	s5,56(sp)
    80005b9c:	03013b03          	ld	s6,48(sp)
    80005ba0:	07010113          	addi	sp,sp,112
    80005ba4:	00008067          	ret
    80005ba8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80005bac:	000a0513          	mv	a0,s4
    80005bb0:	ffffc097          	auipc	ra,0xffffc
    80005bb4:	058080e7          	jalr	88(ra) # 80001c08 <_ZdlPv>
    80005bb8:	00048513          	mv	a0,s1
    80005bbc:	00007097          	auipc	ra,0x7
    80005bc0:	e4c080e7          	jalr	-436(ra) # 8000ca08 <_Unwind_Resume>

0000000080005bc4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005bc4:	fd010113          	addi	sp,sp,-48
    80005bc8:	02113423          	sd	ra,40(sp)
    80005bcc:	02813023          	sd	s0,32(sp)
    80005bd0:	00913c23          	sd	s1,24(sp)
    80005bd4:	01213823          	sd	s2,16(sp)
    80005bd8:	01313423          	sd	s3,8(sp)
    80005bdc:	03010413          	addi	s0,sp,48
    80005be0:	00050493          	mv	s1,a0
    80005be4:	00058993          	mv	s3,a1
    80005be8:	0015879b          	addiw	a5,a1,1
    80005bec:	0007851b          	sext.w	a0,a5
    80005bf0:	00f4a023          	sw	a5,0(s1)
    80005bf4:	0004a823          	sw	zero,16(s1)
    80005bf8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005bfc:	00251513          	slli	a0,a0,0x2
    80005c00:	ffffc097          	auipc	ra,0xffffc
    80005c04:	8d4080e7          	jalr	-1836(ra) # 800014d4 <_Z9mem_allocm>
    80005c08:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c0c:	01000513          	li	a0,16
    80005c10:	ffffc097          	auipc	ra,0xffffc
    80005c14:	f78080e7          	jalr	-136(ra) # 80001b88 <_Znwm>
    80005c18:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005c1c:	00004797          	auipc	a5,0x4
    80005c20:	a0c78793          	addi	a5,a5,-1524 # 80009628 <_ZTV9Semaphore+0x10>
    80005c24:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005c28:	00000593          	li	a1,0
    80005c2c:	00850513          	addi	a0,a0,8
    80005c30:	ffffc097          	auipc	ra,0xffffc
    80005c34:	ac4080e7          	jalr	-1340(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    80005c38:	00050463          	beqz	a0,80005c40 <_ZN9BufferCPPC1Ei+0x7c>
            myHandle = nullptr;
    80005c3c:	00093423          	sd	zero,8(s2)
    80005c40:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c44:	01000513          	li	a0,16
    80005c48:	ffffc097          	auipc	ra,0xffffc
    80005c4c:	f40080e7          	jalr	-192(ra) # 80001b88 <_Znwm>
    80005c50:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005c54:	00004797          	auipc	a5,0x4
    80005c58:	9d478793          	addi	a5,a5,-1580 # 80009628 <_ZTV9Semaphore+0x10>
    80005c5c:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005c60:	00098593          	mv	a1,s3
    80005c64:	00850513          	addi	a0,a0,8
    80005c68:	ffffc097          	auipc	ra,0xffffc
    80005c6c:	a8c080e7          	jalr	-1396(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    80005c70:	00050463          	beqz	a0,80005c78 <_ZN9BufferCPPC1Ei+0xb4>
            myHandle = nullptr;
    80005c74:	00093423          	sd	zero,8(s2)
    80005c78:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005c7c:	01000513          	li	a0,16
    80005c80:	ffffc097          	auipc	ra,0xffffc
    80005c84:	f08080e7          	jalr	-248(ra) # 80001b88 <_Znwm>
    80005c88:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005c8c:	00004797          	auipc	a5,0x4
    80005c90:	99c78793          	addi	a5,a5,-1636 # 80009628 <_ZTV9Semaphore+0x10>
    80005c94:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005c98:	00100593          	li	a1,1
    80005c9c:	00850513          	addi	a0,a0,8
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	a54080e7          	jalr	-1452(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    80005ca8:	00050463          	beqz	a0,80005cb0 <_ZN9BufferCPPC1Ei+0xec>
            myHandle = nullptr;
    80005cac:	00093423          	sd	zero,8(s2)
    80005cb0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005cb4:	01000513          	li	a0,16
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	ed0080e7          	jalr	-304(ra) # 80001b88 <_Znwm>
    80005cc0:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80005cc4:	00004797          	auipc	a5,0x4
    80005cc8:	96478793          	addi	a5,a5,-1692 # 80009628 <_ZTV9Semaphore+0x10>
    80005ccc:	00f53023          	sd	a5,0(a0)
        if (sem_open(&myHandle, init) != 0) {
    80005cd0:	00100593          	li	a1,1
    80005cd4:	00850513          	addi	a0,a0,8
    80005cd8:	ffffc097          	auipc	ra,0xffffc
    80005cdc:	a1c080e7          	jalr	-1508(ra) # 800016f4 <_Z8sem_openPP10_semaphorej>
    80005ce0:	00050463          	beqz	a0,80005ce8 <_ZN9BufferCPPC1Ei+0x124>
            myHandle = nullptr;
    80005ce4:	00093423          	sd	zero,8(s2)
    80005ce8:	0324b823          	sd	s2,48(s1)
}
    80005cec:	02813083          	ld	ra,40(sp)
    80005cf0:	02013403          	ld	s0,32(sp)
    80005cf4:	01813483          	ld	s1,24(sp)
    80005cf8:	01013903          	ld	s2,16(sp)
    80005cfc:	00813983          	ld	s3,8(sp)
    80005d00:	03010113          	addi	sp,sp,48
    80005d04:	00008067          	ret
    80005d08:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005d0c:	00090513          	mv	a0,s2
    80005d10:	ffffc097          	auipc	ra,0xffffc
    80005d14:	ef8080e7          	jalr	-264(ra) # 80001c08 <_ZdlPv>
    80005d18:	00048513          	mv	a0,s1
    80005d1c:	00007097          	auipc	ra,0x7
    80005d20:	cec080e7          	jalr	-788(ra) # 8000ca08 <_Unwind_Resume>
    80005d24:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d28:	00090513          	mv	a0,s2
    80005d2c:	ffffc097          	auipc	ra,0xffffc
    80005d30:	edc080e7          	jalr	-292(ra) # 80001c08 <_ZdlPv>
    80005d34:	00048513          	mv	a0,s1
    80005d38:	00007097          	auipc	ra,0x7
    80005d3c:	cd0080e7          	jalr	-816(ra) # 8000ca08 <_Unwind_Resume>
    80005d40:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005d44:	00090513          	mv	a0,s2
    80005d48:	ffffc097          	auipc	ra,0xffffc
    80005d4c:	ec0080e7          	jalr	-320(ra) # 80001c08 <_ZdlPv>
    80005d50:	00048513          	mv	a0,s1
    80005d54:	00007097          	auipc	ra,0x7
    80005d58:	cb4080e7          	jalr	-844(ra) # 8000ca08 <_Unwind_Resume>
    80005d5c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d60:	00090513          	mv	a0,s2
    80005d64:	ffffc097          	auipc	ra,0xffffc
    80005d68:	ea4080e7          	jalr	-348(ra) # 80001c08 <_ZdlPv>
    80005d6c:	00048513          	mv	a0,s1
    80005d70:	00007097          	auipc	ra,0x7
    80005d74:	c98080e7          	jalr	-872(ra) # 8000ca08 <_Unwind_Resume>

0000000080005d78 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00113c23          	sd	ra,24(sp)
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	01213023          	sd	s2,0(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    80005d90:	00050493          	mv	s1,a0
    80005d94:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d98:	01853783          	ld	a5,24(a0)
        if (myHandle == nullptr) {
    80005d9c:	0087b503          	ld	a0,8(a5)
    80005da0:	00050663          	beqz	a0,80005dac <_ZN9BufferCPP3putEi+0x34>
        return sem_wait(myHandle);
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	9f4080e7          	jalr	-1548(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    mutexTail->wait();
    80005dac:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005db0:	0087b503          	ld	a0,8(a5)
    80005db4:	00050663          	beqz	a0,80005dc0 <_ZN9BufferCPP3putEi+0x48>
        return sem_wait(myHandle);
    80005db8:	ffffc097          	auipc	ra,0xffffc
    80005dbc:	9e0080e7          	jalr	-1568(ra) # 80001798 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80005dc0:	0084b783          	ld	a5,8(s1)
    80005dc4:	0144a703          	lw	a4,20(s1)
    80005dc8:	00271713          	slli	a4,a4,0x2
    80005dcc:	00e787b3          	add	a5,a5,a4
    80005dd0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005dd4:	0144a783          	lw	a5,20(s1)
    80005dd8:	0017879b          	addiw	a5,a5,1
    80005ddc:	0004a703          	lw	a4,0(s1)
    80005de0:	02e7e7bb          	remw	a5,a5,a4
    80005de4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005de8:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005dec:	0087b503          	ld	a0,8(a5)
    80005df0:	00050663          	beqz	a0,80005dfc <_ZN9BufferCPP3putEi+0x84>
        return sem_signal(myHandle);
    80005df4:	ffffc097          	auipc	ra,0xffffc
    80005df8:	9f4080e7          	jalr	-1548(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    itemAvailable->signal();
    80005dfc:	0204b783          	ld	a5,32(s1)
        if (myHandle == nullptr) {
    80005e00:	0087b503          	ld	a0,8(a5)
    80005e04:	00050663          	beqz	a0,80005e10 <_ZN9BufferCPP3putEi+0x98>
        return sem_signal(myHandle);
    80005e08:	ffffc097          	auipc	ra,0xffffc
    80005e0c:	9e0080e7          	jalr	-1568(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

}
    80005e10:	01813083          	ld	ra,24(sp)
    80005e14:	01013403          	ld	s0,16(sp)
    80005e18:	00813483          	ld	s1,8(sp)
    80005e1c:	00013903          	ld	s2,0(sp)
    80005e20:	02010113          	addi	sp,sp,32
    80005e24:	00008067          	ret

0000000080005e28 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e28:	fe010113          	addi	sp,sp,-32
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	01213023          	sd	s2,0(sp)
    80005e3c:	02010413          	addi	s0,sp,32
    80005e40:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e44:	02053783          	ld	a5,32(a0)
        if (myHandle == nullptr) {
    80005e48:	0087b503          	ld	a0,8(a5)
    80005e4c:	00050663          	beqz	a0,80005e58 <_ZN9BufferCPP3getEv+0x30>
        return sem_wait(myHandle);
    80005e50:	ffffc097          	auipc	ra,0xffffc
    80005e54:	948080e7          	jalr	-1720(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    mutexHead->wait();
    80005e58:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80005e5c:	0087b503          	ld	a0,8(a5)
    80005e60:	00050663          	beqz	a0,80005e6c <_ZN9BufferCPP3getEv+0x44>
        return sem_wait(myHandle);
    80005e64:	ffffc097          	auipc	ra,0xffffc
    80005e68:	934080e7          	jalr	-1740(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    80005e6c:	0084b703          	ld	a4,8(s1)
    80005e70:	0104a783          	lw	a5,16(s1)
    80005e74:	00279693          	slli	a3,a5,0x2
    80005e78:	00d70733          	add	a4,a4,a3
    80005e7c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e80:	0017879b          	addiw	a5,a5,1
    80005e84:	0004a703          	lw	a4,0(s1)
    80005e88:	02e7e7bb          	remw	a5,a5,a4
    80005e8c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e90:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80005e94:	0087b503          	ld	a0,8(a5)
    80005e98:	00050663          	beqz	a0,80005ea4 <_ZN9BufferCPP3getEv+0x7c>
        return sem_signal(myHandle);
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	94c080e7          	jalr	-1716(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    spaceAvailable->signal();
    80005ea4:	0184b783          	ld	a5,24(s1)
        if (myHandle == nullptr) {
    80005ea8:	0087b503          	ld	a0,8(a5)
    80005eac:	00050663          	beqz	a0,80005eb8 <_ZN9BufferCPP3getEv+0x90>
        return sem_signal(myHandle);
    80005eb0:	ffffc097          	auipc	ra,0xffffc
    80005eb4:	938080e7          	jalr	-1736(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80005eb8:	00090513          	mv	a0,s2
    80005ebc:	01813083          	ld	ra,24(sp)
    80005ec0:	01013403          	ld	s0,16(sp)
    80005ec4:	00813483          	ld	s1,8(sp)
    80005ec8:	00013903          	ld	s2,0(sp)
    80005ecc:	02010113          	addi	sp,sp,32
    80005ed0:	00008067          	ret

0000000080005ed4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ed4:	fe010113          	addi	sp,sp,-32
    80005ed8:	00113c23          	sd	ra,24(sp)
    80005edc:	00813823          	sd	s0,16(sp)
    80005ee0:	00913423          	sd	s1,8(sp)
    80005ee4:	01213023          	sd	s2,0(sp)
    80005ee8:	02010413          	addi	s0,sp,32
    80005eec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005ef0:	02853783          	ld	a5,40(a0)
        if (myHandle == nullptr) {
    80005ef4:	0087b503          	ld	a0,8(a5)
    80005ef8:	00050663          	beqz	a0,80005f04 <_ZN9BufferCPP6getCntEv+0x30>
        return sem_wait(myHandle);
    80005efc:	ffffc097          	auipc	ra,0xffffc
    80005f00:	89c080e7          	jalr	-1892(ra) # 80001798 <_Z8sem_waitP10_semaphore>
    mutexTail->wait();
    80005f04:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005f08:	0087b503          	ld	a0,8(a5)
    80005f0c:	00050663          	beqz	a0,80005f18 <_ZN9BufferCPP6getCntEv+0x44>
        return sem_wait(myHandle);
    80005f10:	ffffc097          	auipc	ra,0xffffc
    80005f14:	888080e7          	jalr	-1912(ra) # 80001798 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    80005f18:	0144a783          	lw	a5,20(s1)
    80005f1c:	0104a903          	lw	s2,16(s1)
    80005f20:	0527c663          	blt	a5,s2,80005f6c <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    80005f24:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005f28:	0304b783          	ld	a5,48(s1)
        if (myHandle == nullptr) {
    80005f2c:	0087b503          	ld	a0,8(a5)
    80005f30:	00050663          	beqz	a0,80005f3c <_ZN9BufferCPP6getCntEv+0x68>
        return sem_signal(myHandle);
    80005f34:	ffffc097          	auipc	ra,0xffffc
    80005f38:	8b4080e7          	jalr	-1868(ra) # 800017e8 <_Z10sem_signalP10_semaphore>
    mutexHead->signal();
    80005f3c:	0284b783          	ld	a5,40(s1)
        if (myHandle == nullptr) {
    80005f40:	0087b503          	ld	a0,8(a5)
    80005f44:	00050663          	beqz	a0,80005f50 <_ZN9BufferCPP6getCntEv+0x7c>
        return sem_signal(myHandle);
    80005f48:	ffffc097          	auipc	ra,0xffffc
    80005f4c:	8a0080e7          	jalr	-1888(ra) # 800017e8 <_Z10sem_signalP10_semaphore>

    return ret;
}
    80005f50:	00090513          	mv	a0,s2
    80005f54:	01813083          	ld	ra,24(sp)
    80005f58:	01013403          	ld	s0,16(sp)
    80005f5c:	00813483          	ld	s1,8(sp)
    80005f60:	00013903          	ld	s2,0(sp)
    80005f64:	02010113          	addi	sp,sp,32
    80005f68:	00008067          	ret
        ret = cap - head + tail;
    80005f6c:	0004a703          	lw	a4,0(s1)
    80005f70:	4127093b          	subw	s2,a4,s2
    80005f74:	00f9093b          	addw	s2,s2,a5
    80005f78:	fb1ff06f          	j	80005f28 <_ZN9BufferCPP6getCntEv+0x54>

0000000080005f7c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005f7c:	fe010113          	addi	sp,sp,-32
    80005f80:	00113c23          	sd	ra,24(sp)
    80005f84:	00813823          	sd	s0,16(sp)
    80005f88:	00913423          	sd	s1,8(sp)
    80005f8c:	02010413          	addi	s0,sp,32
    80005f90:	00050493          	mv	s1,a0
    static void putc(char c) { __putc(c); };
    80005f94:	00a00513          	li	a0,10
    80005f98:	00002097          	auipc	ra,0x2
    80005f9c:	1a4080e7          	jalr	420(ra) # 8000813c <__putc>
    printString("Buffer deleted!\n");
    80005fa0:	00003517          	auipc	a0,0x3
    80005fa4:	63850513          	addi	a0,a0,1592 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005fa8:	fffff097          	auipc	ra,0xfffff
    80005fac:	42c080e7          	jalr	1068(ra) # 800053d4 <_Z11printStringPKc>
    while (getCnt()) {
    80005fb0:	00048513          	mv	a0,s1
    80005fb4:	00000097          	auipc	ra,0x0
    80005fb8:	f20080e7          	jalr	-224(ra) # 80005ed4 <_ZN9BufferCPP6getCntEv>
    80005fbc:	02050c63          	beqz	a0,80005ff4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005fc0:	0084b783          	ld	a5,8(s1)
    80005fc4:	0104a703          	lw	a4,16(s1)
    80005fc8:	00271713          	slli	a4,a4,0x2
    80005fcc:	00e787b3          	add	a5,a5,a4
    80005fd0:	0007c503          	lbu	a0,0(a5)
    80005fd4:	00002097          	auipc	ra,0x2
    80005fd8:	168080e7          	jalr	360(ra) # 8000813c <__putc>
        head = (head + 1) % cap;
    80005fdc:	0104a783          	lw	a5,16(s1)
    80005fe0:	0017879b          	addiw	a5,a5,1
    80005fe4:	0004a703          	lw	a4,0(s1)
    80005fe8:	02e7e7bb          	remw	a5,a5,a4
    80005fec:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005ff0:	fc1ff06f          	j	80005fb0 <_ZN9BufferCPPD1Ev+0x34>
    80005ff4:	02100513          	li	a0,33
    80005ff8:	00002097          	auipc	ra,0x2
    80005ffc:	144080e7          	jalr	324(ra) # 8000813c <__putc>
    80006000:	00a00513          	li	a0,10
    80006004:	00002097          	auipc	ra,0x2
    80006008:	138080e7          	jalr	312(ra) # 8000813c <__putc>
    mem_free(buffer);
    8000600c:	0084b503          	ld	a0,8(s1)
    80006010:	ffffb097          	auipc	ra,0xffffb
    80006014:	510080e7          	jalr	1296(ra) # 80001520 <_Z8mem_freePv>
    delete itemAvailable;
    80006018:	0204b503          	ld	a0,32(s1)
    8000601c:	00050863          	beqz	a0,8000602c <_ZN9BufferCPPD1Ev+0xb0>
    80006020:	00053783          	ld	a5,0(a0)
    80006024:	0087b783          	ld	a5,8(a5)
    80006028:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000602c:	0184b503          	ld	a0,24(s1)
    80006030:	00050863          	beqz	a0,80006040 <_ZN9BufferCPPD1Ev+0xc4>
    80006034:	00053783          	ld	a5,0(a0)
    80006038:	0087b783          	ld	a5,8(a5)
    8000603c:	000780e7          	jalr	a5
    delete mutexTail;
    80006040:	0304b503          	ld	a0,48(s1)
    80006044:	00050863          	beqz	a0,80006054 <_ZN9BufferCPPD1Ev+0xd8>
    80006048:	00053783          	ld	a5,0(a0)
    8000604c:	0087b783          	ld	a5,8(a5)
    80006050:	000780e7          	jalr	a5
    delete mutexHead;
    80006054:	0284b503          	ld	a0,40(s1)
    80006058:	00050863          	beqz	a0,80006068 <_ZN9BufferCPPD1Ev+0xec>
    8000605c:	00053783          	ld	a5,0(a0)
    80006060:	0087b783          	ld	a5,8(a5)
    80006064:	000780e7          	jalr	a5
}
    80006068:	01813083          	ld	ra,24(sp)
    8000606c:	01013403          	ld	s0,16(sp)
    80006070:	00813483          	ld	s1,8(sp)
    80006074:	02010113          	addi	sp,sp,32
    80006078:	00008067          	ret

000000008000607c <start>:
    8000607c:	ff010113          	addi	sp,sp,-16
    80006080:	00813423          	sd	s0,8(sp)
    80006084:	01010413          	addi	s0,sp,16
    80006088:	300027f3          	csrr	a5,mstatus
    8000608c:	ffffe737          	lui	a4,0xffffe
    80006090:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1c5f>
    80006094:	00e7f7b3          	and	a5,a5,a4
    80006098:	00001737          	lui	a4,0x1
    8000609c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800060a0:	00e7e7b3          	or	a5,a5,a4
    800060a4:	30079073          	csrw	mstatus,a5
    800060a8:	00000797          	auipc	a5,0x0
    800060ac:	16078793          	addi	a5,a5,352 # 80006208 <system_main>
    800060b0:	34179073          	csrw	mepc,a5
    800060b4:	00000793          	li	a5,0
    800060b8:	18079073          	csrw	satp,a5
    800060bc:	000107b7          	lui	a5,0x10
    800060c0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800060c4:	30279073          	csrw	medeleg,a5
    800060c8:	30379073          	csrw	mideleg,a5
    800060cc:	104027f3          	csrr	a5,sie
    800060d0:	2227e793          	ori	a5,a5,546
    800060d4:	10479073          	csrw	sie,a5
    800060d8:	fff00793          	li	a5,-1
    800060dc:	00a7d793          	srli	a5,a5,0xa
    800060e0:	3b079073          	csrw	pmpaddr0,a5
    800060e4:	00f00793          	li	a5,15
    800060e8:	3a079073          	csrw	pmpcfg0,a5
    800060ec:	f14027f3          	csrr	a5,mhartid
    800060f0:	0200c737          	lui	a4,0x200c
    800060f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800060f8:	0007869b          	sext.w	a3,a5
    800060fc:	00269713          	slli	a4,a3,0x2
    80006100:	000f4637          	lui	a2,0xf4
    80006104:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006108:	00d70733          	add	a4,a4,a3
    8000610c:	0037979b          	slliw	a5,a5,0x3
    80006110:	020046b7          	lui	a3,0x2004
    80006114:	00d787b3          	add	a5,a5,a3
    80006118:	00c585b3          	add	a1,a1,a2
    8000611c:	00371693          	slli	a3,a4,0x3
    80006120:	00006717          	auipc	a4,0x6
    80006124:	82070713          	addi	a4,a4,-2016 # 8000b940 <timer_scratch>
    80006128:	00b7b023          	sd	a1,0(a5)
    8000612c:	00d70733          	add	a4,a4,a3
    80006130:	00f73c23          	sd	a5,24(a4)
    80006134:	02c73023          	sd	a2,32(a4)
    80006138:	34071073          	csrw	mscratch,a4
    8000613c:	00000797          	auipc	a5,0x0
    80006140:	6e478793          	addi	a5,a5,1764 # 80006820 <timervec>
    80006144:	30579073          	csrw	mtvec,a5
    80006148:	300027f3          	csrr	a5,mstatus
    8000614c:	0087e793          	ori	a5,a5,8
    80006150:	30079073          	csrw	mstatus,a5
    80006154:	304027f3          	csrr	a5,mie
    80006158:	0807e793          	ori	a5,a5,128
    8000615c:	30479073          	csrw	mie,a5
    80006160:	f14027f3          	csrr	a5,mhartid
    80006164:	0007879b          	sext.w	a5,a5
    80006168:	00078213          	mv	tp,a5
    8000616c:	30200073          	mret
    80006170:	00813403          	ld	s0,8(sp)
    80006174:	01010113          	addi	sp,sp,16
    80006178:	00008067          	ret

000000008000617c <timerinit>:
    8000617c:	ff010113          	addi	sp,sp,-16
    80006180:	00813423          	sd	s0,8(sp)
    80006184:	01010413          	addi	s0,sp,16
    80006188:	f14027f3          	csrr	a5,mhartid
    8000618c:	0200c737          	lui	a4,0x200c
    80006190:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006194:	0007869b          	sext.w	a3,a5
    80006198:	00269713          	slli	a4,a3,0x2
    8000619c:	000f4637          	lui	a2,0xf4
    800061a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800061a4:	00d70733          	add	a4,a4,a3
    800061a8:	0037979b          	slliw	a5,a5,0x3
    800061ac:	020046b7          	lui	a3,0x2004
    800061b0:	00d787b3          	add	a5,a5,a3
    800061b4:	00c585b3          	add	a1,a1,a2
    800061b8:	00371693          	slli	a3,a4,0x3
    800061bc:	00005717          	auipc	a4,0x5
    800061c0:	78470713          	addi	a4,a4,1924 # 8000b940 <timer_scratch>
    800061c4:	00b7b023          	sd	a1,0(a5)
    800061c8:	00d70733          	add	a4,a4,a3
    800061cc:	00f73c23          	sd	a5,24(a4)
    800061d0:	02c73023          	sd	a2,32(a4)
    800061d4:	34071073          	csrw	mscratch,a4
    800061d8:	00000797          	auipc	a5,0x0
    800061dc:	64878793          	addi	a5,a5,1608 # 80006820 <timervec>
    800061e0:	30579073          	csrw	mtvec,a5
    800061e4:	300027f3          	csrr	a5,mstatus
    800061e8:	0087e793          	ori	a5,a5,8
    800061ec:	30079073          	csrw	mstatus,a5
    800061f0:	304027f3          	csrr	a5,mie
    800061f4:	0807e793          	ori	a5,a5,128
    800061f8:	30479073          	csrw	mie,a5
    800061fc:	00813403          	ld	s0,8(sp)
    80006200:	01010113          	addi	sp,sp,16
    80006204:	00008067          	ret

0000000080006208 <system_main>:
    80006208:	fe010113          	addi	sp,sp,-32
    8000620c:	00813823          	sd	s0,16(sp)
    80006210:	00913423          	sd	s1,8(sp)
    80006214:	00113c23          	sd	ra,24(sp)
    80006218:	02010413          	addi	s0,sp,32
    8000621c:	00000097          	auipc	ra,0x0
    80006220:	0c4080e7          	jalr	196(ra) # 800062e0 <cpuid>
    80006224:	00005497          	auipc	s1,0x5
    80006228:	6e448493          	addi	s1,s1,1764 # 8000b908 <started>
    8000622c:	02050263          	beqz	a0,80006250 <system_main+0x48>
    80006230:	0004a783          	lw	a5,0(s1)
    80006234:	0007879b          	sext.w	a5,a5
    80006238:	fe078ce3          	beqz	a5,80006230 <system_main+0x28>
    8000623c:	0ff0000f          	fence
    80006240:	00004517          	auipc	a0,0x4
    80006244:	8e050513          	addi	a0,a0,-1824 # 80009b20 <_ZTV12ConsumerSync+0x68>
    80006248:	00001097          	auipc	ra,0x1
    8000624c:	a74080e7          	jalr	-1420(ra) # 80006cbc <panic>
    80006250:	00001097          	auipc	ra,0x1
    80006254:	9c8080e7          	jalr	-1592(ra) # 80006c18 <consoleinit>
    80006258:	00001097          	auipc	ra,0x1
    8000625c:	154080e7          	jalr	340(ra) # 800073ac <printfinit>
    80006260:	00003517          	auipc	a0,0x3
    80006264:	6c050513          	addi	a0,a0,1728 # 80009920 <_ZTV8Consumer+0x298>
    80006268:	00001097          	auipc	ra,0x1
    8000626c:	ab0080e7          	jalr	-1360(ra) # 80006d18 <__printf>
    80006270:	00004517          	auipc	a0,0x4
    80006274:	88050513          	addi	a0,a0,-1920 # 80009af0 <_ZTV12ConsumerSync+0x38>
    80006278:	00001097          	auipc	ra,0x1
    8000627c:	aa0080e7          	jalr	-1376(ra) # 80006d18 <__printf>
    80006280:	00003517          	auipc	a0,0x3
    80006284:	6a050513          	addi	a0,a0,1696 # 80009920 <_ZTV8Consumer+0x298>
    80006288:	00001097          	auipc	ra,0x1
    8000628c:	a90080e7          	jalr	-1392(ra) # 80006d18 <__printf>
    80006290:	00001097          	auipc	ra,0x1
    80006294:	4a8080e7          	jalr	1192(ra) # 80007738 <kinit>
    80006298:	00000097          	auipc	ra,0x0
    8000629c:	148080e7          	jalr	328(ra) # 800063e0 <trapinit>
    800062a0:	00000097          	auipc	ra,0x0
    800062a4:	16c080e7          	jalr	364(ra) # 8000640c <trapinithart>
    800062a8:	00000097          	auipc	ra,0x0
    800062ac:	5b8080e7          	jalr	1464(ra) # 80006860 <plicinit>
    800062b0:	00000097          	auipc	ra,0x0
    800062b4:	5d8080e7          	jalr	1496(ra) # 80006888 <plicinithart>
    800062b8:	00000097          	auipc	ra,0x0
    800062bc:	078080e7          	jalr	120(ra) # 80006330 <userinit>
    800062c0:	0ff0000f          	fence
    800062c4:	00100793          	li	a5,1
    800062c8:	00004517          	auipc	a0,0x4
    800062cc:	84050513          	addi	a0,a0,-1984 # 80009b08 <_ZTV12ConsumerSync+0x50>
    800062d0:	00f4a023          	sw	a5,0(s1)
    800062d4:	00001097          	auipc	ra,0x1
    800062d8:	a44080e7          	jalr	-1468(ra) # 80006d18 <__printf>
    800062dc:	0000006f          	j	800062dc <system_main+0xd4>

00000000800062e0 <cpuid>:
    800062e0:	ff010113          	addi	sp,sp,-16
    800062e4:	00813423          	sd	s0,8(sp)
    800062e8:	01010413          	addi	s0,sp,16
    800062ec:	00020513          	mv	a0,tp
    800062f0:	00813403          	ld	s0,8(sp)
    800062f4:	0005051b          	sext.w	a0,a0
    800062f8:	01010113          	addi	sp,sp,16
    800062fc:	00008067          	ret

0000000080006300 <mycpu>:
    80006300:	ff010113          	addi	sp,sp,-16
    80006304:	00813423          	sd	s0,8(sp)
    80006308:	01010413          	addi	s0,sp,16
    8000630c:	00020793          	mv	a5,tp
    80006310:	00813403          	ld	s0,8(sp)
    80006314:	0007879b          	sext.w	a5,a5
    80006318:	00779793          	slli	a5,a5,0x7
    8000631c:	00006517          	auipc	a0,0x6
    80006320:	65450513          	addi	a0,a0,1620 # 8000c970 <cpus>
    80006324:	00f50533          	add	a0,a0,a5
    80006328:	01010113          	addi	sp,sp,16
    8000632c:	00008067          	ret

0000000080006330 <userinit>:
    80006330:	ff010113          	addi	sp,sp,-16
    80006334:	00813423          	sd	s0,8(sp)
    80006338:	01010413          	addi	s0,sp,16
    8000633c:	00813403          	ld	s0,8(sp)
    80006340:	01010113          	addi	sp,sp,16
    80006344:	ffffc317          	auipc	t1,0xffffc
    80006348:	a2830067          	jr	-1496(t1) # 80001d6c <main>

000000008000634c <either_copyout>:
    8000634c:	ff010113          	addi	sp,sp,-16
    80006350:	00813023          	sd	s0,0(sp)
    80006354:	00113423          	sd	ra,8(sp)
    80006358:	01010413          	addi	s0,sp,16
    8000635c:	02051663          	bnez	a0,80006388 <either_copyout+0x3c>
    80006360:	00058513          	mv	a0,a1
    80006364:	00060593          	mv	a1,a2
    80006368:	0006861b          	sext.w	a2,a3
    8000636c:	00002097          	auipc	ra,0x2
    80006370:	c58080e7          	jalr	-936(ra) # 80007fc4 <__memmove>
    80006374:	00813083          	ld	ra,8(sp)
    80006378:	00013403          	ld	s0,0(sp)
    8000637c:	00000513          	li	a0,0
    80006380:	01010113          	addi	sp,sp,16
    80006384:	00008067          	ret
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	7c050513          	addi	a0,a0,1984 # 80009b48 <_ZTV12ConsumerSync+0x90>
    80006390:	00001097          	auipc	ra,0x1
    80006394:	92c080e7          	jalr	-1748(ra) # 80006cbc <panic>

0000000080006398 <either_copyin>:
    80006398:	ff010113          	addi	sp,sp,-16
    8000639c:	00813023          	sd	s0,0(sp)
    800063a0:	00113423          	sd	ra,8(sp)
    800063a4:	01010413          	addi	s0,sp,16
    800063a8:	02059463          	bnez	a1,800063d0 <either_copyin+0x38>
    800063ac:	00060593          	mv	a1,a2
    800063b0:	0006861b          	sext.w	a2,a3
    800063b4:	00002097          	auipc	ra,0x2
    800063b8:	c10080e7          	jalr	-1008(ra) # 80007fc4 <__memmove>
    800063bc:	00813083          	ld	ra,8(sp)
    800063c0:	00013403          	ld	s0,0(sp)
    800063c4:	00000513          	li	a0,0
    800063c8:	01010113          	addi	sp,sp,16
    800063cc:	00008067          	ret
    800063d0:	00003517          	auipc	a0,0x3
    800063d4:	7a050513          	addi	a0,a0,1952 # 80009b70 <_ZTV12ConsumerSync+0xb8>
    800063d8:	00001097          	auipc	ra,0x1
    800063dc:	8e4080e7          	jalr	-1820(ra) # 80006cbc <panic>

00000000800063e0 <trapinit>:
    800063e0:	ff010113          	addi	sp,sp,-16
    800063e4:	00813423          	sd	s0,8(sp)
    800063e8:	01010413          	addi	s0,sp,16
    800063ec:	00813403          	ld	s0,8(sp)
    800063f0:	00003597          	auipc	a1,0x3
    800063f4:	7a858593          	addi	a1,a1,1960 # 80009b98 <_ZTV12ConsumerSync+0xe0>
    800063f8:	00006517          	auipc	a0,0x6
    800063fc:	5f850513          	addi	a0,a0,1528 # 8000c9f0 <tickslock>
    80006400:	01010113          	addi	sp,sp,16
    80006404:	00001317          	auipc	t1,0x1
    80006408:	5c430067          	jr	1476(t1) # 800079c8 <initlock>

000000008000640c <trapinithart>:
    8000640c:	ff010113          	addi	sp,sp,-16
    80006410:	00813423          	sd	s0,8(sp)
    80006414:	01010413          	addi	s0,sp,16
    80006418:	00000797          	auipc	a5,0x0
    8000641c:	2f878793          	addi	a5,a5,760 # 80006710 <kernelvec>
    80006420:	10579073          	csrw	stvec,a5
    80006424:	00813403          	ld	s0,8(sp)
    80006428:	01010113          	addi	sp,sp,16
    8000642c:	00008067          	ret

0000000080006430 <usertrap>:
    80006430:	ff010113          	addi	sp,sp,-16
    80006434:	00813423          	sd	s0,8(sp)
    80006438:	01010413          	addi	s0,sp,16
    8000643c:	00813403          	ld	s0,8(sp)
    80006440:	01010113          	addi	sp,sp,16
    80006444:	00008067          	ret

0000000080006448 <usertrapret>:
    80006448:	ff010113          	addi	sp,sp,-16
    8000644c:	00813423          	sd	s0,8(sp)
    80006450:	01010413          	addi	s0,sp,16
    80006454:	00813403          	ld	s0,8(sp)
    80006458:	01010113          	addi	sp,sp,16
    8000645c:	00008067          	ret

0000000080006460 <kerneltrap>:
    80006460:	fe010113          	addi	sp,sp,-32
    80006464:	00813823          	sd	s0,16(sp)
    80006468:	00113c23          	sd	ra,24(sp)
    8000646c:	00913423          	sd	s1,8(sp)
    80006470:	02010413          	addi	s0,sp,32
    80006474:	142025f3          	csrr	a1,scause
    80006478:	100027f3          	csrr	a5,sstatus
    8000647c:	0027f793          	andi	a5,a5,2
    80006480:	10079c63          	bnez	a5,80006598 <kerneltrap+0x138>
    80006484:	142027f3          	csrr	a5,scause
    80006488:	0207ce63          	bltz	a5,800064c4 <kerneltrap+0x64>
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	75450513          	addi	a0,a0,1876 # 80009be0 <_ZTV12ConsumerSync+0x128>
    80006494:	00001097          	auipc	ra,0x1
    80006498:	884080e7          	jalr	-1916(ra) # 80006d18 <__printf>
    8000649c:	141025f3          	csrr	a1,sepc
    800064a0:	14302673          	csrr	a2,stval
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	74c50513          	addi	a0,a0,1868 # 80009bf0 <_ZTV12ConsumerSync+0x138>
    800064ac:	00001097          	auipc	ra,0x1
    800064b0:	86c080e7          	jalr	-1940(ra) # 80006d18 <__printf>
    800064b4:	00003517          	auipc	a0,0x3
    800064b8:	75450513          	addi	a0,a0,1876 # 80009c08 <_ZTV12ConsumerSync+0x150>
    800064bc:	00001097          	auipc	ra,0x1
    800064c0:	800080e7          	jalr	-2048(ra) # 80006cbc <panic>
    800064c4:	0ff7f713          	andi	a4,a5,255
    800064c8:	00900693          	li	a3,9
    800064cc:	04d70063          	beq	a4,a3,8000650c <kerneltrap+0xac>
    800064d0:	fff00713          	li	a4,-1
    800064d4:	03f71713          	slli	a4,a4,0x3f
    800064d8:	00170713          	addi	a4,a4,1
    800064dc:	fae798e3          	bne	a5,a4,8000648c <kerneltrap+0x2c>
    800064e0:	00000097          	auipc	ra,0x0
    800064e4:	e00080e7          	jalr	-512(ra) # 800062e0 <cpuid>
    800064e8:	06050663          	beqz	a0,80006554 <kerneltrap+0xf4>
    800064ec:	144027f3          	csrr	a5,sip
    800064f0:	ffd7f793          	andi	a5,a5,-3
    800064f4:	14479073          	csrw	sip,a5
    800064f8:	01813083          	ld	ra,24(sp)
    800064fc:	01013403          	ld	s0,16(sp)
    80006500:	00813483          	ld	s1,8(sp)
    80006504:	02010113          	addi	sp,sp,32
    80006508:	00008067          	ret
    8000650c:	00000097          	auipc	ra,0x0
    80006510:	3c8080e7          	jalr	968(ra) # 800068d4 <plic_claim>
    80006514:	00a00793          	li	a5,10
    80006518:	00050493          	mv	s1,a0
    8000651c:	06f50863          	beq	a0,a5,8000658c <kerneltrap+0x12c>
    80006520:	fc050ce3          	beqz	a0,800064f8 <kerneltrap+0x98>
    80006524:	00050593          	mv	a1,a0
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	69850513          	addi	a0,a0,1688 # 80009bc0 <_ZTV12ConsumerSync+0x108>
    80006530:	00000097          	auipc	ra,0x0
    80006534:	7e8080e7          	jalr	2024(ra) # 80006d18 <__printf>
    80006538:	01013403          	ld	s0,16(sp)
    8000653c:	01813083          	ld	ra,24(sp)
    80006540:	00048513          	mv	a0,s1
    80006544:	00813483          	ld	s1,8(sp)
    80006548:	02010113          	addi	sp,sp,32
    8000654c:	00000317          	auipc	t1,0x0
    80006550:	3c030067          	jr	960(t1) # 8000690c <plic_complete>
    80006554:	00006517          	auipc	a0,0x6
    80006558:	49c50513          	addi	a0,a0,1180 # 8000c9f0 <tickslock>
    8000655c:	00001097          	auipc	ra,0x1
    80006560:	490080e7          	jalr	1168(ra) # 800079ec <acquire>
    80006564:	00005717          	auipc	a4,0x5
    80006568:	3a870713          	addi	a4,a4,936 # 8000b90c <ticks>
    8000656c:	00072783          	lw	a5,0(a4)
    80006570:	00006517          	auipc	a0,0x6
    80006574:	48050513          	addi	a0,a0,1152 # 8000c9f0 <tickslock>
    80006578:	0017879b          	addiw	a5,a5,1
    8000657c:	00f72023          	sw	a5,0(a4)
    80006580:	00001097          	auipc	ra,0x1
    80006584:	538080e7          	jalr	1336(ra) # 80007ab8 <release>
    80006588:	f65ff06f          	j	800064ec <kerneltrap+0x8c>
    8000658c:	00001097          	auipc	ra,0x1
    80006590:	094080e7          	jalr	148(ra) # 80007620 <uartintr>
    80006594:	fa5ff06f          	j	80006538 <kerneltrap+0xd8>
    80006598:	00003517          	auipc	a0,0x3
    8000659c:	60850513          	addi	a0,a0,1544 # 80009ba0 <_ZTV12ConsumerSync+0xe8>
    800065a0:	00000097          	auipc	ra,0x0
    800065a4:	71c080e7          	jalr	1820(ra) # 80006cbc <panic>

00000000800065a8 <clockintr>:
    800065a8:	fe010113          	addi	sp,sp,-32
    800065ac:	00813823          	sd	s0,16(sp)
    800065b0:	00913423          	sd	s1,8(sp)
    800065b4:	00113c23          	sd	ra,24(sp)
    800065b8:	02010413          	addi	s0,sp,32
    800065bc:	00006497          	auipc	s1,0x6
    800065c0:	43448493          	addi	s1,s1,1076 # 8000c9f0 <tickslock>
    800065c4:	00048513          	mv	a0,s1
    800065c8:	00001097          	auipc	ra,0x1
    800065cc:	424080e7          	jalr	1060(ra) # 800079ec <acquire>
    800065d0:	00005717          	auipc	a4,0x5
    800065d4:	33c70713          	addi	a4,a4,828 # 8000b90c <ticks>
    800065d8:	00072783          	lw	a5,0(a4)
    800065dc:	01013403          	ld	s0,16(sp)
    800065e0:	01813083          	ld	ra,24(sp)
    800065e4:	00048513          	mv	a0,s1
    800065e8:	0017879b          	addiw	a5,a5,1
    800065ec:	00813483          	ld	s1,8(sp)
    800065f0:	00f72023          	sw	a5,0(a4)
    800065f4:	02010113          	addi	sp,sp,32
    800065f8:	00001317          	auipc	t1,0x1
    800065fc:	4c030067          	jr	1216(t1) # 80007ab8 <release>

0000000080006600 <devintr>:
    80006600:	142027f3          	csrr	a5,scause
    80006604:	00000513          	li	a0,0
    80006608:	0007c463          	bltz	a5,80006610 <devintr+0x10>
    8000660c:	00008067          	ret
    80006610:	fe010113          	addi	sp,sp,-32
    80006614:	00813823          	sd	s0,16(sp)
    80006618:	00113c23          	sd	ra,24(sp)
    8000661c:	00913423          	sd	s1,8(sp)
    80006620:	02010413          	addi	s0,sp,32
    80006624:	0ff7f713          	andi	a4,a5,255
    80006628:	00900693          	li	a3,9
    8000662c:	04d70c63          	beq	a4,a3,80006684 <devintr+0x84>
    80006630:	fff00713          	li	a4,-1
    80006634:	03f71713          	slli	a4,a4,0x3f
    80006638:	00170713          	addi	a4,a4,1
    8000663c:	00e78c63          	beq	a5,a4,80006654 <devintr+0x54>
    80006640:	01813083          	ld	ra,24(sp)
    80006644:	01013403          	ld	s0,16(sp)
    80006648:	00813483          	ld	s1,8(sp)
    8000664c:	02010113          	addi	sp,sp,32
    80006650:	00008067          	ret
    80006654:	00000097          	auipc	ra,0x0
    80006658:	c8c080e7          	jalr	-884(ra) # 800062e0 <cpuid>
    8000665c:	06050663          	beqz	a0,800066c8 <devintr+0xc8>
    80006660:	144027f3          	csrr	a5,sip
    80006664:	ffd7f793          	andi	a5,a5,-3
    80006668:	14479073          	csrw	sip,a5
    8000666c:	01813083          	ld	ra,24(sp)
    80006670:	01013403          	ld	s0,16(sp)
    80006674:	00813483          	ld	s1,8(sp)
    80006678:	00200513          	li	a0,2
    8000667c:	02010113          	addi	sp,sp,32
    80006680:	00008067          	ret
    80006684:	00000097          	auipc	ra,0x0
    80006688:	250080e7          	jalr	592(ra) # 800068d4 <plic_claim>
    8000668c:	00a00793          	li	a5,10
    80006690:	00050493          	mv	s1,a0
    80006694:	06f50663          	beq	a0,a5,80006700 <devintr+0x100>
    80006698:	00100513          	li	a0,1
    8000669c:	fa0482e3          	beqz	s1,80006640 <devintr+0x40>
    800066a0:	00048593          	mv	a1,s1
    800066a4:	00003517          	auipc	a0,0x3
    800066a8:	51c50513          	addi	a0,a0,1308 # 80009bc0 <_ZTV12ConsumerSync+0x108>
    800066ac:	00000097          	auipc	ra,0x0
    800066b0:	66c080e7          	jalr	1644(ra) # 80006d18 <__printf>
    800066b4:	00048513          	mv	a0,s1
    800066b8:	00000097          	auipc	ra,0x0
    800066bc:	254080e7          	jalr	596(ra) # 8000690c <plic_complete>
    800066c0:	00100513          	li	a0,1
    800066c4:	f7dff06f          	j	80006640 <devintr+0x40>
    800066c8:	00006517          	auipc	a0,0x6
    800066cc:	32850513          	addi	a0,a0,808 # 8000c9f0 <tickslock>
    800066d0:	00001097          	auipc	ra,0x1
    800066d4:	31c080e7          	jalr	796(ra) # 800079ec <acquire>
    800066d8:	00005717          	auipc	a4,0x5
    800066dc:	23470713          	addi	a4,a4,564 # 8000b90c <ticks>
    800066e0:	00072783          	lw	a5,0(a4)
    800066e4:	00006517          	auipc	a0,0x6
    800066e8:	30c50513          	addi	a0,a0,780 # 8000c9f0 <tickslock>
    800066ec:	0017879b          	addiw	a5,a5,1
    800066f0:	00f72023          	sw	a5,0(a4)
    800066f4:	00001097          	auipc	ra,0x1
    800066f8:	3c4080e7          	jalr	964(ra) # 80007ab8 <release>
    800066fc:	f65ff06f          	j	80006660 <devintr+0x60>
    80006700:	00001097          	auipc	ra,0x1
    80006704:	f20080e7          	jalr	-224(ra) # 80007620 <uartintr>
    80006708:	fadff06f          	j	800066b4 <devintr+0xb4>
    8000670c:	0000                	unimp
	...

0000000080006710 <kernelvec>:
    80006710:	f0010113          	addi	sp,sp,-256
    80006714:	00113023          	sd	ra,0(sp)
    80006718:	00213423          	sd	sp,8(sp)
    8000671c:	00313823          	sd	gp,16(sp)
    80006720:	00413c23          	sd	tp,24(sp)
    80006724:	02513023          	sd	t0,32(sp)
    80006728:	02613423          	sd	t1,40(sp)
    8000672c:	02713823          	sd	t2,48(sp)
    80006730:	02813c23          	sd	s0,56(sp)
    80006734:	04913023          	sd	s1,64(sp)
    80006738:	04a13423          	sd	a0,72(sp)
    8000673c:	04b13823          	sd	a1,80(sp)
    80006740:	04c13c23          	sd	a2,88(sp)
    80006744:	06d13023          	sd	a3,96(sp)
    80006748:	06e13423          	sd	a4,104(sp)
    8000674c:	06f13823          	sd	a5,112(sp)
    80006750:	07013c23          	sd	a6,120(sp)
    80006754:	09113023          	sd	a7,128(sp)
    80006758:	09213423          	sd	s2,136(sp)
    8000675c:	09313823          	sd	s3,144(sp)
    80006760:	09413c23          	sd	s4,152(sp)
    80006764:	0b513023          	sd	s5,160(sp)
    80006768:	0b613423          	sd	s6,168(sp)
    8000676c:	0b713823          	sd	s7,176(sp)
    80006770:	0b813c23          	sd	s8,184(sp)
    80006774:	0d913023          	sd	s9,192(sp)
    80006778:	0da13423          	sd	s10,200(sp)
    8000677c:	0db13823          	sd	s11,208(sp)
    80006780:	0dc13c23          	sd	t3,216(sp)
    80006784:	0fd13023          	sd	t4,224(sp)
    80006788:	0fe13423          	sd	t5,232(sp)
    8000678c:	0ff13823          	sd	t6,240(sp)
    80006790:	cd1ff0ef          	jal	ra,80006460 <kerneltrap>
    80006794:	00013083          	ld	ra,0(sp)
    80006798:	00813103          	ld	sp,8(sp)
    8000679c:	01013183          	ld	gp,16(sp)
    800067a0:	02013283          	ld	t0,32(sp)
    800067a4:	02813303          	ld	t1,40(sp)
    800067a8:	03013383          	ld	t2,48(sp)
    800067ac:	03813403          	ld	s0,56(sp)
    800067b0:	04013483          	ld	s1,64(sp)
    800067b4:	04813503          	ld	a0,72(sp)
    800067b8:	05013583          	ld	a1,80(sp)
    800067bc:	05813603          	ld	a2,88(sp)
    800067c0:	06013683          	ld	a3,96(sp)
    800067c4:	06813703          	ld	a4,104(sp)
    800067c8:	07013783          	ld	a5,112(sp)
    800067cc:	07813803          	ld	a6,120(sp)
    800067d0:	08013883          	ld	a7,128(sp)
    800067d4:	08813903          	ld	s2,136(sp)
    800067d8:	09013983          	ld	s3,144(sp)
    800067dc:	09813a03          	ld	s4,152(sp)
    800067e0:	0a013a83          	ld	s5,160(sp)
    800067e4:	0a813b03          	ld	s6,168(sp)
    800067e8:	0b013b83          	ld	s7,176(sp)
    800067ec:	0b813c03          	ld	s8,184(sp)
    800067f0:	0c013c83          	ld	s9,192(sp)
    800067f4:	0c813d03          	ld	s10,200(sp)
    800067f8:	0d013d83          	ld	s11,208(sp)
    800067fc:	0d813e03          	ld	t3,216(sp)
    80006800:	0e013e83          	ld	t4,224(sp)
    80006804:	0e813f03          	ld	t5,232(sp)
    80006808:	0f013f83          	ld	t6,240(sp)
    8000680c:	10010113          	addi	sp,sp,256
    80006810:	10200073          	sret
    80006814:	00000013          	nop
    80006818:	00000013          	nop
    8000681c:	00000013          	nop

0000000080006820 <timervec>:
    80006820:	34051573          	csrrw	a0,mscratch,a0
    80006824:	00b53023          	sd	a1,0(a0)
    80006828:	00c53423          	sd	a2,8(a0)
    8000682c:	00d53823          	sd	a3,16(a0)
    80006830:	01853583          	ld	a1,24(a0)
    80006834:	02053603          	ld	a2,32(a0)
    80006838:	0005b683          	ld	a3,0(a1)
    8000683c:	00c686b3          	add	a3,a3,a2
    80006840:	00d5b023          	sd	a3,0(a1)
    80006844:	00200593          	li	a1,2
    80006848:	14459073          	csrw	sip,a1
    8000684c:	01053683          	ld	a3,16(a0)
    80006850:	00853603          	ld	a2,8(a0)
    80006854:	00053583          	ld	a1,0(a0)
    80006858:	34051573          	csrrw	a0,mscratch,a0
    8000685c:	30200073          	mret

0000000080006860 <plicinit>:
    80006860:	ff010113          	addi	sp,sp,-16
    80006864:	00813423          	sd	s0,8(sp)
    80006868:	01010413          	addi	s0,sp,16
    8000686c:	00813403          	ld	s0,8(sp)
    80006870:	0c0007b7          	lui	a5,0xc000
    80006874:	00100713          	li	a4,1
    80006878:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000687c:	00e7a223          	sw	a4,4(a5)
    80006880:	01010113          	addi	sp,sp,16
    80006884:	00008067          	ret

0000000080006888 <plicinithart>:
    80006888:	ff010113          	addi	sp,sp,-16
    8000688c:	00813023          	sd	s0,0(sp)
    80006890:	00113423          	sd	ra,8(sp)
    80006894:	01010413          	addi	s0,sp,16
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	a48080e7          	jalr	-1464(ra) # 800062e0 <cpuid>
    800068a0:	0085171b          	slliw	a4,a0,0x8
    800068a4:	0c0027b7          	lui	a5,0xc002
    800068a8:	00e787b3          	add	a5,a5,a4
    800068ac:	40200713          	li	a4,1026
    800068b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800068b4:	00813083          	ld	ra,8(sp)
    800068b8:	00013403          	ld	s0,0(sp)
    800068bc:	00d5151b          	slliw	a0,a0,0xd
    800068c0:	0c2017b7          	lui	a5,0xc201
    800068c4:	00a78533          	add	a0,a5,a0
    800068c8:	00052023          	sw	zero,0(a0)
    800068cc:	01010113          	addi	sp,sp,16
    800068d0:	00008067          	ret

00000000800068d4 <plic_claim>:
    800068d4:	ff010113          	addi	sp,sp,-16
    800068d8:	00813023          	sd	s0,0(sp)
    800068dc:	00113423          	sd	ra,8(sp)
    800068e0:	01010413          	addi	s0,sp,16
    800068e4:	00000097          	auipc	ra,0x0
    800068e8:	9fc080e7          	jalr	-1540(ra) # 800062e0 <cpuid>
    800068ec:	00813083          	ld	ra,8(sp)
    800068f0:	00013403          	ld	s0,0(sp)
    800068f4:	00d5151b          	slliw	a0,a0,0xd
    800068f8:	0c2017b7          	lui	a5,0xc201
    800068fc:	00a78533          	add	a0,a5,a0
    80006900:	00452503          	lw	a0,4(a0)
    80006904:	01010113          	addi	sp,sp,16
    80006908:	00008067          	ret

000000008000690c <plic_complete>:
    8000690c:	fe010113          	addi	sp,sp,-32
    80006910:	00813823          	sd	s0,16(sp)
    80006914:	00913423          	sd	s1,8(sp)
    80006918:	00113c23          	sd	ra,24(sp)
    8000691c:	02010413          	addi	s0,sp,32
    80006920:	00050493          	mv	s1,a0
    80006924:	00000097          	auipc	ra,0x0
    80006928:	9bc080e7          	jalr	-1604(ra) # 800062e0 <cpuid>
    8000692c:	01813083          	ld	ra,24(sp)
    80006930:	01013403          	ld	s0,16(sp)
    80006934:	00d5179b          	slliw	a5,a0,0xd
    80006938:	0c201737          	lui	a4,0xc201
    8000693c:	00f707b3          	add	a5,a4,a5
    80006940:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006944:	00813483          	ld	s1,8(sp)
    80006948:	02010113          	addi	sp,sp,32
    8000694c:	00008067          	ret

0000000080006950 <consolewrite>:
    80006950:	fb010113          	addi	sp,sp,-80
    80006954:	04813023          	sd	s0,64(sp)
    80006958:	04113423          	sd	ra,72(sp)
    8000695c:	02913c23          	sd	s1,56(sp)
    80006960:	03213823          	sd	s2,48(sp)
    80006964:	03313423          	sd	s3,40(sp)
    80006968:	03413023          	sd	s4,32(sp)
    8000696c:	01513c23          	sd	s5,24(sp)
    80006970:	05010413          	addi	s0,sp,80
    80006974:	06c05c63          	blez	a2,800069ec <consolewrite+0x9c>
    80006978:	00060993          	mv	s3,a2
    8000697c:	00050a13          	mv	s4,a0
    80006980:	00058493          	mv	s1,a1
    80006984:	00000913          	li	s2,0
    80006988:	fff00a93          	li	s5,-1
    8000698c:	01c0006f          	j	800069a8 <consolewrite+0x58>
    80006990:	fbf44503          	lbu	a0,-65(s0)
    80006994:	0019091b          	addiw	s2,s2,1
    80006998:	00148493          	addi	s1,s1,1
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	a9c080e7          	jalr	-1380(ra) # 80007438 <uartputc>
    800069a4:	03298063          	beq	s3,s2,800069c4 <consolewrite+0x74>
    800069a8:	00048613          	mv	a2,s1
    800069ac:	00100693          	li	a3,1
    800069b0:	000a0593          	mv	a1,s4
    800069b4:	fbf40513          	addi	a0,s0,-65
    800069b8:	00000097          	auipc	ra,0x0
    800069bc:	9e0080e7          	jalr	-1568(ra) # 80006398 <either_copyin>
    800069c0:	fd5518e3          	bne	a0,s5,80006990 <consolewrite+0x40>
    800069c4:	04813083          	ld	ra,72(sp)
    800069c8:	04013403          	ld	s0,64(sp)
    800069cc:	03813483          	ld	s1,56(sp)
    800069d0:	02813983          	ld	s3,40(sp)
    800069d4:	02013a03          	ld	s4,32(sp)
    800069d8:	01813a83          	ld	s5,24(sp)
    800069dc:	00090513          	mv	a0,s2
    800069e0:	03013903          	ld	s2,48(sp)
    800069e4:	05010113          	addi	sp,sp,80
    800069e8:	00008067          	ret
    800069ec:	00000913          	li	s2,0
    800069f0:	fd5ff06f          	j	800069c4 <consolewrite+0x74>

00000000800069f4 <consoleread>:
    800069f4:	f9010113          	addi	sp,sp,-112
    800069f8:	06813023          	sd	s0,96(sp)
    800069fc:	04913c23          	sd	s1,88(sp)
    80006a00:	05213823          	sd	s2,80(sp)
    80006a04:	05313423          	sd	s3,72(sp)
    80006a08:	05413023          	sd	s4,64(sp)
    80006a0c:	03513c23          	sd	s5,56(sp)
    80006a10:	03613823          	sd	s6,48(sp)
    80006a14:	03713423          	sd	s7,40(sp)
    80006a18:	03813023          	sd	s8,32(sp)
    80006a1c:	06113423          	sd	ra,104(sp)
    80006a20:	01913c23          	sd	s9,24(sp)
    80006a24:	07010413          	addi	s0,sp,112
    80006a28:	00060b93          	mv	s7,a2
    80006a2c:	00050913          	mv	s2,a0
    80006a30:	00058c13          	mv	s8,a1
    80006a34:	00060b1b          	sext.w	s6,a2
    80006a38:	00006497          	auipc	s1,0x6
    80006a3c:	fe048493          	addi	s1,s1,-32 # 8000ca18 <cons>
    80006a40:	00400993          	li	s3,4
    80006a44:	fff00a13          	li	s4,-1
    80006a48:	00a00a93          	li	s5,10
    80006a4c:	05705e63          	blez	s7,80006aa8 <consoleread+0xb4>
    80006a50:	09c4a703          	lw	a4,156(s1)
    80006a54:	0984a783          	lw	a5,152(s1)
    80006a58:	0007071b          	sext.w	a4,a4
    80006a5c:	08e78463          	beq	a5,a4,80006ae4 <consoleread+0xf0>
    80006a60:	07f7f713          	andi	a4,a5,127
    80006a64:	00e48733          	add	a4,s1,a4
    80006a68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006a6c:	0017869b          	addiw	a3,a5,1
    80006a70:	08d4ac23          	sw	a3,152(s1)
    80006a74:	00070c9b          	sext.w	s9,a4
    80006a78:	0b370663          	beq	a4,s3,80006b24 <consoleread+0x130>
    80006a7c:	00100693          	li	a3,1
    80006a80:	f9f40613          	addi	a2,s0,-97
    80006a84:	000c0593          	mv	a1,s8
    80006a88:	00090513          	mv	a0,s2
    80006a8c:	f8e40fa3          	sb	a4,-97(s0)
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	8bc080e7          	jalr	-1860(ra) # 8000634c <either_copyout>
    80006a98:	01450863          	beq	a0,s4,80006aa8 <consoleread+0xb4>
    80006a9c:	001c0c13          	addi	s8,s8,1
    80006aa0:	fffb8b9b          	addiw	s7,s7,-1
    80006aa4:	fb5c94e3          	bne	s9,s5,80006a4c <consoleread+0x58>
    80006aa8:	000b851b          	sext.w	a0,s7
    80006aac:	06813083          	ld	ra,104(sp)
    80006ab0:	06013403          	ld	s0,96(sp)
    80006ab4:	05813483          	ld	s1,88(sp)
    80006ab8:	05013903          	ld	s2,80(sp)
    80006abc:	04813983          	ld	s3,72(sp)
    80006ac0:	04013a03          	ld	s4,64(sp)
    80006ac4:	03813a83          	ld	s5,56(sp)
    80006ac8:	02813b83          	ld	s7,40(sp)
    80006acc:	02013c03          	ld	s8,32(sp)
    80006ad0:	01813c83          	ld	s9,24(sp)
    80006ad4:	40ab053b          	subw	a0,s6,a0
    80006ad8:	03013b03          	ld	s6,48(sp)
    80006adc:	07010113          	addi	sp,sp,112
    80006ae0:	00008067          	ret
    80006ae4:	00001097          	auipc	ra,0x1
    80006ae8:	1d8080e7          	jalr	472(ra) # 80007cbc <push_on>
    80006aec:	0984a703          	lw	a4,152(s1)
    80006af0:	09c4a783          	lw	a5,156(s1)
    80006af4:	0007879b          	sext.w	a5,a5
    80006af8:	fef70ce3          	beq	a4,a5,80006af0 <consoleread+0xfc>
    80006afc:	00001097          	auipc	ra,0x1
    80006b00:	234080e7          	jalr	564(ra) # 80007d30 <pop_on>
    80006b04:	0984a783          	lw	a5,152(s1)
    80006b08:	07f7f713          	andi	a4,a5,127
    80006b0c:	00e48733          	add	a4,s1,a4
    80006b10:	01874703          	lbu	a4,24(a4)
    80006b14:	0017869b          	addiw	a3,a5,1
    80006b18:	08d4ac23          	sw	a3,152(s1)
    80006b1c:	00070c9b          	sext.w	s9,a4
    80006b20:	f5371ee3          	bne	a4,s3,80006a7c <consoleread+0x88>
    80006b24:	000b851b          	sext.w	a0,s7
    80006b28:	f96bf2e3          	bgeu	s7,s6,80006aac <consoleread+0xb8>
    80006b2c:	08f4ac23          	sw	a5,152(s1)
    80006b30:	f7dff06f          	j	80006aac <consoleread+0xb8>

0000000080006b34 <consputc>:
    80006b34:	10000793          	li	a5,256
    80006b38:	00f50663          	beq	a0,a5,80006b44 <consputc+0x10>
    80006b3c:	00001317          	auipc	t1,0x1
    80006b40:	9f430067          	jr	-1548(t1) # 80007530 <uartputc_sync>
    80006b44:	ff010113          	addi	sp,sp,-16
    80006b48:	00113423          	sd	ra,8(sp)
    80006b4c:	00813023          	sd	s0,0(sp)
    80006b50:	01010413          	addi	s0,sp,16
    80006b54:	00800513          	li	a0,8
    80006b58:	00001097          	auipc	ra,0x1
    80006b5c:	9d8080e7          	jalr	-1576(ra) # 80007530 <uartputc_sync>
    80006b60:	02000513          	li	a0,32
    80006b64:	00001097          	auipc	ra,0x1
    80006b68:	9cc080e7          	jalr	-1588(ra) # 80007530 <uartputc_sync>
    80006b6c:	00013403          	ld	s0,0(sp)
    80006b70:	00813083          	ld	ra,8(sp)
    80006b74:	00800513          	li	a0,8
    80006b78:	01010113          	addi	sp,sp,16
    80006b7c:	00001317          	auipc	t1,0x1
    80006b80:	9b430067          	jr	-1612(t1) # 80007530 <uartputc_sync>

0000000080006b84 <consoleintr>:
    80006b84:	fe010113          	addi	sp,sp,-32
    80006b88:	00813823          	sd	s0,16(sp)
    80006b8c:	00913423          	sd	s1,8(sp)
    80006b90:	01213023          	sd	s2,0(sp)
    80006b94:	00113c23          	sd	ra,24(sp)
    80006b98:	02010413          	addi	s0,sp,32
    80006b9c:	00006917          	auipc	s2,0x6
    80006ba0:	e7c90913          	addi	s2,s2,-388 # 8000ca18 <cons>
    80006ba4:	00050493          	mv	s1,a0
    80006ba8:	00090513          	mv	a0,s2
    80006bac:	00001097          	auipc	ra,0x1
    80006bb0:	e40080e7          	jalr	-448(ra) # 800079ec <acquire>
    80006bb4:	02048c63          	beqz	s1,80006bec <consoleintr+0x68>
    80006bb8:	0a092783          	lw	a5,160(s2)
    80006bbc:	09892703          	lw	a4,152(s2)
    80006bc0:	07f00693          	li	a3,127
    80006bc4:	40e7873b          	subw	a4,a5,a4
    80006bc8:	02e6e263          	bltu	a3,a4,80006bec <consoleintr+0x68>
    80006bcc:	00d00713          	li	a4,13
    80006bd0:	04e48063          	beq	s1,a4,80006c10 <consoleintr+0x8c>
    80006bd4:	07f7f713          	andi	a4,a5,127
    80006bd8:	00e90733          	add	a4,s2,a4
    80006bdc:	0017879b          	addiw	a5,a5,1
    80006be0:	0af92023          	sw	a5,160(s2)
    80006be4:	00970c23          	sb	s1,24(a4)
    80006be8:	08f92e23          	sw	a5,156(s2)
    80006bec:	01013403          	ld	s0,16(sp)
    80006bf0:	01813083          	ld	ra,24(sp)
    80006bf4:	00813483          	ld	s1,8(sp)
    80006bf8:	00013903          	ld	s2,0(sp)
    80006bfc:	00006517          	auipc	a0,0x6
    80006c00:	e1c50513          	addi	a0,a0,-484 # 8000ca18 <cons>
    80006c04:	02010113          	addi	sp,sp,32
    80006c08:	00001317          	auipc	t1,0x1
    80006c0c:	eb030067          	jr	-336(t1) # 80007ab8 <release>
    80006c10:	00a00493          	li	s1,10
    80006c14:	fc1ff06f          	j	80006bd4 <consoleintr+0x50>

0000000080006c18 <consoleinit>:
    80006c18:	fe010113          	addi	sp,sp,-32
    80006c1c:	00113c23          	sd	ra,24(sp)
    80006c20:	00813823          	sd	s0,16(sp)
    80006c24:	00913423          	sd	s1,8(sp)
    80006c28:	02010413          	addi	s0,sp,32
    80006c2c:	00006497          	auipc	s1,0x6
    80006c30:	dec48493          	addi	s1,s1,-532 # 8000ca18 <cons>
    80006c34:	00048513          	mv	a0,s1
    80006c38:	00003597          	auipc	a1,0x3
    80006c3c:	fe058593          	addi	a1,a1,-32 # 80009c18 <_ZTV12ConsumerSync+0x160>
    80006c40:	00001097          	auipc	ra,0x1
    80006c44:	d88080e7          	jalr	-632(ra) # 800079c8 <initlock>
    80006c48:	00000097          	auipc	ra,0x0
    80006c4c:	7ac080e7          	jalr	1964(ra) # 800073f4 <uartinit>
    80006c50:	01813083          	ld	ra,24(sp)
    80006c54:	01013403          	ld	s0,16(sp)
    80006c58:	00000797          	auipc	a5,0x0
    80006c5c:	d9c78793          	addi	a5,a5,-612 # 800069f4 <consoleread>
    80006c60:	0af4bc23          	sd	a5,184(s1)
    80006c64:	00000797          	auipc	a5,0x0
    80006c68:	cec78793          	addi	a5,a5,-788 # 80006950 <consolewrite>
    80006c6c:	0cf4b023          	sd	a5,192(s1)
    80006c70:	00813483          	ld	s1,8(sp)
    80006c74:	02010113          	addi	sp,sp,32
    80006c78:	00008067          	ret

0000000080006c7c <console_read>:
    80006c7c:	ff010113          	addi	sp,sp,-16
    80006c80:	00813423          	sd	s0,8(sp)
    80006c84:	01010413          	addi	s0,sp,16
    80006c88:	00813403          	ld	s0,8(sp)
    80006c8c:	00006317          	auipc	t1,0x6
    80006c90:	e4433303          	ld	t1,-444(t1) # 8000cad0 <devsw+0x10>
    80006c94:	01010113          	addi	sp,sp,16
    80006c98:	00030067          	jr	t1

0000000080006c9c <console_write>:
    80006c9c:	ff010113          	addi	sp,sp,-16
    80006ca0:	00813423          	sd	s0,8(sp)
    80006ca4:	01010413          	addi	s0,sp,16
    80006ca8:	00813403          	ld	s0,8(sp)
    80006cac:	00006317          	auipc	t1,0x6
    80006cb0:	e2c33303          	ld	t1,-468(t1) # 8000cad8 <devsw+0x18>
    80006cb4:	01010113          	addi	sp,sp,16
    80006cb8:	00030067          	jr	t1

0000000080006cbc <panic>:
    80006cbc:	fe010113          	addi	sp,sp,-32
    80006cc0:	00113c23          	sd	ra,24(sp)
    80006cc4:	00813823          	sd	s0,16(sp)
    80006cc8:	00913423          	sd	s1,8(sp)
    80006ccc:	02010413          	addi	s0,sp,32
    80006cd0:	00050493          	mv	s1,a0
    80006cd4:	00003517          	auipc	a0,0x3
    80006cd8:	f4c50513          	addi	a0,a0,-180 # 80009c20 <_ZTV12ConsumerSync+0x168>
    80006cdc:	00006797          	auipc	a5,0x6
    80006ce0:	e807ae23          	sw	zero,-356(a5) # 8000cb78 <pr+0x18>
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	034080e7          	jalr	52(ra) # 80006d18 <__printf>
    80006cec:	00048513          	mv	a0,s1
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	028080e7          	jalr	40(ra) # 80006d18 <__printf>
    80006cf8:	00003517          	auipc	a0,0x3
    80006cfc:	c2850513          	addi	a0,a0,-984 # 80009920 <_ZTV8Consumer+0x298>
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	018080e7          	jalr	24(ra) # 80006d18 <__printf>
    80006d08:	00100793          	li	a5,1
    80006d0c:	00005717          	auipc	a4,0x5
    80006d10:	c0f72223          	sw	a5,-1020(a4) # 8000b910 <panicked>
    80006d14:	0000006f          	j	80006d14 <panic+0x58>

0000000080006d18 <__printf>:
    80006d18:	f3010113          	addi	sp,sp,-208
    80006d1c:	08813023          	sd	s0,128(sp)
    80006d20:	07313423          	sd	s3,104(sp)
    80006d24:	09010413          	addi	s0,sp,144
    80006d28:	05813023          	sd	s8,64(sp)
    80006d2c:	08113423          	sd	ra,136(sp)
    80006d30:	06913c23          	sd	s1,120(sp)
    80006d34:	07213823          	sd	s2,112(sp)
    80006d38:	07413023          	sd	s4,96(sp)
    80006d3c:	05513c23          	sd	s5,88(sp)
    80006d40:	05613823          	sd	s6,80(sp)
    80006d44:	05713423          	sd	s7,72(sp)
    80006d48:	03913c23          	sd	s9,56(sp)
    80006d4c:	03a13823          	sd	s10,48(sp)
    80006d50:	03b13423          	sd	s11,40(sp)
    80006d54:	00006317          	auipc	t1,0x6
    80006d58:	e0c30313          	addi	t1,t1,-500 # 8000cb60 <pr>
    80006d5c:	01832c03          	lw	s8,24(t1)
    80006d60:	00b43423          	sd	a1,8(s0)
    80006d64:	00c43823          	sd	a2,16(s0)
    80006d68:	00d43c23          	sd	a3,24(s0)
    80006d6c:	02e43023          	sd	a4,32(s0)
    80006d70:	02f43423          	sd	a5,40(s0)
    80006d74:	03043823          	sd	a6,48(s0)
    80006d78:	03143c23          	sd	a7,56(s0)
    80006d7c:	00050993          	mv	s3,a0
    80006d80:	4a0c1663          	bnez	s8,8000722c <__printf+0x514>
    80006d84:	60098c63          	beqz	s3,8000739c <__printf+0x684>
    80006d88:	0009c503          	lbu	a0,0(s3)
    80006d8c:	00840793          	addi	a5,s0,8
    80006d90:	f6f43c23          	sd	a5,-136(s0)
    80006d94:	00000493          	li	s1,0
    80006d98:	22050063          	beqz	a0,80006fb8 <__printf+0x2a0>
    80006d9c:	00002a37          	lui	s4,0x2
    80006da0:	00018ab7          	lui	s5,0x18
    80006da4:	000f4b37          	lui	s6,0xf4
    80006da8:	00989bb7          	lui	s7,0x989
    80006dac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006db0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006db4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006db8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006dbc:	00148c9b          	addiw	s9,s1,1
    80006dc0:	02500793          	li	a5,37
    80006dc4:	01998933          	add	s2,s3,s9
    80006dc8:	38f51263          	bne	a0,a5,8000714c <__printf+0x434>
    80006dcc:	00094783          	lbu	a5,0(s2)
    80006dd0:	00078c9b          	sext.w	s9,a5
    80006dd4:	1e078263          	beqz	a5,80006fb8 <__printf+0x2a0>
    80006dd8:	0024849b          	addiw	s1,s1,2
    80006ddc:	07000713          	li	a4,112
    80006de0:	00998933          	add	s2,s3,s1
    80006de4:	38e78a63          	beq	a5,a4,80007178 <__printf+0x460>
    80006de8:	20f76863          	bltu	a4,a5,80006ff8 <__printf+0x2e0>
    80006dec:	42a78863          	beq	a5,a0,8000721c <__printf+0x504>
    80006df0:	06400713          	li	a4,100
    80006df4:	40e79663          	bne	a5,a4,80007200 <__printf+0x4e8>
    80006df8:	f7843783          	ld	a5,-136(s0)
    80006dfc:	0007a603          	lw	a2,0(a5)
    80006e00:	00878793          	addi	a5,a5,8
    80006e04:	f6f43c23          	sd	a5,-136(s0)
    80006e08:	42064a63          	bltz	a2,8000723c <__printf+0x524>
    80006e0c:	00a00713          	li	a4,10
    80006e10:	02e677bb          	remuw	a5,a2,a4
    80006e14:	00003d97          	auipc	s11,0x3
    80006e18:	e34d8d93          	addi	s11,s11,-460 # 80009c48 <digits>
    80006e1c:	00900593          	li	a1,9
    80006e20:	0006051b          	sext.w	a0,a2
    80006e24:	00000c93          	li	s9,0
    80006e28:	02079793          	slli	a5,a5,0x20
    80006e2c:	0207d793          	srli	a5,a5,0x20
    80006e30:	00fd87b3          	add	a5,s11,a5
    80006e34:	0007c783          	lbu	a5,0(a5)
    80006e38:	02e656bb          	divuw	a3,a2,a4
    80006e3c:	f8f40023          	sb	a5,-128(s0)
    80006e40:	14c5d863          	bge	a1,a2,80006f90 <__printf+0x278>
    80006e44:	06300593          	li	a1,99
    80006e48:	00100c93          	li	s9,1
    80006e4c:	02e6f7bb          	remuw	a5,a3,a4
    80006e50:	02079793          	slli	a5,a5,0x20
    80006e54:	0207d793          	srli	a5,a5,0x20
    80006e58:	00fd87b3          	add	a5,s11,a5
    80006e5c:	0007c783          	lbu	a5,0(a5)
    80006e60:	02e6d73b          	divuw	a4,a3,a4
    80006e64:	f8f400a3          	sb	a5,-127(s0)
    80006e68:	12a5f463          	bgeu	a1,a0,80006f90 <__printf+0x278>
    80006e6c:	00a00693          	li	a3,10
    80006e70:	00900593          	li	a1,9
    80006e74:	02d777bb          	remuw	a5,a4,a3
    80006e78:	02079793          	slli	a5,a5,0x20
    80006e7c:	0207d793          	srli	a5,a5,0x20
    80006e80:	00fd87b3          	add	a5,s11,a5
    80006e84:	0007c503          	lbu	a0,0(a5)
    80006e88:	02d757bb          	divuw	a5,a4,a3
    80006e8c:	f8a40123          	sb	a0,-126(s0)
    80006e90:	48e5f263          	bgeu	a1,a4,80007314 <__printf+0x5fc>
    80006e94:	06300513          	li	a0,99
    80006e98:	02d7f5bb          	remuw	a1,a5,a3
    80006e9c:	02059593          	slli	a1,a1,0x20
    80006ea0:	0205d593          	srli	a1,a1,0x20
    80006ea4:	00bd85b3          	add	a1,s11,a1
    80006ea8:	0005c583          	lbu	a1,0(a1)
    80006eac:	02d7d7bb          	divuw	a5,a5,a3
    80006eb0:	f8b401a3          	sb	a1,-125(s0)
    80006eb4:	48e57263          	bgeu	a0,a4,80007338 <__printf+0x620>
    80006eb8:	3e700513          	li	a0,999
    80006ebc:	02d7f5bb          	remuw	a1,a5,a3
    80006ec0:	02059593          	slli	a1,a1,0x20
    80006ec4:	0205d593          	srli	a1,a1,0x20
    80006ec8:	00bd85b3          	add	a1,s11,a1
    80006ecc:	0005c583          	lbu	a1,0(a1)
    80006ed0:	02d7d7bb          	divuw	a5,a5,a3
    80006ed4:	f8b40223          	sb	a1,-124(s0)
    80006ed8:	46e57663          	bgeu	a0,a4,80007344 <__printf+0x62c>
    80006edc:	02d7f5bb          	remuw	a1,a5,a3
    80006ee0:	02059593          	slli	a1,a1,0x20
    80006ee4:	0205d593          	srli	a1,a1,0x20
    80006ee8:	00bd85b3          	add	a1,s11,a1
    80006eec:	0005c583          	lbu	a1,0(a1)
    80006ef0:	02d7d7bb          	divuw	a5,a5,a3
    80006ef4:	f8b402a3          	sb	a1,-123(s0)
    80006ef8:	46ea7863          	bgeu	s4,a4,80007368 <__printf+0x650>
    80006efc:	02d7f5bb          	remuw	a1,a5,a3
    80006f00:	02059593          	slli	a1,a1,0x20
    80006f04:	0205d593          	srli	a1,a1,0x20
    80006f08:	00bd85b3          	add	a1,s11,a1
    80006f0c:	0005c583          	lbu	a1,0(a1)
    80006f10:	02d7d7bb          	divuw	a5,a5,a3
    80006f14:	f8b40323          	sb	a1,-122(s0)
    80006f18:	3eeaf863          	bgeu	s5,a4,80007308 <__printf+0x5f0>
    80006f1c:	02d7f5bb          	remuw	a1,a5,a3
    80006f20:	02059593          	slli	a1,a1,0x20
    80006f24:	0205d593          	srli	a1,a1,0x20
    80006f28:	00bd85b3          	add	a1,s11,a1
    80006f2c:	0005c583          	lbu	a1,0(a1)
    80006f30:	02d7d7bb          	divuw	a5,a5,a3
    80006f34:	f8b403a3          	sb	a1,-121(s0)
    80006f38:	42eb7e63          	bgeu	s6,a4,80007374 <__printf+0x65c>
    80006f3c:	02d7f5bb          	remuw	a1,a5,a3
    80006f40:	02059593          	slli	a1,a1,0x20
    80006f44:	0205d593          	srli	a1,a1,0x20
    80006f48:	00bd85b3          	add	a1,s11,a1
    80006f4c:	0005c583          	lbu	a1,0(a1)
    80006f50:	02d7d7bb          	divuw	a5,a5,a3
    80006f54:	f8b40423          	sb	a1,-120(s0)
    80006f58:	42ebfc63          	bgeu	s7,a4,80007390 <__printf+0x678>
    80006f5c:	02079793          	slli	a5,a5,0x20
    80006f60:	0207d793          	srli	a5,a5,0x20
    80006f64:	00fd8db3          	add	s11,s11,a5
    80006f68:	000dc703          	lbu	a4,0(s11)
    80006f6c:	00a00793          	li	a5,10
    80006f70:	00900c93          	li	s9,9
    80006f74:	f8e404a3          	sb	a4,-119(s0)
    80006f78:	00065c63          	bgez	a2,80006f90 <__printf+0x278>
    80006f7c:	f9040713          	addi	a4,s0,-112
    80006f80:	00f70733          	add	a4,a4,a5
    80006f84:	02d00693          	li	a3,45
    80006f88:	fed70823          	sb	a3,-16(a4)
    80006f8c:	00078c93          	mv	s9,a5
    80006f90:	f8040793          	addi	a5,s0,-128
    80006f94:	01978cb3          	add	s9,a5,s9
    80006f98:	f7f40d13          	addi	s10,s0,-129
    80006f9c:	000cc503          	lbu	a0,0(s9)
    80006fa0:	fffc8c93          	addi	s9,s9,-1
    80006fa4:	00000097          	auipc	ra,0x0
    80006fa8:	b90080e7          	jalr	-1136(ra) # 80006b34 <consputc>
    80006fac:	ffac98e3          	bne	s9,s10,80006f9c <__printf+0x284>
    80006fb0:	00094503          	lbu	a0,0(s2)
    80006fb4:	e00514e3          	bnez	a0,80006dbc <__printf+0xa4>
    80006fb8:	1a0c1663          	bnez	s8,80007164 <__printf+0x44c>
    80006fbc:	08813083          	ld	ra,136(sp)
    80006fc0:	08013403          	ld	s0,128(sp)
    80006fc4:	07813483          	ld	s1,120(sp)
    80006fc8:	07013903          	ld	s2,112(sp)
    80006fcc:	06813983          	ld	s3,104(sp)
    80006fd0:	06013a03          	ld	s4,96(sp)
    80006fd4:	05813a83          	ld	s5,88(sp)
    80006fd8:	05013b03          	ld	s6,80(sp)
    80006fdc:	04813b83          	ld	s7,72(sp)
    80006fe0:	04013c03          	ld	s8,64(sp)
    80006fe4:	03813c83          	ld	s9,56(sp)
    80006fe8:	03013d03          	ld	s10,48(sp)
    80006fec:	02813d83          	ld	s11,40(sp)
    80006ff0:	0d010113          	addi	sp,sp,208
    80006ff4:	00008067          	ret
    80006ff8:	07300713          	li	a4,115
    80006ffc:	1ce78a63          	beq	a5,a4,800071d0 <__printf+0x4b8>
    80007000:	07800713          	li	a4,120
    80007004:	1ee79e63          	bne	a5,a4,80007200 <__printf+0x4e8>
    80007008:	f7843783          	ld	a5,-136(s0)
    8000700c:	0007a703          	lw	a4,0(a5)
    80007010:	00878793          	addi	a5,a5,8
    80007014:	f6f43c23          	sd	a5,-136(s0)
    80007018:	28074263          	bltz	a4,8000729c <__printf+0x584>
    8000701c:	00003d97          	auipc	s11,0x3
    80007020:	c2cd8d93          	addi	s11,s11,-980 # 80009c48 <digits>
    80007024:	00f77793          	andi	a5,a4,15
    80007028:	00fd87b3          	add	a5,s11,a5
    8000702c:	0007c683          	lbu	a3,0(a5)
    80007030:	00f00613          	li	a2,15
    80007034:	0007079b          	sext.w	a5,a4
    80007038:	f8d40023          	sb	a3,-128(s0)
    8000703c:	0047559b          	srliw	a1,a4,0x4
    80007040:	0047569b          	srliw	a3,a4,0x4
    80007044:	00000c93          	li	s9,0
    80007048:	0ee65063          	bge	a2,a4,80007128 <__printf+0x410>
    8000704c:	00f6f693          	andi	a3,a3,15
    80007050:	00dd86b3          	add	a3,s11,a3
    80007054:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007058:	0087d79b          	srliw	a5,a5,0x8
    8000705c:	00100c93          	li	s9,1
    80007060:	f8d400a3          	sb	a3,-127(s0)
    80007064:	0cb67263          	bgeu	a2,a1,80007128 <__printf+0x410>
    80007068:	00f7f693          	andi	a3,a5,15
    8000706c:	00dd86b3          	add	a3,s11,a3
    80007070:	0006c583          	lbu	a1,0(a3)
    80007074:	00f00613          	li	a2,15
    80007078:	0047d69b          	srliw	a3,a5,0x4
    8000707c:	f8b40123          	sb	a1,-126(s0)
    80007080:	0047d593          	srli	a1,a5,0x4
    80007084:	28f67e63          	bgeu	a2,a5,80007320 <__printf+0x608>
    80007088:	00f6f693          	andi	a3,a3,15
    8000708c:	00dd86b3          	add	a3,s11,a3
    80007090:	0006c503          	lbu	a0,0(a3)
    80007094:	0087d813          	srli	a6,a5,0x8
    80007098:	0087d69b          	srliw	a3,a5,0x8
    8000709c:	f8a401a3          	sb	a0,-125(s0)
    800070a0:	28b67663          	bgeu	a2,a1,8000732c <__printf+0x614>
    800070a4:	00f6f693          	andi	a3,a3,15
    800070a8:	00dd86b3          	add	a3,s11,a3
    800070ac:	0006c583          	lbu	a1,0(a3)
    800070b0:	00c7d513          	srli	a0,a5,0xc
    800070b4:	00c7d69b          	srliw	a3,a5,0xc
    800070b8:	f8b40223          	sb	a1,-124(s0)
    800070bc:	29067a63          	bgeu	a2,a6,80007350 <__printf+0x638>
    800070c0:	00f6f693          	andi	a3,a3,15
    800070c4:	00dd86b3          	add	a3,s11,a3
    800070c8:	0006c583          	lbu	a1,0(a3)
    800070cc:	0107d813          	srli	a6,a5,0x10
    800070d0:	0107d69b          	srliw	a3,a5,0x10
    800070d4:	f8b402a3          	sb	a1,-123(s0)
    800070d8:	28a67263          	bgeu	a2,a0,8000735c <__printf+0x644>
    800070dc:	00f6f693          	andi	a3,a3,15
    800070e0:	00dd86b3          	add	a3,s11,a3
    800070e4:	0006c683          	lbu	a3,0(a3)
    800070e8:	0147d79b          	srliw	a5,a5,0x14
    800070ec:	f8d40323          	sb	a3,-122(s0)
    800070f0:	21067663          	bgeu	a2,a6,800072fc <__printf+0x5e4>
    800070f4:	02079793          	slli	a5,a5,0x20
    800070f8:	0207d793          	srli	a5,a5,0x20
    800070fc:	00fd8db3          	add	s11,s11,a5
    80007100:	000dc683          	lbu	a3,0(s11)
    80007104:	00800793          	li	a5,8
    80007108:	00700c93          	li	s9,7
    8000710c:	f8d403a3          	sb	a3,-121(s0)
    80007110:	00075c63          	bgez	a4,80007128 <__printf+0x410>
    80007114:	f9040713          	addi	a4,s0,-112
    80007118:	00f70733          	add	a4,a4,a5
    8000711c:	02d00693          	li	a3,45
    80007120:	fed70823          	sb	a3,-16(a4)
    80007124:	00078c93          	mv	s9,a5
    80007128:	f8040793          	addi	a5,s0,-128
    8000712c:	01978cb3          	add	s9,a5,s9
    80007130:	f7f40d13          	addi	s10,s0,-129
    80007134:	000cc503          	lbu	a0,0(s9)
    80007138:	fffc8c93          	addi	s9,s9,-1
    8000713c:	00000097          	auipc	ra,0x0
    80007140:	9f8080e7          	jalr	-1544(ra) # 80006b34 <consputc>
    80007144:	ff9d18e3          	bne	s10,s9,80007134 <__printf+0x41c>
    80007148:	0100006f          	j	80007158 <__printf+0x440>
    8000714c:	00000097          	auipc	ra,0x0
    80007150:	9e8080e7          	jalr	-1560(ra) # 80006b34 <consputc>
    80007154:	000c8493          	mv	s1,s9
    80007158:	00094503          	lbu	a0,0(s2)
    8000715c:	c60510e3          	bnez	a0,80006dbc <__printf+0xa4>
    80007160:	e40c0ee3          	beqz	s8,80006fbc <__printf+0x2a4>
    80007164:	00006517          	auipc	a0,0x6
    80007168:	9fc50513          	addi	a0,a0,-1540 # 8000cb60 <pr>
    8000716c:	00001097          	auipc	ra,0x1
    80007170:	94c080e7          	jalr	-1716(ra) # 80007ab8 <release>
    80007174:	e49ff06f          	j	80006fbc <__printf+0x2a4>
    80007178:	f7843783          	ld	a5,-136(s0)
    8000717c:	03000513          	li	a0,48
    80007180:	01000d13          	li	s10,16
    80007184:	00878713          	addi	a4,a5,8
    80007188:	0007bc83          	ld	s9,0(a5)
    8000718c:	f6e43c23          	sd	a4,-136(s0)
    80007190:	00000097          	auipc	ra,0x0
    80007194:	9a4080e7          	jalr	-1628(ra) # 80006b34 <consputc>
    80007198:	07800513          	li	a0,120
    8000719c:	00000097          	auipc	ra,0x0
    800071a0:	998080e7          	jalr	-1640(ra) # 80006b34 <consputc>
    800071a4:	00003d97          	auipc	s11,0x3
    800071a8:	aa4d8d93          	addi	s11,s11,-1372 # 80009c48 <digits>
    800071ac:	03ccd793          	srli	a5,s9,0x3c
    800071b0:	00fd87b3          	add	a5,s11,a5
    800071b4:	0007c503          	lbu	a0,0(a5)
    800071b8:	fffd0d1b          	addiw	s10,s10,-1
    800071bc:	004c9c93          	slli	s9,s9,0x4
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	974080e7          	jalr	-1676(ra) # 80006b34 <consputc>
    800071c8:	fe0d12e3          	bnez	s10,800071ac <__printf+0x494>
    800071cc:	f8dff06f          	j	80007158 <__printf+0x440>
    800071d0:	f7843783          	ld	a5,-136(s0)
    800071d4:	0007bc83          	ld	s9,0(a5)
    800071d8:	00878793          	addi	a5,a5,8
    800071dc:	f6f43c23          	sd	a5,-136(s0)
    800071e0:	000c9a63          	bnez	s9,800071f4 <__printf+0x4dc>
    800071e4:	1080006f          	j	800072ec <__printf+0x5d4>
    800071e8:	001c8c93          	addi	s9,s9,1
    800071ec:	00000097          	auipc	ra,0x0
    800071f0:	948080e7          	jalr	-1720(ra) # 80006b34 <consputc>
    800071f4:	000cc503          	lbu	a0,0(s9)
    800071f8:	fe0518e3          	bnez	a0,800071e8 <__printf+0x4d0>
    800071fc:	f5dff06f          	j	80007158 <__printf+0x440>
    80007200:	02500513          	li	a0,37
    80007204:	00000097          	auipc	ra,0x0
    80007208:	930080e7          	jalr	-1744(ra) # 80006b34 <consputc>
    8000720c:	000c8513          	mv	a0,s9
    80007210:	00000097          	auipc	ra,0x0
    80007214:	924080e7          	jalr	-1756(ra) # 80006b34 <consputc>
    80007218:	f41ff06f          	j	80007158 <__printf+0x440>
    8000721c:	02500513          	li	a0,37
    80007220:	00000097          	auipc	ra,0x0
    80007224:	914080e7          	jalr	-1772(ra) # 80006b34 <consputc>
    80007228:	f31ff06f          	j	80007158 <__printf+0x440>
    8000722c:	00030513          	mv	a0,t1
    80007230:	00000097          	auipc	ra,0x0
    80007234:	7bc080e7          	jalr	1980(ra) # 800079ec <acquire>
    80007238:	b4dff06f          	j	80006d84 <__printf+0x6c>
    8000723c:	40c0053b          	negw	a0,a2
    80007240:	00a00713          	li	a4,10
    80007244:	02e576bb          	remuw	a3,a0,a4
    80007248:	00003d97          	auipc	s11,0x3
    8000724c:	a00d8d93          	addi	s11,s11,-1536 # 80009c48 <digits>
    80007250:	ff700593          	li	a1,-9
    80007254:	02069693          	slli	a3,a3,0x20
    80007258:	0206d693          	srli	a3,a3,0x20
    8000725c:	00dd86b3          	add	a3,s11,a3
    80007260:	0006c683          	lbu	a3,0(a3)
    80007264:	02e557bb          	divuw	a5,a0,a4
    80007268:	f8d40023          	sb	a3,-128(s0)
    8000726c:	10b65e63          	bge	a2,a1,80007388 <__printf+0x670>
    80007270:	06300593          	li	a1,99
    80007274:	02e7f6bb          	remuw	a3,a5,a4
    80007278:	02069693          	slli	a3,a3,0x20
    8000727c:	0206d693          	srli	a3,a3,0x20
    80007280:	00dd86b3          	add	a3,s11,a3
    80007284:	0006c683          	lbu	a3,0(a3)
    80007288:	02e7d73b          	divuw	a4,a5,a4
    8000728c:	00200793          	li	a5,2
    80007290:	f8d400a3          	sb	a3,-127(s0)
    80007294:	bca5ece3          	bltu	a1,a0,80006e6c <__printf+0x154>
    80007298:	ce5ff06f          	j	80006f7c <__printf+0x264>
    8000729c:	40e007bb          	negw	a5,a4
    800072a0:	00003d97          	auipc	s11,0x3
    800072a4:	9a8d8d93          	addi	s11,s11,-1624 # 80009c48 <digits>
    800072a8:	00f7f693          	andi	a3,a5,15
    800072ac:	00dd86b3          	add	a3,s11,a3
    800072b0:	0006c583          	lbu	a1,0(a3)
    800072b4:	ff100613          	li	a2,-15
    800072b8:	0047d69b          	srliw	a3,a5,0x4
    800072bc:	f8b40023          	sb	a1,-128(s0)
    800072c0:	0047d59b          	srliw	a1,a5,0x4
    800072c4:	0ac75e63          	bge	a4,a2,80007380 <__printf+0x668>
    800072c8:	00f6f693          	andi	a3,a3,15
    800072cc:	00dd86b3          	add	a3,s11,a3
    800072d0:	0006c603          	lbu	a2,0(a3)
    800072d4:	00f00693          	li	a3,15
    800072d8:	0087d79b          	srliw	a5,a5,0x8
    800072dc:	f8c400a3          	sb	a2,-127(s0)
    800072e0:	d8b6e4e3          	bltu	a3,a1,80007068 <__printf+0x350>
    800072e4:	00200793          	li	a5,2
    800072e8:	e2dff06f          	j	80007114 <__printf+0x3fc>
    800072ec:	00003c97          	auipc	s9,0x3
    800072f0:	93cc8c93          	addi	s9,s9,-1732 # 80009c28 <_ZTV12ConsumerSync+0x170>
    800072f4:	02800513          	li	a0,40
    800072f8:	ef1ff06f          	j	800071e8 <__printf+0x4d0>
    800072fc:	00700793          	li	a5,7
    80007300:	00600c93          	li	s9,6
    80007304:	e0dff06f          	j	80007110 <__printf+0x3f8>
    80007308:	00700793          	li	a5,7
    8000730c:	00600c93          	li	s9,6
    80007310:	c69ff06f          	j	80006f78 <__printf+0x260>
    80007314:	00300793          	li	a5,3
    80007318:	00200c93          	li	s9,2
    8000731c:	c5dff06f          	j	80006f78 <__printf+0x260>
    80007320:	00300793          	li	a5,3
    80007324:	00200c93          	li	s9,2
    80007328:	de9ff06f          	j	80007110 <__printf+0x3f8>
    8000732c:	00400793          	li	a5,4
    80007330:	00300c93          	li	s9,3
    80007334:	dddff06f          	j	80007110 <__printf+0x3f8>
    80007338:	00400793          	li	a5,4
    8000733c:	00300c93          	li	s9,3
    80007340:	c39ff06f          	j	80006f78 <__printf+0x260>
    80007344:	00500793          	li	a5,5
    80007348:	00400c93          	li	s9,4
    8000734c:	c2dff06f          	j	80006f78 <__printf+0x260>
    80007350:	00500793          	li	a5,5
    80007354:	00400c93          	li	s9,4
    80007358:	db9ff06f          	j	80007110 <__printf+0x3f8>
    8000735c:	00600793          	li	a5,6
    80007360:	00500c93          	li	s9,5
    80007364:	dadff06f          	j	80007110 <__printf+0x3f8>
    80007368:	00600793          	li	a5,6
    8000736c:	00500c93          	li	s9,5
    80007370:	c09ff06f          	j	80006f78 <__printf+0x260>
    80007374:	00800793          	li	a5,8
    80007378:	00700c93          	li	s9,7
    8000737c:	bfdff06f          	j	80006f78 <__printf+0x260>
    80007380:	00100793          	li	a5,1
    80007384:	d91ff06f          	j	80007114 <__printf+0x3fc>
    80007388:	00100793          	li	a5,1
    8000738c:	bf1ff06f          	j	80006f7c <__printf+0x264>
    80007390:	00900793          	li	a5,9
    80007394:	00800c93          	li	s9,8
    80007398:	be1ff06f          	j	80006f78 <__printf+0x260>
    8000739c:	00003517          	auipc	a0,0x3
    800073a0:	89450513          	addi	a0,a0,-1900 # 80009c30 <_ZTV12ConsumerSync+0x178>
    800073a4:	00000097          	auipc	ra,0x0
    800073a8:	918080e7          	jalr	-1768(ra) # 80006cbc <panic>

00000000800073ac <printfinit>:
    800073ac:	fe010113          	addi	sp,sp,-32
    800073b0:	00813823          	sd	s0,16(sp)
    800073b4:	00913423          	sd	s1,8(sp)
    800073b8:	00113c23          	sd	ra,24(sp)
    800073bc:	02010413          	addi	s0,sp,32
    800073c0:	00005497          	auipc	s1,0x5
    800073c4:	7a048493          	addi	s1,s1,1952 # 8000cb60 <pr>
    800073c8:	00048513          	mv	a0,s1
    800073cc:	00003597          	auipc	a1,0x3
    800073d0:	87458593          	addi	a1,a1,-1932 # 80009c40 <_ZTV12ConsumerSync+0x188>
    800073d4:	00000097          	auipc	ra,0x0
    800073d8:	5f4080e7          	jalr	1524(ra) # 800079c8 <initlock>
    800073dc:	01813083          	ld	ra,24(sp)
    800073e0:	01013403          	ld	s0,16(sp)
    800073e4:	0004ac23          	sw	zero,24(s1)
    800073e8:	00813483          	ld	s1,8(sp)
    800073ec:	02010113          	addi	sp,sp,32
    800073f0:	00008067          	ret

00000000800073f4 <uartinit>:
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00813423          	sd	s0,8(sp)
    800073fc:	01010413          	addi	s0,sp,16
    80007400:	100007b7          	lui	a5,0x10000
    80007404:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007408:	f8000713          	li	a4,-128
    8000740c:	00e781a3          	sb	a4,3(a5)
    80007410:	00300713          	li	a4,3
    80007414:	00e78023          	sb	a4,0(a5)
    80007418:	000780a3          	sb	zero,1(a5)
    8000741c:	00e781a3          	sb	a4,3(a5)
    80007420:	00700693          	li	a3,7
    80007424:	00d78123          	sb	a3,2(a5)
    80007428:	00e780a3          	sb	a4,1(a5)
    8000742c:	00813403          	ld	s0,8(sp)
    80007430:	01010113          	addi	sp,sp,16
    80007434:	00008067          	ret

0000000080007438 <uartputc>:
    80007438:	00004797          	auipc	a5,0x4
    8000743c:	4d87a783          	lw	a5,1240(a5) # 8000b910 <panicked>
    80007440:	00078463          	beqz	a5,80007448 <uartputc+0x10>
    80007444:	0000006f          	j	80007444 <uartputc+0xc>
    80007448:	fd010113          	addi	sp,sp,-48
    8000744c:	02813023          	sd	s0,32(sp)
    80007450:	00913c23          	sd	s1,24(sp)
    80007454:	01213823          	sd	s2,16(sp)
    80007458:	01313423          	sd	s3,8(sp)
    8000745c:	02113423          	sd	ra,40(sp)
    80007460:	03010413          	addi	s0,sp,48
    80007464:	00004917          	auipc	s2,0x4
    80007468:	4b490913          	addi	s2,s2,1204 # 8000b918 <uart_tx_r>
    8000746c:	00093783          	ld	a5,0(s2)
    80007470:	00004497          	auipc	s1,0x4
    80007474:	4b048493          	addi	s1,s1,1200 # 8000b920 <uart_tx_w>
    80007478:	0004b703          	ld	a4,0(s1)
    8000747c:	02078693          	addi	a3,a5,32
    80007480:	00050993          	mv	s3,a0
    80007484:	02e69c63          	bne	a3,a4,800074bc <uartputc+0x84>
    80007488:	00001097          	auipc	ra,0x1
    8000748c:	834080e7          	jalr	-1996(ra) # 80007cbc <push_on>
    80007490:	00093783          	ld	a5,0(s2)
    80007494:	0004b703          	ld	a4,0(s1)
    80007498:	02078793          	addi	a5,a5,32
    8000749c:	00e79463          	bne	a5,a4,800074a4 <uartputc+0x6c>
    800074a0:	0000006f          	j	800074a0 <uartputc+0x68>
    800074a4:	00001097          	auipc	ra,0x1
    800074a8:	88c080e7          	jalr	-1908(ra) # 80007d30 <pop_on>
    800074ac:	00093783          	ld	a5,0(s2)
    800074b0:	0004b703          	ld	a4,0(s1)
    800074b4:	02078693          	addi	a3,a5,32
    800074b8:	fce688e3          	beq	a3,a4,80007488 <uartputc+0x50>
    800074bc:	01f77693          	andi	a3,a4,31
    800074c0:	00005597          	auipc	a1,0x5
    800074c4:	6c058593          	addi	a1,a1,1728 # 8000cb80 <uart_tx_buf>
    800074c8:	00d586b3          	add	a3,a1,a3
    800074cc:	00170713          	addi	a4,a4,1
    800074d0:	01368023          	sb	s3,0(a3)
    800074d4:	00e4b023          	sd	a4,0(s1)
    800074d8:	10000637          	lui	a2,0x10000
    800074dc:	02f71063          	bne	a4,a5,800074fc <uartputc+0xc4>
    800074e0:	0340006f          	j	80007514 <uartputc+0xdc>
    800074e4:	00074703          	lbu	a4,0(a4)
    800074e8:	00f93023          	sd	a5,0(s2)
    800074ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800074f0:	00093783          	ld	a5,0(s2)
    800074f4:	0004b703          	ld	a4,0(s1)
    800074f8:	00f70e63          	beq	a4,a5,80007514 <uartputc+0xdc>
    800074fc:	00564683          	lbu	a3,5(a2)
    80007500:	01f7f713          	andi	a4,a5,31
    80007504:	00e58733          	add	a4,a1,a4
    80007508:	0206f693          	andi	a3,a3,32
    8000750c:	00178793          	addi	a5,a5,1
    80007510:	fc069ae3          	bnez	a3,800074e4 <uartputc+0xac>
    80007514:	02813083          	ld	ra,40(sp)
    80007518:	02013403          	ld	s0,32(sp)
    8000751c:	01813483          	ld	s1,24(sp)
    80007520:	01013903          	ld	s2,16(sp)
    80007524:	00813983          	ld	s3,8(sp)
    80007528:	03010113          	addi	sp,sp,48
    8000752c:	00008067          	ret

0000000080007530 <uartputc_sync>:
    80007530:	ff010113          	addi	sp,sp,-16
    80007534:	00813423          	sd	s0,8(sp)
    80007538:	01010413          	addi	s0,sp,16
    8000753c:	00004717          	auipc	a4,0x4
    80007540:	3d472703          	lw	a4,980(a4) # 8000b910 <panicked>
    80007544:	02071663          	bnez	a4,80007570 <uartputc_sync+0x40>
    80007548:	00050793          	mv	a5,a0
    8000754c:	100006b7          	lui	a3,0x10000
    80007550:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007554:	02077713          	andi	a4,a4,32
    80007558:	fe070ce3          	beqz	a4,80007550 <uartputc_sync+0x20>
    8000755c:	0ff7f793          	andi	a5,a5,255
    80007560:	00f68023          	sb	a5,0(a3)
    80007564:	00813403          	ld	s0,8(sp)
    80007568:	01010113          	addi	sp,sp,16
    8000756c:	00008067          	ret
    80007570:	0000006f          	j	80007570 <uartputc_sync+0x40>

0000000080007574 <uartstart>:
    80007574:	ff010113          	addi	sp,sp,-16
    80007578:	00813423          	sd	s0,8(sp)
    8000757c:	01010413          	addi	s0,sp,16
    80007580:	00004617          	auipc	a2,0x4
    80007584:	39860613          	addi	a2,a2,920 # 8000b918 <uart_tx_r>
    80007588:	00004517          	auipc	a0,0x4
    8000758c:	39850513          	addi	a0,a0,920 # 8000b920 <uart_tx_w>
    80007590:	00063783          	ld	a5,0(a2)
    80007594:	00053703          	ld	a4,0(a0)
    80007598:	04f70263          	beq	a4,a5,800075dc <uartstart+0x68>
    8000759c:	100005b7          	lui	a1,0x10000
    800075a0:	00005817          	auipc	a6,0x5
    800075a4:	5e080813          	addi	a6,a6,1504 # 8000cb80 <uart_tx_buf>
    800075a8:	01c0006f          	j	800075c4 <uartstart+0x50>
    800075ac:	0006c703          	lbu	a4,0(a3)
    800075b0:	00f63023          	sd	a5,0(a2)
    800075b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075b8:	00063783          	ld	a5,0(a2)
    800075bc:	00053703          	ld	a4,0(a0)
    800075c0:	00f70e63          	beq	a4,a5,800075dc <uartstart+0x68>
    800075c4:	01f7f713          	andi	a4,a5,31
    800075c8:	00e806b3          	add	a3,a6,a4
    800075cc:	0055c703          	lbu	a4,5(a1)
    800075d0:	00178793          	addi	a5,a5,1
    800075d4:	02077713          	andi	a4,a4,32
    800075d8:	fc071ae3          	bnez	a4,800075ac <uartstart+0x38>
    800075dc:	00813403          	ld	s0,8(sp)
    800075e0:	01010113          	addi	sp,sp,16
    800075e4:	00008067          	ret

00000000800075e8 <uartgetc>:
    800075e8:	ff010113          	addi	sp,sp,-16
    800075ec:	00813423          	sd	s0,8(sp)
    800075f0:	01010413          	addi	s0,sp,16
    800075f4:	10000737          	lui	a4,0x10000
    800075f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800075fc:	0017f793          	andi	a5,a5,1
    80007600:	00078c63          	beqz	a5,80007618 <uartgetc+0x30>
    80007604:	00074503          	lbu	a0,0(a4)
    80007608:	0ff57513          	andi	a0,a0,255
    8000760c:	00813403          	ld	s0,8(sp)
    80007610:	01010113          	addi	sp,sp,16
    80007614:	00008067          	ret
    80007618:	fff00513          	li	a0,-1
    8000761c:	ff1ff06f          	j	8000760c <uartgetc+0x24>

0000000080007620 <uartintr>:
    80007620:	100007b7          	lui	a5,0x10000
    80007624:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007628:	0017f793          	andi	a5,a5,1
    8000762c:	0a078463          	beqz	a5,800076d4 <uartintr+0xb4>
    80007630:	fe010113          	addi	sp,sp,-32
    80007634:	00813823          	sd	s0,16(sp)
    80007638:	00913423          	sd	s1,8(sp)
    8000763c:	00113c23          	sd	ra,24(sp)
    80007640:	02010413          	addi	s0,sp,32
    80007644:	100004b7          	lui	s1,0x10000
    80007648:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000764c:	0ff57513          	andi	a0,a0,255
    80007650:	fffff097          	auipc	ra,0xfffff
    80007654:	534080e7          	jalr	1332(ra) # 80006b84 <consoleintr>
    80007658:	0054c783          	lbu	a5,5(s1)
    8000765c:	0017f793          	andi	a5,a5,1
    80007660:	fe0794e3          	bnez	a5,80007648 <uartintr+0x28>
    80007664:	00004617          	auipc	a2,0x4
    80007668:	2b460613          	addi	a2,a2,692 # 8000b918 <uart_tx_r>
    8000766c:	00004517          	auipc	a0,0x4
    80007670:	2b450513          	addi	a0,a0,692 # 8000b920 <uart_tx_w>
    80007674:	00063783          	ld	a5,0(a2)
    80007678:	00053703          	ld	a4,0(a0)
    8000767c:	04f70263          	beq	a4,a5,800076c0 <uartintr+0xa0>
    80007680:	100005b7          	lui	a1,0x10000
    80007684:	00005817          	auipc	a6,0x5
    80007688:	4fc80813          	addi	a6,a6,1276 # 8000cb80 <uart_tx_buf>
    8000768c:	01c0006f          	j	800076a8 <uartintr+0x88>
    80007690:	0006c703          	lbu	a4,0(a3)
    80007694:	00f63023          	sd	a5,0(a2)
    80007698:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000769c:	00063783          	ld	a5,0(a2)
    800076a0:	00053703          	ld	a4,0(a0)
    800076a4:	00f70e63          	beq	a4,a5,800076c0 <uartintr+0xa0>
    800076a8:	01f7f713          	andi	a4,a5,31
    800076ac:	00e806b3          	add	a3,a6,a4
    800076b0:	0055c703          	lbu	a4,5(a1)
    800076b4:	00178793          	addi	a5,a5,1
    800076b8:	02077713          	andi	a4,a4,32
    800076bc:	fc071ae3          	bnez	a4,80007690 <uartintr+0x70>
    800076c0:	01813083          	ld	ra,24(sp)
    800076c4:	01013403          	ld	s0,16(sp)
    800076c8:	00813483          	ld	s1,8(sp)
    800076cc:	02010113          	addi	sp,sp,32
    800076d0:	00008067          	ret
    800076d4:	00004617          	auipc	a2,0x4
    800076d8:	24460613          	addi	a2,a2,580 # 8000b918 <uart_tx_r>
    800076dc:	00004517          	auipc	a0,0x4
    800076e0:	24450513          	addi	a0,a0,580 # 8000b920 <uart_tx_w>
    800076e4:	00063783          	ld	a5,0(a2)
    800076e8:	00053703          	ld	a4,0(a0)
    800076ec:	04f70263          	beq	a4,a5,80007730 <uartintr+0x110>
    800076f0:	100005b7          	lui	a1,0x10000
    800076f4:	00005817          	auipc	a6,0x5
    800076f8:	48c80813          	addi	a6,a6,1164 # 8000cb80 <uart_tx_buf>
    800076fc:	01c0006f          	j	80007718 <uartintr+0xf8>
    80007700:	0006c703          	lbu	a4,0(a3)
    80007704:	00f63023          	sd	a5,0(a2)
    80007708:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000770c:	00063783          	ld	a5,0(a2)
    80007710:	00053703          	ld	a4,0(a0)
    80007714:	02f70063          	beq	a4,a5,80007734 <uartintr+0x114>
    80007718:	01f7f713          	andi	a4,a5,31
    8000771c:	00e806b3          	add	a3,a6,a4
    80007720:	0055c703          	lbu	a4,5(a1)
    80007724:	00178793          	addi	a5,a5,1
    80007728:	02077713          	andi	a4,a4,32
    8000772c:	fc071ae3          	bnez	a4,80007700 <uartintr+0xe0>
    80007730:	00008067          	ret
    80007734:	00008067          	ret

0000000080007738 <kinit>:
    80007738:	fc010113          	addi	sp,sp,-64
    8000773c:	02913423          	sd	s1,40(sp)
    80007740:	fffff7b7          	lui	a5,0xfffff
    80007744:	00006497          	auipc	s1,0x6
    80007748:	45b48493          	addi	s1,s1,1115 # 8000db9f <end+0xfff>
    8000774c:	02813823          	sd	s0,48(sp)
    80007750:	01313c23          	sd	s3,24(sp)
    80007754:	00f4f4b3          	and	s1,s1,a5
    80007758:	02113c23          	sd	ra,56(sp)
    8000775c:	03213023          	sd	s2,32(sp)
    80007760:	01413823          	sd	s4,16(sp)
    80007764:	01513423          	sd	s5,8(sp)
    80007768:	04010413          	addi	s0,sp,64
    8000776c:	000017b7          	lui	a5,0x1
    80007770:	01100993          	li	s3,17
    80007774:	00f487b3          	add	a5,s1,a5
    80007778:	01b99993          	slli	s3,s3,0x1b
    8000777c:	06f9e063          	bltu	s3,a5,800077dc <kinit+0xa4>
    80007780:	00005a97          	auipc	s5,0x5
    80007784:	420a8a93          	addi	s5,s5,1056 # 8000cba0 <end>
    80007788:	0754ec63          	bltu	s1,s5,80007800 <kinit+0xc8>
    8000778c:	0734fa63          	bgeu	s1,s3,80007800 <kinit+0xc8>
    80007790:	00088a37          	lui	s4,0x88
    80007794:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007798:	00004917          	auipc	s2,0x4
    8000779c:	19090913          	addi	s2,s2,400 # 8000b928 <kmem>
    800077a0:	00ca1a13          	slli	s4,s4,0xc
    800077a4:	0140006f          	j	800077b8 <kinit+0x80>
    800077a8:	000017b7          	lui	a5,0x1
    800077ac:	00f484b3          	add	s1,s1,a5
    800077b0:	0554e863          	bltu	s1,s5,80007800 <kinit+0xc8>
    800077b4:	0534f663          	bgeu	s1,s3,80007800 <kinit+0xc8>
    800077b8:	00001637          	lui	a2,0x1
    800077bc:	00100593          	li	a1,1
    800077c0:	00048513          	mv	a0,s1
    800077c4:	00000097          	auipc	ra,0x0
    800077c8:	5e4080e7          	jalr	1508(ra) # 80007da8 <__memset>
    800077cc:	00093783          	ld	a5,0(s2)
    800077d0:	00f4b023          	sd	a5,0(s1)
    800077d4:	00993023          	sd	s1,0(s2)
    800077d8:	fd4498e3          	bne	s1,s4,800077a8 <kinit+0x70>
    800077dc:	03813083          	ld	ra,56(sp)
    800077e0:	03013403          	ld	s0,48(sp)
    800077e4:	02813483          	ld	s1,40(sp)
    800077e8:	02013903          	ld	s2,32(sp)
    800077ec:	01813983          	ld	s3,24(sp)
    800077f0:	01013a03          	ld	s4,16(sp)
    800077f4:	00813a83          	ld	s5,8(sp)
    800077f8:	04010113          	addi	sp,sp,64
    800077fc:	00008067          	ret
    80007800:	00002517          	auipc	a0,0x2
    80007804:	46050513          	addi	a0,a0,1120 # 80009c60 <digits+0x18>
    80007808:	fffff097          	auipc	ra,0xfffff
    8000780c:	4b4080e7          	jalr	1204(ra) # 80006cbc <panic>

0000000080007810 <freerange>:
    80007810:	fc010113          	addi	sp,sp,-64
    80007814:	000017b7          	lui	a5,0x1
    80007818:	02913423          	sd	s1,40(sp)
    8000781c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007820:	009504b3          	add	s1,a0,s1
    80007824:	fffff537          	lui	a0,0xfffff
    80007828:	02813823          	sd	s0,48(sp)
    8000782c:	02113c23          	sd	ra,56(sp)
    80007830:	03213023          	sd	s2,32(sp)
    80007834:	01313c23          	sd	s3,24(sp)
    80007838:	01413823          	sd	s4,16(sp)
    8000783c:	01513423          	sd	s5,8(sp)
    80007840:	01613023          	sd	s6,0(sp)
    80007844:	04010413          	addi	s0,sp,64
    80007848:	00a4f4b3          	and	s1,s1,a0
    8000784c:	00f487b3          	add	a5,s1,a5
    80007850:	06f5e463          	bltu	a1,a5,800078b8 <freerange+0xa8>
    80007854:	00005a97          	auipc	s5,0x5
    80007858:	34ca8a93          	addi	s5,s5,844 # 8000cba0 <end>
    8000785c:	0954e263          	bltu	s1,s5,800078e0 <freerange+0xd0>
    80007860:	01100993          	li	s3,17
    80007864:	01b99993          	slli	s3,s3,0x1b
    80007868:	0734fc63          	bgeu	s1,s3,800078e0 <freerange+0xd0>
    8000786c:	00058a13          	mv	s4,a1
    80007870:	00004917          	auipc	s2,0x4
    80007874:	0b890913          	addi	s2,s2,184 # 8000b928 <kmem>
    80007878:	00002b37          	lui	s6,0x2
    8000787c:	0140006f          	j	80007890 <freerange+0x80>
    80007880:	000017b7          	lui	a5,0x1
    80007884:	00f484b3          	add	s1,s1,a5
    80007888:	0554ec63          	bltu	s1,s5,800078e0 <freerange+0xd0>
    8000788c:	0534fa63          	bgeu	s1,s3,800078e0 <freerange+0xd0>
    80007890:	00001637          	lui	a2,0x1
    80007894:	00100593          	li	a1,1
    80007898:	00048513          	mv	a0,s1
    8000789c:	00000097          	auipc	ra,0x0
    800078a0:	50c080e7          	jalr	1292(ra) # 80007da8 <__memset>
    800078a4:	00093703          	ld	a4,0(s2)
    800078a8:	016487b3          	add	a5,s1,s6
    800078ac:	00e4b023          	sd	a4,0(s1)
    800078b0:	00993023          	sd	s1,0(s2)
    800078b4:	fcfa76e3          	bgeu	s4,a5,80007880 <freerange+0x70>
    800078b8:	03813083          	ld	ra,56(sp)
    800078bc:	03013403          	ld	s0,48(sp)
    800078c0:	02813483          	ld	s1,40(sp)
    800078c4:	02013903          	ld	s2,32(sp)
    800078c8:	01813983          	ld	s3,24(sp)
    800078cc:	01013a03          	ld	s4,16(sp)
    800078d0:	00813a83          	ld	s5,8(sp)
    800078d4:	00013b03          	ld	s6,0(sp)
    800078d8:	04010113          	addi	sp,sp,64
    800078dc:	00008067          	ret
    800078e0:	00002517          	auipc	a0,0x2
    800078e4:	38050513          	addi	a0,a0,896 # 80009c60 <digits+0x18>
    800078e8:	fffff097          	auipc	ra,0xfffff
    800078ec:	3d4080e7          	jalr	980(ra) # 80006cbc <panic>

00000000800078f0 <kfree>:
    800078f0:	fe010113          	addi	sp,sp,-32
    800078f4:	00813823          	sd	s0,16(sp)
    800078f8:	00113c23          	sd	ra,24(sp)
    800078fc:	00913423          	sd	s1,8(sp)
    80007900:	02010413          	addi	s0,sp,32
    80007904:	03451793          	slli	a5,a0,0x34
    80007908:	04079c63          	bnez	a5,80007960 <kfree+0x70>
    8000790c:	00005797          	auipc	a5,0x5
    80007910:	29478793          	addi	a5,a5,660 # 8000cba0 <end>
    80007914:	00050493          	mv	s1,a0
    80007918:	04f56463          	bltu	a0,a5,80007960 <kfree+0x70>
    8000791c:	01100793          	li	a5,17
    80007920:	01b79793          	slli	a5,a5,0x1b
    80007924:	02f57e63          	bgeu	a0,a5,80007960 <kfree+0x70>
    80007928:	00001637          	lui	a2,0x1
    8000792c:	00100593          	li	a1,1
    80007930:	00000097          	auipc	ra,0x0
    80007934:	478080e7          	jalr	1144(ra) # 80007da8 <__memset>
    80007938:	00004797          	auipc	a5,0x4
    8000793c:	ff078793          	addi	a5,a5,-16 # 8000b928 <kmem>
    80007940:	0007b703          	ld	a4,0(a5)
    80007944:	01813083          	ld	ra,24(sp)
    80007948:	01013403          	ld	s0,16(sp)
    8000794c:	00e4b023          	sd	a4,0(s1)
    80007950:	0097b023          	sd	s1,0(a5)
    80007954:	00813483          	ld	s1,8(sp)
    80007958:	02010113          	addi	sp,sp,32
    8000795c:	00008067          	ret
    80007960:	00002517          	auipc	a0,0x2
    80007964:	30050513          	addi	a0,a0,768 # 80009c60 <digits+0x18>
    80007968:	fffff097          	auipc	ra,0xfffff
    8000796c:	354080e7          	jalr	852(ra) # 80006cbc <panic>

0000000080007970 <kalloc>:
    80007970:	fe010113          	addi	sp,sp,-32
    80007974:	00813823          	sd	s0,16(sp)
    80007978:	00913423          	sd	s1,8(sp)
    8000797c:	00113c23          	sd	ra,24(sp)
    80007980:	02010413          	addi	s0,sp,32
    80007984:	00004797          	auipc	a5,0x4
    80007988:	fa478793          	addi	a5,a5,-92 # 8000b928 <kmem>
    8000798c:	0007b483          	ld	s1,0(a5)
    80007990:	02048063          	beqz	s1,800079b0 <kalloc+0x40>
    80007994:	0004b703          	ld	a4,0(s1)
    80007998:	00001637          	lui	a2,0x1
    8000799c:	00500593          	li	a1,5
    800079a0:	00048513          	mv	a0,s1
    800079a4:	00e7b023          	sd	a4,0(a5)
    800079a8:	00000097          	auipc	ra,0x0
    800079ac:	400080e7          	jalr	1024(ra) # 80007da8 <__memset>
    800079b0:	01813083          	ld	ra,24(sp)
    800079b4:	01013403          	ld	s0,16(sp)
    800079b8:	00048513          	mv	a0,s1
    800079bc:	00813483          	ld	s1,8(sp)
    800079c0:	02010113          	addi	sp,sp,32
    800079c4:	00008067          	ret

00000000800079c8 <initlock>:
    800079c8:	ff010113          	addi	sp,sp,-16
    800079cc:	00813423          	sd	s0,8(sp)
    800079d0:	01010413          	addi	s0,sp,16
    800079d4:	00813403          	ld	s0,8(sp)
    800079d8:	00b53423          	sd	a1,8(a0)
    800079dc:	00052023          	sw	zero,0(a0)
    800079e0:	00053823          	sd	zero,16(a0)
    800079e4:	01010113          	addi	sp,sp,16
    800079e8:	00008067          	ret

00000000800079ec <acquire>:
    800079ec:	fe010113          	addi	sp,sp,-32
    800079f0:	00813823          	sd	s0,16(sp)
    800079f4:	00913423          	sd	s1,8(sp)
    800079f8:	00113c23          	sd	ra,24(sp)
    800079fc:	01213023          	sd	s2,0(sp)
    80007a00:	02010413          	addi	s0,sp,32
    80007a04:	00050493          	mv	s1,a0
    80007a08:	10002973          	csrr	s2,sstatus
    80007a0c:	100027f3          	csrr	a5,sstatus
    80007a10:	ffd7f793          	andi	a5,a5,-3
    80007a14:	10079073          	csrw	sstatus,a5
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	8e8080e7          	jalr	-1816(ra) # 80006300 <mycpu>
    80007a20:	07852783          	lw	a5,120(a0)
    80007a24:	06078e63          	beqz	a5,80007aa0 <acquire+0xb4>
    80007a28:	fffff097          	auipc	ra,0xfffff
    80007a2c:	8d8080e7          	jalr	-1832(ra) # 80006300 <mycpu>
    80007a30:	07852783          	lw	a5,120(a0)
    80007a34:	0004a703          	lw	a4,0(s1)
    80007a38:	0017879b          	addiw	a5,a5,1
    80007a3c:	06f52c23          	sw	a5,120(a0)
    80007a40:	04071063          	bnez	a4,80007a80 <acquire+0x94>
    80007a44:	00100713          	li	a4,1
    80007a48:	00070793          	mv	a5,a4
    80007a4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007a50:	0007879b          	sext.w	a5,a5
    80007a54:	fe079ae3          	bnez	a5,80007a48 <acquire+0x5c>
    80007a58:	0ff0000f          	fence
    80007a5c:	fffff097          	auipc	ra,0xfffff
    80007a60:	8a4080e7          	jalr	-1884(ra) # 80006300 <mycpu>
    80007a64:	01813083          	ld	ra,24(sp)
    80007a68:	01013403          	ld	s0,16(sp)
    80007a6c:	00a4b823          	sd	a0,16(s1)
    80007a70:	00013903          	ld	s2,0(sp)
    80007a74:	00813483          	ld	s1,8(sp)
    80007a78:	02010113          	addi	sp,sp,32
    80007a7c:	00008067          	ret
    80007a80:	0104b903          	ld	s2,16(s1)
    80007a84:	fffff097          	auipc	ra,0xfffff
    80007a88:	87c080e7          	jalr	-1924(ra) # 80006300 <mycpu>
    80007a8c:	faa91ce3          	bne	s2,a0,80007a44 <acquire+0x58>
    80007a90:	00002517          	auipc	a0,0x2
    80007a94:	1d850513          	addi	a0,a0,472 # 80009c68 <digits+0x20>
    80007a98:	fffff097          	auipc	ra,0xfffff
    80007a9c:	224080e7          	jalr	548(ra) # 80006cbc <panic>
    80007aa0:	00195913          	srli	s2,s2,0x1
    80007aa4:	fffff097          	auipc	ra,0xfffff
    80007aa8:	85c080e7          	jalr	-1956(ra) # 80006300 <mycpu>
    80007aac:	00197913          	andi	s2,s2,1
    80007ab0:	07252e23          	sw	s2,124(a0)
    80007ab4:	f75ff06f          	j	80007a28 <acquire+0x3c>

0000000080007ab8 <release>:
    80007ab8:	fe010113          	addi	sp,sp,-32
    80007abc:	00813823          	sd	s0,16(sp)
    80007ac0:	00113c23          	sd	ra,24(sp)
    80007ac4:	00913423          	sd	s1,8(sp)
    80007ac8:	01213023          	sd	s2,0(sp)
    80007acc:	02010413          	addi	s0,sp,32
    80007ad0:	00052783          	lw	a5,0(a0)
    80007ad4:	00079a63          	bnez	a5,80007ae8 <release+0x30>
    80007ad8:	00002517          	auipc	a0,0x2
    80007adc:	19850513          	addi	a0,a0,408 # 80009c70 <digits+0x28>
    80007ae0:	fffff097          	auipc	ra,0xfffff
    80007ae4:	1dc080e7          	jalr	476(ra) # 80006cbc <panic>
    80007ae8:	01053903          	ld	s2,16(a0)
    80007aec:	00050493          	mv	s1,a0
    80007af0:	fffff097          	auipc	ra,0xfffff
    80007af4:	810080e7          	jalr	-2032(ra) # 80006300 <mycpu>
    80007af8:	fea910e3          	bne	s2,a0,80007ad8 <release+0x20>
    80007afc:	0004b823          	sd	zero,16(s1)
    80007b00:	0ff0000f          	fence
    80007b04:	0f50000f          	fence	iorw,ow
    80007b08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007b0c:	ffffe097          	auipc	ra,0xffffe
    80007b10:	7f4080e7          	jalr	2036(ra) # 80006300 <mycpu>
    80007b14:	100027f3          	csrr	a5,sstatus
    80007b18:	0027f793          	andi	a5,a5,2
    80007b1c:	04079a63          	bnez	a5,80007b70 <release+0xb8>
    80007b20:	07852783          	lw	a5,120(a0)
    80007b24:	02f05e63          	blez	a5,80007b60 <release+0xa8>
    80007b28:	fff7871b          	addiw	a4,a5,-1
    80007b2c:	06e52c23          	sw	a4,120(a0)
    80007b30:	00071c63          	bnez	a4,80007b48 <release+0x90>
    80007b34:	07c52783          	lw	a5,124(a0)
    80007b38:	00078863          	beqz	a5,80007b48 <release+0x90>
    80007b3c:	100027f3          	csrr	a5,sstatus
    80007b40:	0027e793          	ori	a5,a5,2
    80007b44:	10079073          	csrw	sstatus,a5
    80007b48:	01813083          	ld	ra,24(sp)
    80007b4c:	01013403          	ld	s0,16(sp)
    80007b50:	00813483          	ld	s1,8(sp)
    80007b54:	00013903          	ld	s2,0(sp)
    80007b58:	02010113          	addi	sp,sp,32
    80007b5c:	00008067          	ret
    80007b60:	00002517          	auipc	a0,0x2
    80007b64:	13050513          	addi	a0,a0,304 # 80009c90 <digits+0x48>
    80007b68:	fffff097          	auipc	ra,0xfffff
    80007b6c:	154080e7          	jalr	340(ra) # 80006cbc <panic>
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	10850513          	addi	a0,a0,264 # 80009c78 <digits+0x30>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	144080e7          	jalr	324(ra) # 80006cbc <panic>

0000000080007b80 <holding>:
    80007b80:	00052783          	lw	a5,0(a0)
    80007b84:	00079663          	bnez	a5,80007b90 <holding+0x10>
    80007b88:	00000513          	li	a0,0
    80007b8c:	00008067          	ret
    80007b90:	fe010113          	addi	sp,sp,-32
    80007b94:	00813823          	sd	s0,16(sp)
    80007b98:	00913423          	sd	s1,8(sp)
    80007b9c:	00113c23          	sd	ra,24(sp)
    80007ba0:	02010413          	addi	s0,sp,32
    80007ba4:	01053483          	ld	s1,16(a0)
    80007ba8:	ffffe097          	auipc	ra,0xffffe
    80007bac:	758080e7          	jalr	1880(ra) # 80006300 <mycpu>
    80007bb0:	01813083          	ld	ra,24(sp)
    80007bb4:	01013403          	ld	s0,16(sp)
    80007bb8:	40a48533          	sub	a0,s1,a0
    80007bbc:	00153513          	seqz	a0,a0
    80007bc0:	00813483          	ld	s1,8(sp)
    80007bc4:	02010113          	addi	sp,sp,32
    80007bc8:	00008067          	ret

0000000080007bcc <push_off>:
    80007bcc:	fe010113          	addi	sp,sp,-32
    80007bd0:	00813823          	sd	s0,16(sp)
    80007bd4:	00113c23          	sd	ra,24(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	02010413          	addi	s0,sp,32
    80007be0:	100024f3          	csrr	s1,sstatus
    80007be4:	100027f3          	csrr	a5,sstatus
    80007be8:	ffd7f793          	andi	a5,a5,-3
    80007bec:	10079073          	csrw	sstatus,a5
    80007bf0:	ffffe097          	auipc	ra,0xffffe
    80007bf4:	710080e7          	jalr	1808(ra) # 80006300 <mycpu>
    80007bf8:	07852783          	lw	a5,120(a0)
    80007bfc:	02078663          	beqz	a5,80007c28 <push_off+0x5c>
    80007c00:	ffffe097          	auipc	ra,0xffffe
    80007c04:	700080e7          	jalr	1792(ra) # 80006300 <mycpu>
    80007c08:	07852783          	lw	a5,120(a0)
    80007c0c:	01813083          	ld	ra,24(sp)
    80007c10:	01013403          	ld	s0,16(sp)
    80007c14:	0017879b          	addiw	a5,a5,1
    80007c18:	06f52c23          	sw	a5,120(a0)
    80007c1c:	00813483          	ld	s1,8(sp)
    80007c20:	02010113          	addi	sp,sp,32
    80007c24:	00008067          	ret
    80007c28:	0014d493          	srli	s1,s1,0x1
    80007c2c:	ffffe097          	auipc	ra,0xffffe
    80007c30:	6d4080e7          	jalr	1748(ra) # 80006300 <mycpu>
    80007c34:	0014f493          	andi	s1,s1,1
    80007c38:	06952e23          	sw	s1,124(a0)
    80007c3c:	fc5ff06f          	j	80007c00 <push_off+0x34>

0000000080007c40 <pop_off>:
    80007c40:	ff010113          	addi	sp,sp,-16
    80007c44:	00813023          	sd	s0,0(sp)
    80007c48:	00113423          	sd	ra,8(sp)
    80007c4c:	01010413          	addi	s0,sp,16
    80007c50:	ffffe097          	auipc	ra,0xffffe
    80007c54:	6b0080e7          	jalr	1712(ra) # 80006300 <mycpu>
    80007c58:	100027f3          	csrr	a5,sstatus
    80007c5c:	0027f793          	andi	a5,a5,2
    80007c60:	04079663          	bnez	a5,80007cac <pop_off+0x6c>
    80007c64:	07852783          	lw	a5,120(a0)
    80007c68:	02f05a63          	blez	a5,80007c9c <pop_off+0x5c>
    80007c6c:	fff7871b          	addiw	a4,a5,-1
    80007c70:	06e52c23          	sw	a4,120(a0)
    80007c74:	00071c63          	bnez	a4,80007c8c <pop_off+0x4c>
    80007c78:	07c52783          	lw	a5,124(a0)
    80007c7c:	00078863          	beqz	a5,80007c8c <pop_off+0x4c>
    80007c80:	100027f3          	csrr	a5,sstatus
    80007c84:	0027e793          	ori	a5,a5,2
    80007c88:	10079073          	csrw	sstatus,a5
    80007c8c:	00813083          	ld	ra,8(sp)
    80007c90:	00013403          	ld	s0,0(sp)
    80007c94:	01010113          	addi	sp,sp,16
    80007c98:	00008067          	ret
    80007c9c:	00002517          	auipc	a0,0x2
    80007ca0:	ff450513          	addi	a0,a0,-12 # 80009c90 <digits+0x48>
    80007ca4:	fffff097          	auipc	ra,0xfffff
    80007ca8:	018080e7          	jalr	24(ra) # 80006cbc <panic>
    80007cac:	00002517          	auipc	a0,0x2
    80007cb0:	fcc50513          	addi	a0,a0,-52 # 80009c78 <digits+0x30>
    80007cb4:	fffff097          	auipc	ra,0xfffff
    80007cb8:	008080e7          	jalr	8(ra) # 80006cbc <panic>

0000000080007cbc <push_on>:
    80007cbc:	fe010113          	addi	sp,sp,-32
    80007cc0:	00813823          	sd	s0,16(sp)
    80007cc4:	00113c23          	sd	ra,24(sp)
    80007cc8:	00913423          	sd	s1,8(sp)
    80007ccc:	02010413          	addi	s0,sp,32
    80007cd0:	100024f3          	csrr	s1,sstatus
    80007cd4:	100027f3          	csrr	a5,sstatus
    80007cd8:	0027e793          	ori	a5,a5,2
    80007cdc:	10079073          	csrw	sstatus,a5
    80007ce0:	ffffe097          	auipc	ra,0xffffe
    80007ce4:	620080e7          	jalr	1568(ra) # 80006300 <mycpu>
    80007ce8:	07852783          	lw	a5,120(a0)
    80007cec:	02078663          	beqz	a5,80007d18 <push_on+0x5c>
    80007cf0:	ffffe097          	auipc	ra,0xffffe
    80007cf4:	610080e7          	jalr	1552(ra) # 80006300 <mycpu>
    80007cf8:	07852783          	lw	a5,120(a0)
    80007cfc:	01813083          	ld	ra,24(sp)
    80007d00:	01013403          	ld	s0,16(sp)
    80007d04:	0017879b          	addiw	a5,a5,1
    80007d08:	06f52c23          	sw	a5,120(a0)
    80007d0c:	00813483          	ld	s1,8(sp)
    80007d10:	02010113          	addi	sp,sp,32
    80007d14:	00008067          	ret
    80007d18:	0014d493          	srli	s1,s1,0x1
    80007d1c:	ffffe097          	auipc	ra,0xffffe
    80007d20:	5e4080e7          	jalr	1508(ra) # 80006300 <mycpu>
    80007d24:	0014f493          	andi	s1,s1,1
    80007d28:	06952e23          	sw	s1,124(a0)
    80007d2c:	fc5ff06f          	j	80007cf0 <push_on+0x34>

0000000080007d30 <pop_on>:
    80007d30:	ff010113          	addi	sp,sp,-16
    80007d34:	00813023          	sd	s0,0(sp)
    80007d38:	00113423          	sd	ra,8(sp)
    80007d3c:	01010413          	addi	s0,sp,16
    80007d40:	ffffe097          	auipc	ra,0xffffe
    80007d44:	5c0080e7          	jalr	1472(ra) # 80006300 <mycpu>
    80007d48:	100027f3          	csrr	a5,sstatus
    80007d4c:	0027f793          	andi	a5,a5,2
    80007d50:	04078463          	beqz	a5,80007d98 <pop_on+0x68>
    80007d54:	07852783          	lw	a5,120(a0)
    80007d58:	02f05863          	blez	a5,80007d88 <pop_on+0x58>
    80007d5c:	fff7879b          	addiw	a5,a5,-1
    80007d60:	06f52c23          	sw	a5,120(a0)
    80007d64:	07853783          	ld	a5,120(a0)
    80007d68:	00079863          	bnez	a5,80007d78 <pop_on+0x48>
    80007d6c:	100027f3          	csrr	a5,sstatus
    80007d70:	ffd7f793          	andi	a5,a5,-3
    80007d74:	10079073          	csrw	sstatus,a5
    80007d78:	00813083          	ld	ra,8(sp)
    80007d7c:	00013403          	ld	s0,0(sp)
    80007d80:	01010113          	addi	sp,sp,16
    80007d84:	00008067          	ret
    80007d88:	00002517          	auipc	a0,0x2
    80007d8c:	f3050513          	addi	a0,a0,-208 # 80009cb8 <digits+0x70>
    80007d90:	fffff097          	auipc	ra,0xfffff
    80007d94:	f2c080e7          	jalr	-212(ra) # 80006cbc <panic>
    80007d98:	00002517          	auipc	a0,0x2
    80007d9c:	f0050513          	addi	a0,a0,-256 # 80009c98 <digits+0x50>
    80007da0:	fffff097          	auipc	ra,0xfffff
    80007da4:	f1c080e7          	jalr	-228(ra) # 80006cbc <panic>

0000000080007da8 <__memset>:
    80007da8:	ff010113          	addi	sp,sp,-16
    80007dac:	00813423          	sd	s0,8(sp)
    80007db0:	01010413          	addi	s0,sp,16
    80007db4:	1a060e63          	beqz	a2,80007f70 <__memset+0x1c8>
    80007db8:	40a007b3          	neg	a5,a0
    80007dbc:	0077f793          	andi	a5,a5,7
    80007dc0:	00778693          	addi	a3,a5,7
    80007dc4:	00b00813          	li	a6,11
    80007dc8:	0ff5f593          	andi	a1,a1,255
    80007dcc:	fff6071b          	addiw	a4,a2,-1
    80007dd0:	1b06e663          	bltu	a3,a6,80007f7c <__memset+0x1d4>
    80007dd4:	1cd76463          	bltu	a4,a3,80007f9c <__memset+0x1f4>
    80007dd8:	1a078e63          	beqz	a5,80007f94 <__memset+0x1ec>
    80007ddc:	00b50023          	sb	a1,0(a0)
    80007de0:	00100713          	li	a4,1
    80007de4:	1ae78463          	beq	a5,a4,80007f8c <__memset+0x1e4>
    80007de8:	00b500a3          	sb	a1,1(a0)
    80007dec:	00200713          	li	a4,2
    80007df0:	1ae78a63          	beq	a5,a4,80007fa4 <__memset+0x1fc>
    80007df4:	00b50123          	sb	a1,2(a0)
    80007df8:	00300713          	li	a4,3
    80007dfc:	18e78463          	beq	a5,a4,80007f84 <__memset+0x1dc>
    80007e00:	00b501a3          	sb	a1,3(a0)
    80007e04:	00400713          	li	a4,4
    80007e08:	1ae78263          	beq	a5,a4,80007fac <__memset+0x204>
    80007e0c:	00b50223          	sb	a1,4(a0)
    80007e10:	00500713          	li	a4,5
    80007e14:	1ae78063          	beq	a5,a4,80007fb4 <__memset+0x20c>
    80007e18:	00b502a3          	sb	a1,5(a0)
    80007e1c:	00700713          	li	a4,7
    80007e20:	18e79e63          	bne	a5,a4,80007fbc <__memset+0x214>
    80007e24:	00b50323          	sb	a1,6(a0)
    80007e28:	00700e93          	li	t4,7
    80007e2c:	00859713          	slli	a4,a1,0x8
    80007e30:	00e5e733          	or	a4,a1,a4
    80007e34:	01059e13          	slli	t3,a1,0x10
    80007e38:	01c76e33          	or	t3,a4,t3
    80007e3c:	01859313          	slli	t1,a1,0x18
    80007e40:	006e6333          	or	t1,t3,t1
    80007e44:	02059893          	slli	a7,a1,0x20
    80007e48:	40f60e3b          	subw	t3,a2,a5
    80007e4c:	011368b3          	or	a7,t1,a7
    80007e50:	02859813          	slli	a6,a1,0x28
    80007e54:	0108e833          	or	a6,a7,a6
    80007e58:	03059693          	slli	a3,a1,0x30
    80007e5c:	003e589b          	srliw	a7,t3,0x3
    80007e60:	00d866b3          	or	a3,a6,a3
    80007e64:	03859713          	slli	a4,a1,0x38
    80007e68:	00389813          	slli	a6,a7,0x3
    80007e6c:	00f507b3          	add	a5,a0,a5
    80007e70:	00e6e733          	or	a4,a3,a4
    80007e74:	000e089b          	sext.w	a7,t3
    80007e78:	00f806b3          	add	a3,a6,a5
    80007e7c:	00e7b023          	sd	a4,0(a5)
    80007e80:	00878793          	addi	a5,a5,8
    80007e84:	fed79ce3          	bne	a5,a3,80007e7c <__memset+0xd4>
    80007e88:	ff8e7793          	andi	a5,t3,-8
    80007e8c:	0007871b          	sext.w	a4,a5
    80007e90:	01d787bb          	addw	a5,a5,t4
    80007e94:	0ce88e63          	beq	a7,a4,80007f70 <__memset+0x1c8>
    80007e98:	00f50733          	add	a4,a0,a5
    80007e9c:	00b70023          	sb	a1,0(a4)
    80007ea0:	0017871b          	addiw	a4,a5,1
    80007ea4:	0cc77663          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007ea8:	00e50733          	add	a4,a0,a4
    80007eac:	00b70023          	sb	a1,0(a4)
    80007eb0:	0027871b          	addiw	a4,a5,2
    80007eb4:	0ac77e63          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007eb8:	00e50733          	add	a4,a0,a4
    80007ebc:	00b70023          	sb	a1,0(a4)
    80007ec0:	0037871b          	addiw	a4,a5,3
    80007ec4:	0ac77663          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007ec8:	00e50733          	add	a4,a0,a4
    80007ecc:	00b70023          	sb	a1,0(a4)
    80007ed0:	0047871b          	addiw	a4,a5,4
    80007ed4:	08c77e63          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007ed8:	00e50733          	add	a4,a0,a4
    80007edc:	00b70023          	sb	a1,0(a4)
    80007ee0:	0057871b          	addiw	a4,a5,5
    80007ee4:	08c77663          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007ee8:	00e50733          	add	a4,a0,a4
    80007eec:	00b70023          	sb	a1,0(a4)
    80007ef0:	0067871b          	addiw	a4,a5,6
    80007ef4:	06c77e63          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007ef8:	00e50733          	add	a4,a0,a4
    80007efc:	00b70023          	sb	a1,0(a4)
    80007f00:	0077871b          	addiw	a4,a5,7
    80007f04:	06c77663          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007f08:	00e50733          	add	a4,a0,a4
    80007f0c:	00b70023          	sb	a1,0(a4)
    80007f10:	0087871b          	addiw	a4,a5,8
    80007f14:	04c77e63          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007f18:	00e50733          	add	a4,a0,a4
    80007f1c:	00b70023          	sb	a1,0(a4)
    80007f20:	0097871b          	addiw	a4,a5,9
    80007f24:	04c77663          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007f28:	00e50733          	add	a4,a0,a4
    80007f2c:	00b70023          	sb	a1,0(a4)
    80007f30:	00a7871b          	addiw	a4,a5,10
    80007f34:	02c77e63          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007f38:	00e50733          	add	a4,a0,a4
    80007f3c:	00b70023          	sb	a1,0(a4)
    80007f40:	00b7871b          	addiw	a4,a5,11
    80007f44:	02c77663          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007f48:	00e50733          	add	a4,a0,a4
    80007f4c:	00b70023          	sb	a1,0(a4)
    80007f50:	00c7871b          	addiw	a4,a5,12
    80007f54:	00c77e63          	bgeu	a4,a2,80007f70 <__memset+0x1c8>
    80007f58:	00e50733          	add	a4,a0,a4
    80007f5c:	00b70023          	sb	a1,0(a4)
    80007f60:	00d7879b          	addiw	a5,a5,13
    80007f64:	00c7f663          	bgeu	a5,a2,80007f70 <__memset+0x1c8>
    80007f68:	00f507b3          	add	a5,a0,a5
    80007f6c:	00b78023          	sb	a1,0(a5)
    80007f70:	00813403          	ld	s0,8(sp)
    80007f74:	01010113          	addi	sp,sp,16
    80007f78:	00008067          	ret
    80007f7c:	00b00693          	li	a3,11
    80007f80:	e55ff06f          	j	80007dd4 <__memset+0x2c>
    80007f84:	00300e93          	li	t4,3
    80007f88:	ea5ff06f          	j	80007e2c <__memset+0x84>
    80007f8c:	00100e93          	li	t4,1
    80007f90:	e9dff06f          	j	80007e2c <__memset+0x84>
    80007f94:	00000e93          	li	t4,0
    80007f98:	e95ff06f          	j	80007e2c <__memset+0x84>
    80007f9c:	00000793          	li	a5,0
    80007fa0:	ef9ff06f          	j	80007e98 <__memset+0xf0>
    80007fa4:	00200e93          	li	t4,2
    80007fa8:	e85ff06f          	j	80007e2c <__memset+0x84>
    80007fac:	00400e93          	li	t4,4
    80007fb0:	e7dff06f          	j	80007e2c <__memset+0x84>
    80007fb4:	00500e93          	li	t4,5
    80007fb8:	e75ff06f          	j	80007e2c <__memset+0x84>
    80007fbc:	00600e93          	li	t4,6
    80007fc0:	e6dff06f          	j	80007e2c <__memset+0x84>

0000000080007fc4 <__memmove>:
    80007fc4:	ff010113          	addi	sp,sp,-16
    80007fc8:	00813423          	sd	s0,8(sp)
    80007fcc:	01010413          	addi	s0,sp,16
    80007fd0:	0e060863          	beqz	a2,800080c0 <__memmove+0xfc>
    80007fd4:	fff6069b          	addiw	a3,a2,-1
    80007fd8:	0006881b          	sext.w	a6,a3
    80007fdc:	0ea5e863          	bltu	a1,a0,800080cc <__memmove+0x108>
    80007fe0:	00758713          	addi	a4,a1,7
    80007fe4:	00a5e7b3          	or	a5,a1,a0
    80007fe8:	40a70733          	sub	a4,a4,a0
    80007fec:	0077f793          	andi	a5,a5,7
    80007ff0:	00f73713          	sltiu	a4,a4,15
    80007ff4:	00174713          	xori	a4,a4,1
    80007ff8:	0017b793          	seqz	a5,a5
    80007ffc:	00e7f7b3          	and	a5,a5,a4
    80008000:	10078863          	beqz	a5,80008110 <__memmove+0x14c>
    80008004:	00900793          	li	a5,9
    80008008:	1107f463          	bgeu	a5,a6,80008110 <__memmove+0x14c>
    8000800c:	0036581b          	srliw	a6,a2,0x3
    80008010:	fff8081b          	addiw	a6,a6,-1
    80008014:	02081813          	slli	a6,a6,0x20
    80008018:	01d85893          	srli	a7,a6,0x1d
    8000801c:	00858813          	addi	a6,a1,8
    80008020:	00058793          	mv	a5,a1
    80008024:	00050713          	mv	a4,a0
    80008028:	01088833          	add	a6,a7,a6
    8000802c:	0007b883          	ld	a7,0(a5)
    80008030:	00878793          	addi	a5,a5,8
    80008034:	00870713          	addi	a4,a4,8
    80008038:	ff173c23          	sd	a7,-8(a4)
    8000803c:	ff0798e3          	bne	a5,a6,8000802c <__memmove+0x68>
    80008040:	ff867713          	andi	a4,a2,-8
    80008044:	02071793          	slli	a5,a4,0x20
    80008048:	0207d793          	srli	a5,a5,0x20
    8000804c:	00f585b3          	add	a1,a1,a5
    80008050:	40e686bb          	subw	a3,a3,a4
    80008054:	00f507b3          	add	a5,a0,a5
    80008058:	06e60463          	beq	a2,a4,800080c0 <__memmove+0xfc>
    8000805c:	0005c703          	lbu	a4,0(a1)
    80008060:	00e78023          	sb	a4,0(a5)
    80008064:	04068e63          	beqz	a3,800080c0 <__memmove+0xfc>
    80008068:	0015c603          	lbu	a2,1(a1)
    8000806c:	00100713          	li	a4,1
    80008070:	00c780a3          	sb	a2,1(a5)
    80008074:	04e68663          	beq	a3,a4,800080c0 <__memmove+0xfc>
    80008078:	0025c603          	lbu	a2,2(a1)
    8000807c:	00200713          	li	a4,2
    80008080:	00c78123          	sb	a2,2(a5)
    80008084:	02e68e63          	beq	a3,a4,800080c0 <__memmove+0xfc>
    80008088:	0035c603          	lbu	a2,3(a1)
    8000808c:	00300713          	li	a4,3
    80008090:	00c781a3          	sb	a2,3(a5)
    80008094:	02e68663          	beq	a3,a4,800080c0 <__memmove+0xfc>
    80008098:	0045c603          	lbu	a2,4(a1)
    8000809c:	00400713          	li	a4,4
    800080a0:	00c78223          	sb	a2,4(a5)
    800080a4:	00e68e63          	beq	a3,a4,800080c0 <__memmove+0xfc>
    800080a8:	0055c603          	lbu	a2,5(a1)
    800080ac:	00500713          	li	a4,5
    800080b0:	00c782a3          	sb	a2,5(a5)
    800080b4:	00e68663          	beq	a3,a4,800080c0 <__memmove+0xfc>
    800080b8:	0065c703          	lbu	a4,6(a1)
    800080bc:	00e78323          	sb	a4,6(a5)
    800080c0:	00813403          	ld	s0,8(sp)
    800080c4:	01010113          	addi	sp,sp,16
    800080c8:	00008067          	ret
    800080cc:	02061713          	slli	a4,a2,0x20
    800080d0:	02075713          	srli	a4,a4,0x20
    800080d4:	00e587b3          	add	a5,a1,a4
    800080d8:	f0f574e3          	bgeu	a0,a5,80007fe0 <__memmove+0x1c>
    800080dc:	02069613          	slli	a2,a3,0x20
    800080e0:	02065613          	srli	a2,a2,0x20
    800080e4:	fff64613          	not	a2,a2
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00c78633          	add	a2,a5,a2
    800080f0:	fff7c683          	lbu	a3,-1(a5)
    800080f4:	fff78793          	addi	a5,a5,-1
    800080f8:	fff70713          	addi	a4,a4,-1
    800080fc:	00d70023          	sb	a3,0(a4)
    80008100:	fec798e3          	bne	a5,a2,800080f0 <__memmove+0x12c>
    80008104:	00813403          	ld	s0,8(sp)
    80008108:	01010113          	addi	sp,sp,16
    8000810c:	00008067          	ret
    80008110:	02069713          	slli	a4,a3,0x20
    80008114:	02075713          	srli	a4,a4,0x20
    80008118:	00170713          	addi	a4,a4,1
    8000811c:	00e50733          	add	a4,a0,a4
    80008120:	00050793          	mv	a5,a0
    80008124:	0005c683          	lbu	a3,0(a1)
    80008128:	00178793          	addi	a5,a5,1
    8000812c:	00158593          	addi	a1,a1,1
    80008130:	fed78fa3          	sb	a3,-1(a5)
    80008134:	fee798e3          	bne	a5,a4,80008124 <__memmove+0x160>
    80008138:	f89ff06f          	j	800080c0 <__memmove+0xfc>

000000008000813c <__putc>:
    8000813c:	fe010113          	addi	sp,sp,-32
    80008140:	00813823          	sd	s0,16(sp)
    80008144:	00113c23          	sd	ra,24(sp)
    80008148:	02010413          	addi	s0,sp,32
    8000814c:	00050793          	mv	a5,a0
    80008150:	fef40593          	addi	a1,s0,-17
    80008154:	00100613          	li	a2,1
    80008158:	00000513          	li	a0,0
    8000815c:	fef407a3          	sb	a5,-17(s0)
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	b3c080e7          	jalr	-1220(ra) # 80006c9c <console_write>
    80008168:	01813083          	ld	ra,24(sp)
    8000816c:	01013403          	ld	s0,16(sp)
    80008170:	02010113          	addi	sp,sp,32
    80008174:	00008067          	ret

0000000080008178 <__getc>:
    80008178:	fe010113          	addi	sp,sp,-32
    8000817c:	00813823          	sd	s0,16(sp)
    80008180:	00113c23          	sd	ra,24(sp)
    80008184:	02010413          	addi	s0,sp,32
    80008188:	fe840593          	addi	a1,s0,-24
    8000818c:	00100613          	li	a2,1
    80008190:	00000513          	li	a0,0
    80008194:	fffff097          	auipc	ra,0xfffff
    80008198:	ae8080e7          	jalr	-1304(ra) # 80006c7c <console_read>
    8000819c:	fe844503          	lbu	a0,-24(s0)
    800081a0:	01813083          	ld	ra,24(sp)
    800081a4:	01013403          	ld	s0,16(sp)
    800081a8:	02010113          	addi	sp,sp,32
    800081ac:	00008067          	ret

00000000800081b0 <console_handler>:
    800081b0:	fe010113          	addi	sp,sp,-32
    800081b4:	00813823          	sd	s0,16(sp)
    800081b8:	00113c23          	sd	ra,24(sp)
    800081bc:	00913423          	sd	s1,8(sp)
    800081c0:	02010413          	addi	s0,sp,32
    800081c4:	14202773          	csrr	a4,scause
    800081c8:	100027f3          	csrr	a5,sstatus
    800081cc:	0027f793          	andi	a5,a5,2
    800081d0:	06079e63          	bnez	a5,8000824c <console_handler+0x9c>
    800081d4:	00074c63          	bltz	a4,800081ec <console_handler+0x3c>
    800081d8:	01813083          	ld	ra,24(sp)
    800081dc:	01013403          	ld	s0,16(sp)
    800081e0:	00813483          	ld	s1,8(sp)
    800081e4:	02010113          	addi	sp,sp,32
    800081e8:	00008067          	ret
    800081ec:	0ff77713          	andi	a4,a4,255
    800081f0:	00900793          	li	a5,9
    800081f4:	fef712e3          	bne	a4,a5,800081d8 <console_handler+0x28>
    800081f8:	ffffe097          	auipc	ra,0xffffe
    800081fc:	6dc080e7          	jalr	1756(ra) # 800068d4 <plic_claim>
    80008200:	00a00793          	li	a5,10
    80008204:	00050493          	mv	s1,a0
    80008208:	02f50c63          	beq	a0,a5,80008240 <console_handler+0x90>
    8000820c:	fc0506e3          	beqz	a0,800081d8 <console_handler+0x28>
    80008210:	00050593          	mv	a1,a0
    80008214:	00002517          	auipc	a0,0x2
    80008218:	9ac50513          	addi	a0,a0,-1620 # 80009bc0 <_ZTV12ConsumerSync+0x108>
    8000821c:	fffff097          	auipc	ra,0xfffff
    80008220:	afc080e7          	jalr	-1284(ra) # 80006d18 <__printf>
    80008224:	01013403          	ld	s0,16(sp)
    80008228:	01813083          	ld	ra,24(sp)
    8000822c:	00048513          	mv	a0,s1
    80008230:	00813483          	ld	s1,8(sp)
    80008234:	02010113          	addi	sp,sp,32
    80008238:	ffffe317          	auipc	t1,0xffffe
    8000823c:	6d430067          	jr	1748(t1) # 8000690c <plic_complete>
    80008240:	fffff097          	auipc	ra,0xfffff
    80008244:	3e0080e7          	jalr	992(ra) # 80007620 <uartintr>
    80008248:	fddff06f          	j	80008224 <console_handler+0x74>
    8000824c:	00002517          	auipc	a0,0x2
    80008250:	a7450513          	addi	a0,a0,-1420 # 80009cc0 <digits+0x78>
    80008254:	fffff097          	auipc	ra,0xfffff
    80008258:	a68080e7          	jalr	-1432(ra) # 80006cbc <panic>
	...
