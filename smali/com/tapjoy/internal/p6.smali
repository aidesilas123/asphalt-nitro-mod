###### Class com.tapjoy.internal.p6 (com.tapjoy.internal.p6)
.class public final Lcom/tapjoy/internal/p6;
.super Lcom/tapjoy/internal/z5;
.source "SourceFile"


# static fields
.field public static final c:Lcom/tapjoy/internal/e6;

.field public static final d:Ljava/lang/Boolean;


# instance fields
.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;

.field public final i:Ljava/util/List;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Long;

.field public final l:Ljava/lang/Long;

.field public final m:Ljava/lang/Long;

.field public final n:Ljava/lang/Long;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Double;

.field public final r:Ljava/lang/Long;

.field public final s:Ljava/lang/Double;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/Boolean;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/util/List;

.field public final y:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/e6;

    invoke-direct {v0}, Lcom/tapjoy/internal/e6;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/p6;->c:Lcom/tapjoy/internal/e6;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/tapjoy/internal/p6;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tapjoy/internal/j6;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lcom/tapjoy/internal/j6;Ljava/lang/Boolean;Lcom/tapjoy/internal/c1;)V
    .registers 26

    move-object v0, p0

    sget-object v1, Lcom/tapjoy/internal/p6;->c:Lcom/tapjoy/internal/e6;

    move-object/from16 v2, p22

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/internal/z5;-><init>(Lcom/tapjoy/internal/q7;Lcom/tapjoy/internal/c1;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->e:Ljava/lang/Long;

    move-object v1, p2

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->f:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->g:Ljava/lang/Integer;

    move-object v1, p4

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->h:Ljava/lang/Integer;

    const-string v1, "pushes"

    move-object v2, p5

    invoke-static {v1, p5}, Lcom/tapjoy/internal/i3;->a(Ljava/lang/String;Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->i:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->j:Ljava/lang/Integer;

    move-object v1, p7

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->k:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->l:Ljava/lang/Long;

    move-object v1, p10

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->m:Ljava/lang/Long;

    move-object v1, p9

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->n:Ljava/lang/Long;

    move-object v1, p11

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->o:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->p:Ljava/lang/Integer;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->q:Ljava/lang/Double;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->r:Ljava/lang/Long;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->s:Ljava/lang/Double;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->t:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->u:Ljava/lang/Boolean;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->v:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->w:Ljava/lang/Integer;

    const-string v1, "tags"

    move-object/from16 v2, p20

    invoke-static {v1, v2}, Lcom/tapjoy/internal/i3;->a(Ljava/lang/String;Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->x:Ljava/util/List;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/tapjoy/internal/p6;->y:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/p6;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/tapjoy/internal/p6;

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/c1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->e:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->e:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->g:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->h:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->h:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->j:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->k:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->k:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->l:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->l:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->m:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->m:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->n:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->n:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->p:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->p:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->q:Ljava/lang/Double;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->q:Ljava/lang/Double;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->r:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->r:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->s:Ljava/lang/Double;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->s:Ljava/lang/Double;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->u:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->u:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->w:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->w:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->x:Ljava/util/List;

    iget-object v3, p1, Lcom/tapjoy/internal/p6;->x:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->y:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/tapjoy/internal/p6;->y:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lcom/tapjoy/internal/i3;->a(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result p1

    if-eqz p1, :cond_ed

    goto :goto_ee

    :cond_ed
    const/4 v0, 0x0

    :goto_ee
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lcom/tapjoy/internal/z5;->b:I

    if-nez v0, :cond_116

    invoke-virtual {p0}, Lcom/tapjoy/internal/z5;->c()Lcom/tapjoy/internal/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->e:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->f:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->k:Ljava/lang/Long;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->l:Ljava/lang/Long;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->m:Ljava/lang/Long;

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->n:Ljava/lang/Long;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_8a

    :cond_89
    const/4 v0, 0x0

    :goto_8a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->o:Ljava/lang/String;

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_97

    :cond_96
    const/4 v0, 0x0

    :goto_97
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_a4

    :cond_a3
    const/4 v0, 0x0

    :goto_a4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->q:Ljava/lang/Double;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto :goto_b1

    :cond_b0
    const/4 v0, 0x0

    :goto_b1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->r:Ljava/lang/Long;

    if-eqz v0, :cond_bd

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_be

    :cond_bd
    const/4 v0, 0x0

    :goto_be
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->s:Ljava/lang/Double;

    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto :goto_cb

    :cond_ca
    const/4 v0, 0x0

    :goto_cb
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->t:Ljava/lang/String;

    if-eqz v0, :cond_d7

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_d8

    :cond_d7
    const/4 v0, 0x0

    :goto_d8
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_e5

    :cond_e4
    const/4 v0, 0x0

    :goto_e5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->v:Ljava/lang/String;

    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f2

    :cond_f1
    const/4 v0, 0x0

    :goto_f2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_fe

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_ff

    :cond_fe
    const/4 v0, 0x0

    :goto_ff
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/p6;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_113

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_113
    add-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/z5;->b:I

    :cond_116
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->e:Ljava/lang/Long;

    if-eqz v1, :cond_13

    const-string v1, ", installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->f:Ljava/lang/String;

    if-eqz v1, :cond_21

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_2f

    const-string v1, ", fq7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2f
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_3d

    const-string v1, ", fq30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3d
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, ", pushes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4f
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_5d

    const-string v1, ", sessionTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5d
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->k:Ljava/lang/Long;

    if-eqz v1, :cond_6b

    const-string v1, ", sessionTotalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->m:Ljava/lang/Long;

    if-eqz v1, :cond_79

    const-string v1, ", sessionStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->m:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_79
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->l:Ljava/lang/Long;

    if-eqz v1, :cond_87

    const-string v1, ", sessionLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->l:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_87
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->n:Ljava/lang/Long;

    if-eqz v1, :cond_95

    const-string v1, ", sessionLastDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->n:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_95
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->o:Ljava/lang/String;

    if-eqz v1, :cond_a3

    const-string v1, ", purchaseCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_b1

    const-string v1, ", purchaseTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->p:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b1
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->q:Ljava/lang/Double;

    if-eqz v1, :cond_bf

    const-string v1, ", purchaseTotalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->q:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_bf
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->r:Ljava/lang/Long;

    if-eqz v1, :cond_cd

    const-string v1, ", purchaseLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->r:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_cd
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->s:Ljava/lang/Double;

    if-eqz v1, :cond_db

    const-string v1, ", purchaseLastPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->s:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_db
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->t:Ljava/lang/String;

    if-eqz v1, :cond_e9

    const-string v1, ", idfa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e9
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->u:Ljava/lang/Boolean;

    if-eqz v1, :cond_f7

    const-string v1, ", idfaOptout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->u:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f7
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->v:Ljava/lang/String;

    if-eqz v1, :cond_105

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_105
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->w:Ljava/lang/Integer;

    if-eqz v1, :cond_113

    const-string v1, ", userLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->w:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_113
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_125

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_125
    iget-object v1, p0, Lcom/tapjoy/internal/p6;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_133

    const-string v1, ", pushOptout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/internal/p6;->y:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_133
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "User{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
