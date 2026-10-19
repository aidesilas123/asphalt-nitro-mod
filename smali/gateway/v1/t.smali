###### Class gateway.v1.t (gateway.v1.t)
.class public final Lgateway/v1/t;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/t$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u001c\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 M2\u00020\u0001:\u0003MNOB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010)\u001a\u00020*H\u0001J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u0006\u0010.\u001a\u00020,J\u0006\u0010/\u001a\u00020,J\u0006\u00100\u001a\u00020,J\u0006\u00101\u001a\u00020,J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u000203J\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0006\u00108\u001a\u000203J%\u00109\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008:J%\u00109\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008;J+\u0010<\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00060>H\u0007\u00a2\u0006\u0002\u0008?J+\u0010<\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00060>H\u0007\u00a2\u0006\u0002\u0008@J\u001d\u0010A\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u0016H\u0007\u00a2\u0006\u0002\u0008BJ\u001d\u0010A\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u0016H\u0007\u00a2\u0006\u0002\u0008CJ&\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n\u00a2\u0006\u0002\u0008EJ,\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00060>H\u0087\n\u00a2\u0006\u0002\u0008FJ&\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n\u00a2\u0006\u0002\u0008GJ,\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00060>H\u0087\n\u00a2\u0006\u0002\u0008HJ.\u0010I\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010J\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0008KJ.\u0010I\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u0006\u0010J\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0008LR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R$\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u000f\"\u0004\u0008\u001c\u0010\u0011R\u001d\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0019R$\u0010 \u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\u000f\"\u0004\u0008\"\u0010\u0011R$\u0010$\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020#8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006P"
    }
    d2 = {
        "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;",
        "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;)V",
        "value",
        "",
        "currentRadioAccessTechnology",
        "getCurrentRadioAccessTechnology",
        "()Ljava/lang/String;",
        "setCurrentRadioAccessTechnology",
        "(Ljava/lang/String;)V",
        "",
        "currentUiTheme",
        "getCurrentUiTheme",
        "()I",
        "setCurrentUiTheme",
        "(I)V",
        "deviceName",
        "getDeviceName",
        "setDeviceName",
        "localeList",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;",
        "getLocaleList",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "networkReachabilityFlags",
        "getNetworkReachabilityFlags",
        "setNetworkReachabilityFlags",
        "nwPathInterfaces",
        "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;",
        "getNwPathInterfaces",
        "trackingAuthStatus",
        "getTrackingAuthStatus",
        "setTrackingAuthStatus",
        "",
        "volume",
        "getVolume",
        "()D",
        "setVolume",
        "(D)V",
        "_build",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;",
        "clearCurrentRadioAccessTechnology",
        "",
        "clearCurrentUiTheme",
        "clearDeviceName",
        "clearNetworkReachabilityFlags",
        "clearTrackingAuthStatus",
        "clearVolume",
        "hasCurrentRadioAccessTechnology",
        "",
        "hasCurrentUiTheme",
        "hasDeviceName",
        "hasNetworkReachabilityFlags",
        "hasTrackingAuthStatus",
        "hasVolume",
        "add",
        "addLocaleList",
        "addNwPathInterfaces",
        "addAll",
        "values",
        "",
        "addAllLocaleList",
        "addAllNwPathInterfaces",
        "clear",
        "clearLocaleList",
        "clearNwPathInterfaces",
        "plusAssign",
        "plusAssignLocaleList",
        "plusAssignAllLocaleList",
        "plusAssignNwPathInterfaces",
        "plusAssignAllNwPathInterfaces",
        "set",
        "index",
        "setLocaleList",
        "setNwPathInterfaces",
        "Companion",
        "LocaleListProxy",
        "NwPathInterfacesProxy",
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
.field public static final a:Lgateway/v1/t$a;


# instance fields
.field private final b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/t$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/t;->a:Lgateway/v1/t$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/t;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/t;-><init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;
    .registers 3

    iget-object v0, p0, Lgateway/v1/t;->b:Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;

    return-object v0
.end method

###### Class gateway.v1.t.a (gateway.v1.t$a)
.class public final Lgateway/v1/t$a;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/t;
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
        "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl;",
        "builder",
        "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;",
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

    invoke-direct {p0}, Lgateway/v1/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;)Lgateway/v1/t;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/t;-><init>(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
