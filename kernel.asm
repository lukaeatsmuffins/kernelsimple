
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	0c813103          	ld	sp,200(sp) # 800060c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2d1020ef          	jal	ra,80002aec <start>

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
    80001084:	3b5000ef          	jal	ra,80001c38 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001154:	01078793          	addi	a5,a5,16 # 80006160 <_ZN9Scheduler16readyThreadQueueE>
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
    8000117c:	fe878793          	addi	a5,a5,-24 # 80006160 <_ZN9Scheduler16readyThreadQueueE>
    80001180:	0007b503          	ld	a0,0(a5)
    80001184:	04050263          	beqz	a0,800011c8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    80001188:	00853783          	ld	a5,8(a0)
    8000118c:	00005717          	auipc	a4,0x5
    80001190:	fcf73a23          	sd	a5,-44(a4) # 80006160 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001194:	02078463          	beqz	a5,800011bc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    80001198:	00053483          	ld	s1,0(a0)
        delete elem;
    8000119c:	00001097          	auipc	ra,0x1
    800011a0:	d24080e7          	jalr	-732(ra) # 80001ec0 <_ZdlPv>
}
    800011a4:	00048513          	mv	a0,s1
    800011a8:	01813083          	ld	ra,24(sp)
    800011ac:	01013403          	ld	s0,16(sp)
    800011b0:	00813483          	ld	s1,8(sp)
    800011b4:	02010113          	addi	sp,sp,32
    800011b8:	00008067          	ret
        if (!head) { tail = 0; }
    800011bc:	00005797          	auipc	a5,0x5
    800011c0:	fa07b623          	sd	zero,-84(a5) # 80006168 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    800011f0:	c54080e7          	jalr	-940(ra) # 80001e40 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800011f4:	00953023          	sd	s1,0(a0)
    800011f8:	00053423          	sd	zero,8(a0)
        if (tail)
    800011fc:	00005797          	auipc	a5,0x5
    80001200:	f6478793          	addi	a5,a5,-156 # 80006160 <_ZN9Scheduler16readyThreadQueueE>
    80001204:	0087b783          	ld	a5,8(a5)
    80001208:	02078263          	beqz	a5,8000122c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000120c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001210:	00005797          	auipc	a5,0x5
    80001214:	f4a7bc23          	sd	a0,-168(a5) # 80006168 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001218:	01813083          	ld	ra,24(sp)
    8000121c:	01013403          	ld	s0,16(sp)
    80001220:	00813483          	ld	s1,8(sp)
    80001224:	02010113          	addi	sp,sp,32
    80001228:	00008067          	ret
            head = tail = elem;
    8000122c:	00005797          	auipc	a5,0x5
    80001230:	f3478793          	addi	a5,a5,-204 # 80006160 <_ZN9Scheduler16readyThreadQueueE>
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

0000000080001274 <_ZN9Semaphore5closeEv>:
{
    return new Semaphore((int)init);
}

void Semaphore::close()
{
    80001274:	fe010113          	addi	sp,sp,-32
    80001278:	00113c23          	sd	ra,24(sp)
    8000127c:	00813823          	sd	s0,16(sp)
    80001280:	00913423          	sd	s1,8(sp)
    80001284:	01213023          	sd	s2,0(sp)
    80001288:	02010413          	addi	s0,sp,32
    8000128c:	00050913          	mv	s2,a0
    closed_ = true;
    80001290:	00100793          	li	a5,1
    80001294:	00f50223          	sb	a5,4(a0)
    80001298:	0280006f          	j	800012c0 <_ZN9Semaphore5closeEv+0x4c>
        if (!head) { tail = 0; }
    8000129c:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    800012a0:	00053483          	ld	s1,0(a0)
        delete elem;
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	c1c080e7          	jalr	-996(ra) # 80001ec0 <_ZdlPv>
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    800012ac:	02048663          	beqz	s1,800012d8 <_ZN9Semaphore5closeEv+0x64>

    void setFinished(bool value) { finished_ = value; }

    void block() { blocked_ = true; }

    void unblock() { blocked_ = false; }
    800012b0:	020484a3          	sb	zero,41(s1)
    {
        t->unblock();
        Scheduler::put(t);
    800012b4:	00048513          	mv	a0,s1
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	f18080e7          	jalr	-232(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800012c0:	00893503          	ld	a0,8(s2)
    800012c4:	00050a63          	beqz	a0,800012d8 <_ZN9Semaphore5closeEv+0x64>
        head = head->next;
    800012c8:	00853783          	ld	a5,8(a0)
    800012cc:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    800012d0:	fc0798e3          	bnez	a5,800012a0 <_ZN9Semaphore5closeEv+0x2c>
    800012d4:	fc9ff06f          	j	8000129c <_ZN9Semaphore5closeEv+0x28>
    }

    delete this;
    800012d8:	00090513          	mv	a0,s2
    800012dc:	00001097          	auipc	ra,0x1
    800012e0:	be4080e7          	jalr	-1052(ra) # 80001ec0 <_ZdlPv>
}
    800012e4:	01813083          	ld	ra,24(sp)
    800012e8:	01013403          	ld	s0,16(sp)
    800012ec:	00813483          	ld	s1,8(sp)
    800012f0:	00013903          	ld	s2,0(sp)
    800012f4:	02010113          	addi	sp,sp,32
    800012f8:	00008067          	ret

00000000800012fc <_ZN9Semaphore4waitEv>:

int Semaphore::wait()
{
    // TODO: Do we need to disable interrupts?
    if (value_ > 0)
    800012fc:	00052783          	lw	a5,0(a0)
    80001300:	00f05a63          	blez	a5,80001314 <_ZN9Semaphore4waitEv+0x18>
    {
        value_ -= 1;
    80001304:	fff7879b          	addiw	a5,a5,-1
    80001308:	00f52023          	sw	a5,0(a0)
        return 0;
    8000130c:	00000513          	li	a0,0
    blocked_.addLast(old);
    TCB::yield();

    // TODO: Check if this works as a way of detecting closed semaphores.
    return closed_ ? -1 : 0;
}
    80001310:	00008067          	ret
{
    80001314:	fe010113          	addi	sp,sp,-32
    80001318:	00113c23          	sd	ra,24(sp)
    8000131c:	00813823          	sd	s0,16(sp)
    80001320:	00913423          	sd	s1,8(sp)
    80001324:	01213023          	sd	s2,0(sp)
    80001328:	02010413          	addi	s0,sp,32
    8000132c:	00050493          	mv	s1,a0
    TCB* old = TCB::running;
    80001330:	00005797          	auipc	a5,0x5
    80001334:	df878793          	addi	a5,a5,-520 # 80006128 <_ZN3TCB7runningE>
    80001338:	0007b903          	ld	s2,0(a5)
    void block() { blocked_ = true; }
    8000133c:	00100793          	li	a5,1
    80001340:	02f904a3          	sb	a5,41(s2)
        Elem *elem = new Elem(data, 0);
    80001344:	01000513          	li	a0,16
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	af8080e7          	jalr	-1288(ra) # 80001e40 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001350:	01253023          	sd	s2,0(a0)
    80001354:	00053423          	sd	zero,8(a0)
        if (tail)
    80001358:	0104b783          	ld	a5,16(s1)
    8000135c:	02078c63          	beqz	a5,80001394 <_ZN9Semaphore4waitEv+0x98>
            tail->next = elem;
    80001360:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001364:	00a4b823          	sd	a0,16(s1)
    TCB::yield();
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	ff8080e7          	jalr	-8(ra) # 80002360 <_ZN3TCB5yieldEv>
    return closed_ ? -1 : 0;
    80001370:	0044c783          	lbu	a5,4(s1)
    80001374:	02079663          	bnez	a5,800013a0 <_ZN9Semaphore4waitEv+0xa4>
    80001378:	00000513          	li	a0,0
}
    8000137c:	01813083          	ld	ra,24(sp)
    80001380:	01013403          	ld	s0,16(sp)
    80001384:	00813483          	ld	s1,8(sp)
    80001388:	00013903          	ld	s2,0(sp)
    8000138c:	02010113          	addi	sp,sp,32
    80001390:	00008067          	ret
            head = tail = elem;
    80001394:	00a4b823          	sd	a0,16(s1)
    80001398:	00a4b423          	sd	a0,8(s1)
    8000139c:	fcdff06f          	j	80001368 <_ZN9Semaphore4waitEv+0x6c>
    return closed_ ? -1 : 0;
    800013a0:	fff00513          	li	a0,-1
    800013a4:	fd9ff06f          	j	8000137c <_ZN9Semaphore4waitEv+0x80>

00000000800013a8 <_ZN9Semaphore6signalEv>:

void Semaphore::signal()
{
    800013a8:	fe010113          	addi	sp,sp,-32
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	00813823          	sd	s0,16(sp)
    800013b4:	00913423          	sd	s1,8(sp)
    800013b8:	01213023          	sd	s2,0(sp)
    800013bc:	02010413          	addi	s0,sp,32
    800013c0:	00050493          	mv	s1,a0
        if (!head) { return 0; }
    800013c4:	00853503          	ld	a0,8(a0)
    800013c8:	04050263          	beqz	a0,8000140c <_ZN9Semaphore6signalEv+0x64>
        head = head->next;
    800013cc:	00853783          	ld	a5,8(a0)
    800013d0:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800013d4:	02078863          	beqz	a5,80001404 <_ZN9Semaphore6signalEv+0x5c>
        T *ret = elem->data;
    800013d8:	00053903          	ld	s2,0(a0)
        delete elem;
    800013dc:	00001097          	auipc	ra,0x1
    800013e0:	ae4080e7          	jalr	-1308(ra) # 80001ec0 <_ZdlPv>
    // Thread should already be in the scheduler, we just need to unblock it.
    if (TCB *t = blocked_.removeFirst())
    800013e4:	02090463          	beqz	s2,8000140c <_ZN9Semaphore6signalEv+0x64>
    void unblock() { blocked_ = false; }
    800013e8:	020904a3          	sb	zero,41(s2)
    }
    else
    {
        value_ += 1;
    }
}
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	00813483          	ld	s1,8(sp)
    800013f8:	00013903          	ld	s2,0(sp)
    800013fc:	02010113          	addi	sp,sp,32
    80001400:	00008067          	ret
        if (!head) { tail = 0; }
    80001404:	0004b823          	sd	zero,16(s1)
    80001408:	fd1ff06f          	j	800013d8 <_ZN9Semaphore6signalEv+0x30>
        value_ += 1;
    8000140c:	0004a783          	lw	a5,0(s1)
    80001410:	0017879b          	addiw	a5,a5,1
    80001414:	00f4a023          	sw	a5,0(s1)
}
    80001418:	fd5ff06f          	j	800013ec <_ZN9Semaphore6signalEv+0x44>

000000008000141c <_ZN9SemaphoreC1Ei>:

    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00813423          	sd	s0,8(sp)
    80001424:	01010413          	addi	s0,sp,16
    80001428:	00b52023          	sw	a1,0(a0)
    List() : head(0), tail(0) {}
    8000142c:	00053423          	sd	zero,8(a0)
    80001430:	00053823          	sd	zero,16(a0)
    80001434:	00813403          	ld	s0,8(sp)
    80001438:	01010113          	addi	sp,sp,16
    8000143c:	00008067          	ret

0000000080001440 <_ZN9Semaphore4openEj>:
{
    80001440:	fe010113          	addi	sp,sp,-32
    80001444:	00113c23          	sd	ra,24(sp)
    80001448:	00813823          	sd	s0,16(sp)
    8000144c:	00913423          	sd	s1,8(sp)
    80001450:	01213023          	sd	s2,0(sp)
    80001454:	02010413          	addi	s0,sp,32
    80001458:	00050913          	mv	s2,a0
    return new Semaphore((int)init);
    8000145c:	01800513          	li	a0,24
    80001460:	00001097          	auipc	ra,0x1
    80001464:	9e0080e7          	jalr	-1568(ra) # 80001e40 <_Znwm>
    80001468:	00050493          	mv	s1,a0
    8000146c:	00090593          	mv	a1,s2
    80001470:	00000097          	auipc	ra,0x0
    80001474:	fac080e7          	jalr	-84(ra) # 8000141c <_ZN9SemaphoreC1Ei>
}
    80001478:	00048513          	mv	a0,s1
    8000147c:	01813083          	ld	ra,24(sp)
    80001480:	01013403          	ld	s0,16(sp)
    80001484:	00813483          	ld	s1,8(sp)
    80001488:	00013903          	ld	s2,0(sp)
    8000148c:	02010113          	addi	sp,sp,32
    80001490:	00008067          	ret

0000000080001494 <_Z7syscall11SyscallCodemmmmmmmm>:
#include "../h/syscall_c.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800014a0:	00000073          	ecall
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    800014a4:	00050513          	mv	a0,a0
    return result;
}
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret

00000000800014b4 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    800014b4:	fe010113          	addi	sp,sp,-32
    800014b8:	00113c23          	sd	ra,24(sp)
    800014bc:	00813823          	sd	s0,16(sp)
    800014c0:	02010413          	addi	s0,sp,32
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
    800014c4:	00013023          	sd	zero,0(sp)
    800014c8:	00000893          	li	a7,0
    800014cc:	00000813          	li	a6,0
    800014d0:	00000793          	li	a5,0
    800014d4:	00000713          	li	a4,0
    800014d8:	00000693          	li	a3,0
    800014dc:	00000613          	li	a2,0
    800014e0:	00050593          	mv	a1,a0
    800014e4:	00100513          	li	a0,1
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	fac080e7          	jalr	-84(ra) # 80001494 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800014f0:	01813083          	ld	ra,24(sp)
    800014f4:	01013403          	ld	s0,16(sp)
    800014f8:	02010113          	addi	sp,sp,32
    800014fc:	00008067          	ret

0000000080001500 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001500:	fe010113          	addi	sp,sp,-32
    80001504:	00113c23          	sd	ra,24(sp)
    80001508:	00813823          	sd	s0,16(sp)
    8000150c:	02010413          	addi	s0,sp,32
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
    80001510:	00013023          	sd	zero,0(sp)
    80001514:	00000893          	li	a7,0
    80001518:	00000813          	li	a6,0
    8000151c:	00000793          	li	a5,0
    80001520:	00000713          	li	a4,0
    80001524:	00000693          	li	a3,0
    80001528:	00000613          	li	a2,0
    8000152c:	00050593          	mv	a1,a0
    80001530:	00200513          	li	a0,2
    80001534:	00000097          	auipc	ra,0x0
    80001538:	f60080e7          	jalr	-160(ra) # 80001494 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000153c:	0005051b          	sext.w	a0,a0
    80001540:	01813083          	ld	ra,24(sp)
    80001544:	01013403          	ld	s0,16(sp)
    80001548:	02010113          	addi	sp,sp,32
    8000154c:	00008067          	ret

0000000080001550 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001550:	fe010113          	addi	sp,sp,-32
    80001554:	00113c23          	sd	ra,24(sp)
    80001558:	00813823          	sd	s0,16(sp)
    8000155c:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
    80001560:	00013023          	sd	zero,0(sp)
    80001564:	00000893          	li	a7,0
    80001568:	00000813          	li	a6,0
    8000156c:	00000793          	li	a5,0
    80001570:	00000713          	li	a4,0
    80001574:	00000693          	li	a3,0
    80001578:	00000613          	li	a2,0
    8000157c:	00000593          	li	a1,0
    80001580:	00300513          	li	a0,3
    80001584:	00000097          	auipc	ra,0x0
    80001588:	f10080e7          	jalr	-240(ra) # 80001494 <_Z7syscall11SyscallCodemmmmmmmm>
}
    8000158c:	01813083          	ld	ra,24(sp)
    80001590:	01013403          	ld	s0,16(sp)
    80001594:	02010113          	addi	sp,sp,32
    80001598:	00008067          	ret

000000008000159c <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    8000159c:	fe010113          	addi	sp,sp,-32
    800015a0:	00113c23          	sd	ra,24(sp)
    800015a4:	00813823          	sd	s0,16(sp)
    800015a8:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
    800015ac:	00013023          	sd	zero,0(sp)
    800015b0:	00000893          	li	a7,0
    800015b4:	00000813          	li	a6,0
    800015b8:	00000793          	li	a5,0
    800015bc:	00000713          	li	a4,0
    800015c0:	00000693          	li	a3,0
    800015c4:	00000613          	li	a2,0
    800015c8:	00000593          	li	a1,0
    800015cc:	00400513          	li	a0,4
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	ec4080e7          	jalr	-316(ra) # 80001494 <_Z7syscall11SyscallCodemmmmmmmm>
}
    800015d8:	01813083          	ld	ra,24(sp)
    800015dc:	01013403          	ld	s0,16(sp)
    800015e0:	02010113          	addi	sp,sp,32
    800015e4:	00008067          	ret

00000000800015e8 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800015e8:	fe010113          	addi	sp,sp,-32
    800015ec:	00113c23          	sd	ra,24(sp)
    800015f0:	00813823          	sd	s0,16(sp)
    800015f4:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
    800015f8:	00013023          	sd	zero,0(sp)
    800015fc:	00000893          	li	a7,0
    80001600:	00000813          	li	a6,0
    80001604:	00000793          	li	a5,0
    80001608:	00000713          	li	a4,0
    8000160c:	00060693          	mv	a3,a2
    80001610:	00058613          	mv	a2,a1
    80001614:	00050593          	mv	a1,a0
    80001618:	01100513          	li	a0,17
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	e78080e7          	jalr	-392(ra) # 80001494 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001624:	0005051b          	sext.w	a0,a0
    80001628:	01813083          	ld	ra,24(sp)
    8000162c:	01013403          	ld	s0,16(sp)
    80001630:	02010113          	addi	sp,sp,32
    80001634:	00008067          	ret

0000000080001638 <_Z11thread_exitv>:

int thread_exit () {
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00113c23          	sd	ra,24(sp)
    80001640:	00813823          	sd	s0,16(sp)
    80001644:	02010413          	addi	s0,sp,32
    return syscall(SyscallCode::THREAD_EXIT);
    80001648:	00013023          	sd	zero,0(sp)
    8000164c:	00000893          	li	a7,0
    80001650:	00000813          	li	a6,0
    80001654:	00000793          	li	a5,0
    80001658:	00000713          	li	a4,0
    8000165c:	00000693          	li	a3,0
    80001660:	00000613          	li	a2,0
    80001664:	00000593          	li	a1,0
    80001668:	01200513          	li	a0,18
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	e28080e7          	jalr	-472(ra) # 80001494 <_Z7syscall11SyscallCodemmmmmmmm>
}
    80001674:	0005051b          	sext.w	a0,a0
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret

0000000080001688 <_Z15thread_dispatchv>:

void thread_dispatch () {
    80001688:	fe010113          	addi	sp,sp,-32
    8000168c:	00113c23          	sd	ra,24(sp)
    80001690:	00813823          	sd	s0,16(sp)
    80001694:	02010413          	addi	s0,sp,32
    syscall(SyscallCode::THREAD_DISPATCH);
    80001698:	00013023          	sd	zero,0(sp)
    8000169c:	00000893          	li	a7,0
    800016a0:	00000813          	li	a6,0
    800016a4:	00000793          	li	a5,0
    800016a8:	00000713          	li	a4,0
    800016ac:	00000693          	li	a3,0
    800016b0:	00000613          	li	a2,0
    800016b4:	00000593          	li	a1,0
    800016b8:	01300513          	li	a0,19
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	dd8080e7          	jalr	-552(ra) # 80001494 <_Z7syscall11SyscallCodemmmmmmmm>
    800016c4:	01813083          	ld	ra,24(sp)
    800016c8:	01013403          	ld	s0,16(sp)
    800016cc:	02010113          	addi	sp,sp,32
    800016d0:	00008067          	ret

00000000800016d4 <_ZL9fibonaccim>:
    }
}

static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    800016d4:	00100793          	li	a5,1
    800016d8:	06a7f863          	bgeu	a5,a0,80001748 <_ZL9fibonaccim+0x74>
{
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	01213023          	sd	s2,0(sp)
    800016f0:	02010413          	addi	s0,sp,32
    800016f4:	00050493          	mv	s1,a0
    if (n % 10 == 0) { TCB::yield(); }
    800016f8:	00a00793          	li	a5,10
    800016fc:	02f577b3          	remu	a5,a0,a5
    80001700:	02078e63          	beqz	a5,8000173c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001704:	fff48513          	addi	a0,s1,-1
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	fcc080e7          	jalr	-52(ra) # 800016d4 <_ZL9fibonaccim>
    80001710:	00050913          	mv	s2,a0
    80001714:	ffe48513          	addi	a0,s1,-2
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	fbc080e7          	jalr	-68(ra) # 800016d4 <_ZL9fibonaccim>
    80001720:	00a90533          	add	a0,s2,a0
}
    80001724:	01813083          	ld	ra,24(sp)
    80001728:	01013403          	ld	s0,16(sp)
    8000172c:	00813483          	ld	s1,8(sp)
    80001730:	00013903          	ld	s2,0(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	c24080e7          	jalr	-988(ra) # 80002360 <_ZN3TCB5yieldEv>
    80001744:	fc1ff06f          	j	80001704 <_ZL9fibonaccim+0x30>
}
    80001748:	00008067          	ret

000000008000174c <_Z12worker_ecallPv>:
void worker_ecall(void* arg) {
    8000174c:	ff010113          	addi	sp,sp,-16
    80001750:	00113423          	sd	ra,8(sp)
    80001754:	00813023          	sd	s0,0(sp)
    80001758:	01010413          	addi	s0,sp,16
    printString("Starting ecall worker\n");
    8000175c:	00004517          	auipc	a0,0x4
    80001760:	8c450513          	addi	a0,a0,-1852 # 80005020 <CONSOLE_STATUS+0x10>
    80001764:	00000097          	auipc	ra,0x0
    80001768:	7dc080e7          	jalr	2012(ra) # 80001f40 <_Z11printStringPKc>
    __asm__ volatile ("ecall");
    8000176c:	00000073          	ecall
    for(int i = 0; i < 99999999; ++i)
    80001770:	00000693          	li	a3,0
    80001774:	0080006f          	j	8000177c <_Z12worker_ecallPv+0x30>
    80001778:	0016869b          	addiw	a3,a3,1
    8000177c:	05f5e7b7          	lui	a5,0x5f5e
    80001780:	0fe78793          	addi	a5,a5,254 # 5f5e0fe <_entry-0x7a0a1f02>
    80001784:	00d7ce63          	blt	a5,a3,800017a0 <_Z12worker_ecallPv+0x54>
        for(int j = 0; j < 99999999; ++j)
    80001788:	00000713          	li	a4,0
    8000178c:	05f5e7b7          	lui	a5,0x5f5e
    80001790:	0fe78793          	addi	a5,a5,254 # 5f5e0fe <_entry-0x7a0a1f02>
    80001794:	fee7c2e3          	blt	a5,a4,80001778 <_Z12worker_ecallPv+0x2c>
    80001798:	0017071b          	addiw	a4,a4,1
    8000179c:	ff1ff06f          	j	8000178c <_Z12worker_ecallPv+0x40>
    printString("Finishing ecall worker\n");
    800017a0:	00004517          	auipc	a0,0x4
    800017a4:	89850513          	addi	a0,a0,-1896 # 80005038 <CONSOLE_STATUS+0x28>
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	798080e7          	jalr	1944(ra) # 80001f40 <_Z11printStringPKc>
}
    800017b0:	00813083          	ld	ra,8(sp)
    800017b4:	00013403          	ld	s0,0(sp)
    800017b8:	01010113          	addi	sp,sp,16
    800017bc:	00008067          	ret

00000000800017c0 <_Z11workerBodyAPv>:
{
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800017d4:	00000493          	li	s1,0
    800017d8:	0300006f          	j	80001808 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800017dc:	00168693          	addi	a3,a3,1
    800017e0:	000027b7          	lui	a5,0x2
    800017e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800017e8:	00d7ee63          	bltu	a5,a3,80001804 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800017ec:	00000713          	li	a4,0
    800017f0:	000077b7          	lui	a5,0x7
    800017f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800017f8:	fee7e2e3          	bltu	a5,a4,800017dc <_Z11workerBodyAPv+0x1c>
    800017fc:	00170713          	addi	a4,a4,1
    80001800:	ff1ff06f          	j	800017f0 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001804:	00148493          	addi	s1,s1,1
    80001808:	00900793          	li	a5,9
    8000180c:	0297ec63          	bltu	a5,s1,80001844 <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    80001810:	00004517          	auipc	a0,0x4
    80001814:	84050513          	addi	a0,a0,-1984 # 80005050 <CONSOLE_STATUS+0x40>
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	728080e7          	jalr	1832(ra) # 80001f40 <_Z11printStringPKc>
        printInteger(i);
    80001820:	00048513          	mv	a0,s1
    80001824:	00001097          	auipc	ra,0x1
    80001828:	814080e7          	jalr	-2028(ra) # 80002038 <_Z12printIntegerm>
        printString("\n");
    8000182c:	00004517          	auipc	a0,0x4
    80001830:	8ac50513          	addi	a0,a0,-1876 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	70c080e7          	jalr	1804(ra) # 80001f40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000183c:	00000693          	li	a3,0
    80001840:	fa1ff06f          	j	800017e0 <_Z11workerBodyAPv+0x20>
}
    80001844:	01813083          	ld	ra,24(sp)
    80001848:	01013403          	ld	s0,16(sp)
    8000184c:	00813483          	ld	s1,8(sp)
    80001850:	02010113          	addi	sp,sp,32
    80001854:	00008067          	ret

0000000080001858 <_Z11workerBodyBPv>:
{
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    8000186c:	00000493          	li	s1,0
    80001870:	0300006f          	j	800018a0 <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001874:	00168693          	addi	a3,a3,1
    80001878:	000027b7          	lui	a5,0x2
    8000187c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001880:	00d7ee63          	bltu	a5,a3,8000189c <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001884:	00000713          	li	a4,0
    80001888:	000077b7          	lui	a5,0x7
    8000188c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001890:	fee7e2e3          	bltu	a5,a4,80001874 <_Z11workerBodyBPv+0x1c>
    80001894:	00170713          	addi	a4,a4,1
    80001898:	ff1ff06f          	j	80001888 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    8000189c:	00148493          	addi	s1,s1,1
    800018a0:	00f00793          	li	a5,15
    800018a4:	0297ec63          	bltu	a5,s1,800018dc <_Z11workerBodyBPv+0x84>
        printString("B: i=");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	7b050513          	addi	a0,a0,1968 # 80005058 <CONSOLE_STATUS+0x48>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	690080e7          	jalr	1680(ra) # 80001f40 <_Z11printStringPKc>
        printInteger(i);
    800018b8:	00048513          	mv	a0,s1
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	77c080e7          	jalr	1916(ra) # 80002038 <_Z12printIntegerm>
        printString("\n");
    800018c4:	00004517          	auipc	a0,0x4
    800018c8:	81450513          	addi	a0,a0,-2028 # 800050d8 <CONSOLE_STATUS+0xc8>
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	674080e7          	jalr	1652(ra) # 80001f40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800018d4:	00000693          	li	a3,0
    800018d8:	fa1ff06f          	j	80001878 <_Z11workerBodyBPv+0x20>
}
    800018dc:	01813083          	ld	ra,24(sp)
    800018e0:	01013403          	ld	s0,16(sp)
    800018e4:	00813483          	ld	s1,8(sp)
    800018e8:	02010113          	addi	sp,sp,32
    800018ec:	00008067          	ret

