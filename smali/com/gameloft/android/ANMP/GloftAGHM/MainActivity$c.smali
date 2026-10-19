###### Class com.gameloft.android.ANMP.GloftAGHM.MainActivity.c (com.gameloft.android.ANMP.GloftAGHM.MainActivity$c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->W(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->b:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    iput-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->b:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->a:Z

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->access$100(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;Z)V

    return-void
.end method
