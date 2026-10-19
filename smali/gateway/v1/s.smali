###### Class gateway.v1.DynamicDeviceInfoKt (gateway.v1.s)
.class public final Lgateway/v1/s;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/s$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\nJ*\u0010\u000b\u001a\u00020\u000c2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000e\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "Lgateway/v1/DynamicDeviceInfoKt;",
        "",
        "()V",
        "android",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;",
        "block",
        "Lkotlin/Function1;",
        "Lgateway/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializeandroid",
        "ios",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;",
        "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl;",
        "-initializeios",
        "AndroidKt",
        "Dsl",
        "IosKt",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lgateway/v1/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgateway/v1/s;

    invoke-direct {v0}, Lgateway/v1/s;-><init>()V

    sput-object v0, Lgateway/v1/s;->a:Lgateway/v1/s;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gateway.v1.DynamicDeviceInfoKt.a (gateway.v1.s$a)
.class public final Lgateway/v1/s$a;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/s$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\"\u0008\u0007\u0018\u0000 v2\u00020\u0001:\u0001vB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010R\u001a\u00020SH\u0001J\u0006\u0010T\u001a\u00020UJ\u0006\u0010V\u001a\u00020UJ\u0006\u0010W\u001a\u00020UJ\u0006\u0010X\u001a\u00020UJ\u0006\u0010Y\u001a\u00020UJ\u0006\u0010Z\u001a\u00020UJ\u0006\u0010[\u001a\u00020UJ\u0006\u0010\\\u001a\u00020UJ\u0006\u0010]\u001a\u00020UJ\u0006\u0010^\u001a\u00020UJ\u0006\u0010_\u001a\u00020UJ\u0006\u0010`\u001a\u00020UJ\u0006\u0010a\u001a\u00020UJ\u0006\u0010b\u001a\u00020UJ\u0006\u0010c\u001a\u00020UJ\u0006\u0010d\u001a\u00020UJ\u0006\u0010e\u001a\u00020UJ\u0006\u0010f\u001a\u00020\u000cJ\u0006\u0010g\u001a\u00020\u000cJ\u0006\u0010h\u001a\u00020\u000cJ\u0006\u0010i\u001a\u00020\u000cJ\u0006\u0010j\u001a\u00020\u000cJ\u0006\u0010k\u001a\u00020\u000cJ\u0006\u0010l\u001a\u00020\u000cJ\u0006\u0010m\u001a\u00020\u000cJ\u0006\u0010n\u001a\u00020\u000cJ\u0006\u0010o\u001a\u00020\u000cJ\u0006\u0010p\u001a\u00020\u000cJ\u0006\u0010q\u001a\u00020\u000cJ\u0006\u0010r\u001a\u00020\u000cJ\u0006\u0010s\u001a\u00020\u000cJ\u0006\u0010t\u001a\u00020\u000cJ\u0006\u0010u\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010*\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)R$\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R$\u00104\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R$\u00109\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008:\u0010\u000f\"\u0004\u0008;\u0010\u0011R$\u0010<\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008=\u0010\u000f\"\u0004\u0008>\u0010\u0011R$\u0010?\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008@\u00106\"\u0004\u0008A\u00108R$\u0010B\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u00106\"\u0004\u0008D\u00108R\u0011\u0010E\u001a\u00020F8G\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR$\u0010I\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008J\u00106\"\u0004\u0008K\u00108R$\u0010L\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008M\u0010\'\"\u0004\u0008N\u0010)R$\u0010O\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008P\u0010\u000f\"\u0004\u0008Q\u0010\u0011\u00a8\u0006w"
    }
    d2 = {
        "Lgateway/v1/DynamicDeviceInfoKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;",
        "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)V",
        "value",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;",
        "android",
        "getAndroid",
        "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;",
        "setAndroid",
        "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;)V",
        "",
        "appActive",
        "getAppActive",
        "()Z",
        "setAppActive",
        "(Z)V",
        "",
        "batteryLevel",
        "getBatteryLevel",
        "()D",
        "setBatteryLevel",
        "(D)V",
        "",
        "batteryStatus",
        "getBatteryStatus",
        "()I",
        "setBatteryStatus",
        "(I)V",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;",
        "connectionType",
        "getConnectionType",
        "()Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;",
        "setConnectionType",
        "(Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;)V",
        "",
        "freeDiskSpace",
        "getFreeDiskSpace",
        "()J",
        "setFreeDiskSpace",
        "(J)V",
        "freeRamMemory",
        "getFreeRamMemory",
        "setFreeRamMemory",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;",
        "ios",
        "getIos",
        "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;",
        "setIos",
        "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;)V",
        "",
        "language",
        "getLanguage",
        "()Ljava/lang/String;",
        "setLanguage",
        "(Ljava/lang/String;)V",
        "limitedOpenAdTracking",
        "getLimitedOpenAdTracking",
        "setLimitedOpenAdTracking",
        "limitedTracking",
        "getLimitedTracking",
        "setLimitedTracking",
        "networkOperator",
        "getNetworkOperator",
        "setNetworkOperator",
        "networkOperatorName",
        "getNetworkOperatorName",
        "setNetworkOperatorName",
        "platformSpecificCase",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$PlatformSpecificCase;",
        "getPlatformSpecificCase",
        "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$PlatformSpecificCase;",
        "timeZone",
        "getTimeZone",
        "setTimeZone",
        "timeZoneOffset",
        "getTimeZoneOffset",
        "setTimeZoneOffset",
        "wiredHeadset",
        "getWiredHeadset",
        "setWiredHeadset",
        "_build",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "clearAndroid",
        "",
        "clearAppActive",
        "clearBatteryLevel",
        "clearBatteryStatus",
        "clearConnectionType",
        "clearFreeDiskSpace",
        "clearFreeRamMemory",
        "clearIos",
        "clearLanguage",
        "clearLimitedOpenAdTracking",
        "clearLimitedTracking",
        "clearNetworkOperator",
        "clearNetworkOperatorName",
        "clearPlatformSpecific",
        "clearTimeZone",
        "clearTimeZoneOffset",
        "clearWiredHeadset",
        "hasAndroid",
        "hasAppActive",
        "hasBatteryLevel",
        "hasBatteryStatus",
        "hasConnectionType",
        "hasFreeDiskSpace",
        "hasFreeRamMemory",
        "hasIos",
        "hasLanguage",
        "hasLimitedOpenAdTracking",
        "hasLimitedTracking",
        "hasNetworkOperator",
        "hasNetworkOperatorName",
        "hasTimeZone",
        "hasTimeZoneOffset",
        "hasWiredHeadset",
        "Companion",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lgateway/v1/s$a$a;


# instance fields
.field private final b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/s$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/s$a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/s$a;->a:Lgateway/v1/s$a$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/s$a;-><init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 3

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    return-object v0
.end method

.method public final b(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->b(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final c(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->d(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final d(D)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->e(D)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final e(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->f(I)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final f(Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->g(Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final g(J)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->h(J)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final h(J)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->i(J)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->j(Ljava/lang/String;)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final j(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->k(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final k(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->l(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->m(Ljava/lang/String;)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->n(Ljava/lang/String;)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->o(Ljava/lang/String;)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final o(J)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->p(J)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

.method public final p(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/s$a;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;->q(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;

    return-void
.end method

###### Class gateway.v1.DynamicDeviceInfoKt.a.C0468a (gateway.v1.s$a$a)
.class public final Lgateway/v1/s$a$a;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lgateway/v1/DynamicDeviceInfoKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/DynamicDeviceInfoKt$Dsl;",
        "builder",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/s$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;)Lgateway/v1/s$a;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/s$a;-><init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