00000000800018f0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    800018f0:	fe010113          	addi	sp,sp,-32
    800018f4:	00113c23          	sd	ra,24(sp)
    800018f8:	00813823          	sd	s0,16(sp)
    800018fc:	00913423          	sd	s1,8(sp)
    80001900:	01213023          	sd	s2,0(sp)
    80001904:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001908:	00000493          	li	s1,0
    for (; i < 3; i++)
    8000190c:	00200793          	li	a5,2
    80001910:	0297ee63          	bltu	a5,s1,8000194c <_Z11workerBodyCPv+0x5c>
    {
        printString("C: i=");
    80001914:	00003517          	auipc	a0,0x3
    80001918:	74c50513          	addi	a0,a0,1868 # 80005060 <CONSOLE_STATUS+0x50>
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	624080e7          	jalr	1572(ra) # 80001f40 <_Z11printStringPKc>
        printInteger(i);
    80001924:	00048513          	mv	a0,s1
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	710080e7          	jalr	1808(ra) # 80002038 <_Z12printIntegerm>
        printString("\n");
    80001930:	00003517          	auipc	a0,0x3
    80001934:	7a850513          	addi	a0,a0,1960 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	608080e7          	jalr	1544(ra) # 80001f40 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001940:	0014849b          	addiw	s1,s1,1
    80001944:	0ff4f493          	andi	s1,s1,255
    80001948:	fc5ff06f          	j	8000190c <_Z11workerBodyCPv+0x1c>
    }

    printString("C: yield\n");
    8000194c:	00003517          	auipc	a0,0x3
    80001950:	71c50513          	addi	a0,a0,1820 # 80005068 <CONSOLE_STATUS+0x58>
    80001954:	00000097          	auipc	ra,0x0
    80001958:	5ec080e7          	jalr	1516(ra) # 80001f40 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000195c:	00700313          	li	t1,7
    TCB::yield();
    80001960:	00001097          	auipc	ra,0x1
    80001964:	a00080e7          	jalr	-1536(ra) # 80002360 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001968:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000196c:	00003517          	auipc	a0,0x3
    80001970:	70c50513          	addi	a0,a0,1804 # 80005078 <CONSOLE_STATUS+0x68>
    80001974:	00000097          	auipc	ra,0x0
    80001978:	5cc080e7          	jalr	1484(ra) # 80001f40 <_Z11printStringPKc>
    printInteger(t1);
    8000197c:	00090513          	mv	a0,s2
    80001980:	00000097          	auipc	ra,0x0
    80001984:	6b8080e7          	jalr	1720(ra) # 80002038 <_Z12printIntegerm>
    printString("\n");
    80001988:	00003517          	auipc	a0,0x3
    8000198c:	75050513          	addi	a0,a0,1872 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001990:	00000097          	auipc	ra,0x0
    80001994:	5b0080e7          	jalr	1456(ra) # 80001f40 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001998:	00c00513          	li	a0,12
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	d38080e7          	jalr	-712(ra) # 800016d4 <_ZL9fibonaccim>
    800019a4:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800019a8:	00003517          	auipc	a0,0x3
    800019ac:	6d850513          	addi	a0,a0,1752 # 80005080 <CONSOLE_STATUS+0x70>
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	590080e7          	jalr	1424(ra) # 80001f40 <_Z11printStringPKc>
    printInteger(result);
    800019b8:	00090513          	mv	a0,s2
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	67c080e7          	jalr	1660(ra) # 80002038 <_Z12printIntegerm>
    printString("\n");
    800019c4:	00003517          	auipc	a0,0x3
    800019c8:	71450513          	addi	a0,a0,1812 # 800050d8 <CONSOLE_STATUS+0xc8>
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	574080e7          	jalr	1396(ra) # 80001f40 <_Z11printStringPKc>

    for (; i < 6; i++)
    800019d4:	00500793          	li	a5,5
    800019d8:	0297ee63          	bltu	a5,s1,80001a14 <_Z11workerBodyCPv+0x124>
    {
        printString("C: i=");
    800019dc:	00003517          	auipc	a0,0x3
    800019e0:	68450513          	addi	a0,a0,1668 # 80005060 <CONSOLE_STATUS+0x50>
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	55c080e7          	jalr	1372(ra) # 80001f40 <_Z11printStringPKc>
        printInteger(i);
    800019ec:	00048513          	mv	a0,s1
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	648080e7          	jalr	1608(ra) # 80002038 <_Z12printIntegerm>
        printString("\n");
    800019f8:	00003517          	auipc	a0,0x3
    800019fc:	6e050513          	addi	a0,a0,1760 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	540080e7          	jalr	1344(ra) # 80001f40 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001a08:	0014849b          	addiw	s1,s1,1
    80001a0c:	0ff4f493          	andi	s1,s1,255
    80001a10:	fc5ff06f          	j	800019d4 <_Z11workerBodyCPv+0xe4>
    }
//    TCB::yield();
}
    80001a14:	01813083          	ld	ra,24(sp)
    80001a18:	01013403          	ld	s0,16(sp)
    80001a1c:	00813483          	ld	s1,8(sp)
    80001a20:	00013903          	ld	s2,0(sp)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00008067          	ret

0000000080001a2c <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80001a2c:	fe010113          	addi	sp,sp,-32
    80001a30:	00113c23          	sd	ra,24(sp)
    80001a34:	00813823          	sd	s0,16(sp)
    80001a38:	00913423          	sd	s1,8(sp)
    80001a3c:	01213023          	sd	s2,0(sp)
    80001a40:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a44:	00a00493          	li	s1,10
    for (; i < 13; i++)
    80001a48:	00c00793          	li	a5,12
    80001a4c:	0297ee63          	bltu	a5,s1,80001a88 <_Z11workerBodyDPv+0x5c>
    {
        printString("D: i=");
    80001a50:	00003517          	auipc	a0,0x3
    80001a54:	64050513          	addi	a0,a0,1600 # 80005090 <CONSOLE_STATUS+0x80>
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	4e8080e7          	jalr	1256(ra) # 80001f40 <_Z11printStringPKc>
        printInteger(i);
    80001a60:	00048513          	mv	a0,s1
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	5d4080e7          	jalr	1492(ra) # 80002038 <_Z12printIntegerm>
        printString("\n");
    80001a6c:	00003517          	auipc	a0,0x3
    80001a70:	66c50513          	addi	a0,a0,1644 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	4cc080e7          	jalr	1228(ra) # 80001f40 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a7c:	0014849b          	addiw	s1,s1,1
    80001a80:	0ff4f493          	andi	s1,s1,255
    80001a84:	fc5ff06f          	j	80001a48 <_Z11workerBodyDPv+0x1c>
    }

    printString("D: yield\n");
    80001a88:	00003517          	auipc	a0,0x3
    80001a8c:	61050513          	addi	a0,a0,1552 # 80005098 <CONSOLE_STATUS+0x88>
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	4b0080e7          	jalr	1200(ra) # 80001f40 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a98:	00500313          	li	t1,5
    TCB::yield();
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	8c4080e7          	jalr	-1852(ra) # 80002360 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001aa4:	01000513          	li	a0,16
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	c2c080e7          	jalr	-980(ra) # 800016d4 <_ZL9fibonaccim>
    80001ab0:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001ab4:	00003517          	auipc	a0,0x3
    80001ab8:	5f450513          	addi	a0,a0,1524 # 800050a8 <CONSOLE_STATUS+0x98>
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	484080e7          	jalr	1156(ra) # 80001f40 <_Z11printStringPKc>
    printInteger(result);
    80001ac4:	00090513          	mv	a0,s2
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	570080e7          	jalr	1392(ra) # 80002038 <_Z12printIntegerm>
    printString("\n");
    80001ad0:	00003517          	auipc	a0,0x3
    80001ad4:	60850513          	addi	a0,a0,1544 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	468080e7          	jalr	1128(ra) # 80001f40 <_Z11printStringPKc>

    for (; i < 16; i++)
    80001ae0:	00f00793          	li	a5,15
    80001ae4:	0297ee63          	bltu	a5,s1,80001b20 <_Z11workerBodyDPv+0xf4>
    {
        printString("D: i=");
    80001ae8:	00003517          	auipc	a0,0x3
    80001aec:	5a850513          	addi	a0,a0,1448 # 80005090 <CONSOLE_STATUS+0x80>
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	450080e7          	jalr	1104(ra) # 80001f40 <_Z11printStringPKc>
        printInteger(i);
    80001af8:	00048513          	mv	a0,s1
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	53c080e7          	jalr	1340(ra) # 80002038 <_Z12printIntegerm>
        printString("\n");
    80001b04:	00003517          	auipc	a0,0x3
    80001b08:	5d450513          	addi	a0,a0,1492 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	434080e7          	jalr	1076(ra) # 80001f40 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001b14:	0014849b          	addiw	s1,s1,1
    80001b18:	0ff4f493          	andi	s1,s1,255
    80001b1c:	fc5ff06f          	j	80001ae0 <_Z11workerBodyDPv+0xb4>
    }
//    TCB::yield();
}
    80001b20:	01813083          	ld	ra,24(sp)
    80001b24:	01013403          	ld	s0,16(sp)
    80001b28:	00813483          	ld	s1,8(sp)
    80001b2c:	00013903          	ld	s2,0(sp)
    80001b30:	02010113          	addi	sp,sp,32
    80001b34:	00008067          	ret

0000000080001b38 <_Z10workerTestPv>:

