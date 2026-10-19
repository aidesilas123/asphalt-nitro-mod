###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c (com.fyber.inneractive.sdk.player.exoplayer2.audio.c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$e;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$d;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;
    }
.end annotation


# instance fields
.field public A:J

.field public B:Z

.field public C:J

.field public D:Ljava/lang/reflect/Method;

.field public E:I

.field public F:J

.field public G:J

.field public H:I

.field public I:J

.field public J:J

.field public K:I

.field public L:I

.field public M:J

.field public N:J

.field public O:J

.field public P:F

.field public Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

.field public R:[Ljava/nio/ByteBuffer;

.field public S:Ljava/nio/ByteBuffer;

.field public T:Ljava/nio/ByteBuffer;

.field public U:[B

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Z

.field public Z:I

.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/d;

.field public a0:Z

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;

.field public b0:Z

.field public final c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

.field public c0:J

.field public final d:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;

.field public final e:Landroid/os/ConditionVariable;

.field public final f:[J

.field public final g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

.field public final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/media/AudioTrack;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:J

.field public r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

.field public s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

.field public t:J

.field public u:J

.field public v:Ljava/nio/ByteBuffer;

.field public w:I

.field public x:I

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;

    new-instance p2, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e:Landroid/os/ConditionVariable;

    sget p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt p2, v2, :cond_20

    :try_start_14
    const-class p2, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->D:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    nop

    :cond_20
    :goto_20
    sget p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 v2, 0x13

    if-lt p2, v2, :cond_2e

    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;

    invoke-direct {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;-><init>()V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    goto :goto_35

    :cond_2e
    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    invoke-direct {p2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    :goto_35
    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/d;

    invoke-direct {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/d;-><init>()V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/d;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;-><init>()V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;

    array-length v2, p1

    const/4 v3, 0x3

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/f;

    invoke-direct {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/f;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v2, v5

    aput-object p2, v2, v0

    array-length p2, p1

    const/4 v0, 0x2

    invoke-static {p1, v5, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p1, v0

    aput-object v1, v2, p1

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->f:[J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->P:F

    iput v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->n:I

    iput v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Z:I

    sget-object p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    const/4 p1, -0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    new-array p1, v5, [Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    new-array p1, v5, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->R:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_46

    goto :goto_38

    :sswitch_d
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_38

    :cond_16
    const/4 v2, 0x3

    goto :goto_38

    :sswitch_18
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_38

    :cond_21
    const/4 v2, 0x2

    goto :goto_38

    :sswitch_23
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v2, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    packed-switch v2, :pswitch_data_58

    return v1

    :pswitch_3c
    const/16 p0, 0x8

    return p0

    :pswitch_3f
    const/4 p0, 0x6

    return p0

    :pswitch_41
    const/4 p0, 0x5

    return p0

    :pswitch_43
    const/4 p0, 0x7

    return p0

    nop

    :sswitch_data_46
    .sparse-switch
        -0x41455b98 -> :sswitch_2e
        0xb269698 -> :sswitch_23
        0x59ae0c65 -> :sswitch_18
        0x59c2dc42 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_43
        :pswitch_41
        :pswitch_3f
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public final a(J)J
    .registers 5

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)Lcom/fyber/inneractive/sdk/player/exoplayer2/m;
    .registers 7

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-eqz v0, :cond_9

    sget-object p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    return-object p1

    :cond_9
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;

    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;->e:F

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->b:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/h;->f:F

    invoke-direct {v0, v2, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;-><init>(FF)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    if-eqz p1, :cond_3c

    goto :goto_51

    :cond_3c
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    goto :goto_51

    :cond_4f
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    :goto_51
    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e()Z

    move-result p1

    if-eqz p1, :cond_60

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    goto :goto_62

    :cond_60
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    return-object p1
.end method

.method public a(Ljava/lang/String;IIII[I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$d;
        }
    .end annotation

    const-string v0, "audio/raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a(Ljava/lang/String;)I

    move-result p1

    goto :goto_10

    :cond_f
    move p1, p4

    :goto_10
    const/4 v2, 0x0

    if-nez v0, :cond_49

    invoke-static {p4, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b(II)I

    move-result p4

    iput p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->E:I

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/d;

    iput-object p6, p4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/d;->d:[I

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    array-length p6, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_22
    if-ge v3, p6, :cond_43

    aget-object v5, p4, v3

    :try_start_26
    invoke-interface {v5, p3, p2, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->a(III)Z

    move-result v6
    :try_end_2a
    .catch Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b$a; {:try_start_26 .. :try_end_2a} :catch_3c

    or-int/2addr v4, v6

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->d()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->f()I

    move-result p2

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->e()I

    move-result p1

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :catch_3c
    move-exception p1

    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$d;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$d;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_43
    if-eqz v4, :cond_4a

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i()V

    goto :goto_4a

    :cond_49
    const/4 v4, 0x0

    :cond_4a
    :goto_4a
    const/16 p4, 0xfc

    const/16 p6, 0xc

    packed-switch p2, :pswitch_data_152

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$d;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported channel count: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$d;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_68
    sget v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->a:I

    goto :goto_7e

    :pswitch_6b
    const/16 v3, 0x4fc

    goto :goto_7e

    :pswitch_6e
    const/16 v3, 0xfc

    goto :goto_7e

    :pswitch_71
    const/16 v3, 0xdc

    goto :goto_7e

    :pswitch_74
    const/16 v3, 0xcc

    goto :goto_7e

    :pswitch_77
    const/16 v3, 0x1c

    goto :goto_7e

    :pswitch_7a
    const/16 v3, 0xc

    goto :goto_7e

    :pswitch_7d
    const/4 v3, 0x4

    :goto_7e
    sget v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 v6, 0x17

    const/4 v7, 0x5

    if-gt v5, v6, :cond_a5

    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b:Ljava/lang/String;

    const-string v8, "foster"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->c:Ljava/lang/String;

    const-string v8, "NVIDIA"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    const/4 v6, 0x3

    if-eq p2, v6, :cond_a6

    if-eq p2, v7, :cond_a6

    const/4 p4, 0x7

    if-eq p2, p4, :cond_a2

    goto :goto_a5

    :cond_a2
    sget p4, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->a:I

    goto :goto_a6

    :cond_a5
    :goto_a5
    move p4, v3

    :cond_a6
    :goto_a6
    const/16 v3, 0x19

    if-gt v5, v3, :cond_b9

    sget-object v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b:Ljava/lang/String;

    const-string v5, "fugu"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    if-eqz v0, :cond_b9

    if-ne p2, v1, :cond_b9

    goto :goto_ba

    :cond_b9
    move p6, p4

    :goto_ba
    if-nez v4, :cond_cf

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e()Z

    move-result p4

    if-eqz p4, :cond_cf

    iget p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->l:I

    if-ne p4, p1, :cond_cf

    iget p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    if-ne p4, p3, :cond_cf

    iget p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->k:I

    if-ne p4, p6, :cond_cf

    return-void

    :cond_cf
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->l:I

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    iput p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->k:I

    const/4 p4, 0x2

    if-eqz v0, :cond_de

    goto :goto_df

    :cond_de
    const/4 p1, 0x2

    :goto_df
    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    invoke-static {p4, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b(II)I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->H:I

    if-eqz p5, :cond_ec

    iput p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    goto :goto_138

    :cond_ec
    if-eqz v0, :cond_101

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    if-eq p1, v7, :cond_fc

    const/4 p2, 0x6

    if-ne p1, p2, :cond_f6

    goto :goto_fc

    :cond_f6
    const p1, 0xc000

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    goto :goto_138

    :cond_fc
    :goto_fc
    const/16 p1, 0x5000

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    goto :goto_138

    :cond_101
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    invoke-static {p3, p6, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_10b

    goto :goto_10c

    :cond_10b
    const/4 v1, 0x0

    :goto_10c
    invoke-static {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    mul-int/lit8 p2, p1, 0x4

    const-wide/32 p3, 0x3d090

    invoke-virtual {p0, p3, p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a(J)J

    move-result-wide p3

    long-to-int p4, p3

    iget p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->H:I

    mul-int p4, p4, p3

    int-to-long p5, p1

    const-wide/32 v1, 0xb71b0

    invoke-virtual {p0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a(J)J

    move-result-wide v1

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->H:I

    int-to-long v3, p1

    mul-long v1, v1, v3

    invoke-static {p5, p6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p5

    long-to-int p1, p5

    if-ge p2, p4, :cond_133

    move p2, p4

    goto :goto_136

    :cond_133
    if-le p2, p1, :cond_136

    move p2, p1

    :cond_136
    :goto_136
    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    :goto_138
    if-eqz v0, :cond_140

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_14a

    :cond_140
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->H:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b(J)J

    move-result-wide p1

    :goto_14a
    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->q:J

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    return-void

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
    .end packed-switch
.end method

.method public final a()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    array-length v0, v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    :goto_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_38

    aget-object v4, v5, v4

    if-eqz v0, :cond_28

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->c()V

    :cond_28
    invoke-virtual {p0, v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c(J)V

    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->b()Z

    move-result v0

    if-nez v0, :cond_32

    return v3

    :cond_32
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    goto :goto_12

    :cond_38
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->T:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    invoke-virtual {p0, v0, v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b(Ljava/nio/ByteBuffer;J)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->T:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    return v3

    :cond_44
    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    return v2
.end method

.method public a(Ljava/nio/ByteBuffer;J)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$e;,
            Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_11

    if-ne v0, v4, :cond_f

    goto :goto_11

    :cond_f
    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v4, 0x1

    :goto_12
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e()Z

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-nez v4, :cond_fb

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a0:Z

    if-eqz v4, :cond_6a

    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    iget v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->k:I

    iget v10, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    iget v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    iget v15, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Z:I

    new-instance v11, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v11}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v11, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v12

    new-instance v11, Landroid/media/AudioFormat$Builder;

    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v11, v9}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v13

    new-instance v4, Landroid/media/AudioTrack;

    const/4 v9, 0x1

    move-object v11, v4

    move v10, v15

    move v15, v9

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    goto :goto_a5

    :cond_6a
    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Z:I

    if-nez v4, :cond_82

    new-instance v4, Landroid/media/AudioTrack;

    iget v10, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->n:I

    iget v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    iget v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->k:I

    iget v13, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    iget v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    const/4 v15, 0x1

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    goto :goto_a5

    :cond_82
    new-instance v4, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->n:I

    iget v10, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    iget v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->k:I

    iget v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    iget v13, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    iget v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Z:I

    const/16 v22, 0x1

    move-object/from16 v16, v4

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v23, v14

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    :goto_a5
    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_e1

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    iget v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Z:I

    if-eq v9, v4, :cond_c9

    iput v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Z:I

    iget-object v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;

    check-cast v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;

    iget-object v10, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;

    iget-object v10, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;->V:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v10, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    iget-object v4, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c9
    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    iget-object v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->f()Z

    move-result v10

    invoke-virtual {v4, v9, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a(Landroid/media/AudioTrack;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->k()V

    iput-boolean v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b0:Z

    iget-boolean v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Y:Z

    if-eqz v4, :cond_fb

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g()V

    goto :goto_fb

    :cond_e1
    :try_start_e1
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e6} :catch_ed
    .catchall {:try_start_e1 .. :try_end_e6} :catchall_e9

    iput-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    goto :goto_ef

    :catchall_e9
    move-exception v0

    iput-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    throw v0

    :catch_ed
    iput-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    :goto_ef
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$e;

    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    iget v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->k:I

    iget v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$e;-><init>(IIII)V

    throw v0

    :cond_fb
    :goto_fb
    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->f()Z

    move-result v4

    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    if-eqz v4, :cond_122

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v11, :cond_10f

    iput-boolean v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b0:Z

    return v5

    :cond_10f
    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_122

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a()J

    move-result-wide v12

    cmp-long v4, v12, v9

    if-eqz v4, :cond_122

    return v5

    :cond_122
    iget-boolean v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b0:Z

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->d()Z

    move-result v12

    iput-boolean v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b0:Z

    if-eqz v4, :cond_15a

    if-nez v12, :cond_15a

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_15a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c0:J

    sub-long v20, v12, v14

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;

    iget v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    iget-wide v13, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->q:J

    invoke-static {v13, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->b(J)J

    move-result-wide v18

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;

    iget-object v13, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;

    iget-object v13, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;->V:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object/from16 v16, v13

    move/from16 v17, v12

    invoke-virtual/range {v16 .. v21}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_15a
    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_284

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_165

    return v6

    :cond_165
    iget-boolean v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-eqz v4, :cond_1d6

    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->K:I

    if-nez v4, :cond_1d6

    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    const/4 v12, 0x7

    const/4 v13, 0x5

    const/4 v14, 0x6

    if-eq v4, v12, :cond_1bc

    const/16 v12, 0x8

    if-ne v4, v12, :cond_179

    goto :goto_1bc

    :cond_179
    if-ne v4, v13, :cond_17e

    const/16 v4, 0x600

    goto :goto_1d4

    :cond_17e
    if-ne v4, v14, :cond_1a5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    shr-int/2addr v4, v14

    if-ne v4, v7, :cond_190

    goto :goto_1a2

    :cond_190
    sget-object v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/a;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x30

    shr-int/lit8 v7, v7, 0x4

    aget v14, v4, v7

    :goto_1a2
    mul-int/lit16 v4, v14, 0x100

    goto :goto_1d4

    :cond_1a5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected audio encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1bc
    :goto_1bc
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/2addr v7, v14

    add-int/2addr v4, v13

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xfc

    shr-int/2addr v4, v11

    or-int/2addr v4, v7

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x20

    :goto_1d4
    iput v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->K:I

    :cond_1d6
    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    if-eqz v4, :cond_1ff

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a()Z

    move-result v4

    if-nez v4, :cond_1e1

    return v5

    :cond_1e1
    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h:Ljava/util/LinkedList;

    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;

    iget-object v13, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b(J)J

    move-result-wide v16

    move-object v12, v7

    invoke-direct/range {v12 .. v17}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;JJ)V

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i()V

    :cond_1ff
    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    if-nez v4, :cond_20c

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->M:J

    iput v6, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    goto :goto_26b

    :cond_20c
    iget-wide v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->M:J

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b(J)J

    move-result-wide v11

    add-long/2addr v9, v11

    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    if-ne v4, v6, :cond_24f

    sub-long v11, v9, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x30d40

    cmp-long v4, v11, v13

    if-lez v4, :cond_24f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discontinuity detected [expected "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", got "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AudioTrack"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    iput v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    goto :goto_250

    :cond_24f
    const/4 v4, 0x2

    :goto_250
    iget v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    if-ne v7, v4, :cond_26b

    iget-wide v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->M:J

    sub-long v9, v2, v9

    add-long/2addr v11, v9

    iput-wide v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->M:J

    iput v6, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;

    iget-object v7, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/MediaCodecAudioRenderer;Z)Z

    :cond_26b
    :goto_26b
    iget-boolean v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-eqz v4, :cond_278

    iget-wide v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->G:J

    iget v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->K:I

    int-to-long v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->G:J

    goto :goto_282

    :cond_278
    iget-wide v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->F:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->F:J

    :goto_282
    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    :cond_284
    iget-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-eqz v0, :cond_28e

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b(Ljava/nio/ByteBuffer;J)Z

    goto :goto_291

    :cond_28e
    invoke-virtual {v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c(J)V

    :goto_291
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_29c

    iput-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    return v6

    :cond_29c
    return v5
.end method

.method public final b()J
    .registers 5

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->G:J

    goto :goto_d

    :cond_7
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->F:J

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->E:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_d
    return-wide v0
.end method

.method public final b(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final b(Ljava/nio/ByteBuffer;J)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->T:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    goto :goto_3b

    :cond_18
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->T:Ljava/nio/ByteBuffer;

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    if-ge v0, v2, :cond_3b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->U:[B

    if-eqz v4, :cond_29

    array-length v4, v4

    if-ge v4, v0, :cond_2d

    :cond_29
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->U:[B

    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->U:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->V:I

    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    if-ge v4, v2, :cond_79

    iget-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->I:J

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a()J

    move-result-wide v4

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->H:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    sub-long/2addr p2, v4

    long-to-int p3, p2

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->p:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_76

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->U:[B

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->V:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_ef

    iget p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->V:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->V:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_ef

    :cond_76
    :goto_76
    const/4 p2, 0x0

    goto/16 :goto_ef

    :cond_79
    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->a0:Z

    if-eqz v2, :cond_e9

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_88

    const/4 v2, 0x1

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    :goto_89
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_a7

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_a7
    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->w:I

    if-nez v4, :cond_c3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x3e8

    mul-long p2, p2, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->w:I

    :cond_c3
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_da

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_d7

    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->w:I

    move p2, p3

    goto :goto_ef

    :cond_d7
    if-ge p3, p2, :cond_da

    goto :goto_76

    :cond_da
    invoke-virtual {v2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_e3

    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->w:I

    goto :goto_ef

    :cond_e3
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->w:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->w:I

    goto :goto_ef

    :cond_e9
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {p2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    :cond_ef
    :goto_ef
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c0:J

    if-ltz p2, :cond_112

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-nez p1, :cond_101

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->I:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->I:J

    :cond_101
    if-ne p2, v0, :cond_111

    if-eqz p1, :cond_10d

    iget-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->J:J

    iget p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->K:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->J:J

    :cond_10d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->T:Ljava/nio/ByteBuffer;

    return v1

    :cond_111
    return v3

    :cond_112
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;-><init>(I)V

    throw p1
.end method

.method public final c()J
    .registers 5

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->o:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->J:J

    goto :goto_d

    :cond_7
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->I:J

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->H:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_d
    return-wide v0
.end method

.method public final c(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    array-length v0, v0

    move v1, v0

    :goto_4
    if-ltz v1, :cond_3e

    if-lez v1, :cond_f

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->R:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_16

    :cond_f
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    sget-object v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->a:Ljava/nio/ByteBuffer;

    :goto_16
    if-ne v1, v0, :cond_1c

    invoke-virtual {p0, v2, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->b(Ljava/nio/ByteBuffer;J)Z

    goto :goto_34

    :cond_1c
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->a(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->R:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3e
    return-void
.end method

.method public d()Z
    .registers 8

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_34

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :cond_34
    :goto_34
    return v1
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final f()Z
    .registers 3

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public g()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Y:Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->N:J

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_17
    return-void
.end method

.method public h()V
    .registers 8

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e()Z

    move-result v0

    if-eqz v0, :cond_88

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->F:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->G:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->I:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->J:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->K:I

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    goto :goto_31

    :cond_1d
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    :cond_31
    :goto_31
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->t:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->u:J

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->S:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->T:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    :goto_3f
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    array-length v6, v5

    if-ge v3, v6, :cond_54

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->flush()V

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->R:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_54
    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->X:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->W:I

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->v:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->w:I

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->L:I

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->O:J

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->j()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_72

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_72
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    iput-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;

    invoke-virtual {v1, v4, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;

    invoke-direct {v1, p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_88
    return-void
.end method

.method public final i()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->d()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_18
    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->flush()V

    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->R:[Ljava/nio/ByteBuffer;

    :goto_30
    if-ge v3, v1, :cond_44

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->Q:[Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->flush()V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->R:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_44
    return-void
.end method

.method public final j()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->z:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->y:I

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->x:I

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->A:J

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->B:Z

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->C:J

    return-void
.end method

.method public final k()V
    .registers 3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    :cond_7
    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->P:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_1c

    :cond_15
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->P:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_1c
    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.a (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$a)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;Landroid/media/AudioTrack;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.b (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$b)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/media/AudioTrack;

.field public b:Z

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 9

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->g:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->c:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->i:J

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->h:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_29
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_35

    return-wide v2

    :cond_35
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->b:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    cmp-long v0, v4, v2

    if-nez v0, :cond_51

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->d:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->f:J

    :cond_51
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->f:J

    add-long/2addr v4, v0

    :cond_54
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->d:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_61

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->e:J

    :cond_61
    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->d:J

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->e:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public a(Landroid/media/AudioTrack;Z)V
    .registers 5

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a:Landroid/media/AudioTrack;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->b:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->g:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->d:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->e:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->f:J

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->c:I

    :cond_1b
    return-void
.end method

.method public b()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.C0174c (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$c)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final j:Landroid/media/AudioTimestamp;

.field public k:J

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;)V

    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/AudioTrack;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a(Landroid/media/AudioTrack;Z)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->l:J

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->m:J

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->m:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public d()Z
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->l:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1b

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    :cond_1b
    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->l:J

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->m:J

    :cond_25
    return v0
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.d (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$d)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$d;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.e (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$e)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$e;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack init failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Config("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.f (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$f)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.g (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$g)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;->b:J

    iput-wide p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$g;->c:J

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.h (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$h)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$h;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack write failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
