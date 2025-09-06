
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	da813103          	ld	sp,-600(sp) # 80005da8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4bc020ef          	jal	ra,800024d8 <start>

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
    80001084:	674000ef          	jal	ra,800016f8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001154:	cf078793          	addi	a5,a5,-784 # 80005e40 <_ZN9Scheduler16readyThreadQueueE>
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
    8000117c:	cc878793          	addi	a5,a5,-824 # 80005e40 <_ZN9Scheduler16readyThreadQueueE>
    80001180:	0007b503          	ld	a0,0(a5)
    80001184:	04050263          	beqz	a0,800011c8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    80001188:	00853783          	ld	a5,8(a0)
    8000118c:	00005717          	auipc	a4,0x5
    80001190:	caf73a23          	sd	a5,-844(a4) # 80005e40 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001194:	02078463          	beqz	a5,800011bc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    80001198:	00053483          	ld	s1,0(a0)
        delete elem;
    8000119c:	00000097          	auipc	ra,0x0
    800011a0:	6fc080e7          	jalr	1788(ra) # 80001898 <_ZdlPv>
}
    800011a4:	00048513          	mv	a0,s1
    800011a8:	01813083          	ld	ra,24(sp)
    800011ac:	01013403          	ld	s0,16(sp)
    800011b0:	00813483          	ld	s1,8(sp)
    800011b4:	02010113          	addi	sp,sp,32
    800011b8:	00008067          	ret
        if (!head) { tail = 0; }
    800011bc:	00005797          	auipc	a5,0x5
    800011c0:	c807b623          	sd	zero,-884(a5) # 80005e48 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    800011ec:	00000097          	auipc	ra,0x0
    800011f0:	62c080e7          	jalr	1580(ra) # 80001818 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800011f4:	00953023          	sd	s1,0(a0)
    800011f8:	00053423          	sd	zero,8(a0)
        if (tail)
    800011fc:	00005797          	auipc	a5,0x5
    80001200:	c4478793          	addi	a5,a5,-956 # 80005e40 <_ZN9Scheduler16readyThreadQueueE>
    80001204:	0087b783          	ld	a5,8(a5)
    80001208:	02078263          	beqz	a5,8000122c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000120c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001210:	00005797          	auipc	a5,0x5
    80001214:	c2a7bc23          	sd	a0,-968(a5) # 80005e48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001218:	01813083          	ld	ra,24(sp)
    8000121c:	01013403          	ld	s0,16(sp)
    80001220:	00813483          	ld	s1,8(sp)
    80001224:	02010113          	addi	sp,sp,32
    80001228:	00008067          	ret
            head = tail = elem;
    8000122c:	00005797          	auipc	a5,0x5
    80001230:	c1478793          	addi	a5,a5,-1004 # 80005e40 <_ZN9Scheduler16readyThreadQueueE>
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

0000000080001274 <_ZL9fibonaccim>:
    }
}

static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    80001274:	00100793          	li	a5,1
    80001278:	06a7f863          	bgeu	a5,a0,800012e8 <_ZL9fibonaccim+0x74>
{
    8000127c:	fe010113          	addi	sp,sp,-32
    80001280:	00113c23          	sd	ra,24(sp)
    80001284:	00813823          	sd	s0,16(sp)
    80001288:	00913423          	sd	s1,8(sp)
    8000128c:	01213023          	sd	s2,0(sp)
    80001290:	02010413          	addi	s0,sp,32
    80001294:	00050493          	mv	s1,a0
    if (n % 10 == 0) { TCB::yield(); }
    80001298:	00a00793          	li	a5,10
    8000129c:	02f577b3          	remu	a5,a0,a5
    800012a0:	02078e63          	beqz	a5,800012dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012a4:	fff48513          	addi	a0,s1,-1
    800012a8:	00000097          	auipc	ra,0x0
    800012ac:	fcc080e7          	jalr	-52(ra) # 80001274 <_ZL9fibonaccim>
    800012b0:	00050913          	mv	s2,a0
    800012b4:	ffe48513          	addi	a0,s1,-2
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	fbc080e7          	jalr	-68(ra) # 80001274 <_ZL9fibonaccim>
    800012c0:	00a90533          	add	a0,s2,a0
}
    800012c4:	01813083          	ld	ra,24(sp)
    800012c8:	01013403          	ld	s0,16(sp)
    800012cc:	00813483          	ld	s1,8(sp)
    800012d0:	00013903          	ld	s2,0(sp)
    800012d4:	02010113          	addi	sp,sp,32
    800012d8:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    800012dc:	00001097          	auipc	ra,0x1
    800012e0:	a6c080e7          	jalr	-1428(ra) # 80001d48 <_ZN3TCB5yieldEv>
    800012e4:	fc1ff06f          	j	800012a4 <_ZL9fibonaccim+0x30>
}
    800012e8:	00008067          	ret

00000000800012ec <_Z12worker_ecallv>:
void worker_ecall() {
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00113423          	sd	ra,8(sp)
    800012f4:	00813023          	sd	s0,0(sp)
    800012f8:	01010413          	addi	s0,sp,16
    printString("Starting ecall worker\n");
    800012fc:	00004517          	auipc	a0,0x4
    80001300:	d2450513          	addi	a0,a0,-732 # 80005020 <CONSOLE_STATUS+0x10>
    80001304:	00000097          	auipc	ra,0x0
    80001308:	614080e7          	jalr	1556(ra) # 80001918 <_Z11printStringPKc>
    __asm__ volatile ("ecall");
    8000130c:	00000073          	ecall
    for(int i = 0; i < 99999999; ++i)
    80001310:	00000693          	li	a3,0
    80001314:	0080006f          	j	8000131c <_Z12worker_ecallv+0x30>
    80001318:	0016869b          	addiw	a3,a3,1
    8000131c:	05f5e7b7          	lui	a5,0x5f5e
    80001320:	0fe78793          	addi	a5,a5,254 # 5f5e0fe <_entry-0x7a0a1f02>
    80001324:	00d7ce63          	blt	a5,a3,80001340 <_Z12worker_ecallv+0x54>
        for(int j = 0; j < 99999999; ++j)
    80001328:	00000713          	li	a4,0
    8000132c:	05f5e7b7          	lui	a5,0x5f5e
    80001330:	0fe78793          	addi	a5,a5,254 # 5f5e0fe <_entry-0x7a0a1f02>
    80001334:	fee7c2e3          	blt	a5,a4,80001318 <_Z12worker_ecallv+0x2c>
    80001338:	0017071b          	addiw	a4,a4,1
    8000133c:	ff1ff06f          	j	8000132c <_Z12worker_ecallv+0x40>
    printString("Finishing ecall worker\n");
    80001340:	00004517          	auipc	a0,0x4
    80001344:	cf850513          	addi	a0,a0,-776 # 80005038 <CONSOLE_STATUS+0x28>
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	5d0080e7          	jalr	1488(ra) # 80001918 <_Z11printStringPKc>
}
    80001350:	00813083          	ld	ra,8(sp)
    80001354:	00013403          	ld	s0,0(sp)
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <_Z11workerBodyAv>:
{
    80001360:	fe010113          	addi	sp,sp,-32
    80001364:	00113c23          	sd	ra,24(sp)
    80001368:	00813823          	sd	s0,16(sp)
    8000136c:	00913423          	sd	s1,8(sp)
    80001370:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001374:	00000493          	li	s1,0
    80001378:	0300006f          	j	800013a8 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000137c:	00168693          	addi	a3,a3,1
    80001380:	000027b7          	lui	a5,0x2
    80001384:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001388:	00d7ee63          	bltu	a5,a3,800013a4 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000138c:	00000713          	li	a4,0
    80001390:	000077b7          	lui	a5,0x7
    80001394:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001398:	fee7e2e3          	bltu	a5,a4,8000137c <_Z11workerBodyAv+0x1c>
    8000139c:	00170713          	addi	a4,a4,1
    800013a0:	ff1ff06f          	j	80001390 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800013a4:	00148493          	addi	s1,s1,1
    800013a8:	00900793          	li	a5,9
    800013ac:	0297ec63          	bltu	a5,s1,800013e4 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800013b0:	00004517          	auipc	a0,0x4
    800013b4:	ca050513          	addi	a0,a0,-864 # 80005050 <CONSOLE_STATUS+0x40>
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	560080e7          	jalr	1376(ra) # 80001918 <_Z11printStringPKc>
        printInteger(i);
    800013c0:	00048513          	mv	a0,s1
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	64c080e7          	jalr	1612(ra) # 80001a10 <_Z12printIntegerm>
        printString("\n");
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	d9450513          	addi	a0,a0,-620 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	544080e7          	jalr	1348(ra) # 80001918 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013dc:	00000693          	li	a3,0
    800013e0:	fa1ff06f          	j	80001380 <_Z11workerBodyAv+0x20>
}
    800013e4:	01813083          	ld	ra,24(sp)
    800013e8:	01013403          	ld	s0,16(sp)
    800013ec:	00813483          	ld	s1,8(sp)
    800013f0:	02010113          	addi	sp,sp,32
    800013f4:	00008067          	ret

00000000800013f8 <_Z11workerBodyBv>:
{
    800013f8:	fe010113          	addi	sp,sp,-32
    800013fc:	00113c23          	sd	ra,24(sp)
    80001400:	00813823          	sd	s0,16(sp)
    80001404:	00913423          	sd	s1,8(sp)
    80001408:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    8000140c:	00000493          	li	s1,0
    80001410:	0300006f          	j	80001440 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001414:	00168693          	addi	a3,a3,1
    80001418:	000027b7          	lui	a5,0x2
    8000141c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001420:	00d7ee63          	bltu	a5,a3,8000143c <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001424:	00000713          	li	a4,0
    80001428:	000077b7          	lui	a5,0x7
    8000142c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001430:	fee7e2e3          	bltu	a5,a4,80001414 <_Z11workerBodyBv+0x1c>
    80001434:	00170713          	addi	a4,a4,1
    80001438:	ff1ff06f          	j	80001428 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    8000143c:	00148493          	addi	s1,s1,1
    80001440:	00f00793          	li	a5,15
    80001444:	0297ec63          	bltu	a5,s1,8000147c <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001448:	00004517          	auipc	a0,0x4
    8000144c:	c1050513          	addi	a0,a0,-1008 # 80005058 <CONSOLE_STATUS+0x48>
    80001450:	00000097          	auipc	ra,0x0
    80001454:	4c8080e7          	jalr	1224(ra) # 80001918 <_Z11printStringPKc>
        printInteger(i);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	5b4080e7          	jalr	1460(ra) # 80001a10 <_Z12printIntegerm>
        printString("\n");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	cfc50513          	addi	a0,a0,-772 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	4ac080e7          	jalr	1196(ra) # 80001918 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001474:	00000693          	li	a3,0
    80001478:	fa1ff06f          	j	80001418 <_Z11workerBodyBv+0x20>
}
    8000147c:	01813083          	ld	ra,24(sp)
    80001480:	01013403          	ld	s0,16(sp)
    80001484:	00813483          	ld	s1,8(sp)
    80001488:	02010113          	addi	sp,sp,32
    8000148c:	00008067          	ret

0000000080001490 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001490:	fe010113          	addi	sp,sp,-32
    80001494:	00113c23          	sd	ra,24(sp)
    80001498:	00813823          	sd	s0,16(sp)
    8000149c:	00913423          	sd	s1,8(sp)
    800014a0:	01213023          	sd	s2,0(sp)
    800014a4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800014a8:	00000493          	li	s1,0
    for (; i < 3; i++)
    800014ac:	00200793          	li	a5,2
    800014b0:	0297ee63          	bltu	a5,s1,800014ec <_Z11workerBodyCv+0x5c>
    {
        printString("C: i=");
    800014b4:	00004517          	auipc	a0,0x4
    800014b8:	bac50513          	addi	a0,a0,-1108 # 80005060 <CONSOLE_STATUS+0x50>
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	45c080e7          	jalr	1116(ra) # 80001918 <_Z11printStringPKc>
        printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	548080e7          	jalr	1352(ra) # 80001a10 <_Z12printIntegerm>
        printString("\n");
    800014d0:	00004517          	auipc	a0,0x4
    800014d4:	c9050513          	addi	a0,a0,-880 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	440080e7          	jalr	1088(ra) # 80001918 <_Z11printStringPKc>
    for (; i < 3; i++)
    800014e0:	0014849b          	addiw	s1,s1,1
    800014e4:	0ff4f493          	andi	s1,s1,255
    800014e8:	fc5ff06f          	j	800014ac <_Z11workerBodyCv+0x1c>
    }

    printString("C: yield\n");
    800014ec:	00004517          	auipc	a0,0x4
    800014f0:	b7c50513          	addi	a0,a0,-1156 # 80005068 <CONSOLE_STATUS+0x58>
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	424080e7          	jalr	1060(ra) # 80001918 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014fc:	00700313          	li	t1,7
    TCB::yield();
    80001500:	00001097          	auipc	ra,0x1
    80001504:	848080e7          	jalr	-1976(ra) # 80001d48 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001508:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b6c50513          	addi	a0,a0,-1172 # 80005078 <CONSOLE_STATUS+0x68>
    80001514:	00000097          	auipc	ra,0x0
    80001518:	404080e7          	jalr	1028(ra) # 80001918 <_Z11printStringPKc>
    printInteger(t1);
    8000151c:	00090513          	mv	a0,s2
    80001520:	00000097          	auipc	ra,0x0
    80001524:	4f0080e7          	jalr	1264(ra) # 80001a10 <_Z12printIntegerm>
    printString("\n");
    80001528:	00004517          	auipc	a0,0x4
    8000152c:	c3850513          	addi	a0,a0,-968 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80001530:	00000097          	auipc	ra,0x0
    80001534:	3e8080e7          	jalr	1000(ra) # 80001918 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001538:	00c00513          	li	a0,12
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	d38080e7          	jalr	-712(ra) # 80001274 <_ZL9fibonaccim>
    80001544:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001548:	00004517          	auipc	a0,0x4
    8000154c:	b3850513          	addi	a0,a0,-1224 # 80005080 <CONSOLE_STATUS+0x70>
    80001550:	00000097          	auipc	ra,0x0
    80001554:	3c8080e7          	jalr	968(ra) # 80001918 <_Z11printStringPKc>
    printInteger(result);
    80001558:	00090513          	mv	a0,s2
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	4b4080e7          	jalr	1204(ra) # 80001a10 <_Z12printIntegerm>
    printString("\n");
    80001564:	00004517          	auipc	a0,0x4
    80001568:	bfc50513          	addi	a0,a0,-1028 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	3ac080e7          	jalr	940(ra) # 80001918 <_Z11printStringPKc>

    for (; i < 6; i++)
    80001574:	00500793          	li	a5,5
    80001578:	0297ee63          	bltu	a5,s1,800015b4 <_Z11workerBodyCv+0x124>
    {
        printString("C: i=");
    8000157c:	00004517          	auipc	a0,0x4
    80001580:	ae450513          	addi	a0,a0,-1308 # 80005060 <CONSOLE_STATUS+0x50>
    80001584:	00000097          	auipc	ra,0x0
    80001588:	394080e7          	jalr	916(ra) # 80001918 <_Z11printStringPKc>
        printInteger(i);
    8000158c:	00048513          	mv	a0,s1
    80001590:	00000097          	auipc	ra,0x0
    80001594:	480080e7          	jalr	1152(ra) # 80001a10 <_Z12printIntegerm>
        printString("\n");
    80001598:	00004517          	auipc	a0,0x4
    8000159c:	bc850513          	addi	a0,a0,-1080 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	378080e7          	jalr	888(ra) # 80001918 <_Z11printStringPKc>
    for (; i < 6; i++)
    800015a8:	0014849b          	addiw	s1,s1,1
    800015ac:	0ff4f493          	andi	s1,s1,255
    800015b0:	fc5ff06f          	j	80001574 <_Z11workerBodyCv+0xe4>
    }
//    TCB::yield();
}
    800015b4:	01813083          	ld	ra,24(sp)
    800015b8:	01013403          	ld	s0,16(sp)
    800015bc:	00813483          	ld	s1,8(sp)
    800015c0:	00013903          	ld	s2,0(sp)
    800015c4:	02010113          	addi	sp,sp,32
    800015c8:	00008067          	ret

00000000800015cc <_Z11workerBodyDv>:

void workerBodyD()
{
    800015cc:	fe010113          	addi	sp,sp,-32
    800015d0:	00113c23          	sd	ra,24(sp)
    800015d4:	00813823          	sd	s0,16(sp)
    800015d8:	00913423          	sd	s1,8(sp)
    800015dc:	01213023          	sd	s2,0(sp)
    800015e0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800015e4:	00a00493          	li	s1,10
    for (; i < 13; i++)
    800015e8:	00c00793          	li	a5,12
    800015ec:	0297ee63          	bltu	a5,s1,80001628 <_Z11workerBodyDv+0x5c>
    {
        printString("D: i=");
    800015f0:	00004517          	auipc	a0,0x4
    800015f4:	aa050513          	addi	a0,a0,-1376 # 80005090 <CONSOLE_STATUS+0x80>
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	320080e7          	jalr	800(ra) # 80001918 <_Z11printStringPKc>
        printInteger(i);
    80001600:	00048513          	mv	a0,s1
    80001604:	00000097          	auipc	ra,0x0
    80001608:	40c080e7          	jalr	1036(ra) # 80001a10 <_Z12printIntegerm>
        printString("\n");
    8000160c:	00004517          	auipc	a0,0x4
    80001610:	b5450513          	addi	a0,a0,-1196 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80001614:	00000097          	auipc	ra,0x0
    80001618:	304080e7          	jalr	772(ra) # 80001918 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000161c:	0014849b          	addiw	s1,s1,1
    80001620:	0ff4f493          	andi	s1,s1,255
    80001624:	fc5ff06f          	j	800015e8 <_Z11workerBodyDv+0x1c>
    }

    printString("D: yield\n");
    80001628:	00004517          	auipc	a0,0x4
    8000162c:	a7050513          	addi	a0,a0,-1424 # 80005098 <CONSOLE_STATUS+0x88>
    80001630:	00000097          	auipc	ra,0x0
    80001634:	2e8080e7          	jalr	744(ra) # 80001918 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001638:	00500313          	li	t1,5
    TCB::yield();
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	70c080e7          	jalr	1804(ra) # 80001d48 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001644:	01000513          	li	a0,16
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	c2c080e7          	jalr	-980(ra) # 80001274 <_ZL9fibonaccim>
    80001650:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001654:	00004517          	auipc	a0,0x4
    80001658:	a5450513          	addi	a0,a0,-1452 # 800050a8 <CONSOLE_STATUS+0x98>
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	2bc080e7          	jalr	700(ra) # 80001918 <_Z11printStringPKc>
    printInteger(result);
    80001664:	00090513          	mv	a0,s2
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	3a8080e7          	jalr	936(ra) # 80001a10 <_Z12printIntegerm>
    printString("\n");
    80001670:	00004517          	auipc	a0,0x4
    80001674:	af050513          	addi	a0,a0,-1296 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	2a0080e7          	jalr	672(ra) # 80001918 <_Z11printStringPKc>

    for (; i < 16; i++)
    80001680:	00f00793          	li	a5,15
    80001684:	0297ee63          	bltu	a5,s1,800016c0 <_Z11workerBodyDv+0xf4>
    {
        printString("D: i=");
    80001688:	00004517          	auipc	a0,0x4
    8000168c:	a0850513          	addi	a0,a0,-1528 # 80005090 <CONSOLE_STATUS+0x80>
    80001690:	00000097          	auipc	ra,0x0
    80001694:	288080e7          	jalr	648(ra) # 80001918 <_Z11printStringPKc>
        printInteger(i);
    80001698:	00048513          	mv	a0,s1
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	374080e7          	jalr	884(ra) # 80001a10 <_Z12printIntegerm>
        printString("\n");
    800016a4:	00004517          	auipc	a0,0x4
    800016a8:	abc50513          	addi	a0,a0,-1348 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	26c080e7          	jalr	620(ra) # 80001918 <_Z11printStringPKc>
    for (; i < 16; i++)
    800016b4:	0014849b          	addiw	s1,s1,1
    800016b8:	0ff4f493          	andi	s1,s1,255
    800016bc:	fc5ff06f          	j	80001680 <_Z11workerBodyDv+0xb4>
    }
//    TCB::yield();
    800016c0:	01813083          	ld	ra,24(sp)
    800016c4:	01013403          	ld	s0,16(sp)
    800016c8:	00813483          	ld	s1,8(sp)
    800016cc:	00013903          	ld	s2,0(sp)
    800016d0:	02010113          	addi	sp,sp,32
    800016d4:	00008067          	ret

00000000800016d8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800016e4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800016e8:	10200073          	sret
}
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800016f8:	fa010113          	addi	sp,sp,-96
    800016fc:	04113c23          	sd	ra,88(sp)
    80001700:	04813823          	sd	s0,80(sp)
    80001704:	06010413          	addi	s0,sp,96
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001708:	142027f3          	csrr	a5,scause
    8000170c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001710:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001714:	ff870693          	addi	a3,a4,-8
    80001718:	00100793          	li	a5,1
    8000171c:	02d7fa63          	bgeu	a5,a3,80001750 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001720:	fff00793          	li	a5,-1
    80001724:	03f79793          	slli	a5,a5,0x3f
    80001728:	00178793          	addi	a5,a5,1
    8000172c:	06f70663          	beq	a4,a5,80001798 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001730:	fff00793          	li	a5,-1
    80001734:	03f79793          	slli	a5,a5,0x3f
    80001738:	00978793          	addi	a5,a5,9
    8000173c:	0cf70863          	beq	a4,a5,8000180c <_ZN5Riscv20handleSupervisorTrapEv+0x114>
    }
    else
    {
        // unexpected trap cause
    }
    80001740:	05813083          	ld	ra,88(sp)
    80001744:	05013403          	ld	s0,80(sp)
    80001748:	06010113          	addi	sp,sp,96
    8000174c:	00008067          	ret
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001750:	141027f3          	csrr	a5,sepc
    80001754:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001758:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    8000175c:	00478793          	addi	a5,a5,4
    80001760:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001764:	100027f3          	csrr	a5,sstatus
    80001768:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000176c:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001770:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80001774:	00004797          	auipc	a5,0x4
    80001778:	6807b623          	sd	zero,1676(a5) # 80005e00 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	640080e7          	jalr	1600(ra) # 80001dbc <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80001784:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001788:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000178c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001790:	14179073          	csrw	sepc,a5
    80001794:	fadff06f          	j	80001740 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001798:	00200793          	li	a5,2
    8000179c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800017a0:	00004717          	auipc	a4,0x4
    800017a4:	66070713          	addi	a4,a4,1632 # 80005e00 <_ZN3TCB16timeSliceCounterE>
    800017a8:	00073783          	ld	a5,0(a4)
    800017ac:	00178793          	addi	a5,a5,1
    800017b0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800017b4:	00004717          	auipc	a4,0x4
    800017b8:	65470713          	addi	a4,a4,1620 # 80005e08 <_ZN3TCB7runningE>
    800017bc:	00073703          	ld	a4,0(a4)

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    800017c0:	02073703          	ld	a4,32(a4)
    800017c4:	f6e7eee3          	bltu	a5,a4,80001740 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800017c8:	141027f3          	csrr	a5,sepc
    800017cc:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800017d0:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    800017d4:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800017d8:	100027f3          	csrr	a5,sstatus
    800017dc:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800017e0:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    800017e4:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    800017e8:	00004797          	auipc	a5,0x4
    800017ec:	6007bc23          	sd	zero,1560(a5) # 80005e00 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	5cc080e7          	jalr	1484(ra) # 80001dbc <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800017f8:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800017fc:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001800:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001804:	14179073          	csrw	sepc,a5
    80001808:	f39ff06f          	j	80001740 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    8000180c:	00003097          	auipc	ra,0x3
    80001810:	e04080e7          	jalr	-508(ra) # 80004610 <console_handler>
    80001814:	f2dff06f          	j	80001740 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080001818 <_Znwm>:
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001818:	fe010113          	addi	sp,sp,-32
    8000181c:	00113c23          	sd	ra,24(sp)
    80001820:	00813823          	sd	s0,16(sp)
    80001824:	00913423          	sd	s1,8(sp)
    80001828:	02010413          	addi	s0,sp,32
    8000182c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001830:	00000097          	auipc	ra,0x0
    80001834:	5f8080e7          	jalr	1528(ra) # 80001e28 <_ZN15MemoryAllocator11getInstanceEv>
    80001838:	00048593          	mv	a1,s1
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	750080e7          	jalr	1872(ra) # 80001f8c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001844:	01813083          	ld	ra,24(sp)
    80001848:	01013403          	ld	s0,16(sp)
    8000184c:	00813483          	ld	s1,8(sp)
    80001850:	02010113          	addi	sp,sp,32
    80001854:	00008067          	ret

0000000080001858 <_Znam>:

