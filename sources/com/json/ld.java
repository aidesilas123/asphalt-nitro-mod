package com.json;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.mediationsdk.d;
import com.json.mediationsdk.logger.IronLog;
import com.json.t1;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\t\b&\u0018\u0000 \u001f*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00020\u0003:\u0001\tB%\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0006\u001a\u00020\bH\u0002J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\u000b\u001a\u00020\bJ\b\u0010\f\u001a\u00020\u0005H\u0016J\u0015\u0010\u000b\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0012R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0015R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0015\u001a\u0004\b\u000f\u0010\u0018R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0015R \u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0015\u001a\u0004\b\t\u0010\u0018¨\u0006 "}, d2 = {"Lcom/ironsource/ld;", "Lcom/ironsource/t1;", "Smash", "", "smash", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/ironsource/t1;)Z", "", "a", "(Lcom/ironsource/t1;)I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "", "(Lcom/ironsource/t1;)V", "c", "I", "maxSmashesToLoad", "Z", d.q0, "", "Ljava/util/List;", d.h, "", "()Ljava/util/List;", "smashesToLoad", "loadedSmashes", InneractiveMediationDefs.GENDER_FEMALE, "loadingInProgressSmashes", "<init>", "(IZLjava/util/List;)V", "g", "mediationsdk_release"}, mv = {1, 8, 0})
public abstract class ld<Smash extends t1<?>> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6200g = new a(null);
    private final int a;
    private final boolean b;
    private final List<Smash> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Smash> f6201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Smash> f6202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<Smash> f6203f;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ@\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f\"\f\b\u0001\u0010\u0003*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\n¨\u0006\u0010"}, d2 = {"Lcom/ironsource/ld$a;", "", "Lcom/ironsource/t1;", "Smash", "Lcom/ironsource/id;", "loadingStrategy", "", "maxSmashesToLoad", "", d.q0, "", d.h, "Lcom/ironsource/ld;", "a", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class a {

        /* JADX INFO: renamed from: com.ironsource.ld$a$a, reason: collision with other inner class name */
        @Metadata(mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class C0355a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[id.values().length];
                try {
                    iArr[id.DEFAULT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[id.BIDDER_SENSITIVE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final <Smash extends t1<?>> ld<Smash> a(id loadingStrategy, int i, boolean z, List<? extends Smash> waterfall) {
            Intrinsics.checkNotNullParameter(loadingStrategy, "loadingStrategy");
            Intrinsics.checkNotNullParameter(waterfall, "waterfall");
            int i2 = C0355a.a[loadingStrategy.ordinal()];
            if (i2 == 1) {
                return new d3(i, z, waterfall);
            }
            if (i2 == 2) {
                return new w1(i, z, waterfall, false, 8, null);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ld(int i, boolean z, List<? extends Smash> waterfall) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        this.a = i;
        this.b = z;
        this.c = waterfall;
        this.f6201d = new ArrayList();
        this.f6202e = new ArrayList();
        this.f6203f = new ArrayList();
    }

    private final int a(Smash smash) {
        return smash.i().k();
    }

    private final int b() {
        Integer num;
        List<Smash> list = this.c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((t1) obj).x()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Integer numValueOf = Integer.valueOf(a((t1) it.next()));
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(a((t1) it.next()));
                if (numValueOf.compareTo(numValueOf2) > 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        return Integer.MAX_VALUE;
    }

    private final boolean e(Smash smash) {
        return b() < a(smash);
    }

    public final List<Smash> a() {
        return this.f6203f;
    }

    public final List<Smash> c() {
        return this.f6201d;
    }

    public abstract void c(Smash smash);

    public final int d() {
        return this.f6201d.size() + this.f6202e.size() + this.f6203f.size();
    }

    public final void d(Smash smash) {
        IronLog ironLog;
        String str;
        IronLog ironLog2;
        StringBuilder sb;
        String str2;
        List<Smash> list;
        Intrinsics.checkNotNullParameter(smash, "smash");
        if (!smash.w()) {
            if (smash.x()) {
                IronLog.INTERNAL.verbose(smash.g().name() + " - Smash " + smash.k() + " is already loaded");
                list = this.f6202e;
            } else {
                if (smash.y()) {
                    ironLog2 = IronLog.INTERNAL;
                    sb = new StringBuilder();
                    sb.append(smash.g().name());
                    sb.append(" - Smash ");
                    sb.append(smash.k());
                    str2 = " still loading";
                } else if (smash.z().get()) {
                    ironLog2 = IronLog.INTERNAL;
                    sb = new StringBuilder();
                    sb.append(smash.g().name());
                    sb.append(" - Smash ");
                    sb.append(smash.k());
                    str2 = " marked as loading candidate";
                } else {
                    if (!this.b || !e(smash)) {
                        c(smash);
                        return;
                    }
                    ironLog = IronLog.INTERNAL;
                    str = smash.g().name() + " - Smash " + smash.k() + " is not better than already loaded smashes";
                }
                sb.append(str2);
                ironLog2.verbose(sb.toString());
                list = this.f6203f;
            }
            list.add(smash);
            return;
        }
        ironLog = IronLog.INTERNAL;
        str = smash.g().name() + " - smash " + smash.k() + " is failed to load";
        ironLog.verbose(str);
    }

    public boolean e() {
        return d() >= this.a;
    }
}
