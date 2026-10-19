###### Class com.bytedance.sdk.component.f.a (com.bytedance.sdk.component.f.a)
.class public Lcom/bytedance/sdk/component/f/a;
.super Ljava/lang/Object;
.source "NetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/f/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/component/b/a/k;

.field private b:Lcom/bytedance/sdk/component/f/c/f;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/f/a$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/b/a/k$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/b/a/k$a;-><init>()V

    iget v1, p1, Lcom/bytedance/sdk/component/f/a$a;->a:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/b/a/k$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/f/a$a;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/b/a/k$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/f/a$a;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/b/a/k$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/f/a$a;->d:Z

    if-eqz v1, :cond_2d

    new-instance v1, Lcom/bytedance/sdk/component/f/c/f;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/f/c/f;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/f/a;->b:Lcom/bytedance/sdk/component/f/c/f;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Lcom/bytedance/sdk/component/b/a/h;)Lcom/bytedance/sdk/component/b/a/k$a;

    :cond_2d
    iget-object v1, p1, Lcom/bytedance/sdk/component/f/a$a;->e:Ljava/util/List;

    if-eqz v1, :cond_4d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4d

    iget-object v1, p1, Lcom/bytedance/sdk/component/f/a$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/b/a/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Lcom/bytedance/sdk/component/b/a/h;)Lcom/bytedance/sdk/component/b/a/k$a;

    goto :goto_3d

    :cond_4d
    invoke-static {p1}, Lcom/bytedance/sdk/component/f/a$a;->a(Lcom/bytedance/sdk/component/f/a$a;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-static {p1}, Lcom/bytedance/sdk/component/f/a$a;->a(Lcom/bytedance/sdk/component/f/a$a;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Landroid/os/Bundle;)Lcom/bytedance/sdk/component/b/a/k$a;

    :cond_5a
    invoke-static {p1}, Lcom/bytedance/sdk/component/f/a$a;->b(Lcom/bytedance/sdk/component/f/a$a;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Ljava/util/Set;)Lcom/bytedance/sdk/component/b/a/k$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/k$a;->a()Lcom/bytedance/sdk/component/b/a/k;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/a;->a:Lcom/bytedance/sdk/component/b/a/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/f/a$a;Lcom/bytedance/sdk/component/f/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/a;-><init>(Lcom/bytedance/sdk/component/f/a$a;)V

    return-void
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/component/f/d/c$a;->a:Lcom/bytedance/sdk/component/f/d/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/f/d/c;->a(Lcom/bytedance/sdk/component/f/d/c$a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    const-string v0, ":push"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, ":pushservice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/component/f/c/a;->b(Z)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/f/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    if-eqz p2, :cond_2c

    :cond_12
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/f/c/g;->a(ILandroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/c/a;->d()V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/f/c/g;->a(ILandroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    :cond_2c
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_33

    return-void

    :cond_33
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/f/c/g;->a(ILandroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/c/a;->d()V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/f/c/g;->a(ILandroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    return-void
.end method

.method public a(Landroid/content/Context;ZLcom/bytedance/sdk/component/f/c/b;)V
    .registers 6

    if-eqz p1, :cond_45

    if-eqz p3, :cond_3d

    invoke-interface {p3}, Lcom/bytedance/sdk/component/f/c/b;->a()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/a;->b:Lcom/bytedance/sdk/component/f/c/f;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/f/c/f;->a(I)V

    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/f/c/e;->a(Z)V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/f/c/e;->a(Lcom/bytedance/sdk/component/f/c/b;)V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object p2

    iget p3, p0, Lcom/bytedance/sdk/component/f/a;->c:I

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->a(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/f/c/e;->a(Landroid/content/Context;Z)V

    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet ITTAdNetDepend is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/bytedance/sdk/component/f/b/d;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/f/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/a;->a:Lcom/bytedance/sdk/component/b/a/k;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/f/b/d;-><init>(Lcom/bytedance/sdk/component/b/a/k;)V

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/component/f/b/b;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/f/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/a;->a:Lcom/bytedance/sdk/component/b/a/k;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/f/b/b;-><init>(Lcom/bytedance/sdk/component/b/a/k;)V

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/component/f/b/a;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/f/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/a;->a:Lcom/bytedance/sdk/component/b/a/k;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/f/b/a;-><init>(Lcom/bytedance/sdk/component/b/a/k;)V

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/component/b/a/k;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/a;->a:Lcom/bytedance/sdk/component/b/a/k;

    return-object v0
.end method

###### Class com.bytedance.sdk.component.f.a.AnonymousClass1 (com.bytedance.sdk.component.f.a$1)
.class synthetic Lcom/bytedance/sdk/component/f/a$1;
.super Ljava/lang/Object;
.source "NetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bytedance.sdk.component.f.a.C0118a (com.bytedance.sdk.component.f.a$a)
.class public final Lcom/bytedance/sdk/component/f/a$a;
.super Ljava/lang/Object;
.source "NetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/b/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/a$a;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/a$a;->e:Ljava/util/List;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/bytedance/sdk/component/f/a$a;->a:I

    iput v0, p0, Lcom/bytedance/sdk/component/f/a$a;->b:I

    iput v0, p0, Lcom/bytedance/sdk/component/f/a$a;->c:I

    return-void
.end method

.method private static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4d

    const-string v3, "unit == null"

    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_36

    cmp-long p3, p1, v0

    if-nez p3, :cond_34

    if-gtz v2, :cond_1d

    goto :goto_34

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too small."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    :goto_34
    long-to-int p0, p1

    return p0

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too large."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/a$a;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/f/a$a;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/f/a$a;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/f/a$a;->f:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/f/a$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/f/a$a;->a:I

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/component/f/a$a;
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/f/a$a;->d:Z

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/component/f/a;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/f/a;-><init>(Lcom/bytedance/sdk/component/f/a$a;Lcom/bytedance/sdk/component/f/a$1;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/f/a$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/f/a$a;->b:I

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/f/a$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/f/a$a;->c:I

    return-object p0
.end method
