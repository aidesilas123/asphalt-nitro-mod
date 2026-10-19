###### Class com.tapjoy.internal.m5 (com.tapjoy.internal.m5)
.class public final Lcom/tapjoy/internal/m5;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    const/4 p1, 0x4

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->c(I)V

    return-void
.end method
