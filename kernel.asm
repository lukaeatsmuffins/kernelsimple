
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7c813103          	ld	sp,1992(sp) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4ed010ef          	jal	ra,80001d08 <start>

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
    80001150:	00004797          	auipc	a5,0x4
    80001154:	71078793          	addi	a5,a5,1808 # 80005860 <_ZN9Scheduler16readyThreadQueueE>
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
    80001178:	00004797          	auipc	a5,0x4
    8000117c:	6e878793          	addi	a5,a5,1768 # 80005860 <_ZN9Scheduler16readyThreadQueueE>
    80001180:	0007b503          	ld	a0,0(a5)
    80001184:	04050263          	beqz	a0,800011c8 <_ZN9Scheduler3getEv+0x64>

        Elem *elem = head;
        head = head->next;
    80001188:	00853783          	ld	a5,8(a0)
    8000118c:	00004717          	auipc	a4,0x4
    80001190:	6cf73a23          	sd	a5,1748(a4) # 80005860 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001194:	02078463          	beqz	a5,800011bc <_ZN9Scheduler3getEv+0x58>

        T *ret = elem->data;
    80001198:	00053483          	ld	s1,0(a0)
        delete elem;
    8000119c:	00000097          	auipc	ra,0x0
    800011a0:	6cc080e7          	jalr	1740(ra) # 80001868 <_ZdlPv>
}
    800011a4:	00048513          	mv	a0,s1
    800011a8:	01813083          	ld	ra,24(sp)
    800011ac:	01013403          	ld	s0,16(sp)
    800011b0:	00813483          	ld	s1,8(sp)
    800011b4:	02010113          	addi	sp,sp,32
    800011b8:	00008067          	ret
        if (!head) { tail = 0; }
    800011bc:	00004797          	auipc	a5,0x4
    800011c0:	6a07b623          	sd	zero,1708(a5) # 80005868 <_ZN9Scheduler16readyThreadQueueE+0x8>
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
    800011fc:	00004797          	auipc	a5,0x4
    80001200:	66478793          	addi	a5,a5,1636 # 80005860 <_ZN9Scheduler16readyThreadQueueE>
    80001204:	0087b783          	ld	a5,8(a5)
    80001208:	02078263          	beqz	a5,8000122c <_ZN9Scheduler3putEP3TCB+0x5c>
            tail->next = elem;
    8000120c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001210:	00004797          	auipc	a5,0x4
    80001214:	64a7bc23          	sd	a0,1624(a5) # 80005868 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001218:	01813083          	ld	ra,24(sp)
    8000121c:	01013403          	ld	s0,16(sp)
    80001220:	00813483          	ld	s1,8(sp)
    80001224:	02010113          	addi	sp,sp,32
    80001228:	00008067          	ret
            head = tail = elem;
    8000122c:	00004797          	auipc	a5,0x4
    80001230:	63478793          	addi	a5,a5,1588 # 80005860 <_ZN9Scheduler16readyThreadQueueE>
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
    800012e0:	94c080e7          	jalr	-1716(ra) # 80001c28 <_ZN3TCB5yieldEv>
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
    80001300:	d0450513          	addi	a0,a0,-764 # 80005000 <kvmincrease+0xef0>
    80001304:	00000097          	auipc	ra,0x0
    80001308:	5b4080e7          	jalr	1460(ra) # 800018b8 <_Z11printStringPKc>
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
    80001344:	cd850513          	addi	a0,a0,-808 # 80005018 <kvmincrease+0xf08>
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	570080e7          	jalr	1392(ra) # 800018b8 <_Z11printStringPKc>
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
    800013b4:	c8050513          	addi	a0,a0,-896 # 80005030 <kvmincrease+0xf20>
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	500080e7          	jalr	1280(ra) # 800018b8 <_Z11printStringPKc>
        printInteger(i);
    800013c0:	00048513          	mv	a0,s1
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	564080e7          	jalr	1380(ra) # 80001928 <_Z12printIntegerm>
        printString("\n");
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	d4450513          	addi	a0,a0,-700 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	4e4080e7          	jalr	1252(ra) # 800018b8 <_Z11printStringPKc>
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
    8000144c:	bf050513          	addi	a0,a0,-1040 # 80005038 <kvmincrease+0xf28>
    80001450:	00000097          	auipc	ra,0x0
    80001454:	468080e7          	jalr	1128(ra) # 800018b8 <_Z11printStringPKc>
        printInteger(i);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	4cc080e7          	jalr	1228(ra) # 80001928 <_Z12printIntegerm>
        printString("\n");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	cac50513          	addi	a0,a0,-852 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	44c080e7          	jalr	1100(ra) # 800018b8 <_Z11printStringPKc>
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
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80005040 <kvmincrease+0xf30>
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	3fc080e7          	jalr	1020(ra) # 800018b8 <_Z11printStringPKc>
        printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	460080e7          	jalr	1120(ra) # 80001928 <_Z12printIntegerm>
        printString("\n");
    800014d0:	00004517          	auipc	a0,0x4
    800014d4:	c4050513          	addi	a0,a0,-960 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	3e0080e7          	jalr	992(ra) # 800018b8 <_Z11printStringPKc>
    for (; i < 3; i++)
    800014e0:	0014849b          	addiw	s1,s1,1
    800014e4:	0ff4f493          	andi	s1,s1,255
    800014e8:	fc5ff06f          	j	800014ac <_Z11workerBodyCv+0x1c>
    }

    printString("C: yield\n");
    800014ec:	00004517          	auipc	a0,0x4
    800014f0:	b5c50513          	addi	a0,a0,-1188 # 80005048 <kvmincrease+0xf38>
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	3c4080e7          	jalr	964(ra) # 800018b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014fc:	00700313          	li	t1,7
    TCB::yield();
    80001500:	00000097          	auipc	ra,0x0
    80001504:	728080e7          	jalr	1832(ra) # 80001c28 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001508:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b4c50513          	addi	a0,a0,-1204 # 80005058 <kvmincrease+0xf48>
    80001514:	00000097          	auipc	ra,0x0
    80001518:	3a4080e7          	jalr	932(ra) # 800018b8 <_Z11printStringPKc>
    printInteger(t1);
    8000151c:	00090513          	mv	a0,s2
    80001520:	00000097          	auipc	ra,0x0
    80001524:	408080e7          	jalr	1032(ra) # 80001928 <_Z12printIntegerm>
    printString("\n");
    80001528:	00004517          	auipc	a0,0x4
    8000152c:	be850513          	addi	a0,a0,-1048 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    80001530:	00000097          	auipc	ra,0x0
    80001534:	388080e7          	jalr	904(ra) # 800018b8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001538:	00c00513          	li	a0,12
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	d38080e7          	jalr	-712(ra) # 80001274 <_ZL9fibonaccim>
    80001544:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001548:	00004517          	auipc	a0,0x4
    8000154c:	b1850513          	addi	a0,a0,-1256 # 80005060 <kvmincrease+0xf50>
    80001550:	00000097          	auipc	ra,0x0
    80001554:	368080e7          	jalr	872(ra) # 800018b8 <_Z11printStringPKc>
    printInteger(result);
    80001558:	00090513          	mv	a0,s2
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	3cc080e7          	jalr	972(ra) # 80001928 <_Z12printIntegerm>
    printString("\n");
    80001564:	00004517          	auipc	a0,0x4
    80001568:	bac50513          	addi	a0,a0,-1108 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	34c080e7          	jalr	844(ra) # 800018b8 <_Z11printStringPKc>

    for (; i < 6; i++)
    80001574:	00500793          	li	a5,5
    80001578:	0297ee63          	bltu	a5,s1,800015b4 <_Z11workerBodyCv+0x124>
    {
        printString("C: i=");
    8000157c:	00004517          	auipc	a0,0x4
    80001580:	ac450513          	addi	a0,a0,-1340 # 80005040 <kvmincrease+0xf30>
    80001584:	00000097          	auipc	ra,0x0
    80001588:	334080e7          	jalr	820(ra) # 800018b8 <_Z11printStringPKc>
        printInteger(i);
    8000158c:	00048513          	mv	a0,s1
    80001590:	00000097          	auipc	ra,0x0
    80001594:	398080e7          	jalr	920(ra) # 80001928 <_Z12printIntegerm>
        printString("\n");
    80001598:	00004517          	auipc	a0,0x4
    8000159c:	b7850513          	addi	a0,a0,-1160 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	318080e7          	jalr	792(ra) # 800018b8 <_Z11printStringPKc>
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
    800015f4:	a8050513          	addi	a0,a0,-1408 # 80005070 <kvmincrease+0xf60>
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	2c0080e7          	jalr	704(ra) # 800018b8 <_Z11printStringPKc>
        printInteger(i);
    80001600:	00048513          	mv	a0,s1
    80001604:	00000097          	auipc	ra,0x0
    80001608:	324080e7          	jalr	804(ra) # 80001928 <_Z12printIntegerm>
        printString("\n");
    8000160c:	00004517          	auipc	a0,0x4
    80001610:	b0450513          	addi	a0,a0,-1276 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    80001614:	00000097          	auipc	ra,0x0
    80001618:	2a4080e7          	jalr	676(ra) # 800018b8 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000161c:	0014849b          	addiw	s1,s1,1
    80001620:	0ff4f493          	andi	s1,s1,255
    80001624:	fc5ff06f          	j	800015e8 <_Z11workerBodyDv+0x1c>
    }

    printString("D: yield\n");
    80001628:	00004517          	auipc	a0,0x4
    8000162c:	a5050513          	addi	a0,a0,-1456 # 80005078 <kvmincrease+0xf68>
    80001630:	00000097          	auipc	ra,0x0
    80001634:	288080e7          	jalr	648(ra) # 800018b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001638:	00500313          	li	t1,5
    TCB::yield();
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	5ec080e7          	jalr	1516(ra) # 80001c28 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001644:	01000513          	li	a0,16
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	c2c080e7          	jalr	-980(ra) # 80001274 <_ZL9fibonaccim>
    80001650:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001654:	00004517          	auipc	a0,0x4
    80001658:	a3450513          	addi	a0,a0,-1484 # 80005088 <kvmincrease+0xf78>
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	25c080e7          	jalr	604(ra) # 800018b8 <_Z11printStringPKc>
    printInteger(result);
    80001664:	00090513          	mv	a0,s2
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	2c0080e7          	jalr	704(ra) # 80001928 <_Z12printIntegerm>
    printString("\n");
    80001670:	00004517          	auipc	a0,0x4
    80001674:	aa050513          	addi	a0,a0,-1376 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	240080e7          	jalr	576(ra) # 800018b8 <_Z11printStringPKc>

    for (; i < 16; i++)
    80001680:	00f00793          	li	a5,15
    80001684:	0297ee63          	bltu	a5,s1,800016c0 <_Z11workerBodyDv+0xf4>
    {
        printString("D: i=");
    80001688:	00004517          	auipc	a0,0x4
    8000168c:	9e850513          	addi	a0,a0,-1560 # 80005070 <kvmincrease+0xf60>
    80001690:	00000097          	auipc	ra,0x0
    80001694:	228080e7          	jalr	552(ra) # 800018b8 <_Z11printStringPKc>
        printInteger(i);
    80001698:	00048513          	mv	a0,s1
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	28c080e7          	jalr	652(ra) # 80001928 <_Z12printIntegerm>
        printString("\n");
    800016a4:	00004517          	auipc	a0,0x4
    800016a8:	a6c50513          	addi	a0,a0,-1428 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	20c080e7          	jalr	524(ra) # 800018b8 <_Z11printStringPKc>
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
    80001778:	0a07b623          	sd	zero,172(a5) # 80005820 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	520080e7          	jalr	1312(ra) # 80001c9c <_ZN3TCB8dispatchEv>
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
    800017a4:	08070713          	addi	a4,a4,128 # 80005820 <_ZN3TCB16timeSliceCounterE>
    800017a8:	00073783          	ld	a5,0(a4)
    800017ac:	00178793          	addi	a5,a5,1
    800017b0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800017b4:	00004717          	auipc	a4,0x4
    800017b8:	07470713          	addi	a4,a4,116 # 80005828 <_ZN3TCB7runningE>
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
    800017ec:	0207bc23          	sd	zero,56(a5) # 80005820 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	4ac080e7          	jalr	1196(ra) # 80001c9c <_ZN3TCB8dispatchEv>
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
    80001810:	858080e7          	jalr	-1960(ra) # 80004064 <console_handler>
    80001814:	f2dff06f          	j	80001740 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080001818 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001828:	00002097          	auipc	ra,0x2
    8000182c:	670080e7          	jalr	1648(ra) # 80003e98 <__mem_alloc>
}
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_Znam>:

void *operator new[](size_t n)
{
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00113423          	sd	ra,8(sp)
    80001848:	00813023          	sd	s0,0(sp)
    8000184c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001850:	00002097          	auipc	ra,0x2
    80001854:	648080e7          	jalr	1608(ra) # 80003e98 <__mem_alloc>
}
    80001858:	00813083          	ld	ra,8(sp)
    8000185c:	00013403          	ld	s0,0(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00113423          	sd	ra,8(sp)
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001878:	00002097          	auipc	ra,0x2
    8000187c:	554080e7          	jalr	1364(ra) # 80003dcc <__mem_free>
}
    80001880:	00813083          	ld	ra,8(sp)
    80001884:	00013403          	ld	s0,0(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800018a0:	00002097          	auipc	ra,0x2
    800018a4:	52c080e7          	jalr	1324(ra) # 80003dcc <__mem_free>
    800018a8:	00813083          	ld	ra,8(sp)
    800018ac:	00013403          	ld	s0,0(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800018b8:	fd010113          	addi	sp,sp,-48
    800018bc:	02113423          	sd	ra,40(sp)
    800018c0:	02813023          	sd	s0,32(sp)
    800018c4:	00913c23          	sd	s1,24(sp)
    800018c8:	01213823          	sd	s2,16(sp)
    800018cc:	03010413          	addi	s0,sp,48
    800018d0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800018d4:	100027f3          	csrr	a5,sstatus
    800018d8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800018dc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800018e0:	00200793          	li	a5,2
    800018e4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800018e8:	0004c503          	lbu	a0,0(s1)
    800018ec:	00050a63          	beqz	a0,80001900 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800018f0:	00002097          	auipc	ra,0x2
    800018f4:	700080e7          	jalr	1792(ra) # 80003ff0 <__putc>
        string++;
    800018f8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800018fc:	fedff06f          	j	800018e8 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001900:	0009091b          	sext.w	s2,s2
    80001904:	00297913          	andi	s2,s2,2
    80001908:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000190c:	10092073          	csrs	sstatus,s2
}
    80001910:	02813083          	ld	ra,40(sp)
    80001914:	02013403          	ld	s0,32(sp)
    80001918:	01813483          	ld	s1,24(sp)
    8000191c:	01013903          	ld	s2,16(sp)
    80001920:	03010113          	addi	sp,sp,48
    80001924:	00008067          	ret

0000000080001928 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001928:	fc010113          	addi	sp,sp,-64
    8000192c:	02113c23          	sd	ra,56(sp)
    80001930:	02813823          	sd	s0,48(sp)
    80001934:	02913423          	sd	s1,40(sp)
    80001938:	03213023          	sd	s2,32(sp)
    8000193c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001940:	100027f3          	csrr	a5,sstatus
    80001944:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001948:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000194c:	00200793          	li	a5,2
    80001950:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001954:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001958:	00000713          	li	a4,0
    8000195c:	0080006f          	j	80001964 <_Z12printIntegerm+0x3c>
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    80001960:	00068513          	mv	a0,a3
        buf[i++] = digits[x % 10];
    80001964:	00a00793          	li	a5,10
    80001968:	02f5763b          	remuw	a2,a0,a5
    8000196c:	0017049b          	addiw	s1,a4,1
    80001970:	00003697          	auipc	a3,0x3
    80001974:	72868693          	addi	a3,a3,1832 # 80005098 <_ZZ12printIntegermE6digits>
    80001978:	00c686b3          	add	a3,a3,a2
    8000197c:	0006c683          	lbu	a3,0(a3)
    80001980:	fe040613          	addi	a2,s0,-32
    80001984:	00e60733          	add	a4,a2,a4
    80001988:	fed70823          	sb	a3,-16(a4)
    } while ((x /= 10) != 0);
    8000198c:	02f557bb          	divuw	a5,a0,a5
    80001990:	0007869b          	sext.w	a3,a5
        buf[i++] = digits[x % 10];
    80001994:	00048713          	mv	a4,s1
    } while ((x /= 10) != 0);
    80001998:	00900793          	li	a5,9
    8000199c:	fca7e2e3          	bltu	a5,a0,80001960 <_Z12printIntegerm+0x38>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800019a0:	fff4849b          	addiw	s1,s1,-1
    800019a4:	0004ce63          	bltz	s1,800019c0 <_Z12printIntegerm+0x98>
    800019a8:	fe040793          	addi	a5,s0,-32
    800019ac:	009787b3          	add	a5,a5,s1
    800019b0:	ff07c503          	lbu	a0,-16(a5)
    800019b4:	00002097          	auipc	ra,0x2
    800019b8:	63c080e7          	jalr	1596(ra) # 80003ff0 <__putc>
    800019bc:	fe5ff06f          	j	800019a0 <_Z12printIntegerm+0x78>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800019c0:	0009091b          	sext.w	s2,s2
    800019c4:	00297913          	andi	s2,s2,2
    800019c8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800019cc:	10092073          	csrs	sstatus,s2
    800019d0:	03813083          	ld	ra,56(sp)
    800019d4:	03013403          	ld	s0,48(sp)
    800019d8:	02813483          	ld	s1,40(sp)
    800019dc:	02013903          	ld	s2,32(sp)
    800019e0:	04010113          	addi	sp,sp,64
    800019e4:	00008067          	ret

