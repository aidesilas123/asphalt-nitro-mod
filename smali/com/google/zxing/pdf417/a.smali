###### Class com.google.zxing.pdf417.a (com.google.zxing.pdf417.a)
.class public final Lcom/google/zxing/pdf417/a;
.super Ljava/lang/Object;
.source "PDF417ResultMetadata.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:I

.field private k:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/pdf417/a;->d:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/zxing/pdf417/a;->h:J

    iput-wide v1, p0, Lcom/google/zxing/pdf417/a;->i:J

    iput v0, p0, Lcom/google/zxing/pdf417/a;->j:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/a;->c:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/pdf417/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/pdf417/a;->j:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/pdf417/a;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/pdf417/a;->g:Ljava/lang/String;

    return-void
.end method

.method public g(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/zxing/pdf417/a;->h:J

    return-void
.end method

.method public h(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/zxing/pdf417/a;->c:Z

    return-void
.end method

.method public i([I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/zxing/pdf417/a;->k:[I

    return-void
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/pdf417/a;->d:I

    return-void
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/pdf417/a;->a:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/pdf417/a;->e:Ljava/lang/String;

    return-void
.end method

.method public m(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/zxing/pdf417/a;->i:J

    return-void
.end method
