###### Class com.applovin.exoplayer2.ui.f (com.applovin.exoplayer2.ui.f)
.class public Lcom/applovin/exoplayer2/ui/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ui/f$a;,
        Lcom/applovin/exoplayer2/ui/f$b;,
        Lcom/applovin/exoplayer2/ui/f$c;,
        Lcom/applovin/exoplayer2/ui/f$d;
    }
.end annotation


# instance fields
.field private final U:Lcom/applovin/exoplayer2/ba$c;

.field private WG:Z

.field private WJ:[J

.field private WK:[Z

.field private final WL:Lcom/applovin/exoplayer2/ui/f$b;

.field private final WM:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/applovin/exoplayer2/ui/f$d;",
            ">;"
        }
    .end annotation
.end field

.field private final WN:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WO:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WP:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WQ:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WR:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WS:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WT:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WU:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WV:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WW:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WX:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WY:Lcom/applovin/exoplayer2/ui/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final WZ:Ljava/lang/Runnable;

.field private final Wu:Ljava/lang/StringBuilder;

.field private final Wv:Ljava/util/Formatter;

.field private XA:J

.field private XB:[J

.field private XC:[Z

.field private XD:J

.field private XE:J

.field private XF:J

.field private final Xa:Ljava/lang/Runnable;

.field private final Xb:Landroid/graphics/drawable/Drawable;

.field private final Xc:Landroid/graphics/drawable/Drawable;

.field private final Xd:Landroid/graphics/drawable/Drawable;

.field private final Xe:Ljava/lang/String;

.field private final Xf:Ljava/lang/String;

.field private final Xg:Ljava/lang/String;

.field private final Xh:Landroid/graphics/drawable/Drawable;

.field private final Xi:Landroid/graphics/drawable/Drawable;

.field private final Xj:F

.field private final Xk:F

.field private final Xl:Ljava/lang/String;

.field private final Xm:Ljava/lang/String;

.field private Xn:Lcom/applovin/exoplayer2/i;

.field private Xo:Lcom/applovin/exoplayer2/ui/f$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Xp:Z

.field private Xq:Z

.field private Xr:Z

.field private Xs:I

.field private Xt:I

.field private Xu:I

.field private Xv:Z

.field private Xw:Z

.field private Xx:Z

.field private Xy:Z

.field private Xz:Z

.field private final bI:Lcom/applovin/exoplayer2/ba$a;

.field private jb:Lcom/applovin/exoplayer2/an;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Lcom/applovin/exoplayer2/t;->f(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/applovin/sdk/R$layout;->applovin_exo_player_control_view:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xs:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xu:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xt:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/applovin/exoplayer2/ui/f;->XA:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xv:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xw:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xx:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xy:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xz:Z

    if-eqz p4, :cond_8c

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView:[I

    invoke-virtual {v1, p4, v2, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    :try_start_2e
    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_show_timeout:I

    iget v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xs:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xs:I

    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_controller_layout_id:I

    invoke-virtual {p3, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iget v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xu:I

    invoke-static {p3, v1}, Lcom/applovin/exoplayer2/ui/f;->a(Landroid/content/res/TypedArray;I)I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xu:I

    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_show_rewind_button:I

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xv:Z

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xv:Z

    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_show_fastforward_button:I

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xw:Z

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xw:Z

    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_show_previous_button:I

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xx:Z

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xx:Z

    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_show_next_button:I

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xy:Z

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xy:Z

    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_show_shuffle_button:I

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xz:Z

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xz:Z

    sget v1, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_time_bar_min_update_interval:I

    iget v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xt:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/ui/f;->setTimeBarMinUpdateInterval(I)V
    :try_end_83
    .catchall {:try_start_2e .. :try_end_83} :catchall_87

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8c

    :catchall_87
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_8c
    :goto_8c
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->WM:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p3, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {p3}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    new-instance p3, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {p3}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->U:Lcom/applovin/exoplayer2/ba$c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->Wu:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Wv:Ljava/util/Formatter;

    new-array p3, v0, [J

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    new-array p3, v0, [Z

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    new-array p3, v0, [J

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->XB:[J

    new-array p3, v0, [Z

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->XC:[Z

    new-instance p3, Lcom/applovin/exoplayer2/ui/f$b;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/applovin/exoplayer2/ui/f$b;-><init>(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/ui/f$1;)V

    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/f;->WL:Lcom/applovin/exoplayer2/ui/f$b;

    new-instance v2, Lcom/applovin/exoplayer2/j;

    invoke-direct {v2}, Lcom/applovin/exoplayer2/j;-><init>()V

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    new-instance v2, Lcom/applovin/exoplayer2/ui/p;

    invoke-direct {v2, p0}, Lcom/applovin/exoplayer2/ui/p;-><init>(Lcom/applovin/exoplayer2/ui/f;)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->WZ:Ljava/lang/Runnable;

    new-instance v2, Lcom/applovin/exoplayer2/ui/m;

    invoke-direct {v2, p0}, Lcom/applovin/exoplayer2/ui/m;-><init>(Lcom/applovin/exoplayer2/ui/f;)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xa:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    sget p2, Lcom/applovin/sdk/R$id;->al_exo_progress:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/ui/k;

    sget v3, Lcom/applovin/sdk/R$id;->al_exo_progress_placeholder:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_ff

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    goto :goto_125

    :cond_ff
    if-eqz v3, :cond_123

    new-instance v2, Lcom/applovin/exoplayer2/ui/d;

    invoke-direct {v2, p1, v1, v0, p4}, Lcom/applovin/exoplayer2/ui/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    goto :goto_125

    :cond_123
    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    :goto_125
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_duration:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WW:Landroid/widget/TextView;

    sget p2, Lcom/applovin/sdk/R$id;->al_exo_position:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WX:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    if-eqz p2, :cond_140

    invoke-interface {p2, p3}, Lcom/applovin/exoplayer2/ui/k;->a(Lcom/applovin/exoplayer2/ui/k$a;)V

    :cond_140
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_play:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WP:Landroid/view/View;

    if-eqz p2, :cond_14d

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14d
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_pause:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WQ:Landroid/view/View;

    if-eqz p2, :cond_15a

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15a
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_prev:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WN:Landroid/view/View;

    if-eqz p2, :cond_167

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_167
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_next:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WO:Landroid/view/View;

    if-eqz p2, :cond_174

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_174
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_rew:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WS:Landroid/view/View;

    if-eqz p2, :cond_181

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_181
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WR:Landroid/view/View;

    if-eqz p2, :cond_18e

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18e
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    if-eqz p2, :cond_19d

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19d
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WU:Landroid/widget/ImageView;

    if-eqz p2, :cond_1ac

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1ac
    sget p2, Lcom/applovin/sdk/R$id;->al_exo_vr:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->WV:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/ui/f;->setShowVrButton(Z)V

    invoke-direct {p0, v0, v0, p2}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/applovin/sdk/R$integer;->al_exo_media_button_opacity_percentage_enabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xj:F

    sget p2, Lcom/applovin/sdk/R$integer;->al_exo_media_button_opacity_percentage_disabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xk:F

    sget p2, Lcom/applovin/sdk/R$drawable;->al_exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xb:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/applovin/sdk/R$drawable;->al_exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xc:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/applovin/sdk/R$drawable;->al_exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xd:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/applovin/sdk/R$drawable;->al_exo_controls_shuffle_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xh:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/applovin/sdk/R$drawable;->al_exo_controls_shuffle_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xi:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/applovin/sdk/R$string;->al_exo_controls_repeat_off_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xe:Ljava/lang/String;

    sget p2, Lcom/applovin/sdk/R$string;->al_exo_controls_repeat_one_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xf:Ljava/lang/String;

    sget p2, Lcom/applovin/sdk/R$string;->al_exo_controls_repeat_all_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xg:Ljava/lang/String;

    sget p2, Lcom/applovin/sdk/R$string;->al_exo_controls_shuffle_on_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xl:Ljava/lang/String;

    sget p2, Lcom/applovin/sdk/R$string;->al_exo_controls_shuffle_off_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xm:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;I)I
    .registers 3

    sget v0, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerControlView_al_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nw()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/an;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/f;->i(Lcom/applovin/exoplayer2/an;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/an;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/ui/f;->b(Lcom/applovin/exoplayer2/an;J)V

    return-void
.end method

.method private a(ZZLandroid/view/View;)V
    .registers 4
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_b

    iget p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xj:F

    goto :goto_d

    :cond_b
    iget p2, p0, Lcom/applovin/exoplayer2/ui/f;->Xk:F

    :goto_d
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    goto :goto_16

    :cond_14
    const/16 p1, 0x8

    :goto_16
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba$c;)Z
    .registers 10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_24

    invoke-virtual {p0, v2, p1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v3

    iget-wide v3, v3, Lcom/applovin/exoplayer2/ba$c;->fH:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_21

    return v1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/f;->WG:Z

    return p1
.end method

.method private b(Lcom/applovin/exoplayer2/an;J)V
    .registers 10

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xr:Z

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/f;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v0, v2, v3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ba$c;->dl()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_22

    goto :goto_30

    :cond_22
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_28

    move-wide p2, v3

    goto :goto_30

    :cond_28
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2c
    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v2

    :goto_30
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/applovin/exoplayer2/ui/f;->b(Lcom/applovin/exoplayer2/an;IJ)Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nB()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nB()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ui/f;Lcom/applovin/exoplayer2/an;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/f;->j(Lcom/applovin/exoplayer2/an;)V

    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/an;IJ)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;IJ)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->ny()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nz()V

    return-void
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nx()V

    return-void
.end method

.method private static eY(I)Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x59

    if-eq p0, v0, :cond_23

    const/16 v0, 0x55

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x57

    if-eq p0, v0, :cond_23

    const/16 v0, 0x58

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nA()V

    return-void
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WX:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/ui/f;)Ljava/lang/StringBuilder;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->Wu:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private h(Lcom/applovin/exoplayer2/an;)V
    .registers 4

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aE()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/f;->j(Lcom/applovin/exoplayer2/an;)V

    goto :goto_18

    :cond_15
    :goto_15
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/f;->i(Lcom/applovin/exoplayer2/an;)V

    :goto_18
    return-void
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/ui/f;)Ljava/util/Formatter;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->Wv:Ljava/util/Formatter;

    return-object p0
.end method

.method private i(Lcom/applovin/exoplayer2/an;)V
    .registers 6

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;)Z

    goto :goto_1c

    :cond_d
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/applovin/exoplayer2/ui/f;->b(Lcom/applovin/exoplayer2/an;IJ)Z

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {v0, p1, v1}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;Z)Z

    return-void
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/an;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    return-object p0
.end method

.method private j(Lcom/applovin/exoplayer2/an;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;Z)Z

    return-void
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WO:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/ui/f;)Lcom/applovin/exoplayer2/i;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    return-object p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WN:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WR:Landroid/view/View;

    return-object p0
.end method

.method private nA()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-boolean v2, v0, Lcom/applovin/exoplayer2/ui/f;->Xq:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v2

    iget-object v5, v0, Lcom/applovin/exoplayer2/ui/f;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-static {v2, v5}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba$c;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iput-boolean v2, v0, Lcom/applovin/exoplayer2/ui/f;->Xr:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/applovin/exoplayer2/ui/f;->XD:J

    invoke-interface {v1}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e6

    invoke-interface {v1}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v1

    iget-boolean v7, v0, Lcom/applovin/exoplayer2/ui/f;->Xr:Z

    if-eqz v7, :cond_35

    const/4 v8, 0x0

    goto :goto_36

    :cond_35
    move v8, v1

    :goto_36
    if-eqz v7, :cond_3e

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_3f

    :cond_3e
    move v7, v1

    :goto_3f
    move-wide v9, v5

    const/4 v11, 0x0

    :goto_41
    if-gt v8, v7, :cond_e4

    if-ne v8, v1, :cond_4b

    invoke-static {v9, v10}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/applovin/exoplayer2/ui/f;->XD:J

    :cond_4b
    iget-object v12, v0, Lcom/applovin/exoplayer2/ui/f;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v2, v8, v12}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    iget-object v12, v0, Lcom/applovin/exoplayer2/ui/f;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-wide v13, v12, Lcom/applovin/exoplayer2/ba$c;->fH:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v13, v15

    if-nez v17, :cond_65

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/ui/f;->Xr:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    goto/16 :goto_e4

    :cond_65
    iget v12, v12, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    :goto_67
    iget-object v13, v0, Lcom/applovin/exoplayer2/ui/f;->U:Lcom/applovin/exoplayer2/ba$c;

    iget v14, v13, Lcom/applovin/exoplayer2/ba$c;->iR:I

    if-gt v12, v14, :cond_dc

    iget-object v13, v0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v2, v12, v13}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget-object v13, v0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v13}, Lcom/applovin/exoplayer2/ba$a;->dh()I

    move-result v13

    iget-object v14, v0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v14}, Lcom/applovin/exoplayer2/ba$a;->dg()I

    move-result v14

    :goto_7e
    if-ge v13, v14, :cond_d8

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4, v13}, Lcom/applovin/exoplayer2/ba$a;->al(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v4, v18, v20

    if-nez v4, :cond_97

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget-wide v3, v4, Lcom/applovin/exoplayer2/ba$a;->fH:J

    cmp-long v18, v3, v15

    if-nez v18, :cond_95

    goto :goto_d4

    :cond_95
    move-wide/from16 v18, v3

    :cond_97
    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ba$a;->df()J

    move-result-wide v3

    add-long v18, v18, v3

    cmp-long v3, v18, v5

    if-ltz v3, :cond_d4

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    array-length v4, v3

    if-ne v11, v4, :cond_be

    array-length v4, v3

    if-nez v4, :cond_ad

    const/4 v4, 0x1

    goto :goto_b0

    :cond_ad
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    :goto_b0
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    :cond_be
    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    add-long v18, v9, v18

    invoke-static/range {v18 .. v19}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v18

    aput-wide v18, v3, v11

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/f;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4, v13}, Lcom/applovin/exoplayer2/ba$a;->an(I)Z

    move-result v4

    aput-boolean v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_d4
    :goto_d4
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_7e

    :cond_d8
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_67

    :cond_dc
    iget-wide v3, v13, Lcom/applovin/exoplayer2/ba$c;->fH:J

    add-long/2addr v9, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_41

    :cond_e4
    :goto_e4
    move-wide v5, v9

    goto :goto_e7

    :cond_e6
    const/4 v11, 0x0

    :goto_e7
    invoke-static {v5, v6}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WW:Landroid/widget/TextView;

    if-eqz v3, :cond_fa

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/f;->Wu:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/applovin/exoplayer2/ui/f;->Wv:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_fa
    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    if-eqz v3, :cond_131

    invoke-interface {v3, v1, v2}, Lcom/applovin/exoplayer2/ui/k;->setDuration(J)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/ui/f;->XB:[J

    array-length v1, v1

    add-int v2, v11, v1

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    array-length v4, v3

    if-le v2, v4, :cond_119

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    :cond_119
    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->XB:[J

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->XC:[Z

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/f;->WJ:[J

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/f;->WK:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/applovin/exoplayer2/ui/k;->a([J[ZI)V

    :cond_131
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/ui/f;->nB()V

    return-void
.end method

.method private nB()V
    .registers 13

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    if-nez v0, :cond_c

    goto/16 :goto_b4

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_21

    iget-wide v1, p0, Lcom/applovin/exoplayer2/ui/f;->XD:J

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aS()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/applovin/exoplayer2/ui/f;->XD:J

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aT()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_22

    :cond_21
    move-wide v3, v1

    :goto_22
    iget-wide v5, p0, Lcom/applovin/exoplayer2/ui/f;->XE:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v1, v5

    if-eqz v9, :cond_2c

    const/4 v5, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    iget-wide v9, p0, Lcom/applovin/exoplayer2/ui/f;->XF:J

    cmp-long v6, v3, v9

    if-eqz v6, :cond_34

    const/4 v7, 0x1

    :cond_34
    iput-wide v1, p0, Lcom/applovin/exoplayer2/ui/f;->XE:J

    iput-wide v3, p0, Lcom/applovin/exoplayer2/ui/f;->XF:J

    iget-object v6, p0, Lcom/applovin/exoplayer2/ui/f;->WX:Landroid/widget/TextView;

    if-eqz v6, :cond_4d

    iget-boolean v9, p0, Lcom/applovin/exoplayer2/ui/f;->WG:Z

    if-nez v9, :cond_4d

    if-eqz v5, :cond_4d

    iget-object v9, p0, Lcom/applovin/exoplayer2/ui/f;->Wu:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/applovin/exoplayer2/ui/f;->Wv:Ljava/util/Formatter;

    invoke-static {v9, v10, v1, v2}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    iget-object v6, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    if-eqz v6, :cond_59

    invoke-interface {v6, v1, v2}, Lcom/applovin/exoplayer2/ui/k;->setPosition(J)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    invoke-interface {v6, v3, v4}, Lcom/applovin/exoplayer2/ui/k;->setBufferedPosition(J)V

    :cond_59
    iget-object v6, p0, Lcom/applovin/exoplayer2/ui/f;->Xo:Lcom/applovin/exoplayer2/ui/f$c;

    if-eqz v6, :cond_64

    if-nez v5, :cond_61

    if-eqz v7, :cond_64

    :cond_61
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/ui/f$c;->z(JJ)V

    :cond_64
    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/f;->WZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_6d

    const/4 v3, 0x1

    goto :goto_71

    :cond_6d
    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v3

    :goto_71
    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_aa

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->v()Z

    move-result v6

    if-eqz v6, :cond_aa

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    if-eqz v3, :cond_84

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ui/k;->getPreferredUpdateDelay()J

    move-result-wide v6

    goto :goto_85

    :cond_84
    move-wide v6, v4

    :goto_85
    rem-long/2addr v1, v4

    sub-long v1, v4, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/am;->gD:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_9a

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v4, v1

    :cond_9a
    move-wide v6, v4

    iget v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xt:I

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    invoke-static/range {v6 .. v11}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->WZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b4

    :cond_aa
    const/4 v0, 0x4

    if-eq v3, v0, :cond_b4

    if-eq v3, v8, :cond_b4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b4
    :goto_b4
    return-void
.end method

.method private nC()V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nE()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->WP:Landroid/view/View;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_17

    :cond_e
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WQ:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_17
    :goto_17
    return-void
.end method

.method private nD()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nE()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_10

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->WP:Landroid/view/View;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_19

    :cond_10
    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WQ:Landroid/view/View;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method private nE()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v0

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aE()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method private nu()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xs:I

    if-lez v0, :cond_1e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xs:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ui/f;->XA:J

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xa:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    :cond_1e
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ui/f;->XA:J

    :cond_25
    :goto_25
    return-void
.end method

.method private nv()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nw()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nx()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->ny()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nz()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nA()V

    return-void
.end method

.method private nw()V
    .registers 10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    if-nez v0, :cond_c

    goto/16 :goto_7d

    :cond_c
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nE()Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->WP:Landroid/view/View;

    const/16 v2, 0x8

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_46

    if-eqz v0, :cond_24

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    or-int/2addr v1, v5

    sget v6, Lcom/applovin/exoplayer2/l/ai;->acV:I

    if-ge v6, v3, :cond_2c

    move v6, v1

    goto :goto_39

    :cond_2c
    if-eqz v0, :cond_38

    iget-object v6, p0, Lcom/applovin/exoplayer2/ui/f;->WP:Landroid/view/View;

    invoke-static {v6}, Lcom/applovin/exoplayer2/ui/f$a;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, 0x1

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    or-int/2addr v6, v5

    iget-object v7, p0, Lcom/applovin/exoplayer2/ui/f;->WP:Landroid/view/View;

    if-eqz v0, :cond_41

    const/16 v8, 0x8

    goto :goto_42

    :cond_41
    const/4 v8, 0x0

    :goto_42
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    :cond_46
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_48
    iget-object v7, p0, Lcom/applovin/exoplayer2/ui/f;->WQ:Landroid/view/View;

    if-eqz v7, :cond_73

    if-nez v0, :cond_56

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_56

    const/4 v7, 0x1

    goto :goto_57

    :cond_56
    const/4 v7, 0x0

    :goto_57
    or-int/2addr v1, v7

    sget v7, Lcom/applovin/exoplayer2/l/ai;->acV:I

    if-ge v7, v3, :cond_5e

    move v4, v1

    goto :goto_6a

    :cond_5e
    if-nez v0, :cond_69

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/f;->WQ:Landroid/view/View;

    invoke-static {v3}, Lcom/applovin/exoplayer2/ui/f$a;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v4, 0x0

    :goto_6a
    or-int/2addr v6, v4

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/f;->WQ:Landroid/view/View;

    if-eqz v0, :cond_70

    const/4 v2, 0x0

    :cond_70
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_73
    if-eqz v1, :cond_78

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nC()V

    :cond_78
    if-eqz v6, :cond_7d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nD()V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private nx()V
    .registers 9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    if-nez v0, :cond_b

    goto :goto_72

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v2

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v3

    const/16 v4, 0xa

    invoke-interface {v0, v4}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {v4}, Lcom/applovin/exoplayer2/i;->aj()Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    const/16 v6, 0xb

    invoke-interface {v0, v6}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {v6}, Lcom/applovin/exoplayer2/i;->ak()Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v0

    move v7, v2

    move v2, v0

    move v0, v1

    move v1, v3

    move v3, v7

    goto :goto_4f

    :cond_4b
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4f
    iget-boolean v5, p0, Lcom/applovin/exoplayer2/ui/f;->Xx:Z

    iget-object v6, p0, Lcom/applovin/exoplayer2/ui/f;->WN:Landroid/view/View;

    invoke-direct {p0, v5, v1, v6}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xv:Z

    iget-object v5, p0, Lcom/applovin/exoplayer2/ui/f;->WS:Landroid/view/View;

    invoke-direct {p0, v1, v4, v5}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xw:Z

    iget-object v4, p0, Lcom/applovin/exoplayer2/ui/f;->WR:Landroid/view/View;

    invoke-direct {p0, v1, v0, v4}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xy:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->WO:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WY:Lcom/applovin/exoplayer2/ui/k;

    if-eqz v0, :cond_72

    invoke-interface {v0, v3}, Lcom/applovin/exoplayer2/ui/k;->setEnabled(Z)V

    :cond_72
    :goto_72
    return-void
.end method

.method private ny()V
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_6f

    :cond_f
    iget v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xu:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    invoke-direct {p0, v2, v2, v0}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    return-void

    :cond_18
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    const/4 v3, 0x1

    if-nez v1, :cond_2f

    invoke-direct {p0, v3, v2, v0}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2f
    invoke-direct {p0, v3, v3, v0}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    invoke-interface {v1}, Lcom/applovin/exoplayer2/an;->aF()I

    move-result v0

    if-eqz v0, :cond_5c

    if-eq v0, v3, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    goto :goto_6a

    :cond_3e
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a

    :cond_4d
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a

    :cond_5c
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6a
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private nz()V
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WU:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_52

    :cond_f
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xz:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    invoke-direct {p0, v3, v3, v0}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    goto :goto_52

    :cond_1a
    const/4 v2, 0x1

    if-nez v1, :cond_2f

    invoke-direct {p0, v2, v3, v0}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xi:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_52

    :cond_2f
    invoke-direct {p0, v2, v2, v0}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WU:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/an;->aG()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xh:Landroid/graphics/drawable/Drawable;

    goto :goto_3f

    :cond_3d
    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xi:Landroid/graphics/drawable/Drawable;

    :goto_3f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WU:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/an;->aG()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xl:Ljava/lang/String;

    goto :goto_4f

    :cond_4d
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->Xm:Ljava/lang/String;

    :goto_4f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_52
    :goto_52
    return-void
.end method

.method static synthetic o(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WS:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WP:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q(Lcom/applovin/exoplayer2/ui/f;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WQ:Landroid/view/View;

    return-object p0
.end method

.method static synthetic r(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WT:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic s(Lcom/applovin/exoplayer2/ui/f;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/ui/f;->Xu:I

    return p0
.end method

.method static synthetic t(Lcom/applovin/exoplayer2/ui/f;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/f;->WU:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic u(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nB()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/ui/f$d;)V
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WM:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz v1, :cond_68

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->eY(I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_68

    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_66

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_26

    invoke-interface {v1}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_66

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/i;->e(Lcom/applovin/exoplayer2/an;)Z

    goto :goto_66

    :cond_26
    const/16 v2, 0x59

    if-ne v0, v2, :cond_30

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/i;->d(Lcom/applovin/exoplayer2/an;)Z

    goto :goto_66

    :cond_30
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_66

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_63

    const/16 p1, 0x55

    if-eq v0, p1, :cond_63

    const/16 p1, 0x57

    if-eq v0, p1, :cond_5d

    const/16 p1, 0x58

    if-eq v0, p1, :cond_57

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_53

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_4f

    goto :goto_66

    :cond_4f
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/ui/f;->j(Lcom/applovin/exoplayer2/an;)V

    goto :goto_66

    :cond_53
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/ui/f;->i(Lcom/applovin/exoplayer2/an;)V

    goto :goto_66

    :cond_57
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/i;->b(Lcom/applovin/exoplayer2/an;)Z

    goto :goto_66

    :cond_5d
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/i;->c(Lcom/applovin/exoplayer2/an;)Z

    goto :goto_66

    :cond_63
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/ui/f;->h(Lcom/applovin/exoplayer2/an;)V

    :cond_66
    :goto_66
    const/4 p1, 0x1

    return p1

    :cond_68
    :goto_68
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/ui/f$d;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WM:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ui/f;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nu()V

    :cond_16
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPlayer()Lcom/applovin/exoplayer2/an;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xu:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xz:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xs:I

    return v0
.end method

.method public getShowVrButton()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WV:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public mx()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public nt()V
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WM:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ui/f$d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/ui/f$d;->eZ(I)V

    goto :goto_11

    :cond_25
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ui/f;->XA:J

    :cond_36
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ui/f;->XA:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_20

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->nt()V

    goto :goto_2f

    :cond_20
    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/f;->Xa:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_26
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nu()V

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nv()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xp:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/applovin/exoplayer2/i;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nx()V

    :cond_9
    return-void
.end method

.method public setPlayer(Lcom/applovin/exoplayer2/an;)V
    .registers 6
    .param p1    # Lcom/applovin/exoplayer2/an;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->az()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :cond_20
    :goto_20
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    if-ne v0, p1, :cond_28

    return-void

    :cond_28
    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->WL:Lcom/applovin/exoplayer2/ui/f$b;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/an;->b(Lcom/applovin/exoplayer2/an$d;)V

    :cond_2f
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WL:Lcom/applovin/exoplayer2/ui/f$b;

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/an;->a(Lcom/applovin/exoplayer2/an$d;)V

    :cond_38
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nv()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/applovin/exoplayer2/ui/f$c;)V
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/ui/f$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xo:Lcom/applovin/exoplayer2/ui/f$c;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 5

    iput p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xu:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aF()I

    move-result v0

    if-nez p1, :cond_17

    if-eqz v0, :cond_17

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;I)Z

    goto :goto_30

    :cond_17
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    if-ne v0, v1, :cond_25

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    invoke-interface {p1, v0, v2}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;I)Z

    goto :goto_30

    :cond_25
    if-ne p1, v1, :cond_30

    if-ne v0, v2, :cond_30

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xn:Lcom/applovin/exoplayer2/i;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->jb:Lcom/applovin/exoplayer2/an;

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/i;->a(Lcom/applovin/exoplayer2/an;I)Z

    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->ny()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xw:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nx()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xq:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nA()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xy:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nx()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xx:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nx()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xv:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nx()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xz:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nz()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xs:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nu()V

    :cond_b
    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WV:Landroid/view/View;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .registers 4

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/ai;->k(III)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/ui/f;->Xt:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WV:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/f;->WV:Landroid/view/View;

    invoke-direct {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/ui/f;->a(ZZLandroid/view/View;)V

    :cond_15
    return-void
.end method

.method public show()V
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/f;->WM:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ui/f$d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/ui/f$d;->eZ(I)V

    goto :goto_10

    :cond_24
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nv()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nC()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nD()V

    :cond_2d
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/f;->nu()V

    return-void
.end method
