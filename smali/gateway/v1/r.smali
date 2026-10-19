###### Class gateway.v1.r (gateway.v1.r)
.class public final Lgateway/v1/r;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/r$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0015\u0008\u0007\u0018\u0000 G2\u00020\u0001:\u0001GB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u00100\u001a\u000201H\u0001J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u000203J\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0006\u00108\u001a\u000203J\u0006\u00109\u001a\u000203J\u0006\u0010:\u001a\u000203J\u0006\u0010;\u001a\u000203J\u0006\u0010<\u001a\u000203J\u0006\u0010=\u001a\u00020\u0006J\u0006\u0010>\u001a\u00020\u0006J\u0006\u0010?\u001a\u00020\u0006J\u0006\u0010@\u001a\u00020\u0006J\u0006\u0010A\u001a\u00020\u0006J\u0006\u0010B\u001a\u00020\u0006J\u0006\u0010C\u001a\u00020\u0006J\u0006\u0010D\u001a\u00020\u0006J\u0006\u0010E\u001a\u00020\u0006J\u0006\u0010F\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\t\"\u0004\u0008\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\t\"\u0004\u0008 \u0010\u000bR$\u0010\"\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020!8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010\'\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020!8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010$\"\u0004\u0008)\u0010&R$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\t\"\u0004\u0008,\u0010\u000bR$\u0010-\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\u0018\"\u0004\u0008/\u0010\u001a\u00a8\u0006H"
    }
    d2 = {
        "Lgateway/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;",
        "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;)V",
        "value",
        "",
        "adbEnabled",
        "getAdbEnabled",
        "()Z",
        "setAdbEnabled",
        "(Z)V",
        "",
        "deviceElapsedRealtime",
        "getDeviceElapsedRealtime",
        "()J",
        "setDeviceElapsedRealtime",
        "(J)V",
        "deviceUpTime",
        "getDeviceUpTime",
        "setDeviceUpTime",
        "",
        "maxVolume",
        "getMaxVolume",
        "()D",
        "setMaxVolume",
        "(D)V",
        "networkConnected",
        "getNetworkConnected",
        "setNetworkConnected",
        "networkMetered",
        "getNetworkMetered",
        "setNetworkMetered",
        "",
        "networkType",
        "getNetworkType",
        "()I",
        "setNetworkType",
        "(I)V",
        "telephonyManagerNetworkType",
        "getTelephonyManagerNetworkType",
        "setTelephonyManagerNetworkType",
        "usbConnected",
        "getUsbConnected",
        "setUsbConnected",
        "volume",
        "getVolume",
        "setVolume",
        "_build",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;",
        "clearAdbEnabled",
        "",
        "clearDeviceElapsedRealtime",
        "clearDeviceUpTime",
        "clearMaxVolume",
        "clearNetworkConnected",
        "clearNetworkMetered",
        "clearNetworkType",
        "clearTelephonyManagerNetworkType",
        "clearUsbConnected",
        "clearVolume",
        "hasAdbEnabled",
        "hasDeviceElapsedRealtime",
        "hasDeviceUpTime",
        "hasMaxVolume",
        "hasNetworkConnected",
        "hasNetworkMetered",
        "hasNetworkType",
        "hasTelephonyManagerNetworkType",
        "hasUsbConnected",
        "hasVolume",
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
.field public static final a:Lgateway/v1/r$a;


# instance fields
.field private final b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/r$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/r;->a:Lgateway/v1/r$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/r;-><init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;
    .registers 3

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;

    return-object v0
.end method

.method public final b(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->b(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final c(J)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->d(J)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final d(J)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->e(J)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final e(D)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->f(D)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final f(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->g(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final g(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->h(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final h(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->i(I)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final i(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->j(I)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final j(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->k(Z)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

.method public final k(D)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/r;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;->l(D)Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;

    return-void
.end method

###### Class gateway.v1.r.a (gateway.v1.r$a)
.class public final Lgateway/v1/r$a;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/r;
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
        "Lgateway/v1/DynamicDeviceInfoKt$AndroidKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;",
        "builder",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;",
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

    invoke-direct {p0}, Lgateway/v1/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;)Lgateway/v1/r;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/r;-><init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