00000000800019e8 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    800019e8:	fb010113          	addi	sp,sp,-80
    800019ec:	04113423          	sd	ra,72(sp)
    800019f0:	04813023          	sd	s0,64(sp)
    800019f4:	02913c23          	sd	s1,56(sp)
    800019f8:	03213823          	sd	s2,48(sp)
    800019fc:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    80001a00:	00000513          	li	a0,0
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	15c080e7          	jalr	348(ra) # 80001b60 <_ZN3TCB12createThreadEPFvvE>
    80001a0c:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001a10:	00004797          	auipc	a5,0x4
    80001a14:	e0a7bc23          	sd	a0,-488(a5) # 80005828 <_ZN3TCB7runningE>

    threads[1] = TCB::createThread(workerBodyA);
    80001a18:	00000517          	auipc	a0,0x0
    80001a1c:	94850513          	addi	a0,a0,-1720 # 80001360 <_Z11workerBodyAv>
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	140080e7          	jalr	320(ra) # 80001b60 <_ZN3TCB12createThreadEPFvvE>
    80001a28:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80001a2c:	00003517          	auipc	a0,0x3
    80001a30:	67c50513          	addi	a0,a0,1660 # 800050a8 <_ZZ12printIntegermE6digits+0x10>
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	e84080e7          	jalr	-380(ra) # 800018b8 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001a3c:	00000517          	auipc	a0,0x0
    80001a40:	9bc50513          	addi	a0,a0,-1604 # 800013f8 <_Z11workerBodyBv>
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	11c080e7          	jalr	284(ra) # 80001b60 <_ZN3TCB12createThreadEPFvvE>
    80001a4c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001a50:	00003517          	auipc	a0,0x3
    80001a54:	67050513          	addi	a0,a0,1648 # 800050c0 <_ZZ12printIntegermE6digits+0x28>
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	e60080e7          	jalr	-416(ra) # 800018b8 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    80001a60:	00000517          	auipc	a0,0x0
    80001a64:	a3050513          	addi	a0,a0,-1488 # 80001490 <_Z11workerBodyCv>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	0f8080e7          	jalr	248(ra) # 80001b60 <_ZN3TCB12createThreadEPFvvE>
    80001a70:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80001a74:	00003517          	auipc	a0,0x3
    80001a78:	66450513          	addi	a0,a0,1636 # 800050d8 <_ZZ12printIntegermE6digits+0x40>
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	e3c080e7          	jalr	-452(ra) # 800018b8 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    80001a84:	00000517          	auipc	a0,0x0
    80001a88:	b4850513          	addi	a0,a0,-1208 # 800015cc <_Z11workerBodyDv>
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	0d4080e7          	jalr	212(ra) # 80001b60 <_ZN3TCB12createThreadEPFvvE>
    80001a94:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80001a98:	00003517          	auipc	a0,0x3
    80001a9c:	65850513          	addi	a0,a0,1624 # 800050f0 <_ZZ12printIntegermE6digits+0x58>
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	e18080e7          	jalr	-488(ra) # 800018b8 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001aa8:	fffff797          	auipc	a5,0xfffff
    80001aac:	55878793          	addi	a5,a5,1368 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001ab0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ab4:	00200793          	li	a5,2
    80001ab8:	1007a073          	csrs	sstatus,a5
    80001abc:	00c0006f          	j	80001ac8 <main+0xe0>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	168080e7          	jalr	360(ra) # 80001c28 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    80001ac8:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished; }
    80001acc:	0287c783          	lbu	a5,40(a5)
    80001ad0:	fe0788e3          	beqz	a5,80001ac0 <main+0xd8>
             threads[2]->isFinished() &&
    80001ad4:	fc843783          	ld	a5,-56(s0)
    80001ad8:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001adc:	fe0782e3          	beqz	a5,80001ac0 <main+0xd8>
             threads[3]->isFinished() &&
    80001ae0:	fd043783          	ld	a5,-48(s0)
    80001ae4:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001ae8:	fc078ce3          	beqz	a5,80001ac0 <main+0xd8>
             threads[4]->isFinished()))
    80001aec:	fd843783          	ld	a5,-40(s0)
    80001af0:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001af4:	fc0786e3          	beqz	a5,80001ac0 <main+0xd8>
    }

    for (auto &thread: threads)
    80001af8:	fb840493          	addi	s1,s0,-72
    80001afc:	0140006f          	j	80001b10 <main+0x128>
    {
        delete thread;
    80001b00:	00090513          	mv	a0,s2
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	d64080e7          	jalr	-668(ra) # 80001868 <_ZdlPv>
    for (auto &thread: threads)
    80001b0c:	00848493          	addi	s1,s1,8
    80001b10:	fe040793          	addi	a5,s0,-32
    80001b14:	02f48063          	beq	s1,a5,80001b34 <main+0x14c>
        delete thread;
    80001b18:	0004b903          	ld	s2,0(s1)
    80001b1c:	fe0908e3          	beqz	s2,80001b0c <main+0x124>
    ~TCB() { delete[] stack; }
    80001b20:	00893503          	ld	a0,8(s2)
    80001b24:	fc050ee3          	beqz	a0,80001b00 <main+0x118>
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	d68080e7          	jalr	-664(ra) # 80001890 <_ZdaPv>
    80001b30:	fd1ff06f          	j	80001b00 <main+0x118>
    }
    printString("Finished\n");
    80001b34:	00003517          	auipc	a0,0x3
    80001b38:	5d450513          	addi	a0,a0,1492 # 80005108 <_ZZ12printIntegermE6digits+0x70>
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	d7c080e7          	jalr	-644(ra) # 800018b8 <_Z11printStringPKc>

    return 0;
}
    80001b44:	00000513          	li	a0,0
    80001b48:	04813083          	ld	ra,72(sp)
    80001b4c:	04013403          	ld	s0,64(sp)
    80001b50:	03813483          	ld	s1,56(sp)
    80001b54:	03013903          	ld	s2,48(sp)
    80001b58:	05010113          	addi	sp,sp,80
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001b60:	fe010113          	addi	sp,sp,-32
    80001b64:	00113c23          	sd	ra,24(sp)
    80001b68:	00813823          	sd	s0,16(sp)
    80001b6c:	00913423          	sd	s1,8(sp)
    80001b70:	01213023          	sd	s2,0(sp)
    80001b74:	02010413          	addi	s0,sp,32
    80001b78:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001b7c:	03000513          	li	a0,48
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	c98080e7          	jalr	-872(ra) # 80001818 <_Znwm>
    80001b88:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001b8c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001b90:	00090a63          	beqz	s2,80001ba4 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001b94:	00002537          	lui	a0,0x2
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	ca8080e7          	jalr	-856(ra) # 80001840 <_Znam>
    80001ba0:	0080006f          	j	80001ba8 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001ba4:	00000513          	li	a0,0
            finished(false)
    80001ba8:	00a4b423          	sd	a0,8(s1)
    80001bac:	00000797          	auipc	a5,0x0
    80001bb0:	09878793          	addi	a5,a5,152 # 80001c44 <_ZN3TCB13threadWrapperEv>
    80001bb4:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001bb8:	02050863          	beqz	a0,80001be8 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001bbc:	000027b7          	lui	a5,0x2
    80001bc0:	00f50533          	add	a0,a0,a5
            finished(false)
    80001bc4:	00a4bc23          	sd	a0,24(s1)
    80001bc8:	00200793          	li	a5,2
    80001bcc:	02f4b023          	sd	a5,32(s1)
    80001bd0:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001bd4:	02090c63          	beqz	s2,80001c0c <_ZN3TCB12createThreadEPFvvE+0xac>
    80001bd8:	00048513          	mv	a0,s1
    80001bdc:	fffff097          	auipc	ra,0xfffff
    80001be0:	5f4080e7          	jalr	1524(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
    80001be4:	0280006f          	j	80001c0c <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001be8:	00000513          	li	a0,0
    80001bec:	fd9ff06f          	j	80001bc4 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001bf0:	00050913          	mv	s2,a0
    80001bf4:	00048513          	mv	a0,s1
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	c70080e7          	jalr	-912(ra) # 80001868 <_ZdlPv>
    80001c00:	00090513          	mv	a0,s2
    80001c04:	00005097          	auipc	ra,0x5
    80001c08:	d34080e7          	jalr	-716(ra) # 80006938 <_Unwind_Resume>
}
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00813483          	ld	s1,8(sp)
    80001c1c:	00013903          	ld	s2,0(sp)
    80001c20:	02010113          	addi	sp,sp,32
    80001c24:	00008067          	ret

0000000080001c28 <_ZN3TCB5yieldEv>:

// Let's scheduler decide the next process.
void TCB::yield()
{
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00813423          	sd	s0,8(sp)
    80001c30:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001c34:	00000073          	ecall
}
    80001c38:	00813403          	ld	s0,8(sp)
    80001c3c:	01010113          	addi	sp,sp,16
    80001c40:	00008067          	ret

0000000080001c44 <_ZN3TCB13threadWrapperEv>:
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    80001c44:	fe010113          	addi	sp,sp,-32
    80001c48:	00113c23          	sd	ra,24(sp)
    80001c4c:	00813823          	sd	s0,16(sp)
    80001c50:	00913423          	sd	s1,8(sp)
    80001c54:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	a80080e7          	jalr	-1408(ra) # 800016d8 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001c60:	00004497          	auipc	s1,0x4
    80001c64:	bc848493          	addi	s1,s1,-1080 # 80005828 <_ZN3TCB7runningE>
    80001c68:	0004b783          	ld	a5,0(s1)
    80001c6c:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001c70:	000780e7          	jalr	a5
    running->setFinished(true);
    80001c74:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001c78:	00100713          	li	a4,1
    80001c7c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	fa8080e7          	jalr	-88(ra) # 80001c28 <_ZN3TCB5yieldEv>
}
    80001c88:	01813083          	ld	ra,24(sp)
    80001c8c:	01013403          	ld	s0,16(sp)
    80001c90:	00813483          	ld	s1,8(sp)
    80001c94:	02010113          	addi	sp,sp,32
    80001c98:	00008067          	ret

