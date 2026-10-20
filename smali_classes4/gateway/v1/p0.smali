###### Class gateway.v1.p0 (gateway.v1.p0)
.class public final Lgateway/v1/p0;
.super Ljava/lang/Object;
.source "StaticDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/p0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u001c\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 <2\u00020\u0001:\u0002<=B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010#\u001a\u00020$H\u0001J\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020&J\u0006\u0010(\u001a\u00020&J\u0006\u0010)\u001a\u00020&J\u0006\u0010*\u001a\u00020\u0012J\u0006\u0010+\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0012J\u0006\u0010-\u001a\u00020\u0012J%\u0010.\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008/J+\u00100\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000602H\u0007\u00a2\u0006\u0002\u00083J\u001d\u00104\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007\u00a2\u0006\u0002\u00085J&\u00106\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n\u00a2\u0006\u0002\u00087J,\u00106\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000602H\u0087\n\u00a2\u0006\u0002\u00088J.\u00109\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0008;R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u001d8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006>"
    }
    d2 = {
        "Lgateway/v1/StaticDeviceInfoKt$IosKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;",
        "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;)V",
        "value",
        "",
        "builtSdkVersion",
        "getBuiltSdkVersion",
        "()Ljava/lang/String;",
        "setBuiltSdkVersion",
        "(Ljava/lang/String;)V",
        "",
        "screenScale",
        "getScreenScale",
        "()I",
        "setScreenScale",
        "(I)V",
        "",
        "simulator",
        "getSimulator",
        "()Z",
        "setSimulator",
        "(Z)V",
        "skadnetworkId",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgateway/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;",
        "getSkadnetworkId",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "",
        "systemBootTime",
        "getSystemBootTime",
        "()J",
        "setSystemBootTime",
        "(J)V",
        "_build",
        "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;",
        "clearBuiltSdkVersion",
        "",
        "clearScreenScale",
        "clearSimulator",
        "clearSystemBootTime",
        "hasBuiltSdkVersion",
        "hasScreenScale",
        "hasSimulator",
        "hasSystemBootTime",
        "add",
        "addSkadnetworkId",
        "addAll",
        "values",
        "",
        "addAllSkadnetworkId",
        "clear",
        "clearSkadnetworkId",
        "plusAssign",
        "plusAssignSkadnetworkId",
        "plusAssignAllSkadnetworkId",
        "set",
        "index",
        "setSkadnetworkId",
        "Companion",
        "SkadnetworkIdProxy",
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
.field public static final a:Lgateway/v1/p0$a;


# instance fields
.field private final b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/p0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/p0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/p0;->a:Lgateway/v1/p0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/p0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/p0;-><init>(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;
    .registers 3

    iget-object v0, p0, Lgateway/v1/p0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;

    return-object v0
.end method
