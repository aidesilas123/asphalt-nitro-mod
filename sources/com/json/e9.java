package com.json;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.e5;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.z6;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u00012\u00020\u0002:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u001b\u0010\u000f\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0013\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\f\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/ironsource/e9;", "Lcom/ironsource/l5;", "Lcom/ironsource/k5;", "Lcom/ironsource/z6;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/ironsource/z6$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/e5;", "c", "Lcom/ironsource/e5$a;", "a", "Lcom/ironsource/sb;", "Lkotlin/Lazy;", "i", "()Lcom/ironsource/sb;", "sessionDepthManager", "Lcom/ironsource/o3;", InneractiveMediationDefs.GENDER_FEMALE, "()Lcom/ironsource/o3;", "deviceInfoService", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class e9 implements l5, k5 {
    private final Lazy b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f6087d;
    public static final b c = new b(null);
    private static final Lazy<e9> a = LazyKt__LazyJVMKt.lazy(a.a);

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/e9;", "a", "()Lcom/ironsource/e9;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<e9> {
        public static final a a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e9 invoke() {
            return new e9(null);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\fR\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0012\u001a\u00020\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/ironsource/e9$b;", "", "Lcom/ironsource/e9;", "instance$delegate", "Lkotlin/Lazy;", "c", "()Lcom/ironsource/e9;", d1.o, "Lcom/ironsource/l5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lcom/ironsource/l5;", "getProvider$annotations", "()V", IronSourceConstants.EVENTS_PROVIDER, "Lcom/ironsource/k5;", "a", "()Lcom/ironsource/k5;", "getEditor$annotations", "editor", "<init>", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }

        public static /* synthetic */ void b() {
        }

        private final e9 c() {
            return (e9) e9.a.getValue();
        }

        public static /* synthetic */ void e() {
        }

        public final k5 a() {
            return c();
        }

        public final l5 d() {
            return c();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/o3;", "a", "()Lcom/ironsource/o3;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<o3> {
        public static final c a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o3 invoke() {
            return new o3();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/sb;", "a", "()Lcom/ironsource/sb;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<xd> {
        public static final d a = new d();

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final xd invoke() {
            return new xd();
        }
    }

    private e9() {
        this.b = LazyKt__LazyJVMKt.lazy(d.a);
        this.f6087d = LazyKt__LazyJVMKt.lazy(c.a);
    }

    public /* synthetic */ e9(n nVar) {
        this();
    }

    private final o3 f() {
        return (o3) this.f6087d.getValue();
    }

    public static final k5 g() {
        return c.a();
    }

    public static final l5 h() {
        return c.d();
    }

    private final xd i() {
        return (xd) this.b.getValue();
    }

    @Override // com.json.k5
    public e5.a a() {
        return f();
    }

    @Override // com.json.k5
    public z6.a b() {
        return i();
    }

    @Override // com.json.l5
    public e5 c() {
        return f();
    }

    @Override // com.json.l5
    public z6 d() {
        return i();
    }
}
