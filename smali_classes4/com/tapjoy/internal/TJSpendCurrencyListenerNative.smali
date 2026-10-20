###### Class com.tapjoy.internal.TJSpendCurrencyListenerNative (com.tapjoy.internal.TJSpendCurrencyListenerNative)
.class public Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJSpendCurrencyListener;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_c

    iput-wide p1, p0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->a:J

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static create(J)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onSpendCurrencyResponseFailureNative(JLjava/lang/String;)V
.end method

.method private static native onSpendCurrencyResponseNative(JLjava/lang/String;I)V
.end method


# virtual methods
.method public final onSpendCurrencyResponse(Ljava/lang/String;I)V
    .registers 5

    iget-wide v0, p0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->onSpendCurrencyResponseNative(JLjava/lang/String;I)V

    return-void
.end method

.method public final onSpendCurrencyResponseFailure(Ljava/lang/String;)V
    .registers 4

    iget-wide v0, p0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->onSpendCurrencyResponseFailureNative(JLjava/lang/String;)V

    return-void
.end method