0000000080001c9c <_ZN3TCB8dispatchEv>:
{
    80001c9c:	fe010113          	addi	sp,sp,-32
    80001ca0:	00113c23          	sd	ra,24(sp)
    80001ca4:	00813823          	sd	s0,16(sp)
    80001ca8:	00913423          	sd	s1,8(sp)
    80001cac:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001cb0:	00004797          	auipc	a5,0x4
    80001cb4:	b7878793          	addi	a5,a5,-1160 # 80005828 <_ZN3TCB7runningE>
    80001cb8:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return finished; }
    80001cbc:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001cc0:	02078c63          	beqz	a5,80001cf8 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	4a0080e7          	jalr	1184(ra) # 80001164 <_ZN9Scheduler3getEv>
    80001ccc:	00004797          	auipc	a5,0x4
    80001cd0:	b4a7be23          	sd	a0,-1188(a5) # 80005828 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001cd4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001cd8:	01048513          	addi	a0,s1,16
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	434080e7          	jalr	1076(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ce4:	01813083          	ld	ra,24(sp)
    80001ce8:	01013403          	ld	s0,16(sp)
    80001cec:	00813483          	ld	s1,8(sp)
    80001cf0:	02010113          	addi	sp,sp,32
    80001cf4:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001cf8:	00048513          	mv	a0,s1
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	4d4080e7          	jalr	1236(ra) # 800011d0 <_ZN9Scheduler3putEP3TCB>
    80001d04:	fc1ff06f          	j	80001cc4 <_ZN3TCB8dispatchEv+0x28>

0000000080001d08 <start>:
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
    80001d14:	300027f3          	csrr	a5,mstatus
    80001d18:	ffffe737          	lui	a4,0xffffe
    80001d1c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d1f>
    80001d20:	00e7f7b3          	and	a5,a5,a4
    80001d24:	00001737          	lui	a4,0x1
    80001d28:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d2c:	00e7e7b3          	or	a5,a5,a4
    80001d30:	30079073          	csrw	mstatus,a5
    80001d34:	00000797          	auipc	a5,0x0
    80001d38:	16078793          	addi	a5,a5,352 # 80001e94 <system_main>
    80001d3c:	34179073          	csrw	mepc,a5
    80001d40:	00000793          	li	a5,0
    80001d44:	18079073          	csrw	satp,a5
    80001d48:	000107b7          	lui	a5,0x10
    80001d4c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d50:	30279073          	csrw	medeleg,a5
    80001d54:	30379073          	csrw	mideleg,a5
    80001d58:	104027f3          	csrr	a5,sie
    80001d5c:	2227e793          	ori	a5,a5,546
    80001d60:	10479073          	csrw	sie,a5
    80001d64:	fff00793          	li	a5,-1
    80001d68:	00a7d793          	srli	a5,a5,0xa
    80001d6c:	3b079073          	csrw	pmpaddr0,a5
    80001d70:	00f00793          	li	a5,15
    80001d74:	3a079073          	csrw	pmpcfg0,a5
    80001d78:	f14027f3          	csrr	a5,mhartid
    80001d7c:	0200c737          	lui	a4,0x200c
    80001d80:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d84:	0007869b          	sext.w	a3,a5
    80001d88:	00269713          	slli	a4,a3,0x2
    80001d8c:	000f4637          	lui	a2,0xf4
    80001d90:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d94:	00d70733          	add	a4,a4,a3
    80001d98:	0037979b          	slliw	a5,a5,0x3
    80001d9c:	020046b7          	lui	a3,0x2004
    80001da0:	00d787b3          	add	a5,a5,a3
    80001da4:	00c585b3          	add	a1,a1,a2
    80001da8:	00371693          	slli	a3,a4,0x3
    80001dac:	00004717          	auipc	a4,0x4
    80001db0:	ac470713          	addi	a4,a4,-1340 # 80005870 <timer_scratch>
    80001db4:	00b7b023          	sd	a1,0(a5)
    80001db8:	00d70733          	add	a4,a4,a3
    80001dbc:	00f73c23          	sd	a5,24(a4)
    80001dc0:	02c73023          	sd	a2,32(a4)
    80001dc4:	34071073          	csrw	mscratch,a4
    80001dc8:	00000797          	auipc	a5,0x0
    80001dcc:	6e878793          	addi	a5,a5,1768 # 800024b0 <timervec>
    80001dd0:	30579073          	csrw	mtvec,a5
    80001dd4:	300027f3          	csrr	a5,mstatus
    80001dd8:	0087e793          	ori	a5,a5,8
    80001ddc:	30079073          	csrw	mstatus,a5
    80001de0:	304027f3          	csrr	a5,mie
    80001de4:	0807e793          	ori	a5,a5,128
    80001de8:	30479073          	csrw	mie,a5
    80001dec:	f14027f3          	csrr	a5,mhartid
    80001df0:	0007879b          	sext.w	a5,a5
    80001df4:	00078213          	mv	tp,a5
    80001df8:	30200073          	mret
    80001dfc:	00813403          	ld	s0,8(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <timerinit>:
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00813423          	sd	s0,8(sp)
    80001e10:	01010413          	addi	s0,sp,16
    80001e14:	f14027f3          	csrr	a5,mhartid
    80001e18:	0200c737          	lui	a4,0x200c
    80001e1c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e20:	0007869b          	sext.w	a3,a5
    80001e24:	00269713          	slli	a4,a3,0x2
    80001e28:	000f4637          	lui	a2,0xf4
    80001e2c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e30:	00d70733          	add	a4,a4,a3
    80001e34:	0037979b          	slliw	a5,a5,0x3
    80001e38:	020046b7          	lui	a3,0x2004
    80001e3c:	00d787b3          	add	a5,a5,a3
    80001e40:	00c585b3          	add	a1,a1,a2
    80001e44:	00371693          	slli	a3,a4,0x3
    80001e48:	00004717          	auipc	a4,0x4
    80001e4c:	a2870713          	addi	a4,a4,-1496 # 80005870 <timer_scratch>
    80001e50:	00b7b023          	sd	a1,0(a5)
    80001e54:	00d70733          	add	a4,a4,a3
    80001e58:	00f73c23          	sd	a5,24(a4)
    80001e5c:	02c73023          	sd	a2,32(a4)
    80001e60:	34071073          	csrw	mscratch,a4
    80001e64:	00000797          	auipc	a5,0x0
    80001e68:	64c78793          	addi	a5,a5,1612 # 800024b0 <timervec>
    80001e6c:	30579073          	csrw	mtvec,a5
    80001e70:	300027f3          	csrr	a5,mstatus
    80001e74:	0087e793          	ori	a5,a5,8
    80001e78:	30079073          	csrw	mstatus,a5
    80001e7c:	304027f3          	csrr	a5,mie
    80001e80:	0807e793          	ori	a5,a5,128
    80001e84:	30479073          	csrw	mie,a5
    80001e88:	00813403          	ld	s0,8(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret

0000000080001e94 <system_main>:
    80001e94:	fe010113          	addi	sp,sp,-32
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	00113c23          	sd	ra,24(sp)
    80001ea4:	02010413          	addi	s0,sp,32
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	0c4080e7          	jalr	196(ra) # 80001f6c <cpuid>
    80001eb0:	00004497          	auipc	s1,0x4
    80001eb4:	98048493          	addi	s1,s1,-1664 # 80005830 <started>
    80001eb8:	02050263          	beqz	a0,80001edc <system_main+0x48>
    80001ebc:	0004a783          	lw	a5,0(s1)
    80001ec0:	0007879b          	sext.w	a5,a5
    80001ec4:	fe078ce3          	beqz	a5,80001ebc <system_main+0x28>
    80001ec8:	0ff0000f          	fence
    80001ecc:	00003517          	auipc	a0,0x3
    80001ed0:	27c50513          	addi	a0,a0,636 # 80005148 <_ZZ12printIntegermE6digits+0xb0>
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	a78080e7          	jalr	-1416(ra) # 8000294c <panic>
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	9cc080e7          	jalr	-1588(ra) # 800028a8 <consoleinit>
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	158080e7          	jalr	344(ra) # 8000303c <printfinit>
    80001eec:	00003517          	auipc	a0,0x3
    80001ef0:	22450513          	addi	a0,a0,548 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	ab4080e7          	jalr	-1356(ra) # 800029a8 <__printf>
    80001efc:	00003517          	auipc	a0,0x3
    80001f00:	21c50513          	addi	a0,a0,540 # 80005118 <_ZZ12printIntegermE6digits+0x80>
    80001f04:	00001097          	auipc	ra,0x1
    80001f08:	aa4080e7          	jalr	-1372(ra) # 800029a8 <__printf>
    80001f0c:	00003517          	auipc	a0,0x3
    80001f10:	20450513          	addi	a0,a0,516 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	a94080e7          	jalr	-1388(ra) # 800029a8 <__printf>
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	4ac080e7          	jalr	1196(ra) # 800033c8 <kinit>
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	148080e7          	jalr	328(ra) # 8000206c <trapinit>
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	16c080e7          	jalr	364(ra) # 80002098 <trapinithart>
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	5bc080e7          	jalr	1468(ra) # 800024f0 <plicinit>
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	5dc080e7          	jalr	1500(ra) # 80002518 <plicinithart>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	078080e7          	jalr	120(ra) # 80001fbc <userinit>
    80001f4c:	0ff0000f          	fence
    80001f50:	00100793          	li	a5,1
    80001f54:	00003517          	auipc	a0,0x3
    80001f58:	1dc50513          	addi	a0,a0,476 # 80005130 <_ZZ12printIntegermE6digits+0x98>
    80001f5c:	00f4a023          	sw	a5,0(s1)
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	a48080e7          	jalr	-1464(ra) # 800029a8 <__printf>
    80001f68:	0000006f          	j	80001f68 <system_main+0xd4>

0000000080001f6c <cpuid>:
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00813423          	sd	s0,8(sp)
    80001f74:	01010413          	addi	s0,sp,16
    80001f78:	00020513          	mv	a0,tp
    80001f7c:	00813403          	ld	s0,8(sp)
    80001f80:	0005051b          	sext.w	a0,a0
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <mycpu>:
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00813423          	sd	s0,8(sp)
    80001f94:	01010413          	addi	s0,sp,16
    80001f98:	00020793          	mv	a5,tp
    80001f9c:	00813403          	ld	s0,8(sp)
    80001fa0:	0007879b          	sext.w	a5,a5
    80001fa4:	00779793          	slli	a5,a5,0x7
    80001fa8:	00005517          	auipc	a0,0x5
    80001fac:	8f850513          	addi	a0,a0,-1800 # 800068a0 <cpus>
    80001fb0:	00f50533          	add	a0,a0,a5
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <userinit>:
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00813423          	sd	s0,8(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    80001fc8:	00813403          	ld	s0,8(sp)
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00000317          	auipc	t1,0x0
    80001fd4:	a1830067          	jr	-1512(t1) # 800019e8 <main>

0000000080001fd8 <either_copyout>:
    80001fd8:	ff010113          	addi	sp,sp,-16
    80001fdc:	00813023          	sd	s0,0(sp)
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	01010413          	addi	s0,sp,16
    80001fe8:	02051663          	bnez	a0,80002014 <either_copyout+0x3c>
    80001fec:	00058513          	mv	a0,a1
    80001ff0:	00060593          	mv	a1,a2
    80001ff4:	0006861b          	sext.w	a2,a3
    80001ff8:	00002097          	auipc	ra,0x2
    80001ffc:	c5c080e7          	jalr	-932(ra) # 80003c54 <__memmove>
    80002000:	00813083          	ld	ra,8(sp)
    80002004:	00013403          	ld	s0,0(sp)
    80002008:	00000513          	li	a0,0
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret
    80002014:	00003517          	auipc	a0,0x3
    80002018:	15c50513          	addi	a0,a0,348 # 80005170 <_ZZ12printIntegermE6digits+0xd8>
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	930080e7          	jalr	-1744(ra) # 8000294c <panic>

0000000080002024 <either_copyin>:
    80002024:	ff010113          	addi	sp,sp,-16
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	00113423          	sd	ra,8(sp)
    80002030:	01010413          	addi	s0,sp,16
    80002034:	02059463          	bnez	a1,8000205c <either_copyin+0x38>
    80002038:	00060593          	mv	a1,a2
    8000203c:	0006861b          	sext.w	a2,a3
    80002040:	00002097          	auipc	ra,0x2
    80002044:	c14080e7          	jalr	-1004(ra) # 80003c54 <__memmove>
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	00000513          	li	a0,0
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret
    8000205c:	00003517          	auipc	a0,0x3
    80002060:	13c50513          	addi	a0,a0,316 # 80005198 <_ZZ12printIntegermE6digits+0x100>
    80002064:	00001097          	auipc	ra,0x1
    80002068:	8e8080e7          	jalr	-1816(ra) # 8000294c <panic>

000000008000206c <trapinit>:
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	00003597          	auipc	a1,0x3
    80002080:	14458593          	addi	a1,a1,324 # 800051c0 <_ZZ12printIntegermE6digits+0x128>
    80002084:	00005517          	auipc	a0,0x5
    80002088:	89c50513          	addi	a0,a0,-1892 # 80006920 <tickslock>
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00001317          	auipc	t1,0x1
    80002094:	5c830067          	jr	1480(t1) # 80003658 <initlock>

0000000080002098 <trapinithart>:
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00813423          	sd	s0,8(sp)
    800020a0:	01010413          	addi	s0,sp,16
    800020a4:	00000797          	auipc	a5,0x0
    800020a8:	2fc78793          	addi	a5,a5,764 # 800023a0 <kernelvec>
    800020ac:	10579073          	csrw	stvec,a5
    800020b0:	00813403          	ld	s0,8(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret

00000000800020bc <usertrap>:
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00813423          	sd	s0,8(sp)
    800020c4:	01010413          	addi	s0,sp,16
    800020c8:	00813403          	ld	s0,8(sp)
    800020cc:	01010113          	addi	sp,sp,16
    800020d0:	00008067          	ret

00000000800020d4 <usertrapret>:
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813423          	sd	s0,8(sp)
    800020dc:	01010413          	addi	s0,sp,16
    800020e0:	00813403          	ld	s0,8(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <kerneltrap>:
    800020ec:	fe010113          	addi	sp,sp,-32
    800020f0:	00813823          	sd	s0,16(sp)
    800020f4:	00113c23          	sd	ra,24(sp)
    800020f8:	00913423          	sd	s1,8(sp)
    800020fc:	02010413          	addi	s0,sp,32
    80002100:	142025f3          	csrr	a1,scause
    80002104:	100027f3          	csrr	a5,sstatus
    80002108:	0027f793          	andi	a5,a5,2
    8000210c:	10079c63          	bnez	a5,80002224 <kerneltrap+0x138>
    80002110:	142027f3          	csrr	a5,scause
    80002114:	0207ce63          	bltz	a5,80002150 <kerneltrap+0x64>
    80002118:	00003517          	auipc	a0,0x3
    8000211c:	0f050513          	addi	a0,a0,240 # 80005208 <_ZZ12printIntegermE6digits+0x170>
    80002120:	00001097          	auipc	ra,0x1
    80002124:	888080e7          	jalr	-1912(ra) # 800029a8 <__printf>
    80002128:	141025f3          	csrr	a1,sepc
    8000212c:	14302673          	csrr	a2,stval
    80002130:	00003517          	auipc	a0,0x3
    80002134:	0e850513          	addi	a0,a0,232 # 80005218 <_ZZ12printIntegermE6digits+0x180>
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	870080e7          	jalr	-1936(ra) # 800029a8 <__printf>
    80002140:	00003517          	auipc	a0,0x3
    80002144:	0f050513          	addi	a0,a0,240 # 80005230 <_ZZ12printIntegermE6digits+0x198>
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	804080e7          	jalr	-2044(ra) # 8000294c <panic>
    80002150:	0ff7f713          	andi	a4,a5,255
    80002154:	00900693          	li	a3,9
    80002158:	04d70063          	beq	a4,a3,80002198 <kerneltrap+0xac>
    8000215c:	fff00713          	li	a4,-1
    80002160:	03f71713          	slli	a4,a4,0x3f
    80002164:	00170713          	addi	a4,a4,1
    80002168:	fae798e3          	bne	a5,a4,80002118 <kerneltrap+0x2c>
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	e00080e7          	jalr	-512(ra) # 80001f6c <cpuid>
    80002174:	06050663          	beqz	a0,800021e0 <kerneltrap+0xf4>
    80002178:	144027f3          	csrr	a5,sip
    8000217c:	ffd7f793          	andi	a5,a5,-3
    80002180:	14479073          	csrw	sip,a5
    80002184:	01813083          	ld	ra,24(sp)
    80002188:	01013403          	ld	s0,16(sp)
    8000218c:	00813483          	ld	s1,8(sp)
    80002190:	02010113          	addi	sp,sp,32
    80002194:	00008067          	ret
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	3cc080e7          	jalr	972(ra) # 80002564 <plic_claim>
    800021a0:	00a00793          	li	a5,10
    800021a4:	00050493          	mv	s1,a0
    800021a8:	06f50863          	beq	a0,a5,80002218 <kerneltrap+0x12c>
    800021ac:	fc050ce3          	beqz	a0,80002184 <kerneltrap+0x98>
    800021b0:	00050593          	mv	a1,a0
    800021b4:	00003517          	auipc	a0,0x3
    800021b8:	03450513          	addi	a0,a0,52 # 800051e8 <_ZZ12printIntegermE6digits+0x150>
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	7ec080e7          	jalr	2028(ra) # 800029a8 <__printf>
    800021c4:	01013403          	ld	s0,16(sp)
    800021c8:	01813083          	ld	ra,24(sp)
    800021cc:	00048513          	mv	a0,s1
    800021d0:	00813483          	ld	s1,8(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00000317          	auipc	t1,0x0
    800021dc:	3c430067          	jr	964(t1) # 8000259c <plic_complete>
    800021e0:	00004517          	auipc	a0,0x4
    800021e4:	74050513          	addi	a0,a0,1856 # 80006920 <tickslock>
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	494080e7          	jalr	1172(ra) # 8000367c <acquire>
    800021f0:	00003717          	auipc	a4,0x3
    800021f4:	64470713          	addi	a4,a4,1604 # 80005834 <ticks>
    800021f8:	00072783          	lw	a5,0(a4)
    800021fc:	00004517          	auipc	a0,0x4
    80002200:	72450513          	addi	a0,a0,1828 # 80006920 <tickslock>
    80002204:	0017879b          	addiw	a5,a5,1
    80002208:	00f72023          	sw	a5,0(a4)
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	53c080e7          	jalr	1340(ra) # 80003748 <release>
    80002214:	f65ff06f          	j	80002178 <kerneltrap+0x8c>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	098080e7          	jalr	152(ra) # 800032b0 <uartintr>
    80002220:	fa5ff06f          	j	800021c4 <kerneltrap+0xd8>
    80002224:	00003517          	auipc	a0,0x3
    80002228:	fa450513          	addi	a0,a0,-92 # 800051c8 <_ZZ12printIntegermE6digits+0x130>
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	720080e7          	jalr	1824(ra) # 8000294c <panic>

0000000080002234 <clockintr>:
    80002234:	fe010113          	addi	sp,sp,-32
    80002238:	00813823          	sd	s0,16(sp)
    8000223c:	00913423          	sd	s1,8(sp)
    80002240:	00113c23          	sd	ra,24(sp)
    80002244:	02010413          	addi	s0,sp,32
    80002248:	00004497          	auipc	s1,0x4
    8000224c:	6d848493          	addi	s1,s1,1752 # 80006920 <tickslock>
    80002250:	00048513          	mv	a0,s1
    80002254:	00001097          	auipc	ra,0x1
    80002258:	428080e7          	jalr	1064(ra) # 8000367c <acquire>
    8000225c:	00003717          	auipc	a4,0x3
    80002260:	5d870713          	addi	a4,a4,1496 # 80005834 <ticks>
    80002264:	00072783          	lw	a5,0(a4)
    80002268:	01013403          	ld	s0,16(sp)
    8000226c:	01813083          	ld	ra,24(sp)
    80002270:	00048513          	mv	a0,s1
    80002274:	0017879b          	addiw	a5,a5,1
    80002278:	00813483          	ld	s1,8(sp)
    8000227c:	00f72023          	sw	a5,0(a4)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00001317          	auipc	t1,0x1
    80002288:	4c430067          	jr	1220(t1) # 80003748 <release>

000000008000228c <devintr>:
    8000228c:	142027f3          	csrr	a5,scause
    80002290:	00000513          	li	a0,0
    80002294:	0007c463          	bltz	a5,8000229c <devintr+0x10>
    80002298:	00008067          	ret
    8000229c:	fe010113          	addi	sp,sp,-32
    800022a0:	00813823          	sd	s0,16(sp)
    800022a4:	00113c23          	sd	ra,24(sp)
    800022a8:	00913423          	sd	s1,8(sp)
    800022ac:	02010413          	addi	s0,sp,32
    800022b0:	0ff7f713          	andi	a4,a5,255
    800022b4:	00900693          	li	a3,9
    800022b8:	04d70c63          	beq	a4,a3,80002310 <devintr+0x84>
    800022bc:	fff00713          	li	a4,-1
    800022c0:	03f71713          	slli	a4,a4,0x3f
    800022c4:	00170713          	addi	a4,a4,1
    800022c8:	00e78c63          	beq	a5,a4,800022e0 <devintr+0x54>
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	02010113          	addi	sp,sp,32
    800022dc:	00008067          	ret
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	c8c080e7          	jalr	-884(ra) # 80001f6c <cpuid>
    800022e8:	06050663          	beqz	a0,80002354 <devintr+0xc8>
    800022ec:	144027f3          	csrr	a5,sip
    800022f0:	ffd7f793          	andi	a5,a5,-3
    800022f4:	14479073          	csrw	sip,a5
    800022f8:	01813083          	ld	ra,24(sp)
    800022fc:	01013403          	ld	s0,16(sp)
    80002300:	00813483          	ld	s1,8(sp)
    80002304:	00200513          	li	a0,2
    80002308:	02010113          	addi	sp,sp,32
    8000230c:	00008067          	ret
    80002310:	00000097          	auipc	ra,0x0
    80002314:	254080e7          	jalr	596(ra) # 80002564 <plic_claim>
    80002318:	00a00793          	li	a5,10
    8000231c:	00050493          	mv	s1,a0
    80002320:	06f50663          	beq	a0,a5,8000238c <devintr+0x100>
    80002324:	00100513          	li	a0,1
    80002328:	fa0482e3          	beqz	s1,800022cc <devintr+0x40>
    8000232c:	00048593          	mv	a1,s1
    80002330:	00003517          	auipc	a0,0x3
    80002334:	eb850513          	addi	a0,a0,-328 # 800051e8 <_ZZ12printIntegermE6digits+0x150>
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	670080e7          	jalr	1648(ra) # 800029a8 <__printf>
    80002340:	00048513          	mv	a0,s1
    80002344:	00000097          	auipc	ra,0x0
    80002348:	258080e7          	jalr	600(ra) # 8000259c <plic_complete>
    8000234c:	00100513          	li	a0,1
    80002350:	f7dff06f          	j	800022cc <devintr+0x40>
    80002354:	00004517          	auipc	a0,0x4
    80002358:	5cc50513          	addi	a0,a0,1484 # 80006920 <tickslock>
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	320080e7          	jalr	800(ra) # 8000367c <acquire>
    80002364:	00003717          	auipc	a4,0x3
    80002368:	4d070713          	addi	a4,a4,1232 # 80005834 <ticks>
    8000236c:	00072783          	lw	a5,0(a4)
    80002370:	00004517          	auipc	a0,0x4
    80002374:	5b050513          	addi	a0,a0,1456 # 80006920 <tickslock>
    80002378:	0017879b          	addiw	a5,a5,1
    8000237c:	00f72023          	sw	a5,0(a4)
    80002380:	00001097          	auipc	ra,0x1
    80002384:	3c8080e7          	jalr	968(ra) # 80003748 <release>
    80002388:	f65ff06f          	j	800022ec <devintr+0x60>
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	f24080e7          	jalr	-220(ra) # 800032b0 <uartintr>
    80002394:	fadff06f          	j	80002340 <devintr+0xb4>
	...

00000000800023a0 <kernelvec>:
    800023a0:	f0010113          	addi	sp,sp,-256
    800023a4:	00113023          	sd	ra,0(sp)
    800023a8:	00213423          	sd	sp,8(sp)
    800023ac:	00313823          	sd	gp,16(sp)
    800023b0:	00413c23          	sd	tp,24(sp)
    800023b4:	02513023          	sd	t0,32(sp)
    800023b8:	02613423          	sd	t1,40(sp)
    800023bc:	02713823          	sd	t2,48(sp)
    800023c0:	02813c23          	sd	s0,56(sp)
    800023c4:	04913023          	sd	s1,64(sp)
    800023c8:	04a13423          	sd	a0,72(sp)
    800023cc:	04b13823          	sd	a1,80(sp)
    800023d0:	04c13c23          	sd	a2,88(sp)
    800023d4:	06d13023          	sd	a3,96(sp)
    800023d8:	06e13423          	sd	a4,104(sp)
    800023dc:	06f13823          	sd	a5,112(sp)
    800023e0:	07013c23          	sd	a6,120(sp)
    800023e4:	09113023          	sd	a7,128(sp)
    800023e8:	09213423          	sd	s2,136(sp)
    800023ec:	09313823          	sd	s3,144(sp)
    800023f0:	09413c23          	sd	s4,152(sp)
    800023f4:	0b513023          	sd	s5,160(sp)
    800023f8:	0b613423          	sd	s6,168(sp)
    800023fc:	0b713823          	sd	s7,176(sp)
    80002400:	0b813c23          	sd	s8,184(sp)
    80002404:	0d913023          	sd	s9,192(sp)
    80002408:	0da13423          	sd	s10,200(sp)
    8000240c:	0db13823          	sd	s11,208(sp)
    80002410:	0dc13c23          	sd	t3,216(sp)
    80002414:	0fd13023          	sd	t4,224(sp)
    80002418:	0fe13423          	sd	t5,232(sp)
    8000241c:	0ff13823          	sd	t6,240(sp)
    80002420:	ccdff0ef          	jal	ra,800020ec <kerneltrap>
    80002424:	00013083          	ld	ra,0(sp)
    80002428:	00813103          	ld	sp,8(sp)
    8000242c:	01013183          	ld	gp,16(sp)
    80002430:	02013283          	ld	t0,32(sp)
    80002434:	02813303          	ld	t1,40(sp)
    80002438:	03013383          	ld	t2,48(sp)
    8000243c:	03813403          	ld	s0,56(sp)
    80002440:	04013483          	ld	s1,64(sp)
    80002444:	04813503          	ld	a0,72(sp)
    80002448:	05013583          	ld	a1,80(sp)
    8000244c:	05813603          	ld	a2,88(sp)
    80002450:	06013683          	ld	a3,96(sp)
    80002454:	06813703          	ld	a4,104(sp)
    80002458:	07013783          	ld	a5,112(sp)
    8000245c:	07813803          	ld	a6,120(sp)
    80002460:	08013883          	ld	a7,128(sp)
    80002464:	08813903          	ld	s2,136(sp)
    80002468:	09013983          	ld	s3,144(sp)
    8000246c:	09813a03          	ld	s4,152(sp)
    80002470:	0a013a83          	ld	s5,160(sp)
    80002474:	0a813b03          	ld	s6,168(sp)
    80002478:	0b013b83          	ld	s7,176(sp)
    8000247c:	0b813c03          	ld	s8,184(sp)
    80002480:	0c013c83          	ld	s9,192(sp)
    80002484:	0c813d03          	ld	s10,200(sp)
    80002488:	0d013d83          	ld	s11,208(sp)
    8000248c:	0d813e03          	ld	t3,216(sp)
    80002490:	0e013e83          	ld	t4,224(sp)
    80002494:	0e813f03          	ld	t5,232(sp)
    80002498:	0f013f83          	ld	t6,240(sp)
    8000249c:	10010113          	addi	sp,sp,256
    800024a0:	10200073          	sret
    800024a4:	00000013          	nop
    800024a8:	00000013          	nop
    800024ac:	00000013          	nop

00000000800024b0 <timervec>:
    800024b0:	34051573          	csrrw	a0,mscratch,a0
    800024b4:	00b53023          	sd	a1,0(a0)
    800024b8:	00c53423          	sd	a2,8(a0)
    800024bc:	00d53823          	sd	a3,16(a0)
    800024c0:	01853583          	ld	a1,24(a0)
    800024c4:	02053603          	ld	a2,32(a0)
    800024c8:	0005b683          	ld	a3,0(a1)
    800024cc:	00c686b3          	add	a3,a3,a2
    800024d0:	00d5b023          	sd	a3,0(a1)
    800024d4:	00200593          	li	a1,2
    800024d8:	14459073          	csrw	sip,a1
    800024dc:	01053683          	ld	a3,16(a0)
    800024e0:	00853603          	ld	a2,8(a0)
    800024e4:	00053583          	ld	a1,0(a0)
    800024e8:	34051573          	csrrw	a0,mscratch,a0
    800024ec:	30200073          	mret

00000000800024f0 <plicinit>:
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00813423          	sd	s0,8(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	00813403          	ld	s0,8(sp)
    80002500:	0c0007b7          	lui	a5,0xc000
    80002504:	00100713          	li	a4,1
    80002508:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000250c:	00e7a223          	sw	a4,4(a5)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <plicinithart>:
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	00113423          	sd	ra,8(sp)
    80002524:	01010413          	addi	s0,sp,16
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	a44080e7          	jalr	-1468(ra) # 80001f6c <cpuid>
    80002530:	0085171b          	slliw	a4,a0,0x8
    80002534:	0c0027b7          	lui	a5,0xc002
    80002538:	00e787b3          	add	a5,a5,a4
    8000253c:	40200713          	li	a4,1026
    80002540:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002544:	00813083          	ld	ra,8(sp)
    80002548:	00013403          	ld	s0,0(sp)
    8000254c:	00d5151b          	slliw	a0,a0,0xd
    80002550:	0c2017b7          	lui	a5,0xc201
    80002554:	00a78533          	add	a0,a5,a0
    80002558:	00052023          	sw	zero,0(a0)
    8000255c:	01010113          	addi	sp,sp,16
    80002560:	00008067          	ret

0000000080002564 <plic_claim>:
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00813023          	sd	s0,0(sp)
    8000256c:	00113423          	sd	ra,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00000097          	auipc	ra,0x0
    80002578:	9f8080e7          	jalr	-1544(ra) # 80001f6c <cpuid>
    8000257c:	00813083          	ld	ra,8(sp)
    80002580:	00013403          	ld	s0,0(sp)
    80002584:	00d5151b          	slliw	a0,a0,0xd
    80002588:	0c2017b7          	lui	a5,0xc201
    8000258c:	00a78533          	add	a0,a5,a0
    80002590:	00452503          	lw	a0,4(a0)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret

000000008000259c <plic_complete>:
    8000259c:	fe010113          	addi	sp,sp,-32
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	00913423          	sd	s1,8(sp)
    800025a8:	00113c23          	sd	ra,24(sp)
    800025ac:	02010413          	addi	s0,sp,32
    800025b0:	00050493          	mv	s1,a0
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	9b8080e7          	jalr	-1608(ra) # 80001f6c <cpuid>
    800025bc:	01813083          	ld	ra,24(sp)
    800025c0:	01013403          	ld	s0,16(sp)
    800025c4:	00d5179b          	slliw	a5,a0,0xd
    800025c8:	0c201737          	lui	a4,0xc201
    800025cc:	00f707b3          	add	a5,a4,a5
    800025d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800025d4:	00813483          	ld	s1,8(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <consolewrite>:
    800025e0:	fb010113          	addi	sp,sp,-80
    800025e4:	04813023          	sd	s0,64(sp)
    800025e8:	04113423          	sd	ra,72(sp)
    800025ec:	02913c23          	sd	s1,56(sp)
    800025f0:	03213823          	sd	s2,48(sp)
    800025f4:	03313423          	sd	s3,40(sp)
    800025f8:	03413023          	sd	s4,32(sp)
    800025fc:	01513c23          	sd	s5,24(sp)
    80002600:	05010413          	addi	s0,sp,80
    80002604:	06c05c63          	blez	a2,8000267c <consolewrite+0x9c>
    80002608:	00060993          	mv	s3,a2
    8000260c:	00050a13          	mv	s4,a0
    80002610:	00058493          	mv	s1,a1
    80002614:	00000913          	li	s2,0
    80002618:	fff00a93          	li	s5,-1
    8000261c:	01c0006f          	j	80002638 <consolewrite+0x58>
    80002620:	fbf44503          	lbu	a0,-65(s0)
    80002624:	0019091b          	addiw	s2,s2,1
    80002628:	00148493          	addi	s1,s1,1
    8000262c:	00001097          	auipc	ra,0x1
    80002630:	a9c080e7          	jalr	-1380(ra) # 800030c8 <uartputc>
    80002634:	03298063          	beq	s3,s2,80002654 <consolewrite+0x74>
    80002638:	00048613          	mv	a2,s1
    8000263c:	00100693          	li	a3,1
    80002640:	000a0593          	mv	a1,s4
    80002644:	fbf40513          	addi	a0,s0,-65
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	9dc080e7          	jalr	-1572(ra) # 80002024 <either_copyin>
    80002650:	fd5518e3          	bne	a0,s5,80002620 <consolewrite+0x40>
    80002654:	04813083          	ld	ra,72(sp)
    80002658:	04013403          	ld	s0,64(sp)
    8000265c:	03813483          	ld	s1,56(sp)
    80002660:	02813983          	ld	s3,40(sp)
    80002664:	02013a03          	ld	s4,32(sp)
    80002668:	01813a83          	ld	s5,24(sp)
    8000266c:	00090513          	mv	a0,s2
    80002670:	03013903          	ld	s2,48(sp)
    80002674:	05010113          	addi	sp,sp,80
    80002678:	00008067          	ret
    8000267c:	00000913          	li	s2,0
    80002680:	fd5ff06f          	j	80002654 <consolewrite+0x74>

0000000080002684 <consoleread>:
    80002684:	f9010113          	addi	sp,sp,-112
    80002688:	06813023          	sd	s0,96(sp)
    8000268c:	04913c23          	sd	s1,88(sp)
    80002690:	05213823          	sd	s2,80(sp)
    80002694:	05313423          	sd	s3,72(sp)
    80002698:	05413023          	sd	s4,64(sp)
    8000269c:	03513c23          	sd	s5,56(sp)
    800026a0:	03613823          	sd	s6,48(sp)
    800026a4:	03713423          	sd	s7,40(sp)
    800026a8:	03813023          	sd	s8,32(sp)
    800026ac:	06113423          	sd	ra,104(sp)
    800026b0:	01913c23          	sd	s9,24(sp)
    800026b4:	07010413          	addi	s0,sp,112
    800026b8:	00060b93          	mv	s7,a2
    800026bc:	00050913          	mv	s2,a0
    800026c0:	00058c13          	mv	s8,a1
    800026c4:	00060b1b          	sext.w	s6,a2
    800026c8:	00004497          	auipc	s1,0x4
    800026cc:	28048493          	addi	s1,s1,640 # 80006948 <cons>
    800026d0:	00400993          	li	s3,4
    800026d4:	fff00a13          	li	s4,-1
    800026d8:	00a00a93          	li	s5,10
    800026dc:	05705e63          	blez	s7,80002738 <consoleread+0xb4>
    800026e0:	09c4a703          	lw	a4,156(s1)
    800026e4:	0984a783          	lw	a5,152(s1)
    800026e8:	0007071b          	sext.w	a4,a4
    800026ec:	08e78463          	beq	a5,a4,80002774 <consoleread+0xf0>
    800026f0:	07f7f713          	andi	a4,a5,127
    800026f4:	00e48733          	add	a4,s1,a4
    800026f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800026fc:	0017869b          	addiw	a3,a5,1
    80002700:	08d4ac23          	sw	a3,152(s1)
    80002704:	00070c9b          	sext.w	s9,a4
    80002708:	0b370663          	beq	a4,s3,800027b4 <consoleread+0x130>
    8000270c:	00100693          	li	a3,1
    80002710:	f9f40613          	addi	a2,s0,-97
    80002714:	000c0593          	mv	a1,s8
    80002718:	00090513          	mv	a0,s2
    8000271c:	f8e40fa3          	sb	a4,-97(s0)
    80002720:	00000097          	auipc	ra,0x0
    80002724:	8b8080e7          	jalr	-1864(ra) # 80001fd8 <either_copyout>
    80002728:	01450863          	beq	a0,s4,80002738 <consoleread+0xb4>
    8000272c:	001c0c13          	addi	s8,s8,1
    80002730:	fffb8b9b          	addiw	s7,s7,-1
    80002734:	fb5c94e3          	bne	s9,s5,800026dc <consoleread+0x58>
    80002738:	000b851b          	sext.w	a0,s7
    8000273c:	06813083          	ld	ra,104(sp)
    80002740:	06013403          	ld	s0,96(sp)
    80002744:	05813483          	ld	s1,88(sp)
    80002748:	05013903          	ld	s2,80(sp)
    8000274c:	04813983          	ld	s3,72(sp)
    80002750:	04013a03          	ld	s4,64(sp)
    80002754:	03813a83          	ld	s5,56(sp)
    80002758:	02813b83          	ld	s7,40(sp)
    8000275c:	02013c03          	ld	s8,32(sp)
    80002760:	01813c83          	ld	s9,24(sp)
    80002764:	40ab053b          	subw	a0,s6,a0
    80002768:	03013b03          	ld	s6,48(sp)
    8000276c:	07010113          	addi	sp,sp,112
    80002770:	00008067          	ret
    80002774:	00001097          	auipc	ra,0x1
    80002778:	1d8080e7          	jalr	472(ra) # 8000394c <push_on>
    8000277c:	0984a703          	lw	a4,152(s1)
    80002780:	09c4a783          	lw	a5,156(s1)
    80002784:	0007879b          	sext.w	a5,a5
    80002788:	fef70ce3          	beq	a4,a5,80002780 <consoleread+0xfc>
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	234080e7          	jalr	564(ra) # 800039c0 <pop_on>
    80002794:	0984a783          	lw	a5,152(s1)
    80002798:	07f7f713          	andi	a4,a5,127
    8000279c:	00e48733          	add	a4,s1,a4
    800027a0:	01874703          	lbu	a4,24(a4)
    800027a4:	0017869b          	addiw	a3,a5,1
    800027a8:	08d4ac23          	sw	a3,152(s1)
    800027ac:	00070c9b          	sext.w	s9,a4
    800027b0:	f5371ee3          	bne	a4,s3,8000270c <consoleread+0x88>
    800027b4:	000b851b          	sext.w	a0,s7
    800027b8:	f96bf2e3          	bgeu	s7,s6,8000273c <consoleread+0xb8>
    800027bc:	08f4ac23          	sw	a5,152(s1)
    800027c0:	f7dff06f          	j	8000273c <consoleread+0xb8>

00000000800027c4 <consputc>:
    800027c4:	10000793          	li	a5,256
    800027c8:	00f50663          	beq	a0,a5,800027d4 <consputc+0x10>
    800027cc:	00001317          	auipc	t1,0x1
    800027d0:	9f430067          	jr	-1548(t1) # 800031c0 <uartputc_sync>
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00113423          	sd	ra,8(sp)
    800027dc:	00813023          	sd	s0,0(sp)
    800027e0:	01010413          	addi	s0,sp,16
    800027e4:	00800513          	li	a0,8
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	9d8080e7          	jalr	-1576(ra) # 800031c0 <uartputc_sync>
    800027f0:	02000513          	li	a0,32
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	9cc080e7          	jalr	-1588(ra) # 800031c0 <uartputc_sync>
    800027fc:	00013403          	ld	s0,0(sp)
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00800513          	li	a0,8
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00001317          	auipc	t1,0x1
    80002810:	9b430067          	jr	-1612(t1) # 800031c0 <uartputc_sync>

0000000080002814 <consoleintr>:
    80002814:	fe010113          	addi	sp,sp,-32
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00913423          	sd	s1,8(sp)
    80002820:	01213023          	sd	s2,0(sp)
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	02010413          	addi	s0,sp,32
    8000282c:	00004917          	auipc	s2,0x4
    80002830:	11c90913          	addi	s2,s2,284 # 80006948 <cons>
    80002834:	00050493          	mv	s1,a0
    80002838:	00090513          	mv	a0,s2
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	e40080e7          	jalr	-448(ra) # 8000367c <acquire>
    80002844:	02048c63          	beqz	s1,8000287c <consoleintr+0x68>
    80002848:	0a092783          	lw	a5,160(s2)
    8000284c:	09892703          	lw	a4,152(s2)
    80002850:	07f00693          	li	a3,127
    80002854:	40e7873b          	subw	a4,a5,a4
    80002858:	02e6e263          	bltu	a3,a4,8000287c <consoleintr+0x68>
    8000285c:	00d00713          	li	a4,13
    80002860:	04e48063          	beq	s1,a4,800028a0 <consoleintr+0x8c>
    80002864:	07f7f713          	andi	a4,a5,127
    80002868:	00e90733          	add	a4,s2,a4
    8000286c:	0017879b          	addiw	a5,a5,1
    80002870:	0af92023          	sw	a5,160(s2)
    80002874:	00970c23          	sb	s1,24(a4)
    80002878:	08f92e23          	sw	a5,156(s2)
    8000287c:	01013403          	ld	s0,16(sp)
    80002880:	01813083          	ld	ra,24(sp)
    80002884:	00813483          	ld	s1,8(sp)
    80002888:	00013903          	ld	s2,0(sp)
    8000288c:	00004517          	auipc	a0,0x4
    80002890:	0bc50513          	addi	a0,a0,188 # 80006948 <cons>
    80002894:	02010113          	addi	sp,sp,32
    80002898:	00001317          	auipc	t1,0x1
    8000289c:	eb030067          	jr	-336(t1) # 80003748 <release>
    800028a0:	00a00493          	li	s1,10
    800028a4:	fc1ff06f          	j	80002864 <consoleintr+0x50>

00000000800028a8 <consoleinit>:
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	02010413          	addi	s0,sp,32
    800028bc:	00004497          	auipc	s1,0x4
    800028c0:	08c48493          	addi	s1,s1,140 # 80006948 <cons>
    800028c4:	00048513          	mv	a0,s1
    800028c8:	00003597          	auipc	a1,0x3
    800028cc:	97858593          	addi	a1,a1,-1672 # 80005240 <_ZZ12printIntegermE6digits+0x1a8>
    800028d0:	00001097          	auipc	ra,0x1
    800028d4:	d88080e7          	jalr	-632(ra) # 80003658 <initlock>
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	7ac080e7          	jalr	1964(ra) # 80003084 <uartinit>
    800028e0:	01813083          	ld	ra,24(sp)
    800028e4:	01013403          	ld	s0,16(sp)
    800028e8:	00000797          	auipc	a5,0x0
    800028ec:	d9c78793          	addi	a5,a5,-612 # 80002684 <consoleread>
    800028f0:	0af4bc23          	sd	a5,184(s1)
    800028f4:	00000797          	auipc	a5,0x0
    800028f8:	cec78793          	addi	a5,a5,-788 # 800025e0 <consolewrite>
    800028fc:	0cf4b023          	sd	a5,192(s1)
    80002900:	00813483          	ld	s1,8(sp)
    80002904:	02010113          	addi	sp,sp,32
    80002908:	00008067          	ret

000000008000290c <console_read>:
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00813423          	sd	s0,8(sp)
    80002914:	01010413          	addi	s0,sp,16
    80002918:	00813403          	ld	s0,8(sp)
    8000291c:	00004317          	auipc	t1,0x4
    80002920:	0e433303          	ld	t1,228(t1) # 80006a00 <devsw+0x10>
    80002924:	01010113          	addi	sp,sp,16
    80002928:	00030067          	jr	t1

000000008000292c <console_write>:
    8000292c:	ff010113          	addi	sp,sp,-16
    80002930:	00813423          	sd	s0,8(sp)
    80002934:	01010413          	addi	s0,sp,16
    80002938:	00813403          	ld	s0,8(sp)
    8000293c:	00004317          	auipc	t1,0x4
    80002940:	0cc33303          	ld	t1,204(t1) # 80006a08 <devsw+0x18>
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00030067          	jr	t1

000000008000294c <panic>:
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00113c23          	sd	ra,24(sp)
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00050493          	mv	s1,a0
    80002964:	00003517          	auipc	a0,0x3
    80002968:	8e450513          	addi	a0,a0,-1820 # 80005248 <_ZZ12printIntegermE6digits+0x1b0>
    8000296c:	00004797          	auipc	a5,0x4
    80002970:	1207ae23          	sw	zero,316(a5) # 80006aa8 <pr+0x18>
    80002974:	00000097          	auipc	ra,0x0
    80002978:	034080e7          	jalr	52(ra) # 800029a8 <__printf>
    8000297c:	00048513          	mv	a0,s1
    80002980:	00000097          	auipc	ra,0x0
    80002984:	028080e7          	jalr	40(ra) # 800029a8 <__printf>
    80002988:	00002517          	auipc	a0,0x2
    8000298c:	78850513          	addi	a0,a0,1928 # 80005110 <_ZZ12printIntegermE6digits+0x78>
    80002990:	00000097          	auipc	ra,0x0
    80002994:	018080e7          	jalr	24(ra) # 800029a8 <__printf>
    80002998:	00100793          	li	a5,1
    8000299c:	00003717          	auipc	a4,0x3
    800029a0:	e8f72e23          	sw	a5,-356(a4) # 80005838 <panicked>
    800029a4:	0000006f          	j	800029a4 <panic+0x58>

00000000800029a8 <__printf>:
    800029a8:	f3010113          	addi	sp,sp,-208
    800029ac:	08813023          	sd	s0,128(sp)
    800029b0:	07313423          	sd	s3,104(sp)
    800029b4:	09010413          	addi	s0,sp,144
    800029b8:	05813023          	sd	s8,64(sp)
    800029bc:	08113423          	sd	ra,136(sp)
    800029c0:	06913c23          	sd	s1,120(sp)
    800029c4:	07213823          	sd	s2,112(sp)
    800029c8:	07413023          	sd	s4,96(sp)
    800029cc:	05513c23          	sd	s5,88(sp)
    800029d0:	05613823          	sd	s6,80(sp)
    800029d4:	05713423          	sd	s7,72(sp)
    800029d8:	03913c23          	sd	s9,56(sp)
    800029dc:	03a13823          	sd	s10,48(sp)
    800029e0:	03b13423          	sd	s11,40(sp)
    800029e4:	00004317          	auipc	t1,0x4
    800029e8:	0ac30313          	addi	t1,t1,172 # 80006a90 <pr>
    800029ec:	01832c03          	lw	s8,24(t1)
    800029f0:	00b43423          	sd	a1,8(s0)
    800029f4:	00c43823          	sd	a2,16(s0)
    800029f8:	00d43c23          	sd	a3,24(s0)
    800029fc:	02e43023          	sd	a4,32(s0)
    80002a00:	02f43423          	sd	a5,40(s0)
    80002a04:	03043823          	sd	a6,48(s0)
    80002a08:	03143c23          	sd	a7,56(s0)
    80002a0c:	00050993          	mv	s3,a0
    80002a10:	4a0c1663          	bnez	s8,80002ebc <__printf+0x514>
    80002a14:	60098c63          	beqz	s3,8000302c <__printf+0x684>
    80002a18:	0009c503          	lbu	a0,0(s3)
    80002a1c:	00840793          	addi	a5,s0,8
    80002a20:	f6f43c23          	sd	a5,-136(s0)
    80002a24:	00000493          	li	s1,0
    80002a28:	22050063          	beqz	a0,80002c48 <__printf+0x2a0>
    80002a2c:	00002a37          	lui	s4,0x2
    80002a30:	00018ab7          	lui	s5,0x18
    80002a34:	000f4b37          	lui	s6,0xf4
    80002a38:	00989bb7          	lui	s7,0x989
    80002a3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002a40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002a44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002a48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002a4c:	00148c9b          	addiw	s9,s1,1
    80002a50:	02500793          	li	a5,37
    80002a54:	01998933          	add	s2,s3,s9
    80002a58:	38f51263          	bne	a0,a5,80002ddc <__printf+0x434>
    80002a5c:	00094783          	lbu	a5,0(s2)
    80002a60:	00078c9b          	sext.w	s9,a5
    80002a64:	1e078263          	beqz	a5,80002c48 <__printf+0x2a0>
    80002a68:	0024849b          	addiw	s1,s1,2
    80002a6c:	07000713          	li	a4,112
    80002a70:	00998933          	add	s2,s3,s1
    80002a74:	38e78a63          	beq	a5,a4,80002e08 <__printf+0x460>
    80002a78:	20f76863          	bltu	a4,a5,80002c88 <__printf+0x2e0>
    80002a7c:	42a78863          	beq	a5,a0,80002eac <__printf+0x504>
    80002a80:	06400713          	li	a4,100
    80002a84:	40e79663          	bne	a5,a4,80002e90 <__printf+0x4e8>
    80002a88:	f7843783          	ld	a5,-136(s0)
    80002a8c:	0007a603          	lw	a2,0(a5)
    80002a90:	00878793          	addi	a5,a5,8
    80002a94:	f6f43c23          	sd	a5,-136(s0)
    80002a98:	42064a63          	bltz	a2,80002ecc <__printf+0x524>
    80002a9c:	00a00713          	li	a4,10
    80002aa0:	02e677bb          	remuw	a5,a2,a4
    80002aa4:	00002d97          	auipc	s11,0x2
    80002aa8:	7ccd8d93          	addi	s11,s11,1996 # 80005270 <digits>
    80002aac:	00900593          	li	a1,9
    80002ab0:	0006051b          	sext.w	a0,a2
    80002ab4:	00000c93          	li	s9,0
    80002ab8:	02079793          	slli	a5,a5,0x20
    80002abc:	0207d793          	srli	a5,a5,0x20
    80002ac0:	00fd87b3          	add	a5,s11,a5
    80002ac4:	0007c783          	lbu	a5,0(a5)
    80002ac8:	02e656bb          	divuw	a3,a2,a4
    80002acc:	f8f40023          	sb	a5,-128(s0)
    80002ad0:	14c5d863          	bge	a1,a2,80002c20 <__printf+0x278>
    80002ad4:	06300593          	li	a1,99
    80002ad8:	00100c93          	li	s9,1
    80002adc:	02e6f7bb          	remuw	a5,a3,a4
    80002ae0:	02079793          	slli	a5,a5,0x20
    80002ae4:	0207d793          	srli	a5,a5,0x20
    80002ae8:	00fd87b3          	add	a5,s11,a5
    80002aec:	0007c783          	lbu	a5,0(a5)
    80002af0:	02e6d73b          	divuw	a4,a3,a4
    80002af4:	f8f400a3          	sb	a5,-127(s0)
    80002af8:	12a5f463          	bgeu	a1,a0,80002c20 <__printf+0x278>
    80002afc:	00a00693          	li	a3,10
    80002b00:	00900593          	li	a1,9
    80002b04:	02d777bb          	remuw	a5,a4,a3
    80002b08:	02079793          	slli	a5,a5,0x20
    80002b0c:	0207d793          	srli	a5,a5,0x20
    80002b10:	00fd87b3          	add	a5,s11,a5
    80002b14:	0007c503          	lbu	a0,0(a5)
    80002b18:	02d757bb          	divuw	a5,a4,a3
    80002b1c:	f8a40123          	sb	a0,-126(s0)
    80002b20:	48e5f263          	bgeu	a1,a4,80002fa4 <__printf+0x5fc>
    80002b24:	06300513          	li	a0,99
    80002b28:	02d7f5bb          	remuw	a1,a5,a3
    80002b2c:	02059593          	slli	a1,a1,0x20
    80002b30:	0205d593          	srli	a1,a1,0x20
    80002b34:	00bd85b3          	add	a1,s11,a1
    80002b38:	0005c583          	lbu	a1,0(a1)
    80002b3c:	02d7d7bb          	divuw	a5,a5,a3
    80002b40:	f8b401a3          	sb	a1,-125(s0)
    80002b44:	48e57263          	bgeu	a0,a4,80002fc8 <__printf+0x620>
    80002b48:	3e700513          	li	a0,999
    80002b4c:	02d7f5bb          	remuw	a1,a5,a3
    80002b50:	02059593          	slli	a1,a1,0x20
    80002b54:	0205d593          	srli	a1,a1,0x20
    80002b58:	00bd85b3          	add	a1,s11,a1
    80002b5c:	0005c583          	lbu	a1,0(a1)
    80002b60:	02d7d7bb          	divuw	a5,a5,a3
    80002b64:	f8b40223          	sb	a1,-124(s0)
    80002b68:	46e57663          	bgeu	a0,a4,80002fd4 <__printf+0x62c>
    80002b6c:	02d7f5bb          	remuw	a1,a5,a3
    80002b70:	02059593          	slli	a1,a1,0x20
    80002b74:	0205d593          	srli	a1,a1,0x20
    80002b78:	00bd85b3          	add	a1,s11,a1
    80002b7c:	0005c583          	lbu	a1,0(a1)
    80002b80:	02d7d7bb          	divuw	a5,a5,a3
    80002b84:	f8b402a3          	sb	a1,-123(s0)
    80002b88:	46ea7863          	bgeu	s4,a4,80002ff8 <__printf+0x650>
    80002b8c:	02d7f5bb          	remuw	a1,a5,a3
    80002b90:	02059593          	slli	a1,a1,0x20
    80002b94:	0205d593          	srli	a1,a1,0x20
    80002b98:	00bd85b3          	add	a1,s11,a1
    80002b9c:	0005c583          	lbu	a1,0(a1)
    80002ba0:	02d7d7bb          	divuw	a5,a5,a3
    80002ba4:	f8b40323          	sb	a1,-122(s0)
    80002ba8:	3eeaf863          	bgeu	s5,a4,80002f98 <__printf+0x5f0>
    80002bac:	02d7f5bb          	remuw	a1,a5,a3
    80002bb0:	02059593          	slli	a1,a1,0x20
    80002bb4:	0205d593          	srli	a1,a1,0x20
    80002bb8:	00bd85b3          	add	a1,s11,a1
    80002bbc:	0005c583          	lbu	a1,0(a1)
    80002bc0:	02d7d7bb          	divuw	a5,a5,a3
    80002bc4:	f8b403a3          	sb	a1,-121(s0)
    80002bc8:	42eb7e63          	bgeu	s6,a4,80003004 <__printf+0x65c>
    80002bcc:	02d7f5bb          	remuw	a1,a5,a3
    80002bd0:	02059593          	slli	a1,a1,0x20
    80002bd4:	0205d593          	srli	a1,a1,0x20
    80002bd8:	00bd85b3          	add	a1,s11,a1
    80002bdc:	0005c583          	lbu	a1,0(a1)
    80002be0:	02d7d7bb          	divuw	a5,a5,a3
    80002be4:	f8b40423          	sb	a1,-120(s0)
    80002be8:	42ebfc63          	bgeu	s7,a4,80003020 <__printf+0x678>
    80002bec:	02079793          	slli	a5,a5,0x20
    80002bf0:	0207d793          	srli	a5,a5,0x20
    80002bf4:	00fd8db3          	add	s11,s11,a5
    80002bf8:	000dc703          	lbu	a4,0(s11)
    80002bfc:	00a00793          	li	a5,10
    80002c00:	00900c93          	li	s9,9
    80002c04:	f8e404a3          	sb	a4,-119(s0)
    80002c08:	00065c63          	bgez	a2,80002c20 <__printf+0x278>
    80002c0c:	f9040713          	addi	a4,s0,-112
    80002c10:	00f70733          	add	a4,a4,a5
    80002c14:	02d00693          	li	a3,45
    80002c18:	fed70823          	sb	a3,-16(a4)
    80002c1c:	00078c93          	mv	s9,a5
    80002c20:	f8040793          	addi	a5,s0,-128
    80002c24:	01978cb3          	add	s9,a5,s9
    80002c28:	f7f40d13          	addi	s10,s0,-129
    80002c2c:	000cc503          	lbu	a0,0(s9)
    80002c30:	fffc8c93          	addi	s9,s9,-1
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	b90080e7          	jalr	-1136(ra) # 800027c4 <consputc>
    80002c3c:	ffac98e3          	bne	s9,s10,80002c2c <__printf+0x284>
    80002c40:	00094503          	lbu	a0,0(s2)
    80002c44:	e00514e3          	bnez	a0,80002a4c <__printf+0xa4>
    80002c48:	1a0c1663          	bnez	s8,80002df4 <__printf+0x44c>
    80002c4c:	08813083          	ld	ra,136(sp)
    80002c50:	08013403          	ld	s0,128(sp)
    80002c54:	07813483          	ld	s1,120(sp)
    80002c58:	07013903          	ld	s2,112(sp)
    80002c5c:	06813983          	ld	s3,104(sp)
    80002c60:	06013a03          	ld	s4,96(sp)
    80002c64:	05813a83          	ld	s5,88(sp)
    80002c68:	05013b03          	ld	s6,80(sp)
    80002c6c:	04813b83          	ld	s7,72(sp)
    80002c70:	04013c03          	ld	s8,64(sp)
    80002c74:	03813c83          	ld	s9,56(sp)
    80002c78:	03013d03          	ld	s10,48(sp)
    80002c7c:	02813d83          	ld	s11,40(sp)
    80002c80:	0d010113          	addi	sp,sp,208
    80002c84:	00008067          	ret
    80002c88:	07300713          	li	a4,115
    80002c8c:	1ce78a63          	beq	a5,a4,80002e60 <__printf+0x4b8>
    80002c90:	07800713          	li	a4,120
    80002c94:	1ee79e63          	bne	a5,a4,80002e90 <__printf+0x4e8>
    80002c98:	f7843783          	ld	a5,-136(s0)
    80002c9c:	0007a703          	lw	a4,0(a5)
    80002ca0:	00878793          	addi	a5,a5,8
    80002ca4:	f6f43c23          	sd	a5,-136(s0)
    80002ca8:	28074263          	bltz	a4,80002f2c <__printf+0x584>
    80002cac:	00002d97          	auipc	s11,0x2
    80002cb0:	5c4d8d93          	addi	s11,s11,1476 # 80005270 <digits>
    80002cb4:	00f77793          	andi	a5,a4,15
    80002cb8:	00fd87b3          	add	a5,s11,a5
    80002cbc:	0007c683          	lbu	a3,0(a5)
    80002cc0:	00f00613          	li	a2,15
    80002cc4:	0007079b          	sext.w	a5,a4
    80002cc8:	f8d40023          	sb	a3,-128(s0)
    80002ccc:	0047559b          	srliw	a1,a4,0x4
    80002cd0:	0047569b          	srliw	a3,a4,0x4
    80002cd4:	00000c93          	li	s9,0
    80002cd8:	0ee65063          	bge	a2,a4,80002db8 <__printf+0x410>
    80002cdc:	00f6f693          	andi	a3,a3,15
    80002ce0:	00dd86b3          	add	a3,s11,a3
    80002ce4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ce8:	0087d79b          	srliw	a5,a5,0x8
    80002cec:	00100c93          	li	s9,1
    80002cf0:	f8d400a3          	sb	a3,-127(s0)
    80002cf4:	0cb67263          	bgeu	a2,a1,80002db8 <__printf+0x410>
    80002cf8:	00f7f693          	andi	a3,a5,15
    80002cfc:	00dd86b3          	add	a3,s11,a3
    80002d00:	0006c583          	lbu	a1,0(a3)
    80002d04:	00f00613          	li	a2,15
    80002d08:	0047d69b          	srliw	a3,a5,0x4
    80002d0c:	f8b40123          	sb	a1,-126(s0)
    80002d10:	0047d593          	srli	a1,a5,0x4
    80002d14:	28f67e63          	bgeu	a2,a5,80002fb0 <__printf+0x608>
    80002d18:	00f6f693          	andi	a3,a3,15
    80002d1c:	00dd86b3          	add	a3,s11,a3
    80002d20:	0006c503          	lbu	a0,0(a3)
    80002d24:	0087d813          	srli	a6,a5,0x8
    80002d28:	0087d69b          	srliw	a3,a5,0x8
    80002d2c:	f8a401a3          	sb	a0,-125(s0)
    80002d30:	28b67663          	bgeu	a2,a1,80002fbc <__printf+0x614>
    80002d34:	00f6f693          	andi	a3,a3,15
    80002d38:	00dd86b3          	add	a3,s11,a3
    80002d3c:	0006c583          	lbu	a1,0(a3)
    80002d40:	00c7d513          	srli	a0,a5,0xc
    80002d44:	00c7d69b          	srliw	a3,a5,0xc
    80002d48:	f8b40223          	sb	a1,-124(s0)
    80002d4c:	29067a63          	bgeu	a2,a6,80002fe0 <__printf+0x638>
    80002d50:	00f6f693          	andi	a3,a3,15
    80002d54:	00dd86b3          	add	a3,s11,a3
    80002d58:	0006c583          	lbu	a1,0(a3)
    80002d5c:	0107d813          	srli	a6,a5,0x10
    80002d60:	0107d69b          	srliw	a3,a5,0x10
    80002d64:	f8b402a3          	sb	a1,-123(s0)
    80002d68:	28a67263          	bgeu	a2,a0,80002fec <__printf+0x644>
    80002d6c:	00f6f693          	andi	a3,a3,15
    80002d70:	00dd86b3          	add	a3,s11,a3
    80002d74:	0006c683          	lbu	a3,0(a3)
    80002d78:	0147d79b          	srliw	a5,a5,0x14
    80002d7c:	f8d40323          	sb	a3,-122(s0)
    80002d80:	21067663          	bgeu	a2,a6,80002f8c <__printf+0x5e4>
    80002d84:	02079793          	slli	a5,a5,0x20
    80002d88:	0207d793          	srli	a5,a5,0x20
    80002d8c:	00fd8db3          	add	s11,s11,a5
    80002d90:	000dc683          	lbu	a3,0(s11)
    80002d94:	00800793          	li	a5,8
    80002d98:	00700c93          	li	s9,7
    80002d9c:	f8d403a3          	sb	a3,-121(s0)
    80002da0:	00075c63          	bgez	a4,80002db8 <__printf+0x410>
    80002da4:	f9040713          	addi	a4,s0,-112
    80002da8:	00f70733          	add	a4,a4,a5
    80002dac:	02d00693          	li	a3,45
    80002db0:	fed70823          	sb	a3,-16(a4)
    80002db4:	00078c93          	mv	s9,a5
    80002db8:	f8040793          	addi	a5,s0,-128
    80002dbc:	01978cb3          	add	s9,a5,s9
    80002dc0:	f7f40d13          	addi	s10,s0,-129
    80002dc4:	000cc503          	lbu	a0,0(s9)
    80002dc8:	fffc8c93          	addi	s9,s9,-1
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	9f8080e7          	jalr	-1544(ra) # 800027c4 <consputc>
    80002dd4:	ff9d18e3          	bne	s10,s9,80002dc4 <__printf+0x41c>
    80002dd8:	0100006f          	j	80002de8 <__printf+0x440>
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	9e8080e7          	jalr	-1560(ra) # 800027c4 <consputc>
    80002de4:	000c8493          	mv	s1,s9
    80002de8:	00094503          	lbu	a0,0(s2)
    80002dec:	c60510e3          	bnez	a0,80002a4c <__printf+0xa4>
    80002df0:	e40c0ee3          	beqz	s8,80002c4c <__printf+0x2a4>
    80002df4:	00004517          	auipc	a0,0x4
    80002df8:	c9c50513          	addi	a0,a0,-868 # 80006a90 <pr>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	94c080e7          	jalr	-1716(ra) # 80003748 <release>
    80002e04:	e49ff06f          	j	80002c4c <__printf+0x2a4>
    80002e08:	f7843783          	ld	a5,-136(s0)
    80002e0c:	03000513          	li	a0,48
    80002e10:	01000d13          	li	s10,16
    80002e14:	00878713          	addi	a4,a5,8
    80002e18:	0007bc83          	ld	s9,0(a5)
    80002e1c:	f6e43c23          	sd	a4,-136(s0)
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	9a4080e7          	jalr	-1628(ra) # 800027c4 <consputc>
    80002e28:	07800513          	li	a0,120
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	998080e7          	jalr	-1640(ra) # 800027c4 <consputc>
    80002e34:	00002d97          	auipc	s11,0x2
    80002e38:	43cd8d93          	addi	s11,s11,1084 # 80005270 <digits>
    80002e3c:	03ccd793          	srli	a5,s9,0x3c
    80002e40:	00fd87b3          	add	a5,s11,a5
    80002e44:	0007c503          	lbu	a0,0(a5)
    80002e48:	fffd0d1b          	addiw	s10,s10,-1
    80002e4c:	004c9c93          	slli	s9,s9,0x4
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	974080e7          	jalr	-1676(ra) # 800027c4 <consputc>
    80002e58:	fe0d12e3          	bnez	s10,80002e3c <__printf+0x494>
    80002e5c:	f8dff06f          	j	80002de8 <__printf+0x440>
    80002e60:	f7843783          	ld	a5,-136(s0)
    80002e64:	0007bc83          	ld	s9,0(a5)
    80002e68:	00878793          	addi	a5,a5,8
    80002e6c:	f6f43c23          	sd	a5,-136(s0)
    80002e70:	000c9a63          	bnez	s9,80002e84 <__printf+0x4dc>
    80002e74:	1080006f          	j	80002f7c <__printf+0x5d4>
    80002e78:	001c8c93          	addi	s9,s9,1
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	948080e7          	jalr	-1720(ra) # 800027c4 <consputc>
    80002e84:	000cc503          	lbu	a0,0(s9)
    80002e88:	fe0518e3          	bnez	a0,80002e78 <__printf+0x4d0>
    80002e8c:	f5dff06f          	j	80002de8 <__printf+0x440>
    80002e90:	02500513          	li	a0,37
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	930080e7          	jalr	-1744(ra) # 800027c4 <consputc>
    80002e9c:	000c8513          	mv	a0,s9
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	924080e7          	jalr	-1756(ra) # 800027c4 <consputc>
    80002ea8:	f41ff06f          	j	80002de8 <__printf+0x440>
    80002eac:	02500513          	li	a0,37
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	914080e7          	jalr	-1772(ra) # 800027c4 <consputc>
    80002eb8:	f31ff06f          	j	80002de8 <__printf+0x440>
    80002ebc:	00030513          	mv	a0,t1
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	7bc080e7          	jalr	1980(ra) # 8000367c <acquire>
    80002ec8:	b4dff06f          	j	80002a14 <__printf+0x6c>
    80002ecc:	40c0053b          	negw	a0,a2
    80002ed0:	00a00713          	li	a4,10
    80002ed4:	02e576bb          	remuw	a3,a0,a4
    80002ed8:	00002d97          	auipc	s11,0x2
    80002edc:	398d8d93          	addi	s11,s11,920 # 80005270 <digits>
    80002ee0:	ff700593          	li	a1,-9
    80002ee4:	02069693          	slli	a3,a3,0x20
    80002ee8:	0206d693          	srli	a3,a3,0x20
    80002eec:	00dd86b3          	add	a3,s11,a3
    80002ef0:	0006c683          	lbu	a3,0(a3)
    80002ef4:	02e557bb          	divuw	a5,a0,a4
    80002ef8:	f8d40023          	sb	a3,-128(s0)
    80002efc:	10b65e63          	bge	a2,a1,80003018 <__printf+0x670>
    80002f00:	06300593          	li	a1,99
    80002f04:	02e7f6bb          	remuw	a3,a5,a4
    80002f08:	02069693          	slli	a3,a3,0x20
    80002f0c:	0206d693          	srli	a3,a3,0x20
    80002f10:	00dd86b3          	add	a3,s11,a3
    80002f14:	0006c683          	lbu	a3,0(a3)
    80002f18:	02e7d73b          	divuw	a4,a5,a4
    80002f1c:	00200793          	li	a5,2
    80002f20:	f8d400a3          	sb	a3,-127(s0)
    80002f24:	bca5ece3          	bltu	a1,a0,80002afc <__printf+0x154>
    80002f28:	ce5ff06f          	j	80002c0c <__printf+0x264>
    80002f2c:	40e007bb          	negw	a5,a4
    80002f30:	00002d97          	auipc	s11,0x2
    80002f34:	340d8d93          	addi	s11,s11,832 # 80005270 <digits>
    80002f38:	00f7f693          	andi	a3,a5,15
    80002f3c:	00dd86b3          	add	a3,s11,a3
    80002f40:	0006c583          	lbu	a1,0(a3)
    80002f44:	ff100613          	li	a2,-15
    80002f48:	0047d69b          	srliw	a3,a5,0x4
    80002f4c:	f8b40023          	sb	a1,-128(s0)
    80002f50:	0047d59b          	srliw	a1,a5,0x4
    80002f54:	0ac75e63          	bge	a4,a2,80003010 <__printf+0x668>
    80002f58:	00f6f693          	andi	a3,a3,15
    80002f5c:	00dd86b3          	add	a3,s11,a3
    80002f60:	0006c603          	lbu	a2,0(a3)
    80002f64:	00f00693          	li	a3,15
    80002f68:	0087d79b          	srliw	a5,a5,0x8
    80002f6c:	f8c400a3          	sb	a2,-127(s0)
    80002f70:	d8b6e4e3          	bltu	a3,a1,80002cf8 <__printf+0x350>
    80002f74:	00200793          	li	a5,2
    80002f78:	e2dff06f          	j	80002da4 <__printf+0x3fc>
    80002f7c:	00002c97          	auipc	s9,0x2
    80002f80:	2d4c8c93          	addi	s9,s9,724 # 80005250 <_ZZ12printIntegermE6digits+0x1b8>
    80002f84:	02800513          	li	a0,40
    80002f88:	ef1ff06f          	j	80002e78 <__printf+0x4d0>
    80002f8c:	00700793          	li	a5,7
    80002f90:	00600c93          	li	s9,6
    80002f94:	e0dff06f          	j	80002da0 <__printf+0x3f8>
    80002f98:	00700793          	li	a5,7
    80002f9c:	00600c93          	li	s9,6
    80002fa0:	c69ff06f          	j	80002c08 <__printf+0x260>
    80002fa4:	00300793          	li	a5,3
    80002fa8:	00200c93          	li	s9,2
    80002fac:	c5dff06f          	j	80002c08 <__printf+0x260>
    80002fb0:	00300793          	li	a5,3
    80002fb4:	00200c93          	li	s9,2
    80002fb8:	de9ff06f          	j	80002da0 <__printf+0x3f8>
    80002fbc:	00400793          	li	a5,4
    80002fc0:	00300c93          	li	s9,3
    80002fc4:	dddff06f          	j	80002da0 <__printf+0x3f8>
    80002fc8:	00400793          	li	a5,4
    80002fcc:	00300c93          	li	s9,3
    80002fd0:	c39ff06f          	j	80002c08 <__printf+0x260>
    80002fd4:	00500793          	li	a5,5
    80002fd8:	00400c93          	li	s9,4
    80002fdc:	c2dff06f          	j	80002c08 <__printf+0x260>
    80002fe0:	00500793          	li	a5,5
    80002fe4:	00400c93          	li	s9,4
    80002fe8:	db9ff06f          	j	80002da0 <__printf+0x3f8>
    80002fec:	00600793          	li	a5,6
    80002ff0:	00500c93          	li	s9,5
    80002ff4:	dadff06f          	j	80002da0 <__printf+0x3f8>
    80002ff8:	00600793          	li	a5,6
    80002ffc:	00500c93          	li	s9,5
    80003000:	c09ff06f          	j	80002c08 <__printf+0x260>
    80003004:	00800793          	li	a5,8
    80003008:	00700c93          	li	s9,7
    8000300c:	bfdff06f          	j	80002c08 <__printf+0x260>
    80003010:	00100793          	li	a5,1
    80003014:	d91ff06f          	j	80002da4 <__printf+0x3fc>
    80003018:	00100793          	li	a5,1
    8000301c:	bf1ff06f          	j	80002c0c <__printf+0x264>
    80003020:	00900793          	li	a5,9
    80003024:	00800c93          	li	s9,8
    80003028:	be1ff06f          	j	80002c08 <__printf+0x260>
    8000302c:	00002517          	auipc	a0,0x2
    80003030:	22c50513          	addi	a0,a0,556 # 80005258 <_ZZ12printIntegermE6digits+0x1c0>
    80003034:	00000097          	auipc	ra,0x0
    80003038:	918080e7          	jalr	-1768(ra) # 8000294c <panic>

000000008000303c <printfinit>:
    8000303c:	fe010113          	addi	sp,sp,-32
    80003040:	00813823          	sd	s0,16(sp)
    80003044:	00913423          	sd	s1,8(sp)
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	02010413          	addi	s0,sp,32
    80003050:	00004497          	auipc	s1,0x4
    80003054:	a4048493          	addi	s1,s1,-1472 # 80006a90 <pr>
    80003058:	00048513          	mv	a0,s1
    8000305c:	00002597          	auipc	a1,0x2
    80003060:	20c58593          	addi	a1,a1,524 # 80005268 <_ZZ12printIntegermE6digits+0x1d0>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	5f4080e7          	jalr	1524(ra) # 80003658 <initlock>
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	0004ac23          	sw	zero,24(s1)
    80003078:	00813483          	ld	s1,8(sp)
    8000307c:	02010113          	addi	sp,sp,32
    80003080:	00008067          	ret

0000000080003084 <uartinit>:
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00813423          	sd	s0,8(sp)
    8000308c:	01010413          	addi	s0,sp,16
    80003090:	100007b7          	lui	a5,0x10000
    80003094:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003098:	f8000713          	li	a4,-128
    8000309c:	00e781a3          	sb	a4,3(a5)
    800030a0:	00300713          	li	a4,3
    800030a4:	00e78023          	sb	a4,0(a5)
    800030a8:	000780a3          	sb	zero,1(a5)
    800030ac:	00e781a3          	sb	a4,3(a5)
    800030b0:	00700693          	li	a3,7
    800030b4:	00d78123          	sb	a3,2(a5)
    800030b8:	00e780a3          	sb	a4,1(a5)
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret

00000000800030c8 <uartputc>:
    800030c8:	00002797          	auipc	a5,0x2
    800030cc:	7707a783          	lw	a5,1904(a5) # 80005838 <panicked>
    800030d0:	00078463          	beqz	a5,800030d8 <uartputc+0x10>
    800030d4:	0000006f          	j	800030d4 <uartputc+0xc>
    800030d8:	fd010113          	addi	sp,sp,-48
    800030dc:	02813023          	sd	s0,32(sp)
    800030e0:	00913c23          	sd	s1,24(sp)
    800030e4:	01213823          	sd	s2,16(sp)
    800030e8:	01313423          	sd	s3,8(sp)
    800030ec:	02113423          	sd	ra,40(sp)
    800030f0:	03010413          	addi	s0,sp,48
    800030f4:	00002917          	auipc	s2,0x2
    800030f8:	74c90913          	addi	s2,s2,1868 # 80005840 <uart_tx_r>
    800030fc:	00093783          	ld	a5,0(s2)
    80003100:	00002497          	auipc	s1,0x2
    80003104:	74848493          	addi	s1,s1,1864 # 80005848 <uart_tx_w>
    80003108:	0004b703          	ld	a4,0(s1)
    8000310c:	02078693          	addi	a3,a5,32
    80003110:	00050993          	mv	s3,a0
    80003114:	02e69c63          	bne	a3,a4,8000314c <uartputc+0x84>
    80003118:	00001097          	auipc	ra,0x1
    8000311c:	834080e7          	jalr	-1996(ra) # 8000394c <push_on>
    80003120:	00093783          	ld	a5,0(s2)
    80003124:	0004b703          	ld	a4,0(s1)
    80003128:	02078793          	addi	a5,a5,32
    8000312c:	00e79463          	bne	a5,a4,80003134 <uartputc+0x6c>
    80003130:	0000006f          	j	80003130 <uartputc+0x68>
    80003134:	00001097          	auipc	ra,0x1
    80003138:	88c080e7          	jalr	-1908(ra) # 800039c0 <pop_on>
    8000313c:	00093783          	ld	a5,0(s2)
    80003140:	0004b703          	ld	a4,0(s1)
    80003144:	02078693          	addi	a3,a5,32
    80003148:	fce688e3          	beq	a3,a4,80003118 <uartputc+0x50>
    8000314c:	01f77693          	andi	a3,a4,31
    80003150:	00004597          	auipc	a1,0x4
    80003154:	96058593          	addi	a1,a1,-1696 # 80006ab0 <uart_tx_buf>
    80003158:	00d586b3          	add	a3,a1,a3
    8000315c:	00170713          	addi	a4,a4,1
    80003160:	01368023          	sb	s3,0(a3)
    80003164:	00e4b023          	sd	a4,0(s1)
    80003168:	10000637          	lui	a2,0x10000
    8000316c:	02f71063          	bne	a4,a5,8000318c <uartputc+0xc4>
    80003170:	0340006f          	j	800031a4 <uartputc+0xdc>
    80003174:	00074703          	lbu	a4,0(a4)
    80003178:	00f93023          	sd	a5,0(s2)
    8000317c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003180:	00093783          	ld	a5,0(s2)
    80003184:	0004b703          	ld	a4,0(s1)
    80003188:	00f70e63          	beq	a4,a5,800031a4 <uartputc+0xdc>
    8000318c:	00564683          	lbu	a3,5(a2)
    80003190:	01f7f713          	andi	a4,a5,31
    80003194:	00e58733          	add	a4,a1,a4
    80003198:	0206f693          	andi	a3,a3,32
    8000319c:	00178793          	addi	a5,a5,1
    800031a0:	fc069ae3          	bnez	a3,80003174 <uartputc+0xac>
    800031a4:	02813083          	ld	ra,40(sp)
    800031a8:	02013403          	ld	s0,32(sp)
    800031ac:	01813483          	ld	s1,24(sp)
    800031b0:	01013903          	ld	s2,16(sp)
    800031b4:	00813983          	ld	s3,8(sp)
    800031b8:	03010113          	addi	sp,sp,48
    800031bc:	00008067          	ret

00000000800031c0 <uartputc_sync>:
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00813423          	sd	s0,8(sp)
    800031c8:	01010413          	addi	s0,sp,16
    800031cc:	00002717          	auipc	a4,0x2
    800031d0:	66c72703          	lw	a4,1644(a4) # 80005838 <panicked>
    800031d4:	02071663          	bnez	a4,80003200 <uartputc_sync+0x40>
    800031d8:	00050793          	mv	a5,a0
    800031dc:	100006b7          	lui	a3,0x10000
    800031e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800031e4:	02077713          	andi	a4,a4,32
    800031e8:	fe070ce3          	beqz	a4,800031e0 <uartputc_sync+0x20>
    800031ec:	0ff7f793          	andi	a5,a5,255
    800031f0:	00f68023          	sb	a5,0(a3)
    800031f4:	00813403          	ld	s0,8(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret
    80003200:	0000006f          	j	80003200 <uartputc_sync+0x40>

0000000080003204 <uartstart>:
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00813423          	sd	s0,8(sp)
    8000320c:	01010413          	addi	s0,sp,16
    80003210:	00002617          	auipc	a2,0x2
    80003214:	63060613          	addi	a2,a2,1584 # 80005840 <uart_tx_r>
    80003218:	00002517          	auipc	a0,0x2
    8000321c:	63050513          	addi	a0,a0,1584 # 80005848 <uart_tx_w>
    80003220:	00063783          	ld	a5,0(a2)
    80003224:	00053703          	ld	a4,0(a0)
    80003228:	04f70263          	beq	a4,a5,8000326c <uartstart+0x68>
    8000322c:	100005b7          	lui	a1,0x10000
    80003230:	00004817          	auipc	a6,0x4
    80003234:	88080813          	addi	a6,a6,-1920 # 80006ab0 <uart_tx_buf>
    80003238:	01c0006f          	j	80003254 <uartstart+0x50>
    8000323c:	0006c703          	lbu	a4,0(a3)
    80003240:	00f63023          	sd	a5,0(a2)
    80003244:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003248:	00063783          	ld	a5,0(a2)
    8000324c:	00053703          	ld	a4,0(a0)
    80003250:	00f70e63          	beq	a4,a5,8000326c <uartstart+0x68>
    80003254:	01f7f713          	andi	a4,a5,31
    80003258:	00e806b3          	add	a3,a6,a4
    8000325c:	0055c703          	lbu	a4,5(a1)
    80003260:	00178793          	addi	a5,a5,1
    80003264:	02077713          	andi	a4,a4,32
    80003268:	fc071ae3          	bnez	a4,8000323c <uartstart+0x38>
    8000326c:	00813403          	ld	s0,8(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret

0000000080003278 <uartgetc>:
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00813423          	sd	s0,8(sp)
    80003280:	01010413          	addi	s0,sp,16
    80003284:	10000737          	lui	a4,0x10000
    80003288:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000328c:	0017f793          	andi	a5,a5,1
    80003290:	00078c63          	beqz	a5,800032a8 <uartgetc+0x30>
    80003294:	00074503          	lbu	a0,0(a4)
    80003298:	0ff57513          	andi	a0,a0,255
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret
    800032a8:	fff00513          	li	a0,-1
    800032ac:	ff1ff06f          	j	8000329c <uartgetc+0x24>

00000000800032b0 <uartintr>:
    800032b0:	100007b7          	lui	a5,0x10000
    800032b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800032b8:	0017f793          	andi	a5,a5,1
    800032bc:	0a078463          	beqz	a5,80003364 <uartintr+0xb4>
    800032c0:	fe010113          	addi	sp,sp,-32
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	00113c23          	sd	ra,24(sp)
    800032d0:	02010413          	addi	s0,sp,32
    800032d4:	100004b7          	lui	s1,0x10000
    800032d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800032dc:	0ff57513          	andi	a0,a0,255
    800032e0:	fffff097          	auipc	ra,0xfffff
    800032e4:	534080e7          	jalr	1332(ra) # 80002814 <consoleintr>
    800032e8:	0054c783          	lbu	a5,5(s1)
    800032ec:	0017f793          	andi	a5,a5,1
    800032f0:	fe0794e3          	bnez	a5,800032d8 <uartintr+0x28>
    800032f4:	00002617          	auipc	a2,0x2
    800032f8:	54c60613          	addi	a2,a2,1356 # 80005840 <uart_tx_r>
    800032fc:	00002517          	auipc	a0,0x2
    80003300:	54c50513          	addi	a0,a0,1356 # 80005848 <uart_tx_w>
    80003304:	00063783          	ld	a5,0(a2)
    80003308:	00053703          	ld	a4,0(a0)
    8000330c:	04f70263          	beq	a4,a5,80003350 <uartintr+0xa0>
    80003310:	100005b7          	lui	a1,0x10000
    80003314:	00003817          	auipc	a6,0x3
    80003318:	79c80813          	addi	a6,a6,1948 # 80006ab0 <uart_tx_buf>
    8000331c:	01c0006f          	j	80003338 <uartintr+0x88>
    80003320:	0006c703          	lbu	a4,0(a3)
    80003324:	00f63023          	sd	a5,0(a2)
    80003328:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000332c:	00063783          	ld	a5,0(a2)
    80003330:	00053703          	ld	a4,0(a0)
    80003334:	00f70e63          	beq	a4,a5,80003350 <uartintr+0xa0>
    80003338:	01f7f713          	andi	a4,a5,31
    8000333c:	00e806b3          	add	a3,a6,a4
    80003340:	0055c703          	lbu	a4,5(a1)
    80003344:	00178793          	addi	a5,a5,1
    80003348:	02077713          	andi	a4,a4,32
    8000334c:	fc071ae3          	bnez	a4,80003320 <uartintr+0x70>
    80003350:	01813083          	ld	ra,24(sp)
    80003354:	01013403          	ld	s0,16(sp)
    80003358:	00813483          	ld	s1,8(sp)
    8000335c:	02010113          	addi	sp,sp,32
    80003360:	00008067          	ret
    80003364:	00002617          	auipc	a2,0x2
    80003368:	4dc60613          	addi	a2,a2,1244 # 80005840 <uart_tx_r>
    8000336c:	00002517          	auipc	a0,0x2
    80003370:	4dc50513          	addi	a0,a0,1244 # 80005848 <uart_tx_w>
    80003374:	00063783          	ld	a5,0(a2)
    80003378:	00053703          	ld	a4,0(a0)
    8000337c:	04f70263          	beq	a4,a5,800033c0 <uartintr+0x110>
    80003380:	100005b7          	lui	a1,0x10000
    80003384:	00003817          	auipc	a6,0x3
    80003388:	72c80813          	addi	a6,a6,1836 # 80006ab0 <uart_tx_buf>
    8000338c:	01c0006f          	j	800033a8 <uartintr+0xf8>
    80003390:	0006c703          	lbu	a4,0(a3)
    80003394:	00f63023          	sd	a5,0(a2)
    80003398:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000339c:	00063783          	ld	a5,0(a2)
    800033a0:	00053703          	ld	a4,0(a0)
    800033a4:	02f70063          	beq	a4,a5,800033c4 <uartintr+0x114>
    800033a8:	01f7f713          	andi	a4,a5,31
    800033ac:	00e806b3          	add	a3,a6,a4
    800033b0:	0055c703          	lbu	a4,5(a1)
    800033b4:	00178793          	addi	a5,a5,1
    800033b8:	02077713          	andi	a4,a4,32
    800033bc:	fc071ae3          	bnez	a4,80003390 <uartintr+0xe0>
    800033c0:	00008067          	ret
    800033c4:	00008067          	ret

00000000800033c8 <kinit>:
    800033c8:	fc010113          	addi	sp,sp,-64
    800033cc:	02913423          	sd	s1,40(sp)
    800033d0:	fffff7b7          	lui	a5,0xfffff
    800033d4:	00004497          	auipc	s1,0x4
    800033d8:	70b48493          	addi	s1,s1,1803 # 80007adf <end+0xfff>
    800033dc:	02813823          	sd	s0,48(sp)
    800033e0:	01313c23          	sd	s3,24(sp)
    800033e4:	00f4f4b3          	and	s1,s1,a5
    800033e8:	02113c23          	sd	ra,56(sp)
    800033ec:	03213023          	sd	s2,32(sp)
    800033f0:	01413823          	sd	s4,16(sp)
    800033f4:	01513423          	sd	s5,8(sp)
    800033f8:	04010413          	addi	s0,sp,64
    800033fc:	000017b7          	lui	a5,0x1
    80003400:	01100993          	li	s3,17
    80003404:	00f487b3          	add	a5,s1,a5
    80003408:	01b99993          	slli	s3,s3,0x1b
    8000340c:	06f9e063          	bltu	s3,a5,8000346c <kinit+0xa4>
    80003410:	00003a97          	auipc	s5,0x3
    80003414:	6d0a8a93          	addi	s5,s5,1744 # 80006ae0 <end>
    80003418:	0754ec63          	bltu	s1,s5,80003490 <kinit+0xc8>
    8000341c:	0734fa63          	bgeu	s1,s3,80003490 <kinit+0xc8>
    80003420:	00088a37          	lui	s4,0x88
    80003424:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003428:	00002917          	auipc	s2,0x2
    8000342c:	42890913          	addi	s2,s2,1064 # 80005850 <kmem>
    80003430:	00ca1a13          	slli	s4,s4,0xc
    80003434:	0140006f          	j	80003448 <kinit+0x80>
    80003438:	000017b7          	lui	a5,0x1
    8000343c:	00f484b3          	add	s1,s1,a5
    80003440:	0554e863          	bltu	s1,s5,80003490 <kinit+0xc8>
    80003444:	0534f663          	bgeu	s1,s3,80003490 <kinit+0xc8>
    80003448:	00001637          	lui	a2,0x1
    8000344c:	00100593          	li	a1,1
    80003450:	00048513          	mv	a0,s1
    80003454:	00000097          	auipc	ra,0x0
    80003458:	5e4080e7          	jalr	1508(ra) # 80003a38 <__memset>
    8000345c:	00093783          	ld	a5,0(s2)
    80003460:	00f4b023          	sd	a5,0(s1)
    80003464:	00993023          	sd	s1,0(s2)
    80003468:	fd4498e3          	bne	s1,s4,80003438 <kinit+0x70>
    8000346c:	03813083          	ld	ra,56(sp)
    80003470:	03013403          	ld	s0,48(sp)
    80003474:	02813483          	ld	s1,40(sp)
    80003478:	02013903          	ld	s2,32(sp)
    8000347c:	01813983          	ld	s3,24(sp)
    80003480:	01013a03          	ld	s4,16(sp)
    80003484:	00813a83          	ld	s5,8(sp)
    80003488:	04010113          	addi	sp,sp,64
    8000348c:	00008067          	ret
    80003490:	00002517          	auipc	a0,0x2
    80003494:	df850513          	addi	a0,a0,-520 # 80005288 <digits+0x18>
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	4b4080e7          	jalr	1204(ra) # 8000294c <panic>

00000000800034a0 <freerange>:
    800034a0:	fc010113          	addi	sp,sp,-64
    800034a4:	000017b7          	lui	a5,0x1
    800034a8:	02913423          	sd	s1,40(sp)
    800034ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800034b0:	009504b3          	add	s1,a0,s1
    800034b4:	fffff537          	lui	a0,0xfffff
    800034b8:	02813823          	sd	s0,48(sp)
    800034bc:	02113c23          	sd	ra,56(sp)
    800034c0:	03213023          	sd	s2,32(sp)
    800034c4:	01313c23          	sd	s3,24(sp)
    800034c8:	01413823          	sd	s4,16(sp)
    800034cc:	01513423          	sd	s5,8(sp)
    800034d0:	01613023          	sd	s6,0(sp)
    800034d4:	04010413          	addi	s0,sp,64
    800034d8:	00a4f4b3          	and	s1,s1,a0
    800034dc:	00f487b3          	add	a5,s1,a5
    800034e0:	06f5e463          	bltu	a1,a5,80003548 <freerange+0xa8>
    800034e4:	00003a97          	auipc	s5,0x3
    800034e8:	5fca8a93          	addi	s5,s5,1532 # 80006ae0 <end>
    800034ec:	0954e263          	bltu	s1,s5,80003570 <freerange+0xd0>
    800034f0:	01100993          	li	s3,17
    800034f4:	01b99993          	slli	s3,s3,0x1b
    800034f8:	0734fc63          	bgeu	s1,s3,80003570 <freerange+0xd0>
    800034fc:	00058a13          	mv	s4,a1
    80003500:	00002917          	auipc	s2,0x2
    80003504:	35090913          	addi	s2,s2,848 # 80005850 <kmem>
    80003508:	00002b37          	lui	s6,0x2
    8000350c:	0140006f          	j	80003520 <freerange+0x80>
    80003510:	000017b7          	lui	a5,0x1
    80003514:	00f484b3          	add	s1,s1,a5
    80003518:	0554ec63          	bltu	s1,s5,80003570 <freerange+0xd0>
    8000351c:	0534fa63          	bgeu	s1,s3,80003570 <freerange+0xd0>
    80003520:	00001637          	lui	a2,0x1
    80003524:	00100593          	li	a1,1
    80003528:	00048513          	mv	a0,s1
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	50c080e7          	jalr	1292(ra) # 80003a38 <__memset>
    80003534:	00093703          	ld	a4,0(s2)
    80003538:	016487b3          	add	a5,s1,s6
    8000353c:	00e4b023          	sd	a4,0(s1)
    80003540:	00993023          	sd	s1,0(s2)
    80003544:	fcfa76e3          	bgeu	s4,a5,80003510 <freerange+0x70>
    80003548:	03813083          	ld	ra,56(sp)
    8000354c:	03013403          	ld	s0,48(sp)
    80003550:	02813483          	ld	s1,40(sp)
    80003554:	02013903          	ld	s2,32(sp)
    80003558:	01813983          	ld	s3,24(sp)
    8000355c:	01013a03          	ld	s4,16(sp)
    80003560:	00813a83          	ld	s5,8(sp)
    80003564:	00013b03          	ld	s6,0(sp)
    80003568:	04010113          	addi	sp,sp,64
    8000356c:	00008067          	ret
    80003570:	00002517          	auipc	a0,0x2
    80003574:	d1850513          	addi	a0,a0,-744 # 80005288 <digits+0x18>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	3d4080e7          	jalr	980(ra) # 8000294c <panic>

0000000080003580 <kfree>:
    80003580:	fe010113          	addi	sp,sp,-32
    80003584:	00813823          	sd	s0,16(sp)
    80003588:	00113c23          	sd	ra,24(sp)
    8000358c:	00913423          	sd	s1,8(sp)
    80003590:	02010413          	addi	s0,sp,32
    80003594:	03451793          	slli	a5,a0,0x34
    80003598:	04079c63          	bnez	a5,800035f0 <kfree+0x70>
    8000359c:	00003797          	auipc	a5,0x3
    800035a0:	54478793          	addi	a5,a5,1348 # 80006ae0 <end>
    800035a4:	00050493          	mv	s1,a0
    800035a8:	04f56463          	bltu	a0,a5,800035f0 <kfree+0x70>
    800035ac:	01100793          	li	a5,17
    800035b0:	01b79793          	slli	a5,a5,0x1b
    800035b4:	02f57e63          	bgeu	a0,a5,800035f0 <kfree+0x70>
    800035b8:	00001637          	lui	a2,0x1
    800035bc:	00100593          	li	a1,1
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	478080e7          	jalr	1144(ra) # 80003a38 <__memset>
    800035c8:	00002797          	auipc	a5,0x2
    800035cc:	28878793          	addi	a5,a5,648 # 80005850 <kmem>
    800035d0:	0007b703          	ld	a4,0(a5)
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00e4b023          	sd	a4,0(s1)
    800035e0:	0097b023          	sd	s1,0(a5)
    800035e4:	00813483          	ld	s1,8(sp)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00008067          	ret
    800035f0:	00002517          	auipc	a0,0x2
    800035f4:	c9850513          	addi	a0,a0,-872 # 80005288 <digits+0x18>
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	354080e7          	jalr	852(ra) # 8000294c <panic>

0000000080003600 <kalloc>:
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00913423          	sd	s1,8(sp)
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	02010413          	addi	s0,sp,32
    80003614:	00002797          	auipc	a5,0x2
    80003618:	23c78793          	addi	a5,a5,572 # 80005850 <kmem>
    8000361c:	0007b483          	ld	s1,0(a5)
    80003620:	02048063          	beqz	s1,80003640 <kalloc+0x40>
    80003624:	0004b703          	ld	a4,0(s1)
    80003628:	00001637          	lui	a2,0x1
    8000362c:	00500593          	li	a1,5
    80003630:	00048513          	mv	a0,s1
    80003634:	00e7b023          	sd	a4,0(a5)
    80003638:	00000097          	auipc	ra,0x0
    8000363c:	400080e7          	jalr	1024(ra) # 80003a38 <__memset>
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00048513          	mv	a0,s1
    8000364c:	00813483          	ld	s1,8(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <initlock>:
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00813423          	sd	s0,8(sp)
    80003660:	01010413          	addi	s0,sp,16
    80003664:	00813403          	ld	s0,8(sp)
    80003668:	00b53423          	sd	a1,8(a0)
    8000366c:	00052023          	sw	zero,0(a0)
    80003670:	00053823          	sd	zero,16(a0)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <acquire>:
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	01213023          	sd	s2,0(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	00050493          	mv	s1,a0
    80003698:	10002973          	csrr	s2,sstatus
    8000369c:	100027f3          	csrr	a5,sstatus
    800036a0:	ffd7f793          	andi	a5,a5,-3
    800036a4:	10079073          	csrw	sstatus,a5
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	8e4080e7          	jalr	-1820(ra) # 80001f8c <mycpu>
    800036b0:	07852783          	lw	a5,120(a0)
    800036b4:	06078e63          	beqz	a5,80003730 <acquire+0xb4>
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	8d4080e7          	jalr	-1836(ra) # 80001f8c <mycpu>
    800036c0:	07852783          	lw	a5,120(a0)
    800036c4:	0004a703          	lw	a4,0(s1)
    800036c8:	0017879b          	addiw	a5,a5,1
    800036cc:	06f52c23          	sw	a5,120(a0)
    800036d0:	04071063          	bnez	a4,80003710 <acquire+0x94>
    800036d4:	00100713          	li	a4,1
    800036d8:	00070793          	mv	a5,a4
    800036dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800036e0:	0007879b          	sext.w	a5,a5
    800036e4:	fe079ae3          	bnez	a5,800036d8 <acquire+0x5c>
    800036e8:	0ff0000f          	fence
    800036ec:	fffff097          	auipc	ra,0xfffff
    800036f0:	8a0080e7          	jalr	-1888(ra) # 80001f8c <mycpu>
    800036f4:	01813083          	ld	ra,24(sp)
    800036f8:	01013403          	ld	s0,16(sp)
    800036fc:	00a4b823          	sd	a0,16(s1)
    80003700:	00013903          	ld	s2,0(sp)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	02010113          	addi	sp,sp,32
    8000370c:	00008067          	ret
    80003710:	0104b903          	ld	s2,16(s1)
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	878080e7          	jalr	-1928(ra) # 80001f8c <mycpu>
    8000371c:	faa91ce3          	bne	s2,a0,800036d4 <acquire+0x58>
    80003720:	00002517          	auipc	a0,0x2
    80003724:	b7050513          	addi	a0,a0,-1168 # 80005290 <digits+0x20>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	224080e7          	jalr	548(ra) # 8000294c <panic>
    80003730:	00195913          	srli	s2,s2,0x1
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	858080e7          	jalr	-1960(ra) # 80001f8c <mycpu>
    8000373c:	00197913          	andi	s2,s2,1
    80003740:	07252e23          	sw	s2,124(a0)
    80003744:	f75ff06f          	j	800036b8 <acquire+0x3c>

0000000080003748 <release>:
    80003748:	fe010113          	addi	sp,sp,-32
    8000374c:	00813823          	sd	s0,16(sp)
    80003750:	00113c23          	sd	ra,24(sp)
    80003754:	00913423          	sd	s1,8(sp)
    80003758:	01213023          	sd	s2,0(sp)
    8000375c:	02010413          	addi	s0,sp,32
    80003760:	00052783          	lw	a5,0(a0)
    80003764:	00079a63          	bnez	a5,80003778 <release+0x30>
    80003768:	00002517          	auipc	a0,0x2
    8000376c:	b3050513          	addi	a0,a0,-1232 # 80005298 <digits+0x28>
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	1dc080e7          	jalr	476(ra) # 8000294c <panic>
    80003778:	01053903          	ld	s2,16(a0)
    8000377c:	00050493          	mv	s1,a0
    80003780:	fffff097          	auipc	ra,0xfffff
    80003784:	80c080e7          	jalr	-2036(ra) # 80001f8c <mycpu>
    80003788:	fea910e3          	bne	s2,a0,80003768 <release+0x20>
    8000378c:	0004b823          	sd	zero,16(s1)
    80003790:	0ff0000f          	fence
    80003794:	0f50000f          	fence	iorw,ow
    80003798:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	7f0080e7          	jalr	2032(ra) # 80001f8c <mycpu>
    800037a4:	100027f3          	csrr	a5,sstatus
    800037a8:	0027f793          	andi	a5,a5,2
    800037ac:	04079a63          	bnez	a5,80003800 <release+0xb8>
    800037b0:	07852783          	lw	a5,120(a0)
    800037b4:	02f05e63          	blez	a5,800037f0 <release+0xa8>
    800037b8:	fff7871b          	addiw	a4,a5,-1
    800037bc:	06e52c23          	sw	a4,120(a0)
    800037c0:	00071c63          	bnez	a4,800037d8 <release+0x90>
    800037c4:	07c52783          	lw	a5,124(a0)
    800037c8:	00078863          	beqz	a5,800037d8 <release+0x90>
    800037cc:	100027f3          	csrr	a5,sstatus
    800037d0:	0027e793          	ori	a5,a5,2
    800037d4:	10079073          	csrw	sstatus,a5
    800037d8:	01813083          	ld	ra,24(sp)
    800037dc:	01013403          	ld	s0,16(sp)
    800037e0:	00813483          	ld	s1,8(sp)
    800037e4:	00013903          	ld	s2,0(sp)
    800037e8:	02010113          	addi	sp,sp,32
    800037ec:	00008067          	ret
    800037f0:	00002517          	auipc	a0,0x2
    800037f4:	ac850513          	addi	a0,a0,-1336 # 800052b8 <digits+0x48>
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	154080e7          	jalr	340(ra) # 8000294c <panic>
    80003800:	00002517          	auipc	a0,0x2
    80003804:	aa050513          	addi	a0,a0,-1376 # 800052a0 <digits+0x30>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	144080e7          	jalr	324(ra) # 8000294c <panic>

0000000080003810 <holding>:
    80003810:	00052783          	lw	a5,0(a0)
    80003814:	00079663          	bnez	a5,80003820 <holding+0x10>
    80003818:	00000513          	li	a0,0
    8000381c:	00008067          	ret
    80003820:	fe010113          	addi	sp,sp,-32
    80003824:	00813823          	sd	s0,16(sp)
    80003828:	00913423          	sd	s1,8(sp)
    8000382c:	00113c23          	sd	ra,24(sp)
    80003830:	02010413          	addi	s0,sp,32
    80003834:	01053483          	ld	s1,16(a0)
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	754080e7          	jalr	1876(ra) # 80001f8c <mycpu>
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	40a48533          	sub	a0,s1,a0
    8000384c:	00153513          	seqz	a0,a0
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret

000000008000385c <push_off>:
    8000385c:	fe010113          	addi	sp,sp,-32
    80003860:	00813823          	sd	s0,16(sp)
    80003864:	00113c23          	sd	ra,24(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	02010413          	addi	s0,sp,32
    80003870:	100024f3          	csrr	s1,sstatus
    80003874:	100027f3          	csrr	a5,sstatus
    80003878:	ffd7f793          	andi	a5,a5,-3
    8000387c:	10079073          	csrw	sstatus,a5
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	70c080e7          	jalr	1804(ra) # 80001f8c <mycpu>
    80003888:	07852783          	lw	a5,120(a0)
    8000388c:	02078663          	beqz	a5,800038b8 <push_off+0x5c>
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	6fc080e7          	jalr	1788(ra) # 80001f8c <mycpu>
    80003898:	07852783          	lw	a5,120(a0)
    8000389c:	01813083          	ld	ra,24(sp)
    800038a0:	01013403          	ld	s0,16(sp)
    800038a4:	0017879b          	addiw	a5,a5,1
    800038a8:	06f52c23          	sw	a5,120(a0)
    800038ac:	00813483          	ld	s1,8(sp)
    800038b0:	02010113          	addi	sp,sp,32
    800038b4:	00008067          	ret
    800038b8:	0014d493          	srli	s1,s1,0x1
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	6d0080e7          	jalr	1744(ra) # 80001f8c <mycpu>
    800038c4:	0014f493          	andi	s1,s1,1
    800038c8:	06952e23          	sw	s1,124(a0)
    800038cc:	fc5ff06f          	j	80003890 <push_off+0x34>

00000000800038d0 <pop_off>:
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00813023          	sd	s0,0(sp)
    800038d8:	00113423          	sd	ra,8(sp)
    800038dc:	01010413          	addi	s0,sp,16
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	6ac080e7          	jalr	1708(ra) # 80001f8c <mycpu>
    800038e8:	100027f3          	csrr	a5,sstatus
    800038ec:	0027f793          	andi	a5,a5,2
    800038f0:	04079663          	bnez	a5,8000393c <pop_off+0x6c>
    800038f4:	07852783          	lw	a5,120(a0)
    800038f8:	02f05a63          	blez	a5,8000392c <pop_off+0x5c>
    800038fc:	fff7871b          	addiw	a4,a5,-1
    80003900:	06e52c23          	sw	a4,120(a0)
    80003904:	00071c63          	bnez	a4,8000391c <pop_off+0x4c>
    80003908:	07c52783          	lw	a5,124(a0)
    8000390c:	00078863          	beqz	a5,8000391c <pop_off+0x4c>
    80003910:	100027f3          	csrr	a5,sstatus
    80003914:	0027e793          	ori	a5,a5,2
    80003918:	10079073          	csrw	sstatus,a5
    8000391c:	00813083          	ld	ra,8(sp)
    80003920:	00013403          	ld	s0,0(sp)
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret
    8000392c:	00002517          	auipc	a0,0x2
    80003930:	98c50513          	addi	a0,a0,-1652 # 800052b8 <digits+0x48>
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	018080e7          	jalr	24(ra) # 8000294c <panic>
    8000393c:	00002517          	auipc	a0,0x2
    80003940:	96450513          	addi	a0,a0,-1692 # 800052a0 <digits+0x30>
    80003944:	fffff097          	auipc	ra,0xfffff
    80003948:	008080e7          	jalr	8(ra) # 8000294c <panic>

000000008000394c <push_on>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00113c23          	sd	ra,24(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	100024f3          	csrr	s1,sstatus
    80003964:	100027f3          	csrr	a5,sstatus
    80003968:	0027e793          	ori	a5,a5,2
    8000396c:	10079073          	csrw	sstatus,a5
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	61c080e7          	jalr	1564(ra) # 80001f8c <mycpu>
    80003978:	07852783          	lw	a5,120(a0)
    8000397c:	02078663          	beqz	a5,800039a8 <push_on+0x5c>
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	60c080e7          	jalr	1548(ra) # 80001f8c <mycpu>
    80003988:	07852783          	lw	a5,120(a0)
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	0017879b          	addiw	a5,a5,1
    80003998:	06f52c23          	sw	a5,120(a0)
    8000399c:	00813483          	ld	s1,8(sp)
    800039a0:	02010113          	addi	sp,sp,32
    800039a4:	00008067          	ret
    800039a8:	0014d493          	srli	s1,s1,0x1
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	5e0080e7          	jalr	1504(ra) # 80001f8c <mycpu>
    800039b4:	0014f493          	andi	s1,s1,1
    800039b8:	06952e23          	sw	s1,124(a0)
    800039bc:	fc5ff06f          	j	80003980 <push_on+0x34>

00000000800039c0 <pop_on>:
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00813023          	sd	s0,0(sp)
    800039c8:	00113423          	sd	ra,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	5bc080e7          	jalr	1468(ra) # 80001f8c <mycpu>
    800039d8:	100027f3          	csrr	a5,sstatus
    800039dc:	0027f793          	andi	a5,a5,2
    800039e0:	04078463          	beqz	a5,80003a28 <pop_on+0x68>
    800039e4:	07852783          	lw	a5,120(a0)
    800039e8:	02f05863          	blez	a5,80003a18 <pop_on+0x58>
    800039ec:	fff7879b          	addiw	a5,a5,-1
    800039f0:	06f52c23          	sw	a5,120(a0)
    800039f4:	07853783          	ld	a5,120(a0)
    800039f8:	00079863          	bnez	a5,80003a08 <pop_on+0x48>
    800039fc:	100027f3          	csrr	a5,sstatus
    80003a00:	ffd7f793          	andi	a5,a5,-3
    80003a04:	10079073          	csrw	sstatus,a5
    80003a08:	00813083          	ld	ra,8(sp)
    80003a0c:	00013403          	ld	s0,0(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret
    80003a18:	00002517          	auipc	a0,0x2
    80003a1c:	8c850513          	addi	a0,a0,-1848 # 800052e0 <digits+0x70>
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	f2c080e7          	jalr	-212(ra) # 8000294c <panic>
    80003a28:	00002517          	auipc	a0,0x2
    80003a2c:	89850513          	addi	a0,a0,-1896 # 800052c0 <digits+0x50>
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	f1c080e7          	jalr	-228(ra) # 8000294c <panic>

0000000080003a38 <__memset>:
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
    80003a44:	1a060e63          	beqz	a2,80003c00 <__memset+0x1c8>
    80003a48:	40a007b3          	neg	a5,a0
    80003a4c:	0077f793          	andi	a5,a5,7
    80003a50:	00778693          	addi	a3,a5,7
    80003a54:	00b00813          	li	a6,11
    80003a58:	0ff5f593          	andi	a1,a1,255
    80003a5c:	fff6071b          	addiw	a4,a2,-1
    80003a60:	1b06e663          	bltu	a3,a6,80003c0c <__memset+0x1d4>
    80003a64:	1cd76463          	bltu	a4,a3,80003c2c <__memset+0x1f4>
    80003a68:	1a078e63          	beqz	a5,80003c24 <__memset+0x1ec>
    80003a6c:	00b50023          	sb	a1,0(a0)
    80003a70:	00100713          	li	a4,1
    80003a74:	1ae78463          	beq	a5,a4,80003c1c <__memset+0x1e4>
    80003a78:	00b500a3          	sb	a1,1(a0)
    80003a7c:	00200713          	li	a4,2
    80003a80:	1ae78a63          	beq	a5,a4,80003c34 <__memset+0x1fc>
    80003a84:	00b50123          	sb	a1,2(a0)
    80003a88:	00300713          	li	a4,3
    80003a8c:	18e78463          	beq	a5,a4,80003c14 <__memset+0x1dc>
    80003a90:	00b501a3          	sb	a1,3(a0)
    80003a94:	00400713          	li	a4,4
    80003a98:	1ae78263          	beq	a5,a4,80003c3c <__memset+0x204>
    80003a9c:	00b50223          	sb	a1,4(a0)
    80003aa0:	00500713          	li	a4,5
    80003aa4:	1ae78063          	beq	a5,a4,80003c44 <__memset+0x20c>
    80003aa8:	00b502a3          	sb	a1,5(a0)
    80003aac:	00700713          	li	a4,7
    80003ab0:	18e79e63          	bne	a5,a4,80003c4c <__memset+0x214>
    80003ab4:	00b50323          	sb	a1,6(a0)
    80003ab8:	00700e93          	li	t4,7
    80003abc:	00859713          	slli	a4,a1,0x8
    80003ac0:	00e5e733          	or	a4,a1,a4
    80003ac4:	01059e13          	slli	t3,a1,0x10
    80003ac8:	01c76e33          	or	t3,a4,t3
    80003acc:	01859313          	slli	t1,a1,0x18
    80003ad0:	006e6333          	or	t1,t3,t1
    80003ad4:	02059893          	slli	a7,a1,0x20
    80003ad8:	40f60e3b          	subw	t3,a2,a5
    80003adc:	011368b3          	or	a7,t1,a7
    80003ae0:	02859813          	slli	a6,a1,0x28
    80003ae4:	0108e833          	or	a6,a7,a6
    80003ae8:	03059693          	slli	a3,a1,0x30
    80003aec:	003e589b          	srliw	a7,t3,0x3
    80003af0:	00d866b3          	or	a3,a6,a3
    80003af4:	03859713          	slli	a4,a1,0x38
    80003af8:	00389813          	slli	a6,a7,0x3
    80003afc:	00f507b3          	add	a5,a0,a5
    80003b00:	00e6e733          	or	a4,a3,a4
    80003b04:	000e089b          	sext.w	a7,t3
    80003b08:	00f806b3          	add	a3,a6,a5
    80003b0c:	00e7b023          	sd	a4,0(a5)
    80003b10:	00878793          	addi	a5,a5,8
    80003b14:	fed79ce3          	bne	a5,a3,80003b0c <__memset+0xd4>
    80003b18:	ff8e7793          	andi	a5,t3,-8
    80003b1c:	0007871b          	sext.w	a4,a5
    80003b20:	01d787bb          	addw	a5,a5,t4
    80003b24:	0ce88e63          	beq	a7,a4,80003c00 <__memset+0x1c8>
    80003b28:	00f50733          	add	a4,a0,a5
    80003b2c:	00b70023          	sb	a1,0(a4)
    80003b30:	0017871b          	addiw	a4,a5,1
    80003b34:	0cc77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b38:	00e50733          	add	a4,a0,a4
    80003b3c:	00b70023          	sb	a1,0(a4)
    80003b40:	0027871b          	addiw	a4,a5,2
    80003b44:	0ac77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b48:	00e50733          	add	a4,a0,a4
    80003b4c:	00b70023          	sb	a1,0(a4)
    80003b50:	0037871b          	addiw	a4,a5,3
    80003b54:	0ac77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b58:	00e50733          	add	a4,a0,a4
    80003b5c:	00b70023          	sb	a1,0(a4)
    80003b60:	0047871b          	addiw	a4,a5,4
    80003b64:	08c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b68:	00e50733          	add	a4,a0,a4
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	0057871b          	addiw	a4,a5,5
    80003b74:	08c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	0067871b          	addiw	a4,a5,6
    80003b84:	06c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	0077871b          	addiw	a4,a5,7
    80003b94:	06c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0087871b          	addiw	a4,a5,8
    80003ba4:	04c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0097871b          	addiw	a4,a5,9
    80003bb4:	04c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	00a7871b          	addiw	a4,a5,10
    80003bc4:	02c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	00b7871b          	addiw	a4,a5,11
    80003bd4:	02c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	00c7871b          	addiw	a4,a5,12
    80003be4:	00c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	00d7879b          	addiw	a5,a5,13
    80003bf4:	00c7f663          	bgeu	a5,a2,80003c00 <__memset+0x1c8>
    80003bf8:	00f507b3          	add	a5,a0,a5
    80003bfc:	00b78023          	sb	a1,0(a5)
    80003c00:	00813403          	ld	s0,8(sp)
    80003c04:	01010113          	addi	sp,sp,16
    80003c08:	00008067          	ret
    80003c0c:	00b00693          	li	a3,11
    80003c10:	e55ff06f          	j	80003a64 <__memset+0x2c>
    80003c14:	00300e93          	li	t4,3
    80003c18:	ea5ff06f          	j	80003abc <__memset+0x84>
    80003c1c:	00100e93          	li	t4,1
    80003c20:	e9dff06f          	j	80003abc <__memset+0x84>
    80003c24:	00000e93          	li	t4,0
    80003c28:	e95ff06f          	j	80003abc <__memset+0x84>
    80003c2c:	00000793          	li	a5,0
    80003c30:	ef9ff06f          	j	80003b28 <__memset+0xf0>
    80003c34:	00200e93          	li	t4,2
    80003c38:	e85ff06f          	j	80003abc <__memset+0x84>
    80003c3c:	00400e93          	li	t4,4
    80003c40:	e7dff06f          	j	80003abc <__memset+0x84>
    80003c44:	00500e93          	li	t4,5
    80003c48:	e75ff06f          	j	80003abc <__memset+0x84>
    80003c4c:	00600e93          	li	t4,6
    80003c50:	e6dff06f          	j	80003abc <__memset+0x84>

0000000080003c54 <__memmove>:
    80003c54:	ff010113          	addi	sp,sp,-16
    80003c58:	00813423          	sd	s0,8(sp)
    80003c5c:	01010413          	addi	s0,sp,16
    80003c60:	0e060863          	beqz	a2,80003d50 <__memmove+0xfc>
    80003c64:	fff6069b          	addiw	a3,a2,-1
    80003c68:	0006881b          	sext.w	a6,a3
    80003c6c:	0ea5e863          	bltu	a1,a0,80003d5c <__memmove+0x108>
    80003c70:	00758713          	addi	a4,a1,7
    80003c74:	00a5e7b3          	or	a5,a1,a0
    80003c78:	40a70733          	sub	a4,a4,a0
    80003c7c:	0077f793          	andi	a5,a5,7
    80003c80:	00f73713          	sltiu	a4,a4,15
    80003c84:	00174713          	xori	a4,a4,1
    80003c88:	0017b793          	seqz	a5,a5
    80003c8c:	00e7f7b3          	and	a5,a5,a4
    80003c90:	10078863          	beqz	a5,80003da0 <__memmove+0x14c>
    80003c94:	00900793          	li	a5,9
    80003c98:	1107f463          	bgeu	a5,a6,80003da0 <__memmove+0x14c>
    80003c9c:	0036581b          	srliw	a6,a2,0x3
    80003ca0:	fff8081b          	addiw	a6,a6,-1
    80003ca4:	02081813          	slli	a6,a6,0x20
    80003ca8:	01d85893          	srli	a7,a6,0x1d
    80003cac:	00858813          	addi	a6,a1,8
    80003cb0:	00058793          	mv	a5,a1
    80003cb4:	00050713          	mv	a4,a0
    80003cb8:	01088833          	add	a6,a7,a6
    80003cbc:	0007b883          	ld	a7,0(a5)
    80003cc0:	00878793          	addi	a5,a5,8
    80003cc4:	00870713          	addi	a4,a4,8
    80003cc8:	ff173c23          	sd	a7,-8(a4)
    80003ccc:	ff0798e3          	bne	a5,a6,80003cbc <__memmove+0x68>
    80003cd0:	ff867713          	andi	a4,a2,-8
    80003cd4:	02071793          	slli	a5,a4,0x20
    80003cd8:	0207d793          	srli	a5,a5,0x20
    80003cdc:	00f585b3          	add	a1,a1,a5
    80003ce0:	40e686bb          	subw	a3,a3,a4
    80003ce4:	00f507b3          	add	a5,a0,a5
    80003ce8:	06e60463          	beq	a2,a4,80003d50 <__memmove+0xfc>
    80003cec:	0005c703          	lbu	a4,0(a1)
    80003cf0:	00e78023          	sb	a4,0(a5)
    80003cf4:	04068e63          	beqz	a3,80003d50 <__memmove+0xfc>
    80003cf8:	0015c603          	lbu	a2,1(a1)
    80003cfc:	00100713          	li	a4,1
    80003d00:	00c780a3          	sb	a2,1(a5)
    80003d04:	04e68663          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d08:	0025c603          	lbu	a2,2(a1)
    80003d0c:	00200713          	li	a4,2
    80003d10:	00c78123          	sb	a2,2(a5)
    80003d14:	02e68e63          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d18:	0035c603          	lbu	a2,3(a1)
    80003d1c:	00300713          	li	a4,3
    80003d20:	00c781a3          	sb	a2,3(a5)
    80003d24:	02e68663          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d28:	0045c603          	lbu	a2,4(a1)
    80003d2c:	00400713          	li	a4,4
    80003d30:	00c78223          	sb	a2,4(a5)
    80003d34:	00e68e63          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d38:	0055c603          	lbu	a2,5(a1)
    80003d3c:	00500713          	li	a4,5
    80003d40:	00c782a3          	sb	a2,5(a5)
    80003d44:	00e68663          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d48:	0065c703          	lbu	a4,6(a1)
    80003d4c:	00e78323          	sb	a4,6(a5)
    80003d50:	00813403          	ld	s0,8(sp)
    80003d54:	01010113          	addi	sp,sp,16
    80003d58:	00008067          	ret
    80003d5c:	02061713          	slli	a4,a2,0x20
    80003d60:	02075713          	srli	a4,a4,0x20
    80003d64:	00e587b3          	add	a5,a1,a4
    80003d68:	f0f574e3          	bgeu	a0,a5,80003c70 <__memmove+0x1c>
    80003d6c:	02069613          	slli	a2,a3,0x20
    80003d70:	02065613          	srli	a2,a2,0x20
    80003d74:	fff64613          	not	a2,a2
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00c78633          	add	a2,a5,a2
    80003d80:	fff7c683          	lbu	a3,-1(a5)
    80003d84:	fff78793          	addi	a5,a5,-1
    80003d88:	fff70713          	addi	a4,a4,-1
    80003d8c:	00d70023          	sb	a3,0(a4)
    80003d90:	fec798e3          	bne	a5,a2,80003d80 <__memmove+0x12c>
    80003d94:	00813403          	ld	s0,8(sp)
    80003d98:	01010113          	addi	sp,sp,16
    80003d9c:	00008067          	ret
    80003da0:	02069713          	slli	a4,a3,0x20
    80003da4:	02075713          	srli	a4,a4,0x20
    80003da8:	00170713          	addi	a4,a4,1
    80003dac:	00e50733          	add	a4,a0,a4
    80003db0:	00050793          	mv	a5,a0
    80003db4:	0005c683          	lbu	a3,0(a1)
    80003db8:	00178793          	addi	a5,a5,1
    80003dbc:	00158593          	addi	a1,a1,1
    80003dc0:	fed78fa3          	sb	a3,-1(a5)
    80003dc4:	fee798e3          	bne	a5,a4,80003db4 <__memmove+0x160>
    80003dc8:	f89ff06f          	j	80003d50 <__memmove+0xfc>

0000000080003dcc <__mem_free>:
    80003dcc:	ff010113          	addi	sp,sp,-16
    80003dd0:	00813423          	sd	s0,8(sp)
    80003dd4:	01010413          	addi	s0,sp,16
    80003dd8:	00002597          	auipc	a1,0x2
    80003ddc:	a8058593          	addi	a1,a1,-1408 # 80005858 <freep>
    80003de0:	0005b783          	ld	a5,0(a1)
    80003de4:	ff050693          	addi	a3,a0,-16
    80003de8:	0007b703          	ld	a4,0(a5)
    80003dec:	00d7fc63          	bgeu	a5,a3,80003e04 <__mem_free+0x38>
    80003df0:	00e6ee63          	bltu	a3,a4,80003e0c <__mem_free+0x40>
    80003df4:	00e7fc63          	bgeu	a5,a4,80003e0c <__mem_free+0x40>
    80003df8:	00070793          	mv	a5,a4
    80003dfc:	0007b703          	ld	a4,0(a5)
    80003e00:	fed7e8e3          	bltu	a5,a3,80003df0 <__mem_free+0x24>
    80003e04:	fee7eae3          	bltu	a5,a4,80003df8 <__mem_free+0x2c>
    80003e08:	fee6f8e3          	bgeu	a3,a4,80003df8 <__mem_free+0x2c>
    80003e0c:	ff852803          	lw	a6,-8(a0)
    80003e10:	02081613          	slli	a2,a6,0x20
    80003e14:	01c65613          	srli	a2,a2,0x1c
    80003e18:	00c68633          	add	a2,a3,a2
    80003e1c:	02c70a63          	beq	a4,a2,80003e50 <__mem_free+0x84>
    80003e20:	fee53823          	sd	a4,-16(a0)
    80003e24:	0087a503          	lw	a0,8(a5)
    80003e28:	02051613          	slli	a2,a0,0x20
    80003e2c:	01c65613          	srli	a2,a2,0x1c
    80003e30:	00c78633          	add	a2,a5,a2
    80003e34:	04c68263          	beq	a3,a2,80003e78 <__mem_free+0xac>
    80003e38:	00813403          	ld	s0,8(sp)
    80003e3c:	00d7b023          	sd	a3,0(a5)
    80003e40:	00f5b023          	sd	a5,0(a1)
    80003e44:	00000513          	li	a0,0
    80003e48:	01010113          	addi	sp,sp,16
    80003e4c:	00008067          	ret
    80003e50:	00872603          	lw	a2,8(a4)
    80003e54:	00073703          	ld	a4,0(a4)
    80003e58:	0106083b          	addw	a6,a2,a6
    80003e5c:	ff052c23          	sw	a6,-8(a0)
    80003e60:	fee53823          	sd	a4,-16(a0)
    80003e64:	0087a503          	lw	a0,8(a5)
    80003e68:	02051613          	slli	a2,a0,0x20
    80003e6c:	01c65613          	srli	a2,a2,0x1c
    80003e70:	00c78633          	add	a2,a5,a2
    80003e74:	fcc692e3          	bne	a3,a2,80003e38 <__mem_free+0x6c>
    80003e78:	00813403          	ld	s0,8(sp)
    80003e7c:	0105053b          	addw	a0,a0,a6
    80003e80:	00a7a423          	sw	a0,8(a5)
    80003e84:	00e7b023          	sd	a4,0(a5)
    80003e88:	00f5b023          	sd	a5,0(a1)
    80003e8c:	00000513          	li	a0,0
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <__mem_alloc>:
    80003e98:	fc010113          	addi	sp,sp,-64
    80003e9c:	02813823          	sd	s0,48(sp)
    80003ea0:	02913423          	sd	s1,40(sp)
    80003ea4:	03213023          	sd	s2,32(sp)
    80003ea8:	01513423          	sd	s5,8(sp)
    80003eac:	02113c23          	sd	ra,56(sp)
    80003eb0:	01313c23          	sd	s3,24(sp)
    80003eb4:	01413823          	sd	s4,16(sp)
    80003eb8:	01613023          	sd	s6,0(sp)
    80003ebc:	04010413          	addi	s0,sp,64
    80003ec0:	00002a97          	auipc	s5,0x2
    80003ec4:	998a8a93          	addi	s5,s5,-1640 # 80005858 <freep>
    80003ec8:	00f50913          	addi	s2,a0,15
    80003ecc:	000ab683          	ld	a3,0(s5)
    80003ed0:	00495913          	srli	s2,s2,0x4
    80003ed4:	0019049b          	addiw	s1,s2,1
    80003ed8:	00048913          	mv	s2,s1
    80003edc:	0c068c63          	beqz	a3,80003fb4 <__mem_alloc+0x11c>
    80003ee0:	0006b503          	ld	a0,0(a3)
    80003ee4:	00852703          	lw	a4,8(a0)
    80003ee8:	10977063          	bgeu	a4,s1,80003fe8 <__mem_alloc+0x150>
    80003eec:	000017b7          	lui	a5,0x1
    80003ef0:	0009099b          	sext.w	s3,s2
    80003ef4:	0af4e863          	bltu	s1,a5,80003fa4 <__mem_alloc+0x10c>
    80003ef8:	02099a13          	slli	s4,s3,0x20
    80003efc:	01ca5a13          	srli	s4,s4,0x1c
    80003f00:	fff00b13          	li	s6,-1
    80003f04:	0100006f          	j	80003f14 <__mem_alloc+0x7c>
    80003f08:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003f0c:	00852703          	lw	a4,8(a0)
    80003f10:	04977463          	bgeu	a4,s1,80003f58 <__mem_alloc+0xc0>
    80003f14:	00050793          	mv	a5,a0
    80003f18:	fea698e3          	bne	a3,a0,80003f08 <__mem_alloc+0x70>
    80003f1c:	000a0513          	mv	a0,s4
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	1f0080e7          	jalr	496(ra) # 80004110 <kvmincrease>
    80003f28:	00050793          	mv	a5,a0
    80003f2c:	01050513          	addi	a0,a0,16
    80003f30:	07678e63          	beq	a5,s6,80003fac <__mem_alloc+0x114>
    80003f34:	0137a423          	sw	s3,8(a5)
    80003f38:	00000097          	auipc	ra,0x0
    80003f3c:	e94080e7          	jalr	-364(ra) # 80003dcc <__mem_free>
    80003f40:	000ab783          	ld	a5,0(s5)
    80003f44:	06078463          	beqz	a5,80003fac <__mem_alloc+0x114>
    80003f48:	0007b503          	ld	a0,0(a5)
    80003f4c:	00078693          	mv	a3,a5
    80003f50:	00852703          	lw	a4,8(a0)
    80003f54:	fc9760e3          	bltu	a4,s1,80003f14 <__mem_alloc+0x7c>
    80003f58:	08e48263          	beq	s1,a4,80003fdc <__mem_alloc+0x144>
    80003f5c:	4127073b          	subw	a4,a4,s2
    80003f60:	02071693          	slli	a3,a4,0x20
    80003f64:	01c6d693          	srli	a3,a3,0x1c
    80003f68:	00e52423          	sw	a4,8(a0)
    80003f6c:	00d50533          	add	a0,a0,a3
    80003f70:	01252423          	sw	s2,8(a0)
    80003f74:	00fab023          	sd	a5,0(s5)
    80003f78:	01050513          	addi	a0,a0,16
    80003f7c:	03813083          	ld	ra,56(sp)
    80003f80:	03013403          	ld	s0,48(sp)
    80003f84:	02813483          	ld	s1,40(sp)
    80003f88:	02013903          	ld	s2,32(sp)
    80003f8c:	01813983          	ld	s3,24(sp)
    80003f90:	01013a03          	ld	s4,16(sp)
    80003f94:	00813a83          	ld	s5,8(sp)
    80003f98:	00013b03          	ld	s6,0(sp)
    80003f9c:	04010113          	addi	sp,sp,64
    80003fa0:	00008067          	ret
    80003fa4:	000019b7          	lui	s3,0x1
    80003fa8:	f51ff06f          	j	80003ef8 <__mem_alloc+0x60>
    80003fac:	00000513          	li	a0,0
    80003fb0:	fcdff06f          	j	80003f7c <__mem_alloc+0xe4>
    80003fb4:	00003797          	auipc	a5,0x3
    80003fb8:	b1c78793          	addi	a5,a5,-1252 # 80006ad0 <base>
    80003fbc:	00078513          	mv	a0,a5
    80003fc0:	00fab023          	sd	a5,0(s5)
    80003fc4:	00f7b023          	sd	a5,0(a5)
    80003fc8:	00000713          	li	a4,0
    80003fcc:	00003797          	auipc	a5,0x3
    80003fd0:	b007a623          	sw	zero,-1268(a5) # 80006ad8 <base+0x8>
    80003fd4:	00050693          	mv	a3,a0
    80003fd8:	f11ff06f          	j	80003ee8 <__mem_alloc+0x50>
    80003fdc:	00053703          	ld	a4,0(a0)
    80003fe0:	00e7b023          	sd	a4,0(a5)
    80003fe4:	f91ff06f          	j	80003f74 <__mem_alloc+0xdc>
    80003fe8:	00068793          	mv	a5,a3
    80003fec:	f6dff06f          	j	80003f58 <__mem_alloc+0xc0>

0000000080003ff0 <__putc>:
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00813823          	sd	s0,16(sp)
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    80004000:	00050793          	mv	a5,a0
    80004004:	fef40593          	addi	a1,s0,-17
    80004008:	00100613          	li	a2,1
    8000400c:	00000513          	li	a0,0
    80004010:	fef407a3          	sb	a5,-17(s0)
    80004014:	fffff097          	auipc	ra,0xfffff
    80004018:	918080e7          	jalr	-1768(ra) # 8000292c <console_write>
    8000401c:	01813083          	ld	ra,24(sp)
    80004020:	01013403          	ld	s0,16(sp)
    80004024:	02010113          	addi	sp,sp,32
    80004028:	00008067          	ret

000000008000402c <__getc>:
    8000402c:	fe010113          	addi	sp,sp,-32
    80004030:	00813823          	sd	s0,16(sp)
    80004034:	00113c23          	sd	ra,24(sp)
    80004038:	02010413          	addi	s0,sp,32
    8000403c:	fe840593          	addi	a1,s0,-24
    80004040:	00100613          	li	a2,1
    80004044:	00000513          	li	a0,0
    80004048:	fffff097          	auipc	ra,0xfffff
    8000404c:	8c4080e7          	jalr	-1852(ra) # 8000290c <console_read>
    80004050:	fe844503          	lbu	a0,-24(s0)
    80004054:	01813083          	ld	ra,24(sp)
    80004058:	01013403          	ld	s0,16(sp)
    8000405c:	02010113          	addi	sp,sp,32
    80004060:	00008067          	ret

0000000080004064 <console_handler>:
    80004064:	fe010113          	addi	sp,sp,-32
    80004068:	00813823          	sd	s0,16(sp)
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00913423          	sd	s1,8(sp)
    80004074:	02010413          	addi	s0,sp,32
    80004078:	14202773          	csrr	a4,scause
    8000407c:	100027f3          	csrr	a5,sstatus
    80004080:	0027f793          	andi	a5,a5,2
    80004084:	06079e63          	bnez	a5,80004100 <console_handler+0x9c>
    80004088:	00074c63          	bltz	a4,800040a0 <console_handler+0x3c>
    8000408c:	01813083          	ld	ra,24(sp)
    80004090:	01013403          	ld	s0,16(sp)
    80004094:	00813483          	ld	s1,8(sp)
    80004098:	02010113          	addi	sp,sp,32
    8000409c:	00008067          	ret
    800040a0:	0ff77713          	andi	a4,a4,255
    800040a4:	00900793          	li	a5,9
    800040a8:	fef712e3          	bne	a4,a5,8000408c <console_handler+0x28>
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	4b8080e7          	jalr	1208(ra) # 80002564 <plic_claim>
    800040b4:	00a00793          	li	a5,10
    800040b8:	00050493          	mv	s1,a0
    800040bc:	02f50c63          	beq	a0,a5,800040f4 <console_handler+0x90>
    800040c0:	fc0506e3          	beqz	a0,8000408c <console_handler+0x28>
    800040c4:	00050593          	mv	a1,a0
    800040c8:	00001517          	auipc	a0,0x1
    800040cc:	12050513          	addi	a0,a0,288 # 800051e8 <_ZZ12printIntegermE6digits+0x150>
    800040d0:	fffff097          	auipc	ra,0xfffff
    800040d4:	8d8080e7          	jalr	-1832(ra) # 800029a8 <__printf>
    800040d8:	01013403          	ld	s0,16(sp)
    800040dc:	01813083          	ld	ra,24(sp)
    800040e0:	00048513          	mv	a0,s1
    800040e4:	00813483          	ld	s1,8(sp)
    800040e8:	02010113          	addi	sp,sp,32
    800040ec:	ffffe317          	auipc	t1,0xffffe
    800040f0:	4b030067          	jr	1200(t1) # 8000259c <plic_complete>
    800040f4:	fffff097          	auipc	ra,0xfffff
    800040f8:	1bc080e7          	jalr	444(ra) # 800032b0 <uartintr>
    800040fc:	fddff06f          	j	800040d8 <console_handler+0x74>
    80004100:	00001517          	auipc	a0,0x1
    80004104:	1e850513          	addi	a0,a0,488 # 800052e8 <digits+0x78>
    80004108:	fffff097          	auipc	ra,0xfffff
    8000410c:	844080e7          	jalr	-1980(ra) # 8000294c <panic>

0000000080004110 <kvmincrease>:
    80004110:	fe010113          	addi	sp,sp,-32
    80004114:	01213023          	sd	s2,0(sp)
    80004118:	00001937          	lui	s2,0x1
    8000411c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00113c23          	sd	ra,24(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	01250933          	add	s2,a0,s2
    80004134:	00c95913          	srli	s2,s2,0xc
    80004138:	02090863          	beqz	s2,80004168 <kvmincrease+0x58>
    8000413c:	00000493          	li	s1,0
    80004140:	00148493          	addi	s1,s1,1
    80004144:	fffff097          	auipc	ra,0xfffff
    80004148:	4bc080e7          	jalr	1212(ra) # 80003600 <kalloc>
    8000414c:	fe991ae3          	bne	s2,s1,80004140 <kvmincrease+0x30>
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	00813483          	ld	s1,8(sp)
    8000415c:	00013903          	ld	s2,0(sp)
    80004160:	02010113          	addi	sp,sp,32
    80004164:	00008067          	ret
    80004168:	01813083          	ld	ra,24(sp)
    8000416c:	01013403          	ld	s0,16(sp)
    80004170:	00813483          	ld	s1,8(sp)
    80004174:	00013903          	ld	s2,0(sp)
    80004178:	00000513          	li	a0,0
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret
	...
