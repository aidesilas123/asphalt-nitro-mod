###### Class gateway.v1.DynamicDeviceInfoOuterClass.ConnectionType.b (gateway.v1.DynamicDeviceInfoOuterClass$ConnectionType$b)
.class final Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType$b;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/Internal$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType$b;

    invoke-direct {v0}, Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType$b;-><init>()V

    sput-object v0, Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType$b;->a:Lcom/google/protobuf/Internal$e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    invoke-static {p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;->forNumber(I)Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
