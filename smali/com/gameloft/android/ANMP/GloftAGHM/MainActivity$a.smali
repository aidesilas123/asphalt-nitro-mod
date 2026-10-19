###### Class com.gameloft.android.ANMP.GloftAGHM.MainActivity.a (com.gameloft.android.ANMP.GloftAGHM.MainActivity$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method
