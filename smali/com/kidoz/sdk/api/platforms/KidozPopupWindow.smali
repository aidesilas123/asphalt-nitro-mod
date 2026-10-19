###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow (com.kidoz.sdk.api.platforms.KidozPopupWindow)
.class public Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KidozPopupWindow"

.field private static final WINDOW_BACKGROUND_COLOR:I = -0x22300526


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mDragLayout:Landroid/widget/FrameLayout;

.field private mGravity:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPopupContainer:Landroid/widget/FrameLayout;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPosX:I

.field private mPosY:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mGravity:I

    iput v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mOffsetX:I

    iput v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mOffsetY:I

    iput v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosX:I

    iput v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosY:I

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->createContentView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->createDragLayout()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->createPopupContainer()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->layoutContainer()V

    invoke-direct {p0, p2, p3}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->createPopupWindow(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mGravity:I

    return p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosX:I

    return p0
.end method

.method static synthetic access$302(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;I)I
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosX:I

    return p1
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mOffsetX:I

    return p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosY:I

    return p0
.end method

.method static synthetic access$502(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;I)I
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosY:I

    return p1
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I
    .registers 1

    iget p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mOffsetY:I

    return p0
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private createContentView()V
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    const v1, -0x22300526

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private createDragLayout()V
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mDragLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mDragLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createPopupContainer()V
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private createPopupWindow(II)V
    .registers 5

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p2, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 p2, 0x3ea

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->setPopUpWindowLayoutType(Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method private layoutContainer()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mDragLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setPopUpWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 10

    const-string v0, "Unable to set popUpWindow window layout type: %s"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setWindowLayoutType"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_20} :catch_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_20} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_20} :catch_21

    goto :goto_59

    :catch_21
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :catch_34
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :catch_47
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;-><init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public forceWrap()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosX:I

    iget v2, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mPosY:I

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method public hide()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;-><init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDraggable(Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mDragLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;-><init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setGravity(I)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mGravity:I

    return-void
.end method

.method public setOffset(II)V
    .registers 3

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mOffsetX:I

    iput p2, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mOffsetY:I

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;-><init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass1 (com.kidoz.sdk.api.platforms.KidozPopupWindow$1)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->addView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    iput-object p2, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$000(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass2 (com.kidoz.sdk.api.platforms.KidozPopupWindow$2)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$700(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$100(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v2}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$200(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v3}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$300(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v4}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$400(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v4}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$500(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v5}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$600(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass3 (com.kidoz.sdk.api.platforms.KidozPopupWindow$3)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$800(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$700(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass4 (com.kidoz.sdk.api.platforms.KidozPopupWindow$4)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->setDraggable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    goto :goto_57

    :cond_a
    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$302(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;I)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startY:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$502(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;I)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$700(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$300(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$500(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_57

    :cond_3b
    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$300(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startX:F

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$500(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startY:F

    :goto_57
    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$000(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