void *operator new[](size_t n)
{
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	02010413          	addi	s0,sp,32
    8000186c:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance()->mem_alloc(n);
    80001870:	00000097          	auipc	ra,0x0
    80001874:	5b8080e7          	jalr	1464(ra) # 80001e28 <_ZN15MemoryAllocator11getInstanceEv>
    80001878:	00048593          	mv	a1,s1
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	710080e7          	jalr	1808(ra) # 80001f8c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001884:	01813083          	ld	ra,24(sp)
    80001888:	01013403          	ld	s0,16(sp)
    8000188c:	00813483          	ld	s1,8(sp)
    80001890:	02010113          	addi	sp,sp,32
    80001894:	00008067          	ret

0000000080001898 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001898:	fe010113          	addi	sp,sp,-32
    8000189c:	00113c23          	sd	ra,24(sp)
    800018a0:	00813823          	sd	s0,16(sp)
    800018a4:	00913423          	sd	s1,8(sp)
    800018a8:	02010413          	addi	s0,sp,32
    800018ac:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	578080e7          	jalr	1400(ra) # 80001e28 <_ZN15MemoryAllocator11getInstanceEv>
    800018b8:	00048593          	mv	a1,s1
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	a20080e7          	jalr	-1504(ra) # 800022dc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800018c4:	01813083          	ld	ra,24(sp)
    800018c8:	01013403          	ld	s0,16(sp)
    800018cc:	00813483          	ld	s1,8(sp)
    800018d0:	02010113          	addi	sp,sp,32
    800018d4:	00008067          	ret

00000000800018d8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800018d8:	fe010113          	addi	sp,sp,-32
    800018dc:	00113c23          	sd	ra,24(sp)
    800018e0:	00813823          	sd	s0,16(sp)
    800018e4:	00913423          	sd	s1,8(sp)
    800018e8:	02010413          	addi	s0,sp,32
    800018ec:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance()->mem_free(p);
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	538080e7          	jalr	1336(ra) # 80001e28 <_ZN15MemoryAllocator11getInstanceEv>
    800018f8:	00048593          	mv	a1,s1
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	9e0080e7          	jalr	-1568(ra) # 800022dc <_ZN15MemoryAllocator8mem_freeEPv>
    80001904:	01813083          	ld	ra,24(sp)
    80001908:	01013403          	ld	s0,16(sp)
    8000190c:	00813483          	ld	s1,8(sp)
    80001910:	02010113          	addi	sp,sp,32
    80001914:	00008067          	ret

0000000080001918 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001918:	fd010113          	addi	sp,sp,-48
    8000191c:	02113423          	sd	ra,40(sp)
    80001920:	02813023          	sd	s0,32(sp)
    80001924:	00913c23          	sd	s1,24(sp)
    80001928:	01213823          	sd	s2,16(sp)
    8000192c:	03010413          	addi	s0,sp,48
    80001930:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001934:	100027f3          	csrr	a5,sstatus
    80001938:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000193c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001940:	00200793          	li	a5,2
    80001944:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001948:	0004c503          	lbu	a0,0(s1)
    8000194c:	00050a63          	beqz	a0,80001960 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001950:	00003097          	auipc	ra,0x3
    80001954:	c4c080e7          	jalr	-948(ra) # 8000459c <__putc>
        string++;
    80001958:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000195c:	fedff06f          	j	80001948 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001960:	0009091b          	sext.w	s2,s2
    80001964:	00297913          	andi	s2,s2,2
    80001968:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000196c:	10092073          	csrs	sstatus,s2
}
    80001970:	02813083          	ld	ra,40(sp)
    80001974:	02013403          	ld	s0,32(sp)
    80001978:	01813483          	ld	s1,24(sp)
    8000197c:	01013903          	ld	s2,16(sp)
    80001980:	03010113          	addi	sp,sp,48
    80001984:	00008067          	ret

0000000080001988 <_Z11debug_printPKc>:
    #if DEBUG_PRINT == 1
    printInteger(integer);
    #endif
}

void debug_print(char const *string) {
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00113423          	sd	ra,8(sp)
    80001990:	00813023          	sd	s0,0(sp)
    80001994:	01010413          	addi	s0,sp,16
    #if DEBUG_PRINT == 1
    printString(string);
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	f80080e7          	jalr	-128(ra) # 80001918 <_Z11printStringPKc>
    #endif
}
    800019a0:	00813083          	ld	ra,8(sp)
    800019a4:	00013403          	ld	s0,0(sp)
    800019a8:	01010113          	addi	sp,sp,16
    800019ac:	00008067          	ret

00000000800019b0 <_Z6assertbPKc>:

void assert(bool condition, char const *debug_message) {
    if (!condition) {
    800019b0:	00050463          	beqz	a0,800019b8 <_Z6assertbPKc+0x8>
    800019b4:	00008067          	ret
void assert(bool condition, char const *debug_message) {
    800019b8:	fe010113          	addi	sp,sp,-32
    800019bc:	00113c23          	sd	ra,24(sp)
    800019c0:	00813823          	sd	s0,16(sp)
    800019c4:	00913423          	sd	s1,8(sp)
    800019c8:	02010413          	addi	s0,sp,32
    800019cc:	00058493          	mv	s1,a1
        debug_print("Assertion failed: ");
    800019d0:	00003517          	auipc	a0,0x3
    800019d4:	6f850513          	addi	a0,a0,1784 # 800050c8 <_ZZ12printIntegermE6digits+0x10>
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	fb0080e7          	jalr	-80(ra) # 80001988 <_Z11debug_printPKc>
        debug_print(debug_message);
    800019e0:	00048513          	mv	a0,s1
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	fa4080e7          	jalr	-92(ra) # 80001988 <_Z11debug_printPKc>
        debug_print("\n");
    800019ec:	00003517          	auipc	a0,0x3
    800019f0:	77450513          	addi	a0,a0,1908 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	f94080e7          	jalr	-108(ra) # 80001988 <_Z11debug_printPKc>
    }
}
    800019fc:	01813083          	ld	ra,24(sp)
    80001a00:	01013403          	ld	s0,16(sp)
    80001a04:	00813483          	ld	s1,8(sp)
    80001a08:	02010113          	addi	sp,sp,32
    80001a0c:	00008067          	ret

0000000080001a10 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001a10:	fc010113          	addi	sp,sp,-64
    80001a14:	02113c23          	sd	ra,56(sp)
    80001a18:	02813823          	sd	s0,48(sp)
    80001a1c:	02913423          	sd	s1,40(sp)
    80001a20:	03213023          	sd	s2,32(sp)
    80001a24:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a28:	100027f3          	csrr	a5,sstatus
    80001a2c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001a30:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001a34:	00200793          	li	a5,2
    80001a38:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001a3c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001a40:	00000713          	li	a4,0
    80001a44:	0080006f          	j	80001a4c <_Z12printIntegerm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80001a48:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    80001a4c:	00a00793          	li	a5,10
    80001a50:	02f5763b          	remuw	a2,a0,a5
    80001a54:	0017049b          	addiw	s1,a4,1
    80001a58:	00003697          	auipc	a3,0x3
    80001a5c:	66068693          	addi	a3,a3,1632 # 800050b8 <_ZZ12printIntegermE6digits>
    80001a60:	00c686b3          	add	a3,a3,a2
    80001a64:	0006c683          	lbu	a3,0(a3)
    80001a68:	fe040613          	addi	a2,s0,-32
    80001a6c:	00e60733          	add	a4,a2,a4
    80001a70:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    80001a74:	02f557bb          	divuw	a5,a0,a5
    80001a78:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    80001a7c:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80001a80:	00900793          	li	a5,9
    80001a84:	fca7e2e3          	bltu	a5,a0,80001a48 <_Z12printIntegerm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001a88:	fff4849b          	addiw	s1,s1,-1
    80001a8c:	0004ce63          	bltz	s1,80001aa8 <_Z12printIntegerm+0x98>
    80001a90:	fe040793          	addi	a5,s0,-32
    80001a94:	009787b3          	add	a5,a5,s1
    80001a98:	ff07c503          	lbu	a0,-16(a5)
    80001a9c:	00003097          	auipc	ra,0x3
    80001aa0:	b00080e7          	jalr	-1280(ra) # 8000459c <__putc>
    80001aa4:	fe5ff06f          	j	80001a88 <_Z12printIntegerm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001aa8:	0009091b          	sext.w	s2,s2
    80001aac:	00297913          	andi	s2,s2,2
    80001ab0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ab4:	10092073          	csrs	sstatus,s2
    80001ab8:	03813083          	ld	ra,56(sp)
    80001abc:	03013403          	ld	s0,48(sp)
    80001ac0:	02813483          	ld	s1,40(sp)
    80001ac4:	02013903          	ld	s2,32(sp)
    80001ac8:	04010113          	addi	sp,sp,64
    80001acc:	00008067          	ret

0000000080001ad0 <_Z11debug_printm>:
void debug_print(uint64 integer) {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    printInteger(integer);
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	f30080e7          	jalr	-208(ra) # 80001a10 <_Z12printIntegerm>
}
    80001ae8:	00813083          	ld	ra,8(sp)
    80001aec:	00013403          	ld	s0,0(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret

0000000080001af8 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    80001af8:	fb010113          	addi	sp,sp,-80
    80001afc:	04113423          	sd	ra,72(sp)
    80001b00:	04813023          	sd	s0,64(sp)
    80001b04:	02913c23          	sd	s1,56(sp)
    80001b08:	03213823          	sd	s2,48(sp)
    80001b0c:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    debug_print("Main thread created\n");
    80001b10:	00003517          	auipc	a0,0x3
    80001b14:	5d050513          	addi	a0,a0,1488 # 800050e0 <_ZZ12printIntegermE6digits+0x28>
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	e70080e7          	jalr	-400(ra) # 80001988 <_Z11debug_printPKc>
    threads[0] = TCB::createThread(nullptr);
    80001b20:	00000513          	li	a0,0
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	15c080e7          	jalr	348(ra) # 80001c80 <_ZN3TCB12createThreadEPFvvE>
    80001b2c:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001b30:	00004797          	auipc	a5,0x4
    80001b34:	2ca7bc23          	sd	a0,728(a5) # 80005e08 <_ZN3TCB7runningE>

    threads[1] = TCB::createThread(workerBodyA);
    80001b38:	00000517          	auipc	a0,0x0
    80001b3c:	82850513          	addi	a0,a0,-2008 # 80001360 <_Z11workerBodyAv>
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	140080e7          	jalr	320(ra) # 80001c80 <_ZN3TCB12createThreadEPFvvE>
    80001b48:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80001b4c:	00003517          	auipc	a0,0x3
    80001b50:	5ac50513          	addi	a0,a0,1452 # 800050f8 <_ZZ12printIntegermE6digits+0x40>
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	dc4080e7          	jalr	-572(ra) # 80001918 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001b5c:	00000517          	auipc	a0,0x0
    80001b60:	89c50513          	addi	a0,a0,-1892 # 800013f8 <_Z11workerBodyBv>
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	11c080e7          	jalr	284(ra) # 80001c80 <_ZN3TCB12createThreadEPFvvE>
    80001b6c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001b70:	00003517          	auipc	a0,0x3
    80001b74:	5a050513          	addi	a0,a0,1440 # 80005110 <_ZZ12printIntegermE6digits+0x58>
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	da0080e7          	jalr	-608(ra) # 80001918 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    80001b80:	00000517          	auipc	a0,0x0
    80001b84:	91050513          	addi	a0,a0,-1776 # 80001490 <_Z11workerBodyCv>
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	0f8080e7          	jalr	248(ra) # 80001c80 <_ZN3TCB12createThreadEPFvvE>
    80001b90:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80001b94:	00003517          	auipc	a0,0x3
    80001b98:	59450513          	addi	a0,a0,1428 # 80005128 <_ZZ12printIntegermE6digits+0x70>
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	d7c080e7          	jalr	-644(ra) # 80001918 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    80001ba4:	00000517          	auipc	a0,0x0
    80001ba8:	a2850513          	addi	a0,a0,-1496 # 800015cc <_Z11workerBodyDv>
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	0d4080e7          	jalr	212(ra) # 80001c80 <_ZN3TCB12createThreadEPFvvE>
    80001bb4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80001bb8:	00003517          	auipc	a0,0x3
    80001bbc:	58850513          	addi	a0,a0,1416 # 80005140 <_ZZ12printIntegermE6digits+0x88>
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	d58080e7          	jalr	-680(ra) # 80001918 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001bc8:	fffff797          	auipc	a5,0xfffff
    80001bcc:	43878793          	addi	a5,a5,1080 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001bd0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001bd4:	00200793          	li	a5,2
    80001bd8:	1007a073          	csrs	sstatus,a5
    80001bdc:	00c0006f          	j	80001be8 <main+0xf0>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	168080e7          	jalr	360(ra) # 80001d48 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    80001be8:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished; }
    80001bec:	0287c783          	lbu	a5,40(a5)
    80001bf0:	fe0788e3          	beqz	a5,80001be0 <main+0xe8>
             threads[2]->isFinished() &&
    80001bf4:	fc843783          	ld	a5,-56(s0)
    80001bf8:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001bfc:	fe0782e3          	beqz	a5,80001be0 <main+0xe8>
             threads[3]->isFinished() &&
    80001c00:	fd043783          	ld	a5,-48(s0)
    80001c04:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001c08:	fc078ce3          	beqz	a5,80001be0 <main+0xe8>
             threads[4]->isFinished()))
    80001c0c:	fd843783          	ld	a5,-40(s0)
    80001c10:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001c14:	fc0786e3          	beqz	a5,80001be0 <main+0xe8>
    }

    for (auto &thread: threads)
    80001c18:	fb840493          	addi	s1,s0,-72
    80001c1c:	0140006f          	j	80001c30 <main+0x138>
    {
        delete thread;
    80001c20:	00090513          	mv	a0,s2
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	c74080e7          	jalr	-908(ra) # 80001898 <_ZdlPv>
    for (auto &thread: threads)
    80001c2c:	00848493          	addi	s1,s1,8
    80001c30:	fe040793          	addi	a5,s0,-32
    80001c34:	02f48063          	beq	s1,a5,80001c54 <main+0x15c>
        delete thread;
    80001c38:	0004b903          	ld	s2,0(s1)
    80001c3c:	fe0908e3          	beqz	s2,80001c2c <main+0x134>
    ~TCB() { delete[] stack; }
    80001c40:	00893503          	ld	a0,8(s2)
    80001c44:	fc050ee3          	beqz	a0,80001c20 <main+0x128>
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	c90080e7          	jalr	-880(ra) # 800018d8 <_ZdaPv>
    80001c50:	fd1ff06f          	j	80001c20 <main+0x128>
    }
    printString("Finished\n");
    80001c54:	00003517          	auipc	a0,0x3
    80001c58:	50450513          	addi	a0,a0,1284 # 80005158 <_ZZ12printIntegermE6digits+0xa0>
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	cbc080e7          	jalr	-836(ra) # 80001918 <_Z11printStringPKc>

    return 0;
}
    80001c64:	00000513          	li	a0,0
    80001c68:	04813083          	ld	ra,72(sp)
    80001c6c:	04013403          	ld	s0,64(sp)
    80001c70:	03813483          	ld	s1,56(sp)
    80001c74:	03013903          	ld	s2,48(sp)
    80001c78:	05010113          	addi	sp,sp,80
    80001c7c:	00008067          	ret

0000000080001c80 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001c80:	fe010113          	addi	sp,sp,-32
    80001c84:	00113c23          	sd	ra,24(sp)
    80001c88:	00813823          	sd	s0,16(sp)
    80001c8c:	00913423          	sd	s1,8(sp)
    80001c90:	01213023          	sd	s2,0(sp)
    80001c94:	02010413          	addi	s0,sp,32
    80001c98:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001c9c:	03000513          	li	a0,48
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	b78080e7          	jalr	-1160(ra) # 80001818 <_Znwm>
    80001ca8:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001cac:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001cb0:	00090a63          	beqz	s2,80001cc4 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001cb4:	00002537          	lui	a0,0x2
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	ba0080e7          	jalr	-1120(ra) # 80001858 <_Znam>
    80001cc0:	0080006f          	j	80001cc8 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001cc4:	00000513          	li	a0,0
            finished(false)
    80001cc8:	00a4b423          	sd	a0,8(s1)
    80001ccc:	00000797          	auipc	a5,0x0
    80001cd0:	09878793          	addi	a5,a5,152 # 80001d64 <_ZN3TCB13threadWrapperEv>
    80001cd4:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001cd8:	02050863          	beqz	a0,80001d08 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001cdc:	000027b7          	lui	a5,0x2
    80001ce0:	00f50533          	add	a0,a0,a5
            finished(false)
    80001ce4:	00a4bc23          	sd	a0,24(s1)
    80001ce8:	00200793          	li	a5,2
    80001cec:	02f4b023          	sd	a5,32(s1)
    80001cf0:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001cf4:	02090c63          	beqz	s2,80001d2c <_ZN3TCB12createThreadEPFvvE+0xac>
    80001cf8:	00048513          	mv	a0,s1
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	4d4080e7          	jalr	1236(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
    80001d04:	0280006f          	j	80001d2c <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001d08:	00000513          	li	a0,0
    80001d0c:	fd9ff06f          	j	80001ce4 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001d10:	00050913          	mv	s2,a0
    80001d14:	00048513          	mv	a0,s1
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	b80080e7          	jalr	-1152(ra) # 80001898 <_ZdlPv>
    80001d20:	00090513          	mv	a0,s2
    80001d24:	00005097          	auipc	ra,0x5
    80001d28:	1f4080e7          	jalr	500(ra) # 80006f18 <_Unwind_Resume>
}
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	00013903          	ld	s2,0(sp)
    80001d40:	02010113          	addi	sp,sp,32
    80001d44:	00008067          	ret

0000000080001d48 <_ZN3TCB5yieldEv>:

// Let's scheduler decide the next process.
void TCB::yield()
{
    80001d48:	ff010113          	addi	sp,sp,-16
    80001d4c:	00813423          	sd	s0,8(sp)
    80001d50:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001d54:	00000073          	ecall
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    80001d64:	fe010113          	addi	sp,sp,-32
    80001d68:	00113c23          	sd	ra,24(sp)
    80001d6c:	00813823          	sd	s0,16(sp)
    80001d70:	00913423          	sd	s1,8(sp)
    80001d74:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	960080e7          	jalr	-1696(ra) # 800016d8 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001d80:	00004497          	auipc	s1,0x4
    80001d84:	08848493          	addi	s1,s1,136 # 80005e08 <_ZN3TCB7runningE>
    80001d88:	0004b783          	ld	a5,0(s1)
    80001d8c:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001d90:	000780e7          	jalr	a5
    running->setFinished(true);
    80001d94:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001d98:	00100713          	li	a4,1
    80001d9c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	fa8080e7          	jalr	-88(ra) # 80001d48 <_ZN3TCB5yieldEv>
}
    80001da8:	01813083          	ld	ra,24(sp)
    80001dac:	01013403          	ld	s0,16(sp)
    80001db0:	00813483          	ld	s1,8(sp)
    80001db4:	02010113          	addi	sp,sp,32
    80001db8:	00008067          	ret

