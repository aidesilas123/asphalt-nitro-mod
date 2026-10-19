###### Class dagger.android.DaggerDialogFragment_MembersInjector (dagger.android.DaggerDialogFragment_MembersInjector)
.class public final Ldagger/android/DaggerDialogFragment_MembersInjector;
.super Ljava/lang/Object;
.source "DaggerDialogFragment_MembersInjector.java"

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b<",
        "Ldagger/android/b;",
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

    iput-object p1, p0, Ldagger/android/DaggerDialogFragment_MembersInjector;->a:Le/a/a;

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
            "Ldagger/android/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldagger/android/DaggerDialogFragment_MembersInjector;

    invoke-direct {v0, p0}, Ldagger/android/DaggerDialogFragment_MembersInjector;-><init>(Le/a/a;)V

    return-object v0
.end method

.method public static injectAndroidInjector(Ldagger/android/b;Ldagger/android/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/b;",
            "Ldagger/android/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldagger/android/b;->a:Ldagger/android/d;

    return-void
.end method
