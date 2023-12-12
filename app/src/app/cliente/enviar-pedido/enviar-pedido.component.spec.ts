import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EnviarPedidoComponent } from './enviar-pedido.component';

describe('EnviarPedidoComponent', () => {
  let component: EnviarPedidoComponent;
  let fixture: ComponentFixture<EnviarPedidoComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [EnviarPedidoComponent]
    });
    fixture = TestBed.createComponent(EnviarPedidoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
