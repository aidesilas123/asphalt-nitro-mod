###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer (com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;
.super Ljava/lang/Object;
.source "TopLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$b;,
        Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$c;
    }
.end annotation


# static fields
.field private static a:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dismiss(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->Refresh()V

    return-void
.end method

.method public static Present(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$c;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->Refresh()V

    return-void
.end method

.method private static Refresh()V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$a;

    invoke-direct {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static SetContainer(Landroid/view/ViewGroup;)V
    .registers 3

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->a:Landroid/view/ViewGroup;

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$b;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$a;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic access$200()Landroid/view/ViewGroup;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->Refresh()V

    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$a;
.super Ljava/lang/Object;
.source "TopLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->Refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->access$200()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->access$200()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$c;

    if-eqz v3, :cond_23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto :goto_2a

    :cond_3a
    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer.b (com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$b;
.super Ljava/lang/Object;
.source "TopLayer.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->access$300()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer.c (com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer$c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$c;
.super Ljava/lang/Object;
.source "TopLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer$c;-><init>()V

    return-void
.end method
