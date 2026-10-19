###### Class dagger.android.DaggerActivity_MembersInjector (dagger.android.DaggerActivity_MembersInjector)
.class public final Ldagger/android/DaggerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "DaggerActivity_MembersInjector.java"

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b<",
        "Ldagger/android/DaggerActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Ldagger/android/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Ldagger/android/d<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldagger/android/DaggerActivity_MembersInjector;->a:Le/a/a;

    return-void
.end method

.method public static create(Le/a/a;)Ld/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Ldagger/android/d<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ld/b<",
            "Ldagger/android/DaggerActivity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldagger/android/DaggerActivity_MembersInjector;

    invoke-direct {v0, p0}, Ldagger/android/DaggerActivity_MembersInjector;-><init>(Le/a/a;)V

    return-object v0
.end method

.method public static injectAndroidInjector(Ldagger/android/DaggerActivity;Ldagger/android/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerActivity;",
            "Ldagger/android/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldagger/android/DaggerActivity;->a:Ldagger/android/d;

    return-void
.end method
