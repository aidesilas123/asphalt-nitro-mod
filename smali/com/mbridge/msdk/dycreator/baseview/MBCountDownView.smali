###### Class com.mbridge.msdk.dycreator.baseview.MBCountDownView (com.mbridge.msdk.dycreator.baseview.MBCountDownView)
.class public Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;
.super Lcom/mbridge/msdk/dycreator/baseview/MBTextView;
.source "MBCountDownView.java"


# instance fields
.field private a:Lcom/mbridge/msdk/f/a/b;

.field private b:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->b:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->b:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->b:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;)Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->b:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;)Lcom/mbridge/msdk/f/a/b;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->a:Lcom/mbridge/msdk/f/a/b;

    return-object p0
.end method


# virtual methods
.method public initView(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Lcom/mbridge/msdk/f/a/b;

    invoke-direct {v0}, Lcom/mbridge/msdk/f/a/b;-><init>()V

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/f/a/b;->b(J)Lcom/mbridge/msdk/f/a/b;

    move-result-object p3

    const-wide/16 v0, 0x3e8

    invoke-virtual {p3, v0, v1}, Lcom/mbridge/msdk/f/a/b;->a(J)Lcom/mbridge/msdk/f/a/b;

    move-result-object p3

    new-instance v0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;-><init>(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/mbridge/msdk/f/a/b;->a(Lcom/mbridge/msdk/f/a/a;)Lcom/mbridge/msdk/f/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->a:Lcom/mbridge/msdk/f/a/b;

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->a:Lcom/mbridge/msdk/f/a/b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mbridge/msdk/f/a/b;->a()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->a:Lcom/mbridge/msdk/f/a/b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mbridge/msdk/f/a/b;->b()V

    :cond_a
    return-void
.end method

###### Class com.mbridge.msdk.dycreator.baseview.MBCountDownView.AnonymousClass1 (com.mbridge.msdk.dycreator.baseview.MBCountDownView$1)
.class Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;
.super Ljava/lang/Object;
.source "MBCountDownView.java"

# interfaces
.implements Lcom/mbridge/msdk/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->initView(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->c:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->c:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    invoke-static {v0}, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->b(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;)Lcom/mbridge/msdk/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/f/a/b;->b()V

    new-instance v0, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;

    invoke-direct {v0}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;-><init>()V

    sget-object v1, Lcom/mbridge/msdk/dycreator/listener/action/EAction;->CLOSE:Lcom/mbridge/msdk/dycreator/listener/action/EAction;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->seteAction(Lcom/mbridge/msdk/dycreator/listener/action/EAction;)V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onTick(J)V
    .registers 9

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->a:Ljava/lang/String;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "s"

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->c:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    invoke-static {v0}, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->a(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;)Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v2

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54

    :cond_2d
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->c:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    invoke-static {v0}, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->a(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;)Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView$1;->c:Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    invoke-static {v5}, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;->a(Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;)Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p1, v2

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_54
    return-void
.end method
