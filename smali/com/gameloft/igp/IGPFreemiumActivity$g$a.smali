###### Class com.gameloft.igp.IGPFreemiumActivity.g.a (com.gameloft.igp.IGPFreemiumActivity$g$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g;->playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic e:Lcom/gameloft/igp/IGPFreemiumActivity$g;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$602(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$600(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v3, Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v4, v4, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$302(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$600(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$700(Lcom/gameloft/igp/IGPFreemiumActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$800(Lcom/gameloft/igp/IGPFreemiumActivity;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;

    invoke-direct {v3, p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;

    invoke-direct {v3, p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;

    invoke-direct {v3, p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v2, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;

    invoke-direct {v2, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12a

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/16 v2, 0x46

    int-to-float v2, v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$600(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;

    invoke-direct {v1, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12a
    return-void
.end method
