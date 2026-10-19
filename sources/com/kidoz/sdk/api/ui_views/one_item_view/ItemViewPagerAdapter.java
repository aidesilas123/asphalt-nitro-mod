package com.kidoz.sdk.api.ui_views.one_item_view;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.kidoz.sdk.api.general.utils.SdkAnimationsUtils;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.panel_view.OneContentItemView;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ItemViewPagerAdapter extends PagerAdapter {
    protected int mHeight;
    private IOnItemInstaniateFinishListener mItemInstaniateListener;
    private JSONObject mProperties;
    private ViewPagerItemClickListener mViewPagerItemClickListener;
    protected int mWidth;
    private boolean mFirstItemCreated = false;
    private ArrayList<ContentItem> mContent = new ArrayList<>();
    private boolean mIsCanClick = true;

    public interface IOnItemInstaniateFinishListener {
        void onFirstItemReady();
    }

    public interface ViewPagerItemClickListener {
        void onClickEnd(ContentItem contentItem, int i);
    }

    public ItemViewPagerAdapter(JSONObject jSONObject, int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mProperties = jSONObject;
    }

    public void clearContent() {
        this.mContent.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((OneContentItemView) obj);
    }

    public ContentItem getContentItem(int i) {
        ArrayList<ContentItem> arrayList = this.mContent;
        if (arrayList == null || arrayList.size() <= i) {
            return null;
        }
        return this.mContent.get(i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        ArrayList<ContentItem> arrayList = this.mContent;
        if (arrayList == null || arrayList.size() <= 0) {
            return 0;
        }
        return this.mContent.size() == 1 ? 1 : 100;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    public int getRealCount() {
        return this.mContent.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        final int size = i % this.mContent.size();
        final ContentItem contentItem = this.mContent.get(size);
        OneContentItemView oneContentItemView = new OneContentItemView(this.mProperties, viewGroup.getContext(), this.mWidth, this.mHeight);
        oneContentItemView.setTag(Integer.valueOf(i));
        oneContentItemView.applyViewSettingsByContentType(contentItem.getContentType());
        oneContentItemView.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ItemViewPagerAdapter.this.mIsCanClick) {
                    ItemViewPagerAdapter.this.mIsCanClick = false;
                    SdkAnimationsUtils.animateClick(view, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter.1.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ViewPagerItemClickListener viewPagerItemClickListener = ItemViewPagerAdapter.this.mViewPagerItemClickListener;
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            viewPagerItemClickListener.onClickEnd(contentItem, size);
                            ItemViewPagerAdapter.this.mIsCanClick = true;
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }
                    }, 50, 100);
                }
            }
        });
        oneContentItemView.setData(contentItem);
        viewGroup.addView(oneContentItemView);
        if (i == 0 && !this.mFirstItemCreated) {
            this.mFirstItemCreated = true;
            IOnItemInstaniateFinishListener iOnItemInstaniateFinishListener = this.mItemInstaniateListener;
            if (iOnItemInstaniateFinishListener != null) {
                iOnItemInstaniateFinishListener.onFirstItemReady();
            }
        }
        return oneContentItemView;
    }

    public boolean isAdapterEmpty() {
        ArrayList<ContentItem> arrayList = this.mContent;
        if (arrayList == null) {
            return true;
        }
        return arrayList.isEmpty();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public void setContent(ArrayList<ContentItem> arrayList) {
        this.mContent = arrayList;
        notifyDataSetChanged();
    }

    public void setOnItemInstantiateFinishListener(IOnItemInstaniateFinishListener iOnItemInstaniateFinishListener) {
        this.mItemInstaniateListener = iOnItemInstaniateFinishListener;
    }

    public void setViewPagerItemClickListener(ViewPagerItemClickListener viewPagerItemClickListener) {
        this.mViewPagerItemClickListener = viewPagerItemClickListener;
    }

    public void toggleIsClickable(boolean z) {
        this.mIsCanClick = z;
    }
}
