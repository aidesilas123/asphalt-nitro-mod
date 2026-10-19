###### Class com.tapjoy.internal.w4 (com.tapjoy.internal.w4)
.class public final Lcom/tapjoy/internal/w4;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_d

    invoke-static {p1}, Lcom/tapjoy/internal/w5;->a(I)I

    move-result p1

    goto :goto_f

    :cond_d
    const/16 p1, 0xa

    :goto_f
    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_c

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->e(I)V

    goto :goto_10

    :cond_c
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/w5;->f(J)V

    :goto_10
    return-void
.end method
