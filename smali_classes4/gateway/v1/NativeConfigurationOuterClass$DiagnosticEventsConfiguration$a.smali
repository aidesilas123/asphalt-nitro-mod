###### Class gateway.v1.NativeConfigurationOuterClass.DiagnosticEventsConfiguration.a (gateway.v1.NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a)
.class Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$h$a<",
        "Ljava/lang/Integer;",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    :cond_c
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a;->a(Ljava/lang/Integer;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    return-object p1
.end method
