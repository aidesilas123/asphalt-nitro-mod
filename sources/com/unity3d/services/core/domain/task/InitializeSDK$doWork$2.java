package com.unity3d.services.core.domain.task;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineScope;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
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
    	... 4 more
    */
/* JADX INFO: compiled from: InitializeSDK.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeSDK$doWork$2", f = "InitializeSDK.kt", i = {0, 1, 1, 2, 3, 3, 4, 4, 4, 5, 5, 5, 7, 7, 7, 8, 8, 8, 9, 10, 11, 11, 12, 13}, l = {43, 48, 50, 55, 57, 62, 66, 69, 74, 77, 92, 95, 103, 106, 109}, m = "invokeSuspend", n = {"$this$withContext", "$this$withContext", "configuration", "resetResult", "$this$withContext", "configuration", "$this$withContext", "configResult", "configuration", "$this$withContext", "configResult", "configuration", "$this$withContext", "configResult", "configuration", "$this$withContext", "configResult", "configuration", "loadCacheResult", "configResult", "configResult", "loadWebResult", "configResult", "configResult"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$2", "L$0", "L$2", "L$3", "L$0", "L$2", "L$3", "L$0", "L$2", "L$3", "L$0", "L$2", "L$3", "L$0", "L$1", "L$1", "L$2", "L$1", "L$1"})
final class InitializeSDK$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends v>>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InitializeSDK$doWork$2(InitializeSDK initializeSDK, Continuation<? super InitializeSDK$doWork$2> continuation) {
        super(2, continuation);
        this.this$0 = initializeSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        InitializeSDK$doWork$2 initializeSDK$doWork$2 = new InitializeSDK$doWork$2(this.this$0, continuation);
        initializeSDK$doWork$2.L$0 = obj;
        return initializeSDK$doWork$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends v>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<v>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<v>> continuation) {
        return ((InitializeSDK$doWork$2) create(coroutineScope, continuation)).invokeSuspend(v.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x028d A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02ad A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02b9 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0313 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0359 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0362 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0391 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:156:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0154 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0193 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x019a A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b7 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c3 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e2 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0202 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0229 A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x024e A[Catch: all -> 0x03a8, CancellationException -> 0x03d5, TryCatch #2 {CancellationException -> 0x03d5, all -> 0x03a8, blocks: (B:6:0x0012, B:139:0x0392, B:140:0x0395, B:9:0x0023, B:136:0x0375, B:12:0x002e, B:131:0x035c, B:133:0x0362, B:15:0x0041, B:124:0x0328, B:127:0x0338, B:18:0x004c, B:119:0x030d, B:121:0x0313, B:22:0x005c, B:105:0x02a7, B:107:0x02ad, B:108:0x02b8, B:25:0x0074, B:99:0x0287, B:101:0x028d, B:109:0x02b9, B:111:0x02c4, B:113:0x02ce, B:115:0x02d4, B:116:0x02eb, B:125:0x0332, B:141:0x039c, B:142:0x03a7, B:28:0x008d, B:96:0x0265, B:29:0x0092, B:92:0x0249, B:32:0x00ab, B:87:0x0223, B:89:0x0229, B:93:0x024e, B:35:0x00c4, B:82:0x01f8, B:84:0x0202, B:38:0x00d5, B:77:0x01dc, B:79:0x01e2, B:41:0x00e5, B:70:0x01b1, B:72:0x01b7, B:73:0x01c2, B:44:0x00fb, B:64:0x0194, B:66:0x019a, B:74:0x01c3, B:47:0x010e, B:55:0x014e, B:57:0x0154, B:58:0x016c, B:61:0x0178, B:51:0x0123), top: B:155:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0286 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1020
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeSDK$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
