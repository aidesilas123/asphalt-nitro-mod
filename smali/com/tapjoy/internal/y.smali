###### Class com.tapjoy.internal.y (com.tapjoy.internal.y)
.class public final Lcom/tapjoy/internal/y;
.super Lcom/tapjoy/internal/z5;
.source "SourceFile"


# static fields
.field public static final c:Lcom/tapjoy/internal/r;


# instance fields
.field public final d:Lcom/tapjoy/internal/f;

.field public final e:Lcom/tapjoy/internal/r5;

.field public final f:Lcom/tapjoy/internal/p6;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/r;

    invoke-direct {v0}, Lcom/tapjoy/internal/r;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/y;->c:Lcom/tapjoy/internal/r;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/f;Lcom/tapjoy/internal/r5;Lcom/tapjoy/internal/p6;Lcom/tapjoy/internal/c1;)V
    .registers 6

    sget-object v0, Lcom/tapjoy/internal/y;->c:Lcom/tapjoy/internal/r;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/z5;-><init>(Lcom/tapjoy/internal/q7;Lcom/tapjoy/internal/c1;)V

    iput-object p1, p0, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    iput-object p2, p0, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    iput-object p3, p0, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/y;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/tapjoy/internal/y;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/c1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    iget-object v3, p1, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    iget-object v3, p1, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    iget-object p1, p1, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

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
    .registers 4

    iget v0, p0, Lcom/tapjoy/internal/z5;->b:I

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/tapjoy/internal/f;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/tapjoy/internal/r5;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/tapjoy/internal/p6;->hashCode()I

    move-result v2

    :cond_31
    add-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/z5;->b:I

    :cond_34
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    if-eqz v1, :cond_13

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v1, p0, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    if-eqz v1, :cond_21

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v1, p0, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    if-eqz v1, :cond_2f

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2f
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "InfoSet{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
