###### Class com.applovin.exoplayer2.ui.g (com.applovin.exoplayer2.ui.g)
.class public Lcom/applovin/exoplayer2/ui/g;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ui/g$a;
    }
.end annotation


# instance fields
.field private final XH:Lcom/applovin/exoplayer2/ui/g$a;

.field private final XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XJ:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XK:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XL:Z

.field private final XM:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XN:Lcom/applovin/exoplayer2/ui/SubtitleView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XO:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XP:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XQ:Lcom/applovin/exoplayer2/ui/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XR:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final XS:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private XT:Z

.field private XU:Lcom/applovin/exoplayer2/ui/f$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private XV:Z

.field private XW:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private XX:I

.field private XY:Z

.field private XZ:Lcom/applovin/exoplayer2/l/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/l/k<",
            "-",
            "Lcom/applovin/exoplayer2/ak;",
            ">;"
        }
    .end annotation
.end field

.field private Ya:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Yb:I

.field private Yc:Z

.field private Yd:Z

.field private Ye:Z

.field private Yf:I

.field private Yg:Z

.field private jb:Lcom/applovin/exoplayer2/an;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 24
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Lcom/applovin/exoplayer2/ui/g$a;

    invoke-direct {v3, v1}, Lcom/applovin/exoplayer2/ui/g$a;-><init>(Lcom/applovin/exoplayer2/ui/g;)V

    iput-object v3, v1, Lcom/applovin/exoplayer2/ui/g;->XH:Lcom/applovin/exoplayer2/ui/g$a;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4c

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XJ:Landroid/view/View;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    iput-boolean v6, v1, Lcom/applovin/exoplayer2/ui/g;->XL:Z

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XN:Lcom/applovin/exoplayer2/ui/SubtitleView;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XO:Landroid/view/View;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XR:Landroid/widget/FrameLayout;

    iput-object v5, v1, Lcom/applovin/exoplayer2/ui/g;->XS:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/ui/g;->a(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_48

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/ui/g;->b(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    :goto_48
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_4c
    sget v4, Lcom/applovin/sdk/R$layout;->applovin_exo_player_view:I

    const/16 v7, 0x1388

    const/4 v8, 0x1

    if-eqz v2, :cond_da

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView:[I

    move/from16 v11, p3

    invoke-virtual {v9, v2, v10, v11, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    :try_start_5f
    sget v10, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    invoke-virtual {v9, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    sget v12, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_player_layout_id:I

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    sget v12, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_use_artwork:I

    invoke-virtual {v9, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    sget v13, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_default_artwork:I

    invoke-virtual {v9, v13, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    sget v14, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_use_controller:I

    invoke-virtual {v9, v14, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    sget v15, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_surface_type:I

    invoke-virtual {v9, v15, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    sget v5, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_resize_mode:I

    invoke-virtual {v9, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget v6, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_show_timeout:I

    invoke-virtual {v9, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    sget v6, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_hide_on_touch:I

    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move/from16 p3, v4

    sget v4, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_auto_show:I

    invoke-virtual {v9, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v8, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_show_buffering:I

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    sget v4, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_keep_content_on_player_reset:I

    move/from16 v18, v5

    iget-boolean v5, v1, Lcom/applovin/exoplayer2/ui/g;->XY:Z

    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/applovin/exoplayer2/ui/g;->XY:Z

    sget v4, Lcom/applovin/sdk/R$styleable;->AppLovinPlayerView_al_hide_during_ads:I

    const/4 v5, 0x1

    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_bd
    .catchall {:try_start_5f .. :try_end_bd} :catchall_d5

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v9, v6

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v17, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v15

    move/from16 v19, v4

    move/from16 v4, p3

    move/from16 p3, v7

    move/from16 v7, v19

    goto :goto_e8

    :catchall_d5
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_da
    const/16 p3, 0x1388

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v17, 0x1

    :goto_e8
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-virtual {v15, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v4, 0x40000

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    sget v4, Lcom/applovin/sdk/R$id;->al_exo_content_frame:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_103

    invoke-static {v4, v6}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;I)V

    :cond_103
    sget v6, Lcom/applovin/sdk/R$id;->al_exo_shutter:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v1, Lcom/applovin/exoplayer2/ui/g;->XJ:Landroid/view/View;

    if-eqz v6, :cond_112

    if-eqz v12, :cond_112

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_112
    if-eqz v4, :cond_1a1

    if-eqz v10, :cond_1a1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v6, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v11, 0x2

    if-eq v10, v11, :cond_181

    const/4 v11, 0x3

    if-eq v10, v11, :cond_157

    const/4 v11, 0x4

    if-eq v10, v11, :cond_12e

    new-instance v10, Landroid/view/SurfaceView;

    invoke-direct {v10, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    :goto_12c
    const/4 v11, 0x1

    goto :goto_189

    :cond_12e
    :try_start_12e
    const-string v10, "com.applovin.exoplayer2.m.i"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v15, v12, v16

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v0, v12, v16

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_14d} :catch_14e

    goto :goto_12c

    :catch_14e
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_157
    :try_start_157
    const-string v10, "com.applovin.exoplayer2.m.a.i"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v15, v12, v16

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v0, v12, v16

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_176} :catch_178

    const/4 v10, 0x1

    goto :goto_18a

    :catch_178
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_181
    const/4 v11, 0x1

    new-instance v10, Landroid/view/TextureView;

    invoke-direct {v10, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    :goto_189
    const/4 v10, 0x0

    :goto_18a
    iget-object v12, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    invoke-virtual {v4, v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    move v4, v10

    goto :goto_1a6

    :cond_1a1
    const/4 v11, 0x1

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    const/4 v4, 0x0

    :goto_1a6
    iput-boolean v4, v1, Lcom/applovin/exoplayer2/ui/g;->XL:Z

    sget v4, Lcom/applovin/sdk/R$id;->al_exo_ad_overlay:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XR:Landroid/widget/FrameLayout;

    sget v4, Lcom/applovin/sdk/R$id;->al_exo_overlay:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XS:Landroid/widget/FrameLayout;

    sget v4, Lcom/applovin/sdk/R$id;->al_exo_artwork:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    if-eqz v13, :cond_1cc

    if-eqz v4, :cond_1cc

    const/4 v4, 0x1

    goto :goto_1cd

    :cond_1cc
    const/4 v4, 0x0

    :goto_1cd
    iput-boolean v4, v1, Lcom/applovin/exoplayer2/ui/g;->XV:Z

    if-eqz v14, :cond_1db

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XW:Landroid/graphics/drawable/Drawable;

    :cond_1db
    sget v4, Lcom/applovin/sdk/R$id;->al_exo_subtitles:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XN:Lcom/applovin/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_1ed

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ui/SubtitleView;->nX()V

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ui/SubtitleView;->nW()V

    :cond_1ed
    sget v4, Lcom/applovin/sdk/R$id;->al_exo_buffering:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XO:Landroid/view/View;

    const/16 v6, 0x8

    if-eqz v4, :cond_1fc

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1fc
    iput v8, v1, Lcom/applovin/exoplayer2/ui/g;->XX:I

    sget v4, Lcom/applovin/sdk/R$id;->al_exo_error_message:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    if-eqz v4, :cond_20d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_20d
    sget v4, Lcom/applovin/sdk/R$id;->al_exo_controller:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/ui/f;

    sget v8, Lcom/applovin/sdk/R$id;->al_exo_controller_placeholder:I

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v6, :cond_221

    iput-object v6, v1, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    const/4 v10, 0x0

    goto :goto_24b

    :cond_221
    if-eqz v8, :cond_247

    new-instance v6, Lcom/applovin/exoplayer2/ui/f;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct {v6, v0, v12, v10, v2}, Lcom/applovin/exoplayer2/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v6, v1, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_24b

    :cond_247
    const/4 v10, 0x0

    const/4 v12, 0x0

    iput-object v12, v1, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    :goto_24b
    iget-object v0, v1, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    if-eqz v0, :cond_252

    move/from16 v4, p3

    goto :goto_253

    :cond_252
    const/4 v4, 0x0

    :goto_253
    iput v4, v1, Lcom/applovin/exoplayer2/ui/g;->Yb:I

    iput-boolean v9, v1, Lcom/applovin/exoplayer2/ui/g;->Ye:Z

    iput-boolean v5, v1, Lcom/applovin/exoplayer2/ui/g;->Yc:Z

    iput-boolean v7, v1, Lcom/applovin/exoplayer2/ui/g;->Yd:Z

    if-eqz v17, :cond_261

    if-eqz v0, :cond_261

    const/4 v6, 0x1

    goto :goto_262

    :cond_261
    const/4 v6, 0x0

    :goto_262
    iput-boolean v6, v1, Lcom/applovin/exoplayer2/ui/g;->XT:Z

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/ui/g;->nG()V

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/ui/g;->nQ()V

    iget-object v0, v1, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    if-eqz v0, :cond_271

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ui/f$d;)V

    :cond_271
    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/ui/SubtitleView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/g;->XN:Lcom/applovin/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/applovin/sdk/R$color;->al_exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static a(Landroid/view/TextureView;I)V
    .registers 8

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_3e

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3e

    if-eqz p1, :cond_3e

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    int-to-float p1, p1

    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3e
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/g;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->aq(Z)V

    return-void
.end method

.method private aP()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aE()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private ao(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->aP()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->Yd:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/f;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nK()Z

    move-result v1

    if-nez p1, :cond_2e

    if-nez v0, :cond_2e

    if-eqz v1, :cond_31

    :cond_2e
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/ui/g;->ap(Z)V

    :cond_31
    return-void
.end method

.method private ap(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    iget p1, p0, Lcom/applovin/exoplayer2/ui/g;->Yb:I

    :goto_f
    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setShowTimeoutMs(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ui/f;->show()V

    return-void
.end method

.method private aq(Z)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz v0, :cond_67

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aU()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/h/ad;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_67

    :cond_f
    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->XY:Z

    if-nez p1, :cond_18

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nN()V

    :cond_18
    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aV()Lcom/applovin/exoplayer2/j/h;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    iget v3, p1, Lcom/applovin/exoplayer2/j/h;->fR:I

    if-ge v2, v3, :cond_46

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/j/h;->eU(I)Lcom/applovin/exoplayer2/j/g;

    move-result-object v3

    if-eqz v3, :cond_43

    const/4 v4, 0x0

    :goto_29
    invoke-interface {v3}, Lcom/applovin/exoplayer2/j/g;->kD()I

    move-result v5

    if-ge v4, v5, :cond_43

    invoke-interface {v3, v4}, Lcom/applovin/exoplayer2/j/g;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v5

    iget-object v5, v5, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/exoplayer2/l/u;->ba(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_40

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nM()V

    return-void

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_46
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nN()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nI()Z

    move-result p1

    if-eqz p1, :cond_63

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aW()Lcom/applovin/exoplayer2/ac;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->b(Lcom/applovin/exoplayer2/ac;)Z

    move-result p1

    if-eqz p1, :cond_5a

    return-void

    :cond_5a
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XW:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_63

    return-void

    :cond_63
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nM()V

    return-void

    :cond_67
    :goto_67
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->XY:Z

    if-nez p1, :cond_71

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nM()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nN()V

    :cond_71
    return-void
.end method

.method private static b(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 3

    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/applovin/sdk/R$color;->al_exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic b(Landroid/view/TextureView;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->a(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ui/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nL()V

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .registers 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_23

    if-lez v2, :cond_23

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v2, v1}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;F)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_23
    return v0
.end method

.method private b(Lcom/applovin/exoplayer2/ac;)Z
    .registers 4

    iget-object p1, p1, Lcom/applovin/exoplayer2/ac;->eX:[B

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ui/g;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/ui/g;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/g;->XJ:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/an;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/ui/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nO()V

    return-void
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/ui/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nP()V

    return-void
.end method

.method private fa(I)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x13

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_27

    const/16 v0, 0x16

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_27

    const/16 v0, 0x14

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_27

    const/16 v0, 0x15

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_27

    const/16 v0, 0x17

    if-ne p1, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/ui/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nR()V

    return-void
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/ui/g;)Z
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->aP()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/ui/g;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/ui/g;->Yd:Z

    return p0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/ui/g;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/ui/g;->Yf:I

    return p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/ui/g;)Z
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nJ()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/ui/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nQ()V

    return-void
.end method

.method private nH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->XT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private nI()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->XV:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private nJ()Z
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-nez v0, :cond_b

    goto :goto_22

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/ui/g;->ao(Z)V

    goto :goto_21

    :cond_18
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->Ye:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/f;->nt()V

    :cond_21
    :goto_21
    return v1

    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private nK()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v0

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/g;->Yc:Z

    if-eqz v2, :cond_1c

    if-eq v0, v1, :cond_1d

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aE()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return v1
.end method

.method private nL()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aY()Lcom/applovin/exoplayer2/m/o;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/applovin/exoplayer2/m/o;->afk:Lcom/applovin/exoplayer2/m/o;

    :goto_b
    iget v1, v0, Lcom/applovin/exoplayer2/m/o;->dE:I

    iget v2, v0, Lcom/applovin/exoplayer2/m/o;->height:I

    iget v3, v0, Lcom/applovin/exoplayer2/m/o;->afl:I

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    if-nez v1, :cond_17

    goto :goto_1f

    :cond_17
    int-to-float v1, v1

    iget v0, v0, Lcom/applovin/exoplayer2/m/o;->dH:F

    mul-float v1, v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    :goto_20
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    instance-of v2, v0, Landroid/view/TextureView;

    if-eqz v2, :cond_53

    cmpl-float v2, v1, v4

    if-lez v2, :cond_36

    const/16 v2, 0x5a

    if-eq v3, v2, :cond_32

    const/16 v2, 0x10e

    if-ne v3, v2, :cond_36

    :cond_32
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    move v1, v2

    :cond_36
    iget v2, p0, Lcom/applovin/exoplayer2/ui/g;->Yf:I

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/g;->XH:Lcom/applovin/exoplayer2/ui/g$a;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3f
    iput v3, p0, Lcom/applovin/exoplayer2/ui/g;->Yf:I

    if-eqz v3, :cond_4a

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/g;->XH:Lcom/applovin/exoplayer2/ui/g$a;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4a
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    iget v2, p0, Lcom/applovin/exoplayer2/ui/g;->Yf:I

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/ui/g;->a(Landroid/view/TextureView;I)V

    :cond_53
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/g;->XL:Z

    if-eqz v2, :cond_5a

    goto :goto_5b

    :cond_5a
    move v4, v1

    :goto_5b
    invoke-virtual {p0, v0, v4}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;F)V

    return-void
.end method

.method private nM()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private nN()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XJ:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private nO()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XO:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    iget v0, p0, Lcom/applovin/exoplayer2/ui/g;->XX:I

    if-eq v0, v3, :cond_21

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aE()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XO:Landroid/view/View;

    if-eqz v1, :cond_26

    goto :goto_28

    :cond_26
    const/16 v2, 0x8

    :goto_28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method private nP()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->Ya:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->ax()Lcom/applovin/exoplayer2/ak;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->XZ:Lcom/applovin/exoplayer2/l/k;

    if-eqz v1, :cond_35

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/l/k;->k(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c

    :cond_35
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private nQ()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ui/g;->XT:Z

    if-nez v2, :cond_a

    goto :goto_30

    :cond_a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->Ye:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/applovin/sdk/R$string;->al_exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1e
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/applovin/sdk/R$string;->al_exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_30
    :goto_30
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_33
    return-void
.end method

.method private nR()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->aP()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->Yd:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/g;->nG()V

    goto :goto_12

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ui/g;->ao(Z)V

    :goto_12
    return-void
.end method


# virtual methods
.method protected a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;F)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_5
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ui/g;->fa(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/ui/g;->ao(Z)V

    goto :goto_49

    :cond_2d
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->a(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_46

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_46

    :cond_3a
    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/ui/g;->ao(Z)V

    goto :goto_4a

    :cond_46
    :goto_46
    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/ui/g;->ao(Z)V

    :goto_49
    const/4 v1, 0x1

    :cond_4a
    :goto_4a
    return v1
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ui/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->XS:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_14

    new-instance v2, Lcom/applovin/exoplayer2/ui/a;

    const/4 v3, 0x3

    const-string v4, "Transparent overlay does not impact viewability"

    invoke-direct {v2, v1, v3, v4}, Lcom/applovin/exoplayer2/ui/a;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    if-eqz v1, :cond_21

    new-instance v2, Lcom/applovin/exoplayer2/ui/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/applovin/exoplayer2/ui/a;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/s;->d(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XR:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/a;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getControllerAutoShow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->Yc:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->Ye:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/ui/g;->Yb:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XW:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XS:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/applovin/exoplayer2/an;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/applovin/exoplayer2/ui/SubtitleView;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XN:Lcom/applovin/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->XV:Z

    return v0
.end method

.method public getUseController()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->XT:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    return-object v0
.end method

.method public nF()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nK()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ui/g;->ap(Z)V

    return-void
.end method

.method public nG()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/f;->nt()V

    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-nez v0, :cond_c

    goto :goto_24

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_21

    if-eq p1, v0, :cond_16

    return v1

    :cond_16
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->Yg:Z

    if-eqz p1, :cond_20

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ui/g;->Yg:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/g;->performClick()Z

    return v0

    :cond_20
    return v1

    :cond_21
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->Yg:Z

    return v0

    :cond_24
    :goto_24
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-nez p1, :cond_b

    goto :goto_10

    :cond_b
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->ao(Z)V

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nJ()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/applovin/exoplayer2/i;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setControlDispatcher(Lcom/applovin/exoplayer2/i;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->Yc:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->Yd:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->Ye:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nQ()V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/applovin/exoplayer2/ui/g;->Yb:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ui/f;->mx()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/g;->nF()V

    :cond_12
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/applovin/exoplayer2/ui/f$d;)V
    .registers 4
    .param p1    # Lcom/applovin/exoplayer2/ui/f$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XU:Lcom/applovin/exoplayer2/ui/f$d;

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/ui/f;->b(Lcom/applovin/exoplayer2/ui/f$d;)V

    :cond_11
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XU:Lcom/applovin/exoplayer2/ui/f$d;

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->a(Lcom/applovin/exoplayer2/ui/f$d;)V

    :cond_1a
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XP:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->Ya:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nP()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XW:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XW:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->aq(Z)V

    :cond_a
    return-void
.end method

.method public setErrorMessageProvider(Lcom/applovin/exoplayer2/l/k;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/l/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/k<",
            "-",
            "Lcom/applovin/exoplayer2/ak;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XZ:Lcom/applovin/exoplayer2/l/k;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XZ:Lcom/applovin/exoplayer2/l/k;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nP()V

    :cond_9
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->XY:Z

    if-eq v0, p1, :cond_a

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->XY:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/g;->aq(Z)V

    :cond_a
    return-void
.end method

.method public setPlayer(Lcom/applovin/exoplayer2/an;)V
    .registers 8
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

    if-eqz p1, :cond_21

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->az()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    if-ne v0, p1, :cond_2a

    return-void

    :cond_2a
    const/16 v1, 0x1a

    if-eqz v0, :cond_4e

    iget-object v4, p0, Lcom/applovin/exoplayer2/ui/g;->XH:Lcom/applovin/exoplayer2/ui/g$a;

    invoke-interface {v0, v4}, Lcom/applovin/exoplayer2/an;->b(Lcom/applovin/exoplayer2/an$d;)V

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_45

    check-cast v4, Landroid/view/TextureView;

    invoke-interface {v0, v4}, Lcom/applovin/exoplayer2/an;->b(Landroid/view/TextureView;)V

    goto :goto_4e

    :cond_45
    instance-of v5, v4, Landroid/view/SurfaceView;

    if-eqz v5, :cond_4e

    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Lcom/applovin/exoplayer2/an;->b(Landroid/view/SurfaceView;)V

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XN:Lcom/applovin/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_56

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_56
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setPlayer(Lcom/applovin/exoplayer2/an;)V

    :cond_63
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nO()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nP()V

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/ui/g;->aq(Z)V

    if-eqz p1, :cond_aa

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_80

    check-cast v0, Landroid/view/TextureView;

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/an;->a(Landroid/view/TextureView;)V

    goto :goto_89

    :cond_80
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_89

    check-cast v0, Landroid/view/SurfaceView;

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/an;->a(Landroid/view/SurfaceView;)V

    :cond_89
    :goto_89
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nL()V

    :cond_8c
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XN:Lcom/applovin/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_a1

    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/an;->n(I)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XN:Lcom/applovin/exoplayer2/ui/SubtitleView;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->bd()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_a1
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XH:Lcom/applovin/exoplayer2/ui/g$a;

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/an;->a(Lcom/applovin/exoplayer2/an$d;)V

    invoke-direct {p0, v3}, Lcom/applovin/exoplayer2/ui/g;->ao(Z)V

    goto :goto_ad

    :cond_aa
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/g;->nG()V

    :goto_ad
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XI:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/ui/g;->XX:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/applovin/exoplayer2/ui/g;->XX:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nO()V

    :cond_9
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/f;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XJ:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public setUseArtwork(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/g;->XM:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ui/g;->XV:Z

    if-eq v1, p1, :cond_17

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->XV:Z

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ui/g;->aq(Z)V

    :cond_17
    return-void
.end method

.method public setUseController(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/g;->XT:Z

    if-ne v0, p1, :cond_12

    return-void

    :cond_12
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/g;->XT:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nH()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->jb:Lcom/applovin/exoplayer2/an;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ui/f;->setPlayer(Lcom/applovin/exoplayer2/an;)V

    goto :goto_2f

    :cond_22
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ui/f;->nt()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g;->XQ:Lcom/applovin/exoplayer2/ui/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ui/f;->setPlayer(Lcom/applovin/exoplayer2/an;)V

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/g;->nQ()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g;->XK:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_c

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

###### Class com.applovin.exoplayer2.ui.g.a (com.applovin.exoplayer2.ui.g$a)
.class final Lcom/applovin/exoplayer2/ui/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/applovin/exoplayer2/an$d;
.implements Lcom/applovin/exoplayer2/ui/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private Yh:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic Yi:Lcom/applovin/exoplayer2/ui/g;

.field private final bI:Lcom/applovin/exoplayer2/ba$a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/ui/g;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    return-void
.end method


# virtual methods
.method public synthetic A(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->a(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method

.method public Z(I)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->e(Lcom/applovin/exoplayer2/ui/g;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->f(Lcom/applovin/exoplayer2/ui/g;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->g(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ab;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->c(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ab;I)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ac;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->d(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ac;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ak;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->e(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ak;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;I)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->h(Lcom/applovin/exoplayer2/ui/g;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->i(Lcom/applovin/exoplayer2/ui/g;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ui/g;->nG()V

    :cond_15
    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$c;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->g(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$c;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/g/a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->h(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/g/a;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/h;)V
    .registers 6

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->d(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/an;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/an;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    goto :goto_50

    :cond_1a
    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aU()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/ad;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aK()I

    move-result p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p1

    iget-object p1, p1, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    goto :goto_50

    :cond_34
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    if-eqz v0, :cond_50

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4e

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/g$a;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p2, v0, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result p1

    if-ne p1, p2, :cond_4e

    return-void

    :cond_4e
    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yh:Ljava/lang/Object;

    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;Z)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/m/o;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->b(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/o;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->k(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/o;)V

    return-void
.end method

.method public synthetic aa(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->l(Lcom/applovin/exoplayer2/an$d;I)V

    return-void
.end method

.method public synthetic ab(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->m(Lcom/applovin/exoplayer2/an$d;I)V

    return-void
.end method

.method public synthetic ac(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->j(Lcom/applovin/exoplayer2/an$b;I)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/ak;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->n(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ak;)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/am;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->o(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/am;)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/ba;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->p(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/ba;I)V

    return-void
.end method

.method public synthetic cD()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/w1;->n(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public cE()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->c(Lcom/applovin/exoplayer2/ui/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->c(Lcom/applovin/exoplayer2/ui/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public synthetic d(Lcom/applovin/exoplayer2/an$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->r(Lcom/applovin/exoplayer2/an$d;Lcom/applovin/exoplayer2/an$a;)V

    return-void
.end method

.method public synthetic d(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/w1;->p(Lcom/applovin/exoplayer2/an$b;ZI)V

    return-void
.end method

.method public synthetic e(IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->s(Lcom/applovin/exoplayer2/an$d;IZ)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public e(ZI)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->e(Lcom/applovin/exoplayer2/ui/g;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->g(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public eZ(I)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->l(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public synthetic f(II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/x1;->v(Lcom/applovin/exoplayer2/an$d;II)V

    return-void
.end method

.method public synthetic g(F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->w(Lcom/applovin/exoplayer2/an$d;F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->k(Lcom/applovin/exoplayer2/ui/g;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/applovin/exoplayer2/ui/g$a;->Yi:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p2}, Lcom/applovin/exoplayer2/ui/g;->j(Lcom/applovin/exoplayer2/ui/g;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/g;->b(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic w(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->x(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method

.method public synthetic x(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->s(Lcom/applovin/exoplayer2/an$b;Z)V

    return-void
.end method

.method public synthetic y(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->y(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method

.method public synthetic z(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/x1;->z(Lcom/applovin/exoplayer2/an$d;Z)V

    return-void
.end method
