###### Class dagger.android.DispatchingAndroidInjector_Factory (dagger.android.DispatchingAndroidInjector_Factory)
.class public final Ldagger/android/DispatchingAndroidInjector_Factory;
.super Ljava/lang/Object;
.source "DispatchingAndroidInjector_Factory.java"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Ldagger/android/d<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;Le/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;>;",
            "Le/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldagger/android/DispatchingAndroidInjector_Factory;->a:Le/a/a;

    iput-object p2, p0, Ldagger/android/DispatchingAndroidInjector_Factory;->b:Le/a/a;

    return-void
.end method

.method public static create(Le/a/a;Le/a/a;)Ldagger/android/DispatchingAndroidInjector_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;>;",
            "Le/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;>;)",
            "Ldagger/android/DispatchingAndroidInjector_Factory<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldagger/android/DispatchingAndroidInjector_Factory;

    invoke-direct {v0, p0, p1}, Ldagger/android/DispatchingAndroidInjector_Factory;-><init>(Le/a/a;Le/a/a;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/Map;Ljava/util/Map;)Ldagger/android/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a<",
            "Ldagger/android/a$a<",
            "*>;>;>;)",
            "Ldagger/android/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldagger/android/d;

    invoke-direct {v0, p0, p1}, Ldagger/android/d;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a()Ldagger/android/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/android/DispatchingAndroidInjector_Factory;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Ldagger/android/DispatchingAndroidInjector_Factory;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1}, Ldagger/android/DispatchingAndroidInjector_Factory;->newInstance(Ljava/util/Map;Ljava/util/Map;)Ldagger/android/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ldagger/android/DispatchingAndroidInjector_Factory;->a()Ldagger/android/d;

    move-result-object v0

    return-object v0
.end method
