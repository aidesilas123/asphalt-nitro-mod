###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.DefReader (com.gameloft.android.ANMP.GloftAGHM.GLUtils.DefReader)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;
.super Ljava/lang/Object;
.source "DefReader.java"


# static fields
.field private static a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES"

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;->b:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;

    :cond_b
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;->a:Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/DefReader;

    return-object v0
.end method