0000000080001dbc <_ZN3TCB8dispatchEv>:
{
    80001dbc:	fe010113          	addi	sp,sp,-32
    80001dc0:	00113c23          	sd	ra,24(sp)
    80001dc4:	00813823          	sd	s0,16(sp)
    80001dc8:	00913423          	sd	s1,8(sp)
    80001dcc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001dd0:	00004797          	auipc	a5,0x4
    80001dd4:	03878793          	addi	a5,a5,56 # 80005e08 <_ZN3TCB7runningE>
    80001dd8:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return finished; }
    80001ddc:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001de0:	02078c63          	beqz	a5,80001e18 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80001de4:	fffff097          	auipc	ra,0xfffff
    80001de8:	380080e7          	jalr	896(ra) # 80001164 <_ZN9Scheduler3getEv>
    80001dec:	00004797          	auipc	a5,0x4
    80001df0:	00a7be23          	sd	a0,28(a5) # 80005e08 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001df4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001df8:	01048513          	addi	a0,s1,16
    80001dfc:	fffff097          	auipc	ra,0xfffff
    80001e00:	314080e7          	jalr	788(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e04:	01813083          	ld	ra,24(sp)
    80001e08:	01013403          	ld	s0,16(sp)
    80001e0c:	00813483          	ld	s1,8(sp)
    80001e10:	02010113          	addi	sp,sp,32
    80001e14:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001e18:	00048513          	mv	a0,s1
    80001e1c:	fffff097          	auipc	ra,0xfffff
    80001e20:	3b4080e7          	jalr	948(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
    80001e24:	fc1ff06f          	j	80001de4 <_ZN3TCB8dispatchEv+0x28>

0000000080001e28 <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
    80001e28:	00004797          	auipc	a5,0x4
    80001e2c:	fe878793          	addi	a5,a5,-24 # 80005e10 <_ZN15MemoryAllocator9instance_E>
    80001e30:	0007b783          	ld	a5,0(a5)
    80001e34:	00078a63          	beqz	a5,80001e48 <_ZN15MemoryAllocator11getInstanceEv+0x20>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}
    80001e38:	00004797          	auipc	a5,0x4
    80001e3c:	fd878793          	addi	a5,a5,-40 # 80005e10 <_ZN15MemoryAllocator9instance_E>
    80001e40:	0007b503          	ld	a0,0(a5)
    80001e44:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80001e48:	fd010113          	addi	sp,sp,-48
    80001e4c:	02113423          	sd	ra,40(sp)
    80001e50:	02813023          	sd	s0,32(sp)
    80001e54:	00913c23          	sd	s1,24(sp)
    80001e58:	01213823          	sd	s2,16(sp)
    80001e5c:	01313423          	sd	s3,8(sp)
    80001e60:	03010413          	addi	s0,sp,48
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80001e64:	00004997          	auipc	s3,0x4
    80001e68:	f2c98993          	addi	s3,s3,-212 # 80005d90 <HEAP_START_ADDR>
    80001e6c:	0009b783          	ld	a5,0(s3)
    80001e70:	03f78793          	addi	a5,a5,63
        & ~(MEM_BLOCK_SIZE - 1));
    80001e74:	fc07f793          	andi	a5,a5,-64
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
    80001e78:	00004497          	auipc	s1,0x4
    80001e7c:	f9848493          	addi	s1,s1,-104 # 80005e10 <_ZN15MemoryAllocator9instance_E>
    80001e80:	00f4b023          	sd	a5,0(s1)
            (uint64)instance_+ 
    80001e84:	04078713          	addi	a4,a5,64
        instance_->free_block_ptr_ =  (BlockInfo*)(
    80001e88:	00e7b023          	sd	a4,0(a5)
        instance_->free_block_ptr_->next_ = nullptr;
    80001e8c:	0004b783          	ld	a5,0(s1)
    80001e90:	0007b783          	ld	a5,0(a5)
    80001e94:	0007b023          	sd	zero,0(a5)
            (uint64)instance_->free_block_ptr_;
    80001e98:	0004b783          	ld	a5,0(s1)
    80001e9c:	0007b703          	ld	a4,0(a5)
            (uint64)HEAP_END_ADDR - 
    80001ea0:	00004917          	auipc	s2,0x4
    80001ea4:	ee890913          	addi	s2,s2,-280 # 80005d88 <HEAP_END_ADDR>
    80001ea8:	00093783          	ld	a5,0(s2)
    80001eac:	40e787b3          	sub	a5,a5,a4
        instance_->free_block_ptr_->size_ = 
    80001eb0:	00f73423          	sd	a5,8(a4)
        debug_print("MemoryAllocator initialized with:\n");
    80001eb4:	00003517          	auipc	a0,0x3
    80001eb8:	2b450513          	addi	a0,a0,692 # 80005168 <_ZZ12printIntegermE6digits+0xb0>
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	acc080e7          	jalr	-1332(ra) # 80001988 <_Z11debug_printPKc>
        debug_print("MEM_BLOCK_SIZE: ");
    80001ec4:	00003517          	auipc	a0,0x3
    80001ec8:	2cc50513          	addi	a0,a0,716 # 80005190 <_ZZ12printIntegermE6digits+0xd8>
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	abc080e7          	jalr	-1348(ra) # 80001988 <_Z11debug_printPKc>
        debug_print(MEM_BLOCK_SIZE);
    80001ed4:	04000513          	li	a0,64
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	bf8080e7          	jalr	-1032(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\nHEAP_START_ADDR: ");
    80001ee0:	00003517          	auipc	a0,0x3
    80001ee4:	2c850513          	addi	a0,a0,712 # 800051a8 <_ZZ12printIntegermE6digits+0xf0>
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	aa0080e7          	jalr	-1376(ra) # 80001988 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_START_ADDR);
    80001ef0:	0009b503          	ld	a0,0(s3)
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	bdc080e7          	jalr	-1060(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\nHEAP_END_ADDR: ");
    80001efc:	00003517          	auipc	a0,0x3
    80001f00:	2c450513          	addi	a0,a0,708 # 800051c0 <_ZZ12printIntegermE6digits+0x108>
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	a84080e7          	jalr	-1404(ra) # 80001988 <_Z11debug_printPKc>
        debug_print((uint64)HEAP_END_ADDR);
    80001f0c:	00093503          	ld	a0,0(s2)
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	bc0080e7          	jalr	-1088(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\nFirst free block pointer: ");
    80001f18:	00003517          	auipc	a0,0x3
    80001f1c:	2c050513          	addi	a0,a0,704 # 800051d8 <_ZZ12printIntegermE6digits+0x120>
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	a68080e7          	jalr	-1432(ra) # 80001988 <_Z11debug_printPKc>
        debug_print((uint64)instance_->free_block_ptr_);
    80001f28:	0004b783          	ld	a5,0(s1)
    80001f2c:	0007b503          	ld	a0,0(a5)
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	ba0080e7          	jalr	-1120(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
    80001f38:	00003517          	auipc	a0,0x3
    80001f3c:	2c050513          	addi	a0,a0,704 # 800051f8 <_ZZ12printIntegermE6digits+0x140>
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	a48080e7          	jalr	-1464(ra) # 80001988 <_Z11debug_printPKc>
        debug_print(BLOCK_INFO_HEADER_SIZE);
    80001f48:	01000513          	li	a0,16
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	b84080e7          	jalr	-1148(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\n");
    80001f54:	00003517          	auipc	a0,0x3
    80001f58:	20c50513          	addi	a0,a0,524 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	a2c080e7          	jalr	-1492(ra) # 80001988 <_Z11debug_printPKc>
}
    80001f64:	00004797          	auipc	a5,0x4
    80001f68:	eac78793          	addi	a5,a5,-340 # 80005e10 <_ZN15MemoryAllocator9instance_E>
    80001f6c:	0007b503          	ld	a0,0(a5)
    80001f70:	02813083          	ld	ra,40(sp)
    80001f74:	02013403          	ld	s0,32(sp)
    80001f78:	01813483          	ld	s1,24(sp)
    80001f7c:	01013903          	ld	s2,16(sp)
    80001f80:	00813983          	ld	s3,8(sp)
    80001f84:	03010113          	addi	sp,sp,48
    80001f88:	00008067          	ret

0000000080001f8c <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc (size_t size) {
    80001f8c:	fd010113          	addi	sp,sp,-48
    80001f90:	02113423          	sd	ra,40(sp)
    80001f94:	02813023          	sd	s0,32(sp)
    80001f98:	00913c23          	sd	s1,24(sp)
    80001f9c:	01213823          	sd	s2,16(sp)
    80001fa0:	01313423          	sd	s3,8(sp)
    80001fa4:	03010413          	addi	s0,sp,48
    80001fa8:	00050993          	mv	s3,a0
    80001fac:	00058913          	mv	s2,a1

    debug_print("Allocating memory of size: ");
    80001fb0:	00003517          	auipc	a0,0x3
    80001fb4:	26850513          	addi	a0,a0,616 # 80005218 <_ZZ12printIntegermE6digits+0x160>
    80001fb8:	00000097          	auipc	ra,0x0
    80001fbc:	9d0080e7          	jalr	-1584(ra) # 80001988 <_Z11debug_printPKc>
    debug_print(size);
    80001fc0:	00090513          	mv	a0,s2
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	b0c080e7          	jalr	-1268(ra) # 80001ad0 <_Z11debug_printm>
    debug_print("\n");
    80001fcc:	00003517          	auipc	a0,0x3
    80001fd0:	19450513          	addi	a0,a0,404 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	9b4080e7          	jalr	-1612(ra) # 80001988 <_Z11debug_printPKc>

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
    80001fdc:	0009b483          	ld	s1,0(s3)
    80001fe0:	0c048263          	beqz	s1,800020a4 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
    80001fe4:	04f90913          	addi	s2,s2,79
    80001fe8:	fc097913          	andi	s2,s2,-64
           & ~(MEM_BLOCK_SIZE - 1);

    debug_print("Aligned size: ");
    80001fec:	00003517          	auipc	a0,0x3
    80001ff0:	24c50513          	addi	a0,a0,588 # 80005238 <_ZZ12printIntegermE6digits+0x180>
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	994080e7          	jalr	-1644(ra) # 80001988 <_Z11debug_printPKc>
    debug_print(size);
    80001ffc:	00090513          	mv	a0,s2
    80002000:	00000097          	auipc	ra,0x0
    80002004:	ad0080e7          	jalr	-1328(ra) # 80001ad0 <_Z11debug_printm>
    debug_print("\n");
    80002008:	00003517          	auipc	a0,0x3
    8000200c:	15850513          	addi	a0,a0,344 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80002010:	00000097          	auipc	ra,0x0
    80002014:	978080e7          	jalr	-1672(ra) # 80001988 <_Z11debug_printPKc>

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;
    80002018:	0009b483          	ld	s1,0(s3)
    8000201c:	00000713          	li	a4,0

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
    80002020:	00048c63          	beqz	s1,80002038 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002024:	0084b783          	ld	a5,8(s1)
    80002028:	0127f863          	bgeu	a5,s2,80002038 <_ZN15MemoryAllocator9mem_allocEm+0xac>
        prev_free_block = free_block;
    8000202c:	00048713          	mv	a4,s1
        free_block = free_block->next_;
    80002030:	0004b483          	ld	s1,0(s1)
    while (free_block && free_block->size_ < size) {
    80002034:	fedff06f          	j	80002020 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
    80002038:	06048663          	beqz	s1,800020a4 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
    8000203c:	0084b783          	ld	a5,8(s1)
    80002040:	08f97663          	bgeu	s2,a5,800020cc <_ZN15MemoryAllocator9mem_allocEm+0x140>
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
    80002044:	012486b3          	add	a3,s1,s2
        
        // Link the new free block into the free list.
        if (prev_free_block) {
    80002048:	06070e63          	beqz	a4,800020c4 <_ZN15MemoryAllocator9mem_allocEm+0x138>
            prev_free_block->next_ = new_free_block;
    8000204c:	00d73023          	sd	a3,0(a4)
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
    80002050:	0004b783          	ld	a5,0(s1)
    80002054:	00f6b023          	sd	a5,0(a3)
        new_free_block->size_ = free_block->size_ - size;
    80002058:	0084b783          	ld	a5,8(s1)
    8000205c:	412787b3          	sub	a5,a5,s2
    80002060:	00f6b423          	sd	a5,8(a3)
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;
    80002064:	0124b423          	sd	s2,8(s1)

    debug_print("Allocated block at address: ");
    80002068:	00003517          	auipc	a0,0x3
    8000206c:	1e050513          	addi	a0,a0,480 # 80005248 <_ZZ12printIntegermE6digits+0x190>
    80002070:	00000097          	auipc	ra,0x0
    80002074:	918080e7          	jalr	-1768(ra) # 80001988 <_Z11debug_printPKc>
    debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002078:	01048913          	addi	s2,s1,16
    8000207c:	00090513          	mv	a0,s2
    80002080:	00000097          	auipc	ra,0x0
    80002084:	a50080e7          	jalr	-1456(ra) # 80001ad0 <_Z11debug_printm>
    debug_print("\n");
    80002088:	00003517          	auipc	a0,0x3
    8000208c:	0d850513          	addi	a0,a0,216 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80002090:	00000097          	auipc	ra,0x0
    80002094:	8f8080e7          	jalr	-1800(ra) # 80001988 <_Z11debug_printPKc>

    if ((uint64)free_block % MEM_BLOCK_SIZE != 0) {
    80002098:	03f4f793          	andi	a5,s1,63
    8000209c:	04079663          	bnez	a5,800020e8 <_ZN15MemoryAllocator9mem_allocEm+0x15c>
        debug_print("Free block address: ");
        debug_print((uint64)free_block);
        debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    800020a0:	00090493          	mv	s1,s2
}
    800020a4:	00048513          	mv	a0,s1
    800020a8:	02813083          	ld	ra,40(sp)
    800020ac:	02013403          	ld	s0,32(sp)
    800020b0:	01813483          	ld	s1,24(sp)
    800020b4:	01013903          	ld	s2,16(sp)
    800020b8:	00813983          	ld	s3,8(sp)
    800020bc:	03010113          	addi	sp,sp,48
    800020c0:	00008067          	ret
            free_block_ptr_ = new_free_block;
    800020c4:	00d9b023          	sd	a3,0(s3)
    800020c8:	f89ff06f          	j	80002050 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        if (prev_free_block) {
    800020cc:	00070863          	beqz	a4,800020dc <_ZN15MemoryAllocator9mem_allocEm+0x150>
            prev_free_block->next_ = free_block->next_;
    800020d0:	0004b783          	ld	a5,0(s1)
    800020d4:	00f73023          	sd	a5,0(a4)
    800020d8:	f8dff06f          	j	80002064 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            free_block_ptr_ = free_block->next_;
    800020dc:	0004b783          	ld	a5,0(s1)
    800020e0:	00f9b023          	sd	a5,0(s3)
    800020e4:	f81ff06f          	j	80002064 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        debug_print("Allocated block address is not aligned to MEM_BLOCK_SIZE.\n");
    800020e8:	00003517          	auipc	a0,0x3
    800020ec:	18050513          	addi	a0,a0,384 # 80005268 <_ZZ12printIntegermE6digits+0x1b0>
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	898080e7          	jalr	-1896(ra) # 80001988 <_Z11debug_printPKc>
        debug_print("Allocated block address: ");
    800020f8:	00003517          	auipc	a0,0x3
    800020fc:	1b050513          	addi	a0,a0,432 # 800052a8 <_ZZ12printIntegermE6digits+0x1f0>
    80002100:	00000097          	auipc	ra,0x0
    80002104:	888080e7          	jalr	-1912(ra) # 80001988 <_Z11debug_printPKc>
        debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    80002108:	00090513          	mv	a0,s2
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	9c4080e7          	jalr	-1596(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\n");
    80002114:	00003517          	auipc	a0,0x3
    80002118:	04c50513          	addi	a0,a0,76 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	86c080e7          	jalr	-1940(ra) # 80001988 <_Z11debug_printPKc>
        debug_print("Free block address: ");
    80002124:	00003517          	auipc	a0,0x3
    80002128:	1a450513          	addi	a0,a0,420 # 800052c8 <_ZZ12printIntegermE6digits+0x210>
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	85c080e7          	jalr	-1956(ra) # 80001988 <_Z11debug_printPKc>
        debug_print((uint64)free_block);
    80002134:	00048513          	mv	a0,s1
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	998080e7          	jalr	-1640(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\n");
    80002140:	00003517          	auipc	a0,0x3
    80002144:	02050513          	addi	a0,a0,32 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	840080e7          	jalr	-1984(ra) # 80001988 <_Z11debug_printPKc>
    80002150:	f51ff06f          	j	800020a0 <_ZN15MemoryAllocator9mem_allocEm+0x114>

0000000080002154 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00813423          	sd	s0,8(sp)
    8000215c:	01010413          	addi	s0,sp,16
    BlockInfo* free_block_iter = free_block_ptr_;
    80002160:	00053783          	ld	a5,0(a0)
    size_t largest_free_block_size = 0;
    80002164:	00000513          	li	a0,0
    while (free_block_iter) {
    80002168:	00078a63          	beqz	a5,8000217c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x28>
        if (free_block_iter->size_ > largest_free_block_size) {
    8000216c:	0087b703          	ld	a4,8(a5)
    80002170:	fee57ce3          	bgeu	a0,a4,80002168 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
            largest_free_block_size = free_block_iter->size_;
    80002174:	00070513          	mv	a0,a4
    80002178:	ff1ff06f          	j	80002168 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x14>
        }
    }
    return largest_free_block_size;
}
    8000217c:	00813403          	ld	s0,8(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00813423          	sd	s0,8(sp)
    80002190:	01010413          	addi	s0,sp,16
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    80002194:	00053783          	ld	a5,0(a0)
    size_t free_space = 0;
    80002198:	00000513          	li	a0,0
    while (free_block_iter) {
    8000219c:	00078a63          	beqz	a5,800021b0 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        free_space += free_block_iter->size_;
    800021a0:	0087b703          	ld	a4,8(a5)
    800021a4:	00e50533          	add	a0,a0,a4
        free_block_iter = free_block_iter->next_;
    800021a8:	0007b783          	ld	a5,0(a5)
    while (free_block_iter) {
    800021ac:	ff1ff06f          	j	8000219c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }
    return free_space;
}
    800021b0:	00813403          	ld	s0,8(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>:

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {
    800021bc:	fe010113          	addi	sp,sp,-32
    800021c0:	00113c23          	sd	ra,24(sp)
    800021c4:	00813823          	sd	s0,16(sp)
    800021c8:	00913423          	sd	s1,8(sp)
    800021cc:	01213023          	sd	s2,0(sp)
    800021d0:	02010413          	addi	s0,sp,32

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
    800021d4:	04058e63          	beqz	a1,80002230 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
    800021d8:	00058493          	mv	s1,a1
    800021dc:	00060913          	mv	s2,a2
    800021e0:	04060863          	beqz	a2,80002230 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x74>
        debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");
    800021e4:	00003597          	auipc	a1,0x3
    800021e8:	13458593          	addi	a1,a1,308 # 80005318 <_ZZ12printIntegermE6digits+0x260>
    800021ec:	00c4b533          	sltu	a0,s1,a2
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	7c0080e7          	jalr	1984(ra) # 800019b0 <_Z6assertbPKc>

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
    800021f8:	0084b783          	ld	a5,8(s1)
    800021fc:	00f48733          	add	a4,s1,a5
    80002200:	04e91263          	bne	s2,a4,80002244 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x88>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;
    80002204:	00893703          	ld	a4,8(s2)
    80002208:	00e787b3          	add	a5,a5,a4
    8000220c:	00f4b423          	sd	a5,8(s1)

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
    80002210:	00093783          	ld	a5,0(s2)
    80002214:	00f4b023          	sd	a5,0(s1)
    80002218:	01813083          	ld	ra,24(sp)
    8000221c:	01013403          	ld	s0,16(sp)
    80002220:	00813483          	ld	s1,8(sp)
    80002224:	00013903          	ld	s2,0(sp)
    80002228:	02010113          	addi	sp,sp,32
    8000222c:	00008067          	ret
        debug_print("Cannot consolidate blocks, one of them is null.\n");
    80002230:	00003517          	auipc	a0,0x3
    80002234:	0b050513          	addi	a0,a0,176 # 800052e0 <_ZZ12printIntegermE6digits+0x228>
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	750080e7          	jalr	1872(ra) # 80001988 <_Z11debug_printPKc>
        return;
    80002240:	fd9ff06f          	j	80002218 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>
        debug_print("First block address: ");
    80002244:	00003517          	auipc	a0,0x3
    80002248:	11450513          	addi	a0,a0,276 # 80005358 <_ZZ12printIntegermE6digits+0x2a0>
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	73c080e7          	jalr	1852(ra) # 80001988 <_Z11debug_printPKc>
        debug_print((uint64)first_block);
    80002254:	00048513          	mv	a0,s1
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	878080e7          	jalr	-1928(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\n");
    80002260:	00003517          	auipc	a0,0x3
    80002264:	f0050513          	addi	a0,a0,-256 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	720080e7          	jalr	1824(ra) # 80001988 <_Z11debug_printPKc>
        debug_print("First block size: ");
    80002270:	00003517          	auipc	a0,0x3
    80002274:	10050513          	addi	a0,a0,256 # 80005370 <_ZZ12printIntegermE6digits+0x2b8>
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	710080e7          	jalr	1808(ra) # 80001988 <_Z11debug_printPKc>
        debug_print(first_block->size_);
    80002280:	0084b503          	ld	a0,8(s1)
    80002284:	00000097          	auipc	ra,0x0
    80002288:	84c080e7          	jalr	-1972(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\n");
    8000228c:	00003517          	auipc	a0,0x3
    80002290:	ed450513          	addi	a0,a0,-300 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80002294:	fffff097          	auipc	ra,0xfffff
    80002298:	6f4080e7          	jalr	1780(ra) # 80001988 <_Z11debug_printPKc>
        debug_print("Second block address: ");
    8000229c:	00003517          	auipc	a0,0x3
    800022a0:	0ec50513          	addi	a0,a0,236 # 80005388 <_ZZ12printIntegermE6digits+0x2d0>
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	6e4080e7          	jalr	1764(ra) # 80001988 <_Z11debug_printPKc>
        debug_print((uint64)second_block);
    800022ac:	00090513          	mv	a0,s2
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	820080e7          	jalr	-2016(ra) # 80001ad0 <_Z11debug_printm>
        debug_print("\n");
    800022b8:	00003517          	auipc	a0,0x3
    800022bc:	ea850513          	addi	a0,a0,-344 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	6c8080e7          	jalr	1736(ra) # 80001988 <_Z11debug_printPKc>
        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
    800022c8:	00003517          	auipc	a0,0x3
    800022cc:	0d850513          	addi	a0,a0,216 # 800053a0 <_ZZ12printIntegermE6digits+0x2e8>
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	6b8080e7          	jalr	1720(ra) # 80001988 <_Z11debug_printPKc>
        return;
    800022d8:	f41ff06f          	j	80002218 <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_+0x5c>

00000000800022dc <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free (void* free_block_addr) {
    800022dc:	fc010113          	addi	sp,sp,-64
    800022e0:	02113c23          	sd	ra,56(sp)
    800022e4:	02813823          	sd	s0,48(sp)
    800022e8:	02913423          	sd	s1,40(sp)
    800022ec:	03213023          	sd	s2,32(sp)
    800022f0:	01313c23          	sd	s3,24(sp)
    800022f4:	01413823          	sd	s4,16(sp)
    800022f8:	01513423          	sd	s5,8(sp)
    800022fc:	04010413          	addi	s0,sp,64
    80002300:	00050a93          	mv	s5,a0
    80002304:	00058a13          	mv	s4,a1
    debug_print("Freeing block at address: ");
    80002308:	00003517          	auipc	a0,0x3
    8000230c:	0d050513          	addi	a0,a0,208 # 800053d8 <_ZZ12printIntegermE6digits+0x320>
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	678080e7          	jalr	1656(ra) # 80001988 <_Z11debug_printPKc>
    debug_print((uint64)free_block_addr);
    80002318:	000a0513          	mv	a0,s4
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	7b4080e7          	jalr	1972(ra) # 80001ad0 <_Z11debug_printm>
    debug_print("\n");
    80002324:	00003517          	auipc	a0,0x3
    80002328:	e3c50513          	addi	a0,a0,-452 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	65c080e7          	jalr	1628(ra) # 80001988 <_Z11debug_printPKc>
    if (!free_block_addr) {
    80002334:	040a0063          	beqz	s4,80002374 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;
    80002338:	ff0a0993          	addi	s3,s4,-16
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
    8000233c:	00098793          	mv	a5,s3
    80002340:	03f9f713          	andi	a4,s3,63
    80002344:	04071463          	bnez	a4,8000238c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002348:	00004717          	auipc	a4,0x4
    8000234c:	a4870713          	addi	a4,a4,-1464 # 80005d90 <HEAP_START_ADDR>
    80002350:	00073703          	ld	a4,0(a4)
    80002354:	04e9e863          	bltu	s3,a4,800023a4 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
    80002358:	00004717          	auipc	a4,0x4
    8000235c:	a3070713          	addi	a4,a4,-1488 # 80005d88 <HEAP_END_ADDR>
    80002360:	00073703          	ld	a4,0(a4)
    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
    80002364:	04e9f063          	bgeu	s3,a4,800023a4 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;
    80002368:	000ab483          	ld	s1,0(s5)
    8000236c:	00000913          	li	s2,0
    80002370:	0540006f          	j	800023c4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        debug_print("Free block address is null.\n");
    80002374:	00003517          	auipc	a0,0x3
    80002378:	08450513          	addi	a0,a0,132 # 800053f8 <_ZZ12printIntegermE6digits+0x340>
    8000237c:	fffff097          	auipc	ra,0xfffff
    80002380:	60c080e7          	jalr	1548(ra) # 80001988 <_Z11debug_printPKc>
        return -1;
    80002384:	fff00513          	li	a0,-1
    80002388:	1140006f          	j	8000249c <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
    8000238c:	00003517          	auipc	a0,0x3
    80002390:	08c50513          	addi	a0,a0,140 # 80005418 <_ZZ12printIntegermE6digits+0x360>
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	5f4080e7          	jalr	1524(ra) # 80001988 <_Z11debug_printPKc>
        return -2;
    8000239c:	ffe00513          	li	a0,-2
    800023a0:	0fc0006f          	j	8000249c <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        debug_print("Free block address is not in the heap.\n");
    800023a4:	00003517          	auipc	a0,0x3
    800023a8:	0ac50513          	addi	a0,a0,172 # 80005450 <_ZZ12printIntegermE6digits+0x398>
    800023ac:	fffff097          	auipc	ra,0xfffff
    800023b0:	5dc080e7          	jalr	1500(ra) # 80001988 <_Z11debug_printPKc>
        return -3;
    800023b4:	ffd00513          	li	a0,-3
    800023b8:	0e40006f          	j	8000249c <_ZN15MemoryAllocator8mem_freeEPv+0x1c0>
        prev_free_block = next_free_block;
    800023bc:	00048913          	mv	s2,s1
        next_free_block = next_free_block->next_;
    800023c0:	0004b483          	ld	s1,0(s1)
    while (next_free_block &&
    800023c4:	00048663          	beqz	s1,800023d0 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    800023c8:	fe97fae3          	bgeu	a5,s1,800023bc <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
          !(((uint64)next_free_block > (uint64)block_info) &&
    800023cc:	fef978e3          	bgeu	s2,a5,800023bc <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    debug_print("Prev free block: ");
    800023d0:	00003517          	auipc	a0,0x3
    800023d4:	0a850513          	addi	a0,a0,168 # 80005478 <_ZZ12printIntegermE6digits+0x3c0>
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	5b0080e7          	jalr	1456(ra) # 80001988 <_Z11debug_printPKc>
    debug_print((uint64)prev_free_block);
    800023e0:	00090513          	mv	a0,s2
    800023e4:	fffff097          	auipc	ra,0xfffff
    800023e8:	6ec080e7          	jalr	1772(ra) # 80001ad0 <_Z11debug_printm>
    debug_print("\n");
    800023ec:	00003517          	auipc	a0,0x3
    800023f0:	d7450513          	addi	a0,a0,-652 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	594080e7          	jalr	1428(ra) # 80001988 <_Z11debug_printPKc>
    debug_print("Block info: ");
    800023fc:	00003517          	auipc	a0,0x3
    80002400:	09450513          	addi	a0,a0,148 # 80005490 <_ZZ12printIntegermE6digits+0x3d8>
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	584080e7          	jalr	1412(ra) # 80001988 <_Z11debug_printPKc>
    debug_print((uint64)block_info);
    8000240c:	00098513          	mv	a0,s3
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	6c0080e7          	jalr	1728(ra) # 80001ad0 <_Z11debug_printm>
    debug_print("\n");
    80002418:	00003517          	auipc	a0,0x3
    8000241c:	d4850513          	addi	a0,a0,-696 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	568080e7          	jalr	1384(ra) # 80001988 <_Z11debug_printPKc>
    debug_print("Next free block: ");
    80002428:	00003517          	auipc	a0,0x3
    8000242c:	07850513          	addi	a0,a0,120 # 800054a0 <_ZZ12printIntegermE6digits+0x3e8>
    80002430:	fffff097          	auipc	ra,0xfffff
    80002434:	558080e7          	jalr	1368(ra) # 80001988 <_Z11debug_printPKc>
    debug_print((uint64)next_free_block);
    80002438:	00048513          	mv	a0,s1
    8000243c:	fffff097          	auipc	ra,0xfffff
    80002440:	694080e7          	jalr	1684(ra) # 80001ad0 <_Z11debug_printm>
    debug_print("\n");
    80002444:	00003517          	auipc	a0,0x3
    80002448:	d1c50513          	addi	a0,a0,-740 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    8000244c:	fffff097          	auipc	ra,0xfffff
    80002450:	53c080e7          	jalr	1340(ra) # 80001988 <_Z11debug_printPKc>
    if (!prev_free_block) {
    80002454:	06090663          	beqz	s2,800024c0 <_ZN15MemoryAllocator8mem_freeEPv+0x1e4>
        debug_print("Block is not the first free block.\n");
    80002458:	00003517          	auipc	a0,0x3
    8000245c:	08050513          	addi	a0,a0,128 # 800054d8 <_ZZ12printIntegermE6digits+0x420>
    80002460:	fffff097          	auipc	ra,0xfffff
    80002464:	528080e7          	jalr	1320(ra) # 80001988 <_Z11debug_printPKc>
        prev_free_block->next_ = block_info;
    80002468:	01393023          	sd	s3,0(s2)
    block_info->next_ = next_free_block;
    8000246c:	fe9a3823          	sd	s1,-16(s4)
    maybe_consolidate(block_info, next_free_block);
    80002470:	00048613          	mv	a2,s1
    80002474:	00098593          	mv	a1,s3
    80002478:	000a8513          	mv	a0,s5
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	d40080e7          	jalr	-704(ra) # 800021bc <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    maybe_consolidate(prev_free_block, block_info);
    80002484:	00098613          	mv	a2,s3
    80002488:	00090593          	mv	a1,s2
    8000248c:	000a8513          	mv	a0,s5
    80002490:	00000097          	auipc	ra,0x0
    80002494:	d2c080e7          	jalr	-724(ra) # 800021bc <_ZN15MemoryAllocator17maybe_consolidateEPNS_9BlockInfoES1_>
    return 0;
    80002498:	00000513          	li	a0,0
}
    8000249c:	03813083          	ld	ra,56(sp)
    800024a0:	03013403          	ld	s0,48(sp)
    800024a4:	02813483          	ld	s1,40(sp)
    800024a8:	02013903          	ld	s2,32(sp)
    800024ac:	01813983          	ld	s3,24(sp)
    800024b0:	01013a03          	ld	s4,16(sp)
    800024b4:	00813a83          	ld	s5,8(sp)
    800024b8:	04010113          	addi	sp,sp,64
    800024bc:	00008067          	ret
        debug_print("Block is the first free block.\n");
    800024c0:	00003517          	auipc	a0,0x3
    800024c4:	ff850513          	addi	a0,a0,-8 # 800054b8 <_ZZ12printIntegermE6digits+0x400>
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	4c0080e7          	jalr	1216(ra) # 80001988 <_Z11debug_printPKc>
        free_block_ptr_ = block_info;
    800024d0:	013ab023          	sd	s3,0(s5)
    800024d4:	f99ff06f          	j	8000246c <_ZN15MemoryAllocator8mem_freeEPv+0x190>

00000000800024d8 <start>:
    800024d8:	ff010113          	addi	sp,sp,-16
    800024dc:	00813423          	sd	s0,8(sp)
    800024e0:	01010413          	addi	s0,sp,16
    800024e4:	300027f3          	csrr	a5,mstatus
    800024e8:	ffffe737          	lui	a4,0xffffe
    800024ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff774f>
    800024f0:	00e7f7b3          	and	a5,a5,a4
    800024f4:	00001737          	lui	a4,0x1
    800024f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800024fc:	00e7e7b3          	or	a5,a5,a4
    80002500:	30079073          	csrw	mstatus,a5
    80002504:	00000797          	auipc	a5,0x0
    80002508:	16078793          	addi	a5,a5,352 # 80002664 <system_main>
    8000250c:	34179073          	csrw	mepc,a5
    80002510:	00000793          	li	a5,0
    80002514:	18079073          	csrw	satp,a5
    80002518:	000107b7          	lui	a5,0x10
    8000251c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002520:	30279073          	csrw	medeleg,a5
    80002524:	30379073          	csrw	mideleg,a5
    80002528:	104027f3          	csrr	a5,sie
    8000252c:	2227e793          	ori	a5,a5,546
    80002530:	10479073          	csrw	sie,a5
    80002534:	fff00793          	li	a5,-1
    80002538:	00a7d793          	srli	a5,a5,0xa
    8000253c:	3b079073          	csrw	pmpaddr0,a5
    80002540:	00f00793          	li	a5,15
    80002544:	3a079073          	csrw	pmpcfg0,a5
    80002548:	f14027f3          	csrr	a5,mhartid
    8000254c:	0200c737          	lui	a4,0x200c
    80002550:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002554:	0007869b          	sext.w	a3,a5
    80002558:	00269713          	slli	a4,a3,0x2
    8000255c:	000f4637          	lui	a2,0xf4
    80002560:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002564:	00d70733          	add	a4,a4,a3
    80002568:	0037979b          	slliw	a5,a5,0x3
    8000256c:	020046b7          	lui	a3,0x2004
    80002570:	00d787b3          	add	a5,a5,a3
    80002574:	00c585b3          	add	a1,a1,a2
    80002578:	00371693          	slli	a3,a4,0x3
    8000257c:	00004717          	auipc	a4,0x4
    80002580:	8d470713          	addi	a4,a4,-1836 # 80005e50 <timer_scratch>
    80002584:	00b7b023          	sd	a1,0(a5)
    80002588:	00d70733          	add	a4,a4,a3
    8000258c:	00f73c23          	sd	a5,24(a4)
    80002590:	02c73023          	sd	a2,32(a4)
    80002594:	34071073          	csrw	mscratch,a4
    80002598:	00000797          	auipc	a5,0x0
    8000259c:	6e878793          	addi	a5,a5,1768 # 80002c80 <timervec>
    800025a0:	30579073          	csrw	mtvec,a5
    800025a4:	300027f3          	csrr	a5,mstatus
    800025a8:	0087e793          	ori	a5,a5,8
    800025ac:	30079073          	csrw	mstatus,a5
    800025b0:	304027f3          	csrr	a5,mie
    800025b4:	0807e793          	ori	a5,a5,128
    800025b8:	30479073          	csrw	mie,a5
    800025bc:	f14027f3          	csrr	a5,mhartid
    800025c0:	0007879b          	sext.w	a5,a5
    800025c4:	00078213          	mv	tp,a5
    800025c8:	30200073          	mret
    800025cc:	00813403          	ld	s0,8(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret

00000000800025d8 <timerinit>:
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00813423          	sd	s0,8(sp)
    800025e0:	01010413          	addi	s0,sp,16
    800025e4:	f14027f3          	csrr	a5,mhartid
    800025e8:	0200c737          	lui	a4,0x200c
    800025ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800025f0:	0007869b          	sext.w	a3,a5
    800025f4:	00269713          	slli	a4,a3,0x2
    800025f8:	000f4637          	lui	a2,0xf4
    800025fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002600:	00d70733          	add	a4,a4,a3
    80002604:	0037979b          	slliw	a5,a5,0x3
    80002608:	020046b7          	lui	a3,0x2004
    8000260c:	00d787b3          	add	a5,a5,a3
    80002610:	00c585b3          	add	a1,a1,a2
    80002614:	00371693          	slli	a3,a4,0x3
    80002618:	00004717          	auipc	a4,0x4
    8000261c:	83870713          	addi	a4,a4,-1992 # 80005e50 <timer_scratch>
    80002620:	00b7b023          	sd	a1,0(a5)
    80002624:	00d70733          	add	a4,a4,a3
    80002628:	00f73c23          	sd	a5,24(a4)
    8000262c:	02c73023          	sd	a2,32(a4)
    80002630:	34071073          	csrw	mscratch,a4
    80002634:	00000797          	auipc	a5,0x0
    80002638:	64c78793          	addi	a5,a5,1612 # 80002c80 <timervec>
    8000263c:	30579073          	csrw	mtvec,a5
    80002640:	300027f3          	csrr	a5,mstatus
    80002644:	0087e793          	ori	a5,a5,8
    80002648:	30079073          	csrw	mstatus,a5
    8000264c:	304027f3          	csrr	a5,mie
    80002650:	0807e793          	ori	a5,a5,128
    80002654:	30479073          	csrw	mie,a5
    80002658:	00813403          	ld	s0,8(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <system_main>:
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00813823          	sd	s0,16(sp)
    8000266c:	00913423          	sd	s1,8(sp)
    80002670:	00113c23          	sd	ra,24(sp)
    80002674:	02010413          	addi	s0,sp,32
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	0c4080e7          	jalr	196(ra) # 8000273c <cpuid>
    80002680:	00003497          	auipc	s1,0x3
    80002684:	79848493          	addi	s1,s1,1944 # 80005e18 <started>
    80002688:	02050263          	beqz	a0,800026ac <system_main+0x48>
    8000268c:	0004a783          	lw	a5,0(s1)
    80002690:	0007879b          	sext.w	a5,a5
    80002694:	fe078ce3          	beqz	a5,8000268c <system_main+0x28>
    80002698:	0ff0000f          	fence
    8000269c:	00003517          	auipc	a0,0x3
    800026a0:	e9450513          	addi	a0,a0,-364 # 80005530 <_ZZ12printIntegermE6digits+0x478>
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	a78080e7          	jalr	-1416(ra) # 8000311c <panic>
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	9cc080e7          	jalr	-1588(ra) # 80003078 <consoleinit>
    800026b4:	00001097          	auipc	ra,0x1
    800026b8:	158080e7          	jalr	344(ra) # 8000380c <printfinit>
    800026bc:	00003517          	auipc	a0,0x3
    800026c0:	aa450513          	addi	a0,a0,-1372 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	ab4080e7          	jalr	-1356(ra) # 80003178 <__printf>
    800026cc:	00003517          	auipc	a0,0x3
    800026d0:	e3450513          	addi	a0,a0,-460 # 80005500 <_ZZ12printIntegermE6digits+0x448>
    800026d4:	00001097          	auipc	ra,0x1
    800026d8:	aa4080e7          	jalr	-1372(ra) # 80003178 <__printf>
    800026dc:	00003517          	auipc	a0,0x3
    800026e0:	a8450513          	addi	a0,a0,-1404 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    800026e4:	00001097          	auipc	ra,0x1
    800026e8:	a94080e7          	jalr	-1388(ra) # 80003178 <__printf>
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	4ac080e7          	jalr	1196(ra) # 80003b98 <kinit>
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	148080e7          	jalr	328(ra) # 8000283c <trapinit>
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	16c080e7          	jalr	364(ra) # 80002868 <trapinithart>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	5bc080e7          	jalr	1468(ra) # 80002cc0 <plicinit>
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	5dc080e7          	jalr	1500(ra) # 80002ce8 <plicinithart>
    80002714:	00000097          	auipc	ra,0x0
    80002718:	078080e7          	jalr	120(ra) # 8000278c <userinit>
    8000271c:	0ff0000f          	fence
    80002720:	00100793          	li	a5,1
    80002724:	00003517          	auipc	a0,0x3
    80002728:	df450513          	addi	a0,a0,-524 # 80005518 <_ZZ12printIntegermE6digits+0x460>
    8000272c:	00f4a023          	sw	a5,0(s1)
    80002730:	00001097          	auipc	ra,0x1
    80002734:	a48080e7          	jalr	-1464(ra) # 80003178 <__printf>
    80002738:	0000006f          	j	80002738 <system_main+0xd4>

000000008000273c <cpuid>:
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    80002748:	00020513          	mv	a0,tp
    8000274c:	00813403          	ld	s0,8(sp)
    80002750:	0005051b          	sext.w	a0,a0
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <mycpu>:
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00813423          	sd	s0,8(sp)
    80002764:	01010413          	addi	s0,sp,16
    80002768:	00020793          	mv	a5,tp
    8000276c:	00813403          	ld	s0,8(sp)
    80002770:	0007879b          	sext.w	a5,a5
    80002774:	00779793          	slli	a5,a5,0x7
    80002778:	00004517          	auipc	a0,0x4
    8000277c:	70850513          	addi	a0,a0,1800 # 80006e80 <cpus>
    80002780:	00f50533          	add	a0,a0,a5
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <userinit>:
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00813423          	sd	s0,8(sp)
    80002794:	01010413          	addi	s0,sp,16
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	fffff317          	auipc	t1,0xfffff
    800027a4:	35830067          	jr	856(t1) # 80001af8 <main>

00000000800027a8 <either_copyout>:
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00813023          	sd	s0,0(sp)
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	02051663          	bnez	a0,800027e4 <either_copyout+0x3c>
    800027bc:	00058513          	mv	a0,a1
    800027c0:	00060593          	mv	a1,a2
    800027c4:	0006861b          	sext.w	a2,a3
    800027c8:	00002097          	auipc	ra,0x2
    800027cc:	c5c080e7          	jalr	-932(ra) # 80004424 <__memmove>
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	00000513          	li	a0,0
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret
    800027e4:	00003517          	auipc	a0,0x3
    800027e8:	d7450513          	addi	a0,a0,-652 # 80005558 <_ZZ12printIntegermE6digits+0x4a0>
    800027ec:	00001097          	auipc	ra,0x1
    800027f0:	930080e7          	jalr	-1744(ra) # 8000311c <panic>

00000000800027f4 <either_copyin>:
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	00113423          	sd	ra,8(sp)
    80002800:	01010413          	addi	s0,sp,16
    80002804:	02059463          	bnez	a1,8000282c <either_copyin+0x38>
    80002808:	00060593          	mv	a1,a2
    8000280c:	0006861b          	sext.w	a2,a3
    80002810:	00002097          	auipc	ra,0x2
    80002814:	c14080e7          	jalr	-1004(ra) # 80004424 <__memmove>
    80002818:	00813083          	ld	ra,8(sp)
    8000281c:	00013403          	ld	s0,0(sp)
    80002820:	00000513          	li	a0,0
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret
    8000282c:	00003517          	auipc	a0,0x3
    80002830:	d5450513          	addi	a0,a0,-684 # 80005580 <_ZZ12printIntegermE6digits+0x4c8>
    80002834:	00001097          	auipc	ra,0x1
    80002838:	8e8080e7          	jalr	-1816(ra) # 8000311c <panic>

000000008000283c <trapinit>:
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00813403          	ld	s0,8(sp)
    8000284c:	00003597          	auipc	a1,0x3
    80002850:	d5c58593          	addi	a1,a1,-676 # 800055a8 <_ZZ12printIntegermE6digits+0x4f0>
    80002854:	00004517          	auipc	a0,0x4
    80002858:	6ac50513          	addi	a0,a0,1708 # 80006f00 <tickslock>
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00001317          	auipc	t1,0x1
    80002864:	5c830067          	jr	1480(t1) # 80003e28 <initlock>

0000000080002868 <trapinithart>:
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00813423          	sd	s0,8(sp)
    80002870:	01010413          	addi	s0,sp,16
    80002874:	00000797          	auipc	a5,0x0
    80002878:	2fc78793          	addi	a5,a5,764 # 80002b70 <kernelvec>
    8000287c:	10579073          	csrw	stvec,a5
    80002880:	00813403          	ld	s0,8(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <usertrap>:
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00813423          	sd	s0,8(sp)
    80002894:	01010413          	addi	s0,sp,16
    80002898:	00813403          	ld	s0,8(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <usertrapret>:
    800028a4:	ff010113          	addi	sp,sp,-16
    800028a8:	00813423          	sd	s0,8(sp)
    800028ac:	01010413          	addi	s0,sp,16
    800028b0:	00813403          	ld	s0,8(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <kerneltrap>:
    800028bc:	fe010113          	addi	sp,sp,-32
    800028c0:	00813823          	sd	s0,16(sp)
    800028c4:	00113c23          	sd	ra,24(sp)
    800028c8:	00913423          	sd	s1,8(sp)
    800028cc:	02010413          	addi	s0,sp,32
    800028d0:	142025f3          	csrr	a1,scause
    800028d4:	100027f3          	csrr	a5,sstatus
    800028d8:	0027f793          	andi	a5,a5,2
    800028dc:	10079c63          	bnez	a5,800029f4 <kerneltrap+0x138>
    800028e0:	142027f3          	csrr	a5,scause
    800028e4:	0207ce63          	bltz	a5,80002920 <kerneltrap+0x64>
    800028e8:	00003517          	auipc	a0,0x3
    800028ec:	d0850513          	addi	a0,a0,-760 # 800055f0 <_ZZ12printIntegermE6digits+0x538>
    800028f0:	00001097          	auipc	ra,0x1
    800028f4:	888080e7          	jalr	-1912(ra) # 80003178 <__printf>
    800028f8:	141025f3          	csrr	a1,sepc
    800028fc:	14302673          	csrr	a2,stval
    80002900:	00003517          	auipc	a0,0x3
    80002904:	d0050513          	addi	a0,a0,-768 # 80005600 <_ZZ12printIntegermE6digits+0x548>
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	870080e7          	jalr	-1936(ra) # 80003178 <__printf>
    80002910:	00003517          	auipc	a0,0x3
    80002914:	d0850513          	addi	a0,a0,-760 # 80005618 <_ZZ12printIntegermE6digits+0x560>
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	804080e7          	jalr	-2044(ra) # 8000311c <panic>
    80002920:	0ff7f713          	andi	a4,a5,255
    80002924:	00900693          	li	a3,9
    80002928:	04d70063          	beq	a4,a3,80002968 <kerneltrap+0xac>
    8000292c:	fff00713          	li	a4,-1
    80002930:	03f71713          	slli	a4,a4,0x3f
    80002934:	00170713          	addi	a4,a4,1
    80002938:	fae798e3          	bne	a5,a4,800028e8 <kerneltrap+0x2c>
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	e00080e7          	jalr	-512(ra) # 8000273c <cpuid>
    80002944:	06050663          	beqz	a0,800029b0 <kerneltrap+0xf4>
    80002948:	144027f3          	csrr	a5,sip
    8000294c:	ffd7f793          	andi	a5,a5,-3
    80002950:	14479073          	csrw	sip,a5
    80002954:	01813083          	ld	ra,24(sp)
    80002958:	01013403          	ld	s0,16(sp)
    8000295c:	00813483          	ld	s1,8(sp)
    80002960:	02010113          	addi	sp,sp,32
    80002964:	00008067          	ret
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	3cc080e7          	jalr	972(ra) # 80002d34 <plic_claim>
    80002970:	00a00793          	li	a5,10
    80002974:	00050493          	mv	s1,a0
    80002978:	06f50863          	beq	a0,a5,800029e8 <kerneltrap+0x12c>
    8000297c:	fc050ce3          	beqz	a0,80002954 <kerneltrap+0x98>
    80002980:	00050593          	mv	a1,a0
    80002984:	00003517          	auipc	a0,0x3
    80002988:	c4c50513          	addi	a0,a0,-948 # 800055d0 <_ZZ12printIntegermE6digits+0x518>
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	7ec080e7          	jalr	2028(ra) # 80003178 <__printf>
    80002994:	01013403          	ld	s0,16(sp)
    80002998:	01813083          	ld	ra,24(sp)
    8000299c:	00048513          	mv	a0,s1
    800029a0:	00813483          	ld	s1,8(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00000317          	auipc	t1,0x0
    800029ac:	3c430067          	jr	964(t1) # 80002d6c <plic_complete>
    800029b0:	00004517          	auipc	a0,0x4
    800029b4:	55050513          	addi	a0,a0,1360 # 80006f00 <tickslock>
    800029b8:	00001097          	auipc	ra,0x1
    800029bc:	494080e7          	jalr	1172(ra) # 80003e4c <acquire>
    800029c0:	00003717          	auipc	a4,0x3
    800029c4:	45c70713          	addi	a4,a4,1116 # 80005e1c <ticks>
    800029c8:	00072783          	lw	a5,0(a4)
    800029cc:	00004517          	auipc	a0,0x4
    800029d0:	53450513          	addi	a0,a0,1332 # 80006f00 <tickslock>
    800029d4:	0017879b          	addiw	a5,a5,1
    800029d8:	00f72023          	sw	a5,0(a4)
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	53c080e7          	jalr	1340(ra) # 80003f18 <release>
    800029e4:	f65ff06f          	j	80002948 <kerneltrap+0x8c>
    800029e8:	00001097          	auipc	ra,0x1
    800029ec:	098080e7          	jalr	152(ra) # 80003a80 <uartintr>
    800029f0:	fa5ff06f          	j	80002994 <kerneltrap+0xd8>
    800029f4:	00003517          	auipc	a0,0x3
    800029f8:	bbc50513          	addi	a0,a0,-1092 # 800055b0 <_ZZ12printIntegermE6digits+0x4f8>
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	720080e7          	jalr	1824(ra) # 8000311c <panic>

0000000080002a04 <clockintr>:
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	00113c23          	sd	ra,24(sp)
    80002a14:	02010413          	addi	s0,sp,32
    80002a18:	00004497          	auipc	s1,0x4
    80002a1c:	4e848493          	addi	s1,s1,1256 # 80006f00 <tickslock>
    80002a20:	00048513          	mv	a0,s1
    80002a24:	00001097          	auipc	ra,0x1
    80002a28:	428080e7          	jalr	1064(ra) # 80003e4c <acquire>
    80002a2c:	00003717          	auipc	a4,0x3
    80002a30:	3f070713          	addi	a4,a4,1008 # 80005e1c <ticks>
    80002a34:	00072783          	lw	a5,0(a4)
    80002a38:	01013403          	ld	s0,16(sp)
    80002a3c:	01813083          	ld	ra,24(sp)
    80002a40:	00048513          	mv	a0,s1
    80002a44:	0017879b          	addiw	a5,a5,1
    80002a48:	00813483          	ld	s1,8(sp)
    80002a4c:	00f72023          	sw	a5,0(a4)
    80002a50:	02010113          	addi	sp,sp,32
    80002a54:	00001317          	auipc	t1,0x1
    80002a58:	4c430067          	jr	1220(t1) # 80003f18 <release>

0000000080002a5c <devintr>:
    80002a5c:	142027f3          	csrr	a5,scause
    80002a60:	00000513          	li	a0,0
    80002a64:	0007c463          	bltz	a5,80002a6c <devintr+0x10>
    80002a68:	00008067          	ret
    80002a6c:	fe010113          	addi	sp,sp,-32
    80002a70:	00813823          	sd	s0,16(sp)
    80002a74:	00113c23          	sd	ra,24(sp)
    80002a78:	00913423          	sd	s1,8(sp)
    80002a7c:	02010413          	addi	s0,sp,32
    80002a80:	0ff7f713          	andi	a4,a5,255
    80002a84:	00900693          	li	a3,9
    80002a88:	04d70c63          	beq	a4,a3,80002ae0 <devintr+0x84>
    80002a8c:	fff00713          	li	a4,-1
    80002a90:	03f71713          	slli	a4,a4,0x3f
    80002a94:	00170713          	addi	a4,a4,1
    80002a98:	00e78c63          	beq	a5,a4,80002ab0 <devintr+0x54>
    80002a9c:	01813083          	ld	ra,24(sp)
    80002aa0:	01013403          	ld	s0,16(sp)
    80002aa4:	00813483          	ld	s1,8(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	c8c080e7          	jalr	-884(ra) # 8000273c <cpuid>
    80002ab8:	06050663          	beqz	a0,80002b24 <devintr+0xc8>
    80002abc:	144027f3          	csrr	a5,sip
    80002ac0:	ffd7f793          	andi	a5,a5,-3
    80002ac4:	14479073          	csrw	sip,a5
    80002ac8:	01813083          	ld	ra,24(sp)
    80002acc:	01013403          	ld	s0,16(sp)
    80002ad0:	00813483          	ld	s1,8(sp)
    80002ad4:	00200513          	li	a0,2
    80002ad8:	02010113          	addi	sp,sp,32
    80002adc:	00008067          	ret
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	254080e7          	jalr	596(ra) # 80002d34 <plic_claim>
    80002ae8:	00a00793          	li	a5,10
    80002aec:	00050493          	mv	s1,a0
    80002af0:	06f50663          	beq	a0,a5,80002b5c <devintr+0x100>
    80002af4:	00100513          	li	a0,1
    80002af8:	fa0482e3          	beqz	s1,80002a9c <devintr+0x40>
    80002afc:	00048593          	mv	a1,s1
    80002b00:	00003517          	auipc	a0,0x3
    80002b04:	ad050513          	addi	a0,a0,-1328 # 800055d0 <_ZZ12printIntegermE6digits+0x518>
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	670080e7          	jalr	1648(ra) # 80003178 <__printf>
    80002b10:	00048513          	mv	a0,s1
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	258080e7          	jalr	600(ra) # 80002d6c <plic_complete>
    80002b1c:	00100513          	li	a0,1
    80002b20:	f7dff06f          	j	80002a9c <devintr+0x40>
    80002b24:	00004517          	auipc	a0,0x4
    80002b28:	3dc50513          	addi	a0,a0,988 # 80006f00 <tickslock>
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	320080e7          	jalr	800(ra) # 80003e4c <acquire>
    80002b34:	00003717          	auipc	a4,0x3
    80002b38:	2e870713          	addi	a4,a4,744 # 80005e1c <ticks>
    80002b3c:	00072783          	lw	a5,0(a4)
    80002b40:	00004517          	auipc	a0,0x4
    80002b44:	3c050513          	addi	a0,a0,960 # 80006f00 <tickslock>
    80002b48:	0017879b          	addiw	a5,a5,1
    80002b4c:	00f72023          	sw	a5,0(a4)
    80002b50:	00001097          	auipc	ra,0x1
    80002b54:	3c8080e7          	jalr	968(ra) # 80003f18 <release>
    80002b58:	f65ff06f          	j	80002abc <devintr+0x60>
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	f24080e7          	jalr	-220(ra) # 80003a80 <uartintr>
    80002b64:	fadff06f          	j	80002b10 <devintr+0xb4>
	...

0000000080002b70 <kernelvec>:
    80002b70:	f0010113          	addi	sp,sp,-256
    80002b74:	00113023          	sd	ra,0(sp)
    80002b78:	00213423          	sd	sp,8(sp)
    80002b7c:	00313823          	sd	gp,16(sp)
    80002b80:	00413c23          	sd	tp,24(sp)
    80002b84:	02513023          	sd	t0,32(sp)
    80002b88:	02613423          	sd	t1,40(sp)
    80002b8c:	02713823          	sd	t2,48(sp)
    80002b90:	02813c23          	sd	s0,56(sp)
    80002b94:	04913023          	sd	s1,64(sp)
    80002b98:	04a13423          	sd	a0,72(sp)
    80002b9c:	04b13823          	sd	a1,80(sp)
    80002ba0:	04c13c23          	sd	a2,88(sp)
    80002ba4:	06d13023          	sd	a3,96(sp)
    80002ba8:	06e13423          	sd	a4,104(sp)
    80002bac:	06f13823          	sd	a5,112(sp)
    80002bb0:	07013c23          	sd	a6,120(sp)
    80002bb4:	09113023          	sd	a7,128(sp)
    80002bb8:	09213423          	sd	s2,136(sp)
    80002bbc:	09313823          	sd	s3,144(sp)
    80002bc0:	09413c23          	sd	s4,152(sp)
    80002bc4:	0b513023          	sd	s5,160(sp)
    80002bc8:	0b613423          	sd	s6,168(sp)
    80002bcc:	0b713823          	sd	s7,176(sp)
    80002bd0:	0b813c23          	sd	s8,184(sp)
    80002bd4:	0d913023          	sd	s9,192(sp)
    80002bd8:	0da13423          	sd	s10,200(sp)
    80002bdc:	0db13823          	sd	s11,208(sp)
    80002be0:	0dc13c23          	sd	t3,216(sp)
    80002be4:	0fd13023          	sd	t4,224(sp)
    80002be8:	0fe13423          	sd	t5,232(sp)
    80002bec:	0ff13823          	sd	t6,240(sp)
    80002bf0:	ccdff0ef          	jal	ra,800028bc <kerneltrap>
    80002bf4:	00013083          	ld	ra,0(sp)
    80002bf8:	00813103          	ld	sp,8(sp)
    80002bfc:	01013183          	ld	gp,16(sp)
    80002c00:	02013283          	ld	t0,32(sp)
    80002c04:	02813303          	ld	t1,40(sp)
    80002c08:	03013383          	ld	t2,48(sp)
    80002c0c:	03813403          	ld	s0,56(sp)
    80002c10:	04013483          	ld	s1,64(sp)
    80002c14:	04813503          	ld	a0,72(sp)
    80002c18:	05013583          	ld	a1,80(sp)
    80002c1c:	05813603          	ld	a2,88(sp)
    80002c20:	06013683          	ld	a3,96(sp)
    80002c24:	06813703          	ld	a4,104(sp)
    80002c28:	07013783          	ld	a5,112(sp)
    80002c2c:	07813803          	ld	a6,120(sp)
    80002c30:	08013883          	ld	a7,128(sp)
    80002c34:	08813903          	ld	s2,136(sp)
    80002c38:	09013983          	ld	s3,144(sp)
    80002c3c:	09813a03          	ld	s4,152(sp)
    80002c40:	0a013a83          	ld	s5,160(sp)
    80002c44:	0a813b03          	ld	s6,168(sp)
    80002c48:	0b013b83          	ld	s7,176(sp)
    80002c4c:	0b813c03          	ld	s8,184(sp)
    80002c50:	0c013c83          	ld	s9,192(sp)
    80002c54:	0c813d03          	ld	s10,200(sp)
    80002c58:	0d013d83          	ld	s11,208(sp)
    80002c5c:	0d813e03          	ld	t3,216(sp)
    80002c60:	0e013e83          	ld	t4,224(sp)
    80002c64:	0e813f03          	ld	t5,232(sp)
    80002c68:	0f013f83          	ld	t6,240(sp)
    80002c6c:	10010113          	addi	sp,sp,256
    80002c70:	10200073          	sret
    80002c74:	00000013          	nop
    80002c78:	00000013          	nop
    80002c7c:	00000013          	nop

0000000080002c80 <timervec>:
    80002c80:	34051573          	csrrw	a0,mscratch,a0
    80002c84:	00b53023          	sd	a1,0(a0)
    80002c88:	00c53423          	sd	a2,8(a0)
    80002c8c:	00d53823          	sd	a3,16(a0)
    80002c90:	01853583          	ld	a1,24(a0)
    80002c94:	02053603          	ld	a2,32(a0)
    80002c98:	0005b683          	ld	a3,0(a1)
    80002c9c:	00c686b3          	add	a3,a3,a2
    80002ca0:	00d5b023          	sd	a3,0(a1)
    80002ca4:	00200593          	li	a1,2
    80002ca8:	14459073          	csrw	sip,a1
    80002cac:	01053683          	ld	a3,16(a0)
    80002cb0:	00853603          	ld	a2,8(a0)
    80002cb4:	00053583          	ld	a1,0(a0)
    80002cb8:	34051573          	csrrw	a0,mscratch,a0
    80002cbc:	30200073          	mret

0000000080002cc0 <plicinit>:
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00813423          	sd	s0,8(sp)
    80002cc8:	01010413          	addi	s0,sp,16
    80002ccc:	00813403          	ld	s0,8(sp)
    80002cd0:	0c0007b7          	lui	a5,0xc000
    80002cd4:	00100713          	li	a4,1
    80002cd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002cdc:	00e7a223          	sw	a4,4(a5)
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <plicinithart>:
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813023          	sd	s0,0(sp)
    80002cf0:	00113423          	sd	ra,8(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	a44080e7          	jalr	-1468(ra) # 8000273c <cpuid>
    80002d00:	0085171b          	slliw	a4,a0,0x8
    80002d04:	0c0027b7          	lui	a5,0xc002
    80002d08:	00e787b3          	add	a5,a5,a4
    80002d0c:	40200713          	li	a4,1026
    80002d10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002d14:	00813083          	ld	ra,8(sp)
    80002d18:	00013403          	ld	s0,0(sp)
    80002d1c:	00d5151b          	slliw	a0,a0,0xd
    80002d20:	0c2017b7          	lui	a5,0xc201
    80002d24:	00a78533          	add	a0,a5,a0
    80002d28:	00052023          	sw	zero,0(a0)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret

0000000080002d34 <plic_claim>:
    80002d34:	ff010113          	addi	sp,sp,-16
    80002d38:	00813023          	sd	s0,0(sp)
    80002d3c:	00113423          	sd	ra,8(sp)
    80002d40:	01010413          	addi	s0,sp,16
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	9f8080e7          	jalr	-1544(ra) # 8000273c <cpuid>
    80002d4c:	00813083          	ld	ra,8(sp)
    80002d50:	00013403          	ld	s0,0(sp)
    80002d54:	00d5151b          	slliw	a0,a0,0xd
    80002d58:	0c2017b7          	lui	a5,0xc201
    80002d5c:	00a78533          	add	a0,a5,a0
    80002d60:	00452503          	lw	a0,4(a0)
    80002d64:	01010113          	addi	sp,sp,16
    80002d68:	00008067          	ret

0000000080002d6c <plic_complete>:
    80002d6c:	fe010113          	addi	sp,sp,-32
    80002d70:	00813823          	sd	s0,16(sp)
    80002d74:	00913423          	sd	s1,8(sp)
    80002d78:	00113c23          	sd	ra,24(sp)
    80002d7c:	02010413          	addi	s0,sp,32
    80002d80:	00050493          	mv	s1,a0
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	9b8080e7          	jalr	-1608(ra) # 8000273c <cpuid>
    80002d8c:	01813083          	ld	ra,24(sp)
    80002d90:	01013403          	ld	s0,16(sp)
    80002d94:	00d5179b          	slliw	a5,a0,0xd
    80002d98:	0c201737          	lui	a4,0xc201
    80002d9c:	00f707b3          	add	a5,a4,a5
    80002da0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002da4:	00813483          	ld	s1,8(sp)
    80002da8:	02010113          	addi	sp,sp,32
    80002dac:	00008067          	ret

0000000080002db0 <consolewrite>:
    80002db0:	fb010113          	addi	sp,sp,-80
    80002db4:	04813023          	sd	s0,64(sp)
    80002db8:	04113423          	sd	ra,72(sp)
    80002dbc:	02913c23          	sd	s1,56(sp)
    80002dc0:	03213823          	sd	s2,48(sp)
    80002dc4:	03313423          	sd	s3,40(sp)
    80002dc8:	03413023          	sd	s4,32(sp)
    80002dcc:	01513c23          	sd	s5,24(sp)
    80002dd0:	05010413          	addi	s0,sp,80
    80002dd4:	06c05c63          	blez	a2,80002e4c <consolewrite+0x9c>
    80002dd8:	00060993          	mv	s3,a2
    80002ddc:	00050a13          	mv	s4,a0
    80002de0:	00058493          	mv	s1,a1
    80002de4:	00000913          	li	s2,0
    80002de8:	fff00a93          	li	s5,-1
    80002dec:	01c0006f          	j	80002e08 <consolewrite+0x58>
    80002df0:	fbf44503          	lbu	a0,-65(s0)
    80002df4:	0019091b          	addiw	s2,s2,1
    80002df8:	00148493          	addi	s1,s1,1
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	a9c080e7          	jalr	-1380(ra) # 80003898 <uartputc>
    80002e04:	03298063          	beq	s3,s2,80002e24 <consolewrite+0x74>
    80002e08:	00048613          	mv	a2,s1
    80002e0c:	00100693          	li	a3,1
    80002e10:	000a0593          	mv	a1,s4
    80002e14:	fbf40513          	addi	a0,s0,-65
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	9dc080e7          	jalr	-1572(ra) # 800027f4 <either_copyin>
    80002e20:	fd5518e3          	bne	a0,s5,80002df0 <consolewrite+0x40>
    80002e24:	04813083          	ld	ra,72(sp)
    80002e28:	04013403          	ld	s0,64(sp)
    80002e2c:	03813483          	ld	s1,56(sp)
    80002e30:	02813983          	ld	s3,40(sp)
    80002e34:	02013a03          	ld	s4,32(sp)
    80002e38:	01813a83          	ld	s5,24(sp)
    80002e3c:	00090513          	mv	a0,s2
    80002e40:	03013903          	ld	s2,48(sp)
    80002e44:	05010113          	addi	sp,sp,80
    80002e48:	00008067          	ret
    80002e4c:	00000913          	li	s2,0
    80002e50:	fd5ff06f          	j	80002e24 <consolewrite+0x74>

0000000080002e54 <consoleread>:
    80002e54:	f9010113          	addi	sp,sp,-112
    80002e58:	06813023          	sd	s0,96(sp)
    80002e5c:	04913c23          	sd	s1,88(sp)
    80002e60:	05213823          	sd	s2,80(sp)
    80002e64:	05313423          	sd	s3,72(sp)
    80002e68:	05413023          	sd	s4,64(sp)
    80002e6c:	03513c23          	sd	s5,56(sp)
    80002e70:	03613823          	sd	s6,48(sp)
    80002e74:	03713423          	sd	s7,40(sp)
    80002e78:	03813023          	sd	s8,32(sp)
    80002e7c:	06113423          	sd	ra,104(sp)
    80002e80:	01913c23          	sd	s9,24(sp)
    80002e84:	07010413          	addi	s0,sp,112
    80002e88:	00060b93          	mv	s7,a2
    80002e8c:	00050913          	mv	s2,a0
    80002e90:	00058c13          	mv	s8,a1
    80002e94:	00060b1b          	sext.w	s6,a2
    80002e98:	00004497          	auipc	s1,0x4
    80002e9c:	09048493          	addi	s1,s1,144 # 80006f28 <cons>
    80002ea0:	00400993          	li	s3,4
    80002ea4:	fff00a13          	li	s4,-1
    80002ea8:	00a00a93          	li	s5,10
    80002eac:	05705e63          	blez	s7,80002f08 <consoleread+0xb4>
    80002eb0:	09c4a703          	lw	a4,156(s1)
    80002eb4:	0984a783          	lw	a5,152(s1)
    80002eb8:	0007071b          	sext.w	a4,a4
    80002ebc:	08e78463          	beq	a5,a4,80002f44 <consoleread+0xf0>
    80002ec0:	07f7f713          	andi	a4,a5,127
    80002ec4:	00e48733          	add	a4,s1,a4
    80002ec8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002ecc:	0017869b          	addiw	a3,a5,1
    80002ed0:	08d4ac23          	sw	a3,152(s1)
    80002ed4:	00070c9b          	sext.w	s9,a4
    80002ed8:	0b370663          	beq	a4,s3,80002f84 <consoleread+0x130>
    80002edc:	00100693          	li	a3,1
    80002ee0:	f9f40613          	addi	a2,s0,-97
    80002ee4:	000c0593          	mv	a1,s8
    80002ee8:	00090513          	mv	a0,s2
    80002eec:	f8e40fa3          	sb	a4,-97(s0)
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	8b8080e7          	jalr	-1864(ra) # 800027a8 <either_copyout>
    80002ef8:	01450863          	beq	a0,s4,80002f08 <consoleread+0xb4>
    80002efc:	001c0c13          	addi	s8,s8,1
    80002f00:	fffb8b9b          	addiw	s7,s7,-1
    80002f04:	fb5c94e3          	bne	s9,s5,80002eac <consoleread+0x58>
    80002f08:	000b851b          	sext.w	a0,s7
    80002f0c:	06813083          	ld	ra,104(sp)
    80002f10:	06013403          	ld	s0,96(sp)
    80002f14:	05813483          	ld	s1,88(sp)
    80002f18:	05013903          	ld	s2,80(sp)
    80002f1c:	04813983          	ld	s3,72(sp)
    80002f20:	04013a03          	ld	s4,64(sp)
    80002f24:	03813a83          	ld	s5,56(sp)
    80002f28:	02813b83          	ld	s7,40(sp)
    80002f2c:	02013c03          	ld	s8,32(sp)
    80002f30:	01813c83          	ld	s9,24(sp)
    80002f34:	40ab053b          	subw	a0,s6,a0
    80002f38:	03013b03          	ld	s6,48(sp)
    80002f3c:	07010113          	addi	sp,sp,112
    80002f40:	00008067          	ret
    80002f44:	00001097          	auipc	ra,0x1
    80002f48:	1d8080e7          	jalr	472(ra) # 8000411c <push_on>
    80002f4c:	0984a703          	lw	a4,152(s1)
    80002f50:	09c4a783          	lw	a5,156(s1)
    80002f54:	0007879b          	sext.w	a5,a5
    80002f58:	fef70ce3          	beq	a4,a5,80002f50 <consoleread+0xfc>
    80002f5c:	00001097          	auipc	ra,0x1
    80002f60:	234080e7          	jalr	564(ra) # 80004190 <pop_on>
    80002f64:	0984a783          	lw	a5,152(s1)
    80002f68:	07f7f713          	andi	a4,a5,127
    80002f6c:	00e48733          	add	a4,s1,a4
    80002f70:	01874703          	lbu	a4,24(a4)
    80002f74:	0017869b          	addiw	a3,a5,1
    80002f78:	08d4ac23          	sw	a3,152(s1)
    80002f7c:	00070c9b          	sext.w	s9,a4
    80002f80:	f5371ee3          	bne	a4,s3,80002edc <consoleread+0x88>
    80002f84:	000b851b          	sext.w	a0,s7
    80002f88:	f96bf2e3          	bgeu	s7,s6,80002f0c <consoleread+0xb8>
    80002f8c:	08f4ac23          	sw	a5,152(s1)
    80002f90:	f7dff06f          	j	80002f0c <consoleread+0xb8>

0000000080002f94 <consputc>:
    80002f94:	10000793          	li	a5,256
    80002f98:	00f50663          	beq	a0,a5,80002fa4 <consputc+0x10>
    80002f9c:	00001317          	auipc	t1,0x1
    80002fa0:	9f430067          	jr	-1548(t1) # 80003990 <uartputc_sync>
    80002fa4:	ff010113          	addi	sp,sp,-16
    80002fa8:	00113423          	sd	ra,8(sp)
    80002fac:	00813023          	sd	s0,0(sp)
    80002fb0:	01010413          	addi	s0,sp,16
    80002fb4:	00800513          	li	a0,8
    80002fb8:	00001097          	auipc	ra,0x1
    80002fbc:	9d8080e7          	jalr	-1576(ra) # 80003990 <uartputc_sync>
    80002fc0:	02000513          	li	a0,32
    80002fc4:	00001097          	auipc	ra,0x1
    80002fc8:	9cc080e7          	jalr	-1588(ra) # 80003990 <uartputc_sync>
    80002fcc:	00013403          	ld	s0,0(sp)
    80002fd0:	00813083          	ld	ra,8(sp)
    80002fd4:	00800513          	li	a0,8
    80002fd8:	01010113          	addi	sp,sp,16
    80002fdc:	00001317          	auipc	t1,0x1
    80002fe0:	9b430067          	jr	-1612(t1) # 80003990 <uartputc_sync>

0000000080002fe4 <consoleintr>:
    80002fe4:	fe010113          	addi	sp,sp,-32
    80002fe8:	00813823          	sd	s0,16(sp)
    80002fec:	00913423          	sd	s1,8(sp)
    80002ff0:	01213023          	sd	s2,0(sp)
    80002ff4:	00113c23          	sd	ra,24(sp)
    80002ff8:	02010413          	addi	s0,sp,32
    80002ffc:	00004917          	auipc	s2,0x4
    80003000:	f2c90913          	addi	s2,s2,-212 # 80006f28 <cons>
    80003004:	00050493          	mv	s1,a0
    80003008:	00090513          	mv	a0,s2
    8000300c:	00001097          	auipc	ra,0x1
    80003010:	e40080e7          	jalr	-448(ra) # 80003e4c <acquire>
    80003014:	02048c63          	beqz	s1,8000304c <consoleintr+0x68>
    80003018:	0a092783          	lw	a5,160(s2)
    8000301c:	09892703          	lw	a4,152(s2)
    80003020:	07f00693          	li	a3,127
    80003024:	40e7873b          	subw	a4,a5,a4
    80003028:	02e6e263          	bltu	a3,a4,8000304c <consoleintr+0x68>
    8000302c:	00d00713          	li	a4,13
    80003030:	04e48063          	beq	s1,a4,80003070 <consoleintr+0x8c>
    80003034:	07f7f713          	andi	a4,a5,127
    80003038:	00e90733          	add	a4,s2,a4
    8000303c:	0017879b          	addiw	a5,a5,1
    80003040:	0af92023          	sw	a5,160(s2)
    80003044:	00970c23          	sb	s1,24(a4)
    80003048:	08f92e23          	sw	a5,156(s2)
    8000304c:	01013403          	ld	s0,16(sp)
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	00813483          	ld	s1,8(sp)
    80003058:	00013903          	ld	s2,0(sp)
    8000305c:	00004517          	auipc	a0,0x4
    80003060:	ecc50513          	addi	a0,a0,-308 # 80006f28 <cons>
    80003064:	02010113          	addi	sp,sp,32
    80003068:	00001317          	auipc	t1,0x1
    8000306c:	eb030067          	jr	-336(t1) # 80003f18 <release>
    80003070:	00a00493          	li	s1,10
    80003074:	fc1ff06f          	j	80003034 <consoleintr+0x50>

0000000080003078 <consoleinit>:
    80003078:	fe010113          	addi	sp,sp,-32
    8000307c:	00113c23          	sd	ra,24(sp)
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	02010413          	addi	s0,sp,32
    8000308c:	00004497          	auipc	s1,0x4
    80003090:	e9c48493          	addi	s1,s1,-356 # 80006f28 <cons>
    80003094:	00048513          	mv	a0,s1
    80003098:	00002597          	auipc	a1,0x2
    8000309c:	59058593          	addi	a1,a1,1424 # 80005628 <_ZZ12printIntegermE6digits+0x570>
    800030a0:	00001097          	auipc	ra,0x1
    800030a4:	d88080e7          	jalr	-632(ra) # 80003e28 <initlock>
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	7ac080e7          	jalr	1964(ra) # 80003854 <uartinit>
    800030b0:	01813083          	ld	ra,24(sp)
    800030b4:	01013403          	ld	s0,16(sp)
    800030b8:	00000797          	auipc	a5,0x0
    800030bc:	d9c78793          	addi	a5,a5,-612 # 80002e54 <consoleread>
    800030c0:	0af4bc23          	sd	a5,184(s1)
    800030c4:	00000797          	auipc	a5,0x0
    800030c8:	cec78793          	addi	a5,a5,-788 # 80002db0 <consolewrite>
    800030cc:	0cf4b023          	sd	a5,192(s1)
    800030d0:	00813483          	ld	s1,8(sp)
    800030d4:	02010113          	addi	sp,sp,32
    800030d8:	00008067          	ret

00000000800030dc <console_read>:
    800030dc:	ff010113          	addi	sp,sp,-16
    800030e0:	00813423          	sd	s0,8(sp)
    800030e4:	01010413          	addi	s0,sp,16
    800030e8:	00813403          	ld	s0,8(sp)
    800030ec:	00004317          	auipc	t1,0x4
    800030f0:	ef433303          	ld	t1,-268(t1) # 80006fe0 <devsw+0x10>
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00030067          	jr	t1

00000000800030fc <console_write>:
    800030fc:	ff010113          	addi	sp,sp,-16
    80003100:	00813423          	sd	s0,8(sp)
    80003104:	01010413          	addi	s0,sp,16
    80003108:	00813403          	ld	s0,8(sp)
    8000310c:	00004317          	auipc	t1,0x4
    80003110:	edc33303          	ld	t1,-292(t1) # 80006fe8 <devsw+0x18>
    80003114:	01010113          	addi	sp,sp,16
    80003118:	00030067          	jr	t1

000000008000311c <panic>:
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	02010413          	addi	s0,sp,32
    80003130:	00050493          	mv	s1,a0
    80003134:	00002517          	auipc	a0,0x2
    80003138:	4fc50513          	addi	a0,a0,1276 # 80005630 <_ZZ12printIntegermE6digits+0x578>
    8000313c:	00004797          	auipc	a5,0x4
    80003140:	f407a623          	sw	zero,-180(a5) # 80007088 <pr+0x18>
    80003144:	00000097          	auipc	ra,0x0
    80003148:	034080e7          	jalr	52(ra) # 80003178 <__printf>
    8000314c:	00048513          	mv	a0,s1
    80003150:	00000097          	auipc	ra,0x0
    80003154:	028080e7          	jalr	40(ra) # 80003178 <__printf>
    80003158:	00002517          	auipc	a0,0x2
    8000315c:	00850513          	addi	a0,a0,8 # 80005160 <_ZZ12printIntegermE6digits+0xa8>
    80003160:	00000097          	auipc	ra,0x0
    80003164:	018080e7          	jalr	24(ra) # 80003178 <__printf>
    80003168:	00100793          	li	a5,1
    8000316c:	00003717          	auipc	a4,0x3
    80003170:	caf72a23          	sw	a5,-844(a4) # 80005e20 <panicked>
    80003174:	0000006f          	j	80003174 <panic+0x58>

0000000080003178 <__printf>:
    80003178:	f3010113          	addi	sp,sp,-208
    8000317c:	08813023          	sd	s0,128(sp)
    80003180:	07313423          	sd	s3,104(sp)
    80003184:	09010413          	addi	s0,sp,144
    80003188:	05813023          	sd	s8,64(sp)
    8000318c:	08113423          	sd	ra,136(sp)
    80003190:	06913c23          	sd	s1,120(sp)
    80003194:	07213823          	sd	s2,112(sp)
    80003198:	07413023          	sd	s4,96(sp)
    8000319c:	05513c23          	sd	s5,88(sp)
    800031a0:	05613823          	sd	s6,80(sp)
    800031a4:	05713423          	sd	s7,72(sp)
    800031a8:	03913c23          	sd	s9,56(sp)
    800031ac:	03a13823          	sd	s10,48(sp)
    800031b0:	03b13423          	sd	s11,40(sp)
    800031b4:	00004317          	auipc	t1,0x4
    800031b8:	ebc30313          	addi	t1,t1,-324 # 80007070 <pr>
    800031bc:	01832c03          	lw	s8,24(t1)
    800031c0:	00b43423          	sd	a1,8(s0)
    800031c4:	00c43823          	sd	a2,16(s0)
    800031c8:	00d43c23          	sd	a3,24(s0)
    800031cc:	02e43023          	sd	a4,32(s0)
    800031d0:	02f43423          	sd	a5,40(s0)
    800031d4:	03043823          	sd	a6,48(s0)
    800031d8:	03143c23          	sd	a7,56(s0)
    800031dc:	00050993          	mv	s3,a0
    800031e0:	4a0c1663          	bnez	s8,8000368c <__printf+0x514>
    800031e4:	60098c63          	beqz	s3,800037fc <__printf+0x684>
    800031e8:	0009c503          	lbu	a0,0(s3)
    800031ec:	00840793          	addi	a5,s0,8
    800031f0:	f6f43c23          	sd	a5,-136(s0)
    800031f4:	00000493          	li	s1,0
    800031f8:	22050063          	beqz	a0,80003418 <__printf+0x2a0>
    800031fc:	00002a37          	lui	s4,0x2
    80003200:	00018ab7          	lui	s5,0x18
    80003204:	000f4b37          	lui	s6,0xf4
    80003208:	00989bb7          	lui	s7,0x989
    8000320c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003210:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003214:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003218:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000321c:	00148c9b          	addiw	s9,s1,1
    80003220:	02500793          	li	a5,37
    80003224:	01998933          	add	s2,s3,s9
    80003228:	38f51263          	bne	a0,a5,800035ac <__printf+0x434>
    8000322c:	00094783          	lbu	a5,0(s2)
    80003230:	00078c9b          	sext.w	s9,a5
    80003234:	1e078263          	beqz	a5,80003418 <__printf+0x2a0>
    80003238:	0024849b          	addiw	s1,s1,2
    8000323c:	07000713          	li	a4,112
    80003240:	00998933          	add	s2,s3,s1
    80003244:	38e78a63          	beq	a5,a4,800035d8 <__printf+0x460>
    80003248:	20f76863          	bltu	a4,a5,80003458 <__printf+0x2e0>
    8000324c:	42a78863          	beq	a5,a0,8000367c <__printf+0x504>
    80003250:	06400713          	li	a4,100
    80003254:	40e79663          	bne	a5,a4,80003660 <__printf+0x4e8>
    80003258:	f7843783          	ld	a5,-136(s0)
    8000325c:	0007a603          	lw	a2,0(a5)
    80003260:	00878793          	addi	a5,a5,8
    80003264:	f6f43c23          	sd	a5,-136(s0)
    80003268:	42064a63          	bltz	a2,8000369c <__printf+0x524>
    8000326c:	00a00713          	li	a4,10
    80003270:	02e677bb          	remuw	a5,a2,a4
    80003274:	00002d97          	auipc	s11,0x2
    80003278:	3e4d8d93          	addi	s11,s11,996 # 80005658 <digits>
    8000327c:	00900593          	li	a1,9
    80003280:	0006051b          	sext.w	a0,a2
    80003284:	00000c93          	li	s9,0
    80003288:	02079793          	slli	a5,a5,0x20
    8000328c:	0207d793          	srli	a5,a5,0x20
    80003290:	00fd87b3          	add	a5,s11,a5
    80003294:	0007c783          	lbu	a5,0(a5)
    80003298:	02e656bb          	divuw	a3,a2,a4
    8000329c:	f8f40023          	sb	a5,-128(s0)
    800032a0:	14c5d863          	bge	a1,a2,800033f0 <__printf+0x278>
    800032a4:	06300593          	li	a1,99
    800032a8:	00100c93          	li	s9,1
    800032ac:	02e6f7bb          	remuw	a5,a3,a4
    800032b0:	02079793          	slli	a5,a5,0x20
    800032b4:	0207d793          	srli	a5,a5,0x20
    800032b8:	00fd87b3          	add	a5,s11,a5
    800032bc:	0007c783          	lbu	a5,0(a5)
    800032c0:	02e6d73b          	divuw	a4,a3,a4
    800032c4:	f8f400a3          	sb	a5,-127(s0)
    800032c8:	12a5f463          	bgeu	a1,a0,800033f0 <__printf+0x278>
    800032cc:	00a00693          	li	a3,10
    800032d0:	00900593          	li	a1,9
    800032d4:	02d777bb          	remuw	a5,a4,a3
    800032d8:	02079793          	slli	a5,a5,0x20
    800032dc:	0207d793          	srli	a5,a5,0x20
    800032e0:	00fd87b3          	add	a5,s11,a5
    800032e4:	0007c503          	lbu	a0,0(a5)
    800032e8:	02d757bb          	divuw	a5,a4,a3
    800032ec:	f8a40123          	sb	a0,-126(s0)
    800032f0:	48e5f263          	bgeu	a1,a4,80003774 <__printf+0x5fc>
    800032f4:	06300513          	li	a0,99
    800032f8:	02d7f5bb          	remuw	a1,a5,a3
    800032fc:	02059593          	slli	a1,a1,0x20
    80003300:	0205d593          	srli	a1,a1,0x20
    80003304:	00bd85b3          	add	a1,s11,a1
    80003308:	0005c583          	lbu	a1,0(a1)
    8000330c:	02d7d7bb          	divuw	a5,a5,a3
    80003310:	f8b401a3          	sb	a1,-125(s0)
    80003314:	48e57263          	bgeu	a0,a4,80003798 <__printf+0x620>
    80003318:	3e700513          	li	a0,999
    8000331c:	02d7f5bb          	remuw	a1,a5,a3
    80003320:	02059593          	slli	a1,a1,0x20
    80003324:	0205d593          	srli	a1,a1,0x20
    80003328:	00bd85b3          	add	a1,s11,a1
    8000332c:	0005c583          	lbu	a1,0(a1)
    80003330:	02d7d7bb          	divuw	a5,a5,a3
    80003334:	f8b40223          	sb	a1,-124(s0)
    80003338:	46e57663          	bgeu	a0,a4,800037a4 <__printf+0x62c>
    8000333c:	02d7f5bb          	remuw	a1,a5,a3
    80003340:	02059593          	slli	a1,a1,0x20
    80003344:	0205d593          	srli	a1,a1,0x20
    80003348:	00bd85b3          	add	a1,s11,a1
    8000334c:	0005c583          	lbu	a1,0(a1)
    80003350:	02d7d7bb          	divuw	a5,a5,a3
    80003354:	f8b402a3          	sb	a1,-123(s0)
    80003358:	46ea7863          	bgeu	s4,a4,800037c8 <__printf+0x650>
    8000335c:	02d7f5bb          	remuw	a1,a5,a3
    80003360:	02059593          	slli	a1,a1,0x20
    80003364:	0205d593          	srli	a1,a1,0x20
    80003368:	00bd85b3          	add	a1,s11,a1
    8000336c:	0005c583          	lbu	a1,0(a1)
    80003370:	02d7d7bb          	divuw	a5,a5,a3
    80003374:	f8b40323          	sb	a1,-122(s0)
    80003378:	3eeaf863          	bgeu	s5,a4,80003768 <__printf+0x5f0>
    8000337c:	02d7f5bb          	remuw	a1,a5,a3
    80003380:	02059593          	slli	a1,a1,0x20
    80003384:	0205d593          	srli	a1,a1,0x20
    80003388:	00bd85b3          	add	a1,s11,a1
    8000338c:	0005c583          	lbu	a1,0(a1)
    80003390:	02d7d7bb          	divuw	a5,a5,a3
    80003394:	f8b403a3          	sb	a1,-121(s0)
    80003398:	42eb7e63          	bgeu	s6,a4,800037d4 <__printf+0x65c>
    8000339c:	02d7f5bb          	remuw	a1,a5,a3
    800033a0:	02059593          	slli	a1,a1,0x20
    800033a4:	0205d593          	srli	a1,a1,0x20
    800033a8:	00bd85b3          	add	a1,s11,a1
    800033ac:	0005c583          	lbu	a1,0(a1)
    800033b0:	02d7d7bb          	divuw	a5,a5,a3
    800033b4:	f8b40423          	sb	a1,-120(s0)
    800033b8:	42ebfc63          	bgeu	s7,a4,800037f0 <__printf+0x678>
    800033bc:	02079793          	slli	a5,a5,0x20
    800033c0:	0207d793          	srli	a5,a5,0x20
    800033c4:	00fd8db3          	add	s11,s11,a5
    800033c8:	000dc703          	lbu	a4,0(s11)
    800033cc:	00a00793          	li	a5,10
    800033d0:	00900c93          	li	s9,9
    800033d4:	f8e404a3          	sb	a4,-119(s0)
    800033d8:	00065c63          	bgez	a2,800033f0 <__printf+0x278>
    800033dc:	f9040713          	addi	a4,s0,-112
    800033e0:	00f70733          	add	a4,a4,a5
    800033e4:	02d00693          	li	a3,45
    800033e8:	fed70823          	sb	a3,-16(a4)
    800033ec:	00078c93          	mv	s9,a5
    800033f0:	f8040793          	addi	a5,s0,-128
    800033f4:	01978cb3          	add	s9,a5,s9
    800033f8:	f7f40d13          	addi	s10,s0,-129
    800033fc:	000cc503          	lbu	a0,0(s9)
    80003400:	fffc8c93          	addi	s9,s9,-1
    80003404:	00000097          	auipc	ra,0x0
    80003408:	b90080e7          	jalr	-1136(ra) # 80002f94 <consputc>
    8000340c:	ffac98e3          	bne	s9,s10,800033fc <__printf+0x284>
    80003410:	00094503          	lbu	a0,0(s2)
    80003414:	e00514e3          	bnez	a0,8000321c <__printf+0xa4>
    80003418:	1a0c1663          	bnez	s8,800035c4 <__printf+0x44c>
    8000341c:	08813083          	ld	ra,136(sp)
    80003420:	08013403          	ld	s0,128(sp)
    80003424:	07813483          	ld	s1,120(sp)
    80003428:	07013903          	ld	s2,112(sp)
    8000342c:	06813983          	ld	s3,104(sp)
    80003430:	06013a03          	ld	s4,96(sp)
    80003434:	05813a83          	ld	s5,88(sp)
    80003438:	05013b03          	ld	s6,80(sp)
    8000343c:	04813b83          	ld	s7,72(sp)
    80003440:	04013c03          	ld	s8,64(sp)
    80003444:	03813c83          	ld	s9,56(sp)
    80003448:	03013d03          	ld	s10,48(sp)
    8000344c:	02813d83          	ld	s11,40(sp)
    80003450:	0d010113          	addi	sp,sp,208
    80003454:	00008067          	ret
    80003458:	07300713          	li	a4,115
    8000345c:	1ce78a63          	beq	a5,a4,80003630 <__printf+0x4b8>
    80003460:	07800713          	li	a4,120
    80003464:	1ee79e63          	bne	a5,a4,80003660 <__printf+0x4e8>
    80003468:	f7843783          	ld	a5,-136(s0)
    8000346c:	0007a703          	lw	a4,0(a5)
    80003470:	00878793          	addi	a5,a5,8
    80003474:	f6f43c23          	sd	a5,-136(s0)
    80003478:	28074263          	bltz	a4,800036fc <__printf+0x584>
    8000347c:	00002d97          	auipc	s11,0x2
    80003480:	1dcd8d93          	addi	s11,s11,476 # 80005658 <digits>
    80003484:	00f77793          	andi	a5,a4,15
    80003488:	00fd87b3          	add	a5,s11,a5
    8000348c:	0007c683          	lbu	a3,0(a5)
    80003490:	00f00613          	li	a2,15
    80003494:	0007079b          	sext.w	a5,a4
    80003498:	f8d40023          	sb	a3,-128(s0)
    8000349c:	0047559b          	srliw	a1,a4,0x4
    800034a0:	0047569b          	srliw	a3,a4,0x4
    800034a4:	00000c93          	li	s9,0
    800034a8:	0ee65063          	bge	a2,a4,80003588 <__printf+0x410>
    800034ac:	00f6f693          	andi	a3,a3,15
    800034b0:	00dd86b3          	add	a3,s11,a3
    800034b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800034b8:	0087d79b          	srliw	a5,a5,0x8
    800034bc:	00100c93          	li	s9,1
    800034c0:	f8d400a3          	sb	a3,-127(s0)
    800034c4:	0cb67263          	bgeu	a2,a1,80003588 <__printf+0x410>
    800034c8:	00f7f693          	andi	a3,a5,15
    800034cc:	00dd86b3          	add	a3,s11,a3
    800034d0:	0006c583          	lbu	a1,0(a3)
    800034d4:	00f00613          	li	a2,15
    800034d8:	0047d69b          	srliw	a3,a5,0x4
    800034dc:	f8b40123          	sb	a1,-126(s0)
    800034e0:	0047d593          	srli	a1,a5,0x4
    800034e4:	28f67e63          	bgeu	a2,a5,80003780 <__printf+0x608>
    800034e8:	00f6f693          	andi	a3,a3,15
    800034ec:	00dd86b3          	add	a3,s11,a3
    800034f0:	0006c503          	lbu	a0,0(a3)
    800034f4:	0087d813          	srli	a6,a5,0x8
    800034f8:	0087d69b          	srliw	a3,a5,0x8
    800034fc:	f8a401a3          	sb	a0,-125(s0)
    80003500:	28b67663          	bgeu	a2,a1,8000378c <__printf+0x614>
    80003504:	00f6f693          	andi	a3,a3,15
    80003508:	00dd86b3          	add	a3,s11,a3
    8000350c:	0006c583          	lbu	a1,0(a3)
    80003510:	00c7d513          	srli	a0,a5,0xc
    80003514:	00c7d69b          	srliw	a3,a5,0xc
    80003518:	f8b40223          	sb	a1,-124(s0)
    8000351c:	29067a63          	bgeu	a2,a6,800037b0 <__printf+0x638>
    80003520:	00f6f693          	andi	a3,a3,15
    80003524:	00dd86b3          	add	a3,s11,a3
    80003528:	0006c583          	lbu	a1,0(a3)
    8000352c:	0107d813          	srli	a6,a5,0x10
    80003530:	0107d69b          	srliw	a3,a5,0x10
    80003534:	f8b402a3          	sb	a1,-123(s0)
    80003538:	28a67263          	bgeu	a2,a0,800037bc <__printf+0x644>
    8000353c:	00f6f693          	andi	a3,a3,15
    80003540:	00dd86b3          	add	a3,s11,a3
    80003544:	0006c683          	lbu	a3,0(a3)
    80003548:	0147d79b          	srliw	a5,a5,0x14
    8000354c:	f8d40323          	sb	a3,-122(s0)
    80003550:	21067663          	bgeu	a2,a6,8000375c <__printf+0x5e4>
    80003554:	02079793          	slli	a5,a5,0x20
    80003558:	0207d793          	srli	a5,a5,0x20
    8000355c:	00fd8db3          	add	s11,s11,a5
    80003560:	000dc683          	lbu	a3,0(s11)
    80003564:	00800793          	li	a5,8
    80003568:	00700c93          	li	s9,7
    8000356c:	f8d403a3          	sb	a3,-121(s0)
    80003570:	00075c63          	bgez	a4,80003588 <__printf+0x410>
    80003574:	f9040713          	addi	a4,s0,-112
    80003578:	00f70733          	add	a4,a4,a5
    8000357c:	02d00693          	li	a3,45
    80003580:	fed70823          	sb	a3,-16(a4)
    80003584:	00078c93          	mv	s9,a5
    80003588:	f8040793          	addi	a5,s0,-128
    8000358c:	01978cb3          	add	s9,a5,s9
    80003590:	f7f40d13          	addi	s10,s0,-129
    80003594:	000cc503          	lbu	a0,0(s9)
    80003598:	fffc8c93          	addi	s9,s9,-1
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	9f8080e7          	jalr	-1544(ra) # 80002f94 <consputc>
    800035a4:	ff9d18e3          	bne	s10,s9,80003594 <__printf+0x41c>
    800035a8:	0100006f          	j	800035b8 <__printf+0x440>
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	9e8080e7          	jalr	-1560(ra) # 80002f94 <consputc>
    800035b4:	000c8493          	mv	s1,s9
    800035b8:	00094503          	lbu	a0,0(s2)
    800035bc:	c60510e3          	bnez	a0,8000321c <__printf+0xa4>
    800035c0:	e40c0ee3          	beqz	s8,8000341c <__printf+0x2a4>
    800035c4:	00004517          	auipc	a0,0x4
    800035c8:	aac50513          	addi	a0,a0,-1364 # 80007070 <pr>
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	94c080e7          	jalr	-1716(ra) # 80003f18 <release>
    800035d4:	e49ff06f          	j	8000341c <__printf+0x2a4>
    800035d8:	f7843783          	ld	a5,-136(s0)
    800035dc:	03000513          	li	a0,48
    800035e0:	01000d13          	li	s10,16
    800035e4:	00878713          	addi	a4,a5,8
    800035e8:	0007bc83          	ld	s9,0(a5)
    800035ec:	f6e43c23          	sd	a4,-136(s0)
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	9a4080e7          	jalr	-1628(ra) # 80002f94 <consputc>
    800035f8:	07800513          	li	a0,120
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	998080e7          	jalr	-1640(ra) # 80002f94 <consputc>
    80003604:	00002d97          	auipc	s11,0x2
    80003608:	054d8d93          	addi	s11,s11,84 # 80005658 <digits>
    8000360c:	03ccd793          	srli	a5,s9,0x3c
    80003610:	00fd87b3          	add	a5,s11,a5
    80003614:	0007c503          	lbu	a0,0(a5)
    80003618:	fffd0d1b          	addiw	s10,s10,-1
    8000361c:	004c9c93          	slli	s9,s9,0x4
    80003620:	00000097          	auipc	ra,0x0
    80003624:	974080e7          	jalr	-1676(ra) # 80002f94 <consputc>
    80003628:	fe0d12e3          	bnez	s10,8000360c <__printf+0x494>
    8000362c:	f8dff06f          	j	800035b8 <__printf+0x440>
    80003630:	f7843783          	ld	a5,-136(s0)
    80003634:	0007bc83          	ld	s9,0(a5)
    80003638:	00878793          	addi	a5,a5,8
    8000363c:	f6f43c23          	sd	a5,-136(s0)
    80003640:	000c9a63          	bnez	s9,80003654 <__printf+0x4dc>
    80003644:	1080006f          	j	8000374c <__printf+0x5d4>
    80003648:	001c8c93          	addi	s9,s9,1
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	948080e7          	jalr	-1720(ra) # 80002f94 <consputc>
    80003654:	000cc503          	lbu	a0,0(s9)
    80003658:	fe0518e3          	bnez	a0,80003648 <__printf+0x4d0>
    8000365c:	f5dff06f          	j	800035b8 <__printf+0x440>
    80003660:	02500513          	li	a0,37
    80003664:	00000097          	auipc	ra,0x0
    80003668:	930080e7          	jalr	-1744(ra) # 80002f94 <consputc>
    8000366c:	000c8513          	mv	a0,s9
    80003670:	00000097          	auipc	ra,0x0
    80003674:	924080e7          	jalr	-1756(ra) # 80002f94 <consputc>
    80003678:	f41ff06f          	j	800035b8 <__printf+0x440>
    8000367c:	02500513          	li	a0,37
    80003680:	00000097          	auipc	ra,0x0
    80003684:	914080e7          	jalr	-1772(ra) # 80002f94 <consputc>
    80003688:	f31ff06f          	j	800035b8 <__printf+0x440>
    8000368c:	00030513          	mv	a0,t1
    80003690:	00000097          	auipc	ra,0x0
    80003694:	7bc080e7          	jalr	1980(ra) # 80003e4c <acquire>
    80003698:	b4dff06f          	j	800031e4 <__printf+0x6c>
    8000369c:	40c0053b          	negw	a0,a2
    800036a0:	00a00713          	li	a4,10
    800036a4:	02e576bb          	remuw	a3,a0,a4
    800036a8:	00002d97          	auipc	s11,0x2
    800036ac:	fb0d8d93          	addi	s11,s11,-80 # 80005658 <digits>
    800036b0:	ff700593          	li	a1,-9
    800036b4:	02069693          	slli	a3,a3,0x20
    800036b8:	0206d693          	srli	a3,a3,0x20
    800036bc:	00dd86b3          	add	a3,s11,a3
    800036c0:	0006c683          	lbu	a3,0(a3)
    800036c4:	02e557bb          	divuw	a5,a0,a4
    800036c8:	f8d40023          	sb	a3,-128(s0)
    800036cc:	10b65e63          	bge	a2,a1,800037e8 <__printf+0x670>
    800036d0:	06300593          	li	a1,99
    800036d4:	02e7f6bb          	remuw	a3,a5,a4
    800036d8:	02069693          	slli	a3,a3,0x20
    800036dc:	0206d693          	srli	a3,a3,0x20
    800036e0:	00dd86b3          	add	a3,s11,a3
    800036e4:	0006c683          	lbu	a3,0(a3)
    800036e8:	02e7d73b          	divuw	a4,a5,a4
    800036ec:	00200793          	li	a5,2
    800036f0:	f8d400a3          	sb	a3,-127(s0)
    800036f4:	bca5ece3          	bltu	a1,a0,800032cc <__printf+0x154>
    800036f8:	ce5ff06f          	j	800033dc <__printf+0x264>
    800036fc:	40e007bb          	negw	a5,a4
    80003700:	00002d97          	auipc	s11,0x2
    80003704:	f58d8d93          	addi	s11,s11,-168 # 80005658 <digits>
    80003708:	00f7f693          	andi	a3,a5,15
    8000370c:	00dd86b3          	add	a3,s11,a3
    80003710:	0006c583          	lbu	a1,0(a3)
    80003714:	ff100613          	li	a2,-15
    80003718:	0047d69b          	srliw	a3,a5,0x4
    8000371c:	f8b40023          	sb	a1,-128(s0)
    80003720:	0047d59b          	srliw	a1,a5,0x4
    80003724:	0ac75e63          	bge	a4,a2,800037e0 <__printf+0x668>
    80003728:	00f6f693          	andi	a3,a3,15
    8000372c:	00dd86b3          	add	a3,s11,a3
    80003730:	0006c603          	lbu	a2,0(a3)
    80003734:	00f00693          	li	a3,15
    80003738:	0087d79b          	srliw	a5,a5,0x8
    8000373c:	f8c400a3          	sb	a2,-127(s0)
    80003740:	d8b6e4e3          	bltu	a3,a1,800034c8 <__printf+0x350>
    80003744:	00200793          	li	a5,2
    80003748:	e2dff06f          	j	80003574 <__printf+0x3fc>
    8000374c:	00002c97          	auipc	s9,0x2
    80003750:	eecc8c93          	addi	s9,s9,-276 # 80005638 <_ZZ12printIntegermE6digits+0x580>
    80003754:	02800513          	li	a0,40
    80003758:	ef1ff06f          	j	80003648 <__printf+0x4d0>
    8000375c:	00700793          	li	a5,7
    80003760:	00600c93          	li	s9,6
    80003764:	e0dff06f          	j	80003570 <__printf+0x3f8>
    80003768:	00700793          	li	a5,7
    8000376c:	00600c93          	li	s9,6
    80003770:	c69ff06f          	j	800033d8 <__printf+0x260>
    80003774:	00300793          	li	a5,3
    80003778:	00200c93          	li	s9,2
    8000377c:	c5dff06f          	j	800033d8 <__printf+0x260>
    80003780:	00300793          	li	a5,3
    80003784:	00200c93          	li	s9,2
    80003788:	de9ff06f          	j	80003570 <__printf+0x3f8>
    8000378c:	00400793          	li	a5,4
    80003790:	00300c93          	li	s9,3
    80003794:	dddff06f          	j	80003570 <__printf+0x3f8>
    80003798:	00400793          	li	a5,4
    8000379c:	00300c93          	li	s9,3
    800037a0:	c39ff06f          	j	800033d8 <__printf+0x260>
    800037a4:	00500793          	li	a5,5
    800037a8:	00400c93          	li	s9,4
    800037ac:	c2dff06f          	j	800033d8 <__printf+0x260>
    800037b0:	00500793          	li	a5,5
    800037b4:	00400c93          	li	s9,4
    800037b8:	db9ff06f          	j	80003570 <__printf+0x3f8>
    800037bc:	00600793          	li	a5,6
    800037c0:	00500c93          	li	s9,5
    800037c4:	dadff06f          	j	80003570 <__printf+0x3f8>
    800037c8:	00600793          	li	a5,6
    800037cc:	00500c93          	li	s9,5
    800037d0:	c09ff06f          	j	800033d8 <__printf+0x260>
    800037d4:	00800793          	li	a5,8
    800037d8:	00700c93          	li	s9,7
    800037dc:	bfdff06f          	j	800033d8 <__printf+0x260>
    800037e0:	00100793          	li	a5,1
    800037e4:	d91ff06f          	j	80003574 <__printf+0x3fc>
    800037e8:	00100793          	li	a5,1
    800037ec:	bf1ff06f          	j	800033dc <__printf+0x264>
    800037f0:	00900793          	li	a5,9
    800037f4:	00800c93          	li	s9,8
    800037f8:	be1ff06f          	j	800033d8 <__printf+0x260>
    800037fc:	00002517          	auipc	a0,0x2
    80003800:	e4450513          	addi	a0,a0,-444 # 80005640 <_ZZ12printIntegermE6digits+0x588>
    80003804:	00000097          	auipc	ra,0x0
    80003808:	918080e7          	jalr	-1768(ra) # 8000311c <panic>

000000008000380c <printfinit>:
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00004497          	auipc	s1,0x4
    80003824:	85048493          	addi	s1,s1,-1968 # 80007070 <pr>
    80003828:	00048513          	mv	a0,s1
    8000382c:	00002597          	auipc	a1,0x2
    80003830:	e2458593          	addi	a1,a1,-476 # 80005650 <_ZZ12printIntegermE6digits+0x598>
    80003834:	00000097          	auipc	ra,0x0
    80003838:	5f4080e7          	jalr	1524(ra) # 80003e28 <initlock>
    8000383c:	01813083          	ld	ra,24(sp)
    80003840:	01013403          	ld	s0,16(sp)
    80003844:	0004ac23          	sw	zero,24(s1)
    80003848:	00813483          	ld	s1,8(sp)
    8000384c:	02010113          	addi	sp,sp,32
    80003850:	00008067          	ret

0000000080003854 <uartinit>:
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00813423          	sd	s0,8(sp)
    8000385c:	01010413          	addi	s0,sp,16
    80003860:	100007b7          	lui	a5,0x10000
    80003864:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003868:	f8000713          	li	a4,-128
    8000386c:	00e781a3          	sb	a4,3(a5)
    80003870:	00300713          	li	a4,3
    80003874:	00e78023          	sb	a4,0(a5)
    80003878:	000780a3          	sb	zero,1(a5)
    8000387c:	00e781a3          	sb	a4,3(a5)
    80003880:	00700693          	li	a3,7
    80003884:	00d78123          	sb	a3,2(a5)
    80003888:	00e780a3          	sb	a4,1(a5)
    8000388c:	00813403          	ld	s0,8(sp)
    80003890:	01010113          	addi	sp,sp,16
    80003894:	00008067          	ret

0000000080003898 <uartputc>:
    80003898:	00002797          	auipc	a5,0x2
    8000389c:	5887a783          	lw	a5,1416(a5) # 80005e20 <panicked>
    800038a0:	00078463          	beqz	a5,800038a8 <uartputc+0x10>
    800038a4:	0000006f          	j	800038a4 <uartputc+0xc>
    800038a8:	fd010113          	addi	sp,sp,-48
    800038ac:	02813023          	sd	s0,32(sp)
    800038b0:	00913c23          	sd	s1,24(sp)
    800038b4:	01213823          	sd	s2,16(sp)
    800038b8:	01313423          	sd	s3,8(sp)
    800038bc:	02113423          	sd	ra,40(sp)
    800038c0:	03010413          	addi	s0,sp,48
    800038c4:	00002917          	auipc	s2,0x2
    800038c8:	56490913          	addi	s2,s2,1380 # 80005e28 <uart_tx_r>
    800038cc:	00093783          	ld	a5,0(s2)
    800038d0:	00002497          	auipc	s1,0x2
    800038d4:	56048493          	addi	s1,s1,1376 # 80005e30 <uart_tx_w>
    800038d8:	0004b703          	ld	a4,0(s1)
    800038dc:	02078693          	addi	a3,a5,32
    800038e0:	00050993          	mv	s3,a0
    800038e4:	02e69c63          	bne	a3,a4,8000391c <uartputc+0x84>
    800038e8:	00001097          	auipc	ra,0x1
    800038ec:	834080e7          	jalr	-1996(ra) # 8000411c <push_on>
    800038f0:	00093783          	ld	a5,0(s2)
    800038f4:	0004b703          	ld	a4,0(s1)
    800038f8:	02078793          	addi	a5,a5,32
    800038fc:	00e79463          	bne	a5,a4,80003904 <uartputc+0x6c>
    80003900:	0000006f          	j	80003900 <uartputc+0x68>
    80003904:	00001097          	auipc	ra,0x1
    80003908:	88c080e7          	jalr	-1908(ra) # 80004190 <pop_on>
    8000390c:	00093783          	ld	a5,0(s2)
    80003910:	0004b703          	ld	a4,0(s1)
    80003914:	02078693          	addi	a3,a5,32
    80003918:	fce688e3          	beq	a3,a4,800038e8 <uartputc+0x50>
    8000391c:	01f77693          	andi	a3,a4,31
    80003920:	00003597          	auipc	a1,0x3
    80003924:	77058593          	addi	a1,a1,1904 # 80007090 <uart_tx_buf>
    80003928:	00d586b3          	add	a3,a1,a3
    8000392c:	00170713          	addi	a4,a4,1
    80003930:	01368023          	sb	s3,0(a3)
    80003934:	00e4b023          	sd	a4,0(s1)
    80003938:	10000637          	lui	a2,0x10000
    8000393c:	02f71063          	bne	a4,a5,8000395c <uartputc+0xc4>
    80003940:	0340006f          	j	80003974 <uartputc+0xdc>
    80003944:	00074703          	lbu	a4,0(a4)
    80003948:	00f93023          	sd	a5,0(s2)
    8000394c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003950:	00093783          	ld	a5,0(s2)
    80003954:	0004b703          	ld	a4,0(s1)
    80003958:	00f70e63          	beq	a4,a5,80003974 <uartputc+0xdc>
    8000395c:	00564683          	lbu	a3,5(a2)
    80003960:	01f7f713          	andi	a4,a5,31
    80003964:	00e58733          	add	a4,a1,a4
    80003968:	0206f693          	andi	a3,a3,32
    8000396c:	00178793          	addi	a5,a5,1
    80003970:	fc069ae3          	bnez	a3,80003944 <uartputc+0xac>
    80003974:	02813083          	ld	ra,40(sp)
    80003978:	02013403          	ld	s0,32(sp)
    8000397c:	01813483          	ld	s1,24(sp)
    80003980:	01013903          	ld	s2,16(sp)
    80003984:	00813983          	ld	s3,8(sp)
    80003988:	03010113          	addi	sp,sp,48
    8000398c:	00008067          	ret

0000000080003990 <uartputc_sync>:
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00813423          	sd	s0,8(sp)
    80003998:	01010413          	addi	s0,sp,16
    8000399c:	00002717          	auipc	a4,0x2
    800039a0:	48472703          	lw	a4,1156(a4) # 80005e20 <panicked>
    800039a4:	02071663          	bnez	a4,800039d0 <uartputc_sync+0x40>
    800039a8:	00050793          	mv	a5,a0
    800039ac:	100006b7          	lui	a3,0x10000
    800039b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800039b4:	02077713          	andi	a4,a4,32
    800039b8:	fe070ce3          	beqz	a4,800039b0 <uartputc_sync+0x20>
    800039bc:	0ff7f793          	andi	a5,a5,255
    800039c0:	00f68023          	sb	a5,0(a3)
    800039c4:	00813403          	ld	s0,8(sp)
    800039c8:	01010113          	addi	sp,sp,16
    800039cc:	00008067          	ret
    800039d0:	0000006f          	j	800039d0 <uartputc_sync+0x40>

00000000800039d4 <uartstart>:
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00813423          	sd	s0,8(sp)
    800039dc:	01010413          	addi	s0,sp,16
    800039e0:	00002617          	auipc	a2,0x2
    800039e4:	44860613          	addi	a2,a2,1096 # 80005e28 <uart_tx_r>
    800039e8:	00002517          	auipc	a0,0x2
    800039ec:	44850513          	addi	a0,a0,1096 # 80005e30 <uart_tx_w>
    800039f0:	00063783          	ld	a5,0(a2)
    800039f4:	00053703          	ld	a4,0(a0)
    800039f8:	04f70263          	beq	a4,a5,80003a3c <uartstart+0x68>
    800039fc:	100005b7          	lui	a1,0x10000
    80003a00:	00003817          	auipc	a6,0x3
    80003a04:	69080813          	addi	a6,a6,1680 # 80007090 <uart_tx_buf>
    80003a08:	01c0006f          	j	80003a24 <uartstart+0x50>
    80003a0c:	0006c703          	lbu	a4,0(a3)
    80003a10:	00f63023          	sd	a5,0(a2)
    80003a14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a18:	00063783          	ld	a5,0(a2)
    80003a1c:	00053703          	ld	a4,0(a0)
    80003a20:	00f70e63          	beq	a4,a5,80003a3c <uartstart+0x68>
    80003a24:	01f7f713          	andi	a4,a5,31
    80003a28:	00e806b3          	add	a3,a6,a4
    80003a2c:	0055c703          	lbu	a4,5(a1)
    80003a30:	00178793          	addi	a5,a5,1
    80003a34:	02077713          	andi	a4,a4,32
    80003a38:	fc071ae3          	bnez	a4,80003a0c <uartstart+0x38>
    80003a3c:	00813403          	ld	s0,8(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <uartgetc>:
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00813423          	sd	s0,8(sp)
    80003a50:	01010413          	addi	s0,sp,16
    80003a54:	10000737          	lui	a4,0x10000
    80003a58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003a5c:	0017f793          	andi	a5,a5,1
    80003a60:	00078c63          	beqz	a5,80003a78 <uartgetc+0x30>
    80003a64:	00074503          	lbu	a0,0(a4)
    80003a68:	0ff57513          	andi	a0,a0,255
    80003a6c:	00813403          	ld	s0,8(sp)
    80003a70:	01010113          	addi	sp,sp,16
    80003a74:	00008067          	ret
    80003a78:	fff00513          	li	a0,-1
    80003a7c:	ff1ff06f          	j	80003a6c <uartgetc+0x24>

0000000080003a80 <uartintr>:
    80003a80:	100007b7          	lui	a5,0x10000
    80003a84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003a88:	0017f793          	andi	a5,a5,1
    80003a8c:	0a078463          	beqz	a5,80003b34 <uartintr+0xb4>
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	00113c23          	sd	ra,24(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	100004b7          	lui	s1,0x10000
    80003aa8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003aac:	0ff57513          	andi	a0,a0,255
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	534080e7          	jalr	1332(ra) # 80002fe4 <consoleintr>
    80003ab8:	0054c783          	lbu	a5,5(s1)
    80003abc:	0017f793          	andi	a5,a5,1
    80003ac0:	fe0794e3          	bnez	a5,80003aa8 <uartintr+0x28>
    80003ac4:	00002617          	auipc	a2,0x2
    80003ac8:	36460613          	addi	a2,a2,868 # 80005e28 <uart_tx_r>
    80003acc:	00002517          	auipc	a0,0x2
    80003ad0:	36450513          	addi	a0,a0,868 # 80005e30 <uart_tx_w>
    80003ad4:	00063783          	ld	a5,0(a2)
    80003ad8:	00053703          	ld	a4,0(a0)
    80003adc:	04f70263          	beq	a4,a5,80003b20 <uartintr+0xa0>
    80003ae0:	100005b7          	lui	a1,0x10000
    80003ae4:	00003817          	auipc	a6,0x3
    80003ae8:	5ac80813          	addi	a6,a6,1452 # 80007090 <uart_tx_buf>
    80003aec:	01c0006f          	j	80003b08 <uartintr+0x88>
    80003af0:	0006c703          	lbu	a4,0(a3)
    80003af4:	00f63023          	sd	a5,0(a2)
    80003af8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003afc:	00063783          	ld	a5,0(a2)
    80003b00:	00053703          	ld	a4,0(a0)
    80003b04:	00f70e63          	beq	a4,a5,80003b20 <uartintr+0xa0>
    80003b08:	01f7f713          	andi	a4,a5,31
    80003b0c:	00e806b3          	add	a3,a6,a4
    80003b10:	0055c703          	lbu	a4,5(a1)
    80003b14:	00178793          	addi	a5,a5,1
    80003b18:	02077713          	andi	a4,a4,32
    80003b1c:	fc071ae3          	bnez	a4,80003af0 <uartintr+0x70>
    80003b20:	01813083          	ld	ra,24(sp)
    80003b24:	01013403          	ld	s0,16(sp)
    80003b28:	00813483          	ld	s1,8(sp)
    80003b2c:	02010113          	addi	sp,sp,32
    80003b30:	00008067          	ret
    80003b34:	00002617          	auipc	a2,0x2
    80003b38:	2f460613          	addi	a2,a2,756 # 80005e28 <uart_tx_r>
    80003b3c:	00002517          	auipc	a0,0x2
    80003b40:	2f450513          	addi	a0,a0,756 # 80005e30 <uart_tx_w>
    80003b44:	00063783          	ld	a5,0(a2)
    80003b48:	00053703          	ld	a4,0(a0)
    80003b4c:	04f70263          	beq	a4,a5,80003b90 <uartintr+0x110>
    80003b50:	100005b7          	lui	a1,0x10000
    80003b54:	00003817          	auipc	a6,0x3
    80003b58:	53c80813          	addi	a6,a6,1340 # 80007090 <uart_tx_buf>
    80003b5c:	01c0006f          	j	80003b78 <uartintr+0xf8>
    80003b60:	0006c703          	lbu	a4,0(a3)
    80003b64:	00f63023          	sd	a5,0(a2)
    80003b68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b6c:	00063783          	ld	a5,0(a2)
    80003b70:	00053703          	ld	a4,0(a0)
    80003b74:	02f70063          	beq	a4,a5,80003b94 <uartintr+0x114>
    80003b78:	01f7f713          	andi	a4,a5,31
    80003b7c:	00e806b3          	add	a3,a6,a4
    80003b80:	0055c703          	lbu	a4,5(a1)
    80003b84:	00178793          	addi	a5,a5,1
    80003b88:	02077713          	andi	a4,a4,32
    80003b8c:	fc071ae3          	bnez	a4,80003b60 <uartintr+0xe0>
    80003b90:	00008067          	ret
    80003b94:	00008067          	ret

0000000080003b98 <kinit>:
    80003b98:	fc010113          	addi	sp,sp,-64
    80003b9c:	02913423          	sd	s1,40(sp)
    80003ba0:	fffff7b7          	lui	a5,0xfffff
    80003ba4:	00004497          	auipc	s1,0x4
    80003ba8:	50b48493          	addi	s1,s1,1291 # 800080af <end+0xfff>
    80003bac:	02813823          	sd	s0,48(sp)
    80003bb0:	01313c23          	sd	s3,24(sp)
    80003bb4:	00f4f4b3          	and	s1,s1,a5
    80003bb8:	02113c23          	sd	ra,56(sp)
    80003bbc:	03213023          	sd	s2,32(sp)
    80003bc0:	01413823          	sd	s4,16(sp)
    80003bc4:	01513423          	sd	s5,8(sp)
    80003bc8:	04010413          	addi	s0,sp,64
    80003bcc:	000017b7          	lui	a5,0x1
    80003bd0:	01100993          	li	s3,17
    80003bd4:	00f487b3          	add	a5,s1,a5
    80003bd8:	01b99993          	slli	s3,s3,0x1b
    80003bdc:	06f9e063          	bltu	s3,a5,80003c3c <kinit+0xa4>
    80003be0:	00003a97          	auipc	s5,0x3
    80003be4:	4d0a8a93          	addi	s5,s5,1232 # 800070b0 <end>
    80003be8:	0754ec63          	bltu	s1,s5,80003c60 <kinit+0xc8>
    80003bec:	0734fa63          	bgeu	s1,s3,80003c60 <kinit+0xc8>
    80003bf0:	00088a37          	lui	s4,0x88
    80003bf4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003bf8:	00002917          	auipc	s2,0x2
    80003bfc:	24090913          	addi	s2,s2,576 # 80005e38 <kmem>
    80003c00:	00ca1a13          	slli	s4,s4,0xc
    80003c04:	0140006f          	j	80003c18 <kinit+0x80>
    80003c08:	000017b7          	lui	a5,0x1
    80003c0c:	00f484b3          	add	s1,s1,a5
    80003c10:	0554e863          	bltu	s1,s5,80003c60 <kinit+0xc8>
    80003c14:	0534f663          	bgeu	s1,s3,80003c60 <kinit+0xc8>
    80003c18:	00001637          	lui	a2,0x1
    80003c1c:	00100593          	li	a1,1
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	5e4080e7          	jalr	1508(ra) # 80004208 <__memset>
    80003c2c:	00093783          	ld	a5,0(s2)
    80003c30:	00f4b023          	sd	a5,0(s1)
    80003c34:	00993023          	sd	s1,0(s2)
    80003c38:	fd4498e3          	bne	s1,s4,80003c08 <kinit+0x70>
    80003c3c:	03813083          	ld	ra,56(sp)
    80003c40:	03013403          	ld	s0,48(sp)
    80003c44:	02813483          	ld	s1,40(sp)
    80003c48:	02013903          	ld	s2,32(sp)
    80003c4c:	01813983          	ld	s3,24(sp)
    80003c50:	01013a03          	ld	s4,16(sp)
    80003c54:	00813a83          	ld	s5,8(sp)
    80003c58:	04010113          	addi	sp,sp,64
    80003c5c:	00008067          	ret
    80003c60:	00002517          	auipc	a0,0x2
    80003c64:	a1050513          	addi	a0,a0,-1520 # 80005670 <digits+0x18>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	4b4080e7          	jalr	1204(ra) # 8000311c <panic>

0000000080003c70 <freerange>:
    80003c70:	fc010113          	addi	sp,sp,-64
    80003c74:	000017b7          	lui	a5,0x1
    80003c78:	02913423          	sd	s1,40(sp)
    80003c7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003c80:	009504b3          	add	s1,a0,s1
    80003c84:	fffff537          	lui	a0,0xfffff
    80003c88:	02813823          	sd	s0,48(sp)
    80003c8c:	02113c23          	sd	ra,56(sp)
    80003c90:	03213023          	sd	s2,32(sp)
    80003c94:	01313c23          	sd	s3,24(sp)
    80003c98:	01413823          	sd	s4,16(sp)
    80003c9c:	01513423          	sd	s5,8(sp)
    80003ca0:	01613023          	sd	s6,0(sp)
    80003ca4:	04010413          	addi	s0,sp,64
    80003ca8:	00a4f4b3          	and	s1,s1,a0
    80003cac:	00f487b3          	add	a5,s1,a5
    80003cb0:	06f5e463          	bltu	a1,a5,80003d18 <freerange+0xa8>
    80003cb4:	00003a97          	auipc	s5,0x3
    80003cb8:	3fca8a93          	addi	s5,s5,1020 # 800070b0 <end>
    80003cbc:	0954e263          	bltu	s1,s5,80003d40 <freerange+0xd0>
    80003cc0:	01100993          	li	s3,17
    80003cc4:	01b99993          	slli	s3,s3,0x1b
    80003cc8:	0734fc63          	bgeu	s1,s3,80003d40 <freerange+0xd0>
    80003ccc:	00058a13          	mv	s4,a1
    80003cd0:	00002917          	auipc	s2,0x2
    80003cd4:	16890913          	addi	s2,s2,360 # 80005e38 <kmem>
    80003cd8:	00002b37          	lui	s6,0x2
    80003cdc:	0140006f          	j	80003cf0 <freerange+0x80>
    80003ce0:	000017b7          	lui	a5,0x1
    80003ce4:	00f484b3          	add	s1,s1,a5
    80003ce8:	0554ec63          	bltu	s1,s5,80003d40 <freerange+0xd0>
    80003cec:	0534fa63          	bgeu	s1,s3,80003d40 <freerange+0xd0>
    80003cf0:	00001637          	lui	a2,0x1
    80003cf4:	00100593          	li	a1,1
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	50c080e7          	jalr	1292(ra) # 80004208 <__memset>
    80003d04:	00093703          	ld	a4,0(s2)
    80003d08:	016487b3          	add	a5,s1,s6
    80003d0c:	00e4b023          	sd	a4,0(s1)
    80003d10:	00993023          	sd	s1,0(s2)
    80003d14:	fcfa76e3          	bgeu	s4,a5,80003ce0 <freerange+0x70>
    80003d18:	03813083          	ld	ra,56(sp)
    80003d1c:	03013403          	ld	s0,48(sp)
    80003d20:	02813483          	ld	s1,40(sp)
    80003d24:	02013903          	ld	s2,32(sp)
    80003d28:	01813983          	ld	s3,24(sp)
    80003d2c:	01013a03          	ld	s4,16(sp)
    80003d30:	00813a83          	ld	s5,8(sp)
    80003d34:	00013b03          	ld	s6,0(sp)
    80003d38:	04010113          	addi	sp,sp,64
    80003d3c:	00008067          	ret
    80003d40:	00002517          	auipc	a0,0x2
    80003d44:	93050513          	addi	a0,a0,-1744 # 80005670 <digits+0x18>
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	3d4080e7          	jalr	980(ra) # 8000311c <panic>

0000000080003d50 <kfree>:
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	02010413          	addi	s0,sp,32
    80003d64:	03451793          	slli	a5,a0,0x34
    80003d68:	04079c63          	bnez	a5,80003dc0 <kfree+0x70>
    80003d6c:	00003797          	auipc	a5,0x3
    80003d70:	34478793          	addi	a5,a5,836 # 800070b0 <end>
    80003d74:	00050493          	mv	s1,a0
    80003d78:	04f56463          	bltu	a0,a5,80003dc0 <kfree+0x70>
    80003d7c:	01100793          	li	a5,17
    80003d80:	01b79793          	slli	a5,a5,0x1b
    80003d84:	02f57e63          	bgeu	a0,a5,80003dc0 <kfree+0x70>
    80003d88:	00001637          	lui	a2,0x1
    80003d8c:	00100593          	li	a1,1
    80003d90:	00000097          	auipc	ra,0x0
    80003d94:	478080e7          	jalr	1144(ra) # 80004208 <__memset>
    80003d98:	00002797          	auipc	a5,0x2
    80003d9c:	0a078793          	addi	a5,a5,160 # 80005e38 <kmem>
    80003da0:	0007b703          	ld	a4,0(a5)
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	00e4b023          	sd	a4,0(s1)
    80003db0:	0097b023          	sd	s1,0(a5)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret
    80003dc0:	00002517          	auipc	a0,0x2
    80003dc4:	8b050513          	addi	a0,a0,-1872 # 80005670 <digits+0x18>
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	354080e7          	jalr	852(ra) # 8000311c <panic>

0000000080003dd0 <kalloc>:
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00813823          	sd	s0,16(sp)
    80003dd8:	00913423          	sd	s1,8(sp)
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	02010413          	addi	s0,sp,32
    80003de4:	00002797          	auipc	a5,0x2
    80003de8:	05478793          	addi	a5,a5,84 # 80005e38 <kmem>
    80003dec:	0007b483          	ld	s1,0(a5)
    80003df0:	02048063          	beqz	s1,80003e10 <kalloc+0x40>
    80003df4:	0004b703          	ld	a4,0(s1)
    80003df8:	00001637          	lui	a2,0x1
    80003dfc:	00500593          	li	a1,5
    80003e00:	00048513          	mv	a0,s1
    80003e04:	00e7b023          	sd	a4,0(a5)
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	400080e7          	jalr	1024(ra) # 80004208 <__memset>
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	00048513          	mv	a0,s1
    80003e1c:	00813483          	ld	s1,8(sp)
    80003e20:	02010113          	addi	sp,sp,32
    80003e24:	00008067          	ret

0000000080003e28 <initlock>:
    80003e28:	ff010113          	addi	sp,sp,-16
    80003e2c:	00813423          	sd	s0,8(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	00813403          	ld	s0,8(sp)
    80003e38:	00b53423          	sd	a1,8(a0)
    80003e3c:	00052023          	sw	zero,0(a0)
    80003e40:	00053823          	sd	zero,16(a0)
    80003e44:	01010113          	addi	sp,sp,16
    80003e48:	00008067          	ret

0000000080003e4c <acquire>:
    80003e4c:	fe010113          	addi	sp,sp,-32
    80003e50:	00813823          	sd	s0,16(sp)
    80003e54:	00913423          	sd	s1,8(sp)
    80003e58:	00113c23          	sd	ra,24(sp)
    80003e5c:	01213023          	sd	s2,0(sp)
    80003e60:	02010413          	addi	s0,sp,32
    80003e64:	00050493          	mv	s1,a0
    80003e68:	10002973          	csrr	s2,sstatus
    80003e6c:	100027f3          	csrr	a5,sstatus
    80003e70:	ffd7f793          	andi	a5,a5,-3
    80003e74:	10079073          	csrw	sstatus,a5
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	8e4080e7          	jalr	-1820(ra) # 8000275c <mycpu>
    80003e80:	07852783          	lw	a5,120(a0)
    80003e84:	06078e63          	beqz	a5,80003f00 <acquire+0xb4>
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	8d4080e7          	jalr	-1836(ra) # 8000275c <mycpu>
    80003e90:	07852783          	lw	a5,120(a0)
    80003e94:	0004a703          	lw	a4,0(s1)
    80003e98:	0017879b          	addiw	a5,a5,1
    80003e9c:	06f52c23          	sw	a5,120(a0)
    80003ea0:	04071063          	bnez	a4,80003ee0 <acquire+0x94>
    80003ea4:	00100713          	li	a4,1
    80003ea8:	00070793          	mv	a5,a4
    80003eac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003eb0:	0007879b          	sext.w	a5,a5
    80003eb4:	fe079ae3          	bnez	a5,80003ea8 <acquire+0x5c>
    80003eb8:	0ff0000f          	fence
    80003ebc:	fffff097          	auipc	ra,0xfffff
    80003ec0:	8a0080e7          	jalr	-1888(ra) # 8000275c <mycpu>
    80003ec4:	01813083          	ld	ra,24(sp)
    80003ec8:	01013403          	ld	s0,16(sp)
    80003ecc:	00a4b823          	sd	a0,16(s1)
    80003ed0:	00013903          	ld	s2,0(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret
    80003ee0:	0104b903          	ld	s2,16(s1)
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	878080e7          	jalr	-1928(ra) # 8000275c <mycpu>
    80003eec:	faa91ce3          	bne	s2,a0,80003ea4 <acquire+0x58>
    80003ef0:	00001517          	auipc	a0,0x1
    80003ef4:	78850513          	addi	a0,a0,1928 # 80005678 <digits+0x20>
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	224080e7          	jalr	548(ra) # 8000311c <panic>
    80003f00:	00195913          	srli	s2,s2,0x1
    80003f04:	fffff097          	auipc	ra,0xfffff
    80003f08:	858080e7          	jalr	-1960(ra) # 8000275c <mycpu>
    80003f0c:	00197913          	andi	s2,s2,1
    80003f10:	07252e23          	sw	s2,124(a0)
    80003f14:	f75ff06f          	j	80003e88 <acquire+0x3c>

0000000080003f18 <release>:
    80003f18:	fe010113          	addi	sp,sp,-32
    80003f1c:	00813823          	sd	s0,16(sp)
    80003f20:	00113c23          	sd	ra,24(sp)
    80003f24:	00913423          	sd	s1,8(sp)
    80003f28:	01213023          	sd	s2,0(sp)
    80003f2c:	02010413          	addi	s0,sp,32
    80003f30:	00052783          	lw	a5,0(a0)
    80003f34:	00079a63          	bnez	a5,80003f48 <release+0x30>
    80003f38:	00001517          	auipc	a0,0x1
    80003f3c:	74850513          	addi	a0,a0,1864 # 80005680 <digits+0x28>
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	1dc080e7          	jalr	476(ra) # 8000311c <panic>
    80003f48:	01053903          	ld	s2,16(a0)
    80003f4c:	00050493          	mv	s1,a0
    80003f50:	fffff097          	auipc	ra,0xfffff
    80003f54:	80c080e7          	jalr	-2036(ra) # 8000275c <mycpu>
    80003f58:	fea910e3          	bne	s2,a0,80003f38 <release+0x20>
    80003f5c:	0004b823          	sd	zero,16(s1)
    80003f60:	0ff0000f          	fence
    80003f64:	0f50000f          	fence	iorw,ow
    80003f68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	7f0080e7          	jalr	2032(ra) # 8000275c <mycpu>
    80003f74:	100027f3          	csrr	a5,sstatus
    80003f78:	0027f793          	andi	a5,a5,2
    80003f7c:	04079a63          	bnez	a5,80003fd0 <release+0xb8>
    80003f80:	07852783          	lw	a5,120(a0)
    80003f84:	02f05e63          	blez	a5,80003fc0 <release+0xa8>
    80003f88:	fff7871b          	addiw	a4,a5,-1
    80003f8c:	06e52c23          	sw	a4,120(a0)
    80003f90:	00071c63          	bnez	a4,80003fa8 <release+0x90>
    80003f94:	07c52783          	lw	a5,124(a0)
    80003f98:	00078863          	beqz	a5,80003fa8 <release+0x90>
    80003f9c:	100027f3          	csrr	a5,sstatus
    80003fa0:	0027e793          	ori	a5,a5,2
    80003fa4:	10079073          	csrw	sstatus,a5
    80003fa8:	01813083          	ld	ra,24(sp)
    80003fac:	01013403          	ld	s0,16(sp)
    80003fb0:	00813483          	ld	s1,8(sp)
    80003fb4:	00013903          	ld	s2,0(sp)
    80003fb8:	02010113          	addi	sp,sp,32
    80003fbc:	00008067          	ret
    80003fc0:	00001517          	auipc	a0,0x1
    80003fc4:	6e050513          	addi	a0,a0,1760 # 800056a0 <digits+0x48>
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	154080e7          	jalr	340(ra) # 8000311c <panic>
    80003fd0:	00001517          	auipc	a0,0x1
    80003fd4:	6b850513          	addi	a0,a0,1720 # 80005688 <digits+0x30>
    80003fd8:	fffff097          	auipc	ra,0xfffff
    80003fdc:	144080e7          	jalr	324(ra) # 8000311c <panic>

0000000080003fe0 <holding>:
    80003fe0:	00052783          	lw	a5,0(a0)
    80003fe4:	00079663          	bnez	a5,80003ff0 <holding+0x10>
    80003fe8:	00000513          	li	a0,0
    80003fec:	00008067          	ret
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00813823          	sd	s0,16(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	00113c23          	sd	ra,24(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	01053483          	ld	s1,16(a0)
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	754080e7          	jalr	1876(ra) # 8000275c <mycpu>
    80004010:	01813083          	ld	ra,24(sp)
    80004014:	01013403          	ld	s0,16(sp)
    80004018:	40a48533          	sub	a0,s1,a0
    8000401c:	00153513          	seqz	a0,a0
    80004020:	00813483          	ld	s1,8(sp)
    80004024:	02010113          	addi	sp,sp,32
    80004028:	00008067          	ret

000000008000402c <push_off>:
    8000402c:	fe010113          	addi	sp,sp,-32
    80004030:	00813823          	sd	s0,16(sp)
    80004034:	00113c23          	sd	ra,24(sp)
    80004038:	00913423          	sd	s1,8(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	100024f3          	csrr	s1,sstatus
    80004044:	100027f3          	csrr	a5,sstatus
    80004048:	ffd7f793          	andi	a5,a5,-3
    8000404c:	10079073          	csrw	sstatus,a5
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	70c080e7          	jalr	1804(ra) # 8000275c <mycpu>
    80004058:	07852783          	lw	a5,120(a0)
    8000405c:	02078663          	beqz	a5,80004088 <push_off+0x5c>
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	6fc080e7          	jalr	1788(ra) # 8000275c <mycpu>
    80004068:	07852783          	lw	a5,120(a0)
    8000406c:	01813083          	ld	ra,24(sp)
    80004070:	01013403          	ld	s0,16(sp)
    80004074:	0017879b          	addiw	a5,a5,1
    80004078:	06f52c23          	sw	a5,120(a0)
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	02010113          	addi	sp,sp,32
    80004084:	00008067          	ret
    80004088:	0014d493          	srli	s1,s1,0x1
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	6d0080e7          	jalr	1744(ra) # 8000275c <mycpu>
    80004094:	0014f493          	andi	s1,s1,1
    80004098:	06952e23          	sw	s1,124(a0)
    8000409c:	fc5ff06f          	j	80004060 <push_off+0x34>

00000000800040a0 <pop_off>:
    800040a0:	ff010113          	addi	sp,sp,-16
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	00113423          	sd	ra,8(sp)
    800040ac:	01010413          	addi	s0,sp,16
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	6ac080e7          	jalr	1708(ra) # 8000275c <mycpu>
    800040b8:	100027f3          	csrr	a5,sstatus
    800040bc:	0027f793          	andi	a5,a5,2
    800040c0:	04079663          	bnez	a5,8000410c <pop_off+0x6c>
    800040c4:	07852783          	lw	a5,120(a0)
    800040c8:	02f05a63          	blez	a5,800040fc <pop_off+0x5c>
    800040cc:	fff7871b          	addiw	a4,a5,-1
    800040d0:	06e52c23          	sw	a4,120(a0)
    800040d4:	00071c63          	bnez	a4,800040ec <pop_off+0x4c>
    800040d8:	07c52783          	lw	a5,124(a0)
    800040dc:	00078863          	beqz	a5,800040ec <pop_off+0x4c>
    800040e0:	100027f3          	csrr	a5,sstatus
    800040e4:	0027e793          	ori	a5,a5,2
    800040e8:	10079073          	csrw	sstatus,a5
    800040ec:	00813083          	ld	ra,8(sp)
    800040f0:	00013403          	ld	s0,0(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret
    800040fc:	00001517          	auipc	a0,0x1
    80004100:	5a450513          	addi	a0,a0,1444 # 800056a0 <digits+0x48>
    80004104:	fffff097          	auipc	ra,0xfffff
    80004108:	018080e7          	jalr	24(ra) # 8000311c <panic>
    8000410c:	00001517          	auipc	a0,0x1
    80004110:	57c50513          	addi	a0,a0,1404 # 80005688 <digits+0x30>
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	008080e7          	jalr	8(ra) # 8000311c <panic>

000000008000411c <push_on>:
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00113c23          	sd	ra,24(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	100024f3          	csrr	s1,sstatus
    80004134:	100027f3          	csrr	a5,sstatus
    80004138:	0027e793          	ori	a5,a5,2
    8000413c:	10079073          	csrw	sstatus,a5
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	61c080e7          	jalr	1564(ra) # 8000275c <mycpu>
    80004148:	07852783          	lw	a5,120(a0)
    8000414c:	02078663          	beqz	a5,80004178 <push_on+0x5c>
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	60c080e7          	jalr	1548(ra) # 8000275c <mycpu>
    80004158:	07852783          	lw	a5,120(a0)
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	0017879b          	addiw	a5,a5,1
    80004168:	06f52c23          	sw	a5,120(a0)
    8000416c:	00813483          	ld	s1,8(sp)
    80004170:	02010113          	addi	sp,sp,32
    80004174:	00008067          	ret
    80004178:	0014d493          	srli	s1,s1,0x1
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	5e0080e7          	jalr	1504(ra) # 8000275c <mycpu>
    80004184:	0014f493          	andi	s1,s1,1
    80004188:	06952e23          	sw	s1,124(a0)
    8000418c:	fc5ff06f          	j	80004150 <push_on+0x34>

0000000080004190 <pop_on>:
    80004190:	ff010113          	addi	sp,sp,-16
    80004194:	00813023          	sd	s0,0(sp)
    80004198:	00113423          	sd	ra,8(sp)
    8000419c:	01010413          	addi	s0,sp,16
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	5bc080e7          	jalr	1468(ra) # 8000275c <mycpu>
    800041a8:	100027f3          	csrr	a5,sstatus
    800041ac:	0027f793          	andi	a5,a5,2
    800041b0:	04078463          	beqz	a5,800041f8 <pop_on+0x68>
    800041b4:	07852783          	lw	a5,120(a0)
    800041b8:	02f05863          	blez	a5,800041e8 <pop_on+0x58>
    800041bc:	fff7879b          	addiw	a5,a5,-1
    800041c0:	06f52c23          	sw	a5,120(a0)
    800041c4:	07853783          	ld	a5,120(a0)
    800041c8:	00079863          	bnez	a5,800041d8 <pop_on+0x48>
    800041cc:	100027f3          	csrr	a5,sstatus
    800041d0:	ffd7f793          	andi	a5,a5,-3
    800041d4:	10079073          	csrw	sstatus,a5
    800041d8:	00813083          	ld	ra,8(sp)
    800041dc:	00013403          	ld	s0,0(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret
    800041e8:	00001517          	auipc	a0,0x1
    800041ec:	4e050513          	addi	a0,a0,1248 # 800056c8 <digits+0x70>
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	f2c080e7          	jalr	-212(ra) # 8000311c <panic>
    800041f8:	00001517          	auipc	a0,0x1
    800041fc:	4b050513          	addi	a0,a0,1200 # 800056a8 <digits+0x50>
    80004200:	fffff097          	auipc	ra,0xfffff
    80004204:	f1c080e7          	jalr	-228(ra) # 8000311c <panic>

0000000080004208 <__memset>:
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00813423          	sd	s0,8(sp)
    80004210:	01010413          	addi	s0,sp,16
    80004214:	1a060e63          	beqz	a2,800043d0 <__memset+0x1c8>
    80004218:	40a007b3          	neg	a5,a0
    8000421c:	0077f793          	andi	a5,a5,7
    80004220:	00778693          	addi	a3,a5,7
    80004224:	00b00813          	li	a6,11
    80004228:	0ff5f593          	andi	a1,a1,255
    8000422c:	fff6071b          	addiw	a4,a2,-1
    80004230:	1b06e663          	bltu	a3,a6,800043dc <__memset+0x1d4>
    80004234:	1cd76463          	bltu	a4,a3,800043fc <__memset+0x1f4>
    80004238:	1a078e63          	beqz	a5,800043f4 <__memset+0x1ec>
    8000423c:	00b50023          	sb	a1,0(a0)
    80004240:	00100713          	li	a4,1
    80004244:	1ae78463          	beq	a5,a4,800043ec <__memset+0x1e4>
    80004248:	00b500a3          	sb	a1,1(a0)
    8000424c:	00200713          	li	a4,2
    80004250:	1ae78a63          	beq	a5,a4,80004404 <__memset+0x1fc>
    80004254:	00b50123          	sb	a1,2(a0)
    80004258:	00300713          	li	a4,3
    8000425c:	18e78463          	beq	a5,a4,800043e4 <__memset+0x1dc>
    80004260:	00b501a3          	sb	a1,3(a0)
    80004264:	00400713          	li	a4,4
    80004268:	1ae78263          	beq	a5,a4,8000440c <__memset+0x204>
    8000426c:	00b50223          	sb	a1,4(a0)
    80004270:	00500713          	li	a4,5
    80004274:	1ae78063          	beq	a5,a4,80004414 <__memset+0x20c>
    80004278:	00b502a3          	sb	a1,5(a0)
    8000427c:	00700713          	li	a4,7
    80004280:	18e79e63          	bne	a5,a4,8000441c <__memset+0x214>
    80004284:	00b50323          	sb	a1,6(a0)
    80004288:	00700e93          	li	t4,7
    8000428c:	00859713          	slli	a4,a1,0x8
    80004290:	00e5e733          	or	a4,a1,a4
    80004294:	01059e13          	slli	t3,a1,0x10
    80004298:	01c76e33          	or	t3,a4,t3
    8000429c:	01859313          	slli	t1,a1,0x18
    800042a0:	006e6333          	or	t1,t3,t1
    800042a4:	02059893          	slli	a7,a1,0x20
    800042a8:	40f60e3b          	subw	t3,a2,a5
    800042ac:	011368b3          	or	a7,t1,a7
    800042b0:	02859813          	slli	a6,a1,0x28
    800042b4:	0108e833          	or	a6,a7,a6
    800042b8:	03059693          	slli	a3,a1,0x30
    800042bc:	003e589b          	srliw	a7,t3,0x3
    800042c0:	00d866b3          	or	a3,a6,a3
    800042c4:	03859713          	slli	a4,a1,0x38
    800042c8:	00389813          	slli	a6,a7,0x3
    800042cc:	00f507b3          	add	a5,a0,a5
    800042d0:	00e6e733          	or	a4,a3,a4
    800042d4:	000e089b          	sext.w	a7,t3
    800042d8:	00f806b3          	add	a3,a6,a5
    800042dc:	00e7b023          	sd	a4,0(a5)
    800042e0:	00878793          	addi	a5,a5,8
    800042e4:	fed79ce3          	bne	a5,a3,800042dc <__memset+0xd4>
    800042e8:	ff8e7793          	andi	a5,t3,-8
    800042ec:	0007871b          	sext.w	a4,a5
    800042f0:	01d787bb          	addw	a5,a5,t4
    800042f4:	0ce88e63          	beq	a7,a4,800043d0 <__memset+0x1c8>
    800042f8:	00f50733          	add	a4,a0,a5
    800042fc:	00b70023          	sb	a1,0(a4)
    80004300:	0017871b          	addiw	a4,a5,1
    80004304:	0cc77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004308:	00e50733          	add	a4,a0,a4
    8000430c:	00b70023          	sb	a1,0(a4)
    80004310:	0027871b          	addiw	a4,a5,2
    80004314:	0ac77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004318:	00e50733          	add	a4,a0,a4
    8000431c:	00b70023          	sb	a1,0(a4)
    80004320:	0037871b          	addiw	a4,a5,3
    80004324:	0ac77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004328:	00e50733          	add	a4,a0,a4
    8000432c:	00b70023          	sb	a1,0(a4)
    80004330:	0047871b          	addiw	a4,a5,4
    80004334:	08c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004338:	00e50733          	add	a4,a0,a4
    8000433c:	00b70023          	sb	a1,0(a4)
    80004340:	0057871b          	addiw	a4,a5,5
    80004344:	08c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004348:	00e50733          	add	a4,a0,a4
    8000434c:	00b70023          	sb	a1,0(a4)
    80004350:	0067871b          	addiw	a4,a5,6
    80004354:	06c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004358:	00e50733          	add	a4,a0,a4
    8000435c:	00b70023          	sb	a1,0(a4)
    80004360:	0077871b          	addiw	a4,a5,7
    80004364:	06c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004368:	00e50733          	add	a4,a0,a4
    8000436c:	00b70023          	sb	a1,0(a4)
    80004370:	0087871b          	addiw	a4,a5,8
    80004374:	04c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004378:	00e50733          	add	a4,a0,a4
    8000437c:	00b70023          	sb	a1,0(a4)
    80004380:	0097871b          	addiw	a4,a5,9
    80004384:	04c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004388:	00e50733          	add	a4,a0,a4
    8000438c:	00b70023          	sb	a1,0(a4)
    80004390:	00a7871b          	addiw	a4,a5,10
    80004394:	02c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004398:	00e50733          	add	a4,a0,a4
    8000439c:	00b70023          	sb	a1,0(a4)
    800043a0:	00b7871b          	addiw	a4,a5,11
    800043a4:	02c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    800043a8:	00e50733          	add	a4,a0,a4
    800043ac:	00b70023          	sb	a1,0(a4)
    800043b0:	00c7871b          	addiw	a4,a5,12
    800043b4:	00c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    800043b8:	00e50733          	add	a4,a0,a4
    800043bc:	00b70023          	sb	a1,0(a4)
    800043c0:	00d7879b          	addiw	a5,a5,13
    800043c4:	00c7f663          	bgeu	a5,a2,800043d0 <__memset+0x1c8>
    800043c8:	00f507b3          	add	a5,a0,a5
    800043cc:	00b78023          	sb	a1,0(a5)
    800043d0:	00813403          	ld	s0,8(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret
    800043dc:	00b00693          	li	a3,11
    800043e0:	e55ff06f          	j	80004234 <__memset+0x2c>
    800043e4:	00300e93          	li	t4,3
    800043e8:	ea5ff06f          	j	8000428c <__memset+0x84>
    800043ec:	00100e93          	li	t4,1
    800043f0:	e9dff06f          	j	8000428c <__memset+0x84>
    800043f4:	00000e93          	li	t4,0
    800043f8:	e95ff06f          	j	8000428c <__memset+0x84>
    800043fc:	00000793          	li	a5,0
    80004400:	ef9ff06f          	j	800042f8 <__memset+0xf0>
    80004404:	00200e93          	li	t4,2
    80004408:	e85ff06f          	j	8000428c <__memset+0x84>
    8000440c:	00400e93          	li	t4,4
    80004410:	e7dff06f          	j	8000428c <__memset+0x84>
    80004414:	00500e93          	li	t4,5
    80004418:	e75ff06f          	j	8000428c <__memset+0x84>
    8000441c:	00600e93          	li	t4,6
    80004420:	e6dff06f          	j	8000428c <__memset+0x84>

0000000080004424 <__memmove>:
    80004424:	ff010113          	addi	sp,sp,-16
    80004428:	00813423          	sd	s0,8(sp)
    8000442c:	01010413          	addi	s0,sp,16
    80004430:	0e060863          	beqz	a2,80004520 <__memmove+0xfc>
    80004434:	fff6069b          	addiw	a3,a2,-1
    80004438:	0006881b          	sext.w	a6,a3
    8000443c:	0ea5e863          	bltu	a1,a0,8000452c <__memmove+0x108>
    80004440:	00758713          	addi	a4,a1,7
    80004444:	00a5e7b3          	or	a5,a1,a0
    80004448:	40a70733          	sub	a4,a4,a0
    8000444c:	0077f793          	andi	a5,a5,7
    80004450:	00f73713          	sltiu	a4,a4,15
    80004454:	00174713          	xori	a4,a4,1
    80004458:	0017b793          	seqz	a5,a5
    8000445c:	00e7f7b3          	and	a5,a5,a4
    80004460:	10078863          	beqz	a5,80004570 <__memmove+0x14c>
    80004464:	00900793          	li	a5,9
    80004468:	1107f463          	bgeu	a5,a6,80004570 <__memmove+0x14c>
    8000446c:	0036581b          	srliw	a6,a2,0x3
    80004470:	fff8081b          	addiw	a6,a6,-1
    80004474:	02081813          	slli	a6,a6,0x20
    80004478:	01d85893          	srli	a7,a6,0x1d
    8000447c:	00858813          	addi	a6,a1,8
    80004480:	00058793          	mv	a5,a1
    80004484:	00050713          	mv	a4,a0
    80004488:	01088833          	add	a6,a7,a6
    8000448c:	0007b883          	ld	a7,0(a5)
    80004490:	00878793          	addi	a5,a5,8
    80004494:	00870713          	addi	a4,a4,8
    80004498:	ff173c23          	sd	a7,-8(a4)
    8000449c:	ff0798e3          	bne	a5,a6,8000448c <__memmove+0x68>
    800044a0:	ff867713          	andi	a4,a2,-8
    800044a4:	02071793          	slli	a5,a4,0x20
    800044a8:	0207d793          	srli	a5,a5,0x20
    800044ac:	00f585b3          	add	a1,a1,a5
    800044b0:	40e686bb          	subw	a3,a3,a4
    800044b4:	00f507b3          	add	a5,a0,a5
    800044b8:	06e60463          	beq	a2,a4,80004520 <__memmove+0xfc>
    800044bc:	0005c703          	lbu	a4,0(a1)
    800044c0:	00e78023          	sb	a4,0(a5)
    800044c4:	04068e63          	beqz	a3,80004520 <__memmove+0xfc>
    800044c8:	0015c603          	lbu	a2,1(a1)
    800044cc:	00100713          	li	a4,1
    800044d0:	00c780a3          	sb	a2,1(a5)
    800044d4:	04e68663          	beq	a3,a4,80004520 <__memmove+0xfc>
    800044d8:	0025c603          	lbu	a2,2(a1)
    800044dc:	00200713          	li	a4,2
    800044e0:	00c78123          	sb	a2,2(a5)
    800044e4:	02e68e63          	beq	a3,a4,80004520 <__memmove+0xfc>
    800044e8:	0035c603          	lbu	a2,3(a1)
    800044ec:	00300713          	li	a4,3
    800044f0:	00c781a3          	sb	a2,3(a5)
    800044f4:	02e68663          	beq	a3,a4,80004520 <__memmove+0xfc>
    800044f8:	0045c603          	lbu	a2,4(a1)
    800044fc:	00400713          	li	a4,4
    80004500:	00c78223          	sb	a2,4(a5)
    80004504:	00e68e63          	beq	a3,a4,80004520 <__memmove+0xfc>
    80004508:	0055c603          	lbu	a2,5(a1)
    8000450c:	00500713          	li	a4,5
    80004510:	00c782a3          	sb	a2,5(a5)
    80004514:	00e68663          	beq	a3,a4,80004520 <__memmove+0xfc>
    80004518:	0065c703          	lbu	a4,6(a1)
    8000451c:	00e78323          	sb	a4,6(a5)
    80004520:	00813403          	ld	s0,8(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret
    8000452c:	02061713          	slli	a4,a2,0x20
    80004530:	02075713          	srli	a4,a4,0x20
    80004534:	00e587b3          	add	a5,a1,a4
    80004538:	f0f574e3          	bgeu	a0,a5,80004440 <__memmove+0x1c>
    8000453c:	02069613          	slli	a2,a3,0x20
    80004540:	02065613          	srli	a2,a2,0x20
    80004544:	fff64613          	not	a2,a2
    80004548:	00e50733          	add	a4,a0,a4
    8000454c:	00c78633          	add	a2,a5,a2
    80004550:	fff7c683          	lbu	a3,-1(a5)
    80004554:	fff78793          	addi	a5,a5,-1
    80004558:	fff70713          	addi	a4,a4,-1
    8000455c:	00d70023          	sb	a3,0(a4)
    80004560:	fec798e3          	bne	a5,a2,80004550 <__memmove+0x12c>
    80004564:	00813403          	ld	s0,8(sp)
    80004568:	01010113          	addi	sp,sp,16
    8000456c:	00008067          	ret
    80004570:	02069713          	slli	a4,a3,0x20
    80004574:	02075713          	srli	a4,a4,0x20
    80004578:	00170713          	addi	a4,a4,1
    8000457c:	00e50733          	add	a4,a0,a4
    80004580:	00050793          	mv	a5,a0
    80004584:	0005c683          	lbu	a3,0(a1)
    80004588:	00178793          	addi	a5,a5,1
    8000458c:	00158593          	addi	a1,a1,1
    80004590:	fed78fa3          	sb	a3,-1(a5)
    80004594:	fee798e3          	bne	a5,a4,80004584 <__memmove+0x160>
    80004598:	f89ff06f          	j	80004520 <__memmove+0xfc>

000000008000459c <__putc>:
    8000459c:	fe010113          	addi	sp,sp,-32
    800045a0:	00813823          	sd	s0,16(sp)
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	02010413          	addi	s0,sp,32
    800045ac:	00050793          	mv	a5,a0
    800045b0:	fef40593          	addi	a1,s0,-17
    800045b4:	00100613          	li	a2,1
    800045b8:	00000513          	li	a0,0
    800045bc:	fef407a3          	sb	a5,-17(s0)
    800045c0:	fffff097          	auipc	ra,0xfffff
    800045c4:	b3c080e7          	jalr	-1220(ra) # 800030fc <console_write>
    800045c8:	01813083          	ld	ra,24(sp)
    800045cc:	01013403          	ld	s0,16(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret

00000000800045d8 <__getc>:
    800045d8:	fe010113          	addi	sp,sp,-32
    800045dc:	00813823          	sd	s0,16(sp)
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	02010413          	addi	s0,sp,32
    800045e8:	fe840593          	addi	a1,s0,-24
    800045ec:	00100613          	li	a2,1
    800045f0:	00000513          	li	a0,0
    800045f4:	fffff097          	auipc	ra,0xfffff
    800045f8:	ae8080e7          	jalr	-1304(ra) # 800030dc <console_read>
    800045fc:	fe844503          	lbu	a0,-24(s0)
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret

0000000080004610 <console_handler>:
    80004610:	fe010113          	addi	sp,sp,-32
    80004614:	00813823          	sd	s0,16(sp)
    80004618:	00113c23          	sd	ra,24(sp)
    8000461c:	00913423          	sd	s1,8(sp)
    80004620:	02010413          	addi	s0,sp,32
    80004624:	14202773          	csrr	a4,scause
    80004628:	100027f3          	csrr	a5,sstatus
    8000462c:	0027f793          	andi	a5,a5,2
    80004630:	06079e63          	bnez	a5,800046ac <console_handler+0x9c>
    80004634:	00074c63          	bltz	a4,8000464c <console_handler+0x3c>
    80004638:	01813083          	ld	ra,24(sp)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	02010113          	addi	sp,sp,32
    80004648:	00008067          	ret
    8000464c:	0ff77713          	andi	a4,a4,255
    80004650:	00900793          	li	a5,9
    80004654:	fef712e3          	bne	a4,a5,80004638 <console_handler+0x28>
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	6dc080e7          	jalr	1756(ra) # 80002d34 <plic_claim>
    80004660:	00a00793          	li	a5,10
    80004664:	00050493          	mv	s1,a0
    80004668:	02f50c63          	beq	a0,a5,800046a0 <console_handler+0x90>
    8000466c:	fc0506e3          	beqz	a0,80004638 <console_handler+0x28>
    80004670:	00050593          	mv	a1,a0
    80004674:	00001517          	auipc	a0,0x1
    80004678:	f5c50513          	addi	a0,a0,-164 # 800055d0 <_ZZ12printIntegermE6digits+0x518>
    8000467c:	fffff097          	auipc	ra,0xfffff
    80004680:	afc080e7          	jalr	-1284(ra) # 80003178 <__printf>
    80004684:	01013403          	ld	s0,16(sp)
    80004688:	01813083          	ld	ra,24(sp)
    8000468c:	00048513          	mv	a0,s1
    80004690:	00813483          	ld	s1,8(sp)
    80004694:	02010113          	addi	sp,sp,32
    80004698:	ffffe317          	auipc	t1,0xffffe
    8000469c:	6d430067          	jr	1748(t1) # 80002d6c <plic_complete>
    800046a0:	fffff097          	auipc	ra,0xfffff
    800046a4:	3e0080e7          	jalr	992(ra) # 80003a80 <uartintr>
    800046a8:	fddff06f          	j	80004684 <console_handler+0x74>
    800046ac:	00001517          	auipc	a0,0x1
    800046b0:	02450513          	addi	a0,a0,36 # 800056d0 <digits+0x78>
    800046b4:	fffff097          	auipc	ra,0xfffff
    800046b8:	a68080e7          	jalr	-1432(ra) # 8000311c <panic>
	...
