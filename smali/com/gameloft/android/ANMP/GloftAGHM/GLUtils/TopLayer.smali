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
