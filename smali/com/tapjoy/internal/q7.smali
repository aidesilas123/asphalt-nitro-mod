###### Class com.tapjoy.internal.q7 (com.tapjoy.internal.q7)
.class public abstract Lcom/tapjoy/internal/q7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/j4;

.field public static final b:Lcom/tapjoy/internal/w4;

.field public static final c:Lcom/tapjoy/internal/m5;

.field public static final d:Lcom/tapjoy/internal/a6;

.field public static final e:Lcom/tapjoy/internal/k6;

.field public static final f:Lcom/tapjoy/internal/u6;

.field public static final g:Lcom/tapjoy/internal/p2;

.field public static final h:Lcom/tapjoy/internal/c3;

.field public static final i:Lcom/tapjoy/internal/m3;


# instance fields
.field public final j:I

.field public final k:Ljava/lang/Class;

.field public l:Lcom/tapjoy/internal/w3;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/j4;

    invoke-direct {v0}, Lcom/tapjoy/internal/j4;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->a:Lcom/tapjoy/internal/j4;

    new-instance v0, Lcom/tapjoy/internal/w4;

    invoke-direct {v0}, Lcom/tapjoy/internal/w4;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->b:Lcom/tapjoy/internal/w4;

    new-instance v0, Lcom/tapjoy/internal/m5;

    invoke-direct {v0}, Lcom/tapjoy/internal/m5;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->c:Lcom/tapjoy/internal/m5;

    new-instance v0, Lcom/tapjoy/internal/a6;

    invoke-direct {v0}, Lcom/tapjoy/internal/a6;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->d:Lcom/tapjoy/internal/a6;

    new-instance v0, Lcom/tapjoy/internal/k6;

    invoke-direct {v0}, Lcom/tapjoy/internal/k6;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->e:Lcom/tapjoy/internal/k6;

    new-instance v0, Lcom/tapjoy/internal/u6;

    invoke-direct {v0}, Lcom/tapjoy/internal/u6;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->f:Lcom/tapjoy/internal/u6;

    new-instance v0, Lcom/tapjoy/internal/p2;

    invoke-direct {v0}, Lcom/tapjoy/internal/p2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->g:Lcom/tapjoy/internal/p2;

    new-instance v0, Lcom/tapjoy/internal/c3;

    invoke-direct {v0}, Lcom/tapjoy/internal/c3;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    new-instance v0, Lcom/tapjoy/internal/m3;

    invoke-direct {v0}, Lcom/tapjoy/internal/m3;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q7;->i:Lcom/tapjoy/internal/m3;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tapjoy/internal/q7;->j:I

    iput-object p2, p0, Lcom/tapjoy/internal/q7;->k:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)I
    .registers 5

    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/q7;->b(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lcom/tapjoy/internal/q7;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    invoke-static {p2}, Lcom/tapjoy/internal/w5;->a(I)I

    move-result v0

    add-int/2addr p2, v0

    :cond_e
    shl-int/2addr p1, v1

    or-int/lit8 p1, p1, 0x0

    invoke-static {p1}, Lcom/tapjoy/internal/w5;->a(I)I

    move-result p1

    add-int/2addr p1, p2

    return p1
.end method

.method public abstract b(Ljava/lang/Object;)I
.end method

.method public final c()Lcom/tapjoy/internal/q7;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/q7;->l:Lcom/tapjoy/internal/w3;

    if-eqz v0, :cond_5

    goto :goto_e

    :cond_5
    new-instance v0, Lcom/tapjoy/internal/w3;

    iget v1, p0, Lcom/tapjoy/internal/q7;->j:I

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/w3;-><init>(Lcom/tapjoy/internal/q7;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/q7;->l:Lcom/tapjoy/internal/w3;

    :goto_e
    return-object v0
.end method

.method public abstract d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
.end method

.method public e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/tapjoy/internal/q7;->j:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    shl-int/2addr p2, v1

    invoke-static {v0}, Lcom/tapjoy/internal/s1;->b(I)I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->e(I)V

    iget p2, p0, Lcom/tapjoy/internal/q7;->j:I

    if-ne p2, v1, :cond_1a

    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/q7;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->e(I)V

    :cond_1a
    invoke-virtual {p0, p1, p3}, Lcom/tapjoy/internal/q7;->f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
.end method
