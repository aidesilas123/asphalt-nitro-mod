###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener.b (com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;
.super Ljava/lang/Object;
.source "LowProfileListener.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->RegisterSystemUIListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 5

    if-nez p1, :cond_11

    new-instance p1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b$a;

    invoke-direct {p1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method
