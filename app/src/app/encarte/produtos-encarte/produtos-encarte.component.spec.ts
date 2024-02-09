import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ProdutosEncarteComponent } from './produtos-encarte.component';

describe('ProdutosEncarteComponent', () => {
  let component: ProdutosEncarteComponent;
  let fixture: ComponentFixture<ProdutosEncarteComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ProdutosEncarteComponent]
    });
    fixture = TestBed.createComponent(ProdutosEncarteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