void workerTest(void* arg)
{
    80001b38:	fe010113          	addi	sp,sp,-32
    80001b3c:	00113c23          	sd	ra,24(sp)
    80001b40:	00813823          	sd	s0,16(sp)
    80001b44:	00913423          	sd	s1,8(sp)
    80001b48:	02010413          	addi	s0,sp,32
    printString("--------------------------------\n");
    80001b4c:	00003517          	auipc	a0,0x3
    80001b50:	56c50513          	addi	a0,a0,1388 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	3ec080e7          	jalr	1004(ra) # 80001f40 <_Z11printStringPKc>
    printString("Starting test\n");
    80001b5c:	00003517          	auipc	a0,0x3
    80001b60:	58450513          	addi	a0,a0,1412 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	3dc080e7          	jalr	988(ra) # 80001f40 <_Z11printStringPKc>
    printString("--------------------------------\n");
    80001b6c:	00003517          	auipc	a0,0x3
    80001b70:	54c50513          	addi	a0,a0,1356 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	3cc080e7          	jalr	972(ra) # 80001f40 <_Z11printStringPKc>

    void* ptr = mem_alloc(1024);
    80001b7c:	40000513          	li	a0,1024
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	934080e7          	jalr	-1740(ra) # 800014b4 <_Z9mem_allocm>
    80001b88:	00050493          	mv	s1,a0
    printString("ptr=");
    80001b8c:	00003517          	auipc	a0,0x3
    80001b90:	56450513          	addi	a0,a0,1380 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	3ac080e7          	jalr	940(ra) # 80001f40 <_Z11printStringPKc>
    printInteger((uint64)ptr);
    80001b9c:	00048513          	mv	a0,s1
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	498080e7          	jalr	1176(ra) # 80002038 <_Z12printIntegerm>
    printString("\n");
    80001ba8:	00003517          	auipc	a0,0x3
    80001bac:	53050513          	addi	a0,a0,1328 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	390080e7          	jalr	912(ra) # 80001f40 <_Z11printStringPKc>

    mem_free(ptr);
    80001bb8:	00048513          	mv	a0,s1
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	944080e7          	jalr	-1724(ra) # 80001500 <_Z8mem_freePv>
    printString("ptr freed\n");
    80001bc4:	00003517          	auipc	a0,0x3
    80001bc8:	53450513          	addi	a0,a0,1332 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	374080e7          	jalr	884(ra) # 80001f40 <_Z11printStringPKc>

    printString("--------------------------------\n");
    80001bd4:	00003517          	auipc	a0,0x3
    80001bd8:	4e450513          	addi	a0,a0,1252 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	364080e7          	jalr	868(ra) # 80001f40 <_Z11printStringPKc>
    printString("Test finished\n");
    80001be4:	00003517          	auipc	a0,0x3
    80001be8:	52450513          	addi	a0,a0,1316 # 80005108 <CONSOLE_STATUS+0xf8>
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	354080e7          	jalr	852(ra) # 80001f40 <_Z11printStringPKc>
    printString("--------------------------------\n");
    80001bf4:	00003517          	auipc	a0,0x3
    80001bf8:	4c450513          	addi	a0,a0,1220 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	344080e7          	jalr	836(ra) # 80001f40 <_Z11printStringPKc>

    80001c04:	01813083          	ld	ra,24(sp)
    80001c08:	01013403          	ld	s0,16(sp)
    80001c0c:	00813483          	ld	s1,8(sp)
    80001c10:	02010113          	addi	sp,sp,32
    80001c14:	00008067          	ret

0000000080001c18 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00813423          	sd	s0,8(sp)
    80001c20:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001c24:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001c28:	10200073          	sret
}
    80001c2c:	00813403          	ld	s0,8(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001c38:	f9010113          	addi	sp,sp,-112
    80001c3c:	06113423          	sd	ra,104(sp)
    80001c40:	06813023          	sd	s0,96(sp)
    80001c44:	04913c23          	sd	s1,88(sp)
    80001c48:	07010413          	addi	s0,sp,112
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c4c:	142027f3          	csrr	a5,scause
    80001c50:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001c54:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001c58:	ff870693          	addi	a3,a4,-8
    80001c5c:	00100793          	li	a5,1
    80001c60:	02d7f863          	bgeu	a5,a3,80001c90 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001c64:	fff00793          	li	a5,-1
    80001c68:	03f79793          	slli	a5,a5,0x3f
    80001c6c:	00178793          	addi	a5,a5,1
    80001c70:	14f70e63          	beq	a4,a5,80001dcc <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001c74:	fff00793          	li	a5,-1
    80001c78:	03f79793          	slli	a5,a5,0x3f
    80001c7c:	00978793          	addi	a5,a5,9
    80001c80:	0af71263          	bne	a4,a5,80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80001c84:	00003097          	auipc	ra,0x3
    80001c88:	f9c080e7          	jalr	-100(ra) # 80004c20 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001c8c:	0980006f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c90:	141027f3          	csrr	a5,sepc
    80001c94:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c98:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001c9c:	00478793          	addi	a5,a5,4
    80001ca0:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ca4:	100027f3          	csrr	a5,sstatus
    80001ca8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001cac:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001cb0:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001cb4:	00050793          	mv	a5,a0
        __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001cb8:	00058493          	mv	s1,a1
        __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001cbc:	00060593          	mv	a1,a2
        __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001cc0:	00068713          	mv	a4,a3
        __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001cc4:	00070713          	mv	a4,a4
        __asm__ volatile ("mv %0, a5" : "=r"(a5));
    80001cc8:	00078713          	mv	a4,a5
        __asm__ volatile ("mv %0, a6" : "=r"(a6));
    80001ccc:	00080713          	mv	a4,a6
        __asm__ volatile ("mv %0, a7" : "=r"(a7));
    80001cd0:	00088713          	mv	a4,a7
        switch (a0) {
    80001cd4:	01300713          	li	a4,19
    80001cd8:	0ef76263          	bltu	a4,a5,80001dbc <_ZN5Riscv20handleSupervisorTrapEv+0x184>
    80001cdc:	00279793          	slli	a5,a5,0x2
    80001ce0:	00003717          	auipc	a4,0x3
    80001ce4:	43870713          	addi	a4,a4,1080 # 80005118 <CONSOLE_STATUS+0x108>
    80001ce8:	00e787b3          	add	a5,a5,a4
    80001cec:	0007a783          	lw	a5,0(a5)
    80001cf0:	00e787b3          	add	a5,a5,a4
    80001cf4:	00078067          	jr	a5
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	744080e7          	jalr	1860(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001d00:	00048593          	mv	a1,s1
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	89c080e7          	jalr	-1892(ra) # 800025a0 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0, %0" : : "r"(res));
    80001d0c:	00050513          	mv	a0,a0
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));
    80001d10:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001d14:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d18:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001d1c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d20:	14179073          	csrw	sepc,a5
    80001d24:	06813083          	ld	ra,104(sp)
    80001d28:	06013403          	ld	s0,96(sp)
    80001d2c:	05813483          	ld	s1,88(sp)
    80001d30:	07010113          	addi	sp,sp,112
    80001d34:	00008067          	ret
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	704080e7          	jalr	1796(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001d40:	00048593          	mv	a1,s1
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	bac080e7          	jalr	-1108(ra) # 800028f0 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001d4c:	fc1ff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_free_space();
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	6ec080e7          	jalr	1772(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	a44080e7          	jalr	-1468(ra) # 8000279c <_ZN15MemoryAllocator18mem_get_free_spaceEv>
        uint64 res = 0;
    80001d60:	00000513          	li	a0,0
                break;
    80001d64:	fa9ff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	6d4080e7          	jalr	1748(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	9f8080e7          	jalr	-1544(ra) # 80002768 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
        uint64 res = 0;
    80001d78:	00000513          	li	a0,0
                break;
    80001d7c:	f91ff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                *handle = (thread_t)TCB::createThread((void(*)(void*))a1, (void*)a2);
    80001d80:	00048513          	mv	a0,s1
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	48c080e7          	jalr	1164(ra) # 80002210 <_ZN3TCB12createThreadEPFvPvES0_>
    80001d8c:	00a4b023          	sd	a0,0(s1)
                if (!(*handle))
    80001d90:	02050a63          	beqz	a0,80001dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
        uint64 res = 0;
    80001d94:	00000513          	li	a0,0
    80001d98:	f75ff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::exit();
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	648080e7          	jalr	1608(ra) # 800023e4 <_ZN3TCB4exitEv>
        uint64 res = 0;
    80001da4:	00000513          	li	a0,0
                break;
    80001da8:	f65ff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                TCB::dispatch();
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	540080e7          	jalr	1344(ra) # 800022ec <_ZN3TCB8dispatchEv>
        uint64 res = 0;
    80001db4:	00000513          	li	a0,0
                break;
    80001db8:	f55ff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        uint64 res = 0;
    80001dbc:	00000513          	li	a0,0
    80001dc0:	f4dff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
                    res = -1;
    80001dc4:	fff00513          	li	a0,-1
    80001dc8:	f45ff06f          	j	80001d0c <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001dcc:	00200793          	li	a5,2
    80001dd0:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001dd4:	00004717          	auipc	a4,0x4
    80001dd8:	34c70713          	addi	a4,a4,844 # 80006120 <_ZN3TCB16timeSliceCounterE>
    80001ddc:	00073783          	ld	a5,0(a4)
    80001de0:	00178793          	addi	a5,a5,1
    80001de4:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001de8:	00004717          	auipc	a4,0x4
    80001dec:	34070713          	addi	a4,a4,832 # 80006128 <_ZN3TCB7runningE>
    80001df0:	00073703          	ld	a4,0(a4)

    bool isBlocked() { return blocked_; }

    uint64 getTimeSlice() const { return timeSlice; }
    80001df4:	02873703          	ld	a4,40(a4)
    80001df8:	f2e7e6e3          	bltu	a5,a4,80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001dfc:	141027f3          	csrr	a5,sepc
    80001e00:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001e04:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001e08:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e0c:	100027f3          	csrr	a5,sstatus
    80001e10:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001e14:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001e18:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80001e1c:	00004797          	auipc	a5,0x4
    80001e20:	3007b223          	sd	zero,772(a5) # 80006120 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	4c8080e7          	jalr	1224(ra) # 800022ec <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001e2c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e30:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001e34:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e38:	14179073          	csrw	sepc,a5
    80001e3c:	ee9ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0xec>

0000000080001e40 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001e40:	fe010113          	addi	sp,sp,-32
    80001e44:	00113c23          	sd	ra,24(sp)
    80001e48:	00813823          	sd	s0,16(sp)
    80001e4c:	00913423          	sd	s1,8(sp)
    80001e50:	02010413          	addi	s0,sp,32
    80001e54:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	5e4080e7          	jalr	1508(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001e60:	00048593          	mv	a1,s1
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	73c080e7          	jalr	1852(ra) # 800025a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e6c:	01813083          	ld	ra,24(sp)
    80001e70:	01013403          	ld	s0,16(sp)
    80001e74:	00813483          	ld	s1,8(sp)
    80001e78:	02010113          	addi	sp,sp,32
    80001e7c:	00008067          	ret

0000000080001e80 <_Znam>:

void *operator new[](size_t n)
{
    80001e80:	fe010113          	addi	sp,sp,-32
    80001e84:	00113c23          	sd	ra,24(sp)
    80001e88:	00813823          	sd	s0,16(sp)
    80001e8c:	00913423          	sd	s1,8(sp)
    80001e90:	02010413          	addi	s0,sp,32
    80001e94:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	5a4080e7          	jalr	1444(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001ea0:	00048593          	mv	a1,s1
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	6fc080e7          	jalr	1788(ra) # 800025a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001eac:	01813083          	ld	ra,24(sp)
    80001eb0:	01013403          	ld	s0,16(sp)
    80001eb4:	00813483          	ld	s1,8(sp)
    80001eb8:	02010113          	addi	sp,sp,32
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001ec0:	fe010113          	addi	sp,sp,-32
    80001ec4:	00113c23          	sd	ra,24(sp)
    80001ec8:	00813823          	sd	s0,16(sp)
    80001ecc:	00913423          	sd	s1,8(sp)
    80001ed0:	02010413          	addi	s0,sp,32
    80001ed4:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	564080e7          	jalr	1380(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001ee0:	00048593          	mv	a1,s1
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	a0c080e7          	jalr	-1524(ra) # 800028f0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001eec:	01813083          	ld	ra,24(sp)
    80001ef0:	01013403          	ld	s0,16(sp)
    80001ef4:	00813483          	ld	s1,8(sp)
    80001ef8:	02010113          	addi	sp,sp,32
    80001efc:	00008067          	ret

0000000080001f00 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001f00:	fe010113          	addi	sp,sp,-32
    80001f04:	00113c23          	sd	ra,24(sp)
    80001f08:	00813823          	sd	s0,16(sp)
    80001f0c:	00913423          	sd	s1,8(sp)
    80001f10:	02010413          	addi	s0,sp,32
    80001f14:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	524080e7          	jalr	1316(ra) # 8000243c <_ZN15MemoryAllocator11getInstanceEv>
    80001f20:	00048593          	mv	a1,s1
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	9cc080e7          	jalr	-1588(ra) # 800028f0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001f2c:	01813083          	ld	ra,24(sp)
    80001f30:	01013403          	ld	s0,16(sp)
    80001f34:	00813483          	ld	s1,8(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret

0000000080001f40 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f40:	fd010113          	addi	sp,sp,-48
    80001f44:	02113423          	sd	ra,40(sp)
    80001f48:	02813023          	sd	s0,32(sp)
    80001f4c:	00913c23          	sd	s1,24(sp)
    80001f50:	01213823          	sd	s2,16(sp)
    80001f54:	03010413          	addi	s0,sp,48
    80001f58:	00050493          	mv	s1,a0
inline uint64 Riscv::r_sstatus()
    80001f5c:	100027f3          	csrr	a5,sstatus
    80001f60:	fcf43c23          	sd	a5,-40(s0)
{
    80001f64:	fd843903          	ld	s2,-40(s0)

    80001f68:	00200793          	li	a5,2
    80001f6c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001f70:	0004c503          	lbu	a0,0(s1)
    80001f74:	00050a63          	beqz	a0,80001f88 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001f78:	00003097          	auipc	ra,0x3
    80001f7c:	c34080e7          	jalr	-972(ra) # 80004bac <__putc>
        string++;
    80001f80:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f84:	fedff06f          	j	80001f70 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f88:	0009091b          	sext.w	s2,s2
    80001f8c:	00297913          	andi	s2,s2,2
    80001f90:	0009091b          	sext.w	s2,s2

    80001f94:	10092073          	csrs	sstatus,s2
}
    80001f98:	02813083          	ld	ra,40(sp)
    80001f9c:	02013403          	ld	s0,32(sp)
    80001fa0:	01813483          	ld	s1,24(sp)
    80001fa4:	01013903          	ld	s2,16(sp)
    80001fa8:	03010113          	addi	sp,sp,48
    80001fac:	00008067          	ret

0000000080001fb0 <_Z11debug_printPKc>:
    #if DEBUG_PRINT == 1
    printInteger(integer);
    #endif
}

void debug_print(char const *string) {
    80001fb0:	ff010113          	addi	sp,sp,-16
    80001fb4:	00113423          	sd	ra,8(sp)
    80001fb8:	00813023          	sd	s0,0(sp)
    80001fbc:	01010413          	addi	s0,sp,16
    #if DEBUG_PRINT == 1
    printString(string);
    80001fc0:	00000097          	auipc	ra,0x0
    80001fc4:	f80080e7          	jalr	-128(ra) # 80001f40 <_Z11printStringPKc>
    #endif
}
    80001fc8:	00813083          	ld	ra,8(sp)
    80001fcc:	00013403          	ld	s0,0(sp)
    80001fd0:	01010113          	addi	sp,sp,16
    80001fd4:	00008067          	ret

0000000080001fd8 <_Z6assertbPKc>:

void assert(bool condition, char const *debug_message) {
    if (!condition) {
    80001fd8:	00050463          	beqz	a0,80001fe0 <_Z6assertbPKc+0x8>
    80001fdc:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00113c23          	sd	ra,24(sp)
    80001fe8:	00813823          	sd	s0,16(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    80001ff8:	00003517          	auipc	a0,0x3
    80001ffc:	18050513          	addi	a0,a0,384 # 80005178 <_ZZ12printIntegermE6digits+0x10>
    80002000:	00000097          	auipc	ra,0x0
    80002004:	fb0080e7          	jalr	-80(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print(debug_message);
    80002008:	00048513          	mv	a0,s1
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	fa4080e7          	jalr	-92(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print("\n");
    80002014:	00003517          	auipc	a0,0x3
    80002018:	0c450513          	addi	a0,a0,196 # 800050d8 <CONSOLE_STATUS+0xc8>
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	f94080e7          	jalr	-108(ra) # 80001fb0 <_Z11debug_printPKc>
    }
}
    80002024:	01813083          	ld	ra,24(sp)
    80002028:	01013403          	ld	s0,16(sp)
    8000202c:	00813483          	ld	s1,8(sp)
    80002030:	02010113          	addi	sp,sp,32
    80002034:	00008067          	ret

0000000080002038 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002038:	fc010113          	addi	sp,sp,-64
    8000203c:	02113c23          	sd	ra,56(sp)
    80002040:	02813823          	sd	s0,48(sp)
    80002044:	02913423          	sd	s1,40(sp)
    80002048:	03213023          	sd	s2,32(sp)
    8000204c:	04010413          	addi	s0,sp,64
inline uint64 Riscv::r_sstatus()
    80002050:	100027f3          	csrr	a5,sstatus
    80002054:	fcf43423          	sd	a5,-56(s0)
{
    80002058:	fc843903          	ld	s2,-56(s0)

    8000205c:	00200793          	li	a5,2
    80002060:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002064:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002068:	00000713          	li	a4,0
    8000206c:	0080006f          	j	80002074 <_Z12printIntegerm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80002070:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    80002074:	00a00793          	li	a5,10
    80002078:	02f5763b          	remuw	a2,a0,a5
    8000207c:	0017049b          	addiw	s1,a4,1
    80002080:	00003697          	auipc	a3,0x3
    80002084:	0e868693          	addi	a3,a3,232 # 80005168 <_ZZ12printIntegermE6digits>
    80002088:	00c686b3          	add	a3,a3,a2
    8000208c:	0006c683          	lbu	a3,0(a3)
    80002090:	fe040613          	addi	a2,s0,-32
    80002094:	00e60733          	add	a4,a2,a4
    80002098:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    8000209c:	02f557bb          	divuw	a5,a0,a5
    800020a0:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    800020a4:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    800020a8:	00900793          	li	a5,9
    800020ac:	fca7e2e3          	bltu	a5,a0,80002070 <_Z12printIntegerm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800020b0:	fff4849b          	addiw	s1,s1,-1
    800020b4:	0004ce63          	bltz	s1,800020d0 <_Z12printIntegerm+0x98>
    800020b8:	fe040793          	addi	a5,s0,-32
    800020bc:	009787b3          	add	a5,a5,s1
    800020c0:	ff07c503          	lbu	a0,-16(a5)
    800020c4:	00003097          	auipc	ra,0x3
    800020c8:	ae8080e7          	jalr	-1304(ra) # 80004bac <__putc>
    800020cc:	fe5ff06f          	j	800020b0 <_Z12printIntegerm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800020d0:	0009091b          	sext.w	s2,s2
    800020d4:	00297913          	andi	s2,s2,2
    800020d8:	0009091b          	sext.w	s2,s2

    800020dc:	10092073          	csrs	sstatus,s2
    800020e0:	03813083          	ld	ra,56(sp)
    800020e4:	03013403          	ld	s0,48(sp)
    800020e8:	02813483          	ld	s1,40(sp)
    800020ec:	02013903          	ld	s2,32(sp)
    800020f0:	04010113          	addi	sp,sp,64
    800020f4:	00008067          	ret

00000000800020f8 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00113423          	sd	ra,8(sp)
    80002100:	00813023          	sd	s0,0(sp)
    80002104:	01010413          	addi	s0,sp,16
    printInteger(integer);
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	f30080e7          	jalr	-208(ra) # 80002038 <_Z12printIntegerm>
}
    80002110:	00813083          	ld	ra,8(sp)
    80002114:	00013403          	ld	s0,0(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret

0000000080002120 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    80002120:	fd010113          	addi	sp,sp,-48
    80002124:	02113423          	sd	ra,40(sp)
    80002128:	02813023          	sd	s0,32(sp)
    8000212c:	00913c23          	sd	s1,24(sp)
    80002130:	01213823          	sd	s2,16(sp)
    80002134:	03010413          	addi	s0,sp,48
    TCB *threads[2];

    debug_print("Main thread created\n");
    80002138:	00003517          	auipc	a0,0x3
    8000213c:	05850513          	addi	a0,a0,88 # 80005190 <_ZZ12printIntegermE6digits+0x28>
    80002140:	00000097          	auipc	ra,0x0
    80002144:	e70080e7          	jalr	-400(ra) # 80001fb0 <_Z11debug_printPKc>
    threads[0] = TCB::createThread(nullptr, nullptr);
    80002148:	00000593          	li	a1,0
    8000214c:	00000513          	li	a0,0
    80002150:	00000097          	auipc	ra,0x0
    80002154:	0c0080e7          	jalr	192(ra) # 80002210 <_ZN3TCB12createThreadEPFvPvES0_>
    80002158:	fca43823          	sd	a0,-48(s0)
    TCB::running = threads[0];
    8000215c:	00004797          	auipc	a5,0x4
    80002160:	fca7b623          	sd	a0,-52(a5) # 80006128 <_ZN3TCB7runningE>

    threads[1] = TCB::createThread(workerTest, nullptr);
    80002164:	00000593          	li	a1,0
    80002168:	00000517          	auipc	a0,0x0
    8000216c:	9d050513          	addi	a0,a0,-1584 # 80001b38 <_Z10workerTestPv>
    80002170:	00000097          	auipc	ra,0x0
    80002174:	0a0080e7          	jalr	160(ra) # 80002210 <_ZN3TCB12createThreadEPFvPvES0_>
    80002178:	fca43c23          	sd	a0,-40(s0)
    // threads[3] = TCB::createThread(workerBodyC, nullptr);
    // printString("ThreadC created\n");
    // threads[4] = TCB::createThread(workerBodyD, nullptr);
    // printString("ThreadD created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    8000217c:	fffff797          	auipc	a5,0xfffff
    80002180:	e8478793          	addi	a5,a5,-380 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002184:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002188:	00200793          	li	a5,2
    8000218c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!threads[1]->isFinished())
    80002190:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished_; }
    80002194:	0307c783          	lbu	a5,48(a5)
    80002198:	00079863          	bnez	a5,800021a8 <main+0x88>
        TCB::yield();
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	1c4080e7          	jalr	452(ra) # 80002360 <_ZN3TCB5yieldEv>
    800021a4:	fedff06f          	j	80002190 <main+0x70>

    for (auto &thread: threads)
    800021a8:	fd040493          	addi	s1,s0,-48
    800021ac:	0140006f          	j	800021c0 <main+0xa0>
    {
        delete thread;
    800021b0:	00090513          	mv	a0,s2
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	d0c080e7          	jalr	-756(ra) # 80001ec0 <_ZdlPv>
    for (auto &thread: threads)
    800021bc:	00848493          	addi	s1,s1,8
    800021c0:	fe040793          	addi	a5,s0,-32
    800021c4:	02f48063          	beq	s1,a5,800021e4 <main+0xc4>
        delete thread;
    800021c8:	0004b903          	ld	s2,0(s1)
    800021cc:	fe0908e3          	beqz	s2,800021bc <main+0x9c>
    ~TCB() { delete[] stack; }
    800021d0:	01093503          	ld	a0,16(s2)
    800021d4:	fc050ee3          	beqz	a0,800021b0 <main+0x90>
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	d28080e7          	jalr	-728(ra) # 80001f00 <_ZdaPv>
    800021e0:	fd1ff06f          	j	800021b0 <main+0x90>
    }
    printString("Finished\n");
    800021e4:	00003517          	auipc	a0,0x3
    800021e8:	fc450513          	addi	a0,a0,-60 # 800051a8 <_ZZ12printIntegermE6digits+0x40>
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	d54080e7          	jalr	-684(ra) # 80001f40 <_Z11printStringPKc>

    return 0;
}
    800021f4:	00000513          	li	a0,0
    800021f8:	02813083          	ld	ra,40(sp)
    800021fc:	02013403          	ld	s0,32(sp)
    80002200:	01813483          	ld	s1,24(sp)
    80002204:	01013903          	ld	s2,16(sp)
    80002208:	03010113          	addi	sp,sp,48
    8000220c:	00008067          	ret

0000000080002210 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    80002210:	fd010113          	addi	sp,sp,-48
    80002214:	02113423          	sd	ra,40(sp)
    80002218:	02813023          	sd	s0,32(sp)
    8000221c:	00913c23          	sd	s1,24(sp)
    80002220:	01213823          	sd	s2,16(sp)
    80002224:	01313423          	sd	s3,8(sp)
    80002228:	03010413          	addi	s0,sp,48
    8000222c:	00050913          	mv	s2,a0
    80002230:	00058993          	mv	s3,a1
    return new TCB(body, arg, TIME_SLICE);
    80002234:	03800513          	li	a0,56
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	c08080e7          	jalr	-1016(ra) # 80001e40 <_Znwm>
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
    8000224c:	00090a63          	beqz	s2,80002260 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002250:	00002537          	lui	a0,0x2
    80002254:	00000097          	auipc	ra,0x0
    80002258:	c2c080e7          	jalr	-980(ra) # 80001e80 <_Znam>
    8000225c:	0080006f          	j	80002264 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80002260:	00000513          	li	a0,0
            blocked_(false)
    80002264:	00a4b823          	sd	a0,16(s1)
    80002268:	00000797          	auipc	a5,0x0
    8000226c:	12078793          	addi	a5,a5,288 # 80002388 <_ZN3TCB13threadWrapperEv>
    80002270:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002274:	02050a63          	beqz	a0,800022a8 <_ZN3TCB12createThreadEPFvPvES0_+0x98>
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
    80002294:	02090c63          	beqz	s2,800022cc <_ZN3TCB12createThreadEPFvPvES0_+0xbc>
    80002298:	00048513          	mv	a0,s1
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	f34080e7          	jalr	-204(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
    800022a4:	0280006f          	j	800022cc <_ZN3TCB12createThreadEPFvPvES0_+0xbc>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800022a8:	00000513          	li	a0,0
    800022ac:	fd5ff06f          	j	80002280 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    800022b0:	00050913          	mv	s2,a0
    800022b4:	00048513          	mv	a0,s1
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	c08080e7          	jalr	-1016(ra) # 80001ec0 <_ZdlPv>
    800022c0:	00090513          	mv	a0,s2
    800022c4:	00005097          	auipc	ra,0x5
    800022c8:	f74080e7          	jalr	-140(ra) # 80007238 <_Unwind_Resume>
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
    dispatch();
}

// Releases the old process and starts a new one.
void TCB::dispatch()
{
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    // Put the process back into the queue if it isn't finished and if it isn't
    // blocked.
    TCB *old = running;
    80002300:	00004797          	auipc	a5,0x4
    80002304:	e2878793          	addi	a5,a5,-472 # 80006128 <_ZN3TCB7runningE>
    80002308:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return finished_; }
    8000230c:	0304c783          	lbu	a5,48(s1)
    // TODO: Should we delete the old thread?
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002310:	00079663          	bnez	a5,8000231c <_ZN3TCB8dispatchEv+0x30>
    bool isBlocked() { return blocked_; }
    80002314:	0314c783          	lbu	a5,49(s1)
    80002318:	02078c63          	beqz	a5,80002350 <_ZN3TCB8dispatchEv+0x64>

    running = Scheduler::get();
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	e48080e7          	jalr	-440(ra) # 80001164 <_ZN9Scheduler3getEv>
    80002324:	00004797          	auipc	a5,0x4
    80002328:	e0a7b223          	sd	a0,-508(a5) # 80006128 <_ZN3TCB7runningE>

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
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002350:	00048513          	mv	a0,s1
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	e7c080e7          	jalr	-388(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
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

0000000080002388 <_ZN3TCB13threadWrapperEv>:

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    80002388:	fe010113          	addi	sp,sp,-32
    8000238c:	00113c23          	sd	ra,24(sp)
    80002390:	00813823          	sd	s0,16(sp)
    80002394:	00913423          	sd	s1,8(sp)
    80002398:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	87c080e7          	jalr	-1924(ra) # 80001c18 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg_);
    800023a4:	00004497          	auipc	s1,0x4
    800023a8:	d8448493          	addi	s1,s1,-636 # 80006128 <_ZN3TCB7runningE>
    800023ac:	0004b783          	ld	a5,0(s1)
    800023b0:	0007b703          	ld	a4,0(a5)
    800023b4:	0087b503          	ld	a0,8(a5)
    800023b8:	000700e7          	jalr	a4
    running->setFinished(true);
    800023bc:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished_ = value; }
    800023c0:	00100713          	li	a4,1
    800023c4:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	f98080e7          	jalr	-104(ra) # 80002360 <_ZN3TCB5yieldEv>
}
    800023d0:	01813083          	ld	ra,24(sp)
    800023d4:	01013403          	ld	s0,16(sp)
    800023d8:	00813483          	ld	s1,8(sp)
    800023dc:	02010113          	addi	sp,sp,32
    800023e0:	00008067          	ret

00000000800023e4 <_ZN3TCB4exitEv>:

void TCB::exit() {
    800023e4:	fe010113          	addi	sp,sp,-32
    800023e8:	00113c23          	sd	ra,24(sp)
    800023ec:	00813823          	sd	s0,16(sp)
    800023f0:	00913423          	sd	s1,8(sp)
    800023f4:	01213023          	sd	s2,0(sp)
    800023f8:	02010413          	addi	s0,sp,32
    // Switch context to the next thread.
    TCB *old = running;
    800023fc:	00004497          	auipc	s1,0x4
    80002400:	d2c48493          	addi	s1,s1,-724 # 80006128 <_ZN3TCB7runningE>
    80002404:	0004b903          	ld	s2,0(s1)
    running = Scheduler::get();
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	d5c080e7          	jalr	-676(ra) # 80001164 <_ZN9Scheduler3getEv>
    80002410:	00a4b023          	sd	a0,0(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002414:	01850593          	addi	a1,a0,24
    80002418:	01890513          	addi	a0,s2,24
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	cf4080e7          	jalr	-780(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    // delete old; ?? WE SHOULD DELETE THE OLD THREAD? RIGHT?!
    80002424:	01813083          	ld	ra,24(sp)
    80002428:	01013403          	ld	s0,16(sp)
    8000242c:	00813483          	ld	s1,8(sp)
    80002430:	00013903          	ld	s2,0(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret

000000008000243c <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    8000243c:	00004797          	auipc	a5,0x4
    80002440:	cf478793          	addi	a5,a5,-780 # 80006130 <_ZN15MemoryAllocator9instance_E>
    80002444:	0007b783          	ld	a5,0(a5)
    80002448:	00078a63          	beqz	a5,8000245c <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    8000244c:	00004797          	auipc	a5,0x4
    80002450:	ce478793          	addi	a5,a5,-796 # 80006130 <_ZN15MemoryAllocator9instance_E>
    80002454:	0007b503          	ld	a0,0(a5)
    80002458:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    8000245c:	fd010113          	addi	sp,sp,-48
    80002460:	02113423          	sd	ra,40(sp)
    80002464:	02813023          	sd	s0,32(sp)
    80002468:	00913c23          	sd	s1,24(sp)
    8000246c:	01213823          	sd	s2,16(sp)
    80002470:	01313423          	sd	s3,8(sp)
    80002474:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80002478:	00004997          	auipc	s3,0x4
    8000247c:	c3898993          	addi	s3,s3,-968 # 800060b0 <HEAP_START_ADDR>
    80002480:	0009b783          	ld	a5,0(s3)
    80002484:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80002488:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    8000248c:	00004497          	auipc	s1,0x4
    80002490:	ca448493          	addi	s1,s1,-860 # 80006130 <_ZN15MemoryAllocator9instance_E>
    80002494:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80002498:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ = (BlockInfo*)(
    8000249c:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    800024a0:	0004b783          	ld	a5,0(s1)
    800024a4:	0007b783          	ld	a5,0(a5)
    800024a8:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    800024ac:	0004b783          	ld	a5,0(s1)
    800024b0:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    800024b4:	00004917          	auipc	s2,0x4
    800024b8:	bf490913          	addi	s2,s2,-1036 # 800060a8 <HEAP_END_ADDR>
    800024bc:	00093783          	ld	a5,0(s2)
    800024c0:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    800024c4:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    800024c8:	00003517          	auipc	a0,0x3
    800024cc:	cf050513          	addi	a0,a0,-784 # 800051b8 <_ZZ12printIntegermE6digits+0x50>
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	ae0080e7          	jalr	-1312(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    800024d8:	00003517          	auipc	a0,0x3
    800024dc:	d0850513          	addi	a0,a0,-760 # 800051e0 <_ZZ12printIntegermE6digits+0x78>
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	ad0080e7          	jalr	-1328(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    800024e8:	04000513          	li	a0,64
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	c0c080e7          	jalr	-1012(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    800024f4:	00003517          	auipc	a0,0x3
    800024f8:	d0450513          	addi	a0,a0,-764 # 800051f8 <_ZZ12printIntegermE6digits+0x90>
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	ab4080e7          	jalr	-1356(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    80002504:	0009b503          	ld	a0,0(s3)
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	bf0080e7          	jalr	-1040(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    80002510:	00003517          	auipc	a0,0x3
    80002514:	d0050513          	addi	a0,a0,-768 # 80005210 <_ZZ12printIntegermE6digits+0xa8>
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	a98080e7          	jalr	-1384(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    80002520:	00093503          	ld	a0,0(s2)
    80002524:	00000097          	auipc	ra,0x0
    80002528:	bd4080e7          	jalr	-1068(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    8000252c:	00003517          	auipc	a0,0x3
    80002530:	cfc50513          	addi	a0,a0,-772 # 80005228 <_ZZ12printIntegermE6digits+0xc0>
    80002534:	00000097          	auipc	ra,0x0
    80002538:	a7c080e7          	jalr	-1412(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    8000253c:	0004b783          	ld	a5,0(s1)
    80002540:	0007b503          	ld	a0,0(a5)
    80002544:	00000097          	auipc	ra,0x0
    80002548:	bb4080e7          	jalr	-1100(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    8000254c:	00003517          	auipc	a0,0x3
    80002550:	cfc50513          	addi	a0,a0,-772 # 80005248 <_ZZ12printIntegermE6digits+0xe0>
    80002554:	00000097          	auipc	ra,0x0
    80002558:	a5c080e7          	jalr	-1444(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    8000255c:	01000513          	li	a0,16
    80002560:	00000097          	auipc	ra,0x0
    80002564:	b98080e7          	jalr	-1128(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\n");
    80002568:	00003517          	auipc	a0,0x3
    8000256c:	b7050513          	addi	a0,a0,-1168 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002570:	00000097          	auipc	ra,0x0
    80002574:	a40080e7          	jalr	-1472(ra) # 80001fb0 <_Z11debug_printPKc>
}
    80002578:	00004797          	auipc	a5,0x4
    8000257c:	bb878793          	addi	a5,a5,-1096 # 80006130 <_ZN15MemoryAllocator9instance_E>
    80002580:	0007b503          	ld	a0,0(a5)
    80002584:	02813083          	ld	ra,40(sp)
    80002588:	02013403          	ld	s0,32(sp)
    8000258c:	01813483          	ld	s1,24(sp)
    80002590:	01013903          	ld	s2,16(sp)
    80002594:	00813983          	ld	s3,8(sp)
    80002598:	03010113          	addi	sp,sp,48
    8000259c:	00008067          	ret

00000000800025a0 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    800025a0:	fd010113          	addi	sp,sp,-48
    800025a4:	02113423          	sd	ra,40(sp)
    800025a8:	02813023          	sd	s0,32(sp)
    800025ac:	00913c23          	sd	s1,24(sp)
    800025b0:	01213823          	sd	s2,16(sp)
    800025b4:	01313423          	sd	s3,8(sp)
    800025b8:	03010413          	addi	s0,sp,48
    800025bc:	00050993          	mv	s3,a0
    800025c0:	00058913          	mv	s2,a1

    debug_print("Allocating memory of size: ");
    800025c4:	00003517          	auipc	a0,0x3
    800025c8:	ca450513          	addi	a0,a0,-860 # 80005268 <_ZZ12printIntegermE6digits+0x100>
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	9e4080e7          	jalr	-1564(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print(size);
    800025d4:	00090513          	mv	a0,s2
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	b20080e7          	jalr	-1248(ra) # 800020f8 <_Z11debug_printm>
    debug_print("\n");
    800025e0:	00003517          	auipc	a0,0x3
    800025e4:	af850513          	addi	a0,a0,-1288 # 800050d8 <CONSOLE_STATUS+0xc8>
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	9c8080e7          	jalr	-1592(ra) # 80001fb0 <_Z11debug_printPKc>

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    800025f0:	0009b483          	ld	s1,0(s3)
    800025f4:	0c048263          	beqz	s1,800026b8 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    800025f8:	04f90913          	addi	s2,s2,79
    800025fc:	fc097913          	andi	s2,s2,-64
           & ~(MEM_BLOCK_SIZE - 1);

    debug_print("Aligned size: ");
    80002600:	00003517          	auipc	a0,0x3
    80002604:	c8850513          	addi	a0,a0,-888 # 80005288 <_ZZ12printIntegermE6digits+0x120>
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	9a8080e7          	jalr	-1624(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print(size);
    80002610:	00090513          	mv	a0,s2
    80002614:	00000097          	auipc	ra,0x0
    80002618:	ae4080e7          	jalr	-1308(ra) # 800020f8 <_Z11debug_printm>
    debug_print("\n");
    8000261c:	00003517          	auipc	a0,0x3
    80002620:	abc50513          	addi	a0,a0,-1348 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002624:	00000097          	auipc	ra,0x0
    80002628:	98c080e7          	jalr	-1652(ra) # 80001fb0 <_Z11debug_printPKc>

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    8000262c:	0009b483          	ld	s1,0(s3)
    80002630:	00000713          	li	a4,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002634:	00048c63          	beqz	s1,8000264c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002638:	0084b783          	ld	a5,8(s1)
    8000263c:	0127f863          	bgeu	a5,s2,8000264c <_ZN15MemoryAllocator9mem_allocEm+0xac>
        prev_free_block = free_block;
    80002640:	00048713          	mv	a4,s1
        free_block = free_block->next_;
    80002644:	0004b483          	ld	s1,0(s1)
    while (free_block && free_block->size_ < size) {
    80002648:	fedff06f          	j	80002634 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    8000264c:	06048663          	beqz	s1,800026b8 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    80002650:	0084b783          	ld	a5,8(s1)
    80002654:	08f97663          	bgeu	s2,a5,800026e0 <_ZN15MemoryAllocator9mem_allocEm+0x140>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    80002658:	012486b3          	add	a3,s1,s2
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    8000265c:	06070e63          	beqz	a4,800026d8 <_ZN15MemoryAllocator9mem_allocEm+0x138>
            prev_free_block->next_ = new_free_block;
    80002660:	00d73023          	sd	a3,0(a4)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80002664:	0004b783          	ld	a5,0(s1)
    80002668:	00f6b023          	sd	a5,0(a3)
        new_free_block->size_ = free_block->size_ - size;
    8000266c:	0084b783          	ld	a5,8(s1)
    80002670:	412787b3          	sub	a5,a5,s2
    80002674:	00f6b423          	sd	a5,8(a3)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    80002678:	0124b423          	sd	s2,8(s1)

    debug_print("Allocated block at address: ");
    8000267c:	00003517          	auipc	a0,0x3
    80002680:	c1c50513          	addi	a0,a0,-996 # 80005298 <_ZZ12printIntegermE6digits+0x130>
    80002684:	00000097          	auipc	ra,0x0
    80002688:	92c080e7          	jalr	-1748(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    8000268c:	01048913          	addi	s2,s1,16
    80002690:	00090513          	mv	a0,s2
    80002694:	00000097          	auipc	ra,0x0
    80002698:	a64080e7          	jalr	-1436(ra) # 800020f8 <_Z11debug_printm>
    debug_print("\n");
    8000269c:	00003517          	auipc	a0,0x3
    800026a0:	a3c50513          	addi	a0,a0,-1476 # 800050d8 <CONSOLE_STATUS+0xc8>
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	90c080e7          	jalr	-1780(ra) # 80001fb0 <_Z11debug_printPKc>

    if ((uint64)free_block % MEM_BLOCK_SIZE != 0) {
    800026ac:	03f4f793          	andi	a5,s1,63
    800026b0:	04079663          	bnez	a5,800026fc <_ZN15MemoryAllocator9mem_allocEm+0x15c>
        debug_print("Free block address: ");
        debug_print((uint64)free_block);
        debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    800026b4:	00090493          	mv	s1,s2
}
    800026b8:	00048513          	mv	a0,s1
    800026bc:	02813083          	ld	ra,40(sp)
    800026c0:	02013403          	ld	s0,32(sp)
    800026c4:	01813483          	ld	s1,24(sp)
    800026c8:	01013903          	ld	s2,16(sp)
    800026cc:	00813983          	ld	s3,8(sp)
    800026d0:	03010113          	addi	sp,sp,48
    800026d4:	00008067          	ret
            free_block_ptr_ = new_free_block;
    800026d8:	00d9b023          	sd	a3,0(s3)
    800026dc:	f89ff06f          	j	80002664 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        if (prev_free_block) {
    800026e0:	00070863          	beqz	a4,800026f0 <_ZN15MemoryAllocator9mem_allocEm+0x150>
            prev_free_block->next_ = free_block->next_;
    800026e4:	0004b783          	ld	a5,0(s1)
    800026e8:	00f73023          	sd	a5,0(a4)
    800026ec:	f8dff06f          	j	80002678 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            free_block_ptr_ = free_block->next_;
    800026f0:	0004b783          	ld	a5,0(s1)
    800026f4:	00f9b023          	sd	a5,0(s3)
    800026f8:	f81ff06f          	j	80002678 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        debug_print("Allocated block address is not aligned to MEM_BLOCK_SIZE.\n");
    800026fc:	00003517          	auipc	a0,0x3
    80002700:	bbc50513          	addi	a0,a0,-1092 # 800052b8 <_ZZ12printIntegermE6digits+0x150>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	8ac080e7          	jalr	-1876(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print("Allocated block address: ");
    8000270c:	00003517          	auipc	a0,0x3
    80002710:	bec50513          	addi	a0,a0,-1044 # 800052f8 <_ZZ12printIntegermE6digits+0x190>
    80002714:	00000097          	auipc	ra,0x0
    80002718:	89c080e7          	jalr	-1892(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    8000271c:	00090513          	mv	a0,s2
    80002720:	00000097          	auipc	ra,0x0
    80002724:	9d8080e7          	jalr	-1576(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\n");
    80002728:	00003517          	auipc	a0,0x3
    8000272c:	9b050513          	addi	a0,a0,-1616 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002730:	00000097          	auipc	ra,0x0
    80002734:	880080e7          	jalr	-1920(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print("Free block address: ");
    80002738:	00003517          	auipc	a0,0x3
    8000273c:	be050513          	addi	a0,a0,-1056 # 80005318 <_ZZ12printIntegermE6digits+0x1b0>
    80002740:	00000097          	auipc	ra,0x0
    80002744:	870080e7          	jalr	-1936(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print((uint64)free_block);
    80002748:	00048513          	mv	a0,s1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	9ac080e7          	jalr	-1620(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\n");
    80002754:	00003517          	auipc	a0,0x3
    80002758:	98450513          	addi	a0,a0,-1660 # 800050d8 <CONSOLE_STATUS+0xc8>
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	854080e7          	jalr	-1964(ra) # 80001fb0 <_Z11debug_printPKc>
    80002764:	f51ff06f          	j	800026b4 <_ZN15MemoryAllocator9mem_allocEm+0x114>

0000000080002768 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00813423          	sd	s0,8(sp)
    80002770:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    80002774:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    80002778:	00000513          	li	a0,0
    while (free_block_iter) {
    8000277c:	00078a63          	beqz	a5,80002790 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    80002780:	0087b703          	ld	a4,8(a5)
    80002784:	fee57ce3          	bgeu	a0,a4,8000277c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    80002788:	00070513          	mv	a0,a4
    8000278c:	ff1ff06f          	j	8000277c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    80002790:	00813403          	ld	s0,8(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00813423          	sd	s0,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    800027a8:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    800027ac:	00000513          	li	a0,0
    while (free_block_iter) {
    800027b0:	00078a63          	beqz	a5,800027c4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    800027b4:	0087b703          	ld	a4,8(a5)
    800027b8:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    800027bc:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    800027c0:	ff1ff06f          	j	800027b0 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    800027c4:	00813403          	ld	s0,8(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret

00000000800027d0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    800027d0:	fe010113          	addi	sp,sp,-32
    800027d4:	00113c23          	sd	ra,24(sp)
    800027d8:	00813823          	sd	s0,16(sp)
    800027dc:	00913423          	sd	s1,8(sp)
    800027e0:	01213023          	sd	s2,0(sp)
    800027e4:	02010413          	addi	s0,sp,32

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    800027e8:	04058e63          	beqz	a1,80002844 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    800027ec:	00058493          	mv	s1,a1
    800027f0:	00060913          	mv	s2,a2
    800027f4:	04060863          	beqz	a2,80002844 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
        debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    800027f8:	00003597          	auipc	a1,0x3
    800027fc:	b7058593          	addi	a1,a1,-1168 # 80005368 <_ZZ12printIntegermE6digits+0x200>
    80002800:	00c4b533          	sltu	a0,s1,a2
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	7d4080e7          	jalr	2004(ra) # 80001fd8 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    8000280c:	0084b783          	ld	a5,8(s1)
    80002810:	00f48733          	add	a4,s1,a5
    80002814:	04e91263          	bne	s2,a4,80002858 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x88>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002818:	00893703          	ld	a4,8(s2)
    8000281c:	00e787b3          	add	a5,a5,a4
    80002820:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002824:	00093783          	ld	a5,0(s2)
    80002828:	00f4b023          	sd	a5,0(s1)
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	00013903          	ld	s2,0(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00008067          	ret
        debug_print("Cannot consolidate blocks, one of them is null.\n");
    80002844:	00003517          	auipc	a0,0x3
    80002848:	aec50513          	addi	a0,a0,-1300 # 80005330 <_ZZ12printIntegermE6digits+0x1c8>
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	764080e7          	jalr	1892(ra) # 80001fb0 <_Z11debug_printPKc>
        return;
    80002854:	fd9ff06f          	j	8000282c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        debug_print("First block address: ");
    80002858:	00003517          	auipc	a0,0x3
    8000285c:	b5050513          	addi	a0,a0,-1200 # 800053a8 <_ZZ12printIntegermE6digits+0x240>
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	750080e7          	jalr	1872(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print((uint64)first_block);
    80002868:	00048513          	mv	a0,s1
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	88c080e7          	jalr	-1908(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\n");
    80002874:	00003517          	auipc	a0,0x3
    80002878:	86450513          	addi	a0,a0,-1948 # 800050d8 <CONSOLE_STATUS+0xc8>
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	734080e7          	jalr	1844(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print("First block size: ");
    80002884:	00003517          	auipc	a0,0x3
    80002888:	b3c50513          	addi	a0,a0,-1220 # 800053c0 <_ZZ12printIntegermE6digits+0x258>
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	724080e7          	jalr	1828(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print(first_block->size_);
    80002894:	0084b503          	ld	a0,8(s1)
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	860080e7          	jalr	-1952(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\n");
    800028a0:	00003517          	auipc	a0,0x3
    800028a4:	83850513          	addi	a0,a0,-1992 # 800050d8 <CONSOLE_STATUS+0xc8>
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	708080e7          	jalr	1800(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print("Second block address: ");
    800028b0:	00003517          	auipc	a0,0x3
    800028b4:	b2850513          	addi	a0,a0,-1240 # 800053d8 <_ZZ12printIntegermE6digits+0x270>
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	6f8080e7          	jalr	1784(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print((uint64)second_block);
    800028c0:	00090513          	mv	a0,s2
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	834080e7          	jalr	-1996(ra) # 800020f8 <_Z11debug_printm>
        debug_print("\n");
    800028cc:	00003517          	auipc	a0,0x3
    800028d0:	80c50513          	addi	a0,a0,-2036 # 800050d8 <CONSOLE_STATUS+0xc8>
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	6dc080e7          	jalr	1756(ra) # 80001fb0 <_Z11debug_printPKc>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
    800028dc:	00003517          	auipc	a0,0x3
    800028e0:	b1450513          	addi	a0,a0,-1260 # 800053f0 <_ZZ12printIntegermE6digits+0x288>
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	6cc080e7          	jalr	1740(ra) # 80001fb0 <_Z11debug_printPKc>
        return;
    800028ec:	f41ff06f          	j	8000282c <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>

00000000800028f0 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    800028f0:	fc010113          	addi	sp,sp,-64
    800028f4:	02113c23          	sd	ra,56(sp)
    800028f8:	02813823          	sd	s0,48(sp)
    800028fc:	02913423          	sd	s1,40(sp)
    80002900:	03213023          	sd	s2,32(sp)
    80002904:	01313c23          	sd	s3,24(sp)
    80002908:	01413823          	sd	s4,16(sp)
    8000290c:	01513423          	sd	s5,8(sp)
    80002910:	04010413          	addi	s0,sp,64
    80002914:	00050a93          	mv	s5,a0
    80002918:	00058a13          	mv	s4,a1
    debug_print("Freeing block at address: ");
    8000291c:	00003517          	auipc	a0,0x3
    80002920:	b0c50513          	addi	a0,a0,-1268 # 80005428 <_ZZ12printIntegermE6digits+0x2c0>
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	68c080e7          	jalr	1676(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print((uint64)free_block_addr);
    8000292c:	000a0513          	mv	a0,s4
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	7c8080e7          	jalr	1992(ra) # 800020f8 <_Z11debug_printm>
    debug_print("\n");
    80002938:	00002517          	auipc	a0,0x2
    8000293c:	7a050513          	addi	a0,a0,1952 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	670080e7          	jalr	1648(ra) # 80001fb0 <_Z11debug_printPKc>
    if (!free_block_addr) {
    80002948:	040a0063          	beqz	s4,80002988 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    8000294c:	ff0a0993          	addi	s3,s4,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    80002950:	00098793          	mv	a5,s3
    80002954:	03f9f713          	andi	a4,s3,63
    80002958:	04071463          	bnez	a4,800029a0 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    8000295c:	00003717          	auipc	a4,0x3
    80002960:	75470713          	addi	a4,a4,1876 # 800060b0 <HEAP_START_ADDR>
    80002964:	00073703          	ld	a4,0(a4)
    80002968:	04e9e863          	bltu	s3,a4,800029b8 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    8000296c:	00003717          	auipc	a4,0x3
    80002970:	73c70713          	addi	a4,a4,1852 # 800060a8 <HEAP_END_ADDR>
    80002974:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002978:	04e9f063          	bgeu	s3,a4,800029b8 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    8000297c:	000ab483          	ld	s1,0(s5)
    80002980:	00000913          	li	s2,0
    80002984:	0540006f          	j	800029d8 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        debug_print("Free block address is null.\n");
    80002988:	00003517          	auipc	a0,0x3
    8000298c:	ac050513          	addi	a0,a0,-1344 # 80005448 <_ZZ12printIntegermE6digits+0x2e0>
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	620080e7          	jalr	1568(ra) # 80001fb0 <_Z11debug_printPKc>
        return -1;
    80002998:	fff00513          	li	a0,-1
    8000299c:	1140006f          	j	80002ab0 <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    800029a0:	00003517          	auipc	a0,0x3
    800029a4:	ac850513          	addi	a0,a0,-1336 # 80005468 <_ZZ12printIntegermE6digits+0x300>
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	608080e7          	jalr	1544(ra) # 80001fb0 <_Z11debug_printPKc>
        return -2;
    800029b0:	ffe00513          	li	a0,-2
    800029b4:	0fc0006f          	j	80002ab0 <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not in the heap.\n");
    800029b8:	00003517          	auipc	a0,0x3
    800029bc:	ae850513          	addi	a0,a0,-1304 # 800054a0 <_ZZ12printIntegermE6digits+0x338>
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	5f0080e7          	jalr	1520(ra) # 80001fb0 <_Z11debug_printPKc>
        return -3;
    800029c8:	ffd00513          	li	a0,-3
    800029cc:	0e40006f          	j	80002ab0 <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        prev_free_block = next_free_block;
    800029d0:	00048913          	mv	s2,s1
        next_free_block = next_free_block->next_;
    800029d4:	0004b483          	ld	s1,0(s1)
    while (next_free_block &&
    800029d8:	00048663          	beqz	s1,800029e4 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    800029dc:	fe97fae3          	bgeu	a5,s1,800029d0 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
          !(((uint64)next_free_block > (uint64)block_info) &&
    800029e0:	fef978e3          	bgeu	s2,a5,800029d0 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    debug_print("Prev free block: ");
    800029e4:	00003517          	auipc	a0,0x3
    800029e8:	ae450513          	addi	a0,a0,-1308 # 800054c8 <_ZZ12printIntegermE6digits+0x360>
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	5c4080e7          	jalr	1476(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print((uint64)prev_free_block);
    800029f4:	00090513          	mv	a0,s2
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	700080e7          	jalr	1792(ra) # 800020f8 <_Z11debug_printm>
    debug_print("\n");
    80002a00:	00002517          	auipc	a0,0x2
    80002a04:	6d850513          	addi	a0,a0,1752 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	5a8080e7          	jalr	1448(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print("Block info: ");
    80002a10:	00003517          	auipc	a0,0x3
    80002a14:	ad050513          	addi	a0,a0,-1328 # 800054e0 <_ZZ12printIntegermE6digits+0x378>
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	598080e7          	jalr	1432(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print((uint64)block_info);
    80002a20:	00098513          	mv	a0,s3
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	6d4080e7          	jalr	1748(ra) # 800020f8 <_Z11debug_printm>
    debug_print("\n");
    80002a2c:	00002517          	auipc	a0,0x2
    80002a30:	6ac50513          	addi	a0,a0,1708 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	57c080e7          	jalr	1404(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print("Next free block: ");
    80002a3c:	00003517          	auipc	a0,0x3
    80002a40:	ab450513          	addi	a0,a0,-1356 # 800054f0 <_ZZ12printIntegermE6digits+0x388>
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	56c080e7          	jalr	1388(ra) # 80001fb0 <_Z11debug_printPKc>
    debug_print((uint64)next_free_block);
    80002a4c:	00048513          	mv	a0,s1
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	6a8080e7          	jalr	1704(ra) # 800020f8 <_Z11debug_printm>
    debug_print("\n");
    80002a58:	00002517          	auipc	a0,0x2
    80002a5c:	68050513          	addi	a0,a0,1664 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	550080e7          	jalr	1360(ra) # 80001fb0 <_Z11debug_printPKc>
    if (!prev_free_block) {
    80002a68:	06090663          	beqz	s2,80002ad4 <_ZN15MemoryAllocator8mem_freeEPv+0x1e4>
        debug_print("Block is not the first free block.\n");
    80002a6c:	00003517          	auipc	a0,0x3
    80002a70:	abc50513          	addi	a0,a0,-1348 # 80005528 <_ZZ12printIntegermE6digits+0x3c0>
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	53c080e7          	jalr	1340(ra) # 80001fb0 <_Z11debug_printPKc>
        prev_free_block->next_ = block_info;
    80002a7c:	01393023          	sd	s3,0(s2)
    block_info->next_ = next_free_block;
    80002a80:	fe9a3823          	sd	s1,-16(s4)
    maybe_consolidate(block_info, next_free_block);
    80002a84:	00048613          	mv	a2,s1
    80002a88:	00098593          	mv	a1,s3
    80002a8c:	000a8513          	mv	a0,s5
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	d40080e7          	jalr	-704(ra) # 800027d0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80002a98:	00098613          	mv	a2,s3
    80002a9c:	00090593          	mv	a1,s2
    80002aa0:	000a8513          	mv	a0,s5
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	d2c080e7          	jalr	-724(ra) # 800027d0 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    80002aac:	00000513          	li	a0,0
}
    80002ab0:	03813083          	ld	ra,56(sp)
    80002ab4:	03013403          	ld	s0,48(sp)
    80002ab8:	02813483          	ld	s1,40(sp)
    80002abc:	02013903          	ld	s2,32(sp)
    80002ac0:	01813983          	ld	s3,24(sp)
    80002ac4:	01013a03          	ld	s4,16(sp)
    80002ac8:	00813a83          	ld	s5,8(sp)
    80002acc:	04010113          	addi	sp,sp,64
    80002ad0:	00008067          	ret
        debug_print("Block is the first free block.\n");
    80002ad4:	00003517          	auipc	a0,0x3
    80002ad8:	a3450513          	addi	a0,a0,-1484 # 80005508 <_ZZ12printIntegermE6digits+0x3a0>
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	4d4080e7          	jalr	1236(ra) # 80001fb0 <_Z11debug_printPKc>
        free_block_ptr_ = block_info;
    80002ae4:	013ab023          	sd	s3,0(s5)
    80002ae8:	f99ff06f          	j	80002a80 <_ZN15MemoryAllocator8mem_freeEPv+0x190>

0000000080002aec <start>:
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00813423          	sd	s0,8(sp)
    80002af4:	01010413          	addi	s0,sp,16
    80002af8:	300027f3          	csrr	a5,mstatus
    80002afc:	ffffe737          	lui	a4,0xffffe
    80002b00:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff742f>
    80002b04:	00e7f7b3          	and	a5,a5,a4
    80002b08:	00001737          	lui	a4,0x1
    80002b0c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002b10:	00e7e7b3          	or	a5,a5,a4
    80002b14:	30079073          	csrw	mstatus,a5
    80002b18:	00000797          	auipc	a5,0x0
    80002b1c:	16078793          	addi	a5,a5,352 # 80002c78 <system_main>
    80002b20:	34179073          	csrw	mepc,a5
    80002b24:	00000793          	li	a5,0
    80002b28:	18079073          	csrw	satp,a5
    80002b2c:	000107b7          	lui	a5,0x10
    80002b30:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b34:	30279073          	csrw	medeleg,a5
    80002b38:	30379073          	csrw	mideleg,a5
    80002b3c:	104027f3          	csrr	a5,sie
    80002b40:	2227e793          	ori	a5,a5,546
    80002b44:	10479073          	csrw	sie,a5
    80002b48:	fff00793          	li	a5,-1
    80002b4c:	00a7d793          	srli	a5,a5,0xa
    80002b50:	3b079073          	csrw	pmpaddr0,a5
    80002b54:	00f00793          	li	a5,15
    80002b58:	3a079073          	csrw	pmpcfg0,a5
    80002b5c:	f14027f3          	csrr	a5,mhartid
    80002b60:	0200c737          	lui	a4,0x200c
    80002b64:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002b68:	0007869b          	sext.w	a3,a5
    80002b6c:	00269713          	slli	a4,a3,0x2
    80002b70:	000f4637          	lui	a2,0xf4
    80002b74:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002b78:	00d70733          	add	a4,a4,a3
    80002b7c:	0037979b          	slliw	a5,a5,0x3
    80002b80:	020046b7          	lui	a3,0x2004
    80002b84:	00d787b3          	add	a5,a5,a3
    80002b88:	00c585b3          	add	a1,a1,a2
    80002b8c:	00371693          	slli	a3,a4,0x3
    80002b90:	00003717          	auipc	a4,0x3
    80002b94:	5e070713          	addi	a4,a4,1504 # 80006170 <timer_scratch>
    80002b98:	00b7b023          	sd	a1,0(a5)
    80002b9c:	00d70733          	add	a4,a4,a3
    80002ba0:	00f73c23          	sd	a5,24(a4)
    80002ba4:	02c73023          	sd	a2,32(a4)
    80002ba8:	34071073          	csrw	mscratch,a4
    80002bac:	00000797          	auipc	a5,0x0
    80002bb0:	6e478793          	addi	a5,a5,1764 # 80003290 <timervec>
    80002bb4:	30579073          	csrw	mtvec,a5
    80002bb8:	300027f3          	csrr	a5,mstatus
    80002bbc:	0087e793          	ori	a5,a5,8
    80002bc0:	30079073          	csrw	mstatus,a5
    80002bc4:	304027f3          	csrr	a5,mie
    80002bc8:	0807e793          	ori	a5,a5,128
    80002bcc:	30479073          	csrw	mie,a5
    80002bd0:	f14027f3          	csrr	a5,mhartid
    80002bd4:	0007879b          	sext.w	a5,a5
    80002bd8:	00078213          	mv	tp,a5
    80002bdc:	30200073          	mret
    80002be0:	00813403          	ld	s0,8(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret

0000000080002bec <timerinit>:
    80002bec:	ff010113          	addi	sp,sp,-16
    80002bf0:	00813423          	sd	s0,8(sp)
    80002bf4:	01010413          	addi	s0,sp,16
    80002bf8:	f14027f3          	csrr	a5,mhartid
    80002bfc:	0200c737          	lui	a4,0x200c
    80002c00:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c04:	0007869b          	sext.w	a3,a5
    80002c08:	00269713          	slli	a4,a3,0x2
    80002c0c:	000f4637          	lui	a2,0xf4
    80002c10:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c14:	00d70733          	add	a4,a4,a3
    80002c18:	0037979b          	slliw	a5,a5,0x3
    80002c1c:	020046b7          	lui	a3,0x2004
    80002c20:	00d787b3          	add	a5,a5,a3
    80002c24:	00c585b3          	add	a1,a1,a2
    80002c28:	00371693          	slli	a3,a4,0x3
    80002c2c:	00003717          	auipc	a4,0x3
    80002c30:	54470713          	addi	a4,a4,1348 # 80006170 <timer_scratch>
    80002c34:	00b7b023          	sd	a1,0(a5)
    80002c38:	00d70733          	add	a4,a4,a3
    80002c3c:	00f73c23          	sd	a5,24(a4)
    80002c40:	02c73023          	sd	a2,32(a4)
    80002c44:	34071073          	csrw	mscratch,a4
    80002c48:	00000797          	auipc	a5,0x0
    80002c4c:	64878793          	addi	a5,a5,1608 # 80003290 <timervec>
    80002c50:	30579073          	csrw	mtvec,a5
    80002c54:	300027f3          	csrr	a5,mstatus
    80002c58:	0087e793          	ori	a5,a5,8
    80002c5c:	30079073          	csrw	mstatus,a5
    80002c60:	304027f3          	csrr	a5,mie
    80002c64:	0807e793          	ori	a5,a5,128
    80002c68:	30479073          	csrw	mie,a5
    80002c6c:	00813403          	ld	s0,8(sp)
    80002c70:	01010113          	addi	sp,sp,16
    80002c74:	00008067          	ret

0000000080002c78 <system_main>:
    80002c78:	fe010113          	addi	sp,sp,-32
    80002c7c:	00813823          	sd	s0,16(sp)
    80002c80:	00913423          	sd	s1,8(sp)
    80002c84:	00113c23          	sd	ra,24(sp)
    80002c88:	02010413          	addi	s0,sp,32
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	0c4080e7          	jalr	196(ra) # 80002d50 <cpuid>
    80002c94:	00003497          	auipc	s1,0x3
    80002c98:	4a448493          	addi	s1,s1,1188 # 80006138 <started>
    80002c9c:	02050263          	beqz	a0,80002cc0 <system_main+0x48>
    80002ca0:	0004a783          	lw	a5,0(s1)
    80002ca4:	0007879b          	sext.w	a5,a5
    80002ca8:	fe078ce3          	beqz	a5,80002ca0 <system_main+0x28>
    80002cac:	0ff0000f          	fence
    80002cb0:	00003517          	auipc	a0,0x3
    80002cb4:	8d050513          	addi	a0,a0,-1840 # 80005580 <_ZZ12printIntegermE6digits+0x418>
    80002cb8:	00001097          	auipc	ra,0x1
    80002cbc:	a74080e7          	jalr	-1420(ra) # 8000372c <panic>
    80002cc0:	00001097          	auipc	ra,0x1
    80002cc4:	9c8080e7          	jalr	-1592(ra) # 80003688 <consoleinit>
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	154080e7          	jalr	340(ra) # 80003e1c <printfinit>
    80002cd0:	00002517          	auipc	a0,0x2
    80002cd4:	40850513          	addi	a0,a0,1032 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002cd8:	00001097          	auipc	ra,0x1
    80002cdc:	ab0080e7          	jalr	-1360(ra) # 80003788 <__printf>
    80002ce0:	00003517          	auipc	a0,0x3
    80002ce4:	87050513          	addi	a0,a0,-1936 # 80005550 <_ZZ12printIntegermE6digits+0x3e8>
    80002ce8:	00001097          	auipc	ra,0x1
    80002cec:	aa0080e7          	jalr	-1376(ra) # 80003788 <__printf>
    80002cf0:	00002517          	auipc	a0,0x2
    80002cf4:	3e850513          	addi	a0,a0,1000 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	a90080e7          	jalr	-1392(ra) # 80003788 <__printf>
    80002d00:	00001097          	auipc	ra,0x1
    80002d04:	4a8080e7          	jalr	1192(ra) # 800041a8 <kinit>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	148080e7          	jalr	328(ra) # 80002e50 <trapinit>
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	16c080e7          	jalr	364(ra) # 80002e7c <trapinithart>
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	5b8080e7          	jalr	1464(ra) # 800032d0 <plicinit>
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	5d8080e7          	jalr	1496(ra) # 800032f8 <plicinithart>
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	078080e7          	jalr	120(ra) # 80002da0 <userinit>
    80002d30:	0ff0000f          	fence
    80002d34:	00100793          	li	a5,1
    80002d38:	00003517          	auipc	a0,0x3
    80002d3c:	83050513          	addi	a0,a0,-2000 # 80005568 <_ZZ12printIntegermE6digits+0x400>
    80002d40:	00f4a023          	sw	a5,0(s1)
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	a44080e7          	jalr	-1468(ra) # 80003788 <__printf>
    80002d4c:	0000006f          	j	80002d4c <system_main+0xd4>

0000000080002d50 <cpuid>:
    80002d50:	ff010113          	addi	sp,sp,-16
    80002d54:	00813423          	sd	s0,8(sp)
    80002d58:	01010413          	addi	s0,sp,16
    80002d5c:	00020513          	mv	a0,tp
    80002d60:	00813403          	ld	s0,8(sp)
    80002d64:	0005051b          	sext.w	a0,a0
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret

0000000080002d70 <mycpu>:
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00813423          	sd	s0,8(sp)
    80002d78:	01010413          	addi	s0,sp,16
    80002d7c:	00020793          	mv	a5,tp
    80002d80:	00813403          	ld	s0,8(sp)
    80002d84:	0007879b          	sext.w	a5,a5
    80002d88:	00779793          	slli	a5,a5,0x7
    80002d8c:	00004517          	auipc	a0,0x4
    80002d90:	41450513          	addi	a0,a0,1044 # 800071a0 <cpus>
    80002d94:	00f50533          	add	a0,a0,a5
    80002d98:	01010113          	addi	sp,sp,16
    80002d9c:	00008067          	ret

0000000080002da0 <userinit>:
    80002da0:	ff010113          	addi	sp,sp,-16
    80002da4:	00813423          	sd	s0,8(sp)
    80002da8:	01010413          	addi	s0,sp,16
    80002dac:	00813403          	ld	s0,8(sp)
    80002db0:	01010113          	addi	sp,sp,16
    80002db4:	fffff317          	auipc	t1,0xfffff
    80002db8:	36c30067          	jr	876(t1) # 80002120 <main>

0000000080002dbc <either_copyout>:
    80002dbc:	ff010113          	addi	sp,sp,-16
    80002dc0:	00813023          	sd	s0,0(sp)
    80002dc4:	00113423          	sd	ra,8(sp)
    80002dc8:	01010413          	addi	s0,sp,16
    80002dcc:	02051663          	bnez	a0,80002df8 <either_copyout+0x3c>
    80002dd0:	00058513          	mv	a0,a1
    80002dd4:	00060593          	mv	a1,a2
    80002dd8:	0006861b          	sext.w	a2,a3
    80002ddc:	00002097          	auipc	ra,0x2
    80002de0:	c58080e7          	jalr	-936(ra) # 80004a34 <__memmove>
    80002de4:	00813083          	ld	ra,8(sp)
    80002de8:	00013403          	ld	s0,0(sp)
    80002dec:	00000513          	li	a0,0
    80002df0:	01010113          	addi	sp,sp,16
    80002df4:	00008067          	ret
    80002df8:	00002517          	auipc	a0,0x2
    80002dfc:	7b050513          	addi	a0,a0,1968 # 800055a8 <_ZZ12printIntegermE6digits+0x440>
    80002e00:	00001097          	auipc	ra,0x1
    80002e04:	92c080e7          	jalr	-1748(ra) # 8000372c <panic>

0000000080002e08 <either_copyin>:
    80002e08:	ff010113          	addi	sp,sp,-16
    80002e0c:	00813023          	sd	s0,0(sp)
    80002e10:	00113423          	sd	ra,8(sp)
    80002e14:	01010413          	addi	s0,sp,16
    80002e18:	02059463          	bnez	a1,80002e40 <either_copyin+0x38>
    80002e1c:	00060593          	mv	a1,a2
    80002e20:	0006861b          	sext.w	a2,a3
    80002e24:	00002097          	auipc	ra,0x2
    80002e28:	c10080e7          	jalr	-1008(ra) # 80004a34 <__memmove>
    80002e2c:	00813083          	ld	ra,8(sp)
    80002e30:	00013403          	ld	s0,0(sp)
    80002e34:	00000513          	li	a0,0
    80002e38:	01010113          	addi	sp,sp,16
    80002e3c:	00008067          	ret
    80002e40:	00002517          	auipc	a0,0x2
    80002e44:	79050513          	addi	a0,a0,1936 # 800055d0 <_ZZ12printIntegermE6digits+0x468>
    80002e48:	00001097          	auipc	ra,0x1
    80002e4c:	8e4080e7          	jalr	-1820(ra) # 8000372c <panic>

0000000080002e50 <trapinit>:
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00813423          	sd	s0,8(sp)
    80002e58:	01010413          	addi	s0,sp,16
    80002e5c:	00813403          	ld	s0,8(sp)
    80002e60:	00002597          	auipc	a1,0x2
    80002e64:	79858593          	addi	a1,a1,1944 # 800055f8 <_ZZ12printIntegermE6digits+0x490>
    80002e68:	00004517          	auipc	a0,0x4
    80002e6c:	3b850513          	addi	a0,a0,952 # 80007220 <tickslock>
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00001317          	auipc	t1,0x1
    80002e78:	5c430067          	jr	1476(t1) # 80004438 <initlock>

0000000080002e7c <trapinithart>:
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00813423          	sd	s0,8(sp)
    80002e84:	01010413          	addi	s0,sp,16
    80002e88:	00000797          	auipc	a5,0x0
    80002e8c:	2f878793          	addi	a5,a5,760 # 80003180 <kernelvec>
    80002e90:	10579073          	csrw	stvec,a5
    80002e94:	00813403          	ld	s0,8(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret

0000000080002ea0 <usertrap>:
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00813423          	sd	s0,8(sp)
    80002ea8:	01010413          	addi	s0,sp,16
    80002eac:	00813403          	ld	s0,8(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret

0000000080002eb8 <usertrapret>:
    80002eb8:	ff010113          	addi	sp,sp,-16
    80002ebc:	00813423          	sd	s0,8(sp)
    80002ec0:	01010413          	addi	s0,sp,16
    80002ec4:	00813403          	ld	s0,8(sp)
    80002ec8:	01010113          	addi	sp,sp,16
    80002ecc:	00008067          	ret

0000000080002ed0 <kerneltrap>:
    80002ed0:	fe010113          	addi	sp,sp,-32
    80002ed4:	00813823          	sd	s0,16(sp)
    80002ed8:	00113c23          	sd	ra,24(sp)
    80002edc:	00913423          	sd	s1,8(sp)
    80002ee0:	02010413          	addi	s0,sp,32
    80002ee4:	142025f3          	csrr	a1,scause
    80002ee8:	100027f3          	csrr	a5,sstatus
    80002eec:	0027f793          	andi	a5,a5,2
    80002ef0:	10079c63          	bnez	a5,80003008 <kerneltrap+0x138>
    80002ef4:	142027f3          	csrr	a5,scause
    80002ef8:	0207ce63          	bltz	a5,80002f34 <kerneltrap+0x64>
    80002efc:	00002517          	auipc	a0,0x2
    80002f00:	74450513          	addi	a0,a0,1860 # 80005640 <_ZZ12printIntegermE6digits+0x4d8>
    80002f04:	00001097          	auipc	ra,0x1
    80002f08:	884080e7          	jalr	-1916(ra) # 80003788 <__printf>
    80002f0c:	141025f3          	csrr	a1,sepc
    80002f10:	14302673          	csrr	a2,stval
    80002f14:	00002517          	auipc	a0,0x2
    80002f18:	73c50513          	addi	a0,a0,1852 # 80005650 <_ZZ12printIntegermE6digits+0x4e8>
    80002f1c:	00001097          	auipc	ra,0x1
    80002f20:	86c080e7          	jalr	-1940(ra) # 80003788 <__printf>
    80002f24:	00002517          	auipc	a0,0x2
    80002f28:	74450513          	addi	a0,a0,1860 # 80005668 <_ZZ12printIntegermE6digits+0x500>
    80002f2c:	00001097          	auipc	ra,0x1
    80002f30:	800080e7          	jalr	-2048(ra) # 8000372c <panic>
    80002f34:	0ff7f713          	andi	a4,a5,255
    80002f38:	00900693          	li	a3,9
    80002f3c:	04d70063          	beq	a4,a3,80002f7c <kerneltrap+0xac>
    80002f40:	fff00713          	li	a4,-1
    80002f44:	03f71713          	slli	a4,a4,0x3f
    80002f48:	00170713          	addi	a4,a4,1
    80002f4c:	fae798e3          	bne	a5,a4,80002efc <kerneltrap+0x2c>
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	e00080e7          	jalr	-512(ra) # 80002d50 <cpuid>
    80002f58:	06050663          	beqz	a0,80002fc4 <kerneltrap+0xf4>
    80002f5c:	144027f3          	csrr	a5,sip
    80002f60:	ffd7f793          	andi	a5,a5,-3
    80002f64:	14479073          	csrw	sip,a5
    80002f68:	01813083          	ld	ra,24(sp)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	02010113          	addi	sp,sp,32
    80002f78:	00008067          	ret
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	3c8080e7          	jalr	968(ra) # 80003344 <plic_claim>
    80002f84:	00a00793          	li	a5,10
    80002f88:	00050493          	mv	s1,a0
    80002f8c:	06f50863          	beq	a0,a5,80002ffc <kerneltrap+0x12c>
    80002f90:	fc050ce3          	beqz	a0,80002f68 <kerneltrap+0x98>
    80002f94:	00050593          	mv	a1,a0
    80002f98:	00002517          	auipc	a0,0x2
    80002f9c:	68850513          	addi	a0,a0,1672 # 80005620 <_ZZ12printIntegermE6digits+0x4b8>
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	7e8080e7          	jalr	2024(ra) # 80003788 <__printf>
    80002fa8:	01013403          	ld	s0,16(sp)
    80002fac:	01813083          	ld	ra,24(sp)
    80002fb0:	00048513          	mv	a0,s1
    80002fb4:	00813483          	ld	s1,8(sp)
    80002fb8:	02010113          	addi	sp,sp,32
    80002fbc:	00000317          	auipc	t1,0x0
    80002fc0:	3c030067          	jr	960(t1) # 8000337c <plic_complete>
    80002fc4:	00004517          	auipc	a0,0x4
    80002fc8:	25c50513          	addi	a0,a0,604 # 80007220 <tickslock>
    80002fcc:	00001097          	auipc	ra,0x1
    80002fd0:	490080e7          	jalr	1168(ra) # 8000445c <acquire>
    80002fd4:	00003717          	auipc	a4,0x3
    80002fd8:	16870713          	addi	a4,a4,360 # 8000613c <ticks>
    80002fdc:	00072783          	lw	a5,0(a4)
    80002fe0:	00004517          	auipc	a0,0x4
    80002fe4:	24050513          	addi	a0,a0,576 # 80007220 <tickslock>
    80002fe8:	0017879b          	addiw	a5,a5,1
    80002fec:	00f72023          	sw	a5,0(a4)
    80002ff0:	00001097          	auipc	ra,0x1
    80002ff4:	538080e7          	jalr	1336(ra) # 80004528 <release>
    80002ff8:	f65ff06f          	j	80002f5c <kerneltrap+0x8c>
    80002ffc:	00001097          	auipc	ra,0x1
    80003000:	094080e7          	jalr	148(ra) # 80004090 <uartintr>
    80003004:	fa5ff06f          	j	80002fa8 <kerneltrap+0xd8>
    80003008:	00002517          	auipc	a0,0x2
    8000300c:	5f850513          	addi	a0,a0,1528 # 80005600 <_ZZ12printIntegermE6digits+0x498>
    80003010:	00000097          	auipc	ra,0x0
    80003014:	71c080e7          	jalr	1820(ra) # 8000372c <panic>

0000000080003018 <clockintr>:
    80003018:	fe010113          	addi	sp,sp,-32
    8000301c:	00813823          	sd	s0,16(sp)
    80003020:	00913423          	sd	s1,8(sp)
    80003024:	00113c23          	sd	ra,24(sp)
    80003028:	02010413          	addi	s0,sp,32
    8000302c:	00004497          	auipc	s1,0x4
    80003030:	1f448493          	addi	s1,s1,500 # 80007220 <tickslock>
    80003034:	00048513          	mv	a0,s1
    80003038:	00001097          	auipc	ra,0x1
    8000303c:	424080e7          	jalr	1060(ra) # 8000445c <acquire>
    80003040:	00003717          	auipc	a4,0x3
    80003044:	0fc70713          	addi	a4,a4,252 # 8000613c <ticks>
    80003048:	00072783          	lw	a5,0(a4)
    8000304c:	01013403          	ld	s0,16(sp)
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	00048513          	mv	a0,s1
    80003058:	0017879b          	addiw	a5,a5,1
    8000305c:	00813483          	ld	s1,8(sp)
    80003060:	00f72023          	sw	a5,0(a4)
    80003064:	02010113          	addi	sp,sp,32
    80003068:	00001317          	auipc	t1,0x1
    8000306c:	4c030067          	jr	1216(t1) # 80004528 <release>

0000000080003070 <devintr>:
    80003070:	142027f3          	csrr	a5,scause
    80003074:	00000513          	li	a0,0
    80003078:	0007c463          	bltz	a5,80003080 <devintr+0x10>
    8000307c:	00008067          	ret
    80003080:	fe010113          	addi	sp,sp,-32
    80003084:	00813823          	sd	s0,16(sp)
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	00913423          	sd	s1,8(sp)
    80003090:	02010413          	addi	s0,sp,32
    80003094:	0ff7f713          	andi	a4,a5,255
    80003098:	00900693          	li	a3,9
    8000309c:	04d70c63          	beq	a4,a3,800030f4 <devintr+0x84>
    800030a0:	fff00713          	li	a4,-1
    800030a4:	03f71713          	slli	a4,a4,0x3f
    800030a8:	00170713          	addi	a4,a4,1
    800030ac:	00e78c63          	beq	a5,a4,800030c4 <devintr+0x54>
    800030b0:	01813083          	ld	ra,24(sp)
    800030b4:	01013403          	ld	s0,16(sp)
    800030b8:	00813483          	ld	s1,8(sp)
    800030bc:	02010113          	addi	sp,sp,32
    800030c0:	00008067          	ret
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	c8c080e7          	jalr	-884(ra) # 80002d50 <cpuid>
    800030cc:	06050663          	beqz	a0,80003138 <devintr+0xc8>
    800030d0:	144027f3          	csrr	a5,sip
    800030d4:	ffd7f793          	andi	a5,a5,-3
    800030d8:	14479073          	csrw	sip,a5
    800030dc:	01813083          	ld	ra,24(sp)
    800030e0:	01013403          	ld	s0,16(sp)
    800030e4:	00813483          	ld	s1,8(sp)
    800030e8:	00200513          	li	a0,2
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	250080e7          	jalr	592(ra) # 80003344 <plic_claim>
    800030fc:	00a00793          	li	a5,10
    80003100:	00050493          	mv	s1,a0
    80003104:	06f50663          	beq	a0,a5,80003170 <devintr+0x100>
    80003108:	00100513          	li	a0,1
    8000310c:	fa0482e3          	beqz	s1,800030b0 <devintr+0x40>
    80003110:	00048593          	mv	a1,s1
    80003114:	00002517          	auipc	a0,0x2
    80003118:	50c50513          	addi	a0,a0,1292 # 80005620 <_ZZ12printIntegermE6digits+0x4b8>
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	66c080e7          	jalr	1644(ra) # 80003788 <__printf>
    80003124:	00048513          	mv	a0,s1
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	254080e7          	jalr	596(ra) # 8000337c <plic_complete>
    80003130:	00100513          	li	a0,1
    80003134:	f7dff06f          	j	800030b0 <devintr+0x40>
    80003138:	00004517          	auipc	a0,0x4
    8000313c:	0e850513          	addi	a0,a0,232 # 80007220 <tickslock>
    80003140:	00001097          	auipc	ra,0x1
    80003144:	31c080e7          	jalr	796(ra) # 8000445c <acquire>
    80003148:	00003717          	auipc	a4,0x3
    8000314c:	ff470713          	addi	a4,a4,-12 # 8000613c <ticks>
    80003150:	00072783          	lw	a5,0(a4)
    80003154:	00004517          	auipc	a0,0x4
    80003158:	0cc50513          	addi	a0,a0,204 # 80007220 <tickslock>
    8000315c:	0017879b          	addiw	a5,a5,1
    80003160:	00f72023          	sw	a5,0(a4)
    80003164:	00001097          	auipc	ra,0x1
    80003168:	3c4080e7          	jalr	964(ra) # 80004528 <release>
    8000316c:	f65ff06f          	j	800030d0 <devintr+0x60>
    80003170:	00001097          	auipc	ra,0x1
    80003174:	f20080e7          	jalr	-224(ra) # 80004090 <uartintr>
    80003178:	fadff06f          	j	80003124 <devintr+0xb4>
    8000317c:	0000                	unimp
	...

0000000080003180 <kernelvec>:
    80003180:	f0010113          	addi	sp,sp,-256
    80003184:	00113023          	sd	ra,0(sp)
    80003188:	00213423          	sd	sp,8(sp)
    8000318c:	00313823          	sd	gp,16(sp)
    80003190:	00413c23          	sd	tp,24(sp)
    80003194:	02513023          	sd	t0,32(sp)
    80003198:	02613423          	sd	t1,40(sp)
    8000319c:	02713823          	sd	t2,48(sp)
    800031a0:	02813c23          	sd	s0,56(sp)
    800031a4:	04913023          	sd	s1,64(sp)
    800031a8:	04a13423          	sd	a0,72(sp)
    800031ac:	04b13823          	sd	a1,80(sp)
    800031b0:	04c13c23          	sd	a2,88(sp)
    800031b4:	06d13023          	sd	a3,96(sp)
    800031b8:	06e13423          	sd	a4,104(sp)
    800031bc:	06f13823          	sd	a5,112(sp)
    800031c0:	07013c23          	sd	a6,120(sp)
    800031c4:	09113023          	sd	a7,128(sp)
    800031c8:	09213423          	sd	s2,136(sp)
    800031cc:	09313823          	sd	s3,144(sp)
    800031d0:	09413c23          	sd	s4,152(sp)
    800031d4:	0b513023          	sd	s5,160(sp)
    800031d8:	0b613423          	sd	s6,168(sp)
    800031dc:	0b713823          	sd	s7,176(sp)
    800031e0:	0b813c23          	sd	s8,184(sp)
    800031e4:	0d913023          	sd	s9,192(sp)
    800031e8:	0da13423          	sd	s10,200(sp)
    800031ec:	0db13823          	sd	s11,208(sp)
    800031f0:	0dc13c23          	sd	t3,216(sp)
    800031f4:	0fd13023          	sd	t4,224(sp)
    800031f8:	0fe13423          	sd	t5,232(sp)
    800031fc:	0ff13823          	sd	t6,240(sp)
    80003200:	cd1ff0ef          	jal	ra,80002ed0 <kerneltrap>
    80003204:	00013083          	ld	ra,0(sp)
    80003208:	00813103          	ld	sp,8(sp)
    8000320c:	01013183          	ld	gp,16(sp)
    80003210:	02013283          	ld	t0,32(sp)
    80003214:	02813303          	ld	t1,40(sp)
    80003218:	03013383          	ld	t2,48(sp)
    8000321c:	03813403          	ld	s0,56(sp)
    80003220:	04013483          	ld	s1,64(sp)
    80003224:	04813503          	ld	a0,72(sp)
    80003228:	05013583          	ld	a1,80(sp)
    8000322c:	05813603          	ld	a2,88(sp)
    80003230:	06013683          	ld	a3,96(sp)
    80003234:	06813703          	ld	a4,104(sp)
    80003238:	07013783          	ld	a5,112(sp)
    8000323c:	07813803          	ld	a6,120(sp)
    80003240:	08013883          	ld	a7,128(sp)
    80003244:	08813903          	ld	s2,136(sp)
    80003248:	09013983          	ld	s3,144(sp)
    8000324c:	09813a03          	ld	s4,152(sp)
    80003250:	0a013a83          	ld	s5,160(sp)
    80003254:	0a813b03          	ld	s6,168(sp)
    80003258:	0b013b83          	ld	s7,176(sp)
    8000325c:	0b813c03          	ld	s8,184(sp)
    80003260:	0c013c83          	ld	s9,192(sp)
    80003264:	0c813d03          	ld	s10,200(sp)
    80003268:	0d013d83          	ld	s11,208(sp)
    8000326c:	0d813e03          	ld	t3,216(sp)
    80003270:	0e013e83          	ld	t4,224(sp)
    80003274:	0e813f03          	ld	t5,232(sp)
    80003278:	0f013f83          	ld	t6,240(sp)
    8000327c:	10010113          	addi	sp,sp,256
    80003280:	10200073          	sret
    80003284:	00000013          	nop
    80003288:	00000013          	nop
    8000328c:	00000013          	nop

0000000080003290 <timervec>:
    80003290:	34051573          	csrrw	a0,mscratch,a0
    80003294:	00b53023          	sd	a1,0(a0)
    80003298:	00c53423          	sd	a2,8(a0)
    8000329c:	00d53823          	sd	a3,16(a0)
    800032a0:	01853583          	ld	a1,24(a0)
    800032a4:	02053603          	ld	a2,32(a0)
    800032a8:	0005b683          	ld	a3,0(a1)
    800032ac:	00c686b3          	add	a3,a3,a2
    800032b0:	00d5b023          	sd	a3,0(a1)
    800032b4:	00200593          	li	a1,2
    800032b8:	14459073          	csrw	sip,a1
    800032bc:	01053683          	ld	a3,16(a0)
    800032c0:	00853603          	ld	a2,8(a0)
    800032c4:	00053583          	ld	a1,0(a0)
    800032c8:	34051573          	csrrw	a0,mscratch,a0
    800032cc:	30200073          	mret

00000000800032d0 <plicinit>:
    800032d0:	ff010113          	addi	sp,sp,-16
    800032d4:	00813423          	sd	s0,8(sp)
    800032d8:	01010413          	addi	s0,sp,16
    800032dc:	00813403          	ld	s0,8(sp)
    800032e0:	0c0007b7          	lui	a5,0xc000
    800032e4:	00100713          	li	a4,1
    800032e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800032ec:	00e7a223          	sw	a4,4(a5)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <plicinithart>:
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00813023          	sd	s0,0(sp)
    80003300:	00113423          	sd	ra,8(sp)
    80003304:	01010413          	addi	s0,sp,16
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	a48080e7          	jalr	-1464(ra) # 80002d50 <cpuid>
    80003310:	0085171b          	slliw	a4,a0,0x8
    80003314:	0c0027b7          	lui	a5,0xc002
    80003318:	00e787b3          	add	a5,a5,a4
    8000331c:	40200713          	li	a4,1026
    80003320:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003324:	00813083          	ld	ra,8(sp)
    80003328:	00013403          	ld	s0,0(sp)
    8000332c:	00d5151b          	slliw	a0,a0,0xd
    80003330:	0c2017b7          	lui	a5,0xc201
    80003334:	00a78533          	add	a0,a5,a0
    80003338:	00052023          	sw	zero,0(a0)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <plic_claim>:
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00813023          	sd	s0,0(sp)
    8000334c:	00113423          	sd	ra,8(sp)
    80003350:	01010413          	addi	s0,sp,16
    80003354:	00000097          	auipc	ra,0x0
    80003358:	9fc080e7          	jalr	-1540(ra) # 80002d50 <cpuid>
    8000335c:	00813083          	ld	ra,8(sp)
    80003360:	00013403          	ld	s0,0(sp)
    80003364:	00d5151b          	slliw	a0,a0,0xd
    80003368:	0c2017b7          	lui	a5,0xc201
    8000336c:	00a78533          	add	a0,a5,a0
    80003370:	00452503          	lw	a0,4(a0)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret

000000008000337c <plic_complete>:
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00813823          	sd	s0,16(sp)
    80003384:	00913423          	sd	s1,8(sp)
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	02010413          	addi	s0,sp,32
    80003390:	00050493          	mv	s1,a0
    80003394:	00000097          	auipc	ra,0x0
    80003398:	9bc080e7          	jalr	-1604(ra) # 80002d50 <cpuid>
    8000339c:	01813083          	ld	ra,24(sp)
    800033a0:	01013403          	ld	s0,16(sp)
    800033a4:	00d5179b          	slliw	a5,a0,0xd
    800033a8:	0c201737          	lui	a4,0xc201
    800033ac:	00f707b3          	add	a5,a4,a5
    800033b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	02010113          	addi	sp,sp,32
    800033bc:	00008067          	ret

00000000800033c0 <consolewrite>:
    800033c0:	fb010113          	addi	sp,sp,-80
    800033c4:	04813023          	sd	s0,64(sp)
    800033c8:	04113423          	sd	ra,72(sp)
    800033cc:	02913c23          	sd	s1,56(sp)
    800033d0:	03213823          	sd	s2,48(sp)
    800033d4:	03313423          	sd	s3,40(sp)
    800033d8:	03413023          	sd	s4,32(sp)
    800033dc:	01513c23          	sd	s5,24(sp)
    800033e0:	05010413          	addi	s0,sp,80
    800033e4:	06c05c63          	blez	a2,8000345c <consolewrite+0x9c>
    800033e8:	00060993          	mv	s3,a2
    800033ec:	00050a13          	mv	s4,a0
    800033f0:	00058493          	mv	s1,a1
    800033f4:	00000913          	li	s2,0
    800033f8:	fff00a93          	li	s5,-1
    800033fc:	01c0006f          	j	80003418 <consolewrite+0x58>
    80003400:	fbf44503          	lbu	a0,-65(s0)
    80003404:	0019091b          	addiw	s2,s2,1
    80003408:	00148493          	addi	s1,s1,1
    8000340c:	00001097          	auipc	ra,0x1
    80003410:	a9c080e7          	jalr	-1380(ra) # 80003ea8 <uartputc>
    80003414:	03298063          	beq	s3,s2,80003434 <consolewrite+0x74>
    80003418:	00048613          	mv	a2,s1
    8000341c:	00100693          	li	a3,1
    80003420:	000a0593          	mv	a1,s4
    80003424:	fbf40513          	addi	a0,s0,-65
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	9e0080e7          	jalr	-1568(ra) # 80002e08 <either_copyin>
    80003430:	fd5518e3          	bne	a0,s5,80003400 <consolewrite+0x40>
    80003434:	04813083          	ld	ra,72(sp)
    80003438:	04013403          	ld	s0,64(sp)
    8000343c:	03813483          	ld	s1,56(sp)
    80003440:	02813983          	ld	s3,40(sp)
    80003444:	02013a03          	ld	s4,32(sp)
    80003448:	01813a83          	ld	s5,24(sp)
    8000344c:	00090513          	mv	a0,s2
    80003450:	03013903          	ld	s2,48(sp)
    80003454:	05010113          	addi	sp,sp,80
    80003458:	00008067          	ret
    8000345c:	00000913          	li	s2,0
    80003460:	fd5ff06f          	j	80003434 <consolewrite+0x74>

0000000080003464 <consoleread>:
    80003464:	f9010113          	addi	sp,sp,-112
    80003468:	06813023          	sd	s0,96(sp)
    8000346c:	04913c23          	sd	s1,88(sp)
    80003470:	05213823          	sd	s2,80(sp)
    80003474:	05313423          	sd	s3,72(sp)
    80003478:	05413023          	sd	s4,64(sp)
    8000347c:	03513c23          	sd	s5,56(sp)
    80003480:	03613823          	sd	s6,48(sp)
    80003484:	03713423          	sd	s7,40(sp)
    80003488:	03813023          	sd	s8,32(sp)
    8000348c:	06113423          	sd	ra,104(sp)
    80003490:	01913c23          	sd	s9,24(sp)
    80003494:	07010413          	addi	s0,sp,112
    80003498:	00060b93          	mv	s7,a2
    8000349c:	00050913          	mv	s2,a0
    800034a0:	00058c13          	mv	s8,a1
    800034a4:	00060b1b          	sext.w	s6,a2
    800034a8:	00004497          	auipc	s1,0x4
    800034ac:	da048493          	addi	s1,s1,-608 # 80007248 <cons>
    800034b0:	00400993          	li	s3,4
    800034b4:	fff00a13          	li	s4,-1
    800034b8:	00a00a93          	li	s5,10
    800034bc:	05705e63          	blez	s7,80003518 <consoleread+0xb4>
    800034c0:	09c4a703          	lw	a4,156(s1)
    800034c4:	0984a783          	lw	a5,152(s1)
    800034c8:	0007071b          	sext.w	a4,a4
    800034cc:	08e78463          	beq	a5,a4,80003554 <consoleread+0xf0>
    800034d0:	07f7f713          	andi	a4,a5,127
    800034d4:	00e48733          	add	a4,s1,a4
    800034d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800034dc:	0017869b          	addiw	a3,a5,1
    800034e0:	08d4ac23          	sw	a3,152(s1)
    800034e4:	00070c9b          	sext.w	s9,a4
    800034e8:	0b370663          	beq	a4,s3,80003594 <consoleread+0x130>
    800034ec:	00100693          	li	a3,1
    800034f0:	f9f40613          	addi	a2,s0,-97
    800034f4:	000c0593          	mv	a1,s8
    800034f8:	00090513          	mv	a0,s2
    800034fc:	f8e40fa3          	sb	a4,-97(s0)
    80003500:	00000097          	auipc	ra,0x0
    80003504:	8bc080e7          	jalr	-1860(ra) # 80002dbc <either_copyout>
    80003508:	01450863          	beq	a0,s4,80003518 <consoleread+0xb4>
    8000350c:	001c0c13          	addi	s8,s8,1
    80003510:	fffb8b9b          	addiw	s7,s7,-1
    80003514:	fb5c94e3          	bne	s9,s5,800034bc <consoleread+0x58>
    80003518:	000b851b          	sext.w	a0,s7
    8000351c:	06813083          	ld	ra,104(sp)
    80003520:	06013403          	ld	s0,96(sp)
    80003524:	05813483          	ld	s1,88(sp)
    80003528:	05013903          	ld	s2,80(sp)
    8000352c:	04813983          	ld	s3,72(sp)
    80003530:	04013a03          	ld	s4,64(sp)
    80003534:	03813a83          	ld	s5,56(sp)
    80003538:	02813b83          	ld	s7,40(sp)
    8000353c:	02013c03          	ld	s8,32(sp)
    80003540:	01813c83          	ld	s9,24(sp)
    80003544:	40ab053b          	subw	a0,s6,a0
    80003548:	03013b03          	ld	s6,48(sp)
    8000354c:	07010113          	addi	sp,sp,112
    80003550:	00008067          	ret
    80003554:	00001097          	auipc	ra,0x1
    80003558:	1d8080e7          	jalr	472(ra) # 8000472c <push_on>
    8000355c:	0984a703          	lw	a4,152(s1)
    80003560:	09c4a783          	lw	a5,156(s1)
    80003564:	0007879b          	sext.w	a5,a5
    80003568:	fef70ce3          	beq	a4,a5,80003560 <consoleread+0xfc>
    8000356c:	00001097          	auipc	ra,0x1
    80003570:	234080e7          	jalr	564(ra) # 800047a0 <pop_on>
    80003574:	0984a783          	lw	a5,152(s1)
    80003578:	07f7f713          	andi	a4,a5,127
    8000357c:	00e48733          	add	a4,s1,a4
    80003580:	01874703          	lbu	a4,24(a4)
    80003584:	0017869b          	addiw	a3,a5,1
    80003588:	08d4ac23          	sw	a3,152(s1)
    8000358c:	00070c9b          	sext.w	s9,a4
    80003590:	f5371ee3          	bne	a4,s3,800034ec <consoleread+0x88>
    80003594:	000b851b          	sext.w	a0,s7
    80003598:	f96bf2e3          	bgeu	s7,s6,8000351c <consoleread+0xb8>
    8000359c:	08f4ac23          	sw	a5,152(s1)
    800035a0:	f7dff06f          	j	8000351c <consoleread+0xb8>

00000000800035a4 <consputc>:
    800035a4:	10000793          	li	a5,256
    800035a8:	00f50663          	beq	a0,a5,800035b4 <consputc+0x10>
    800035ac:	00001317          	auipc	t1,0x1
    800035b0:	9f430067          	jr	-1548(t1) # 80003fa0 <uartputc_sync>
    800035b4:	ff010113          	addi	sp,sp,-16
    800035b8:	00113423          	sd	ra,8(sp)
    800035bc:	00813023          	sd	s0,0(sp)
    800035c0:	01010413          	addi	s0,sp,16
    800035c4:	00800513          	li	a0,8
    800035c8:	00001097          	auipc	ra,0x1
    800035cc:	9d8080e7          	jalr	-1576(ra) # 80003fa0 <uartputc_sync>
    800035d0:	02000513          	li	a0,32
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	9cc080e7          	jalr	-1588(ra) # 80003fa0 <uartputc_sync>
    800035dc:	00013403          	ld	s0,0(sp)
    800035e0:	00813083          	ld	ra,8(sp)
    800035e4:	00800513          	li	a0,8
    800035e8:	01010113          	addi	sp,sp,16
    800035ec:	00001317          	auipc	t1,0x1
    800035f0:	9b430067          	jr	-1612(t1) # 80003fa0 <uartputc_sync>

00000000800035f4 <consoleintr>:
    800035f4:	fe010113          	addi	sp,sp,-32
    800035f8:	00813823          	sd	s0,16(sp)
    800035fc:	00913423          	sd	s1,8(sp)
    80003600:	01213023          	sd	s2,0(sp)
    80003604:	00113c23          	sd	ra,24(sp)
    80003608:	02010413          	addi	s0,sp,32
    8000360c:	00004917          	auipc	s2,0x4
    80003610:	c3c90913          	addi	s2,s2,-964 # 80007248 <cons>
    80003614:	00050493          	mv	s1,a0
    80003618:	00090513          	mv	a0,s2
    8000361c:	00001097          	auipc	ra,0x1
    80003620:	e40080e7          	jalr	-448(ra) # 8000445c <acquire>
    80003624:	02048c63          	beqz	s1,8000365c <consoleintr+0x68>
    80003628:	0a092783          	lw	a5,160(s2)
    8000362c:	09892703          	lw	a4,152(s2)
    80003630:	07f00693          	li	a3,127
    80003634:	40e7873b          	subw	a4,a5,a4
    80003638:	02e6e263          	bltu	a3,a4,8000365c <consoleintr+0x68>
    8000363c:	00d00713          	li	a4,13
    80003640:	04e48063          	beq	s1,a4,80003680 <consoleintr+0x8c>
    80003644:	07f7f713          	andi	a4,a5,127
    80003648:	00e90733          	add	a4,s2,a4
    8000364c:	0017879b          	addiw	a5,a5,1
    80003650:	0af92023          	sw	a5,160(s2)
    80003654:	00970c23          	sb	s1,24(a4)
    80003658:	08f92e23          	sw	a5,156(s2)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	01813083          	ld	ra,24(sp)
    80003664:	00813483          	ld	s1,8(sp)
    80003668:	00013903          	ld	s2,0(sp)
    8000366c:	00004517          	auipc	a0,0x4
    80003670:	bdc50513          	addi	a0,a0,-1060 # 80007248 <cons>
    80003674:	02010113          	addi	sp,sp,32
    80003678:	00001317          	auipc	t1,0x1
    8000367c:	eb030067          	jr	-336(t1) # 80004528 <release>
    80003680:	00a00493          	li	s1,10
    80003684:	fc1ff06f          	j	80003644 <consoleintr+0x50>

0000000080003688 <consoleinit>:
    80003688:	fe010113          	addi	sp,sp,-32
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00913423          	sd	s1,8(sp)
    80003698:	02010413          	addi	s0,sp,32
    8000369c:	00004497          	auipc	s1,0x4
    800036a0:	bac48493          	addi	s1,s1,-1108 # 80007248 <cons>
    800036a4:	00048513          	mv	a0,s1
    800036a8:	00002597          	auipc	a1,0x2
    800036ac:	fd058593          	addi	a1,a1,-48 # 80005678 <_ZZ12printIntegermE6digits+0x510>
    800036b0:	00001097          	auipc	ra,0x1
    800036b4:	d88080e7          	jalr	-632(ra) # 80004438 <initlock>
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	7ac080e7          	jalr	1964(ra) # 80003e64 <uartinit>
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	00000797          	auipc	a5,0x0
    800036cc:	d9c78793          	addi	a5,a5,-612 # 80003464 <consoleread>
    800036d0:	0af4bc23          	sd	a5,184(s1)
    800036d4:	00000797          	auipc	a5,0x0
    800036d8:	cec78793          	addi	a5,a5,-788 # 800033c0 <consolewrite>
    800036dc:	0cf4b023          	sd	a5,192(s1)
    800036e0:	00813483          	ld	s1,8(sp)
    800036e4:	02010113          	addi	sp,sp,32
    800036e8:	00008067          	ret

00000000800036ec <console_read>:
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00813423          	sd	s0,8(sp)
    800036f4:	01010413          	addi	s0,sp,16
    800036f8:	00813403          	ld	s0,8(sp)
    800036fc:	00004317          	auipc	t1,0x4
    80003700:	c0433303          	ld	t1,-1020(t1) # 80007300 <devsw+0x10>
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00030067          	jr	t1

000000008000370c <console_write>:
    8000370c:	ff010113          	addi	sp,sp,-16
    80003710:	00813423          	sd	s0,8(sp)
    80003714:	01010413          	addi	s0,sp,16
    80003718:	00813403          	ld	s0,8(sp)
    8000371c:	00004317          	auipc	t1,0x4
    80003720:	bec33303          	ld	t1,-1044(t1) # 80007308 <devsw+0x18>
    80003724:	01010113          	addi	sp,sp,16
    80003728:	00030067          	jr	t1

000000008000372c <panic>:
    8000372c:	fe010113          	addi	sp,sp,-32
    80003730:	00113c23          	sd	ra,24(sp)
    80003734:	00813823          	sd	s0,16(sp)
    80003738:	00913423          	sd	s1,8(sp)
    8000373c:	02010413          	addi	s0,sp,32
    80003740:	00050493          	mv	s1,a0
    80003744:	00002517          	auipc	a0,0x2
    80003748:	f3c50513          	addi	a0,a0,-196 # 80005680 <_ZZ12printIntegermE6digits+0x518>
    8000374c:	00004797          	auipc	a5,0x4
    80003750:	c407ae23          	sw	zero,-932(a5) # 800073a8 <pr+0x18>
    80003754:	00000097          	auipc	ra,0x0
    80003758:	034080e7          	jalr	52(ra) # 80003788 <__printf>
    8000375c:	00048513          	mv	a0,s1
    80003760:	00000097          	auipc	ra,0x0
    80003764:	028080e7          	jalr	40(ra) # 80003788 <__printf>
    80003768:	00002517          	auipc	a0,0x2
    8000376c:	97050513          	addi	a0,a0,-1680 # 800050d8 <CONSOLE_STATUS+0xc8>
    80003770:	00000097          	auipc	ra,0x0
    80003774:	018080e7          	jalr	24(ra) # 80003788 <__printf>
    80003778:	00100793          	li	a5,1
    8000377c:	00003717          	auipc	a4,0x3
    80003780:	9cf72223          	sw	a5,-1596(a4) # 80006140 <panicked>
    80003784:	0000006f          	j	80003784 <panic+0x58>

0000000080003788 <__printf>:
    80003788:	f3010113          	addi	sp,sp,-208
    8000378c:	08813023          	sd	s0,128(sp)
    80003790:	07313423          	sd	s3,104(sp)
    80003794:	09010413          	addi	s0,sp,144
    80003798:	05813023          	sd	s8,64(sp)
    8000379c:	08113423          	sd	ra,136(sp)
    800037a0:	06913c23          	sd	s1,120(sp)
    800037a4:	07213823          	sd	s2,112(sp)
    800037a8:	07413023          	sd	s4,96(sp)
    800037ac:	05513c23          	sd	s5,88(sp)
    800037b0:	05613823          	sd	s6,80(sp)
    800037b4:	05713423          	sd	s7,72(sp)
    800037b8:	03913c23          	sd	s9,56(sp)
    800037bc:	03a13823          	sd	s10,48(sp)
    800037c0:	03b13423          	sd	s11,40(sp)
    800037c4:	00004317          	auipc	t1,0x4
    800037c8:	bcc30313          	addi	t1,t1,-1076 # 80007390 <pr>
    800037cc:	01832c03          	lw	s8,24(t1)
    800037d0:	00b43423          	sd	a1,8(s0)
    800037d4:	00c43823          	sd	a2,16(s0)
    800037d8:	00d43c23          	sd	a3,24(s0)
    800037dc:	02e43023          	sd	a4,32(s0)
    800037e0:	02f43423          	sd	a5,40(s0)
    800037e4:	03043823          	sd	a6,48(s0)
    800037e8:	03143c23          	sd	a7,56(s0)
    800037ec:	00050993          	mv	s3,a0
    800037f0:	4a0c1663          	bnez	s8,80003c9c <__printf+0x514>
    800037f4:	60098c63          	beqz	s3,80003e0c <__printf+0x684>
    800037f8:	0009c503          	lbu	a0,0(s3)
    800037fc:	00840793          	addi	a5,s0,8
    80003800:	f6f43c23          	sd	a5,-136(s0)
    80003804:	00000493          	li	s1,0
    80003808:	22050063          	beqz	a0,80003a28 <__printf+0x2a0>
    8000380c:	00002a37          	lui	s4,0x2
    80003810:	00018ab7          	lui	s5,0x18
    80003814:	000f4b37          	lui	s6,0xf4
    80003818:	00989bb7          	lui	s7,0x989
    8000381c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003820:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003824:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003828:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000382c:	00148c9b          	addiw	s9,s1,1
    80003830:	02500793          	li	a5,37
    80003834:	01998933          	add	s2,s3,s9
    80003838:	38f51263          	bne	a0,a5,80003bbc <__printf+0x434>
    8000383c:	00094783          	lbu	a5,0(s2)
    80003840:	00078c9b          	sext.w	s9,a5
    80003844:	1e078263          	beqz	a5,80003a28 <__printf+0x2a0>
    80003848:	0024849b          	addiw	s1,s1,2
    8000384c:	07000713          	li	a4,112
    80003850:	00998933          	add	s2,s3,s1
    80003854:	38e78a63          	beq	a5,a4,80003be8 <__printf+0x460>
    80003858:	20f76863          	bltu	a4,a5,80003a68 <__printf+0x2e0>
    8000385c:	42a78863          	beq	a5,a0,80003c8c <__printf+0x504>
    80003860:	06400713          	li	a4,100
    80003864:	40e79663          	bne	a5,a4,80003c70 <__printf+0x4e8>
    80003868:	f7843783          	ld	a5,-136(s0)
    8000386c:	0007a603          	lw	a2,0(a5)
    80003870:	00878793          	addi	a5,a5,8
    80003874:	f6f43c23          	sd	a5,-136(s0)
    80003878:	42064a63          	bltz	a2,80003cac <__printf+0x524>
    8000387c:	00a00713          	li	a4,10
    80003880:	02e677bb          	remuw	a5,a2,a4
    80003884:	00002d97          	auipc	s11,0x2
    80003888:	e24d8d93          	addi	s11,s11,-476 # 800056a8 <digits>
    8000388c:	00900593          	li	a1,9
    80003890:	0006051b          	sext.w	a0,a2
    80003894:	00000c93          	li	s9,0
    80003898:	02079793          	slli	a5,a5,0x20
    8000389c:	0207d793          	srli	a5,a5,0x20
    800038a0:	00fd87b3          	add	a5,s11,a5
    800038a4:	0007c783          	lbu	a5,0(a5)
    800038a8:	02e656bb          	divuw	a3,a2,a4
    800038ac:	f8f40023          	sb	a5,-128(s0)
    800038b0:	14c5d863          	bge	a1,a2,80003a00 <__printf+0x278>
    800038b4:	06300593          	li	a1,99
    800038b8:	00100c93          	li	s9,1
    800038bc:	02e6f7bb          	remuw	a5,a3,a4
    800038c0:	02079793          	slli	a5,a5,0x20
    800038c4:	0207d793          	srli	a5,a5,0x20
    800038c8:	00fd87b3          	add	a5,s11,a5
    800038cc:	0007c783          	lbu	a5,0(a5)
    800038d0:	02e6d73b          	divuw	a4,a3,a4
    800038d4:	f8f400a3          	sb	a5,-127(s0)
    800038d8:	12a5f463          	bgeu	a1,a0,80003a00 <__printf+0x278>
    800038dc:	00a00693          	li	a3,10
    800038e0:	00900593          	li	a1,9
    800038e4:	02d777bb          	remuw	a5,a4,a3
    800038e8:	02079793          	slli	a5,a5,0x20
    800038ec:	0207d793          	srli	a5,a5,0x20
    800038f0:	00fd87b3          	add	a5,s11,a5
    800038f4:	0007c503          	lbu	a0,0(a5)
    800038f8:	02d757bb          	divuw	a5,a4,a3
    800038fc:	f8a40123          	sb	a0,-126(s0)
    80003900:	48e5f263          	bgeu	a1,a4,80003d84 <__printf+0x5fc>
    80003904:	06300513          	li	a0,99
    80003908:	02d7f5bb          	remuw	a1,a5,a3
    8000390c:	02059593          	slli	a1,a1,0x20
    80003910:	0205d593          	srli	a1,a1,0x20
    80003914:	00bd85b3          	add	a1,s11,a1
    80003918:	0005c583          	lbu	a1,0(a1)
    8000391c:	02d7d7bb          	divuw	a5,a5,a3
    80003920:	f8b401a3          	sb	a1,-125(s0)
    80003924:	48e57263          	bgeu	a0,a4,80003da8 <__printf+0x620>
    80003928:	3e700513          	li	a0,999
    8000392c:	02d7f5bb          	remuw	a1,a5,a3
    80003930:	02059593          	slli	a1,a1,0x20
    80003934:	0205d593          	srli	a1,a1,0x20
    80003938:	00bd85b3          	add	a1,s11,a1
    8000393c:	0005c583          	lbu	a1,0(a1)
    80003940:	02d7d7bb          	divuw	a5,a5,a3
    80003944:	f8b40223          	sb	a1,-124(s0)
    80003948:	46e57663          	bgeu	a0,a4,80003db4 <__printf+0x62c>
    8000394c:	02d7f5bb          	remuw	a1,a5,a3
    80003950:	02059593          	slli	a1,a1,0x20
    80003954:	0205d593          	srli	a1,a1,0x20
    80003958:	00bd85b3          	add	a1,s11,a1
    8000395c:	0005c583          	lbu	a1,0(a1)
    80003960:	02d7d7bb          	divuw	a5,a5,a3
    80003964:	f8b402a3          	sb	a1,-123(s0)
    80003968:	46ea7863          	bgeu	s4,a4,80003dd8 <__printf+0x650>
    8000396c:	02d7f5bb          	remuw	a1,a5,a3
    80003970:	02059593          	slli	a1,a1,0x20
    80003974:	0205d593          	srli	a1,a1,0x20
    80003978:	00bd85b3          	add	a1,s11,a1
    8000397c:	0005c583          	lbu	a1,0(a1)
    80003980:	02d7d7bb          	divuw	a5,a5,a3
    80003984:	f8b40323          	sb	a1,-122(s0)
    80003988:	3eeaf863          	bgeu	s5,a4,80003d78 <__printf+0x5f0>
    8000398c:	02d7f5bb          	remuw	a1,a5,a3
    80003990:	02059593          	slli	a1,a1,0x20
    80003994:	0205d593          	srli	a1,a1,0x20
    80003998:	00bd85b3          	add	a1,s11,a1
    8000399c:	0005c583          	lbu	a1,0(a1)
    800039a0:	02d7d7bb          	divuw	a5,a5,a3
    800039a4:	f8b403a3          	sb	a1,-121(s0)
    800039a8:	42eb7e63          	bgeu	s6,a4,80003de4 <__printf+0x65c>
    800039ac:	02d7f5bb          	remuw	a1,a5,a3
    800039b0:	02059593          	slli	a1,a1,0x20
    800039b4:	0205d593          	srli	a1,a1,0x20
    800039b8:	00bd85b3          	add	a1,s11,a1
    800039bc:	0005c583          	lbu	a1,0(a1)
    800039c0:	02d7d7bb          	divuw	a5,a5,a3
    800039c4:	f8b40423          	sb	a1,-120(s0)
    800039c8:	42ebfc63          	bgeu	s7,a4,80003e00 <__printf+0x678>
    800039cc:	02079793          	slli	a5,a5,0x20
    800039d0:	0207d793          	srli	a5,a5,0x20
    800039d4:	00fd8db3          	add	s11,s11,a5
    800039d8:	000dc703          	lbu	a4,0(s11)
    800039dc:	00a00793          	li	a5,10
    800039e0:	00900c93          	li	s9,9
    800039e4:	f8e404a3          	sb	a4,-119(s0)
    800039e8:	00065c63          	bgez	a2,80003a00 <__printf+0x278>
    800039ec:	f9040713          	addi	a4,s0,-112
    800039f0:	00f70733          	add	a4,a4,a5
    800039f4:	02d00693          	li	a3,45
    800039f8:	fed70823          	sb	a3,-16(a4)
    800039fc:	00078c93          	mv	s9,a5
    80003a00:	f8040793          	addi	a5,s0,-128
    80003a04:	01978cb3          	add	s9,a5,s9
    80003a08:	f7f40d13          	addi	s10,s0,-129
    80003a0c:	000cc503          	lbu	a0,0(s9)
    80003a10:	fffc8c93          	addi	s9,s9,-1
    80003a14:	00000097          	auipc	ra,0x0
    80003a18:	b90080e7          	jalr	-1136(ra) # 800035a4 <consputc>
    80003a1c:	ffac98e3          	bne	s9,s10,80003a0c <__printf+0x284>
    80003a20:	00094503          	lbu	a0,0(s2)
    80003a24:	e00514e3          	bnez	a0,8000382c <__printf+0xa4>
    80003a28:	1a0c1663          	bnez	s8,80003bd4 <__printf+0x44c>
    80003a2c:	08813083          	ld	ra,136(sp)
    80003a30:	08013403          	ld	s0,128(sp)
    80003a34:	07813483          	ld	s1,120(sp)
    80003a38:	07013903          	ld	s2,112(sp)
    80003a3c:	06813983          	ld	s3,104(sp)
    80003a40:	06013a03          	ld	s4,96(sp)
    80003a44:	05813a83          	ld	s5,88(sp)
    80003a48:	05013b03          	ld	s6,80(sp)
    80003a4c:	04813b83          	ld	s7,72(sp)
    80003a50:	04013c03          	ld	s8,64(sp)
    80003a54:	03813c83          	ld	s9,56(sp)
    80003a58:	03013d03          	ld	s10,48(sp)
    80003a5c:	02813d83          	ld	s11,40(sp)
    80003a60:	0d010113          	addi	sp,sp,208
    80003a64:	00008067          	ret
    80003a68:	07300713          	li	a4,115
    80003a6c:	1ce78a63          	beq	a5,a4,80003c40 <__printf+0x4b8>
    80003a70:	07800713          	li	a4,120
    80003a74:	1ee79e63          	bne	a5,a4,80003c70 <__printf+0x4e8>
    80003a78:	f7843783          	ld	a5,-136(s0)
    80003a7c:	0007a703          	lw	a4,0(a5)
    80003a80:	00878793          	addi	a5,a5,8
    80003a84:	f6f43c23          	sd	a5,-136(s0)
    80003a88:	28074263          	bltz	a4,80003d0c <__printf+0x584>
    80003a8c:	00002d97          	auipc	s11,0x2
    80003a90:	c1cd8d93          	addi	s11,s11,-996 # 800056a8 <digits>
    80003a94:	00f77793          	andi	a5,a4,15
    80003a98:	00fd87b3          	add	a5,s11,a5
    80003a9c:	0007c683          	lbu	a3,0(a5)
    80003aa0:	00f00613          	li	a2,15
    80003aa4:	0007079b          	sext.w	a5,a4
    80003aa8:	f8d40023          	sb	a3,-128(s0)
    80003aac:	0047559b          	srliw	a1,a4,0x4
    80003ab0:	0047569b          	srliw	a3,a4,0x4
    80003ab4:	00000c93          	li	s9,0
    80003ab8:	0ee65063          	bge	a2,a4,80003b98 <__printf+0x410>
    80003abc:	00f6f693          	andi	a3,a3,15
    80003ac0:	00dd86b3          	add	a3,s11,a3
    80003ac4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003ac8:	0087d79b          	srliw	a5,a5,0x8
    80003acc:	00100c93          	li	s9,1
    80003ad0:	f8d400a3          	sb	a3,-127(s0)
    80003ad4:	0cb67263          	bgeu	a2,a1,80003b98 <__printf+0x410>
    80003ad8:	00f7f693          	andi	a3,a5,15
    80003adc:	00dd86b3          	add	a3,s11,a3
    80003ae0:	0006c583          	lbu	a1,0(a3)
    80003ae4:	00f00613          	li	a2,15
    80003ae8:	0047d69b          	srliw	a3,a5,0x4
    80003aec:	f8b40123          	sb	a1,-126(s0)
    80003af0:	0047d593          	srli	a1,a5,0x4
    80003af4:	28f67e63          	bgeu	a2,a5,80003d90 <__printf+0x608>
    80003af8:	00f6f693          	andi	a3,a3,15
    80003afc:	00dd86b3          	add	a3,s11,a3
    80003b00:	0006c503          	lbu	a0,0(a3)
    80003b04:	0087d813          	srli	a6,a5,0x8
    80003b08:	0087d69b          	srliw	a3,a5,0x8
    80003b0c:	f8a401a3          	sb	a0,-125(s0)
    80003b10:	28b67663          	bgeu	a2,a1,80003d9c <__printf+0x614>
    80003b14:	00f6f693          	andi	a3,a3,15
    80003b18:	00dd86b3          	add	a3,s11,a3
    80003b1c:	0006c583          	lbu	a1,0(a3)
    80003b20:	00c7d513          	srli	a0,a5,0xc
    80003b24:	00c7d69b          	srliw	a3,a5,0xc
    80003b28:	f8b40223          	sb	a1,-124(s0)
    80003b2c:	29067a63          	bgeu	a2,a6,80003dc0 <__printf+0x638>
    80003b30:	00f6f693          	andi	a3,a3,15
    80003b34:	00dd86b3          	add	a3,s11,a3
    80003b38:	0006c583          	lbu	a1,0(a3)
    80003b3c:	0107d813          	srli	a6,a5,0x10
    80003b40:	0107d69b          	srliw	a3,a5,0x10
    80003b44:	f8b402a3          	sb	a1,-123(s0)
    80003b48:	28a67263          	bgeu	a2,a0,80003dcc <__printf+0x644>
    80003b4c:	00f6f693          	andi	a3,a3,15
    80003b50:	00dd86b3          	add	a3,s11,a3
    80003b54:	0006c683          	lbu	a3,0(a3)
    80003b58:	0147d79b          	srliw	a5,a5,0x14
    80003b5c:	f8d40323          	sb	a3,-122(s0)
    80003b60:	21067663          	bgeu	a2,a6,80003d6c <__printf+0x5e4>
    80003b64:	02079793          	slli	a5,a5,0x20
    80003b68:	0207d793          	srli	a5,a5,0x20
    80003b6c:	00fd8db3          	add	s11,s11,a5
    80003b70:	000dc683          	lbu	a3,0(s11)
    80003b74:	00800793          	li	a5,8
    80003b78:	00700c93          	li	s9,7
    80003b7c:	f8d403a3          	sb	a3,-121(s0)
    80003b80:	00075c63          	bgez	a4,80003b98 <__printf+0x410>
    80003b84:	f9040713          	addi	a4,s0,-112
    80003b88:	00f70733          	add	a4,a4,a5
    80003b8c:	02d00693          	li	a3,45
    80003b90:	fed70823          	sb	a3,-16(a4)
    80003b94:	00078c93          	mv	s9,a5
    80003b98:	f8040793          	addi	a5,s0,-128
    80003b9c:	01978cb3          	add	s9,a5,s9
    80003ba0:	f7f40d13          	addi	s10,s0,-129
    80003ba4:	000cc503          	lbu	a0,0(s9)
    80003ba8:	fffc8c93          	addi	s9,s9,-1
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	9f8080e7          	jalr	-1544(ra) # 800035a4 <consputc>
    80003bb4:	ff9d18e3          	bne	s10,s9,80003ba4 <__printf+0x41c>
    80003bb8:	0100006f          	j	80003bc8 <__printf+0x440>
    80003bbc:	00000097          	auipc	ra,0x0
    80003bc0:	9e8080e7          	jalr	-1560(ra) # 800035a4 <consputc>
    80003bc4:	000c8493          	mv	s1,s9
    80003bc8:	00094503          	lbu	a0,0(s2)
    80003bcc:	c60510e3          	bnez	a0,8000382c <__printf+0xa4>
    80003bd0:	e40c0ee3          	beqz	s8,80003a2c <__printf+0x2a4>
    80003bd4:	00003517          	auipc	a0,0x3
    80003bd8:	7bc50513          	addi	a0,a0,1980 # 80007390 <pr>
    80003bdc:	00001097          	auipc	ra,0x1
    80003be0:	94c080e7          	jalr	-1716(ra) # 80004528 <release>
    80003be4:	e49ff06f          	j	80003a2c <__printf+0x2a4>
    80003be8:	f7843783          	ld	a5,-136(s0)
    80003bec:	03000513          	li	a0,48
    80003bf0:	01000d13          	li	s10,16
    80003bf4:	00878713          	addi	a4,a5,8
    80003bf8:	0007bc83          	ld	s9,0(a5)
    80003bfc:	f6e43c23          	sd	a4,-136(s0)
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	9a4080e7          	jalr	-1628(ra) # 800035a4 <consputc>
    80003c08:	07800513          	li	a0,120
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	998080e7          	jalr	-1640(ra) # 800035a4 <consputc>
    80003c14:	00002d97          	auipc	s11,0x2
    80003c18:	a94d8d93          	addi	s11,s11,-1388 # 800056a8 <digits>
    80003c1c:	03ccd793          	srli	a5,s9,0x3c
    80003c20:	00fd87b3          	add	a5,s11,a5
    80003c24:	0007c503          	lbu	a0,0(a5)
    80003c28:	fffd0d1b          	addiw	s10,s10,-1
    80003c2c:	004c9c93          	slli	s9,s9,0x4
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	974080e7          	jalr	-1676(ra) # 800035a4 <consputc>
    80003c38:	fe0d12e3          	bnez	s10,80003c1c <__printf+0x494>
    80003c3c:	f8dff06f          	j	80003bc8 <__printf+0x440>
    80003c40:	f7843783          	ld	a5,-136(s0)
    80003c44:	0007bc83          	ld	s9,0(a5)
    80003c48:	00878793          	addi	a5,a5,8
    80003c4c:	f6f43c23          	sd	a5,-136(s0)
    80003c50:	000c9a63          	bnez	s9,80003c64 <__printf+0x4dc>
    80003c54:	1080006f          	j	80003d5c <__printf+0x5d4>
    80003c58:	001c8c93          	addi	s9,s9,1
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	948080e7          	jalr	-1720(ra) # 800035a4 <consputc>
    80003c64:	000cc503          	lbu	a0,0(s9)
    80003c68:	fe0518e3          	bnez	a0,80003c58 <__printf+0x4d0>
    80003c6c:	f5dff06f          	j	80003bc8 <__printf+0x440>
    80003c70:	02500513          	li	a0,37
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	930080e7          	jalr	-1744(ra) # 800035a4 <consputc>
    80003c7c:	000c8513          	mv	a0,s9
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	924080e7          	jalr	-1756(ra) # 800035a4 <consputc>
    80003c88:	f41ff06f          	j	80003bc8 <__printf+0x440>
    80003c8c:	02500513          	li	a0,37
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	914080e7          	jalr	-1772(ra) # 800035a4 <consputc>
    80003c98:	f31ff06f          	j	80003bc8 <__printf+0x440>
    80003c9c:	00030513          	mv	a0,t1
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	7bc080e7          	jalr	1980(ra) # 8000445c <acquire>
    80003ca8:	b4dff06f          	j	800037f4 <__printf+0x6c>
    80003cac:	40c0053b          	negw	a0,a2
    80003cb0:	00a00713          	li	a4,10
    80003cb4:	02e576bb          	remuw	a3,a0,a4
    80003cb8:	00002d97          	auipc	s11,0x2
    80003cbc:	9f0d8d93          	addi	s11,s11,-1552 # 800056a8 <digits>
    80003cc0:	ff700593          	li	a1,-9
    80003cc4:	02069693          	slli	a3,a3,0x20
    80003cc8:	0206d693          	srli	a3,a3,0x20
    80003ccc:	00dd86b3          	add	a3,s11,a3
    80003cd0:	0006c683          	lbu	a3,0(a3)
    80003cd4:	02e557bb          	divuw	a5,a0,a4
    80003cd8:	f8d40023          	sb	a3,-128(s0)
    80003cdc:	10b65e63          	bge	a2,a1,80003df8 <__printf+0x670>
    80003ce0:	06300593          	li	a1,99
    80003ce4:	02e7f6bb          	remuw	a3,a5,a4
    80003ce8:	02069693          	slli	a3,a3,0x20
    80003cec:	0206d693          	srli	a3,a3,0x20
    80003cf0:	00dd86b3          	add	a3,s11,a3
    80003cf4:	0006c683          	lbu	a3,0(a3)
    80003cf8:	02e7d73b          	divuw	a4,a5,a4
    80003cfc:	00200793          	li	a5,2
    80003d00:	f8d400a3          	sb	a3,-127(s0)
    80003d04:	bca5ece3          	bltu	a1,a0,800038dc <__printf+0x154>
    80003d08:	ce5ff06f          	j	800039ec <__printf+0x264>
    80003d0c:	40e007bb          	negw	a5,a4
    80003d10:	00002d97          	auipc	s11,0x2
    80003d14:	998d8d93          	addi	s11,s11,-1640 # 800056a8 <digits>
    80003d18:	00f7f693          	andi	a3,a5,15
    80003d1c:	00dd86b3          	add	a3,s11,a3
    80003d20:	0006c583          	lbu	a1,0(a3)
    80003d24:	ff100613          	li	a2,-15
    80003d28:	0047d69b          	srliw	a3,a5,0x4
    80003d2c:	f8b40023          	sb	a1,-128(s0)
    80003d30:	0047d59b          	srliw	a1,a5,0x4
    80003d34:	0ac75e63          	bge	a4,a2,80003df0 <__printf+0x668>
    80003d38:	00f6f693          	andi	a3,a3,15
    80003d3c:	00dd86b3          	add	a3,s11,a3
    80003d40:	0006c603          	lbu	a2,0(a3)
    80003d44:	00f00693          	li	a3,15
    80003d48:	0087d79b          	srliw	a5,a5,0x8
    80003d4c:	f8c400a3          	sb	a2,-127(s0)
    80003d50:	d8b6e4e3          	bltu	a3,a1,80003ad8 <__printf+0x350>
    80003d54:	00200793          	li	a5,2
    80003d58:	e2dff06f          	j	80003b84 <__printf+0x3fc>
    80003d5c:	00002c97          	auipc	s9,0x2
    80003d60:	92cc8c93          	addi	s9,s9,-1748 # 80005688 <_ZZ12printIntegermE6digits+0x520>
    80003d64:	02800513          	li	a0,40
    80003d68:	ef1ff06f          	j	80003c58 <__printf+0x4d0>
    80003d6c:	00700793          	li	a5,7
    80003d70:	00600c93          	li	s9,6
    80003d74:	e0dff06f          	j	80003b80 <__printf+0x3f8>
    80003d78:	00700793          	li	a5,7
    80003d7c:	00600c93          	li	s9,6
    80003d80:	c69ff06f          	j	800039e8 <__printf+0x260>
    80003d84:	00300793          	li	a5,3
    80003d88:	00200c93          	li	s9,2
    80003d8c:	c5dff06f          	j	800039e8 <__printf+0x260>
    80003d90:	00300793          	li	a5,3
    80003d94:	00200c93          	li	s9,2
    80003d98:	de9ff06f          	j	80003b80 <__printf+0x3f8>
    80003d9c:	00400793          	li	a5,4
    80003da0:	00300c93          	li	s9,3
    80003da4:	dddff06f          	j	80003b80 <__printf+0x3f8>
    80003da8:	00400793          	li	a5,4
    80003dac:	00300c93          	li	s9,3
    80003db0:	c39ff06f          	j	800039e8 <__printf+0x260>
    80003db4:	00500793          	li	a5,5
    80003db8:	00400c93          	li	s9,4
    80003dbc:	c2dff06f          	j	800039e8 <__printf+0x260>
    80003dc0:	00500793          	li	a5,5
    80003dc4:	00400c93          	li	s9,4
    80003dc8:	db9ff06f          	j	80003b80 <__printf+0x3f8>
    80003dcc:	00600793          	li	a5,6
    80003dd0:	00500c93          	li	s9,5
    80003dd4:	dadff06f          	j	80003b80 <__printf+0x3f8>
    80003dd8:	00600793          	li	a5,6
    80003ddc:	00500c93          	li	s9,5
    80003de0:	c09ff06f          	j	800039e8 <__printf+0x260>
    80003de4:	00800793          	li	a5,8
    80003de8:	00700c93          	li	s9,7
    80003dec:	bfdff06f          	j	800039e8 <__printf+0x260>
    80003df0:	00100793          	li	a5,1
    80003df4:	d91ff06f          	j	80003b84 <__printf+0x3fc>
    80003df8:	00100793          	li	a5,1
    80003dfc:	bf1ff06f          	j	800039ec <__printf+0x264>
    80003e00:	00900793          	li	a5,9
    80003e04:	00800c93          	li	s9,8
    80003e08:	be1ff06f          	j	800039e8 <__printf+0x260>
    80003e0c:	00002517          	auipc	a0,0x2
    80003e10:	88450513          	addi	a0,a0,-1916 # 80005690 <_ZZ12printIntegermE6digits+0x528>
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	918080e7          	jalr	-1768(ra) # 8000372c <panic>

0000000080003e1c <printfinit>:
    80003e1c:	fe010113          	addi	sp,sp,-32
    80003e20:	00813823          	sd	s0,16(sp)
    80003e24:	00913423          	sd	s1,8(sp)
    80003e28:	00113c23          	sd	ra,24(sp)
    80003e2c:	02010413          	addi	s0,sp,32
    80003e30:	00003497          	auipc	s1,0x3
    80003e34:	56048493          	addi	s1,s1,1376 # 80007390 <pr>
    80003e38:	00048513          	mv	a0,s1
    80003e3c:	00002597          	auipc	a1,0x2
    80003e40:	86458593          	addi	a1,a1,-1948 # 800056a0 <_ZZ12printIntegermE6digits+0x538>
    80003e44:	00000097          	auipc	ra,0x0
    80003e48:	5f4080e7          	jalr	1524(ra) # 80004438 <initlock>
    80003e4c:	01813083          	ld	ra,24(sp)
    80003e50:	01013403          	ld	s0,16(sp)
    80003e54:	0004ac23          	sw	zero,24(s1)
    80003e58:	00813483          	ld	s1,8(sp)
    80003e5c:	02010113          	addi	sp,sp,32
    80003e60:	00008067          	ret

0000000080003e64 <uartinit>:
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00813423          	sd	s0,8(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	100007b7          	lui	a5,0x10000
    80003e74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003e78:	f8000713          	li	a4,-128
    80003e7c:	00e781a3          	sb	a4,3(a5)
    80003e80:	00300713          	li	a4,3
    80003e84:	00e78023          	sb	a4,0(a5)
    80003e88:	000780a3          	sb	zero,1(a5)
    80003e8c:	00e781a3          	sb	a4,3(a5)
    80003e90:	00700693          	li	a3,7
    80003e94:	00d78123          	sb	a3,2(a5)
    80003e98:	00e780a3          	sb	a4,1(a5)
    80003e9c:	00813403          	ld	s0,8(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret

0000000080003ea8 <uartputc>:
    80003ea8:	00002797          	auipc	a5,0x2
    80003eac:	2987a783          	lw	a5,664(a5) # 80006140 <panicked>
    80003eb0:	00078463          	beqz	a5,80003eb8 <uartputc+0x10>
    80003eb4:	0000006f          	j	80003eb4 <uartputc+0xc>
    80003eb8:	fd010113          	addi	sp,sp,-48
    80003ebc:	02813023          	sd	s0,32(sp)
    80003ec0:	00913c23          	sd	s1,24(sp)
    80003ec4:	01213823          	sd	s2,16(sp)
    80003ec8:	01313423          	sd	s3,8(sp)
    80003ecc:	02113423          	sd	ra,40(sp)
    80003ed0:	03010413          	addi	s0,sp,48
    80003ed4:	00002917          	auipc	s2,0x2
    80003ed8:	27490913          	addi	s2,s2,628 # 80006148 <uart_tx_r>
    80003edc:	00093783          	ld	a5,0(s2)
    80003ee0:	00002497          	auipc	s1,0x2
    80003ee4:	27048493          	addi	s1,s1,624 # 80006150 <uart_tx_w>
    80003ee8:	0004b703          	ld	a4,0(s1)
    80003eec:	02078693          	addi	a3,a5,32
    80003ef0:	00050993          	mv	s3,a0
    80003ef4:	02e69c63          	bne	a3,a4,80003f2c <uartputc+0x84>
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	834080e7          	jalr	-1996(ra) # 8000472c <push_on>
    80003f00:	00093783          	ld	a5,0(s2)
    80003f04:	0004b703          	ld	a4,0(s1)
    80003f08:	02078793          	addi	a5,a5,32
    80003f0c:	00e79463          	bne	a5,a4,80003f14 <uartputc+0x6c>
    80003f10:	0000006f          	j	80003f10 <uartputc+0x68>
    80003f14:	00001097          	auipc	ra,0x1
    80003f18:	88c080e7          	jalr	-1908(ra) # 800047a0 <pop_on>
    80003f1c:	00093783          	ld	a5,0(s2)
    80003f20:	0004b703          	ld	a4,0(s1)
    80003f24:	02078693          	addi	a3,a5,32
    80003f28:	fce688e3          	beq	a3,a4,80003ef8 <uartputc+0x50>
    80003f2c:	01f77693          	andi	a3,a4,31
    80003f30:	00003597          	auipc	a1,0x3
    80003f34:	48058593          	addi	a1,a1,1152 # 800073b0 <uart_tx_buf>
    80003f38:	00d586b3          	add	a3,a1,a3
    80003f3c:	00170713          	addi	a4,a4,1
    80003f40:	01368023          	sb	s3,0(a3)
    80003f44:	00e4b023          	sd	a4,0(s1)
    80003f48:	10000637          	lui	a2,0x10000
    80003f4c:	02f71063          	bne	a4,a5,80003f6c <uartputc+0xc4>
    80003f50:	0340006f          	j	80003f84 <uartputc+0xdc>
    80003f54:	00074703          	lbu	a4,0(a4)
    80003f58:	00f93023          	sd	a5,0(s2)
    80003f5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003f60:	00093783          	ld	a5,0(s2)
    80003f64:	0004b703          	ld	a4,0(s1)
    80003f68:	00f70e63          	beq	a4,a5,80003f84 <uartputc+0xdc>
    80003f6c:	00564683          	lbu	a3,5(a2)
    80003f70:	01f7f713          	andi	a4,a5,31
    80003f74:	00e58733          	add	a4,a1,a4
    80003f78:	0206f693          	andi	a3,a3,32
    80003f7c:	00178793          	addi	a5,a5,1
    80003f80:	fc069ae3          	bnez	a3,80003f54 <uartputc+0xac>
    80003f84:	02813083          	ld	ra,40(sp)
    80003f88:	02013403          	ld	s0,32(sp)
    80003f8c:	01813483          	ld	s1,24(sp)
    80003f90:	01013903          	ld	s2,16(sp)
    80003f94:	00813983          	ld	s3,8(sp)
    80003f98:	03010113          	addi	sp,sp,48
    80003f9c:	00008067          	ret

0000000080003fa0 <uartputc_sync>:
    80003fa0:	ff010113          	addi	sp,sp,-16
    80003fa4:	00813423          	sd	s0,8(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    80003fac:	00002717          	auipc	a4,0x2
    80003fb0:	19472703          	lw	a4,404(a4) # 80006140 <panicked>
    80003fb4:	02071663          	bnez	a4,80003fe0 <uartputc_sync+0x40>
    80003fb8:	00050793          	mv	a5,a0
    80003fbc:	100006b7          	lui	a3,0x10000
    80003fc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003fc4:	02077713          	andi	a4,a4,32
    80003fc8:	fe070ce3          	beqz	a4,80003fc0 <uartputc_sync+0x20>
    80003fcc:	0ff7f793          	andi	a5,a5,255
    80003fd0:	00f68023          	sb	a5,0(a3)
    80003fd4:	00813403          	ld	s0,8(sp)
    80003fd8:	01010113          	addi	sp,sp,16
    80003fdc:	00008067          	ret
    80003fe0:	0000006f          	j	80003fe0 <uartputc_sync+0x40>

0000000080003fe4 <uartstart>:
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00813423          	sd	s0,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
    80003ff0:	00002617          	auipc	a2,0x2
    80003ff4:	15860613          	addi	a2,a2,344 # 80006148 <uart_tx_r>
    80003ff8:	00002517          	auipc	a0,0x2
    80003ffc:	15850513          	addi	a0,a0,344 # 80006150 <uart_tx_w>
    80004000:	00063783          	ld	a5,0(a2)
    80004004:	00053703          	ld	a4,0(a0)
    80004008:	04f70263          	beq	a4,a5,8000404c <uartstart+0x68>
    8000400c:	100005b7          	lui	a1,0x10000
    80004010:	00003817          	auipc	a6,0x3
    80004014:	3a080813          	addi	a6,a6,928 # 800073b0 <uart_tx_buf>
    80004018:	01c0006f          	j	80004034 <uartstart+0x50>
    8000401c:	0006c703          	lbu	a4,0(a3)
    80004020:	00f63023          	sd	a5,0(a2)
    80004024:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004028:	00063783          	ld	a5,0(a2)
    8000402c:	00053703          	ld	a4,0(a0)
    80004030:	00f70e63          	beq	a4,a5,8000404c <uartstart+0x68>
    80004034:	01f7f713          	andi	a4,a5,31
    80004038:	00e806b3          	add	a3,a6,a4
    8000403c:	0055c703          	lbu	a4,5(a1)
    80004040:	00178793          	addi	a5,a5,1
    80004044:	02077713          	andi	a4,a4,32
    80004048:	fc071ae3          	bnez	a4,8000401c <uartstart+0x38>
    8000404c:	00813403          	ld	s0,8(sp)
    80004050:	01010113          	addi	sp,sp,16
    80004054:	00008067          	ret

0000000080004058 <uartgetc>:
    80004058:	ff010113          	addi	sp,sp,-16
    8000405c:	00813423          	sd	s0,8(sp)
    80004060:	01010413          	addi	s0,sp,16
    80004064:	10000737          	lui	a4,0x10000
    80004068:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000406c:	0017f793          	andi	a5,a5,1
    80004070:	00078c63          	beqz	a5,80004088 <uartgetc+0x30>
    80004074:	00074503          	lbu	a0,0(a4)
    80004078:	0ff57513          	andi	a0,a0,255
    8000407c:	00813403          	ld	s0,8(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret
    80004088:	fff00513          	li	a0,-1
    8000408c:	ff1ff06f          	j	8000407c <uartgetc+0x24>

0000000080004090 <uartintr>:
    80004090:	100007b7          	lui	a5,0x10000
    80004094:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004098:	0017f793          	andi	a5,a5,1
    8000409c:	0a078463          	beqz	a5,80004144 <uartintr+0xb4>
    800040a0:	fe010113          	addi	sp,sp,-32
    800040a4:	00813823          	sd	s0,16(sp)
    800040a8:	00913423          	sd	s1,8(sp)
    800040ac:	00113c23          	sd	ra,24(sp)
    800040b0:	02010413          	addi	s0,sp,32
    800040b4:	100004b7          	lui	s1,0x10000
    800040b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800040bc:	0ff57513          	andi	a0,a0,255
    800040c0:	fffff097          	auipc	ra,0xfffff
    800040c4:	534080e7          	jalr	1332(ra) # 800035f4 <consoleintr>
    800040c8:	0054c783          	lbu	a5,5(s1)
    800040cc:	0017f793          	andi	a5,a5,1
    800040d0:	fe0794e3          	bnez	a5,800040b8 <uartintr+0x28>
    800040d4:	00002617          	auipc	a2,0x2
    800040d8:	07460613          	addi	a2,a2,116 # 80006148 <uart_tx_r>
    800040dc:	00002517          	auipc	a0,0x2
    800040e0:	07450513          	addi	a0,a0,116 # 80006150 <uart_tx_w>
    800040e4:	00063783          	ld	a5,0(a2)
    800040e8:	00053703          	ld	a4,0(a0)
    800040ec:	04f70263          	beq	a4,a5,80004130 <uartintr+0xa0>
    800040f0:	100005b7          	lui	a1,0x10000
    800040f4:	00003817          	auipc	a6,0x3
    800040f8:	2bc80813          	addi	a6,a6,700 # 800073b0 <uart_tx_buf>
    800040fc:	01c0006f          	j	80004118 <uartintr+0x88>
    80004100:	0006c703          	lbu	a4,0(a3)
    80004104:	00f63023          	sd	a5,0(a2)
    80004108:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000410c:	00063783          	ld	a5,0(a2)
    80004110:	00053703          	ld	a4,0(a0)
    80004114:	00f70e63          	beq	a4,a5,80004130 <uartintr+0xa0>
    80004118:	01f7f713          	andi	a4,a5,31
    8000411c:	00e806b3          	add	a3,a6,a4
    80004120:	0055c703          	lbu	a4,5(a1)
    80004124:	00178793          	addi	a5,a5,1
    80004128:	02077713          	andi	a4,a4,32
    8000412c:	fc071ae3          	bnez	a4,80004100 <uartintr+0x70>
    80004130:	01813083          	ld	ra,24(sp)
    80004134:	01013403          	ld	s0,16(sp)
    80004138:	00813483          	ld	s1,8(sp)
    8000413c:	02010113          	addi	sp,sp,32
    80004140:	00008067          	ret
    80004144:	00002617          	auipc	a2,0x2
    80004148:	00460613          	addi	a2,a2,4 # 80006148 <uart_tx_r>
    8000414c:	00002517          	auipc	a0,0x2
    80004150:	00450513          	addi	a0,a0,4 # 80006150 <uart_tx_w>
    80004154:	00063783          	ld	a5,0(a2)
    80004158:	00053703          	ld	a4,0(a0)
    8000415c:	04f70263          	beq	a4,a5,800041a0 <uartintr+0x110>
    80004160:	100005b7          	lui	a1,0x10000
    80004164:	00003817          	auipc	a6,0x3
    80004168:	24c80813          	addi	a6,a6,588 # 800073b0 <uart_tx_buf>
    8000416c:	01c0006f          	j	80004188 <uartintr+0xf8>
    80004170:	0006c703          	lbu	a4,0(a3)
    80004174:	00f63023          	sd	a5,0(a2)
    80004178:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000417c:	00063783          	ld	a5,0(a2)
    80004180:	00053703          	ld	a4,0(a0)
    80004184:	02f70063          	beq	a4,a5,800041a4 <uartintr+0x114>
    80004188:	01f7f713          	andi	a4,a5,31
    8000418c:	00e806b3          	add	a3,a6,a4
    80004190:	0055c703          	lbu	a4,5(a1)
    80004194:	00178793          	addi	a5,a5,1
    80004198:	02077713          	andi	a4,a4,32
    8000419c:	fc071ae3          	bnez	a4,80004170 <uartintr+0xe0>
    800041a0:	00008067          	ret
    800041a4:	00008067          	ret

00000000800041a8 <kinit>:
    800041a8:	fc010113          	addi	sp,sp,-64
    800041ac:	02913423          	sd	s1,40(sp)
    800041b0:	fffff7b7          	lui	a5,0xfffff
    800041b4:	00004497          	auipc	s1,0x4
    800041b8:	21b48493          	addi	s1,s1,539 # 800083cf <end+0xfff>
    800041bc:	02813823          	sd	s0,48(sp)
    800041c0:	01313c23          	sd	s3,24(sp)
    800041c4:	00f4f4b3          	and	s1,s1,a5
    800041c8:	02113c23          	sd	ra,56(sp)
    800041cc:	03213023          	sd	s2,32(sp)
    800041d0:	01413823          	sd	s4,16(sp)
    800041d4:	01513423          	sd	s5,8(sp)
    800041d8:	04010413          	addi	s0,sp,64
    800041dc:	000017b7          	lui	a5,0x1
    800041e0:	01100993          	li	s3,17
    800041e4:	00f487b3          	add	a5,s1,a5
    800041e8:	01b99993          	slli	s3,s3,0x1b
    800041ec:	06f9e063          	bltu	s3,a5,8000424c <kinit+0xa4>
    800041f0:	00003a97          	auipc	s5,0x3
    800041f4:	1e0a8a93          	addi	s5,s5,480 # 800073d0 <end>
    800041f8:	0754ec63          	bltu	s1,s5,80004270 <kinit+0xc8>
    800041fc:	0734fa63          	bgeu	s1,s3,80004270 <kinit+0xc8>
    80004200:	00088a37          	lui	s4,0x88
    80004204:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004208:	00002917          	auipc	s2,0x2
    8000420c:	f5090913          	addi	s2,s2,-176 # 80006158 <kmem>
    80004210:	00ca1a13          	slli	s4,s4,0xc
    80004214:	0140006f          	j	80004228 <kinit+0x80>
    80004218:	000017b7          	lui	a5,0x1
    8000421c:	00f484b3          	add	s1,s1,a5
    80004220:	0554e863          	bltu	s1,s5,80004270 <kinit+0xc8>
    80004224:	0534f663          	bgeu	s1,s3,80004270 <kinit+0xc8>
    80004228:	00001637          	lui	a2,0x1
    8000422c:	00100593          	li	a1,1
    80004230:	00048513          	mv	a0,s1
    80004234:	00000097          	auipc	ra,0x0
    80004238:	5e4080e7          	jalr	1508(ra) # 80004818 <__memset>
    8000423c:	00093783          	ld	a5,0(s2)
    80004240:	00f4b023          	sd	a5,0(s1)
    80004244:	00993023          	sd	s1,0(s2)
    80004248:	fd4498e3          	bne	s1,s4,80004218 <kinit+0x70>
    8000424c:	03813083          	ld	ra,56(sp)
    80004250:	03013403          	ld	s0,48(sp)
    80004254:	02813483          	ld	s1,40(sp)
    80004258:	02013903          	ld	s2,32(sp)
    8000425c:	01813983          	ld	s3,24(sp)
    80004260:	01013a03          	ld	s4,16(sp)
    80004264:	00813a83          	ld	s5,8(sp)
    80004268:	04010113          	addi	sp,sp,64
    8000426c:	00008067          	ret
    80004270:	00001517          	auipc	a0,0x1
    80004274:	45050513          	addi	a0,a0,1104 # 800056c0 <digits+0x18>
    80004278:	fffff097          	auipc	ra,0xfffff
    8000427c:	4b4080e7          	jalr	1204(ra) # 8000372c <panic>

0000000080004280 <freerange>:
    80004280:	fc010113          	addi	sp,sp,-64
    80004284:	000017b7          	lui	a5,0x1
    80004288:	02913423          	sd	s1,40(sp)
    8000428c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004290:	009504b3          	add	s1,a0,s1
    80004294:	fffff537          	lui	a0,0xfffff
    80004298:	02813823          	sd	s0,48(sp)
    8000429c:	02113c23          	sd	ra,56(sp)
    800042a0:	03213023          	sd	s2,32(sp)
    800042a4:	01313c23          	sd	s3,24(sp)
    800042a8:	01413823          	sd	s4,16(sp)
    800042ac:	01513423          	sd	s5,8(sp)
    800042b0:	01613023          	sd	s6,0(sp)
    800042b4:	04010413          	addi	s0,sp,64
    800042b8:	00a4f4b3          	and	s1,s1,a0
    800042bc:	00f487b3          	add	a5,s1,a5
    800042c0:	06f5e463          	bltu	a1,a5,80004328 <freerange+0xa8>
    800042c4:	00003a97          	auipc	s5,0x3
    800042c8:	10ca8a93          	addi	s5,s5,268 # 800073d0 <end>
    800042cc:	0954e263          	bltu	s1,s5,80004350 <freerange+0xd0>
    800042d0:	01100993          	li	s3,17
    800042d4:	01b99993          	slli	s3,s3,0x1b
    800042d8:	0734fc63          	bgeu	s1,s3,80004350 <freerange+0xd0>
    800042dc:	00058a13          	mv	s4,a1
    800042e0:	00002917          	auipc	s2,0x2
    800042e4:	e7890913          	addi	s2,s2,-392 # 80006158 <kmem>
    800042e8:	00002b37          	lui	s6,0x2
    800042ec:	0140006f          	j	80004300 <freerange+0x80>
    800042f0:	000017b7          	lui	a5,0x1
    800042f4:	00f484b3          	add	s1,s1,a5
    800042f8:	0554ec63          	bltu	s1,s5,80004350 <freerange+0xd0>
    800042fc:	0534fa63          	bgeu	s1,s3,80004350 <freerange+0xd0>
    80004300:	00001637          	lui	a2,0x1
    80004304:	00100593          	li	a1,1
    80004308:	00048513          	mv	a0,s1
    8000430c:	00000097          	auipc	ra,0x0
    80004310:	50c080e7          	jalr	1292(ra) # 80004818 <__memset>
    80004314:	00093703          	ld	a4,0(s2)
    80004318:	016487b3          	add	a5,s1,s6
    8000431c:	00e4b023          	sd	a4,0(s1)
    80004320:	00993023          	sd	s1,0(s2)
    80004324:	fcfa76e3          	bgeu	s4,a5,800042f0 <freerange+0x70>
    80004328:	03813083          	ld	ra,56(sp)
    8000432c:	03013403          	ld	s0,48(sp)
    80004330:	02813483          	ld	s1,40(sp)
    80004334:	02013903          	ld	s2,32(sp)
    80004338:	01813983          	ld	s3,24(sp)
    8000433c:	01013a03          	ld	s4,16(sp)
    80004340:	00813a83          	ld	s5,8(sp)
    80004344:	00013b03          	ld	s6,0(sp)
    80004348:	04010113          	addi	sp,sp,64
    8000434c:	00008067          	ret
    80004350:	00001517          	auipc	a0,0x1
    80004354:	37050513          	addi	a0,a0,880 # 800056c0 <digits+0x18>
    80004358:	fffff097          	auipc	ra,0xfffff
    8000435c:	3d4080e7          	jalr	980(ra) # 8000372c <panic>

0000000080004360 <kfree>:
    80004360:	fe010113          	addi	sp,sp,-32
    80004364:	00813823          	sd	s0,16(sp)
    80004368:	00113c23          	sd	ra,24(sp)
    8000436c:	00913423          	sd	s1,8(sp)
    80004370:	02010413          	addi	s0,sp,32
    80004374:	03451793          	slli	a5,a0,0x34
    80004378:	04079c63          	bnez	a5,800043d0 <kfree+0x70>
    8000437c:	00003797          	auipc	a5,0x3
    80004380:	05478793          	addi	a5,a5,84 # 800073d0 <end>
    80004384:	00050493          	mv	s1,a0
    80004388:	04f56463          	bltu	a0,a5,800043d0 <kfree+0x70>
    8000438c:	01100793          	li	a5,17
    80004390:	01b79793          	slli	a5,a5,0x1b
    80004394:	02f57e63          	bgeu	a0,a5,800043d0 <kfree+0x70>
    80004398:	00001637          	lui	a2,0x1
    8000439c:	00100593          	li	a1,1
    800043a0:	00000097          	auipc	ra,0x0
    800043a4:	478080e7          	jalr	1144(ra) # 80004818 <__memset>
    800043a8:	00002797          	auipc	a5,0x2
    800043ac:	db078793          	addi	a5,a5,-592 # 80006158 <kmem>
    800043b0:	0007b703          	ld	a4,0(a5)
    800043b4:	01813083          	ld	ra,24(sp)
    800043b8:	01013403          	ld	s0,16(sp)
    800043bc:	00e4b023          	sd	a4,0(s1)
    800043c0:	0097b023          	sd	s1,0(a5)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret
    800043d0:	00001517          	auipc	a0,0x1
    800043d4:	2f050513          	addi	a0,a0,752 # 800056c0 <digits+0x18>
    800043d8:	fffff097          	auipc	ra,0xfffff
    800043dc:	354080e7          	jalr	852(ra) # 8000372c <panic>

00000000800043e0 <kalloc>:
    800043e0:	fe010113          	addi	sp,sp,-32
    800043e4:	00813823          	sd	s0,16(sp)
    800043e8:	00913423          	sd	s1,8(sp)
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	02010413          	addi	s0,sp,32
    800043f4:	00002797          	auipc	a5,0x2
    800043f8:	d6478793          	addi	a5,a5,-668 # 80006158 <kmem>
    800043fc:	0007b483          	ld	s1,0(a5)
    80004400:	02048063          	beqz	s1,80004420 <kalloc+0x40>
    80004404:	0004b703          	ld	a4,0(s1)
    80004408:	00001637          	lui	a2,0x1
    8000440c:	00500593          	li	a1,5
    80004410:	00048513          	mv	a0,s1
    80004414:	00e7b023          	sd	a4,0(a5)
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	400080e7          	jalr	1024(ra) # 80004818 <__memset>
    80004420:	01813083          	ld	ra,24(sp)
    80004424:	01013403          	ld	s0,16(sp)
    80004428:	00048513          	mv	a0,s1
    8000442c:	00813483          	ld	s1,8(sp)
    80004430:	02010113          	addi	sp,sp,32
    80004434:	00008067          	ret

0000000080004438 <initlock>:
    80004438:	ff010113          	addi	sp,sp,-16
    8000443c:	00813423          	sd	s0,8(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	00813403          	ld	s0,8(sp)
    80004448:	00b53423          	sd	a1,8(a0)
    8000444c:	00052023          	sw	zero,0(a0)
    80004450:	00053823          	sd	zero,16(a0)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <acquire>:
    8000445c:	fe010113          	addi	sp,sp,-32
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	00113c23          	sd	ra,24(sp)
    8000446c:	01213023          	sd	s2,0(sp)
    80004470:	02010413          	addi	s0,sp,32
    80004474:	00050493          	mv	s1,a0
    80004478:	10002973          	csrr	s2,sstatus
    8000447c:	100027f3          	csrr	a5,sstatus
    80004480:	ffd7f793          	andi	a5,a5,-3
    80004484:	10079073          	csrw	sstatus,a5
    80004488:	fffff097          	auipc	ra,0xfffff
    8000448c:	8e8080e7          	jalr	-1816(ra) # 80002d70 <mycpu>
    80004490:	07852783          	lw	a5,120(a0)
    80004494:	06078e63          	beqz	a5,80004510 <acquire+0xb4>
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	8d8080e7          	jalr	-1832(ra) # 80002d70 <mycpu>
    800044a0:	07852783          	lw	a5,120(a0)
    800044a4:	0004a703          	lw	a4,0(s1)
    800044a8:	0017879b          	addiw	a5,a5,1
    800044ac:	06f52c23          	sw	a5,120(a0)
    800044b0:	04071063          	bnez	a4,800044f0 <acquire+0x94>
    800044b4:	00100713          	li	a4,1
    800044b8:	00070793          	mv	a5,a4
    800044bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800044c0:	0007879b          	sext.w	a5,a5
    800044c4:	fe079ae3          	bnez	a5,800044b8 <acquire+0x5c>
    800044c8:	0ff0000f          	fence
    800044cc:	fffff097          	auipc	ra,0xfffff
    800044d0:	8a4080e7          	jalr	-1884(ra) # 80002d70 <mycpu>
    800044d4:	01813083          	ld	ra,24(sp)
    800044d8:	01013403          	ld	s0,16(sp)
    800044dc:	00a4b823          	sd	a0,16(s1)
    800044e0:	00013903          	ld	s2,0(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	02010113          	addi	sp,sp,32
    800044ec:	00008067          	ret
    800044f0:	0104b903          	ld	s2,16(s1)
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	87c080e7          	jalr	-1924(ra) # 80002d70 <mycpu>
    800044fc:	faa91ce3          	bne	s2,a0,800044b4 <acquire+0x58>
    80004500:	00001517          	auipc	a0,0x1
    80004504:	1c850513          	addi	a0,a0,456 # 800056c8 <digits+0x20>
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	224080e7          	jalr	548(ra) # 8000372c <panic>
    80004510:	00195913          	srli	s2,s2,0x1
    80004514:	fffff097          	auipc	ra,0xfffff
    80004518:	85c080e7          	jalr	-1956(ra) # 80002d70 <mycpu>
    8000451c:	00197913          	andi	s2,s2,1
    80004520:	07252e23          	sw	s2,124(a0)
    80004524:	f75ff06f          	j	80004498 <acquire+0x3c>

0000000080004528 <release>:
    80004528:	fe010113          	addi	sp,sp,-32
    8000452c:	00813823          	sd	s0,16(sp)
    80004530:	00113c23          	sd	ra,24(sp)
    80004534:	00913423          	sd	s1,8(sp)
    80004538:	01213023          	sd	s2,0(sp)
    8000453c:	02010413          	addi	s0,sp,32
    80004540:	00052783          	lw	a5,0(a0)
    80004544:	00079a63          	bnez	a5,80004558 <release+0x30>
    80004548:	00001517          	auipc	a0,0x1
    8000454c:	18850513          	addi	a0,a0,392 # 800056d0 <digits+0x28>
    80004550:	fffff097          	auipc	ra,0xfffff
    80004554:	1dc080e7          	jalr	476(ra) # 8000372c <panic>
    80004558:	01053903          	ld	s2,16(a0)
    8000455c:	00050493          	mv	s1,a0
    80004560:	fffff097          	auipc	ra,0xfffff
    80004564:	810080e7          	jalr	-2032(ra) # 80002d70 <mycpu>
    80004568:	fea910e3          	bne	s2,a0,80004548 <release+0x20>
    8000456c:	0004b823          	sd	zero,16(s1)
    80004570:	0ff0000f          	fence
    80004574:	0f50000f          	fence	iorw,ow
    80004578:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	7f4080e7          	jalr	2036(ra) # 80002d70 <mycpu>
    80004584:	100027f3          	csrr	a5,sstatus
    80004588:	0027f793          	andi	a5,a5,2
    8000458c:	04079a63          	bnez	a5,800045e0 <release+0xb8>
    80004590:	07852783          	lw	a5,120(a0)
    80004594:	02f05e63          	blez	a5,800045d0 <release+0xa8>
    80004598:	fff7871b          	addiw	a4,a5,-1
    8000459c:	06e52c23          	sw	a4,120(a0)
    800045a0:	00071c63          	bnez	a4,800045b8 <release+0x90>
    800045a4:	07c52783          	lw	a5,124(a0)
    800045a8:	00078863          	beqz	a5,800045b8 <release+0x90>
    800045ac:	100027f3          	csrr	a5,sstatus
    800045b0:	0027e793          	ori	a5,a5,2
    800045b4:	10079073          	csrw	sstatus,a5
    800045b8:	01813083          	ld	ra,24(sp)
    800045bc:	01013403          	ld	s0,16(sp)
    800045c0:	00813483          	ld	s1,8(sp)
    800045c4:	00013903          	ld	s2,0(sp)
    800045c8:	02010113          	addi	sp,sp,32
    800045cc:	00008067          	ret
    800045d0:	00001517          	auipc	a0,0x1
    800045d4:	12050513          	addi	a0,a0,288 # 800056f0 <digits+0x48>
    800045d8:	fffff097          	auipc	ra,0xfffff
    800045dc:	154080e7          	jalr	340(ra) # 8000372c <panic>
    800045e0:	00001517          	auipc	a0,0x1
    800045e4:	0f850513          	addi	a0,a0,248 # 800056d8 <digits+0x30>
    800045e8:	fffff097          	auipc	ra,0xfffff
    800045ec:	144080e7          	jalr	324(ra) # 8000372c <panic>

00000000800045f0 <holding>:
    800045f0:	00052783          	lw	a5,0(a0)
    800045f4:	00079663          	bnez	a5,80004600 <holding+0x10>
    800045f8:	00000513          	li	a0,0
    800045fc:	00008067          	ret
    80004600:	fe010113          	addi	sp,sp,-32
    80004604:	00813823          	sd	s0,16(sp)
    80004608:	00913423          	sd	s1,8(sp)
    8000460c:	00113c23          	sd	ra,24(sp)
    80004610:	02010413          	addi	s0,sp,32
    80004614:	01053483          	ld	s1,16(a0)
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	758080e7          	jalr	1880(ra) # 80002d70 <mycpu>
    80004620:	01813083          	ld	ra,24(sp)
    80004624:	01013403          	ld	s0,16(sp)
    80004628:	40a48533          	sub	a0,s1,a0
    8000462c:	00153513          	seqz	a0,a0
    80004630:	00813483          	ld	s1,8(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	00008067          	ret

000000008000463c <push_off>:
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00813823          	sd	s0,16(sp)
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	02010413          	addi	s0,sp,32
    80004650:	100024f3          	csrr	s1,sstatus
    80004654:	100027f3          	csrr	a5,sstatus
    80004658:	ffd7f793          	andi	a5,a5,-3
    8000465c:	10079073          	csrw	sstatus,a5
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	710080e7          	jalr	1808(ra) # 80002d70 <mycpu>
    80004668:	07852783          	lw	a5,120(a0)
    8000466c:	02078663          	beqz	a5,80004698 <push_off+0x5c>
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	700080e7          	jalr	1792(ra) # 80002d70 <mycpu>
    80004678:	07852783          	lw	a5,120(a0)
    8000467c:	01813083          	ld	ra,24(sp)
    80004680:	01013403          	ld	s0,16(sp)
    80004684:	0017879b          	addiw	a5,a5,1
    80004688:	06f52c23          	sw	a5,120(a0)
    8000468c:	00813483          	ld	s1,8(sp)
    80004690:	02010113          	addi	sp,sp,32
    80004694:	00008067          	ret
    80004698:	0014d493          	srli	s1,s1,0x1
    8000469c:	ffffe097          	auipc	ra,0xffffe
    800046a0:	6d4080e7          	jalr	1748(ra) # 80002d70 <mycpu>
    800046a4:	0014f493          	andi	s1,s1,1
    800046a8:	06952e23          	sw	s1,124(a0)
    800046ac:	fc5ff06f          	j	80004670 <push_off+0x34>

00000000800046b0 <pop_off>:
    800046b0:	ff010113          	addi	sp,sp,-16
    800046b4:	00813023          	sd	s0,0(sp)
    800046b8:	00113423          	sd	ra,8(sp)
    800046bc:	01010413          	addi	s0,sp,16
    800046c0:	ffffe097          	auipc	ra,0xffffe
    800046c4:	6b0080e7          	jalr	1712(ra) # 80002d70 <mycpu>
    800046c8:	100027f3          	csrr	a5,sstatus
    800046cc:	0027f793          	andi	a5,a5,2
    800046d0:	04079663          	bnez	a5,8000471c <pop_off+0x6c>
    800046d4:	07852783          	lw	a5,120(a0)
    800046d8:	02f05a63          	blez	a5,8000470c <pop_off+0x5c>
    800046dc:	fff7871b          	addiw	a4,a5,-1
    800046e0:	06e52c23          	sw	a4,120(a0)
    800046e4:	00071c63          	bnez	a4,800046fc <pop_off+0x4c>
    800046e8:	07c52783          	lw	a5,124(a0)
    800046ec:	00078863          	beqz	a5,800046fc <pop_off+0x4c>
    800046f0:	100027f3          	csrr	a5,sstatus
    800046f4:	0027e793          	ori	a5,a5,2
    800046f8:	10079073          	csrw	sstatus,a5
    800046fc:	00813083          	ld	ra,8(sp)
    80004700:	00013403          	ld	s0,0(sp)
    80004704:	01010113          	addi	sp,sp,16
    80004708:	00008067          	ret
    8000470c:	00001517          	auipc	a0,0x1
    80004710:	fe450513          	addi	a0,a0,-28 # 800056f0 <digits+0x48>
    80004714:	fffff097          	auipc	ra,0xfffff
    80004718:	018080e7          	jalr	24(ra) # 8000372c <panic>
    8000471c:	00001517          	auipc	a0,0x1
    80004720:	fbc50513          	addi	a0,a0,-68 # 800056d8 <digits+0x30>
    80004724:	fffff097          	auipc	ra,0xfffff
    80004728:	008080e7          	jalr	8(ra) # 8000372c <panic>

000000008000472c <push_on>:
    8000472c:	fe010113          	addi	sp,sp,-32
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00113c23          	sd	ra,24(sp)
    80004738:	00913423          	sd	s1,8(sp)
    8000473c:	02010413          	addi	s0,sp,32
    80004740:	100024f3          	csrr	s1,sstatus
    80004744:	100027f3          	csrr	a5,sstatus
    80004748:	0027e793          	ori	a5,a5,2
    8000474c:	10079073          	csrw	sstatus,a5
    80004750:	ffffe097          	auipc	ra,0xffffe
    80004754:	620080e7          	jalr	1568(ra) # 80002d70 <mycpu>
    80004758:	07852783          	lw	a5,120(a0)
    8000475c:	02078663          	beqz	a5,80004788 <push_on+0x5c>
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	610080e7          	jalr	1552(ra) # 80002d70 <mycpu>
    80004768:	07852783          	lw	a5,120(a0)
    8000476c:	01813083          	ld	ra,24(sp)
    80004770:	01013403          	ld	s0,16(sp)
    80004774:	0017879b          	addiw	a5,a5,1
    80004778:	06f52c23          	sw	a5,120(a0)
    8000477c:	00813483          	ld	s1,8(sp)
    80004780:	02010113          	addi	sp,sp,32
    80004784:	00008067          	ret
    80004788:	0014d493          	srli	s1,s1,0x1
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	5e4080e7          	jalr	1508(ra) # 80002d70 <mycpu>
    80004794:	0014f493          	andi	s1,s1,1
    80004798:	06952e23          	sw	s1,124(a0)
    8000479c:	fc5ff06f          	j	80004760 <push_on+0x34>

00000000800047a0 <pop_on>:
    800047a0:	ff010113          	addi	sp,sp,-16
    800047a4:	00813023          	sd	s0,0(sp)
    800047a8:	00113423          	sd	ra,8(sp)
    800047ac:	01010413          	addi	s0,sp,16
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	5c0080e7          	jalr	1472(ra) # 80002d70 <mycpu>
    800047b8:	100027f3          	csrr	a5,sstatus
    800047bc:	0027f793          	andi	a5,a5,2
    800047c0:	04078463          	beqz	a5,80004808 <pop_on+0x68>
    800047c4:	07852783          	lw	a5,120(a0)
    800047c8:	02f05863          	blez	a5,800047f8 <pop_on+0x58>
    800047cc:	fff7879b          	addiw	a5,a5,-1
    800047d0:	06f52c23          	sw	a5,120(a0)
    800047d4:	07853783          	ld	a5,120(a0)
    800047d8:	00079863          	bnez	a5,800047e8 <pop_on+0x48>
    800047dc:	100027f3          	csrr	a5,sstatus
    800047e0:	ffd7f793          	andi	a5,a5,-3
    800047e4:	10079073          	csrw	sstatus,a5
    800047e8:	00813083          	ld	ra,8(sp)
    800047ec:	00013403          	ld	s0,0(sp)
    800047f0:	01010113          	addi	sp,sp,16
    800047f4:	00008067          	ret
    800047f8:	00001517          	auipc	a0,0x1
    800047fc:	f2050513          	addi	a0,a0,-224 # 80005718 <digits+0x70>
    80004800:	fffff097          	auipc	ra,0xfffff
    80004804:	f2c080e7          	jalr	-212(ra) # 8000372c <panic>
    80004808:	00001517          	auipc	a0,0x1
    8000480c:	ef050513          	addi	a0,a0,-272 # 800056f8 <digits+0x50>
    80004810:	fffff097          	auipc	ra,0xfffff
    80004814:	f1c080e7          	jalr	-228(ra) # 8000372c <panic>

0000000080004818 <__memset>:
    80004818:	ff010113          	addi	sp,sp,-16
    8000481c:	00813423          	sd	s0,8(sp)
    80004820:	01010413          	addi	s0,sp,16
    80004824:	1a060e63          	beqz	a2,800049e0 <__memset+0x1c8>
    80004828:	40a007b3          	neg	a5,a0
    8000482c:	0077f793          	andi	a5,a5,7
    80004830:	00778693          	addi	a3,a5,7
    80004834:	00b00813          	li	a6,11
    80004838:	0ff5f593          	andi	a1,a1,255
    8000483c:	fff6071b          	addiw	a4,a2,-1
    80004840:	1b06e663          	bltu	a3,a6,800049ec <__memset+0x1d4>
    80004844:	1cd76463          	bltu	a4,a3,80004a0c <__memset+0x1f4>
    80004848:	1a078e63          	beqz	a5,80004a04 <__memset+0x1ec>
    8000484c:	00b50023          	sb	a1,0(a0)
    80004850:	00100713          	li	a4,1
    80004854:	1ae78463          	beq	a5,a4,800049fc <__memset+0x1e4>
    80004858:	00b500a3          	sb	a1,1(a0)
    8000485c:	00200713          	li	a4,2
    80004860:	1ae78a63          	beq	a5,a4,80004a14 <__memset+0x1fc>
    80004864:	00b50123          	sb	a1,2(a0)
    80004868:	00300713          	li	a4,3
    8000486c:	18e78463          	beq	a5,a4,800049f4 <__memset+0x1dc>
    80004870:	00b501a3          	sb	a1,3(a0)
    80004874:	00400713          	li	a4,4
    80004878:	1ae78263          	beq	a5,a4,80004a1c <__memset+0x204>
    8000487c:	00b50223          	sb	a1,4(a0)
    80004880:	00500713          	li	a4,5
    80004884:	1ae78063          	beq	a5,a4,80004a24 <__memset+0x20c>
    80004888:	00b502a3          	sb	a1,5(a0)
    8000488c:	00700713          	li	a4,7
    80004890:	18e79e63          	bne	a5,a4,80004a2c <__memset+0x214>
    80004894:	00b50323          	sb	a1,6(a0)
    80004898:	00700e93          	li	t4,7
    8000489c:	00859713          	slli	a4,a1,0x8
    800048a0:	00e5e733          	or	a4,a1,a4
    800048a4:	01059e13          	slli	t3,a1,0x10
    800048a8:	01c76e33          	or	t3,a4,t3
    800048ac:	01859313          	slli	t1,a1,0x18
    800048b0:	006e6333          	or	t1,t3,t1
    800048b4:	02059893          	slli	a7,a1,0x20
    800048b8:	40f60e3b          	subw	t3,a2,a5
    800048bc:	011368b3          	or	a7,t1,a7
    800048c0:	02859813          	slli	a6,a1,0x28
    800048c4:	0108e833          	or	a6,a7,a6
    800048c8:	03059693          	slli	a3,a1,0x30
    800048cc:	003e589b          	srliw	a7,t3,0x3
    800048d0:	00d866b3          	or	a3,a6,a3
    800048d4:	03859713          	slli	a4,a1,0x38
    800048d8:	00389813          	slli	a6,a7,0x3
    800048dc:	00f507b3          	add	a5,a0,a5
    800048e0:	00e6e733          	or	a4,a3,a4
    800048e4:	000e089b          	sext.w	a7,t3
    800048e8:	00f806b3          	add	a3,a6,a5
    800048ec:	00e7b023          	sd	a4,0(a5)
    800048f0:	00878793          	addi	a5,a5,8
    800048f4:	fed79ce3          	bne	a5,a3,800048ec <__memset+0xd4>
    800048f8:	ff8e7793          	andi	a5,t3,-8
    800048fc:	0007871b          	sext.w	a4,a5
    80004900:	01d787bb          	addw	a5,a5,t4
    80004904:	0ce88e63          	beq	a7,a4,800049e0 <__memset+0x1c8>
    80004908:	00f50733          	add	a4,a0,a5
    8000490c:	00b70023          	sb	a1,0(a4)
    80004910:	0017871b          	addiw	a4,a5,1
    80004914:	0cc77663          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004918:	00e50733          	add	a4,a0,a4
    8000491c:	00b70023          	sb	a1,0(a4)
    80004920:	0027871b          	addiw	a4,a5,2
    80004924:	0ac77e63          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004928:	00e50733          	add	a4,a0,a4
    8000492c:	00b70023          	sb	a1,0(a4)
    80004930:	0037871b          	addiw	a4,a5,3
    80004934:	0ac77663          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004938:	00e50733          	add	a4,a0,a4
    8000493c:	00b70023          	sb	a1,0(a4)
    80004940:	0047871b          	addiw	a4,a5,4
    80004944:	08c77e63          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004948:	00e50733          	add	a4,a0,a4
    8000494c:	00b70023          	sb	a1,0(a4)
    80004950:	0057871b          	addiw	a4,a5,5
    80004954:	08c77663          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004958:	00e50733          	add	a4,a0,a4
    8000495c:	00b70023          	sb	a1,0(a4)
    80004960:	0067871b          	addiw	a4,a5,6
    80004964:	06c77e63          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004968:	00e50733          	add	a4,a0,a4
    8000496c:	00b70023          	sb	a1,0(a4)
    80004970:	0077871b          	addiw	a4,a5,7
    80004974:	06c77663          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004978:	00e50733          	add	a4,a0,a4
    8000497c:	00b70023          	sb	a1,0(a4)
    80004980:	0087871b          	addiw	a4,a5,8
    80004984:	04c77e63          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004988:	00e50733          	add	a4,a0,a4
    8000498c:	00b70023          	sb	a1,0(a4)
    80004990:	0097871b          	addiw	a4,a5,9
    80004994:	04c77663          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    80004998:	00e50733          	add	a4,a0,a4
    8000499c:	00b70023          	sb	a1,0(a4)
    800049a0:	00a7871b          	addiw	a4,a5,10
    800049a4:	02c77e63          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    800049a8:	00e50733          	add	a4,a0,a4
    800049ac:	00b70023          	sb	a1,0(a4)
    800049b0:	00b7871b          	addiw	a4,a5,11
    800049b4:	02c77663          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    800049b8:	00e50733          	add	a4,a0,a4
    800049bc:	00b70023          	sb	a1,0(a4)
    800049c0:	00c7871b          	addiw	a4,a5,12
    800049c4:	00c77e63          	bgeu	a4,a2,800049e0 <__memset+0x1c8>
    800049c8:	00e50733          	add	a4,a0,a4
    800049cc:	00b70023          	sb	a1,0(a4)
    800049d0:	00d7879b          	addiw	a5,a5,13
    800049d4:	00c7f663          	bgeu	a5,a2,800049e0 <__memset+0x1c8>
    800049d8:	00f507b3          	add	a5,a0,a5
    800049dc:	00b78023          	sb	a1,0(a5)
    800049e0:	00813403          	ld	s0,8(sp)
    800049e4:	01010113          	addi	sp,sp,16
    800049e8:	00008067          	ret
    800049ec:	00b00693          	li	a3,11
    800049f0:	e55ff06f          	j	80004844 <__memset+0x2c>
    800049f4:	00300e93          	li	t4,3
    800049f8:	ea5ff06f          	j	8000489c <__memset+0x84>
    800049fc:	00100e93          	li	t4,1
    80004a00:	e9dff06f          	j	8000489c <__memset+0x84>
    80004a04:	00000e93          	li	t4,0
    80004a08:	e95ff06f          	j	8000489c <__memset+0x84>
    80004a0c:	00000793          	li	a5,0
    80004a10:	ef9ff06f          	j	80004908 <__memset+0xf0>
    80004a14:	00200e93          	li	t4,2
    80004a18:	e85ff06f          	j	8000489c <__memset+0x84>
    80004a1c:	00400e93          	li	t4,4
    80004a20:	e7dff06f          	j	8000489c <__memset+0x84>
    80004a24:	00500e93          	li	t4,5
    80004a28:	e75ff06f          	j	8000489c <__memset+0x84>
    80004a2c:	00600e93          	li	t4,6
    80004a30:	e6dff06f          	j	8000489c <__memset+0x84>

0000000080004a34 <__memmove>:
    80004a34:	ff010113          	addi	sp,sp,-16
    80004a38:	00813423          	sd	s0,8(sp)
    80004a3c:	01010413          	addi	s0,sp,16
    80004a40:	0e060863          	beqz	a2,80004b30 <__memmove+0xfc>
    80004a44:	fff6069b          	addiw	a3,a2,-1
    80004a48:	0006881b          	sext.w	a6,a3
    80004a4c:	0ea5e863          	bltu	a1,a0,80004b3c <__memmove+0x108>
    80004a50:	00758713          	addi	a4,a1,7
    80004a54:	00a5e7b3          	or	a5,a1,a0
    80004a58:	40a70733          	sub	a4,a4,a0
    80004a5c:	0077f793          	andi	a5,a5,7
    80004a60:	00f73713          	sltiu	a4,a4,15
    80004a64:	00174713          	xori	a4,a4,1
    80004a68:	0017b793          	seqz	a5,a5
    80004a6c:	00e7f7b3          	and	a5,a5,a4
    80004a70:	10078863          	beqz	a5,80004b80 <__memmove+0x14c>
    80004a74:	00900793          	li	a5,9
    80004a78:	1107f463          	bgeu	a5,a6,80004b80 <__memmove+0x14c>
    80004a7c:	0036581b          	srliw	a6,a2,0x3
    80004a80:	fff8081b          	addiw	a6,a6,-1
    80004a84:	02081813          	slli	a6,a6,0x20
    80004a88:	01d85893          	srli	a7,a6,0x1d
    80004a8c:	00858813          	addi	a6,a1,8
    80004a90:	00058793          	mv	a5,a1
    80004a94:	00050713          	mv	a4,a0
    80004a98:	01088833          	add	a6,a7,a6
    80004a9c:	0007b883          	ld	a7,0(a5)
    80004aa0:	00878793          	addi	a5,a5,8
    80004aa4:	00870713          	addi	a4,a4,8
    80004aa8:	ff173c23          	sd	a7,-8(a4)
    80004aac:	ff0798e3          	bne	a5,a6,80004a9c <__memmove+0x68>
    80004ab0:	ff867713          	andi	a4,a2,-8
    80004ab4:	02071793          	slli	a5,a4,0x20
    80004ab8:	0207d793          	srli	a5,a5,0x20
    80004abc:	00f585b3          	add	a1,a1,a5
    80004ac0:	40e686bb          	subw	a3,a3,a4
    80004ac4:	00f507b3          	add	a5,a0,a5
    80004ac8:	06e60463          	beq	a2,a4,80004b30 <__memmove+0xfc>
    80004acc:	0005c703          	lbu	a4,0(a1)
    80004ad0:	00e78023          	sb	a4,0(a5)
    80004ad4:	04068e63          	beqz	a3,80004b30 <__memmove+0xfc>
    80004ad8:	0015c603          	lbu	a2,1(a1)
    80004adc:	00100713          	li	a4,1
    80004ae0:	00c780a3          	sb	a2,1(a5)
    80004ae4:	04e68663          	beq	a3,a4,80004b30 <__memmove+0xfc>
    80004ae8:	0025c603          	lbu	a2,2(a1)
    80004aec:	00200713          	li	a4,2
    80004af0:	00c78123          	sb	a2,2(a5)
    80004af4:	02e68e63          	beq	a3,a4,80004b30 <__memmove+0xfc>
    80004af8:	0035c603          	lbu	a2,3(a1)
    80004afc:	00300713          	li	a4,3
    80004b00:	00c781a3          	sb	a2,3(a5)
    80004b04:	02e68663          	beq	a3,a4,80004b30 <__memmove+0xfc>
    80004b08:	0045c603          	lbu	a2,4(a1)
    80004b0c:	00400713          	li	a4,4
    80004b10:	00c78223          	sb	a2,4(a5)
    80004b14:	00e68e63          	beq	a3,a4,80004b30 <__memmove+0xfc>
    80004b18:	0055c603          	lbu	a2,5(a1)
    80004b1c:	00500713          	li	a4,5
    80004b20:	00c782a3          	sb	a2,5(a5)
    80004b24:	00e68663          	beq	a3,a4,80004b30 <__memmove+0xfc>
    80004b28:	0065c703          	lbu	a4,6(a1)
    80004b2c:	00e78323          	sb	a4,6(a5)
    80004b30:	00813403          	ld	s0,8(sp)
    80004b34:	01010113          	addi	sp,sp,16
    80004b38:	00008067          	ret
    80004b3c:	02061713          	slli	a4,a2,0x20
    80004b40:	02075713          	srli	a4,a4,0x20
    80004b44:	00e587b3          	add	a5,a1,a4
    80004b48:	f0f574e3          	bgeu	a0,a5,80004a50 <__memmove+0x1c>
    80004b4c:	02069613          	slli	a2,a3,0x20
    80004b50:	02065613          	srli	a2,a2,0x20
    80004b54:	fff64613          	not	a2,a2
    80004b58:	00e50733          	add	a4,a0,a4
    80004b5c:	00c78633          	add	a2,a5,a2
    80004b60:	fff7c683          	lbu	a3,-1(a5)
    80004b64:	fff78793          	addi	a5,a5,-1
    80004b68:	fff70713          	addi	a4,a4,-1
    80004b6c:	00d70023          	sb	a3,0(a4)
    80004b70:	fec798e3          	bne	a5,a2,80004b60 <__memmove+0x12c>
    80004b74:	00813403          	ld	s0,8(sp)
    80004b78:	01010113          	addi	sp,sp,16
    80004b7c:	00008067          	ret
    80004b80:	02069713          	slli	a4,a3,0x20
    80004b84:	02075713          	srli	a4,a4,0x20
    80004b88:	00170713          	addi	a4,a4,1
    80004b8c:	00e50733          	add	a4,a0,a4
    80004b90:	00050793          	mv	a5,a0
    80004b94:	0005c683          	lbu	a3,0(a1)
    80004b98:	00178793          	addi	a5,a5,1
    80004b9c:	00158593          	addi	a1,a1,1
    80004ba0:	fed78fa3          	sb	a3,-1(a5)
    80004ba4:	fee798e3          	bne	a5,a4,80004b94 <__memmove+0x160>
    80004ba8:	f89ff06f          	j	80004b30 <__memmove+0xfc>

0000000080004bac <__putc>:
    80004bac:	fe010113          	addi	sp,sp,-32
    80004bb0:	00813823          	sd	s0,16(sp)
    80004bb4:	00113c23          	sd	ra,24(sp)
    80004bb8:	02010413          	addi	s0,sp,32
    80004bbc:	00050793          	mv	a5,a0
    80004bc0:	fef40593          	addi	a1,s0,-17
    80004bc4:	00100613          	li	a2,1
    80004bc8:	00000513          	li	a0,0
    80004bcc:	fef407a3          	sb	a5,-17(s0)
    80004bd0:	fffff097          	auipc	ra,0xfffff
    80004bd4:	b3c080e7          	jalr	-1220(ra) # 8000370c <console_write>
    80004bd8:	01813083          	ld	ra,24(sp)
    80004bdc:	01013403          	ld	s0,16(sp)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00008067          	ret

0000000080004be8 <__getc>:
    80004be8:	fe010113          	addi	sp,sp,-32
    80004bec:	00813823          	sd	s0,16(sp)
    80004bf0:	00113c23          	sd	ra,24(sp)
    80004bf4:	02010413          	addi	s0,sp,32
    80004bf8:	fe840593          	addi	a1,s0,-24
    80004bfc:	00100613          	li	a2,1
    80004c00:	00000513          	li	a0,0
    80004c04:	fffff097          	auipc	ra,0xfffff
    80004c08:	ae8080e7          	jalr	-1304(ra) # 800036ec <console_read>
    80004c0c:	fe844503          	lbu	a0,-24(s0)
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	02010113          	addi	sp,sp,32
    80004c1c:	00008067          	ret

0000000080004c20 <console_handler>:
    80004c20:	fe010113          	addi	sp,sp,-32
    80004c24:	00813823          	sd	s0,16(sp)
    80004c28:	00113c23          	sd	ra,24(sp)
    80004c2c:	00913423          	sd	s1,8(sp)
    80004c30:	02010413          	addi	s0,sp,32
    80004c34:	14202773          	csrr	a4,scause
    80004c38:	100027f3          	csrr	a5,sstatus
    80004c3c:	0027f793          	andi	a5,a5,2
    80004c40:	06079e63          	bnez	a5,80004cbc <console_handler+0x9c>
    80004c44:	00074c63          	bltz	a4,80004c5c <console_handler+0x3c>
    80004c48:	01813083          	ld	ra,24(sp)
    80004c4c:	01013403          	ld	s0,16(sp)
    80004c50:	00813483          	ld	s1,8(sp)
    80004c54:	02010113          	addi	sp,sp,32
    80004c58:	00008067          	ret
    80004c5c:	0ff77713          	andi	a4,a4,255
    80004c60:	00900793          	li	a5,9
    80004c64:	fef712e3          	bne	a4,a5,80004c48 <console_handler+0x28>
    80004c68:	ffffe097          	auipc	ra,0xffffe
    80004c6c:	6dc080e7          	jalr	1756(ra) # 80003344 <plic_claim>
    80004c70:	00a00793          	li	a5,10
    80004c74:	00050493          	mv	s1,a0
    80004c78:	02f50c63          	beq	a0,a5,80004cb0 <console_handler+0x90>
    80004c7c:	fc0506e3          	beqz	a0,80004c48 <console_handler+0x28>
    80004c80:	00050593          	mv	a1,a0
    80004c84:	00001517          	auipc	a0,0x1
    80004c88:	99c50513          	addi	a0,a0,-1636 # 80005620 <_ZZ12printIntegermE6digits+0x4b8>
    80004c8c:	fffff097          	auipc	ra,0xfffff
    80004c90:	afc080e7          	jalr	-1284(ra) # 80003788 <__printf>
    80004c94:	01013403          	ld	s0,16(sp)
    80004c98:	01813083          	ld	ra,24(sp)
    80004c9c:	00048513          	mv	a0,s1
    80004ca0:	00813483          	ld	s1,8(sp)
    80004ca4:	02010113          	addi	sp,sp,32
    80004ca8:	ffffe317          	auipc	t1,0xffffe
    80004cac:	6d430067          	jr	1748(t1) # 8000337c <plic_complete>
    80004cb0:	fffff097          	auipc	ra,0xfffff
    80004cb4:	3e0080e7          	jalr	992(ra) # 80004090 <uartintr>
    80004cb8:	fddff06f          	j	80004c94 <console_handler+0x74>
    80004cbc:	00001517          	auipc	a0,0x1
    80004cc0:	a6450513          	addi	a0,a0,-1436 # 80005720 <digits+0x78>
    80004cc4:	fffff097          	auipc	ra,0xfffff
    80004cc8:	a68080e7          	jalr	-1432(ra) # 8000372c <panic>
	...
