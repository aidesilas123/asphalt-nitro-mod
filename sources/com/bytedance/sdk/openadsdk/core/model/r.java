package com.bytedance.sdk.openadsdk.core.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.model.a;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ab;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: MixedMaterialMeta.java */
/* JADX INFO: loaded from: classes2.dex */
public class r extends q {
    private final a a;
    private q b;
    private boolean c;

    public r(a aVar) {
        this.a = aVar;
        this.b = aVar.e();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int A() {
        return this.b.A();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void A(int i) {
        this.b.A(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int B() {
        return this.b.B();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void B(int i) {
        this.b.B(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public h C() {
        return this.b.C();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void C(int i) {
        this.b.C(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public AdSlot D() {
        return this.b.D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void D(int i) {
        this.b.D(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int E() {
        return this.b.E();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void E(int i) {
        this.b.E(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String F() {
        return this.b.F();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void F(int i) {
        this.b.F(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void G(int i) {
        this.b.G(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean G() {
        return this.b.G();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int H() {
        return this.b.H();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void H(int i) {
        this.b.H(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public q.a I() {
        return this.b.I();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void I(int i) {
        this.b.I(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int J() {
        return this.b.J();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void J(int i) {
        this.b.J(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bykv.vk.openvk.component.video.api.c.b K() {
        return this.b.K();
    }

    public void K(int i) {
        List<q> listC = this.a.c();
        com.bytedance.sdk.component.utils.l.b("MixedMaterialMeta", "chooseAd: " + i + ", " + listC.size());
        if (i >= listC.size()) {
            i = 0;
        } else if (i < 0) {
            return;
        }
        this.b = listC.get(i);
        this.c = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String L() {
        return this.b.L();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int M() {
        return this.b.M();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public n N() {
        return this.b.N();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public n O() {
        return this.b.O();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String P() {
        return this.b.P();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<n> Q() {
        return this.b.Q();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String R() {
        return this.b.R();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<String> S() {
        return this.b.S();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<String> T() {
        return this.b.T();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<String> U() {
        return this.b.U();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String V() {
        return this.b.V();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String W() {
        return this.b.W();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String X() {
        return this.b.X();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String Y() {
        return this.b.Y();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String Z() {
        return this.b.Z();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(double d2) {
        this.b.a(d2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(float f2) {
        this.b.a(f2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(int i) {
        this.b.a(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(int i, int i2) {
        this.b.a(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(com.bykv.vk.openvk.component.video.api.c.b bVar) {
        this.b.a(bVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(AdSlot adSlot) {
        this.b.a(adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(FilterWord filterWord) {
        this.b.a(filterWord);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(com.bytedance.sdk.openadsdk.core.g.a aVar) {
        this.b.a(aVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(c cVar) {
        this.b.a(cVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(d dVar) {
        this.b.a(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(h hVar) {
        this.b.a(hVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(j jVar) {
        this.b.a(jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(k kVar) {
        this.b.a(kVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(l lVar) {
        this.b.a(lVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(n nVar) {
        this.b.a(nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(p pVar) {
        this.b.a(pVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(q.a aVar) {
        this.b.a(aVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(t tVar) {
        this.b.a(tVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(Map<String, Object> map) {
        this.b.a(map);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(boolean z) {
        this.b.a(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(String[] strArr) {
        this.b.a(strArr);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void aA() {
        this.b.aA();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aB() {
        return this.b.aB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aC() {
        return this.b.aC();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aD() {
        return this.b.aD();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aE() {
        return this.b.aE();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String aF() {
        return this.b.aF();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String[] aG() {
        return this.b.aG();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public l aH() {
        return this.b.aH();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aI() {
        return this.b.aI();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bytedance.sdk.component.widget.b.a aJ() {
        return this.b.aJ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aK() {
        return this.b.aK();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aL() {
        return this.b.aL();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bykv.vk.openvk.component.video.api.c.b aM() {
        return this.b.aM();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bykv.vk.openvk.component.video.api.c.b aN() {
        return this.b.aN();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String aO() {
        return this.b.aO();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aP() {
        return this.b.aP();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aQ() {
        return this.b.aQ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject aR() {
        return this.b.aR();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aS() {
        return this.b.aS();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aT() {
        return this.b.aT();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long aU() {
        return this.b.aU();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aV() {
        return this.b.aV();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aW() {
        return this.b.aW();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aX() {
        return this.b.aX();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aY() {
        return this.b.aY();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aZ() {
        return this.b.aZ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public c aa() {
        return this.b.aa();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public j ab() {
        return this.b.ab();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String ac() {
        return this.b.ac();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ad() {
        return this.b.ad();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<FilterWord> ae() {
        return this.b.ae();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String af() {
        return this.b.af();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long ag() {
        return this.b.ag();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean ah() {
        return this.b.ah();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public Map<String, Object> ai() {
        return this.b.ai();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject aj() {
        return this.b.aj();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ak() {
        return this.b.ak();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public float al() {
        return this.b.al();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean am() {
        return this.b.am();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean an() {
        return this.b.an();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject ao() {
        return this.b.ao();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ap() {
        return this.b.ap();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aq() {
        return this.b.aq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ar() {
        return this.b.ar();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int as() {
        return this.b.as();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean at() {
        return this.b.at();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bytedance.sdk.openadsdk.core.g.a au() {
        return this.b.au();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean av() {
        return this.b.av();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String aw() {
        return this.b.aw();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ax() {
        return this.b.ax();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject ay() {
        return this.b.ay();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean az() {
        return this.b.az();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(double d2) {
        this.b.b(d2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(int i) {
        this.b.b(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(long j) {
        this.b.b(j);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(com.bykv.vk.openvk.component.video.api.c.b bVar) {
        this.b.b(bVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(n nVar) {
        this.b.b(nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(JSONObject jSONObject) {
        this.b.b(jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(boolean z) {
        this.b.b(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public double ba() {
        return this.b.ba();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    @Nullable
    public String bb() {
        return this.b.bb();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bc() {
        return this.b.bc();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bd() {
        return this.b.bd();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int be() {
        return this.b.be();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bf() {
        return this.b.bf();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bg() {
        return this.b.bg();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bh() {
        return this.b.bh();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bi() {
        return this.b.bi();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bj() {
        return this.b.bj();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public ab bk() {
        return this.b.bk();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void bl() {
        this.b.bl();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long bm() {
        return this.b.bm();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bn() {
        return this.b.bn();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bo() {
        return this.b.bo();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bp() {
        return this.b.bp();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bq() {
        return this.b.bq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean br() {
        return this.b.br();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bs() {
        return this.b.bs();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void bt() {
        this.b.bt();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bu() {
        return this.b.bu();
    }

    public a bv() {
        return this.a;
    }

    public boolean bw() {
        return this.a.f();
    }

    public a.C0137a bx() {
        return this.a.h();
    }

    @NonNull
    public List<q> by() {
        List<q> listC = this.a.c();
        return listC != null ? listC : new ArrayList();
    }

    public boolean bz() {
        return this.c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(int i) {
        this.b.c(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(long j) {
        this.b.c(j);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(com.bykv.vk.openvk.component.video.api.c.b bVar) {
        this.b.c(bVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(n nVar) {
        this.b.c(nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(JSONObject jSONObject) {
        this.b.c(jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(boolean z) {
        this.b.c(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean c() {
        return this.b.c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void d(int i) {
        this.b.d(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void d(JSONObject jSONObject) {
        this.b.d(jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void d(boolean z) {
        this.b.d(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean d() {
        return this.b.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void e(int i) {
        this.b.e(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void e(String str) {
        this.b.e(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void e(boolean z) {
        this.b.e(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean e() {
        return this.b.e();
    }

    public boolean equals(Object obj) {
        return this.b.equals(obj);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String f() {
        return this.b.f();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void f(int i) {
        this.b.f(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void f(String str) {
        this.b.f(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void f(boolean z) {
        this.b.f(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String g() {
        return this.b.g();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void g(int i) {
        this.b.g(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void g(String str) {
        this.b.g(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void h(int i) {
        this.b.h(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void h(String str) {
        this.b.h(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean h() {
        return this.b.h();
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public p i() {
        return this.b.i();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void i(int i) {
        this.b.i(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void i(String str) {
        this.b.i(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public d j() {
        return this.b.j();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void j(int i) {
        this.b.j(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void j(String str) {
        this.b.j(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int k() {
        return this.b.k();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void k(int i) {
        this.b.k(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void k(String str) {
        this.b.k(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int l() {
        return this.b.l();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void l(int i) {
        this.b.l(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void l(String str) {
        this.b.l(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long m() {
        return this.b.m();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void m(int i) {
        this.b.m(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void m(String str) {
        this.b.m(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public t n() {
        return this.b.n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void n(int i) {
        this.b.n(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void n(String str) {
        this.b.n(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int o() {
        return this.b.o();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void o(int i) {
        this.b.o(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void o(String str) {
        this.b.o(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int p() {
        return this.b.p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void p(int i) {
        this.b.p(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void p(String str) {
        this.b.p(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int q() {
        return this.b.q();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void q(int i) {
        this.b.q(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void q(String str) {
        this.b.q(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int r() {
        return this.b.r();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void r(int i) {
        this.b.r(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void r(String str) {
        this.b.r(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String s() {
        return this.b.s();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void s(int i) {
        this.b.s(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void s(String str) {
        this.b.s(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int t() {
        return this.b.t();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void t(int i) {
        this.b.t(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void t(String str) {
        this.b.t(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int u() {
        return this.b.u();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void u(int i) {
        this.b.u(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void u(String str) {
        this.b.u(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void v(int i) {
        this.b.v(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void v(String str) {
        this.b.v(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean v() {
        return this.b.v();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int w() {
        return this.b.w();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void w(int i) {
        this.b.w(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void w(String str) {
        this.b.w(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int x() {
        return this.b.x();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String x(String str) {
        return this.b.x(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void x(int i) {
        this.b.x(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int y() {
        return this.b.y();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void y(int i) {
        this.b.y(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void y(String str) {
        this.b.y(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String z() {
        return this.b.z();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void z(int i) {
        this.b.z(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void z(String str) {
        this.b.z(str);
    }
}
