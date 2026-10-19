###### Class com.tapjoy.internal.f (com.tapjoy.internal.f)
.class public final Lcom/tapjoy/internal/f;
.super Lcom/tapjoy/internal/z5;
.source "SourceFile"


# static fields
.field public static final c:Lcom/tapjoy/internal/l9;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Integer;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/l9;

    invoke-direct {v0}, Lcom/tapjoy/internal/l9;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/f;->c:Lcom/tapjoy/internal/l9;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/c1;)V
    .registers 23

    move-object v0, p0

    sget-object v1, Lcom/tapjoy/internal/f;->c:Lcom/tapjoy/internal/l9;

    move-object/from16 v2, p19

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/internal/z5;-><init>(Lcom/tapjoy/internal/q7;Lcom/tapjoy/internal/c1;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/tapjoy/internal/f;->d:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/tapjoy/internal/f;->f:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/tapjoy/internal/f;->g:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/tapjoy/internal/f;->h:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/tapjoy/internal/f;->i:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/tapjoy/internal/f;->j:Ljava/lang/Integer;

    move-object v1, p8

    iput-object v1, v0, Lcom/tapjoy/internal/f;->k:Ljava/lang/Integer;

    move-object v1, p9

    iput-object v1, v0, Lcom/tapjoy/internal/f;->l:Ljava/lang/Integer;

    move-object v1, p10

    iput-object v1, v0, Lcom/tapjoy/internal/f;->m:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/tapjoy/internal/f;->n:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/tapjoy/internal/f;->o:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/tapjoy/internal/f;->p:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/tapjoy/internal/f;->q:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/tapjoy/internal/f;->r:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/tapjoy/internal/f;->s:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/tapjoy/internal/f;->t:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/tapjoy/internal/f;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/f;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/tapjoy/internal/f;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/c1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->j:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->k:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->k:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->l:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->l:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/tapjoy/internal/f;->u:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/f;->u:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result p1

    if-eqz p1, :cond_cf

    goto :goto_d0

    :cond_cf
    const/4 v0, 0x0

    :goto_d0
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lcom/tapjoy/internal/z5;->b:I

    if-nez v0, :cond_f7

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->f:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->g:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->h:Ljava/lang/String;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->i:Ljava/lang/String;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    :goto_67
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_74

    :cond_73
    const/4 v1, 0x0

    :goto_74
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_81

    :cond_80
    const/4 v1, 0x0

    :goto_81
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->m:Ljava/lang/String;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8e

    :cond_8d
    const/4 v1, 0x0

    :goto_8e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->n:Ljava/lang/String;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    :goto_9b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->o:Ljava/lang/String;

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a8

    :cond_a7
    const/4 v1, 0x0

    :goto_a8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->p:Ljava/lang/String;

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b5

    :cond_b4
    const/4 v1, 0x0

    :goto_b5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->q:Ljava/lang/String;

    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c2

    :cond_c1
    const/4 v1, 0x0

    :goto_c2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->r:Ljava/lang/String;

    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_cf

    :cond_ce
    const/4 v1, 0x0

    :goto_cf
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->s:Ljava/lang/String;

    if-eqz v1, :cond_db

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_dc

    :cond_db
    const/4 v1, 0x0

    :goto_dc
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->t:Ljava/lang/String;

    if-eqz v1, :cond_e8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e9

    :cond_e8
    const/4 v1, 0x0

    :goto_e9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/f;->u:Ljava/lang/String;

    if-eqz v1, :cond_f4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_f4
    add-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/z5;->b:I

    :cond_f7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_13

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v1, p0, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    if-eqz v1, :cond_21

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v1, p0, Lcom/tapjoy/internal/f;->f:Ljava/lang/String;

    if-eqz v1, :cond_2f

    const-string v1, ", deviceMaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    iget-object v1, p0, Lcom/tapjoy/internal/f;->g:Ljava/lang/String;

    if-eqz v1, :cond_3d

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    iget-object v1, p0, Lcom/tapjoy/internal/f;->h:Ljava/lang/String;

    if-eqz v1, :cond_4b

    const-string v1, ", osName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    iget-object v1, p0, Lcom/tapjoy/internal/f;->i:Ljava/lang/String;

    if-eqz v1, :cond_59

    const-string v1, ", osVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    iget-object v1, p0, Lcom/tapjoy/internal/f;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_67

    const-string v1, ", displayD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_67
    iget-object v1, p0, Lcom/tapjoy/internal/f;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_75

    const-string v1, ", displayW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_75
    iget-object v1, p0, Lcom/tapjoy/internal/f;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_83

    const-string v1, ", displayH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_83
    iget-object v1, p0, Lcom/tapjoy/internal/f;->m:Ljava/lang/String;

    if-eqz v1, :cond_91

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    iget-object v1, p0, Lcom/tapjoy/internal/f;->n:Ljava/lang/String;

    if-eqz v1, :cond_9f

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    iget-object v1, p0, Lcom/tapjoy/internal/f;->o:Ljava/lang/String;

    if-eqz v1, :cond_ad

    const-string v1, ", pkgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ad
    iget-object v1, p0, Lcom/tapjoy/internal/f;->p:Ljava/lang/String;

    if-eqz v1, :cond_bb

    const-string v1, ", pkgSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bb
    iget-object v1, p0, Lcom/tapjoy/internal/f;->q:Ljava/lang/String;

    if-eqz v1, :cond_c9

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c9
    iget-object v1, p0, Lcom/tapjoy/internal/f;->r:Ljava/lang/String;

    if-eqz v1, :cond_d7

    const-string v1, ", countrySim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    iget-object v1, p0, Lcom/tapjoy/internal/f;->s:Ljava/lang/String;

    if-eqz v1, :cond_e5

    const-string v1, ", countryNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e5
    iget-object v1, p0, Lcom/tapjoy/internal/f;->t:Ljava/lang/String;

    if-eqz v1, :cond_f3

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f3
    iget-object v1, p0, Lcom/tapjoy/internal/f;->u:Ljava/lang/String;

    if-eqz v1, :cond_101

    const-string v1, ", androidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/f;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_101
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Info{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
