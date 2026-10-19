###### Class dagger.android.DaggerFragment_MembersInjector (dagger.android.DaggerFragment_MembersInjector)
.class public final Ldagger/android/DaggerFragment_MembersInjector;
.super Ljava/lang/Object;
.source "DaggerFragment_MembersInjector.java"

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b<",
        "Ldagger/android/c;",
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

    iput-object p1, p0, Ldagger/android/DaggerFragment_MembersInjector;->a:Le/a/a;

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
            "Ldagger/android/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldagger/android/DaggerFragment_MembersInjector;

    invoke-direct {v0, p0}, Ldagger/android/DaggerFragment_MembersInjector;-><init>(Le/a/a;)V

    return-object v0
.end method

.method public static injectAndroidInjector(Ldagger/android/c;Ldagger/android/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/c;",
            "Ldagger/android/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldagger/android/c;->a:Ldagger/android/d;

    return-void
.end method
