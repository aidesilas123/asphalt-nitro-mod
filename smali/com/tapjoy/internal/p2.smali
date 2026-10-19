###### Class com.tapjoy.internal.p2 (com.tapjoy.internal.p2)
.class public final Lcom/tapjoy/internal/p2;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Ljava/lang/Double;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Double;

    const/16 p1, 0x8

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/w5;->d(J)V

    return-void
.end method
