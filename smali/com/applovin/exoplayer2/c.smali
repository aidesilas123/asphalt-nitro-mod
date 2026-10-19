###### Class com.applovin.exoplayer2.c (com.applovin.exoplayer2.c)
.class final Lcom/applovin/exoplayer2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/c$a;,
        Lcom/applovin/exoplayer2/c$b;
    }
.end annotation


# instance fields
.field private final K:Landroid/media/AudioManager;

.field private final L:Lcom/applovin/exoplayer2/c$a;

.field private M:Lcom/applovin/exoplayer2/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private N:Lcom/applovin/exoplayer2/b/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private O:I

.field private P:I

.field private Q:F

.field private R:Landroid/media/AudioFocusRequest;

.field private S:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/c$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/exoplayer2/c;->Q:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/applovin/exoplayer2/c;->K:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/applovin/exoplayer2/c;->M:Lcom/applovin/exoplayer2/c$b;

    new-instance p1, Lcom/applovin/exoplayer2/c$a;

    invoke-direct {p1, p0, p2}, Lcom/applovin/exoplayer2/c$a;-><init>(Lcom/applovin/exoplayer2/c;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/c;->L:Lcom/applovin/exoplayer2/c$a;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/c;->O:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/c;->k(I)V

    return-void
.end method

.method private static b(Lcom/applovin/exoplayer2/b/d;)I
    .registers 7
    .param p0    # Lcom/applovin/exoplayer2/b/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/applovin/exoplayer2/b/d;->jG:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_3e

    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/applovin/exoplayer2/b/d;->jG:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_25
    sget p0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_2d

    const/4 p0, 0x4

    return p0

    :cond_2d
    return v4

    :pswitch_2e
    iget p0, p0, Lcom/applovin/exoplayer2/b/d;->jE:I

    if-ne p0, v5, :cond_33

    return v4

    :cond_33
    :pswitch_33
    return v2

    :pswitch_34
    return v0

    :pswitch_35
    return v4

    :pswitch_36
    return v5

    :pswitch_37
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_35
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2e
        :pswitch_33
        :pswitch_33
        :pswitch_36
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method

.method private i(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    iget p1, p0, Lcom/applovin/exoplayer2/c;->P:I

    if-eq p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method private j(I)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/c;->O:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/applovin/exoplayer2/c;->O:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_10

    :cond_e
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_10
    iget v0, p0, Lcom/applovin/exoplayer2/c;->Q:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_17

    return-void

    :cond_17
    iput p1, p0, Lcom/applovin/exoplayer2/c;->Q:F

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->M:Lcom/applovin/exoplayer2/c$b;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/c$b;->b(F)V

    :cond_20
    return-void
.end method

.method private k(I)V
    .registers 4

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_31

    if-eq p1, v1, :cond_31

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/c;->j(I)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/c;->l(I)V

    return-void

    :cond_2a
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/c;->l(I)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->p()V

    return-void

    :cond_31
    if-eq p1, v1, :cond_3f

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->u()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3f

    :cond_3a
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/c;->j(I)V

    goto :goto_47

    :cond_3f
    :goto_3f
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/c;->l(I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/c;->j(I)V

    :goto_47
    return-void
.end method

.method private l(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->M:Lcom/applovin/exoplayer2/c$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/c$b;->l(I)V

    :cond_7
    return-void
.end method

.method private o()I
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/c;->O:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_11

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->r()I

    move-result v0

    goto :goto_15

    :cond_11
    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->q()I

    move-result v0

    :goto_15
    if-ne v0, v1, :cond_1b

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/c;->j(I)V

    return v1

    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/c;->j(I)V

    const/4 v0, -0x1

    return v0
.end method

.method private p()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/c;->O:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->t()V

    goto :goto_12

    :cond_f
    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->s()V

    :goto_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/c;->j(I)V

    return-void
.end method

.method private q()I
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->K:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/applovin/exoplayer2/c;->L:Lcom/applovin/exoplayer2/c$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/c;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/b/d;

    iget v2, v2, Lcom/applovin/exoplayer2/b/d;->jG:I

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->fM(I)I

    move-result v2

    iget v3, p0, Lcom/applovin/exoplayer2/c;->P:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private r()I
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->R:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/c;->S:Z

    if-eqz v1, :cond_40

    :cond_8
    if-nez v0, :cond_12

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/applovin/exoplayer2/c;->P:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_19

    :cond_12
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/c;->R:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    :goto_19
    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->u()Z

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/c;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/b/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/b/d;->dA()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/c;->L:Lcom/applovin/exoplayer2/c$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/c;->R:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/c;->S:Z

    :cond_40
    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->K:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/applovin/exoplayer2/c;->R:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->K:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/applovin/exoplayer2/c;->L:Lcom/applovin/exoplayer2/c$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private t()V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->R:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/applovin/exoplayer2/c;->K:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_9
    return-void
.end method

.method private u()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->N:Lcom/applovin/exoplayer2/b/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/applovin/exoplayer2/b/d;->jE:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method public a(ZI)I
    .registers 4

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/c;->i(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_e

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->p()V

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    :cond_e
    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->o()I

    move-result v0

    :cond_14
    return v0
.end method

.method public a(Lcom/applovin/exoplayer2/b/d;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/b/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/c;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iput-object p1, p0, Lcom/applovin/exoplayer2/c;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-static {p1}, Lcom/applovin/exoplayer2/c;->b(Lcom/applovin/exoplayer2/b/d;)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/c;->P:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public n()F
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/c;->Q:F

    return v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/c;->M:Lcom/applovin/exoplayer2/c$b;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c;->p()V

    return-void
.end method

###### Class com.applovin.exoplayer2.c.a (com.applovin.exoplayer2.c$a)
.class Lcom/applovin/exoplayer2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final I:Landroid/os/Handler;

.field final synthetic T:Lcom/applovin/exoplayer2/c;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/c;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/c$a;->T:Lcom/applovin/exoplayer2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/c$a;->I:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/applovin/exoplayer2/c$a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/c$a;->m(I)V

    return-void
.end method

.method private synthetic m(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/c$a;->T:Lcom/applovin/exoplayer2/c;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/c;->a(Lcom/applovin/exoplayer2/c;I)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/c$a;->I:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/exoplayer2/t0;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/t0;-><init>(Lcom/applovin/exoplayer2/c$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.applovin.exoplayer2.t0 (com.applovin.exoplayer2.t0)
.class public final synthetic Lcom/applovin/exoplayer2/t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/c$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/c$a;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/t0;->a:Lcom/applovin/exoplayer2/c$a;

    iput p2, p0, Lcom/applovin/exoplayer2/t0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/t0;->a:Lcom/applovin/exoplayer2/c$a;

    iget v1, p0, Lcom/applovin/exoplayer2/t0;->b:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/c$a;->a(Lcom/applovin/exoplayer2/c$a;I)V

    return-void
.end method

###### Class com.applovin.exoplayer2.c.b (com.applovin.exoplayer2.c$b)
.class public interface abstract Lcom/applovin/exoplayer2/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract b(F)V
.end method

.method public abstract l(I)V
.end method
