###### Class com.tapjoy.internal.b0 (com.tapjoy.internal.b0)
.class public final Lcom/tapjoy/internal/b0;
.super Lcom/tapjoy/internal/z5;
.source "SourceFile"


# static fields
.field public static final c:Lcom/tapjoy/internal/s;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/s;

    invoke-direct {v0}, Lcom/tapjoy/internal/s;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/b0;->c:Lcom/tapjoy/internal/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/c1;)V
    .registers 6

    sget-object v0, Lcom/tapjoy/internal/b0;->c:Lcom/tapjoy/internal/s;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/z5;-><init>(Lcom/tapjoy/internal/q7;Lcom/tapjoy/internal/c1;)V

    iput-object p1, p0, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    iput-object p3, p0, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final d()Lcom/tapjoy/internal/i;
    .registers 5

    new-instance v0, Lcom/tapjoy/internal/i;

    invoke-direct {v0}, Lcom/tapjoy/internal/i;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    iput-object v1, v0, Lcom/tapjoy/internal/i;->d:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/c1;->f()I

    move-result v2

    if-lez v2, :cond_35

    iget-object v2, v0, Lcom/tapjoy/internal/l5;->b:Lcom/tapjoy/internal/w5;

    if-nez v2, :cond_29

    new-instance v2, Lcom/tapjoy/internal/n;

    invoke-direct {v2}, Lcom/tapjoy/internal/n;-><init>()V

    iput-object v2, v0, Lcom/tapjoy/internal/l5;->a:Lcom/tapjoy/internal/n;

    new-instance v3, Lcom/tapjoy/internal/w5;

    invoke-direct {v3, v2}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V

    iput-object v3, v0, Lcom/tapjoy/internal/l5;->b:Lcom/tapjoy/internal/w5;

    :cond_29
    :try_start_29
    iget-object v2, v0, Lcom/tapjoy/internal/l5;->b:Lcom/tapjoy/internal/w5;

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_35
    :goto_35
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/b0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/tapjoy/internal/b0;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/c1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    iget-object p1, p1, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    invoke-static {v1, p1}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/tapjoy/internal/z5;->b:I

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/z5;->b:I

    :cond_2d
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    if-eqz v1, :cond_27

    const-string v1, ", clicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/b0;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Push{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
